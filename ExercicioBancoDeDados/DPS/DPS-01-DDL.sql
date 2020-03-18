CREATE DATABASE DPS_Manha;

GO

USE DPS_Manha;

CREATE TABLE Departamentos (
	IdDepartamento   INT PRIMARY KEY IDENTITY NOT NULL,
	NomeDepartameto  VARCHAR (255)
);

CREATE TABLE Habilidades (
	IdHabilidade	 INT PRIMARY KEY IDENTITY NOT NULL,
	NomeHabilidade   VARCHAR (255)
);

CREATE TABLE Funcionarios (
	IdFuncionario   INT PRIMARY KEY IDENTITY NOT NULL,
	NomeFuncionario VARCHAR (255),
	CPF				CHAR (11),
	Salario		    Decimal (18,1),
	IdDepartamento  INT FOREIGN KEY REFERENCES Departamentos (IdDepartamento),
	IdHabilidade	INT FOREIGN KEY REFERENCES Habilidades (IdHabilidade)
);

sp_rename 'Departamentos.NomeDepartameto','NomeDepartamento','COLUMN';