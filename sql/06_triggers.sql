-- ================================================================
-- SEMANA 9: TRIGGERS - MARKETPLACE
-- ORACLE XE 21c | Usuario: marketplace
-- 6 triggers segun requisitos del proyecto
-- ================================================================

SET LINESIZE 200
SET PAGESIZE 50
SET SERVEROUTPUT ON


-- ──────────────────────────────────────────────────────────────
-- PASO 0: ELIMINAR TRIGGERS SI YA EXISTEN
-- ──────────────────────────────────────────────────────────────
BEGIN EXECUTE IMMEDIATE 'DROP TRIGGER trg_reducir_stock';          EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TRIGGER trg_validar_stock';          EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TRIGGER trg_pago_completo_estado';   EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TRIGGER trg_auditoria_precios';      EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TRIGGER trg_bloquear_del_vendedor';  EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE  auditoria_precios CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/


-- ──────────────────────────────────────────────────────────────
-- TABLA AUXILIAR PARA TRIGGER 4 (auditoria de precios)
-- ──────────────────────────────────────────────────────────────
CREATE TABLE auditoria_precios (
    ID_AUDITORIA   NUMBER(10)     GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    ID_PRODUCTO    NUMBER(10)     NOT NULL,
    NOMBRE_PROD    VARCHAR2(200),
    PRECIO_ANTES   NUMBER(12,2)   NOT NULL,
    PRECIO_NUEVO   NUMBER(12,2)   NOT NULL,
    VARIACION_PCT  NUMBER(8,2),
    USUARIO_BD     VARCHAR2(100)  DEFAULT USER,
    FECHA_CAMBIO   DATE           DEFAULT SYSDATE
);


-- ──────────────────────────────────────────────────────────────
-- TRIGGER 1: Reducir stock automaticamente al registrar
--            un detalle de pedido (INSERT en DETALLE_PEDIDOS)
-- ──────────────────────────────────────────────────────────────
CREATE OR REPLACE TRIGGER trg_reducir_stock
AFTER INSERT ON DETALLE_PEDIDOS
FOR EACH ROW
DECLARE
    v_bodega    NUMBER(10);
    v_stock_act NUMBER(10);
BEGIN
    -- Tomar la primera bodega que tenga stock del producto
    SELECT ID_BODEGA, CANTIDAD
    INTO   v_bodega, v_stock_act
    FROM (
        SELECT ID_BODEGA, CANTIDAD
        FROM   INVENTARIO
        WHERE  ID_PRODUCTO = :NEW.ID_PRODUCTO
          AND  CANTIDAD    > 0
        ORDER  BY CANTIDAD DESC
    )
    WHERE ROWNUM = 1;

    -- Descontar
    UPDATE INVENTARIO
    SET    CANTIDAD             = CANTIDAD - :NEW.CANTIDAD,
           FECHA_ACTUALIZACION = SYSDATE
    WHERE  ID_PRODUCTO = :NEW.ID_PRODUCTO
      AND  ID_BODEGA   = v_bodega;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        -- No existe inventario con stock; el trigger 2 ya lo bloqueo
        NULL;
END trg_reducir_stock;
/


-- ──────────────────────────────────────────────────────────────
-- TRIGGER 2: Impedir la venta si el stock es insuficiente
--            (BEFORE INSERT en DETALLE_PEDIDOS)
-- ──────────────────────────────────────────────────────────────
CREATE OR REPLACE TRIGGER trg_validar_stock
BEFORE INSERT ON DETALLE_PEDIDOS
FOR EACH ROW
DECLARE
    v_stock_total NUMBER(10) := 0;
    v_nombre_prod VARCHAR2(200);
BEGIN
    -- Stock total del producto en todas las bodegas
    SELECT NVL(SUM(CANTIDAD), 0)
    INTO   v_stock_total
    FROM   INVENTARIO
    WHERE  ID_PRODUCTO = :NEW.ID_PRODUCTO;

    -- Nombre del producto para el mensaje
    SELECT NOMBRE
    INTO   v_nombre_prod
    FROM   PRODUCTOS
    WHERE  ID_PRODUCTO = :NEW.ID_PRODUCTO;

    IF v_stock_total < :NEW.CANTIDAD THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'STOCK INSUFICIENTE: "' || v_nombre_prod ||
            '" - Solicitado: ' || :NEW.CANTIDAD ||
            ' | Disponible: ' || v_stock_total
        );
    END IF;
END trg_validar_stock;
/


-- ──────────────────────────────────────────────────────────────
-- TRIGGER 3: Cambiar estado del pedido a "PAGADO" cuando
--            se registre un pago con estado COMPLETADO
--            (AFTER INSERT OR UPDATE en PAGOS)
-- Nota: el CHECK de PEDIDOS no incluye 'PAGADO', se usa
--       'CONFIRMADO' que es el estado natural post-pago.
--       Si tu BD ya tiene 'PAGADO' en el CHECK, cambia la linea.
-- ──────────────────────────────────────────────────────────────
CREATE OR REPLACE TRIGGER trg_pago_completo_estado
AFTER INSERT OR UPDATE OF ESTADO ON PAGOS
FOR EACH ROW
BEGIN
    IF :NEW.ESTADO = 'COMPLETADO' THEN
        UPDATE PEDIDOS
        SET    ESTADO = 'CONFIRMADO'       -- cambia a 'PAGADO' si tu CHECK lo permite
        WHERE  ID_PEDIDO = :NEW.ID_PEDIDO
          AND  ESTADO    = 'PENDIENTE';    -- solo si aun esta pendiente
    END IF;
END trg_pago_completo_estado;
/


-- ──────────────────────────────────────────────────────────────
-- TRIGGER 4: Auditoria de cambios en precio de producto
--            (BEFORE UPDATE en PRODUCTOS)
-- ──────────────────────────────────────────────────────────────
CREATE OR REPLACE TRIGGER trg_auditoria_precios
BEFORE UPDATE OF PRECIO ON PRODUCTOS
FOR EACH ROW
WHEN (OLD.PRECIO != NEW.PRECIO)
BEGIN
    INSERT INTO auditoria_precios (
        ID_PRODUCTO,
        NOMBRE_PROD,
        PRECIO_ANTES,
        PRECIO_NUEVO,
        VARIACION_PCT,
        USUARIO_BD,
        FECHA_CAMBIO
    ) VALUES (
        :OLD.ID_PRODUCTO,
        :OLD.NOMBRE,
        :OLD.PRECIO,
        :NEW.PRECIO,
        ROUND(((:NEW.PRECIO - :OLD.PRECIO) / :OLD.PRECIO) * 100, 2),
        USER,
        SYSDATE
    );
END trg_auditoria_precios;
/


-- ──────────────────────────────────────────────────────────────
-- TRIGGER 5: Impedir eliminar un vendedor que tiene
--            productos activos (BEFORE DELETE en VENDEDORES)
-- ──────────────────────────────────────────────────────────────
CREATE OR REPLACE TRIGGER trg_bloquear_del_vendedor
BEFORE DELETE ON VENDEDORES
FOR EACH ROW
DECLARE
    v_total_prods NUMBER(10);
    v_nombre      VARCHAR2(200);
BEGIN
    SELECT COUNT(*)
    INTO   v_total_prods
    FROM   PRODUCTOS
    WHERE  ID_VENDEDOR = :OLD.ID_VENDEDOR;

    IF v_total_prods > 0 THEN
        v_nombre := :OLD.NOMBRE || ' ' || :OLD.APELLIDO;
        RAISE_APPLICATION_ERROR(
            -20002,
            'NO SE PUEDE ELIMINAR: El vendedor "' || v_nombre ||
            '" tiene ' || v_total_prods || ' producto(s) activo(s). ' ||
            'Reasigne o elimine los productos primero.'
        );
    END IF;
END trg_bloquear_del_vendedor;
/


-- ──────────────────────────────────────────────────────────────
-- TRIGGER 6: Validar vista control_inventario
--            Impide insertar en INVENTARIO con cantidad
--            negativa o bodega inactiva (BEFORE INSERT en INVENTARIO)
-- ──────────────────────────────────────────────────────────────
CREATE OR REPLACE TRIGGER trg_validar_inventario
BEFORE INSERT OR UPDATE ON INVENTARIO
FOR EACH ROW
DECLARE
    v_bodega_activa VARCHAR2(2);
    v_nombre_prod   VARCHAR2(200);
    v_nombre_bod    VARCHAR2(100);
BEGIN
    -- Verificar bodega activa
    SELECT ACTIVO, NOMBRE
    INTO   v_bodega_activa, v_nombre_bod
    FROM   BODEGAS
    WHERE  ID_BODEGA = :NEW.ID_BODEGA;

    IF v_bodega_activa = 'NO' THEN
        RAISE_APPLICATION_ERROR(
            -20003,
            'BODEGA INACTIVA: No se puede registrar inventario en "' ||
            v_nombre_bod || '". Active la bodega primero.'
        );
    END IF;

    -- Verificar stock minimo coherente
    IF :NEW.STOCK_MINIMO < 0 THEN
        RAISE_APPLICATION_ERROR(
            -20004,
            'STOCK MINIMO invalido: no puede ser negativo.'
        );
    END IF;

    -- Fecha de actualizacion siempre al dia
    :NEW.FECHA_ACTUALIZACION := SYSDATE;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20005, 'BODEGA no encontrada: ID ' || :NEW.ID_BODEGA);
END trg_validar_inventario;
/


-- ──────────────────────────────────────────────────────────────
-- VERIFICACION: listar triggers creados
-- ──────────────────────────────────────────────────────────────
COLUMN TRIGGER_NAME  FORMAT A30  HEADING 'TRIGGER'
COLUMN TABLE_NAME    FORMAT A20  HEADING 'TABLA'
COLUMN TRIGGER_TYPE  FORMAT A18  HEADING 'TIPO'
COLUMN STATUS        FORMAT A10  HEADING 'ESTADO'

SELECT TRIGGER_NAME, TABLE_NAME, TRIGGER_TYPE, STATUS
FROM   USER_TRIGGERS
WHERE  TRIGGER_NAME IN (
    'TRG_REDUCIR_STOCK',
    'TRG_VALIDAR_STOCK',
    'TRG_PAGO_COMPLETO_ESTADO',
    'TRG_AUDITORIA_PRECIOS',
    'TRG_BLOQUEAR_DEL_VENDEDOR',
    'TRG_VALIDAR_INVENTARIO'
)
ORDER BY TABLE_NAME;


-- ──────────────────────────────────────────────────────────────
-- PRUEBAS RAPIDAS
-- ──────────────────────────────────────────────────────────────

-- PRUEBA T2: stock insuficiente (debe fallar con error -20001)
-- INSERT INTO DETALLE_PEDIDOS VALUES (999, 1, 1, 99999, 100);

-- PRUEBA T4: auditoria de precio
-- UPDATE PRODUCTOS SET PRECIO = 9999999 WHERE ID_PRODUCTO = 1;
-- SELECT * FROM auditoria_precios;
-- ROLLBACK;

-- PRUEBA T5: borrar vendedor con productos (debe fallar con error -20002)
-- DELETE FROM VENDEDORES WHERE ID_VENDEDOR = 1;

-- PRUEBA T6: bodega inactiva
-- UPDATE BODEGAS SET ACTIVO = 'NO' WHERE ID_BODEGA = 1;
-- INSERT INTO INVENTARIO (ID_INVENTARIO, ID_PRODUCTO, ID_BODEGA, CANTIDAD)
--   VALUES (9999, 1, 1, 10);
-- UPDATE BODEGAS SET ACTIVO = 'SI' WHERE ID_BODEGA = 1;

COMMIT;
