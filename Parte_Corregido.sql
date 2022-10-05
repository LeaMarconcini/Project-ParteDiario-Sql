DROP database partediario;
CREATE DATABASE partediario;
USE partediario;

DROP TABLE if exists InasistenciaAlumno;
DROP TABLE if exists Alumno;
DROP TABLE IF EXISTS Observaciones;
DROP TABLE if exists AsistenciaProfesor;
DROP TABLE if exists Curso;
DROP TABLE if exists Profesor;
DROP TABLE if exists EspacioCurricular;
DROP TABLE if exists Horarios;
DROP TABLE if exists Titularidad;


CREATE TABLE Alumno (
dni int not null,
apellido varchar (255) not null,
nombre varchar(255) not null,
curso_key int not null,
foreign key (curso_key) references Curso(id),
primary key (dni)
);

CREATE TABLE Curso (
id int auto_increment not null ,
año int not null,
division int not null,
ciclolectivo int not null,
primary key (id)
); 

ALTER TABLE Curso ADD UNIQUE (año, division, ciclolectivo);

CREATE TABLE InasistenciaAlumno (
fecha date not null,
alumno int not null,
inasistenciaTmañana boolean,
inasistenciaTtarde boolean,
tardanzaTmañana datetime,
tardanzaTtarde datetime,
foreign key (alumno) references Alumno(dni),
primary key (fecha, alumno)
);

CREATE TABLE EspacioCurricular (
id int auto_increment not null,
materia varchar(255) not null,
curso_key int not null,
FOREIGN KEY (curso_key) REFERENCES Curso(id),
PRIMARY KEY (id)
);

ALTER TABLE EspacioCurricular ADD UNIQUE (materia, curso_key);

CREATE TABLE Profesor (
dni int not null,
apellido varchar(255) not null,
nombre varchar(255) not null,
primary key (dni)
);

CREATE TABLE Observaciones (
id int auto_increment not null,
alumno varchar(255) not null,
fecha date not null,
comunicado varchar(255) not null,
profesor_key int not null,
espaciocurricular_key int not null,
Foreign key (profesor_key) references Profesor(dni),
Foreign key (espaciocurricular_key) references EspacioCurricular(id),
primary key (id)
);

CREATE TABLE AsistenciaProfesor (
fecha date not null,
horarios_key int not null,
espaciocurricular_key int not null,
profesor_key int not null,
Foreign key (profesor_key) references Profesor(dni),
Foreign key (espaciocurricular_key) references EspacioCurricular(id),
Foreign key (horarios_key) references Horarios(id),
primary key (fecha, horarios_key)
);

CREATE TABLE Titularidad (
profesor int not null,
espaciocurricular_key int not null,
titular boolean not null,
foreign key (profesor) references Profesor(dni),
foreign key (espaciocurricular_key) references EspacioCurricular(id),
primary key (profesor, espaciocurricular_key)
);

CREATE TABLE Horarios (
id int auto_increment not null,
espaciocurricular_key int not null,
dia date not null,
hora time not null,
foreign key (espaciocurricular_key) references EspacioCurricular(id),
primary key (id)
);




