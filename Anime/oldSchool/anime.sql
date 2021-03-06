DROP DATABASE IF EXISTS ANIME;

	CREATE DATABASE ANIME;

	USE ANIME

CREATE TABLE ANIMES(

	id integer AUTO_INCREMENT UNIQUE, 
	nombre VARCHAR (50) NOT NULL,
	temporada TINYINT NOT NULL,
  	tag VARCHAR(50) NOT NULL,
	nota TINYINT NOT NULL,
	capitulos SMALLINT NOT NULL,
	web VARCHAR (50) NULL,
	PRIMARY KEY(nombre)

);

CREATE TABLE FECHA(

	nombre_anime VARCHAR(50) NOT NULL,
	mes_inicio set('Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre') NOT NULL,
	mes_final set('Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre','En emision') NOT NULL,
	temporada enum('Primavera','Verano','Otonio','Invierno') NOT NULL,
	anio CHAR(4) NOT NULL,
	dia_nuevo_cap enum('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Finalizado')NOT NULL,
	estado VARCHAR(50),
	PRIMARY KEY (nombre_anime),
	FOREIGN KEY (nombre_anime)
		REFERENCES ANIMES (nombre)
		ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE GENERO(

	nombre VARCHAR(50) NOT NULL,
	genero set("Accion","Cocina","Aventura","Seinen","Shonen","Comedia","Demonios","Deportes","Drama","Echii","Escolares","Fantasía","Gore","Harem","Juegos","Mecha","Misterio","Musica","Psicologico","Recuerdos de la vida","Romance","Vampiros","Yuri","Lolis") NOT NULL,
	PRIMARY KEY (nombre,genero),
	FOREIGN KEY (nombre)
		REFERENCES ANIMES (nombre)
		ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE PERSONAJES(

	sexo set('Hombre','Mujer') NOT NULL,
	nombre_anime VARCHAR(50) NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	color_pelo VARCHAR(30) NOT NULL,
	loli CHAR (2) NOT NULL,
	PRIMARY KEY (nombre),
	FOREIGN KEY (nombre_anime)
		REFERENCES ANIMES (nombre)
		ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE USUARIOS (

	usuario VARCHAR(255) NOT NULL,
	contrasena VARCHAR(255) NOT NULL,
	imagen VARCHAR(255) DEFAULT "sagiri",
	PRIMARY KEY(usuario)
 
);

CREATE TABLE CUSTOM (

	usuario VARCHAR(255) NOT NULL,
	nombre_anime VARCHAR(50) NOT NULL,
	tag VARCHAR(50) NULL,
	nota integer	NULL,
	estado VARCHAR(50) NULL,
	PRIMARY KEY(usuario,nombre_anime),
	FOREIGN KEY(usuario)
		REFERENCES USUARIOS (usuario),
	FOREIGN KEY(nombre_anime)
		REFERENCES ANIMES (nombre)
  
);

CREATE TABLE SOCIAL(

	usuario VARCHAR(255) NOT NULL,
	siguiendo VARCHAR(255) NOT NULL,
	PRIMARY KEY(usuario,siguiendo),
	FOREIGN KEY (usuario)
		REFERENCES USUARIOS (usuario)
		ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (siguiendo)
		REFERENCES USUARIOS (usuario)
		ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE COMENTARIOS (

	id integer AUTO_INCREMENT,
	nombre_anime VARCHAR(255) NOT NULL,
	capitulo integer NOT NULL,
	usuario VARCHAR(255) NOT NULL,
	comentario VARCHAR(255) NOT NULL,
	PRIMARY KEY(id,usuario),
	FOREIGN KEY(usuario)
		REFERENCES USUARIOS (usuario)

);
