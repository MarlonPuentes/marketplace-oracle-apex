-- ================================================================
-- SEMANA 7: SUBCONSULTAS AVANZADAS - MARKETPLACE
-- ORACLE XE 21c | Formateado para CMD
-- ================================================================

SET LINESIZE 200
SET PAGESIZE 50
SET WRAP OFF


-- ──────────────────────────────────────────────────────────────
-- CONSULTA 1: Productos cuyo precio sea mayor
--             al promedio de su categoria
-- ──────────────────────────────────────────────────────────────
COLUMN CATEGORIA         FORMAT A14         HEADING 'CATEGORIA'
COLUMN PRODUCTO          FORMAT A30         HEADING 'PRODUCTO'
COLUMN PRECIO            FORMAT 999,999,999 HEADING 'PRECIO'
COLUMN PROMEDIO_CAT      FORMAT 999,999,999 HEADING 'PROM CATEGORIA'

SELECT
    ca.NOMBRE                                       AS CATEGORIA,
    pr.NOMBRE                                       AS PRODUCTO,
    pr.PRECIO,
    ROUND(
        (SELECT AVG(pr2.PRECIO)
         FROM PRODUCTOS pr2
         WHERE pr2.ID_CATEGORIA = pr.ID_CATEGORIA), 2
    )                                               AS PROMEDIO_CAT
FROM PRODUCTOS  pr
JOIN CATEGORIAS ca ON pr.ID_CATEGORIA = ca.ID_CATEGORIA
WHERE pr.PRECIO > (
    SELECT AVG(pr2.PRECIO)
    FROM PRODUCTOS pr2
    WHERE pr2.ID_CATEGORIA = pr.ID_CATEGORIA
)
ORDER BY ca.NOMBRE, pr.PRECIO DESC;


-- ──────────────────────────────────────────────────────────────
-- CONSULTA 2: Vendedores cuyos ingresos superen
--             el promedio general de ingresos
-- ──────────────────────────────────────────────────────────────
COLUMN VENDEDOR          FORMAT A24         HEADING 'VENDEDOR'
COLUMN CALIFICACION      FORMAT 9.9         HEADING 'CALIF'
COLUMN TOTAL_INGRESOS    FORMAT 999,999,999 HEADING 'TOTAL INGRESOS'

SELECT
    ve.NOMBRE || ' ' || ve.APELLIDO                AS VENDEDOR,
    ve.CALIFICACION,
    SUM(dp.CANTIDAD * dp.PRECIO_UNITARIO)           AS TOTAL_INGRESOS
FROM VENDEDORES         ve
JOIN PRODUCTOS          pr ON ve.ID_VENDEDOR  = pr.ID_VENDEDOR
JOIN DETALLE_PEDIDOS    dp ON pr.ID_PRODUCTO  = dp.ID_PRODUCTO
JOIN PEDIDOS            pe ON dp.ID_PEDIDO    = pe.ID_PEDIDO
WHERE pe.ESTADO != 'CANCELADO'
GROUP BY ve.ID_VENDEDOR, ve.NOMBRE, ve.APELLIDO, ve.CALIFICACION
HAVING SUM(dp.CANTIDAD * dp.PRECIO_UNITARIO) > (
    SELECT AVG(ingreso_vendedor)
    FROM (
        SELECT SUM(dp2.CANTIDAD * dp2.PRECIO_UNITARIO) AS ingreso_vendedor
        FROM VENDEDORES         ve2
        JOIN PRODUCTOS          pr2 ON ve2.ID_VENDEDOR  = pr2.ID_VENDEDOR
        JOIN DETALLE_PEDIDOS    dp2 ON pr2.ID_PRODUCTO  = dp2.ID_PRODUCTO
        JOIN PEDIDOS            pe2 ON dp2.ID_PEDIDO    = pe2.ID_PEDIDO
        WHERE pe2.ESTADO != 'CANCELADO'
        GROUP BY ve2.ID_VENDEDOR
    )
)
ORDER BY TOTAL_INGRESOS DESC;


-- ──────────────────────────────────────────────────────────────
-- CONSULTA 3: Clientes que NO hayan realizado
--             compras en el ultimo mes
-- ──────────────────────────────────────────────────────────────
COLUMN ID_CLIENTE        FORMAT 99999       HEADING 'ID'
COLUMN CLIENTE           FORMAT A24         HEADING 'CLIENTE'
COLUMN EMAIL             FORMAT A30         HEADING 'EMAIL'
COLUMN ESTADO            FORMAT A10         HEADING 'ESTADO'
COLUMN ULTIMO_PEDIDO     FORMAT A12         HEADING 'ULT PEDIDO'

SELECT
    cl.ID_CLIENTE,
    cl.NOMBRE || ' ' || cl.APELLIDO                AS CLIENTE,
    LOWER(cl.EMAIL)                                 AS EMAIL,
    cl.ESTADO,
    TO_CHAR(
        (SELECT MAX(pe.FECHA_PEDIDO)
         FROM PEDIDOS pe
         WHERE pe.ID_CLIENTE = cl.ID_CLIENTE),
        'DD/MM/YYYY'
    )                                               AS ULTIMO_PEDIDO
FROM CLIENTES cl
WHERE cl.ID_CLIENTE NOT IN (
    SELECT DISTINCT pe.ID_CLIENTE
    FROM PEDIDOS pe
    WHERE pe.FECHA_PEDIDO >= ADD_MONTHS(SYSDATE, -1)
    AND   pe.ESTADO       != 'CANCELADO'
)
ORDER BY cl.ID_CLIENTE;


-- ──────────────────────────────────────────────────────────────
-- CONSULTA 4: Categorias con ventas superiores
--             al promedio global de ventas por categoria
-- ──────────────────────────────────────────────────────────────
COLUMN CATEGORIA         FORMAT A14         HEADING 'CATEGORIA'
COLUMN NUM_PRODUCTOS     FORMAT 9999        HEADING 'PRODUCTOS'
COLUMN UNIDADES          FORMAT 9999        HEADING 'UNIDADES'
COLUMN TOTAL_VENTAS      FORMAT 999,999,999 HEADING 'TOTAL VENTAS'

SELECT
    ca.NOMBRE                                       AS CATEGORIA,
    COUNT(DISTINCT pr.ID_PRODUCTO)                  AS NUM_PRODUCTOS,
    SUM(dp.CANTIDAD)                                AS UNIDADES,
    SUM(dp.CANTIDAD * dp.PRECIO_UNITARIO)           AS TOTAL_VENTAS
FROM CATEGORIAS         ca
JOIN PRODUCTOS          pr ON ca.ID_CATEGORIA = pr.ID_CATEGORIA
JOIN DETALLE_PEDIDOS    dp ON pr.ID_PRODUCTO  = dp.ID_PRODUCTO
JOIN PEDIDOS            pe ON dp.ID_PEDIDO    = pe.ID_PEDIDO
WHERE pe.ESTADO != 'CANCELADO'
GROUP BY ca.ID_CATEGORIA, ca.NOMBRE
HAVING SUM(dp.CANTIDAD * dp.PRECIO_UNITARIO) > (
    SELECT AVG(venta_categoria)
    FROM (
        SELECT SUM(dp2.CANTIDAD * dp2.PRECIO_UNITARIO) AS venta_categoria
        FROM CATEGORIAS         ca2
        JOIN PRODUCTOS          pr2 ON ca2.ID_CATEGORIA = pr2.ID_CATEGORIA
        JOIN DETALLE_PEDIDOS    dp2 ON pr2.ID_PRODUCTO  = dp2.ID_PRODUCTO
        JOIN PEDIDOS            pe2 ON dp2.ID_PEDIDO    = pe2.ID_PEDIDO
        WHERE pe2.ESTADO != 'CANCELADO'
        GROUP BY ca2.ID_CATEGORIA
    )
)
ORDER BY TOTAL_VENTAS DESC;


-- ──────────────────────────────────────────────────────────────
-- CONSULTA 5: Productos con ventas superiores
--             al promedio de ventas del vendedor que los ofrece
-- ──────────────────────────────────────────────────────────────
COLUMN VENDEDOR          FORMAT A22         HEADING 'VENDEDOR'
COLUMN PRODUCTO          FORMAT A26         HEADING 'PRODUCTO'
COLUMN CATEGORIA         FORMAT A12         HEADING 'CATEGORIA'
COLUMN VENTAS_PRODUCTO   FORMAT 999,999,999 HEADING 'VENTAS PROD'
COLUMN PROMEDIO_VENDEDOR FORMAT 999,999,999 HEADING 'PROM VENDEDOR'

SELECT
    ve.NOMBRE || ' ' || ve.APELLIDO                AS VENDEDOR,
    pr.NOMBRE                                       AS PRODUCTO,
    ca.NOMBRE                                       AS CATEGORIA,
    SUM(dp.CANTIDAD * dp.PRECIO_UNITARIO)           AS VENTAS_PRODUCTO,
    ROUND(
        (SELECT AVG(dp2.CANTIDAD * dp2.PRECIO_UNITARIO)
         FROM PRODUCTOS          pr2
         JOIN DETALLE_PEDIDOS    dp2 ON pr2.ID_PRODUCTO = dp2.ID_PRODUCTO
         JOIN PEDIDOS            pe2 ON dp2.ID_PEDIDO   = pe2.ID_PEDIDO
         WHERE pr2.ID_VENDEDOR   = ve.ID_VENDEDOR
         AND   pe2.ESTADO       != 'CANCELADO'), 2
    )                                               AS PROMEDIO_VENDEDOR
FROM VENDEDORES         ve
JOIN PRODUCTOS          pr ON ve.ID_VENDEDOR  = pr.ID_VENDEDOR
JOIN CATEGORIAS         ca ON pr.ID_CATEGORIA = ca.ID_CATEGORIA
JOIN DETALLE_PEDIDOS    dp ON pr.ID_PRODUCTO  = dp.ID_PRODUCTO
JOIN PEDIDOS            pe ON dp.ID_PEDIDO    = pe.ID_PEDIDO
WHERE pe.ESTADO != 'CANCELADO'
GROUP BY ve.ID_VENDEDOR, ve.NOMBRE, ve.APELLIDO,
         pr.ID_PRODUCTO, pr.NOMBRE, ca.NOMBRE
HAVING SUM(dp.CANTIDAD * dp.PRECIO_UNITARIO) > (
    SELECT AVG(dp2.CANTIDAD * dp2.PRECIO_UNITARIO)
    FROM PRODUCTOS          pr2
    JOIN DETALLE_PEDIDOS    dp2 ON pr2.ID_PRODUCTO = dp2.ID_PRODUCTO
    JOIN PEDIDOS            pe2 ON dp2.ID_PEDIDO   = pe2.ID_PEDIDO
    WHERE pr2.ID_VENDEDOR   = ve.ID_VENDEDOR
    AND   pe2.ESTADO       != 'CANCELADO'
)
ORDER BY ve.APELLIDO, VENTAS_PRODUCTO DESC;
