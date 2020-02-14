CREATE DATABASE Filmes
USE Filmes

CREATE TABLE Genero (
	IdGenero INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(255)
);

CREATE TABLE Filmes (
	IdFilme INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR (255),
	IdGenero INT FOREIGN KEY REFERENCES Genero(IdGenero)
)

INSERT INTO Genero VALUES (
	'Ação'
),
(
	'Aventura'
)
;

INSERT INTO Filmes VALUES (
	'TriploX',1
),
(
	'Up Altas Aventuras',2
)
;

SELECT * FROM Filmes;
SELECT * FROM Genero