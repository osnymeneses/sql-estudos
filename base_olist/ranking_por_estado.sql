# Ranking por Estado
SELECT 
    s.seller_state AS estado,
    i.seller_id,
    ROUND(SUM(i.price), 2) AS faturamento_total,
    DENSE_RANK() OVER (PARTITION BY s.seller_state ORDER BY SUM(i.price) DESC) AS ranking_estadual
FROM order_items i
INNER JOIN sellers s ON i.seller_id = s.seller_id
GROUP BY s.seller_state, i.seller_id
ORDER BY estado ASC, ranking_estadual ASC;

