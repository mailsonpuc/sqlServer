-- Inserir um salary aleatorio para todos da tabela users
UPDATE users SET salary = ROUND(RAND(CHECKSUM(NEWID())) * 10000, 2);

 
