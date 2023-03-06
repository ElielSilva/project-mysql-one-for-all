SELECT 
	cancao.title_song as nome,
    COUNT(*) as reproducoes
FROM SpotifyClone.users as us
JOIN SpotifyClone.plan as plano
ON us.plan_id = plano.plan_id
JOIN SpotifyClone.historic_playng as hist
ON hist.users_id = us.users_id
JOIN SpotifyClone.songs as cancao
ON cancao.song_id = hist.song_id
WHERE plano.name_plan IN ('gratuito', 'pessoal')
GROUP BY nome
ORDER BY reproducoes DESC, nome;