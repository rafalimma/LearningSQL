-- MONTH extrai o mes

SELECT last_update,
MONTH(last_update),
MONTH(ADDDATE(last_update, INTERVAL 4 MONTH))
FROM actor;

-- YEAR extrai o ano de uma data

SELECT last_update,
YEAR(last_update)
FROM actor;