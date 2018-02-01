-- crear base de datos --

CREATE DATABASE UPI

use UPI;
-- Crear tabla --
CREATE TABLE ESTUDIANTE
(
	CODIGO INT PRIMARY KEY,
	NOMBRE VARCHAR(50) NOT NULL,
	APELLIDO VARCHAR(50) NOT NULL,
	EDAD INT
)

CREATE TABLE MATERIA 
(
	CODIGO_MATERIA INT IDENTITY(1,1) PRIMARY KEY,
	CODIGO INT NOT NULL,
	NOMBRE VARCHAR(50),
	FOREIGN KEY (CODIGO) REFERENCES ESTUDIANTE(CODIGO)
)

-- INSERTAR DATOS EN LAS TABLAS --

INSERT INTO ESTUDIANTE 
VALUES 
(2, 'MARIA', 'MURILLO', 19),
(3, 'MIGUEL', 'MUNOZ', 20)

update ESTUDIANTE set nombre ='JOSE', apellido = 'PEREZ' WHERE codigo = 1

select * from estudiante
select * from MATERIA
INSERT INTO MATERIA
(codigo,nombre)
values 
(1,'BASES DE DATOS'),
(2, 'PROGRAMACION 3'),
(3, 'CONTABILIDAD'),
(2, 'BASES DE DATOS'),
(3, 'MATEMATICAS'),
(1, 'FISICA'),
(2, 'FISICA')

-- REPORTES --
-- Estudiantes 
SELECT e.NOMBRE nombre, e.apellido apellido, m.NOMBRE materia
from ESTUDIANTE e 
join MATERIA m
on (e.codigo = m.codigo)
order by e.nombre asc

select e.nombre, e.apellido
from estudiante e
where e.codigo in (select CODIGO FROM MATERIA WHERE MATERIA.NOMBRE = 'BASES DE DATOS')

select e.nombre, e.apellido
from estudiante e
where e.codigo not in (select CODIGO FROM MATERIA WHERE MATERIA.NOMBRE = 'BASES DE DATOS')
