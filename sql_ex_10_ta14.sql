create database grandes_almacenes;

use grandes_almacenes;

CREATE TABLE cajeros (
    codigo int auto_increment,
    nomApels varchar(255),
    PRIMARY KEY (codigo)
);

CREATE TABLE maquinas_registradoras (
    codigo int auto_increment,
    piso int,
    PRIMARY KEY (codigo)
);

CREATE TABLE productos (
    codigo int auto_increment,
    nombre varchar(100),
    precio int,
    PRIMARY KEY (codigo)
);

CREATE TABLE venta (
    cajero int,
    maquina int,
    producto int,
    PRIMARY KEY (cajero, maquina, producto),
    FOREIGN KEY (cajero) REFERENCES cajeros(codigo)
    On delete cascade on update cascade,
    FOREIGN KEY (maquina) REFERENCES maquinas_registradoras(codigo)
    On delete cascade on update cascade,
    FOREIGN KEY (producto) REFERENCES productos(codigo)
    On delete cascade on update cascade 
);