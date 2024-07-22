-- DAYOFWEEK retorna o dia da semana de uma determinada data

SELECT last_update, DAYOFWEEK(last_update) AS dia_semana,
DAYOFWEEK(ADDDATE(last_update, "3 DAYS"))
FROM actor;
-- DAYOFYEAR retorna o dia do ano

SELECT last_update, DAYOFYEAR(last_update) FROM actor;

-- WEEKOFYEAR semana do ano

SELECT last_update, weekofyear(last_update),
WEEKOFYEAR(ADDDATE(last_update, INTERVAL 3 MONTH))
FROM actor;