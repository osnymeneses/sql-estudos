# Ranking dos Maiores Vendedores
SELECT
	seller_id,
	ROUND(SUM(price),2) AS faturamento_total,
    DENSE_RANK() OVER (ORDER BY SUM(price) DESC) AS posicao_ranking
FROM order_items
GROUP BY seller_id
ORDER BY posicao_ranking ASC
LIMIT 10;