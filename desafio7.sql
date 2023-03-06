SELECT 
art.full_name AS artista,
alb.title_album AS album,
count(ufa.artist_id) AS seguidores
FROM SpotifyClone.artist as art
INNER JOIN SpotifyClone.album AS alb
ON alb.artist_id=art.artist_id
INNER JOIN SpotifyClone.users_follow_artist AS ufa
ON art.artist_id=ufa.artist_id
GROUP BY art.full_name, alb.title_album
ORDER BY COUNT(ufa.artist_id) DESC, art.full_name, alb.title_album;
;