USE b4w1m9w9pl2dc80w8f7a;

CREATE TABLE estudiantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    edad INT,
    genero VARCHAR(10)
);

INSERT INTO estudiantes (nombre, edad, genero)
VALUES
('estudiante1', 20, 'm'),
('estudiante2', 21, 'f'),
('estudiante3', 22, 'm'),
('estudiante4', 19, 'f'),
('estudiante5', 20, 'm'),
('estudiante6', 21, 'f'),
('estudiante7', 22, 'm'),
('estudiante8', 19, 'f'),
('estudiante9', 20, 'm'),
('estudiante10', 21, 'f');


CREATE TABLE materias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45)
);

INSERT INTO materias (nombre)
VALUES
('materia1'),
('materia2'),
('materia3'),
('materia4'),
('materia5'),
('materia6'),
('materia7'),
('materia8'),
('materia9'),
('materia10');

CREATE TABLE notas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_estudiante INT,
    id_materia INT,
    nota FLOAT,
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id),
    FOREIGN KEY (id_materia) REFERENCES materias(id)
);

INSERT INTO notas (id_estudiante, id_materia, nota)
VALUES
(1, 1, 80),
(1, 2, 75),
(1, 3, 90),
(2, 4, 85),
(2, 5, 88),
(2, 6, 92),
(3, 7, 78),
(3, 8, 87),
(3, 9, 95),
(4, 10, 89),
(4, 1, 91),
(4, 2, 84),
(5, 3, 88),
(5, 4, 75),
(5, 5, 90),
(6, 6, 92),
(6, 7, 78),
(6, 8, 87),
(7, 9, 95),
(7, 10, 89),
(7, 1, 91),
(8, 2, 84),
(8, 3, 88),
(9, 4, 75),
(9, 5, 90),
(9, 6, 92),
(10, 7, 78),
(10, 8, 87),
(10, 9, 95);
