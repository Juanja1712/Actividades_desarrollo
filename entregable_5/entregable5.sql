
USE b4w1m9w9pl2dc80w8f7a;
SELECT * FROM users;

-- Seleccionar los nombres, apellidos y edad de quienes tengan 20 años
SELECT * FROM users WHERE edad = 20;

-- Listado de todas las mujeres que tengan entre 20 y 30 años

SELECT * FROM users WHERE genero = 'M' AND edad > 19 AND edad < 31;

-- La persona con menor edad en la base de datos
-- Seleccionar nombres de users ordenados por edad de forma ascendente limitado a un resultado
SELECT * FROM users ORDER BY edad ASC LIMIT 1;
SELECT MIN(edad) FROM users LIMIT 1;

-- Cunatos usuarios hay en la base de datos
SELECT MAX(id) FROM users;

-- Traer los 5 primeros usuarios de la base de datos
SELECT * FROM users ORDER BY id ASC LIMIT 5;

-- Traer los 10 ultimos usuarios de la base de DIAGNOSTICS

SELECT * FROM users ORDER BY id DESC LIMIT 10;

-- Filtrar correos que finalicen en .net
SELECT * FROM users WHERE LOCATE ('.net', correo);

-- Listar usuarios que no vivan en Colombia
SELECT * FROM users WHERE pais <> 'colombia';

-- Listar usuarios que no vivan en Ecuador y Panamá
SELECT * FROM users WHERE pais <> 'ecuador' AND pais <> 'panama';

-- Cuantos (numero) usuarios son de colombia y les gusta el rock
SELECT COUNT(*) AS cantidad FROM users WHERE pais = 'colombia' AND musica = 'rock';

-- Actualizar el genero musical de todos los usuarios de la base de datos de 'metal' a 'carranga'
UPDATE users SET musica = 'carranga' WHERE musica = 'rock';

-- Listado de hombres que les guste la carranga, sean de Colombia y tengan entre 10 y 20 años de edad
SELECT * FROM users WHERE genero='M' AND pais='colombia' AND edad <=20 AND edad >=10;

-- Actualizar todos los usuarios que tengan 90 años, su nuevo genero musical favorito sera la 'carranga'
UPDATE users SET musica='carranga' WHERE edad=90;

-- Listar todos los usuarios que su nombre inice con A
SELECT * FROM users WHERE nombres LIKE 'A%';

-- Listar todos los usuarios que su nombre finalice con Z
SELECT * FROM users WHERE nombres LIKE '%Z';

-- Actualizar los usuarios que tengan 50 años de edad, su nuevo genero musical será NULL
-- Modificar la tabla, ya que en la DB cuanto fue creada, se colocó que los valores no podían ser NULL
ALTER TABLE users MODIFY musica VARCHAR(255) NULL;
UPDATE users SET musica=NULL WHERE edad=50;

-- Listar todos los usuarios que su genero musical sea igual a NULL
SELECT * FROM users WHERE musica IS NULL;

-- Cual es el resultado de la suma de todas las edads de la base de datos
SELECT SUM(edad) AS 'Suma de edades' FROM users;

-- Cuantos usuarios tenemos registrados de ecuador
SELECT pais, COUNT(*) AS usuarios_ecuador FROM users WHERE pais='ecuador';

-- Cuantos usuarios son de Colombia y les gusta el vallenato
SELECT COUNT(*) AS 'Colombia y vallenato' FROM users WHERE musica='vallenato' AND pais='colombia';

