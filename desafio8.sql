SELECT art.full_name AS artista , alb.title_album AS album
FROM SpotifyClone.album AS alb
INNER JOIN SpotifyClone.artist AS art
ON alb.artist_id=art.artist_id
WHERE art.full_name = 'Walter Phoenix'
ORDER BY title_album
;