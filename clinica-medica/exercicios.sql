-- Exercício 1

/*
A auditoria da operadora quer revisar as consultas de maior valor. Traga id_consulta, data_consulta e valor_consulta de 
todas as consultas com status "Realizada" e valor acima de R$ 100,00, ordenadas da mais cara para a mais barata.
*/

SELECT 
	id_consulta, 
	data_consulta, 
	valor_consulta,
    status
FROM TB_CONSULTAS
WHERE status = 'Realizada' AND valor_consulta > 100
ORDER BY valor_consulta DESC;


-- Exercício 2

/*
O setor de qualidade quer saber quais médicos nunca atenderam nenhuma consulta. Retorne o 
nome_medico e a especialidade desses médicos
*/

SELECT
    nome_medico,
    especialidade
FROM TB_MEDICOS
WHERE id_medico NOT IN (
    SELECT DISTINCT id_medico
    FROM TB_CONSULTAS
);

-- Exercício 3

/*
A operadora quer um relatório com nome_paciente, plano_saude, nome_medico e uma coluna nova chamada faixa_consulta, classificando o valor_consulta em:

Até R$ 100 → "Baixo custo"
De R$ 100,01 até R$ 400 → "Custo médio"
Acima de R$ 400 → "Alto custo"

Considere apenas consultas com status "Realizada".
*/

SELECT 
	p.nome_paciente, 
    p.plano_saude,
    m.nome_medico,
    c.valor_consulta,
    CASE
		WHEN c.valor_consulta <= 100 THEN 'Baixo custo'
        WHEN c.valor_consulta <= 400 THEN 'Custo médio'
        ELSE 'Alto custo'
	END AS faixa_consulta
FROM TB_CONSULTAS c
INNER JOIN TB_PACIENTES p 
	ON c.id_paciente = p.id_paciente
INNER JOIN TB_MEDICOS m 
	ON c.id_medico = m.id_medico
WHERE c.status = 'Realizada';