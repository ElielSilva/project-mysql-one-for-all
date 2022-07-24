SELECT art.full_name , alb.title_album , COUNT(alb.title_album)
FROM SpotifyClone.album AS alb
INNER JOIN SpotifyClone.artist AS art
ON alb.artist_id=art.artist_id
INNER JOIN SpotifyClone.users_follow_artist AS ufa
ON alb.artist_id=ufa.artist_id
GROUP BY alb.title_album
;