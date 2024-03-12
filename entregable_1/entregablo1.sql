USE b4w1m9w9pl2dc80w8f7a;
SHOW DATABASES;
-------------------------------------------
CREATE TABLE empresas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    nit VARCHAR(45),
    direccion VARCHAR(45),
    telefono VARCHAR(45)
);

SELECT * FROM empresas;
-------------------------------------------
CREATE TABLE paises(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45)
);

SELECT * FROM paises;
-------------------------------------------
CREATE TABLE vehiculos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(45),
    modelo VARCHAR(45),
    marca VARCHAR(45),
    color VARCHAR(45),
    tipo_vehiculo VARCHAR(45)
);

SELECT * FROM vehiculos;
-------------------------------------------
CREATE TABLE usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(45),
    apellidos VARCHAR(45),
    correo VARCHAR(45),
    contraseña VARCHAR(45),
    edad VARCHAR(45),
    genero VARCHAR(45),
    altura VARCHAR(45),
    peso VARCHAR(45)
);

SELECT * FROM usuarios;
-- INSERT
INSERT INTO usuarios 
(nombres, apellidos, correo, contraseña, edad, genero, altura, peso) 
VALUES 
('Ramon', 'Franco', 'ramonl@gmail.com', '181', '24', 'hombre', '1.78', '85');

-- UPDATE
UPDATE empresas
SET direccion = 'Nueva Dirección'
WHERE id = 1;

-- DELETE
DELETE FROM usuarios
WHERE id = 3;

-- ALTER TABLE
ALTER TABLE empresas
ADD COLUMN ciudad VARCHAR(45);

----------------------------------------------------------------

-- TRAER DATOS CON BOOLEANOS
SELECT nombres FROM usuarios WHERE (altura = 1.77) AND (peso = 81);
SELECT nombres FROM usuarios WHERE (altura = 1.77) AND (peso = 81) AND (apellidos = 'Franco');

-- TRAER DATOS CON 'OR'
SELECT * FROM usuarios WHERE (id = 1) OR (id = 2) OR (id = 4);
-- FORMA SIMPLIFICADA DE USAR EL 'OR'
SELECT * FROM usuarios WHERE id IN (1, 2, 4);

-- USAR AND 'NOT' EN ESTE CASO QUIERE DECIR "QUE EL PESO NO SEA 81 O QUE EL APELLIDO SEA FRANCO"
SELECT nombres FROM usuarios WHERE altura = 1.77 AND NOT peso = 81 OR apellidos = 'Franco';

-- USAR 'NOT' ANTES DE SOLICITAR LOS DATOS, TRAERÁ TODOS LOS DATOS MENOS LOS QUE CUMPLAN LA CONDICION INDICADA
SELECT nombres FROM usuarios WHERE NOT ((altura = 1.77) AND NOT (peso = 81) OR (apellidos = 'Franco'));
SELECT * FROM usuarios WHERE id NOT IN (1, 2, 4);

-- ORDEN DE BUSQUEDA SEGUN LOS PARENTESIS
SELECT nombres, apellidos, correo, contraseña, edad, genero, altura, peso FROM usuarios WHERE altura = 1.78 AND (nombres = 'Cristian' OR apellidos = 'Franco');

