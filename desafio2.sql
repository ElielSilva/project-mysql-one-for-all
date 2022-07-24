SELECT (SELECT COUNT(title_song) FROM SpotifyClone.songs) AS cancoes,
(SELECT COUNT(full_name) FROM SpotifyClone.artist) AS artistas,
(SELECT COUNT(title_album) FROM SpotifyClone.album) AS albuns ;