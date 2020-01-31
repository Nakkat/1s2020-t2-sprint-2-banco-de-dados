-- DML

--INSERIR

INSERT INTO EstilosMusicais VALUES (1,'Rock');
INSERT INTO EstilosMusicais VALUES (2,'Metal');
INSERT INTO EstilosMusicais VALUES (3,'MPB');
INSERT INTO EstilosMusicais VALUES (4,'Funk');
INSERT INTO EstilosMusicais VALUES (5,'Pop');
INSERT INTO EstilosMusicais VALUES (6,'Reggae');
INSERT INTO EstilosMusicais VALUES (7,'Axe');
INSERT INTO EstilosMusicais VALUES (8, 'Samba');

INSERT INTO Artistas VALUES (1,'Legiao_Urbana');
INSERT INTO Artistas VALUES (2,'Metalica');
INSERT INTO Artistas VALUES (4,'Anitta');
INSERT INTO Artistas VALUES (5,'Katy_Perry');
INSERT INTO Artistas VALUES (6,'Bob Marley');
INSERT INTO Artistas VALUES (7,'Ivete Sangalo');
INSERT INTO Artistas VALUES (8,'Zeca Pagodinho');
INSERT INTO Artistas VALUES (5,'Michael Jackson');
INSERT INTO Artistas VALUES (5,'Briney Spears');

-- ALTERAR

UPDATE Artistas Set IdEstiloMusical=3 WHERE IdArtista=1;

-- DELETAR

DELETE FROM Artistas WHERE IdEstiloMusical='2';
