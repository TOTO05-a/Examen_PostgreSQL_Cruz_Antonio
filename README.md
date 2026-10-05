# MOVIERENTAL - Gestión de Alquiler de Películas

El objetivo de este examen es diseñar una base de datos que permita gestionar de forma eficiente las operaciones de una tienda de alquiler de películas. La base de datos debe incluir información sobre los clientes, el inventario de películas, el historial de alquileres, los pagos realizados, las categorías de películas y las sucursales donde se ofrecen los servicios. Además, se espera que las consultas permitan analizar los patrones de alquiler y las tendencias de consumo, proporcionando datos clave para la toma de decisiones.


## Estructura del Proyecto

El proyecto se compone de los siguientes archivos:

- **Mi diagrama E-R**: Tiene el diagrama Entidad-Relación (E-R) que representa las entidades, relaciones, atributos y cardinalidades necesarias para el sistema de gestión de alquiler de películas.

- **sql/db.sql**: Incluye la creación de todas las tablas necesarias para la base de datos, con sus respectivas claves primarias, foráneas y restricciones como NOT NULL, UNIQUE y CHECK.

- **sql/insert.sql**: Contiene un conjunto representativo de datos que incluye al menos 10 clientes, 15 películas de diferentes géneros, 10 registros de alquileres y pagos asociados, y 5 sucursales con inventarios relacionados.

- **sql/queries.sql**: Incluye 8 consultas SQL clave que permiten analizar y gestionar la información del sistema, tales como calcular ingresos por sucursal, consultar el cliente con mayor monto de pagos, y listar películas disponibles.

- **sql/procedures.sql**: Contiene el procedimiento almacenado que permite registrar un pago realizado por un cliente, incluyendo las validaciones necesarias y el manejo de transacciones con ROLLBACK y COMMIT.

## Instrucciones para Importar y Ejecutar

1. Asegúrate de tener PostgreSQL instalado en tu sistema.
2. Crea una nueva base de datos para el proyecto.
3. Ejecuta el archivo `db.sql` para crear las tablas necesarias.
4. Inserta los datos de prueba ejecutando el archivo `insert.sql`.
5. Ejecuta las consultas SQL en `queries.sql` para analizar la información.
6. Implementa el procedimiento almacenado desde `procedures.sql` para gestionar los pagos.

## Lógica Detrás de las Consultas y Procedimiento Almacenado

Las consultas están diseñadas para proporcionar información clave sobre el rendimiento de la tienda, permitiendo a los administradores tomar decisiones informadas. El procedimiento almacenado asegura que los pagos se registren de manera segura, validando la existencia del cliente y el monto del pago antes de confirmar la transacción.

Este sistema proporciona una solución integral para la gestión de alquiler de películas, optimizando las operaciones y mejorando la experiencia del cliente.