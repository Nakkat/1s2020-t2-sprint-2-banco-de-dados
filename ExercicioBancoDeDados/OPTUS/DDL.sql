-- DDL (Linguagem de Definição de Dados)

CREATE DATABASE OPTUS_MANHA;

CREATE TABLE Estilos(
	IdEstilo INT PRIMARY KEY IDENTITY,
	Nome	 VARCHAR(200) NOT NULL,
);


CREATE TABLE Artistas (
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome      VARCHAR (200),
);



CREATE TABLE Albuns (
	IdAlbum			INT PRIMARY KEY IDENTITY,
	IdArtista		INT FOREIGN KEY REFERENCES Artistas(IdArtista),
	IdEstilo		INT FOREIGN KEY REFERENCES Estilos(IdEstilo),
	Nome			VARCHAR(200) NOT NULL,
	DataLancamento  DATE,
	QntMinutos		INT,
	Visualizacao	INT,
);


CREATE TABLE Usuarios (
	IdUsuario     INT PRIMARY KEY IDENTITY,
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario(IdTipoUsuario),
	Nome		  VARCHAR (200),
);


CREATE TABLE TipoUsuario (
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	Titulo		  VARCHAR (15),
);

ALTER TABLE TipoUsuario ADD Ativo BIT 
ALTER TABLE Albuns ADD Localizacao VARCHAR(3);
