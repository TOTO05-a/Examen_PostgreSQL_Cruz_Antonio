-- Insertar datos de ejemplo en la base de datos MOVIERENTAL

-- Clientes
INSERT INTO clientes (nombre, contacto, direccion) VALUES
('Alejandro Gómez', '555-9876', 'Calle de los Olivos 12'),
('Valeria Castillo', '555-6543', 'Avenida del Parque 45'),
('Fernando Ruiz', '555-3210', 'Boulevard Central 89'),
('Camila Herrera', '555-7890', 'Callejón del Río 23'),
('Diego Vargas', '555-4567', 'Plaza Mayor 67'),
('Isabella Méndez', '555-1239', 'Calle de las Flores 101'),
('Sebastián Torres', '555-2460', 'Avenida del Sol 202'),
('Lucía Ramírez', '555-3571', 'Calle de la Luna 303'),
('Gabriel Morales', '555-4682', 'Avenida de la Paz 404'),
('Sofía Jiménez', '555-5793', 'Calle de la Esperanza 505');

-- Películas
INSERT INTO peliculas (titulo, genero, director, año_lanzamiento, disponibilidad, precio_alquiler) VALUES
('Rápidos y Furiosos', 'Acción', 'Rob Cohen', 2001, TRUE, 3.49),
('Más Rápidos, Más Furiosos', 'Acción', 'John Singleton', 2003, TRUE, 2.99),
('Rápidos y Furiosos: Reto Tokio', 'Acción', 'Justin Lin', 2006, TRUE, 3.99),
('Rápidos y Furiosos 4', 'Acción', 'Justin Lin', 2009, TRUE, 3.49),
('Rápidos y Furiosos 5in Control', 'Acción', 'Justin Lin', 2011, TRUE, 4.99),
('Rápidos y Furiosos 6', 'Acción', 'Justin Lin', 2013, TRUE, 3.99),
('Rápidos y Furiosos 7', 'Acción', 'James Wan', 2015, TRUE, 4.49),
('Rápidos y Furiosos 8', 'Acción', 'F. Gary Gray', 2017, TRUE, 4.99),
('Rápidos y Furiosos: Hobbs & Shaw', 'Acción', 'David Leitch', 2019, TRUE, 3.99),
('Rápidos y Furiosos 9', 'Acción', 'Justin Lin', 2021, TRUE, 4.49),
('Rápidos y Furiosos 10', 'Acción', 'Louis Leterrier', 2023, TRUE, 4.99);

-- Sucursales
INSERT INTO sucursales (nombre, direccion, telefono) VALUES
('Sucursal Centro', 'Avenida Principal 123', '555-1111'),
('Sucursal Norte', 'Calle Norte 456', '555-2222'),
('Sucursal Sur', 'Calle Sur 789', '555-3333'),
('Sucursal Este', 'Avenida Este 101', '555-4444'),
('Sucursal Oeste', 'Boulevard Oeste 202', '555-5555');

-- Alquileres
INSERT INTO alquileres (cliente_id, pelicula_id, fecha_inicio, fecha_devolucion, costo_total) VALUES
(1, 1, '2023-10-01', '2023-10-05', 3.49),
(2, 2, '2023-10-02', '2023-10-06', 2.99),
(3, 3, '2023-10-03', '2023-10-07', 3.99),
(4, 4, '2023-10-04', '2023-10-08', 3.49),
(5, 5, '2023-10-05', '2023-10-09', 4.99),
(6, 6, '2023-10-06', '2023-10-10', 3.99),
(7, 7, '2023-10-07', '2023-10-11', 4.49),
(8, 8, '2023-10-08', '2023-10-12', 4.99),
(9, 9, '2023-10-09', '2023-10-13', 3.99),
(10, 10, '2023-10-10', '2023-10-14', 4.49);

-- Pagos
INSERT INTO pagos (cliente_id, fecha, monto) VALUES
(1, '2023-10-05', 3.49),
(2, '2023-10-06', 2.99),
(3, '2023-10-07', 3.99),
(4, '2023-10-08', 3.49),
(5, '2023-10-09', 4.99),
(6, '2023-10-10', 3.99),
(7, '2023-10-11', 4.49),
(8, '2023-10-12', 4.99),
(9, '2023-10-13', 3.99),
(10, '2023-10-14', 4.49);