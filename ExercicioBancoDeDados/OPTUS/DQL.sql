-- DQL (Linguagem de Consulta de Dados)

-- TUDO 

SELECT * FROM Estilos;
SELECT * FROM Artistas;
SELECT * FROM Albuns;
SELECT * FROM Usuarios;
SELECT * FROM TipoUSuario;

-- ESPECÍFICO

SELECT Nome FROM Artistas;

--BETWEEN (ENTRE), > (MAIOR), < (MENOR), >= MAIOR OU IGUAL, <= MENOR OU IGUAL

SELECT * FROM Albuns WHERE IdAlbum BETWEEN 4 and 6;
SELECT * FROM Albuns WHERE IdAlbum <= 7;

-- OR OU AND

SELECT Nome, QntMinutos FROM Albuns 
WHERE (DataLancamento IS NULL) OR (Localizacao IS NULL);


-- FILTRO DE TEXTO
/* % no final, pega todos que a palavra está no começo
   % no inicio, pega todos que a palavra está no final
   %MEIO% , pega em todo lugar que estiver
*/

SELECT IdArtista, Nome FROM Artistas
WHERE Nome Like '%Bruno'; 

-- ORDENACAO
-- ASC OR DESC (Ascendente ou descrescente)

SELECT IdAlbum, Nome, Visualizacao FROM Albuns ORDER BY Visualizacao ASC;

-- COUNT

SELECT COUNT(IdAlbum) FROM Albuns;

-- EXERCICIO

SELECT * FROM Albuns WHERE IdArtista = 4;
SELECT * FROM Albuns WHERE DataLancamento = '2017-01-20';
SELECT IdArtista FROM Albuns WHERE IdEstilo = 4;

-- COM INNER JOIN (JUNCAO)

SELECT Artistas.Nome, Albuns.Nome, Albuns.DataLancamento FROM Artistas 
INNER JOIN Albuns ON Artistas.IdArtista = Albuns.IdArtista
WHERE Albuns.IdArtista = 4;

SELECT Artistas.Nome as NomeArtista, Albuns.Nome, Albuns.DataLancamento FROM Artistas 
INNER JOIN Albuns ON Albuns.IdArtista = Artistas.IdArtista
WHERE DataLancamento = '2017-01-20';

SELECT * FROM Albuns 
INNER JOIN Artistas ON Artistas.IdArtista = Albuns.IdArtista 
ORDER BY DataLancamento DESC;

-- DESAFIO 
-- COM INNER JOIN
-- COM 3 TABELAS

SELECT Albuns.Nome, Artistas.Nome as NomeArtista, Estilos.Nome as NomeEstilo, DataLancamento  
FROM Albuns 
INNER JOIN Artistas ON Artistas.IdArtista = Albuns.IdArtista 
INNER JOIN Estilos ON Estilos.IdEstilo = Albuns.IdEstilo
WHERE Albuns.IdEstilo = 4
