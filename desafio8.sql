SELECT  COUNT(users_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historic_playng group by users_id having users_id=3;