--DDL 

CREATE DATABASE SSTOP_MANHA

CREATE TABLE EstilosMusicais (
	IdEstiloMusical INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200) NOT NULL,
);

CREATE TABLE Artistas (
	IdArtista		INT PRIMARY KEY IDENTITY,
	IdEstiloMusical INT FOREIGN KEY REFERENCES EstilosMusicais (IdEstiloMusical),
	Nome			VARCHAR(200)
);

-- Alteracao adcionar coluna

ALTER TABLE Artistas 
ADD DataNascimento DATE;

-- Alteracao modificar coluna

ALTER TABLE Artistas 
ALTER COLUMN Nome CHAR

-- Alterar coluna apagar

ALTER TABLE Artistas
DROP COLUMN Nome;

-- Apagar

DROP TABLE EstilosMusicais;