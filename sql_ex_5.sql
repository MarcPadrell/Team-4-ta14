create database almacenes;

use almacenes;

CREATE TABLE almacenes (
    codigo int auto_increment,
    lugar varchar(100),
    capacidad int,
    PRIMARY KEY (codigo)
);

CREATE TABLE cajas (
    NumReferencia char(5),
    contenido varchar(100),
    valor int,
    almacen int not null,
    PRIMARY KEY (NumReferencia),
    FOREIGN KEY (almacen) REFERENCES almacenes(codigo)
    On delete cascade on update cascade 
);