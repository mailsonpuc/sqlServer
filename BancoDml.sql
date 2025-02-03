-- Data Manipulation Language (DML)

-- inserindo dados na tabela Categoria
INSERT INTO Categoria (Id, Nome) VALUES (
    1, 'Desenvolvedor MOBILE'
),
  (
    2, 'Desenvolvedor FRONT-end'
),
(
    3, 'Desenvolvedor MOBILE'
)
GO
-- atalizando um nome na tabela Categoria
UPDATE Categoria SET Nome = 'Desenvolvedor BACK-END' WHERE Id=1

  

-- inserindo dados na tabela Curso
INSERT INTO Curso (Id, Nome, CategoriaId) VALUES (
    1, 'Fundamentos de C#', 1
),
(
    2, 'Fundamentos WEB',2
),
(
    3, 'Programaçao Mobile com React Native', 3
)

GO
