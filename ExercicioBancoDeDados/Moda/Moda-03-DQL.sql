USE Moda_Manha;

GO

SELECT IdMarca as Marca, NomeMarca FROM Marcas;
SELECT IdCor as Cor, Descricao FROM Cores;
SELECT IdTamanho as Tamanho, Descricao FROM Tamanhos;
SELECT IdCamiseta as Camiseta, Camisetas.Descricao, TipoTecido, NomeMarca, Cores.Descricao, Tamanhos.Descricao, 
CASE WHEN Ferro = 1 THEN 'Pode passar com o ferro' Else 'Não pode passar com o ferro'
END AS Ferro
FROM Camisetas
INNER JOIN Marcas on Marcas.IdMarca = Camisetas.IdMarca
INNER JOIN Cores on Cores.IdCor = Camisetas.IdCor
INNER JOIN Tamanhos on Tamanhos.IdTamanho = Camisetas.IdTamanho