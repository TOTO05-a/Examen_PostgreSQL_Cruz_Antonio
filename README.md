# Examen_PostgreSQL_Cruz_Antonio
MOVIERENTAL - GESTIÓN DE ALQUILER DE PELÍCULAS

 

# Descripción del examen

El objetivo de este examen es diseñar una base de datos que permita gestionar de forma eficiente las operaciones de una tienda de alquiler de películas. La base de datos debe incluir información sobre los clientes, el inventario de películas, el historial de alquileres, los pagos realizados, las categorías de películas y las sucursales donde se ofrecen los servicios. Además, se espera que las consultas permitan analizar los patrones de alquiler y las tendencias de consumo, proporcionando datos clave para la toma de decisiones.

  
## Especificaciones del sistema

1.     Clientes: La base de datos debe almacenar información personal de los clientes, incluyendo nombre, contacto, dirección y el historial de alquileres realizados.

2.     Películas: El inventario de películas debe incluir detalles como título, género, director, año de lanzamiento, disponibilidad y precio de alquiler.

3.     Alquileres: Cada transacción de alquiler debe registrar el cliente, la película alquilada, la fecha de inicio, la fecha de devolución y el costo total.

4.     Pagos: Los registros de pagos deben incluir información sobre la fecha, el monto y el cliente que realizó el pago.

5.     Categorías: Las películas deben estar clasificadas en categorías como acción, comedia, drama, entre otras.

6.     Sucursales: La tienda cuenta con varias sucursales. Se debe almacenar información sobre la ubicación de cada sucursal y los inventarios asociados.

Entregables del examen

1.     Modelo E-R:

    o   Diseño de un diagrama Entidad-Relación (E-R) que represente las entidades, relaciones, atributos y cardinalidades necesarias para cubrir los requerimientos del sistema.
    o   El modelo debe presentarse como una imagen en alta resolución.


2.     Estructura de la Base de Datos:

    o   Archivo db.sql que incluya la creación de todas las tablas con sus respectivas claves primarias, foráneas y restricciones como NOT NULL, UNIQUE, CHECK, etc.


3.     Insert de Datos:

Archivo insert.sql con un conjunto representativo de datos: 

    § Al menos 10 clientes.
    § Al menos 15 películas de diferentes géneros.
    § Al menos 10 registros de alquileres y pagos asociados.
    § Al menos 5 sucursales con inventarios relacionados.


4.     Consultas SQL:

Incluir 8 consultas clave que permitan analizar y gestionar la información del sistema: 

     Calcular los ingresos generados por cada sucursal en el último mes.
     Consultar el cliente con el mayor monto total de pagos realizados.
     Obtener el porcentaje de películas alquiladas por género.
     Identificar las sucursales con mayor número de transacciones de alquiler.
     Listar todas las películas disponibles para alquiler, incluyendo detalles como título, género y precio.
     Obtener el historial de alquileres de un cliente específico, incluyendo las fechas y los títulos de las películas.
     Consultar las películas con precios de alquiler superiores a un valor especificado.
     Listar las películas lanzadas en los últimos 5 años que están disponibles para alquiler.


5.     Procedimiento Almacenado con Transacciones:

    Crear un procedimiento almacenado que permita registrar un pago realizado por un cliente. Este procedimiento debe validar que el cliente exista en la base de datos y que el monto del pago sea positivo. Si alguna de estas validaciones falla, se debe usar una transacción con ROLLBACK para revertir los cambios. En caso contrario, se debe ejecutar un COMMIT para guardar el registro de forma permanente.


6.     README:

Archivo README.md que incluya: 

     Una descripción general del proyecto.
     Instrucciones claras para importar y ejecutar los archivos SQL en un entorno PostgreSQL.
     Explicaciones de la lógica detrás de las consultas y el procedimiento almacenado propuesto.

  

 

# Restricciones:

    La base de datos debe estar normalizada al menos hasta la tercera forma normal (3FN).
    No se permite el uso de software adicional que no sea PostgreSQL para la implementación de las tablas y consultas.
    El diseño debe incluir relaciones bien definidas y restricciones que aseguren la integridad de los datos.

 

Resultado esperado

   1. Modelo E-R.
   2. Estructura de la Base de Datos.
   3. Inserción de Datos.
   4. Consultas SQL.
   5. Procedimiento Almacenado con Transacciones.
   6. README.
   7. Link y Hash del Repositorio de GitHub.