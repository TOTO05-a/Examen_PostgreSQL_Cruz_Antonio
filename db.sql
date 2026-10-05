CREATE TABLE clientes(
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    email VARCHAR(80) NOT NULL UNIQUE,
    telefono VARCHAR(15) NOT NULL,
    PRIMARY KEY (email)
    direccion VARCHAR(100) NOT NULL,
    historial_alquileres TEXT NOT NULL
);

CREATE TABLE peliculas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    director VARCHAR(50) NOT NULL,
    año_lanzamiento INT NOT NULL,
    disponibilidad BOOLEAN NOT NULL,
    precio_alquiler DECIMAL(5,2) NOT NULL
);

CREATE TABLE alquileres(
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_email VARCHAR(80) NOT NULL,
    pelicula_id INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_devolucion DATE NOT NULL,
    costo_total DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (cliente_email) REFERENCES clientes(email),
    FOREIGN KEY (pelicula_id) REFERENCES peliculas(id)
);

CREATE TABLE pagos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_email VARCHAR(80) NOT NULL,
    fecha DATE NOT NULL,
    monto DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (cliente_email) REFERENCES clientes
    );

    CREATE TABLE categorias(
        id INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(35) NOT NULL UNIQUE,
        descripcion TEXT NOT NULL 
    );


    CREATE TABLE sucursales(
        id INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(50) NOT NULL,
        direccion VARCHAR(100) NOT NULL,
        inventario TEXT NOT NULL
    );

    