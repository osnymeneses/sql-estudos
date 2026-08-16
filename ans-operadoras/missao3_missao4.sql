USE ans_operadoras;

-- Missão 3 
-- Objetivo: analisar a evolução dos registros.

-- Qual é a operadora mais antiga da base?

SELECT
	razao_social,
	data_registro_ans
FROM operadoras
ORDER BY data_registro_ans ASC , razao_social
LIMIT 1;

-- Qual é a mais recente?
SELECT
	razao_social,
	data_registro_ans
FROM operadoras
ORDER BY data_registro_ans DESC
LIMIT 1;

-- Em qual ano ocorreram mais registros?
SELECT 
    YEAR(data_registro_ans) AS ano,
    COUNT(*) AS qtd_registros
FROM operadoras
GROUP BY YEAR(data_registro_ans)
ORDER BY qtd_registros DESC
LIMIT 1;

-- Quantas operadoras foram registradas em cada ano?
SELECT
	YEAR(data_registro_ans) AS ano,
	COUNT(*) AS qtd_registradas
FROM operadoras
GROUP BY ano
ORDER BY ano ASC;

-- Houve anos sem registros?
SELECT DISTINCT
    YEAR(data_registro_ans) AS ano
FROM operadoras
ORDER BY ano ASC;


-- Missão 4 – Qualidade dos dados

-- Objetivo: verificar se os dados estão completos.


-- Quantas operadoras não possuem nome fantasia?

SELECT 
	COUNT(*) AS sem_nome_fantasia
FROM operadoras
WHERE nome_fantasia = '';

-- Quantas não possuem telefone?

SELECT 
	COUNT(*) AS sem_telefone
FROM operadoras
WHERE telefone = '';

-- Quantas não possuem e-mail?
SELECT 
	COUNT(*) AS sem_email
FROM operadoras
WHERE endereco_eletronico = '';

-- Existem CNPJs duplicados?
SELECT
	cnpj,
	COUNT(cnpj) AS cnpj_duplicados
FROM operadoras
GROUP BY cnpj
HAVING cnpj_duplicados > 1;

-- Existem registros duplicados?
SELECT
	registro_operadora,
	COUNT(*) AS reg_duplicados
FROM operadoras
GROUP BY registro_operadora	
HAVING reg_duplicados > 1;
