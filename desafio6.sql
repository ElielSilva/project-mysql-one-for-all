SELECT MIN(pl.value_plan) AS 'faturamento_minimo',
MAX(pl.value_plan) AS 'faturamento_maximo',
ROUND(AVG(pl.value_plan),2) AS 'faturamento_medio',
SUM((pl.value_plan)) AS 'faturamento_total'
FROM SpotifyClone.users AS us
INNER JOIN SpotifyClone.plan AS pl
ON us.plan_id=pl.plan_id
;