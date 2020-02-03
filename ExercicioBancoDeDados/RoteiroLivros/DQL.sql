-- DQL (Linguagem de Consulta de Dados)

SELECT * FROM Autores;
SELECT * FROM Generos;
SELECT * FROM Livros;

SELECT Livros.Titulo, Autores.NomeAutor FROM Livros 
INNER JOIN Autores ON Autores.IdAutor = Livros.IdAutor;

SELECT Livros.Titulo, Generos.Nome FROM Livros 
INNER JOIN Generos ON Generos.IdGenero = Livros.IdGenero;

SELECT Livros.Titulo, Autores.NomeAutor, Generos.Nome FROM Livros 
INNER JOIN Autores ON Autores.IdAutor = Livros.IdAutor
INNER JOIN Generos ON Generos.IdGenero = Livros.IdAutor;
