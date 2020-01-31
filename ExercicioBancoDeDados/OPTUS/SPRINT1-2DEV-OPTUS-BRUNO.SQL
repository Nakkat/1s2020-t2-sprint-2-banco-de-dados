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







-- DML (Linguagem de Manipulacao de Dados)

-- INSERIR 

INSERT INTO Estilos VALUES ('Pop');
INSERT INTO Estilos VALUES ('Reggae');
INSERT INTO Estilos VALUES ('Funk');
INSERT INTO Estilos VALUES ('Rock');
INSERT INTO Estilos VALUES ('Samba');

INSERT INTO Artistas VALUES ('Katy Perry');
INSERT INTO Artistas VALUES ('Bob Marley');
INSERT INTO Artistas VALUES ('MC Gui');
INSERT INTO Artistas VALUES ('Linkin Park');
INSERT INTO Artistas VALUES ('Zeca Pagodinho');

INSERT INTO Albuns VALUES (1,2,'A','20-10-2017',70,1000);
INSERT INTO Albuns VALUES (2,2,'B','20-11-2017',80,2000);
INSERT INTO Albuns VALUES (3,3,'C','20-12-2017',90,3000);
INSERT INTO Albuns VALUES (4,4,'D','20-01-2017',100,4000);
INSERT INTO Albuns VALUES (5,5,'E','20-02-2017',110,5000);
INSERT INTO Albuns VALUES (5,5,'E','20-02-2017',110,5000,'SP');


INSERT INTO Usuarios VALUES (1,'Carlos');
INSERT INTO Usuarios VALUES (1,'Roberto');
INSERT INTO Usuarios VALUES (2,'Mario');
INSERT INTO Usuarios VALUES (2,'Mariana');
INSERT INTO Usuarios VALUES (2,'Rafaela');

INSERT INTO TipoUsuario VALUES ('Admin');
INSERT INTO TipoUsuario VALUES ('Comum');
INSERT INTO TipoUsuario VALUES ('Admin',1);
INSERT INTO TipoUsuario VALUES ('Client',0);
INSERT INTO TipoUsuario VALUES ('Client2','FALSE');

-- ALTERAR

UPDATE Artistas SET Nome='Bruno' WHERE IdArtista=1;
UPDATE TipoUsuario SET Titulo='Comum' WHERE IdTipoUsuario=1;
UPDATE Albuns SET Visualizacao='1500' WHERE IdAlbum IN (4,5);

-- Deletar

DELETE FROM Albuns WHERE IdAlbum IN (2,3)









-- DQL (Linguagem de Consulta de Dados)

-- TUDO 

SELECT * FROM Estilos;
SELECT * FROM Artistas;
SELECT * FROM Albuns;
SELECT * FROM Usuarios;
SELECT * FROM TipoUSuario;

-- ESPECÍFICO

SELECT Nome FROM Artistas;

--BETWEEN (ENTRE), > (MAIOR), < (MENOR), >= MAIOR OU IGUAL, <= MENOR OU IGUAL

SELECT * FROM Albuns WHERE IdAlbum BETWEEN 4 and 6;
SELECT * FROM Albuns WHERE IdAlbum <= 7;

-- OR OU AND

SELECT Nome, QntMinutos FROM Albuns 
WHERE (DataLancamento IS NULL) OR (Localizacao IS NULL);


-- FILTRO DE TEXTO
/* % no final, pega todos que a palavra está no começo
   % no inicio, pega todos que a palavra está no final
   %MEIO% , pega em todo lugar que estiver
*/

SELECT IdArtista, Nome FROM Artistas
WHERE Nome Like '%Bruno'; 

-- ORDENACAO
-- ASC OR DESC (Ascendente ou descrescente)

SELECT IdAlbum, Nome, Visualizacao FROM Albuns ORDER BY Visualizacao ASC;

-- COUNT

SELECT COUNT(IdAlbum) FROM Albuns;

-- EXERCICIO

SELECT * FROM Albuns WHERE IdArtista = 4;
SELECT * FROM Albuns WHERE DataLancamento = '2017-01-20';
SELECT IdArtista FROM Albuns WHERE IdEstilo = 4;
SELECT IdAlbum,IdArtista FROM Albuns ORDER BY DataLancamento DESC;