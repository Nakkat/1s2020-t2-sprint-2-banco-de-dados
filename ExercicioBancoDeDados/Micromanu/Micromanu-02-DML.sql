USE Micromanu_Manha;

GO

INSERT INTO Clientes VALUES (
	'Carol'
),
(
	'Saulo'
);

INSERT INTO Itens VALUES (
	'Computador'
),
(
	'Notebook'
),
(
	'Video game'
),
(
	'Televisão'
),
(
	'Celular'
);

INSERT INTO TiposConsertos VALUES (
	'Manutenção'
),
(
	'Limpeza'
);

INSERT INTO Colaboradores VALUES (
	'Henrique', '1000.0'
),
(
	'Juliano', '1000.0'
),
(
	'Fernando', '1500.0'
),
(
	'Sorocaba', '2000.0'
);

INSERT INTO PedidosColaboradores VALUES (
	1,1
),
(
	2,2
),
(
	2,3
),
(
	3,1
);

INSERT INTO Pedidos (IdCliente, IdItem, IdTipo, NumeroEquipamento, Entrada, Saida) VALUES (
	1,1,1, '123', '20/jul', '22jul'
);

INSERT INTO Pedidos (IdCliente, IdItem, IdTipo, NumeroEquipamento, Entrada) VALUES 
(
	2,3,1, '321', '21/jul'
),
(
	2,2,2, '132', '21/jul'
);

SELECT * FROM Pedidos;