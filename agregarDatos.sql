INSERT INTO Curso (año, division, ciclolectivo)
VALUES (5, 1,2022);

INSERT INTO Curso (año, division, ciclolectivo)
VALUES (5, 2, 2022);

INSERT INTO Alumno (dni, nombre, apellido, curso_key)
VALUES (46296060, "ivan", "kovach", 1);

INSERT INTO Alumno (dni, nombre, apellido, curso_key)
VALUES (47076822, "leandro", "marconcini", 1);

INSERT INTO Alumno (dni, nombre, apellido, curso_key)
VALUES (46720060, "julian", "zeballos", 2);

INSERT INTO Profesor (dni, nombre, apellido)
VALUES (18650995, "ramiro", "pereyra");

INSERT INTO Profesor (dni, nombre, apellido)
VALUES (18527456, "german", "fortunato");

INSERT INTO Profesor (dni, nombre, apellido)
VALUES (42627890, "bautista", "carrasco");

INSERT INTO Profesor (dni,nombre,apellido)
VALUES (40184370, "gregorio", "perez");

INSERT INTO espaciocurricular (materia, curso_key)
VALUES ("electronica", 1);

INSERT INTO espaciocurricular (materia, curso_key)
VALUES ("electronica", 2);

INSERT INTO espaciocurricular (materia, curso_key)
VALUES ("arduino", 1);


-- PEREYRA
INSERT INTO titularidad (profesor, espaciocurricular_key, titular)
VALUES (18650995, 1, 1);

INSERT INTO titularidad (profesor, espaciocurricular_key, titular)
VALUES (18650995, 2, 1);

-- GREGORIO
INSERT INTO titularidad (profesor, espaciocurricular_key, titular)
VALUES (40184370, 1, 0);

INSERT INTO titularidad (profesor, espaciocurricular_key, titular)
VALUES (40184370, 2, 0);

-- FORTU

INSERT INTO titularidad (profesor, espaciocurricular_key, titular)
VALUES (18527456, 3, 1);

-- BAUTI
INSERT INTO titularidad (profesor, espaciocurricular_key, titular)
VALUES (42627890, 3, 1);

-- ELECTRONICA 5to 1ra

INSERT INTO horarios (espaciocurricular_key, dia, hora)
VALUES (1, 2, 1);

INSERT INTO horarios (espaciocurricular_key, dia, hora)
VALUES (1, 2, 2);

-- electronica 5to 2da

INSERT INTO horarios (espaciocurricular_key, dia, hora)
VALUES (2, 3, 1);

INSERT INTO horarios (espaciocurricular_key, dia, hora)
VALUES (2, 3, 2);

-- ARDUINO

INSERT INTO horarios (espaciocurricular_key, dia, hora)
VALUES (3, 3, 1);

INSERT INTO horarios (espaciocurricular_key, dia, hora)
VALUES (3, 3, 2);

INSERT INTO horarios (espaciocurricular_key, dia, hora)
VALUES (3, 3, 3);

INSERT INTO horarios (espaciocurricular_key, dia, hora)
VALUES (3, 3, 4);

-- DEVUELVE TODAS LAS MATERIAS TITULARES DE UN PROFESOR
SELECT * FROM espaciocurricular WHERE id IN 
(SELECT espaciocurricular_key FROM titularidad WHERE profesor=18650995);

SELECT * FROM profesor WHERE dni IN 
(SELECT profesor FROM titularidad WHERE espaciocurricular_key=3 AND titular=1);