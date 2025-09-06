-- ver todas as tabelas no sql server
SELECT name FROM sys.tables;


-- descrever as colunas da tabela
EXEC sp_help 'users';


-- seleciona tudo de uma tabela
select * from users;


-- inserir registro na base de dados
INSERT INTO base_de_dados.dbo.users
(first_name, last_name, email, password_hash, created_at, updated_at)
VALUES( 'Maria', 'silva', 'MS@mail.com', '40028922', getdate(),  getdate());

