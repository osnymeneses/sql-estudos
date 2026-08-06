-- Missão 2 – Perfil das operadoras
-- Objetivo: entender quem compõe o mercado.
-- Quais modalidades existem?

SELECT DISTINCT
	modalidade
FROM operadoras;


-- Qual modalidade possui mais operadoras?

SELECT 
	modalidade,
    COUNT(*) AS qtd_operadoras
FROM operadoras
GROUP BY modalidade
ORDER BY qtd_operadoras DESC
LIMIT 1;


-- Qual modalidade possui menos operadoras?

SELECT 
	modalidade,
    COUNT(*) AS qtd_operadoras
FROM operadoras
GROUP BY modalidade
ORDER BY qtd_operadoras ASC
LIMIT 1;


-- Em quais estados existem operadoras de cada modalidade?

SELECT DISTINCT
    uf,
    modalidade
FROM operadoras;


-- Existe alguma modalidade presente em apenas um estado?


SELECT 
	modalidade,
	COUNT(DISTINCT uf) AS estados
FROM operadoras
GROUP BY modalidade
HAVING COUNT(DISTINCT uf) = 1
