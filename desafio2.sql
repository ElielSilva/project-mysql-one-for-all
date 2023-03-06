SELECT COUNT(DISTINCT(title_song)) AS cancoes,
COUNT(DISTINCT(art.full_name)) AS artistas, 
COUNT(DISTINCT(alb.album_id)) AS albuns
FROM SpotifyClone.songs
INNER JOIN SpotifyClone.artist AS art
INNER JOIN SpotifyClone.album AS alb;