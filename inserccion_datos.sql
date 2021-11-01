USE bebold;

INSERT INTO origen (idOrigen, nAeropuerto, ciudad) VALUES (1, "Aeropuerto el eden", "Armenia");
INSERT INTO origen (idOrigen, nAeropuerto, ciudad) VALUES (2, "Aeropuerto matecaña", "Pereira");
INSERT INTO origen (idOrigen, nAeropuerto, ciudad) VALUES (3, "Aeropuerto el dorado", "Bogota");
INSERT INTO origen (idOrigen, nAeropuerto, ciudad) VALUES (4, "Aeropuerto simon bolivar", "Santamarta");
INSERT INTO origen (idOrigen, nAeropuerto, ciudad) VALUES (5, "Aeropuerto rafael nuñez", "Cartagena");

SELECT * FROM origen;

INSERT INTO destino (idDestino, nAeropuerto, ciudad) VALUES (1, "Aeropuerto el eden", "Armenia");
INSERT INTO destino (idDestino, nAeropuerto, ciudad) VALUES (2, "Aeropuerto matecaña", "Pereira");
INSERT INTO destino (idDestino, nAeropuerto, ciudad) VALUES (3, "Aeropuerto el dorado", "Bogota");
INSERT INTO destino (idDestino, nAeropuerto, ciudad) VALUES (4, "Aeropuerto simon bolivar", "Santamarta");
INSERT INTO destino (idDestino, nAeropuerto, ciudad) VALUES (5, "Aeropuerto rafael nuñez", "Cartagena");

SELECT * FROM destino;

INSERT INTO avion (idAvion, numeroSillas, modelo) VALUES (1, 524, "Boeing 747");
INSERT INTO avion (idAvion, numeroSillas, modelo) VALUES (2, 440, "Airbus A340");

SELECT * FROM avion;

INSERT INTO ruta (idRuta, idOrigen, idDestino, valorRuta) VALUES (1, 1, 2, 50500);
INSERT INTO ruta (idRuta, idOrigen, idDestino, valorRuta) VALUES (2, 1, 3, 70900);
INSERT INTO ruta (idRuta, idOrigen, idDestino, valorRuta) VALUES (3, 1, 4, 120350);
INSERT INTO ruta (idRuta, idOrigen, idDestino, valorRuta) VALUES (4, 1, 5, 130450);
INSERT INTO ruta (idRuta, idOrigen, idDestino, valorRuta) VALUES (5, 2, 1, 62950);
INSERT INTO ruta (idRuta, idOrigen, idDestino, valorRuta) VALUES (6, 5, 4, 37800);

SELECT * FROM ruta;

INSERT INTO vuelo (idAvion, idRuta, fecha, hora) VALUES (1, 2, "2021-11-1", "20:30");

SELECT * FROM vuelo;

INSERT INTO pasajero (idPasajero, idVuelo, nombrePasajero) VALUES (1, 1, "Nelson Alzate");

SELECT * FROM pasajero;
