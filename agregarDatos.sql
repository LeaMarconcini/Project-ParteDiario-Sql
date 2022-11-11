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

-- Parte
INSERT INTO parte (fecha, curso)
VALUES ("2022-10-18",1);

INSERT INTO parte (fecha, curso)
VALUES ("2022-10-19",1);

INSERT INTO parte (fecha, curso)
VALUES ("2022-10-18",2);

INSERT INTO parte (fecha, curso)
VALUES ("2022-10-19",2);


-- ASISTENCIAS PEREYRA

INSERT INTO asistenciaprofesor (fecha, hora_key, espaciocurricular_key , profesor_key, curso)
VALUES ("2022-10-18", 1, 1,18650995, 1);

INSERT INTO asistenciaprofesor (fecha, hora_key, espaciocurricular_key, profesor_key, curso)
VALUES ("2022-10-18", 2, 1,18650995, 1);

INSERT INTO asistenciaprofesor (fecha, hora_key, espaciocurricular_key, profesor_key, curso)
VALUES ("2022-10-19", 3, 2,18650995, 2);

-- ASITENCIAS GREGORIO

INSERT INTO asistenciaprofesor (fecha, hora_key, espaciocurricular_key, profesor_key, curso)
VALUES ("2022-10-19", 4, 2,40184370, 2);

-- ASISTENCIAS FORTU

-- ASISTENCIAS BAUTI


-- ASISTENCIAS KOVACH

INSERT INTO inasistenciaalumno (fecha, alumno, inasistenciaTMañana, inasistenciaTtarde, curso)
VALUES ("2022-10-18", 46296060, 1, 0, 1);

INSERT INTO parte (fecha, curso)
VALUES ("2022-11-02", 1);

INSERT INTO observaciones (alumno, fecha, comunicado, profesor_key, espaciocurricular_key, curso)
VALUES (1, "2022-11-02", "No pueden cargar el parte", 18650995, 1, 1);

INSERT INTO profesor (dni, apellido, nombre)
values (21591208, "Fior", "Eber");

UPDATE observaciones 
SET profesor_key = 21591208
WHERE id=1;



