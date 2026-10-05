-- Inserts de Clientes
INSERT INTO clientes (nombre, apellido, email, telefono, direccion, historial_alquileres) VALUES
('Juan', 'Pérez', 'jperez@mail.com', '555-1234', 'Calle San Jose 123', 'Alquiler de "Avenger" y "Matrix"'),
('María', 'Gómez', ' gmaria@mail.com', '555-5678', 'Avenida Libertad 456', 'Alquiler de "Titanic" y "Avatar"'),
('Carlos', 'Ramírez', 'cramirez@mail.com ', '555-8765', 'Calle Falsa 789', 'Alquiler de "batman" y "Joker"'),
('Ana', 'López', 'alopez@mail.com', '555-4321', 'Calle Real 321', 'Alquiler de "Inception" y "Interstellar"'),
('Luis', 'Martínez', 'lmartinez@mail.com', '555-6789', 'Avenida Central 654', 'Alquiler de "El hobit" y "Resident evil"'),
('Sofía', 'Hernández', 'hsofiaæ@mail.com', '555-9876', 'Calle Luna 987', 'Alquiler de "La La Land" y "Jumanji"'),
('Diego', 'Torres', 'dtorres@mail.com', '555-3456', 'Avenida Sol 321', 'Alquiler de "Gardfield" y "Rapidos y furiosos"'),
('Valentina', 'Rojas', 'valrojas@mail.com', '555-6543', 'Calle Estrella 654', 'Alquiler de "El rey león" y "Frozen"'),
('Mateo', 'Vargas', 'mvargas.mail.com', '555-7890', 'Avenida Mar 987', 'Alquiler de "Toy Story" y "Coco"'),
('Isabella', 'Castro', 'icastromail.com', '555-2109', 'Calle Sol 123', 'Alquiler de "El padrino" y "Scarface"');


-- almenos 15 peliculas con de diferentes generos

INSERT INTO peliculas (titulo, genero, director, año_lanzamiento, disponibilidad, precio_alquiler) VALUES
('Avengers: Endgame', 'Acción', 'Anthony Russo', 2019, TRUE, 3.99),
('Titanic', 'Romance', 'James Cameron', 1997, TRUE, 2.99),
('2 Fast 2 Furious', 'Acción', 'John Singleton', 2003, TRUE, 2.99),
('The Fast and the Furious: Tokyo Drift', 'Acción', 'Justin Lin', 2006, TRUE, 2.99),
('Fast & Furious', 'Acción', 'Rob Cohen', 2001, TRUE, 2.99),
('Fast & Furious', 'Acción', 'Justin Lin', 2009, TRUE, 2.99),
('Fast Five', 'Acción', 'Justin Lin', 2011, TRUE, 3.49),
('Fast & Furious 6', 'Acción', 'Justin Lin', 2013, TRUE, 3.49),
('Furious 7', 'Acción', 'James Wan', 2015, TRUE, 3.49),('Coco', 'Animación', 'Lee Unkrich', 2017, TRUE, 2.99),
('Interstellar', 'Ciencia ficción', 'Christopher Nolan', 2014, TRUE, 3.49),
('The Fate of the Furious', 'Acción', 'F. Gary Gray', 2017, TRUE, 3.49);
('Scarface', 'Crimen', 'Brian De Palma', 1983, TRUE, 3.49),
('Jumanji: Welcome to the Jungle', 'Aventura', 'Jake Kasdan', 2017, TRUE, 2.99),
('Fast & Furious Presents: Hobbs & Shaw','Acción','David Leitch','2019','TRUE','3.49');

--Almenos 10 registros de alquileres y pagos asociados
INSERT INTO alquileres (id_cliente, id_pelicula, fecha_alquiler, fecha_devolucion, estado_alquiler) VALUES
(1, 1, '2023-01-10', '2026-01-15', 'Devuelto'),
(2, 2, '2026-02-05', '2026-02-10', 'Devuelto'),
(3, 3, '2026-03-12', '2026-03-17', 'Devuelto'),
(4, 4, '2026-04-20', '2026-04-25', 'Devuelto'),
(5, 5, '2026-05-15', '2026-05-20', 'Devuelto'),
(6, 6, '2026-06-18', '2026-06-23', 'Devuelto'),
(7, 7, '2026-07-22', '2026-07-27', 'Devuelto'),
(8, 8, '2026-08-30', '2026-09-04', 'Devuelto'),
(9, 9, '2026-09-10', '2026-09-15', 'Devuelto'),
(10, 10, '2026-10-05', '2026-10-10', 'Devuelto');


-- Almenos 5 sucursales con inventarios relacionados
INSERT INTO sucursales (nombre, direccion, telefono) VALUES
('Sucursal Zona1', 'Calle Principal 123', '555-1111'),
('Sucursal Zona2', 'Sexta Avenida 456', '555-2222'),
('Sucursal Zona3', 'Calle 13', '555-3333'),
('Sucursal Zona4', 'Calle 7', '555-4444'),
('Sucursal Zona5', 'Septima Avenida 123', '555-5555');


-- Consultas SQL 
-- 1: Calcular los ingresos generados por cada sucursal en el último mes.
SELECT s.nombre AS sucursal, SUM(p.precio_alquiler) AS ingresos FROM sucursales s JOIN inventarios i ON s.id_sucursal = i id_sucursal JOIN peliculas p ON i.id_pelicula = p.id_pelicula JOIN alquileres a ON p.id_pelicula = a.id_pelicula WHERE a.fecha_alquiler >= DATE_TRUNC('month', CURRENT_DATE) - INTERVAL '1 month' GROUP BY s.nombre;  

-- 2: Consultar el cliente con el mayor monto total de pagos realizados.
SELECT c.nombre, c.apellido, SUM(p.precio_alquiler) AS total_pagos FROM clientes c JOIN alquileres a ON c.id_cliente = a.id_cliente JOIN peliculas p ON a.id_pelicula = p.id_pelicula GROUP BY c.id_cliente ORDER BY total_pagos DESC LIMIT 1; 

-- 3: Obtener el porcentaje de películas alquiladas por género.
SELECT p.genero, COUNT(a.id_alquiler) AS peliculas_alquiladas, (COUNT(a.id_alquiler) * 100.0 / (SELECT COUNT(*) FROM alquileres)) AS porcentaje FROM peliculas p LEFT JOIN alquileres a ON p.id_pelicula = a.id_pelicula GROUP BY p.genero;


-- 4 : Identificar las sucursales con mayor número de transacciones de alquiler.
SELECT s.nombre AS sucursal, COUNT(a.id_alquiler) AS total_transacciones FROM sucursales s JOIN inventarios i ON s.id_sucursal = i.id_sucursal JOIN peliculas p ON i.id_pelicula = p.id_pelicula JOIN alquileres a ON p.id_pelicula = a.id_pelicula GROUP BY s.nombre ORDER BY total_transacciones DESC;


-- 5: Listar todas las películas disponibles para alquiler, incluyendo detalles como título, género y precio.
SELECT titulo, genero, precio_alquiler FROM peliculas WHERE disponibilidad = TRUE;


-- 6: Obtener el historial de alquileres de un cliente específico, incluyendo las fechas y los títulos de las películas.
SELECT c.nombre, c.apellido, p.titulo, a.fecha_alquiler, a.fecha_devolucion FROM clientes c JOIN alquileres a ON c.id_cliente = a.id_cliente JOIN peliculas p ON a.id_pelicula = p.id_pelicula WHERE c.id_cliente = 1;


-- 7: Consultar las películas con precios de alquiler superiores a un valor especificado.

SELECT titulo, precio_alquiler FROM peliculas WHERE precio_alquiler > 3.00;


-- 8:     Listar las películas lanzadas en los últimos 5 años que están disponibles para alquiler.

SELECT titulo, año_lanzamiento FROM peliculas WHERE año_lanzamiento >= EXTRACT(YEAR FROM CURRENT_DATE) - 5 AND disponibilidad = TRUE;

