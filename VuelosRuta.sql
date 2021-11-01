CREATE DATABASE bebold CHARACTER SET utf8 COLLATE utf8_spanish_ci;

USE bebold;

CREATE TABLE avion(
idAvion INT(11) NOT NULL,
numeroSillas INT(11) NOT NULL,
modelo VARCHAR(50) NOT NULL,
CONSTRAINT avion_pk PRIMARY KEY ( idAvion )
);

CREATE TABLE origen(
idOrigen INT(11) NOT NULL,
nAeropuerto VARCHAR(50) NOT NULL,
ciudad VARCHAR(50) NOT NULL,
CONSTRAINT origen_pk PRIMARY KEY ( idOrigen )
);

CREATE TABLE destino(
idDestino INT(11) NOT NULL,
nAeropuerto VARCHAR(50) NOT NULL,
ciudad VARCHAR(50) NOT NULL,
CONSTRAINT destino_pk PRIMARY KEY ( idDestino )
);

CREATE TABLE ruta(
idRuta INT(11) NOT NULL,
idOrigen INT(11) NOT NULL,
idDestino INT(11) NOT NULL,
valorRuta DECIMAL(10) NOT NULL,
CONSTRAINT ruta_pk PRIMARY KEY ( idRuta ),
CONSTRAINT ruta_origen_fk FOREIGN KEY ( idOrigen ) REFERENCES origen ( idOrigen ),
CONSTRAINT ruta_destino_fk FOREIGN KEY ( idDestino ) REFERENCES destino ( idDestino )
);

CREATE TABLE vuelo(
idVuelo INT AUTO_INCREMENT,
idAvion INT(11) NOT NULL,
idRuta INT(11) NOT NULL,
fecha DATE DEFAULT '0000-00-00',
hora TIME DEFAULT '00:00',
CONSTRAINT vuelo_pk PRIMARY KEY ( idVuelo ),
CONSTRAINT vuelo_avion_fk FOREIGN KEY ( idAvion ) REFERENCES avion ( idAvion ),
CONSTRAINT vuelo_ruta_fk FOREIGN KEY ( idRuta ) REFERENCES ruta ( idRuta )
);

CREATE TABLE pasajero(
idPasajero INT(11) NOT NULL,
idVuelo INT(11) NOT NULL,
nombrePasajero VARCHAR(50) NOT NULL,
CONSTRAINT pasajero_pk PRIMARY KEY ( idPasajero ),
CONSTRAINT pasajero_vuelo_fk FOREIGN KEY ( idVuelo ) REFERENCES vuelo ( idVuelo )
);


SHOW COLUMNS FROM vuelo;
SHOW TABLES;