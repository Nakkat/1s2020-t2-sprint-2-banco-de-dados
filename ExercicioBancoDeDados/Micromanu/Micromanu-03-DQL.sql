USE Micromanu_Manha

SELECT IdCliente as Cliente, Nome FROM Clientes;
SELECT IdPedido as Pedido, Clientes.Nome, Itens.Descricao, TiposConsertos.Descricao, NumeroEquipamento, Entrada, Saida FROM Pedidos
INNER JOIN Clientes on Clientes.IdCliente = Pedidos.IdCliente
INNER JOIN Itens on Itens.IdItem = Pedidos.IdItem
INNER JOIN TiposConsertos on TiposConsertos.Idtipo = Pedidos.IdTipo;
SELECT * FROM PedidosColaboradores;
SELECT IdItem as Item, Descricao FROM Itens;
SELECT IdTipo as Tipo, Descricao FROM TiposConsertos;
SELECT IdColaborador as Colaborador, Nome, Salario FROM Colaboradores