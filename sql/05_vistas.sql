-- ================================================================
-- SEMANA 8: VISTAS Y REPORTES - MARKETPLACE
-- ORACLE XE 21c | Usuario: marketplace
-- 5 vistas estrategicas
-- ================================================================

SET LINESIZE 200
SET PAGESIZE 50
SET WRAP OFF

-- ──────────────────────────────────────────────────────────────
-- PASO 0: ELIMINAR VISTAS SI YA EXISTEN
-- ──────────────────────────────────────────────────────────────
BEGIN EXECUTE IMMEDIATE 'DROP VIEW ingresos_por_categoria';   EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP VIEW ranking_productos';         EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP VIEW rentabilidad_vendedor';     EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP VIEW comportamiento_clientes';   EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP VIEW control_inventario';        EXCEPTION WHEN OTHERS THEN NULL; END;
/


-- ──────────────────────────────────────────────────────────────
-- VISTA 1: ingresos_por_categoria
-- Muestra el total facturado, unidades vendidas y
-- numero de pedidos agrupados por categoria de producto
-- ──────────────────────────────────────────────────────────────
CREATE OR REPLACE VIEW ingresos_por_categoria AS
SELECT
    ca.ID_CATEGORIA,
    ca.NOMBRE                                       AS CATEGORIA,
    COUNT(DISTINCT pe.ID_PEDIDO)                    AS TOTAL_PEDIDOS,
    COUNT(DISTINCT pr.ID_PRODUCTO)                  AS PRODUCTOS_ACTIVOS,
    SUM(dp.CANTIDAD)                                AS UNIDADES_VENDIDAS,
    SUM(dp.CANTIDAD * dp.PRECIO_UNITARIO)           AS TOTAL_INGRESOS,
    ROUND(AVG(dp.CANTIDAD * dp.PRECIO_UNITARIO), 2) AS INGRESO_PROMEDIO_LINEA
FROM CATEGORIAS         ca
JOIN PRODUCTOS          pr ON ca.ID_CATEGORIA = pr.ID_CATEGORIA
JOIN DETALLE_PEDIDOS    dp ON pr.ID_PRODUCTO  = dp.ID_PRODUCTO
JOIN PEDIDOS            pe ON dp.ID_PEDIDO    = pe.ID_PEDIDO
WHERE pe.ESTADO != 'CANCELADO'
GROUP BY ca.ID_CATEGORIA, ca.NOMBRE;

-- Verificacion
COLUMN CATEGORIA             FORMAT A14         HEADING 'CATEGORIA'
COLUMN TOTAL_PEDIDOS         FORMAT 9999        HEADING 'PEDIDOS'
COLUMN PRODUCTOS_ACTIVOS     FORMAT 9999        HEADING 'PRODUCTOS'
COLUMN UNIDADES_VENDIDAS     FORMAT 9999        HEADING 'UNIDADES'
COLUMN TOTAL_INGRESOS        FORMAT 999,999,999 HEADING 'TOTAL INGRESOS'
COLUMN INGRESO_PROMEDIO_LINEA FORMAT 999,999,999 HEADING 'PROM/LINEA'

SELECT CATEGORIA, TOTAL_PEDIDOS, PRODUCTOS_ACTIVOS,
       UNIDADES_VENDIDAS, TOTAL_INGRESOS, INGRESO_PROMEDIO_LINEA
FROM ingresos_por_categoria
ORDER BY TOTAL_INGRESOS DESC;


-- ──────────────────────────────────────────────────────────────
-- VISTA 2: ranking_productos
-- Muestra el ranking de productos con su posicion dentro
-- de la categoria, ingresos generados y numero de pedidos
-- ──────────────────────────────────────────────────────────────
CREATE OR REPLACE VIEW ranking_productos AS
SELECT
    pr.ID_PRODUCTO,
    pr.NOMBRE                                       AS PRODUCTO,
    ca.NOMBRE                                       AS CATEGORIA,
    ve.NOMBRE || ' ' || ve.APELLIDO                AS VENDEDOR,
    pr.PRECIO,
    SUM(dp.CANTIDAD)                                AS UNIDADES_VENDIDAS,
    SUM(dp.CANTIDAD * dp.PRECIO_UNITARIO)           AS TOTAL_INGRESOS,
    COUNT(DISTINCT pe.ID_PEDIDO)                    AS EN_PEDIDOS,
    RANK() OVER (
        PARTITION BY ca.ID_CATEGORIA
        ORDER BY SUM(dp.CANTIDAD) DESC
    )                                               AS POSICION_EN_CATEGORIA,
    RANK() OVER (
        ORDER BY SUM(dp.CANTIDAD * dp.PRECIO_UNITARIO) DESC
    )                                               AS POSICION_GLOBAL
FROM PRODUCTOS          pr
JOIN CATEGORIAS         ca ON pr.ID_CATEGORIA = ca.ID_CATEGORIA
JOIN VENDEDORES         ve ON pr.ID_VENDEDOR  = ve.ID_VENDEDOR
JOIN DETALLE_PEDIDOS    dp ON pr.ID_PRODUCTO  = dp.ID_PRODUCTO
JOIN PEDIDOS            pe ON dp.ID_PEDIDO    = pe.ID_PEDIDO
WHERE pe.ESTADO != 'CANCELADO'
GROUP BY
    pr.ID_PRODUCTO, pr.NOMBRE, pr.PRECIO,
    ca.ID_CATEGORIA, ca.NOMBRE,
    ve.NOMBRE, ve.APELLIDO;

-- Verificacion
COLUMN PRODUCTO              FORMAT A26         HEADING 'PRODUCTO'
COLUMN CATEGORIA             FORMAT A14         HEADING 'CATEGORIA'
COLUMN VENDEDOR              FORMAT A20         HEADING 'VENDEDOR'
COLUMN PRECIO                FORMAT 999,999,999 HEADING 'PRECIO'
COLUMN UNIDADES_VENDIDAS     FORMAT 9999        HEADING 'UNIDADES'
COLUMN TOTAL_INGRESOS        FORMAT 999,999,999 HEADING 'INGRESOS'
COLUMN EN_PEDIDOS            FORMAT 9999        HEADING 'PEDIDOS'
COLUMN POSICION_EN_CATEGORIA FORMAT 999         HEADING 'POS CAT'
COLUMN POSICION_GLOBAL       FORMAT 999         HEADING 'POS GRAL'

SELECT PRODUCTO, CATEGORIA, UNIDADES_VENDIDAS,
       TOTAL_INGRESOS, EN_PEDIDOS,
       POSICION_EN_CATEGORIA, POSICION_GLOBAL
FROM ranking_productos
ORDER BY POSICION_GLOBAL;


-- ──────────────────────────────────────────────────────────────
-- VISTA 3: rentabilidad_vendedor
-- Muestra los ingresos totales por vendedor, numero de
-- productos activos, calificacion y ticket promedio
-- ──────────────────────────────────────────────────────────────
CREATE OR REPLACE VIEW rentabilidad_vendedor AS
SELECT
    ve.ID_VENDEDOR,
    ve.NOMBRE || ' ' || ve.APELLIDO                AS VENDEDOR,
    ve.CALIFICACION,
    COUNT(DISTINCT pr.ID_PRODUCTO)                  AS PRODUCTOS_ACTIVOS,
    COUNT(DISTINCT pe.ID_PEDIDO)                    AS PEDIDOS_CON_VENTAS,
    SUM(dp.CANTIDAD)                                AS UNIDADES_VENDIDAS,
    SUM(dp.CANTIDAD * dp.PRECIO_UNITARIO)           AS TOTAL_INGRESOS,
    ROUND(AVG(dp.CANTIDAD * dp.PRECIO_UNITARIO), 2) AS TICKET_PROMEDIO,
    RANK() OVER (
        ORDER BY SUM(dp.CANTIDAD * dp.PRECIO_UNITARIO) DESC
    )                                               AS POSICION_RANKING
FROM VENDEDORES         ve
JOIN PRODUCTOS          pr ON ve.ID_VENDEDOR  = pr.ID_VENDEDOR
JOIN DETALLE_PEDIDOS    dp ON pr.ID_PRODUCTO  = dp.ID_PRODUCTO
JOIN PEDIDOS            pe ON dp.ID_PEDIDO    = pe.ID_PEDIDO
WHERE pe.ESTADO != 'CANCELADO'
GROUP BY ve.ID_VENDEDOR, ve.NOMBRE, ve.APELLIDO, ve.CALIFICACION;

-- Verificacion
COLUMN VENDEDOR              FORMAT A24         HEADING 'VENDEDOR'
COLUMN CALIFICACION          FORMAT 9.9         HEADING 'CALIF'
COLUMN PRODUCTOS_ACTIVOS     FORMAT 9999        HEADING 'PRODS'
COLUMN PEDIDOS_CON_VENTAS    FORMAT 9999        HEADING 'PEDIDOS'
COLUMN UNIDADES_VENDIDAS     FORMAT 9999        HEADING 'UNIDADES'
COLUMN TOTAL_INGRESOS        FORMAT 999,999,999 HEADING 'TOTAL INGRESOS'
COLUMN TICKET_PROMEDIO       FORMAT 999,999,999 HEADING 'TICKET PROM'
COLUMN POSICION_RANKING      FORMAT 999         HEADING 'POS'

SELECT VENDEDOR, CALIFICACION, PRODUCTOS_ACTIVOS,
       PEDIDOS_CON_VENTAS, UNIDADES_VENDIDAS,
       TOTAL_INGRESOS, TICKET_PROMEDIO, POSICION_RANKING
FROM rentabilidad_vendedor
ORDER BY POSICION_RANKING;


-- ──────────────────────────────────────────────────────────────
-- VISTA 4: comportamiento_clientes
-- Muestra el historial de compras por cliente: total gastado,
-- pedidos realizados, ultimo pedido y estado de la cuenta
-- ──────────────────────────────────────────────────────────────
CREATE OR REPLACE VIEW comportamiento_clientes AS
SELECT
    cl.ID_CLIENTE,
    cl.NOMBRE || ' ' || cl.APELLIDO                AS CLIENTE,
    cl.EMAIL,
    cl.ESTADO                                       AS ESTADO_CUENTA,
    COUNT(DISTINCT pe.ID_PEDIDO)                    AS TOTAL_PEDIDOS,
    NVL(SUM(dp.CANTIDAD), 0)                        AS UNIDADES_COMPRADAS,
    NVL(SUM(dp.CANTIDAD * dp.PRECIO_UNITARIO), 0)   AS TOTAL_GASTADO,
    ROUND(NVL(AVG(dp.CANTIDAD * dp.PRECIO_UNITARIO), 0), 2) AS TICKET_PROMEDIO,
    TO_CHAR(MAX(pe.FECHA_PEDIDO), 'DD/MM/YYYY')     AS ULTIMA_COMPRA,
    CASE
        WHEN MAX(pe.FECHA_PEDIDO) >= ADD_MONTHS(SYSDATE, -1) THEN 'ACTIVO RECIENTE'
        WHEN MAX(pe.FECHA_PEDIDO) >= ADD_MONTHS(SYSDATE, -3) THEN 'ACTIVO'
        WHEN MAX(pe.FECHA_PEDIDO) IS NOT NULL                THEN 'INACTIVO'
        ELSE                                                      'SIN COMPRAS'
    END                                             AS SEGMENTO
FROM CLIENTES           cl
LEFT JOIN PEDIDOS       pe ON cl.ID_CLIENTE = pe.ID_CLIENTE
                           AND pe.ESTADO   != 'CANCELADO'
LEFT JOIN DETALLE_PEDIDOS dp ON pe.ID_PEDIDO = dp.ID_PEDIDO
GROUP BY cl.ID_CLIENTE, cl.NOMBRE, cl.APELLIDO, cl.EMAIL, cl.ESTADO;

-- Verificacion
COLUMN CLIENTE               FORMAT A24         HEADING 'CLIENTE'
COLUMN ESTADO_CUENTA         FORMAT A10         HEADING 'ESTADO'
COLUMN TOTAL_PEDIDOS         FORMAT 9999        HEADING 'PEDIDOS'
COLUMN UNIDADES_COMPRADAS    FORMAT 9999        HEADING 'UNIDADES'
COLUMN TOTAL_GASTADO         FORMAT 999,999,999 HEADING 'TOTAL GASTADO'
COLUMN TICKET_PROMEDIO       FORMAT 999,999,999 HEADING 'TICKET PROM'
COLUMN ULTIMA_COMPRA         FORMAT A12         HEADING 'ULT COMPRA'
COLUMN SEGMENTO              FORMAT A16         HEADING 'SEGMENTO'

SELECT CLIENTE, ESTADO_CUENTA, TOTAL_PEDIDOS,
       UNIDADES_COMPRADAS, TOTAL_GASTADO,
       TICKET_PROMEDIO, ULTIMA_COMPRA, SEGMENTO
FROM comportamiento_clientes
ORDER BY TOTAL_GASTADO DESC;


-- ──────────────────────────────────────────────────────────────
-- VISTA 5: control_inventario
-- Muestra el nivel de stock de cada producto por bodega,
-- alerta cuando el stock esta por debajo del minimo
-- ──────────────────────────────────────────────────────────────
CREATE OR REPLACE VIEW control_inventario AS
SELECT
    pr.ID_PRODUCTO,
    pr.NOMBRE                                       AS PRODUCTO,
    ca.NOMBRE                                       AS CATEGORIA,
    bo.NOMBRE                                       AS BODEGA,
    bo.CIUDAD,
    iv.CANTIDAD                                     AS STOCK_ACTUAL,
    iv.STOCK_MINIMO,
    iv.CANTIDAD - iv.STOCK_MINIMO                   AS DIFERENCIA,
    CASE
        WHEN iv.CANTIDAD = 0                        THEN 'SIN STOCK'
        WHEN iv.CANTIDAD <= iv.STOCK_MINIMO         THEN 'STOCK CRITICO'
        WHEN iv.CANTIDAD <= iv.STOCK_MINIMO * 2     THEN 'STOCK BAJO'
        ELSE                                             'STOCK OK'
    END                                             AS ALERTA,
    NVL(
        (SELECT SUM(dp.CANTIDAD)
         FROM DETALLE_PEDIDOS dp
         JOIN PEDIDOS pe ON dp.ID_PEDIDO = pe.ID_PEDIDO
         WHERE dp.ID_PRODUCTO = pr.ID_PRODUCTO
         AND pe.ESTADO != 'CANCELADO'), 0
    )                                               AS UNIDADES_VENDIDAS
FROM INVENTARIO         iv
JOIN PRODUCTOS          pr ON iv.ID_PRODUCTO  = pr.ID_PRODUCTO
JOIN CATEGORIAS         ca ON pr.ID_CATEGORIA = ca.ID_CATEGORIA
JOIN BODEGAS            bo ON iv.ID_BODEGA    = bo.ID_BODEGA;

-- Verificacion
COLUMN PRODUCTO              FORMAT A26         HEADING 'PRODUCTO'
COLUMN CATEGORIA             FORMAT A12         HEADING 'CATEGORIA'
COLUMN BODEGA                FORMAT A18         HEADING 'BODEGA'
COLUMN CIUDAD                FORMAT A12         HEADING 'CIUDAD'
COLUMN STOCK_ACTUAL          FORMAT 9999        HEADING 'STOCK'
COLUMN STOCK_MINIMO          FORMAT 9999        HEADING 'MIN'
COLUMN DIFERENCIA            FORMAT 9999        HEADING 'DIFER'
COLUMN ALERTA                FORMAT A14         HEADING 'ALERTA'
COLUMN UNIDADES_VENDIDAS     FORMAT 9999        HEADING 'VENDIDAS'

SELECT PRODUCTO, CATEGORIA, BODEGA, CIUDAD,
       STOCK_ACTUAL, STOCK_MINIMO, DIFERENCIA,
       ALERTA, UNIDADES_VENDIDAS
FROM control_inventario
ORDER BY
    CASE ALERTA
        WHEN 'SIN STOCK'    THEN 1
        WHEN 'STOCK CRITICO' THEN 2
        WHEN 'STOCK BAJO'   THEN 3
        ELSE 4
    END,
    PRODUCTO;


-- ──────────────────────────────────────────────────────────────
-- VERIFICACION FINAL: listar las 5 vistas creadas
-- ──────────────────────────────────────────────────────────────
COLUMN VIEW_NAME FORMAT A30 HEADING 'VISTA CREADA'
COLUMN TEXT_LENGTH FORMAT 9999 HEADING 'LINEAS SQL'

SELECT VIEW_NAME, TEXT_LENGTH
FROM USER_VIEWS
WHERE VIEW_NAME IN (
    'INGRESOS_POR_CATEGORIA',
    'RANKING_PRODUCTOS',
    'RENTABILIDAD_VENDEDOR',
    'COMPORTAMIENTO_CLIENTES',
    'CONTROL_INVENTARIO'
)
ORDER BY VIEW_NAME;
