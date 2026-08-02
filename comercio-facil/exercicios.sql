

-- Exercício 01
/*
A diretoria quer saber quais pedidos tiveram valor acima de R$ 500,00. 
Escreva uma consulta que retorne o id do pedido, a data e o valor total, 
ordenados do maior para o menor valor.
*/

SELECT 
	id_pedido, 
	data_pedido, 
	valor_total 
FROM TB_PEDIDOS
WHERE valor_total > 500.00
ORDER BY valor_total DESC;



-- Exercício 02

/*
O gerente comercial quer identificar pedidos que sejam do estado "SP" ou "RJ", 
com status "Concluído", e cujo nome do cliente comece com a letra "M". Escreva a consulta.
*/

SELECT 
	p.id_pedido,
    c.nome_cliente,
    c.estado,
    p.status
FROM TB_PEDIDOS p 
INNER JOIN TB_CLIENTES c
	ON p.id_cliente = c.id_cliente
WHERE c.estado IN ('SP', 'RJ')
AND p.status = 'Concluído'
AND c.nome_cliente LIKE 'M%';


-- Exercício 03

/*
O RH quer saber quais funcionários nunca fizeram nenhum pedido (ou seja, não aparecem na tabela TB_PEDIDOS). 
Use uma subquery para resolver isso.
*/

SELECT 
	nome_funcionario
FROM TB_FUNCIONARIOS
WHERE id_funcionario NOT IN 
	(SELECT DISTINCT id_funcionario 
	FROM TB_PEDIDOS
	);


-- Exercício 04

/*
A equipe de marketing quer classificar os pedidos em faixas de valor para uma campanha:

Até R$ 100 → "Baixo"
De R$ 100,01 até R$ 500 → "Médio"
Acima de R$ 500 → "Alto"

Crie uma consulta que traga o id_pedido, o valor_total e essa nova coluna categorizada (chame de faixa_valor). 
Além disso, retorne também a lista de cidades distintas que aparecem em TB_CLIENTES.
*/

SELECT 
	id_pedido, 
    valor_total,
    CASE
		WHEN valor_total <= 100 THEN 'Baixo' 
        WHEN valor_total <= 500 THEN 'Médio' 
        ELSE 'Alto'
	END AS faixa_valor
FROM TB_PEDIDOS;



-- Exercício 05

/*
A diretoria quer um relatório final juntando os pedidos com o nome do cliente e o nome do funcionário responsável pela venda. 
Retorne: id_pedido, nome_cliente, nome_funcionario e valor_total, apenas para pedidos com status "Concluído".
*/

SELECT 
	p.id_pedido,
	c.nome_cliente , 
    f.nome_funcionario,
    p.valor_total
FROM TB_PEDIDOS p
INNER JOIN TB_CLIENTES c
USING (id_cliente)
INNER JOIN TB_FUNCIONARIOS f
USING (id_funcionario)
WHERE p.status = 'Concluído';
