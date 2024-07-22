-- DATEDIFF calcula a diferença de duas datas

SELECT DATEDIFF(ADDDATE(last_update, INTERVAL 1 MONTH), last_update) FROM actor;

-- ADDTIME adiciona ou remove um tempo a uma data

SELECT *, ADDTIME(last_update, "4 03:00:00") FROM actor
WHERE actor_id > 40;

