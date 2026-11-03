-- ══════════════════════════════════════════
-- MiniStore — Soluciones con Outer JOINs
-- Autor: Josefina Dal Zotto
-- Fecha: 3/11/2026
-- ══════════════════════════════════════════

-- ── CONSULTA 1: LEFT JOIN ─────────────────
-- Pregunta de negocio: ¿Qué productos del catálogo nunca fueron vendidos?
-- Mostrá todos los productos y sus ventas asociadas.
-- Los productos sin ventas aparecerán con NULL en las columnas de ventas.

SELECT productos.producto_id,
    productos.nombre,
    ventas.venta_id

FROM productos   LEFT JOIN ventas
ON  productos.producto_id=ventas.producto_id;


-- ── CONSULTA 2: RIGHT JOIN ────────────────
-- Pregunta de negocio: ¿Existen ventas registradas con productos
-- que no figuran en nuestro catálogo? (posible error de carga de datos)
-- Los registros huérfanos aparecerán con NULL en las columnas de productos.

SELECT ventas.venta_id,
ventas.producto_id,
productos.producto_id

FROM productos RIGHT JOIN ventas
ON productos.producto_id=ventas.producto_id;


-- ── CONSULTA 3: FULL OUTER JOIN ───────────
-- Pregunta de negocio: Vista completa de auditoría que muestre
-- todos los productos y todas las ventas sin perder ninguna fila,
-- identificando tanto productos sin ventas como ventas sin producto.

SELECT productos.*, ventas.*

FROM productos

FULL OUTER JOIN ventas
ON productos.producto_id=ventas.producto_id;

