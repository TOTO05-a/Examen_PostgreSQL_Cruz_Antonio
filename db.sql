-- Creación de la base de datos para la gestión de alquiler de películas
CREATE TABLE sucursales (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    telefono VARCHAR(15) NOT NULL
);
CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE peliculas (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    genero_id INT NOT NULL,
    director VARCHAR(100),
    anio_lanzamiento INT CHECK (anio_lanzamiento > 1888), -- Año de lanzamiento debe ser despues de 1888
    disponibilidad BOOLEAN NOT NULL DEFAULT TRUE,
    precio_alquiler DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (genero_id) REFERENCES categorias(id)
);

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    contacto VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL
);

CREATE TABLE alquileres (
    id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL,
    pelicula_id INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_devolucion DATE,
    costo_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (pelicula_id) REFERENCES peliculas(id)
);

CREATE TABLE pagos (
    id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL,
    fecha DATE NOT NULL,
    monto DECIMAL(10, 2) NOT NULL CHECK (monto > 0),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);