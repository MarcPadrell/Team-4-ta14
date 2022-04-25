create database los_directores;

use los_directores;

CREATE TABLE despachos (
    numero int,
    capacidad int,
    PRIMARY KEY (numero)
);

CREATE TABLE directores (
    DNI varchar(8),
    NomApels varchar(255),
    DNIJefe varchar(8),
    Despacho int,
    PRIMARY KEY (DNI),
    FOREIGN KEY (Despacho) REFERENCES despachos(numero)
    On delete cascade on update cascade,
    FOREIGN KEY (DNIJefe) REFERENCES directores(DNI)
    On delete cascade on update cascade 
);

