USE ECOMMERCE;

GO

INSERT INTO Lojas VALUES (
	'SenaiShop'
);

INSERT INTO Categorias VALUES (
	'Cursos',1
),
(
	'Acess�rios',1
);

INSERT INTO SubCategorias VALUES (
	'Inform�tica B�sica',1
),
(
	'Desenvolvimento',1
),
(
	'Meio Ambiente',2
),
(
	'Camisetas',2
);

INSERT INTO Produtos VALUEs (
	'Copo para Caf�', '25', 3
),
(
	'Jaqueta', '100', 4
),
(
	'Excel B�sico', '250', 1
),
(
	'C#', '700', 2
);

INSERT INTO Clientes VALUES (
	'Fernando'
),
(
	'Helena'
);

INSERT INTO Pedidos VALUES (
	'5455514', '2019/01/22', 'Em andamento', 1 
),
(
	'23232',  '2019/01/22', 'Entregue', 2
);

INSERT INTO PedidosProdutos VALUES (
	2, 1
),
(
	2,2
),
(
	3,3
),
(
	3,4
);

