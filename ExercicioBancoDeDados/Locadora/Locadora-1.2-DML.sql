USE LOCADORA;

GO

INSERT INTO Marcas VALUES (
	'Ford'
),
(
	'GM'
),
(
	'Fiat'
);

INSERT INTO Clientes VALUES (
	'Fernando', '23324442444'
),
(
	'Helena', '32434554333'
);

INSERT INTO Empresas (Nome) VALUES (
	'Unidas'
),
(
	'Localiza'
);

INSERT INTO Modelos VALUES(
	'Fiesta', 1
),
(
	'Onix', 2
),
(
	'Argo', 3
);

INSERT INTO Veiculos (IdModelo, Placa, IdEmpresa) VALUES(
	1, 'HEL1805', 1
),
(
	2, 'FER1010', 1
),
(
	3, 'POR1978', 2
),
(
	1, 'LEM9876', 2
);

INSERT INTO Alugueis (IdCliente, IdVeiculo, DataRetirada, DataDevolucao) VALUES(
	1,1,'2019/01/19','2019/01/20'
),
(
	1,2,'2019/01/20','2019/01/21'
),
(
	2,3,'2019/01/21','2019/01/21'
),
(
	2,2,'2019/01/22','2019/01/22'
);