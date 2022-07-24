SELECT so.title_song AS cancao,
count(*) AS reproducoes
FROM SpotifyClone.historic_playng AS his
INNER JOIN SpotifyClone.songs AS so
ON his.song_id=so.song_id
GROUP BY so.title_song
ORDER BY reproducoes DESC, cancao
LIMIT 2;