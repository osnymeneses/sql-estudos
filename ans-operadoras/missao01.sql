USE ans_operadoras;

-- Missão 1 – Conhecendo o mercado

 -- Quantas operadoras existem no total?

SELECT COUNT(*)
	FROM operadoras;


-- Quais estados possuem operadoras cadastradas?

SELECT DISTINCT
    uf
FROM operadoras
ORDER BY uf;


-- Quais são os cinco estados com mais operadoras?

SELECT 
		uf,
        COUNT(*) AS operadoras_estados
    FROM operadoras
    GROUP BY uf
    ORDER BY operadoras_estados DESC
    LIMIT 5;


-- Quais são os cinco estados com menos operadoras?

SELECT 
	uf,
	COUNT(*) AS qtd_operadoras
FROM operadoras
	GROUP BY uf
	ORDER BY qtd_operadoras 
	LIMIT 5;


-- Quantas cidades diferentes existem na base?

SELECT
    COUNT(DISTINCT cidade) AS total_cidades
FROM operadoras;


-- Quais são as dez cidades com maior número de operadoras?

SELECT 
	cidade,
	COUNT(*) AS qtd_operadoras
FROM operadoras
GROUP BY cidade
ORDER BY qtd_operadoras DESC
LIMIT 10;
