-- DEVUELVE TODAS LAS MATERIAS TITULARES DE UN PROFESOR
SELECT * FROM espaciocurricular WHERE id IN 
(SELECT espaciocurricular_key FROM titularidad WHERE profesor=18650995);

-- DEVUELVE TODOS LOS TITULARES DE UNA MATERIA
SELECT nombre, apellido FROM profesor WHERE dni IN 
(SELECT profesor FROM titularidad WHERE espaciocurricular_key=3 AND titular=1);

-- DEVUELVE UNA NUEVA TABLA EN LA QUE INDICA TODAS LAS ASISTENCIAS DE TODOS LOS PROFESORES
SELECT asistenciaprofesor.fecha,profesor.nombre, profesor.apellido, horarios.hora, asistenciaprofesor.espaciocurricular_key
FROM asistenciaprofesor
INNER JOIN horarios ON asistenciaprofesor.hora_key=horarios.id
INNER JOIN profesor ON profesor.dni=asistenciaprofesor.profesor_key;

-- IDEM ANTERIOR PERO CONDICIONADA POR PROFESOR
SELECT asistenciaprofesor.fecha,profesor.nombre, profesor.apellido, horarios.hora, asistenciaprofesor.espaciocurricular_key
FROM asistenciaprofesor
INNER JOIN horarios ON asistenciaprofesor.hora_key=horarios.id AND asistenciaprofesor.profesor_key=18650995
INNER JOIN profesor ON profesor.dni=asistenciaprofesor.profesor_key;

-- ¿X profesor vino en Y fecha?

SELECT * FROM asistenciaprofesor 
WHERE fecha = "2022-10-19" AND profesor_key = 40184370;

SELECT * from profesor
where dni = 21591208;

