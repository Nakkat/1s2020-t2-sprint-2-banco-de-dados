USE ECOMMERCE;

GO

SELECT Nome FROM Lojas;
SELECT Lojas.Nome, Categorias.Nome as Loja FROM Categorias
INNER JOIN Lojas on Lojas.IdLoja  = Categorias.IdLoja;
SELECT SubCategorias.Nome, Categorias.Nome FROM SubCategorias
INNER JOIN Categorias on Categorias.IdCategoria = SubCategorias.IdCategoria;
SELECT Produtos.Nome, Valor, SubCategorias.Nome FROM Produtos
INNER JOIN SubCategorias on SubCategorias.IdSubCategoria = Produtos.IdSubCategoria;
SELECT IdCliente as Cliente, Nome FROM Clientes;
SELECT IdPedido as Pedido, NrPedido as Pedido, Estado, Clientes.Nome FROM Pedidos
INNER JOIN Clientes on Clientes.IdCliente = Pedidos.IdCliente;
SELECT Pedidos.IdPedido, NrPedido as Pedido, Estado, Clientes.Nome as NomeCliente, Produtos.Nome as NomeProduto, Valor, SubCategorias.Nome as SubCategoria FROM PedidosProdutos
INNER JOIN Pedidos on Pedidos.IdPedido = PedidosProdutos.IdPedido
INNER JOIN Produtos on Produtos.IdProduto = PedidosProdutos.IdProduto
INNER JOIN SubCategorias on SubCategorias.IdSubCategoria = Produtos.IdSubCategoria
INNER JOIN Clientes on Clientes.IdCliente = Pedidos.IdCliente;