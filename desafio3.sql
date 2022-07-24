SELECT us.users_name AS usuario,
count(*) AS 'qtde_musicas_ouvidas',
FORMAT((SUM(so.duration_seconds)/60),2) AS 'total_minutos'
FROM SpotifyClone.users AS us
INNER JOIN SpotifyClone.historic_playng AS his
ON us.users_id=his.users_id
INNER JOIN SpotifyClone.songs AS so
ON his.song_id = so.song_id
group by us.users_name;