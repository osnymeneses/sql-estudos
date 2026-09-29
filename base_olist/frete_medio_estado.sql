# Frete médio estado

SELECT 
    c.customer_state AS estado,
    ROUND(AVG(i.freight_value), 2) AS frete_medio_estado
FROM orders o
INNER JOIN order_items i ON o.order_id = i.order_id
INNER JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_state
HAVING frete_medio_estado > (
    SELECT AVG(freight_value) 
    FROM order_items
)
ORDER BY frete_medio_estado DESC;

