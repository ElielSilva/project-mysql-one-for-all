SELECT title_song AS 'nome_musica',
    CASE
        WHEN title_song LIKE '%Streets%' THEN  REPLACE(title_song,'Streets','Code Review')
        WHEN title_song LIKE '%Her Own%' THEN  REPLACE(title_song,'Her Own','Trybe')
        WHEN title_song LIKE '%Inner Fire%' THEN  REPLACE(title_song,'Inner Fire','Project')
        WHEN title_song LIKE '%Silly%' THEN  REPLACE(title_song,'Silly','Nice')
        WHEN title_song LIKE '%Circus%' THEN  REPLACE(title_song,'Circus','Pull Request')
	ELSE title_song
END AS 'novo_nome'
FROM SpotifyClone.songs
WHERE title_song LIKE '%Streets%'
OR title_song LIKE '%Her Own%'
OR title_song LIKE '%Inner Fire%'
OR title_song LIKE '%Silly%'
OR title_song LIKE '%Circus%'
ORDER BY novo_nome
;