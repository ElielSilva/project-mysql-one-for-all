SELECT us.users_name AS usuario,
IF(YEAR(MAX(his.date_playing)) = 2021, 'Usuário ativo','Usuário inativo') AS 'condicao_usuario'
FROM SpotifyClone.users AS us
INNER JOIN SpotifyClone.historic_playng AS his
ON us.users_id=his.users_id
GROUP BY us.users_name;