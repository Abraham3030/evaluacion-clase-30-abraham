CREATE DATABASE  IF NOT EXISTS `abraham_db_clase_30` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `abraham_db_clase_30`;

CREATE TABLE nota (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nota INT NOT NULL,
	descripcion VARCHAR(40) NOT NULL
);

SELECT * FROM nota;
INSERT INTO nota (nota, descripcion) VALUES (10, "La mejor nota");
INSERT INTO nota (nota, descripcion) VALUES (9, "Buena nota");
INSERT INTO nota (nota, descripcion) VALUES (8, "Bien hecho");
INSERT INTO nota (nota, descripcion) VALUES (7, "Hay que mejorar");
INSERT INTO nota (nota, descripcion) VALUES (6, "Mucha suerte");
INSERT INTO nota (nota, descripcion) VALUES (5, "Sigue intentando");
INSERT INTO nota (nota, descripcion) VALUES (4, "Nada que decir");
INSERT INTO nota (nota, descripcion) VALUES (3, "Peor que la anteriror");
INSERT INTO nota (nota, descripcion) VALUES (2, "Es en serio");
INSERT INTO nota (nota, descripcion) VALUES (1, "Nos vemos luego");

CREATE TABLE usuario (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(40) NOT NULL,
	email VARCHAR(40) NOT NULL,
    nota_id INT UNSIGNED,
    FOREIGN KEY (nota_id) REFERENCES nota(id)
);

INSERT INTO usuario (nombre, email, nota_id) VALUES ("usuario1", "correoUsuario1@DH.com", 6);
INSERT INTO usuario (nombre, email, nota_id) VALUES ("usuario2", "correoUsuario@DH.com", 7);
INSERT INTO usuario (nombre, email, nota_id) VALUES ("usuario3", "correoUsuario3@DH.com", 1);
INSERT INTO usuario (nombre, email, nota_id) VALUES ("usuario4", "correoUsuario4@DH.com", 2);
INSERT INTO usuario (nombre, email, nota_id) VALUES ("usuario5", "correoUsuario5@DH.com", 3);
INSERT INTO usuario (nombre, email, nota_id) VALUES ("usuario6", "correoUsuario6@DH.com", 1);
INSERT INTO usuario (nombre, email, nota_id) VALUES ("usuario7", "correoUsuario7@DH.com", 3);
INSERT INTO usuario (nombre, email, nota_id) VALUES ("usuario8", "correoUsuario8@DH.com", 4);
INSERT INTO usuario (nombre, email, nota_id) VALUES ("usuario9", "correoUsuario9@DH.com", 4);
INSERT INTO usuario (nombre, email, nota_id) VALUES ("usuario10", "correoUsuario10@DH.com", 1);
SELECT * FROM usuario;

SELECT usuario.nombre, nota.nota, nota.descripcion FROM usuario INNER JOIN nota ON nota.id = usuario.nota_id;




