CREATE DATABASE [Curso]
GO

USE [Curso]

-- Table Aluno
CREATE TABLE Aluno (
    Id INT NOT NULL PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,
    Nascimento DATETIME NULL,
    Ativo BIT NULL DEFAULT(0),
    Email NVARCHAR(180) NOT NULL UNIQUE,
)
GO



--Table Categoria e  Curso,tem que  Criar os dois juntos
CREATE TABLE Categoria (
    Id INT NOT NULL PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL
)
GO




-- Tabela Curso
CREATE TABLE Curso (
    Id INT NOT NULL PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,
    CategoriaId INT NOT NULL,
    FOREIGN KEY (CategoriaId) REFERENCES Categoria(Id) -- Correção aqui
)
GO




-- Table Progresso Curso
CREATE TABLE ProgressoCurso (
    AlunoId INT NOT NULL,
    CursoId INT NOT NULL,
    Progresso INT NOT NULL,
    UltimaAtualizacao DATETIME NOT NULL DEFAULT(GETDATE()),
    CONSTRAINT PK_ProgressoCurso PRIMARY KEY(AlunoId, CursoId) --chave composta
)
GO
