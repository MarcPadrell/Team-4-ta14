create database empleados;

use empleados;

CREATE TABLE departamentos (
    codigo int,
    nombre varchar(100),
    Presupuesto int,
    PRIMARY KEY (codigo)
);

CREATE TABLE empleados (
    DNI varchar(8),
    nombre varchar(100),
    apellidos varchar(255),
    Departamento int,
    PRIMARY KEY (DNI),
    FOREIGN KEY (Departamento) REFERENCES departamentos(codigo)
);

