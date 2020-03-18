CREATE DATABASE SSOLVE_Manha;

GO

USE SSOLVE_Manha;

GO

CREATE TABLE Clientes (
	IdCliente INT PRIMARY KEY IDENTITY NOT NULL,
	Nome	  VARCHAR (255)
);

CREATE TABLE Empresas (
	IdEmpresa			INT PRIMARY KEY IDENTITY NOT NULL,
	NomeFantasia		VARCHAR (255),
	CNPJ				CHAR (14),
	RazaoSocial		    VARCHAR (255),
	EnderecoCompleto    VARCHAR (255)
);

CREATE TABLE Servicos (
	IdServico		INT PRIMARY KEY IDENTITY NOT NULL,
	Comodo			VARCHAR (255),
	Preco			DECIMAL,
	Inicio			DATE,
	Fim				DATE,
	Estado			BIT,
	IdEmpresa		INT FOREIGN KEY REFERENCES Empresas (IdEmpresa),
	IdCliente		INT FOREIGN KEY REFERENCES Clientes (IdCliente)
);

GO

ALTER TABLE Servicos ADD Descricao VARCHAR (255);