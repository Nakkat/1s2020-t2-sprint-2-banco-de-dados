USE LOCADORA;

GO

SELECT Nome,Endereco, RazaoSocial FROM Empresas
SELECT Titulo FROM Marcas
SELECT Nome, CPF FROM Clientes
SELECT Modelos.Titulo as TituloModelo, Marcas.Titulo FROM Modelos 
INNER JOIN Marcas ON Marcas.IdMarca = Modelos.IdMarca
SELECT Placa, Modelos.Titulo, Empresas.Nome, Empresas.Endereco, Empresas.RazaoSocial FROM Veiculos
INNER JOIN Modelos ON Modelos.IdMarca = Veiculos.IdModelo
INNER JOIN Empresas ON Empresas.IdEmpresa = Veiculos.IdEmpresa
SELECT DataRetirada, DataDevolucao, Analise, Nome, CPF, Placa FROM Alugueis 
INNER JOIN Clientes ON Clientes.IdCliente = Alugueis.IdCliente
INNER JOIN Veiculos	ON Veiculos.IdVeiculo = Alugueis.IdVeiculo
