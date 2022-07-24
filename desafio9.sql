SELECT  COUNT(users_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historic_playng GROUP BY users_id HAVING users_id=3;