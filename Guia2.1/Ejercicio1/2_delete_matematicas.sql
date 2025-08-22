USE Guia2_1_Ejercicio1_Schumacher_db

GO

SELECT a.Nombre AS Nombre_Alumno, c.Nombre AS Nombre_Curso
FROM Alumnos a
LEFT JOIN Curso_Alumnos c_a
ON c_a.Id_Alumno = a.Id
LEFT JOIN Cursos c 
ON c_a.Id_Curso = c.Id
ORDER BY a.Nombre DESC

GO

DELETE FROM Cursos
WHERE Id=1

GO

USE master