USE DPS_Manha;

GO;

SELECT IdDepartamento as Departamento, NomeDepartamento FROM Departamentos;
SELECT IdHabilidade as Habilidade, NomeHabilidade FROM Habilidades;
SELECT IdFuncionario as Funcionario, NomeFuncionario, CPF, Salario, NomeDepartamento, NomeHabilidade FROM Funcionarios
INNER JOIN Departamentos on Departamentos.IdDepartamento = Funcionarios.IdDepartamento
INNER JOIN Habilidades on Habilidades.IdHabilidade = Funcionarios.IdHabilidade;