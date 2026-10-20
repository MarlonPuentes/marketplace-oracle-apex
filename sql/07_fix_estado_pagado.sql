-- ================================================================
-- FIX: Agregar estado 'PAGADO' al CHECK de PEDIDOS
--      y actualizar Trigger 3
-- ORACLE XE 21c | Usuario: marketplace
-- ================================================================

SET SERVEROUTPUT ON


-- ──────────────────────────────────────────────────────────────
-- PASO 1: Eliminar el CHECK constraint actual de PEDIDOS
-- ──────────────────────────────────────────────────────────────
ALTER TABLE PEDIDOS DROP CONSTRAINT chk_ped_estado;


-- ──────────────────────────────────────────────────────────────
-- PASO 2: Recrearlo incluyendo 'PAGADO'
-- ──────────────────────────────────────────────────────────────
ALTER TABLE PEDIDOS ADD CONSTRAINT chk_ped_estado
    CHECK (ESTADO IN ('PENDIENTE','CONFIRMADO','PAGADO','ENVIADO','ENTREGADO','CANCELADO'));


-- ──────────────────────────────────────────────────────────────
-- PASO 3: Actualizar el Trigger 3 para usar 'PAGADO'
-- ──────────────────────────────────────────────────────────────
CREATE OR REPLACE TRIGGER trg_pago_completo_estado
AFTER INSERT OR UPDATE OF ESTADO ON PAGOS
FOR EACH ROW
BEGIN
    IF :NEW.ESTADO = 'COMPLETADO' THEN
        UPDATE PEDIDOS
        SET    ESTADO = 'PAGADO'
        WHERE  ID_PEDIDO = :NEW.ID_PEDIDO
          AND  ESTADO    = 'PENDIENTE';
    END IF;
END trg_pago_completo_estado;
/


-- ──────────────────────────────────────────────────────────────
-- VERIFICACION 1: Confirmar el nuevo CHECK
-- ──────────────────────────────────────────────────────────────
SELECT CONSTRAINT_NAME, SEARCH_CONDITION, STATUS
FROM   USER_CONSTRAINTS
WHERE  TABLE_NAME       = 'PEDIDOS'
  AND  CONSTRAINT_NAME  = 'CHK_PED_ESTADO';


-- ──────────────────────────────────────────────────────────────
-- VERIFICACION 2: Confirmar trigger actualizado
-- ──────────────────────────────────────────────────────────────
SELECT TRIGGER_NAME, STATUS
FROM   USER_TRIGGERS
WHERE  TRIGGER_NAME = 'TRG_PAGO_COMPLETO_ESTADO';


-- ──────────────────────────────────────────────────────────────
-- PRUEBA: Simular un pago completado y ver el cambio de estado
-- (usa un pedido que este en PENDIENTE, ajusta el ID si necesitas)
-- ──────────────────────────────────────────────────────────────

-- Ver estado actual de pedido 30 antes de la prueba
SELECT ID_PEDIDO, ESTADO FROM PEDIDOS WHERE ID_PEDIDO = 30;

-- Simular que el pago del pedido 30 se completa
UPDATE PAGOS SET ESTADO = 'COMPLETADO' WHERE ID_PEDIDO = 30;

-- Ver estado del pedido 30 despues (debe decir PAGADO)
SELECT ID_PEDIDO, ESTADO FROM PEDIDOS WHERE ID_PEDIDO = 30;

ROLLBACK; -- Deshace la prueba para no afectar tus datos reales

COMMIT;
