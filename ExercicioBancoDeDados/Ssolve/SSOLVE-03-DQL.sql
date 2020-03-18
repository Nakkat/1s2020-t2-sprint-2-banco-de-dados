USE SSOLVE_Manha;

GO

SELECT Nome FROM Clientes;
SELECT NomeFantasia, CNPJ, RazaoSocial, EnderecoCompleto FROM Empresas;
SELECT  Comodo, Preco, Inicio, Fim, Nome as NomeCliente, Empresas.IdEmpresa as Empresa, NomeFantasia, CNPJ, RazaoSocial, EnderecoCompleto, Descricao,
CASE 
WHEN Estado = 1 THEN 'Realizado' ELSE 'A Fazer' 
END AS Estado
FROM Servicos
INNER JOIN Clientes on Clientes.IdCliente = Servicos.IdCliente
INNER JOIN Empresas on Empresas.IdEmpresa = Servicos.IdEmpresa;


