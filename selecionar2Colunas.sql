 SELECT u.id AS usuarioId, p.id AS ProfileId,
   p.bio, u.first_name
FROM users u
INNER JOIN profiles p
ON p.user_id = u.id;
