USE master

GO

DROP DATABASE IF EXISTS Guia2_1_Ejercicio1_Schumacher_db

GO

CREATE DATABASE Guia2_1_Ejercicio1_Schumacher_db

GO

USE Guia2_1_Ejercicio1_Schumacher_db

GO

CREATE TABLE Cursos
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(100) NOT NULL
)

CREATE TABLE Alumnos
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(100) NOT NULL
)

CREATE TABLE Curso_Alumnos
(
	Id_Curso INT NOT NULL,
	Id_Alumno INT NOT NULL,

	CONSTRAINT PK_Cursos_Alumnos PRIMARY KEY(Id_Curso, Id_Alumno),
	CONSTRAINT FK_Curso_Alumnos_Curso FOREIGN KEY(Id_Curso)
		REFERENCES Cursos(Id) ON DELETE CASCADE,
	CONSTRAINT FK_Curso_Alumnos_Alumno FOREIGN KEY(Id_Alumno)
		REFERENCES Alumnos(Id)
)

GO

INSERT INTO Cursos(Nombre)
VALUES
('Matemática'),
('Programación'),
('Literatura'),
('Mecánica aplicada'),
('Cocina'),
('Carpintería'),
('Reparación de PC'),
('Instralación electrica domiciliaria')

INSERT INTO Alumnos(Nombre)
VALUES
('Luisa'),
('Ernesto'),
('Lucrecia'),
('Ricardo'),
('Leonel'),
('Liliana'),        
('Cecilia'),
('Eduardo')

INSERT INTO Curso_Alumnos(Id_Curso, Id_Alumno)
VALUES
(1, 1),
(2, 2),
(1, 3),
(2, 4),
(2, 5),
(1, 6),
(1, 5),
(2, 8),
(2, 7),
(5, 8);

GO

SELECT * FROM Cursos
SELECT * FROM Alumnos
SELECT * FROM Curso_Alumnos

GO

USE master