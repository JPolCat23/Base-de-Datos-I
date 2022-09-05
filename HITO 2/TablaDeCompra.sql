USE universidad2;

CREATE TABLE TOYOTA(
codigo_empresa VARCHAR (20) PRIMARY KEY,
nombre VARCHAR (20),
sucursal VARCHAR (100),
ubicación VARCHAR (100),
numero_de_telefono integer

);

CREATE TABLE CLIENTE(
CI VARCHAR (20) PRIMARY KEY,
nombre VARCHAR (20),
Apellido VARCHAR (100),
edad integer,
numero_de_telefono integer,
Email VARCHAR (100)

);

CREATE TABLE VEHICULO(
codigo_del_vehiculo VARCHAR (20) PRIMARY KEY,
nombre VARCHAR (20),
Modelo VARCHAR (100),
Precio integer,
años_de_garantia integer

);


CREATE TABLE COMPRA(
ID_Compra INTEGER PRIMARY KEY,
codigo_empresa VARCHAR (20),
CI VARCHAR (20),
codigo_del_vehiculo VARCHAR (20),
año_de_compra INTEGER,
 FOREIGN KEY (codigo_empresa) REFERENCES TOYOTA (codigo_empresa),
 FOREIGN KEY (CI) REFERENCES CLIENTE (CI),
 FOREIGN KEY (codigo_del_vehiculo) REFERENCES VEHICULO (codigo_del_vehiculo),

);

DROP TABLE TOYOTA;
DROP TABLE CLIENTE;
DROP TABLE VEHICULO;

SELECT * FROM COMPRA;
