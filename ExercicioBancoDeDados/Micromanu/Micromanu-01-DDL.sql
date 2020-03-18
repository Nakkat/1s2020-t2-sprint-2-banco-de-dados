CREATE DATABASE Micromanu_Manha;

GO

USE Micromanu_Manha;

CREATE TABLE Clientes (
	IdCliente INT PRIMARY KEY IDENTITY NOT NULL,
	Nome	  VARCHAR (255) NOT NULL
);

CREATE TABLE Itens (
	IdItem		INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao   VARCHAR (255)
);

CREATE TABLE Pedidos (
	IdPedido			INT PRIMARY KEY IDENTITY NOT NULL,
	IdCliente			INT FOREIGN KEY REFERENCES Clientes (IdCliente) NOT NULL,
	IdItem				INT FOREIGN KEY REFERENCES Itens (IdItem) NOT NULL,
	IdTipo				INT FOREIGN KEY REFERENCES TiposConsertos (IdTipo) NOT NULL,
	NumeroEquipamento   VARCHAR (255) NOT NULL,
	Entrada				VARCHAR (255) NOT NULL,
	Saida				VARCHAR (255)
);

CREATE TABLE TiposConsertos (
	Idtipo		INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao   VARCHAR (255) NOT NULL
);

CREATE TABLE Colaboradores (
	IdColaborador INT PRIMARY KEY IDENTITY NOT NULL,
	Nome		  VARCHAR (255) NOT NULL,
	Salario		  DECIMAL NOT NULL
);

CREATE TABLE PedidosColaboradores (
	IdColaborador INT FOREIGN KEY REFERENCES Colaboradores (IdColaborador) NOT NULL,
	IdPedido	  INT FOREIGN KEY REFERENCES Pedidos	   (IdPedido) NOT NULl
);

drop table clientes
drop table Pedidos
drop table Itens
drop table PedidosColaboradores
drop table 