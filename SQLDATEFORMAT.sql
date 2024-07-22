-- DATE_FORMAT formata uma data com um padrão indicado

SELECT  DATE_FORMAT(last_update, "%Y") AS ano,
DATE_FORMAT(last_update, "%d/%m/%Y")
FROM actor;

-- DAY retorna o dia e data que foi passado como argumanto

SELECT last_update, DAY(last_update) AS dia,
DAY(ADDTIME(last_update, "5 00:00:00")) FROM actor;