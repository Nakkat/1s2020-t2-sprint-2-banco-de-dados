CREATE DATABASE ECOMMERCE;
GO
USE ECOMMERCE;
GO
CREATE TABLE Lojas (
	IdLoja INT PRIMARY KEY IDENTITY,
	Nome   VARCHAR (100)
);

CREATE TABLE Categorias (
	IdCategoria INT PRIMARY KEY IDENTITY,
	Nome		 VARCHAR (100),
	IdLoja		 INT FOREIGN KEY REFERENCES Lojas(IdLoja)
);

CREATE TABLE SubCategorias (
	IdSubCategoria INT PRIMARY KEY IDENTITY,
	Nome		   VARCHAR (100),
	IdCategoria	   INT FOREIGN KEY REFERENCES Categorias(IdCategoria)
);

CREATE TABLE Produtos (
	IdProduto		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(100),
	Valor			INT,
	IdSubCategoria	INT FOREIGN KEY REFERENCES SubCategorias(IdSubCategoria)
);

CREATE TABLE Clientes (
	IdCliente	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR (100),
);

CREATE TABLE Pedidos (
	IdPedido	INT PRIMARY KEY IDENTITY,
	NrPedido	INT,
	DataPedido	Date,
	Estado		VARCHAR(20),
	IdCliente	INT FOREIGN KEY REFERENCES Clientes(IdCliente)
);

CREATE TABLE PedidosProdutos (
	IdPedido  INT FOREIGN KEY REFERENCES Pedidos(IdPedido),
	IdProduto INT FOREIGN KEY REFERENCES Produtos(IdProduto)
);