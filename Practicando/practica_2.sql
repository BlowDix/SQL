DROP DATABASE IF EXISTS PRACTICA_2;

	CREATE DATABASE PRACTICA_2;

	USE PRACTICA_2
	

DROP TABLE IF EXISTS CLIENTES;

	CREATE TABLE CLIENTES(

		DNI CHAR (9) NOT NULL,
	        NOMBRE VARCHAR(20) NOT NULL,
		APELLIDOS VARCHAR(20) NOT NULL,
		TELEFONO INTEGER (9) NOT NULL,
		EMAIL VARCHAR(30) NOT NULL,
		PRIMARY KEY (DNI)

	);

	INSERT INTO CLIENTES(DNI,NOMBRE,APELLIDOS,TELEFONO,EMAIL)
	
		    VALUES ('04897548A','Fernando','Silva Vera','648457856','fernandosilv4c@gmail.com');

	INSERT INTO CLIENTES(DNI,NOMBRE,APELLIDOS,TELEFONO,EMAIL)

		    VALUES ('02478542Q','Aqua','Sama','642478517','Konosubarashi@Aqua.com');

	INSERT INTO CLIENTES(DNI,NOMBRE,APELLIDOS,TELEFONO,EMAIL)

		    VALUES ('45378458P','Ako','Nee','612487593','kissxsis@ako.com');

	INSERT INTO CLIENTES(DNI,NOMBRE,APELLIDOS,TELEFONO,EMAIL)

	 	   VALUES ('15784589A','Nao','Tomori','642587458','Charlotte@Nao.com');

	INSERT INTO CLIENTES(DNI,NOMBRE,APELLIDOS,TELEFONO,EMAIL)

		    VALUES ('15784894A','Soma','Yukihira','614785478','Shokugeki@Soma.com');

DROP TABLE IF EXISTS TIENDAS;

	CREATE TABLE TIENDAS(

		NOMBRE VARCHAR (20) NOT NULL,
	        PROVINCIA VARCHAR(30) NOT NULL,
		LOCALIDAD VARCHAR(30) NOT NULL,
		DIRECCION VARCHAR (60) NOT NULL,
		TELEFONO INTEGER (9) NOT NULL,
		DIA_APERTURA VARCHAR (50) NOT NULL DEFAULT 'Lunes-Sabado',
		DIA_CIERRE VARCHAR (50) NOT NULL DEFAULT 'Domingo',
		HORA_APERTURA TIME NOT NULL DEFAULT '10:00:00',
		HORA_CIERRE TIME NOT NULL DEFAULT '21:00:00',
		PRIMARY KEY (NOMBRE)

	);

	INSERT INTO TIENDAS(NOMBRE,PROVINCIA,LOCALIDAD,DIRECCION,TELEFONO)
	
		    VALUES ('Phone Another','Madrid','Alcobendas','calle Invisible 123','648457458');
	
	INSERT INTO TIENDAS(NOMBRE,PROVINCIA,LOCALIDAD,DIRECCION,TELEFONO)
	
		    VALUES ('Phone Kirito','Madrid','Alcobendas','calle Asuna 466','635214589');
	
	INSERT INTO TIENDAS(NOMBRE,PROVINCIA,LOCALIDAD,DIRECCION,TELEFONO)
	
		    VALUES ('Phone Rias','Barcelona','Mataro','calle demoniaca 69','678542597');
	
	INSERT INTO TIENDAS(NOMBRE,PROVINCIA,LOCALIDAD,DIRECCION,TELEFONO)
	
		    VALUES ('Phone luffy','Barcelona','Badalona','calle one piece 1','635874589');
	
	INSERT INTO TIENDAS(NOMBRE,PROVINCIA,LOCALIDAD,DIRECCION,TELEFONO)
	
		    VALUES ('Phone yunyun','Madrid','Madrid','calle megumin 77','648524758');
	
DROP TABLE IF EXISTS OPERADORAS;

	CREATE TABLE OPERADORAS(
	
		NOMBRE VARCHAR (20) NOT NULL,
	        COLOR_LOGO VARCHAR(30) NOT NULL,
		PORCENTAJE_COBERTURA VARCHAR(4) NOT NULL,
		FRECUENCIA_GSM FLOAT (10) NOT NULL,
		PAGINA_WEB VARCHAR (50) NOT NULL,
		PRIMARY KEY (NOMBRE)

	);

	INSERT INTO OPERADORAS(NOMBRE,COLOR_LOGO,PORCENTAJE_COBERTURA,FRECUENCIA_GSM,PAGINA_WEB)

		    VALUES ('Movistar','Verde','90%','380.2','www.Movistar.es');

	INSERT INTO OPERADORAS(NOMBRE,COLOR_LOGO,PORCENTAJE_COBERTURA,FRECUENCIA_GSM,PAGINA_WEB)

		    VALUES ('Vodafone','Rojo','95%','390.2','www.Vodafone.es');

	INSERT INTO OPERADORAS(NOMBRE,COLOR_LOGO,PORCENTAJE_COBERTURA,FRECUENCIA_GSM,PAGINA_WEB)

		    VALUES ('Yoigo','Azul','100%','500.2','www.Yoigo.es');

	INSERT INTO OPERADORAS(NOMBRE,COLOR_LOGO,PORCENTAJE_COBERTURA,FRECUENCIA_GSM,PAGINA_WEB)

		    VALUES ('Ono','Negro','99%','410.2','www.ono.es');

	INSERT INTO OPERADORAS(NOMBRE,COLOR_LOGO,PORCENTAJE_COBERTURA,FRECUENCIA_GSM,PAGINA_WEB)

		    VALUES ('Lowi','Negro','50%','480.2','www.Lowi.es');
