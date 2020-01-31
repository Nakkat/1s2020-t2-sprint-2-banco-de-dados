-- DDL

-- INSERIR

INSERT INTO Autores VALUES ('Carlos');
INSERT INTO Autores VALUES ('Mariana');
INSERT INTO Autores VALUES ('Gustavo');
INSERT INTO Autores VALUES ('Bruno');
INSERT INTO Autores VALUES ('Ana');

INSERT INTO Generos VALUES ('Romance');
INSERT INTO Generos VALUES ('Ficcao');
INSERT INTO Generos VALUES ('Linguas');
INSERT INTO Generos VALUES ('Suspense');
INSERT INTO Generos VALUES ('Terror');

INSERT INTO Livros Values ('A',1,1);
INSERT INTO Livros Values ('B',2,2);
INSERT INTO Livros Values ('C',3,3);
INSERT INTO Livros Values ('D',1,2);
INSERT INTO Livros Values ('E',2,3);

-- ALTERAR

UPDATE Generos SET Nome='Acao' WHERE Nome='Romance'
UPDATE Livros SET IdGenero=3 Where IdLivro=5

-- DELETAR

DELETE FROM Livros WHERE IdAutor=1
DELETE FROM Autores WHERE IdAutor=1




