USE SSOLVE_Manha;

GO

INSERT INTO Clientes VALUES (
	'Rodrigo'
),
(
	'Douglas'
);

INSERT INTO Empresas VALUES (
	'ABC','28348548348545','Arte Bolas Cachorro','Rua X, 123'
);

INSERT INTO Servicos VALUES (
	'Sofa','240','2020/03/23','2020/03/29','1',1,1
),
(
	'Cama','230','2020/04/21','2020/04/27','0',1,2
);

UPDATE Servicos SET Descricao = 'Consertei um sofá no valor de 240 reais, comecei no dia 23/03/2020 e terminei no dia 29/03/2020, o serviço foi pedido
pelo cliente Rodrigo, serviço da empresa ABC' WHERE IdCliente = 1;

UPDATE Servicos SET Descricao = 'Consertei uma cama no valor de 230 reais, comecei no dia 21/04/2020 e terminei no dia 27/04/2020, o serviço foi pedido
pelo cliente Douglas, serviço da empresa ABC' WHERE IdCliente = 2;
