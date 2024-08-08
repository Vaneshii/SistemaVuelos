-- Crear una base de datos
CREATE DATABASE MiBaseDeDatos;
GO

-- Seleccionar la base de datos
USE MiBaseDeDatos;
GO

-- Crear una tabla
CREATE TABLE usuarios (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50),
    Edad INT
);
GO

-- Insertar datos en la tabla
INSERT INTO usuarios (Nombre, Edad)
VALUES ('Juan Pérez', 30),
       ('Ana García', 25),
       ('Luis Fernández', 40);
GO

-- Consultar datos de la tabla
SELECT * FROM usuarios;
GO
