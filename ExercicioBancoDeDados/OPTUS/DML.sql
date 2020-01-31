-- DML (Linguagem de Manipulacao de Dados)

-- INSERIR 

INSERT INTO Estilos VALUES ('Pop');
INSERT INTO Estilos VALUES ('Reggae');
INSERT INTO Estilos VALUES ('Funk');
INSERT INTO Estilos VALUES ('Rock');
INSERT INTO Estilos VALUES ('Samba');

INSERT INTO Artistas VALUES ('Katy Perry');
INSERT INTO Artistas VALUES ('Bob Marley');
INSERT INTO Artistas VALUES ('MC Gui');
INSERT INTO Artistas VALUES ('Linkin Park');
INSERT INTO Artistas VALUES ('Zeca Pagodinho');

INSERT INTO Albuns VALUES (1,2,'A','20-10-2017',70,1000);
INSERT INTO Albuns VALUES (2,2,'B','20-11-2017',80,2000);
INSERT INTO Albuns VALUES (3,3,'C','20-12-2017',90,3000);
INSERT INTO Albuns VALUES (4,4,'D','20-01-2017',100,4000);
INSERT INTO Albuns VALUES (5,5,'E','20-02-2017',110,5000);
INSERT INTO Albuns VALUES (5,5,'E','20-02-2017',110,5000,'SP');


INSERT INTO Usuarios VALUES (1,'Carlos');
INSERT INTO Usuarios VALUES (1,'Roberto');
INSERT INTO Usuarios VALUES (2,'Mario');
INSERT INTO Usuarios VALUES (2,'Mariana');
INSERT INTO Usuarios VALUES (2,'Rafaela');

INSERT INTO TipoUsuario VALUES ('Admin');
INSERT INTO TipoUsuario VALUES ('Comum');
INSERT INTO TipoUsuario VALUES ('Admin',1);
INSERT INTO TipoUsuario VALUES ('Client',0);
INSERT INTO TipoUsuario VALUES ('Client2','FALSE');

-- ALTERAR

UPDATE Artistas SET Nome='Bruno' WHERE IdArtista=1;
UPDATE TipoUsuario SET Titulo='Comum' WHERE IdTipoUsuario=1;
UPDATE Albuns SET Visualizacao='1500' WHERE IdAlbum IN (4,6);

-- Deletar

DELETE FROM Albuns WHERE IdAlbum IN (2,3)
