-- 1: Calcular los ingresos generados por cada sucursal en el último mes.SELECT s.nombre AS sucursal, SUM(p.monto) AS ingresos
FROM sucursales s
JOIN pagos p ON s.id = p.sucursal_id
WHERE p.fecha >= NOW() - INTERVAL '1 month'
GROUP BY s.nombre;

-- 2: Consultar el cliente con el mayor monto total de pagos realizados.
SELECT c.nombre, SUM(p.monto) AS total_pagado
FROM clientes c
JOIN pagos p ON c.id = p.cliente_id
GROUP BY c.nombre
ORDER BY total_pagado DESC
LIMIT 1;

-- 3: Obtener el porcentaje de películas alquiladas por género.
SELECT g.nombre AS genero, 
       COUNT(a.id) * 100.0 / (SELECT COUNT(*) FROM peliculas) AS porcentaje_alquiler
FROM generos g
LEFT JOIN peliculas p ON g.id = p.genero_id
LEFT JOIN alquileres a ON p.id = a.pelicula_id
GROUP BY g.nombre;

-- 4: Identificar las sucursales con mayor número de transacciones de alquiler
SELECT s.nombre, COUNT(a.id) AS total_alquileres
FROM sucursales s
JOIN alquileres a ON s.id = a.sucursal_id
GROUP BY s.nombre
ORDER BY total_alquileres DESC;

-- 5: Listar todas las películas disponibles para alquiler, incluyendo detalles como título, género y precio
SELECT p.titulo, g.nombre AS genero, p.precio_alquiler
FROM peliculas p
JOIN generos g ON p.genero_id = g.id
WHERE p.disponibilidad = TRUE;

-- 6: Obtener el historial de alquileres de un cliente específico, incluyendo las fechas y los títulos de las películas
SELECT c.nombre AS cliente, p.titulo, a.fecha_inicio, a.fecha_devolucion
FROM alquileres a
JOIN clientes c ON a.cliente_id = c.id
JOIN peliculas p ON a.pelicula_id = p.id
WHERE c.id = ?;  -- se remplaza ? con el ID del cliente deseado

-- 7: Consultar las películas con precios de alquiler superiores a un valor especificado
SELECT p.titulo, p.precio_alquiler
FROM peliculas p
WHERE p.precio_alquiler > ?;

-- 8: Listar las películas lanzadas en los últimos 5 años que están disponibles para alquiler
SELECT p.titulo, p.fecha_lanzamiento
FROM peliculas p
WHERE p.fecha_lanzamiento >= NOW() - INTERVAL '5 years' AND p.disponibilidad = TRUE;