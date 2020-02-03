SELECT RazaoSocial, Endereco FROM Clinica;
SELECT Nome FROM Dono;
SELECT Titulo FROM TipoPet;

SELECT Raca.Titulo, TipoPet.Titulo as TituloTipoPet FROM Raca
INNER JOIN TipoPet ON TipoPet.IdTipoPet = Raca.IdTipoPet ;

SELECT Nome,Clinica.RazaoSocial,Clinica.Endereco FROM Veterinario
INNER JOIN Clinica ON Clinica.IdClinica = Veterinario.IdClinica;

SELECT Pet.Nome, Telefone, Porte, Raca.Titulo, Dono.Nome FROM Pet
INNER JOIN Raca ON Raca.IdRaca = Pet.IdRaca
INNER JOIN Dono ON Dono.IdDono = Pet.IdDono;

SELECT Dia,Discricao, Atendimento.Dia, Atendimento.Discricao FROM Atendimento
INNER JOIN Veterinario ON Veterinario.IdVeterinario = Atendimento.IdVeterinario;


