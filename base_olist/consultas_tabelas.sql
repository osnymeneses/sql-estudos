Use olist;

/*
SELECT 
    c.customer_state,
    COUNT(o.order_id) AS total_pedidos
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_state
ORDER BY total_pedidos DESC
LIMIT 5;
*/

-- calculo da receita total e o ticket médio da Olist
SELECT 
	ROUND(SUM(op.payment_value),2) AS receita_total,
    COUNT(DISTINCT o.order_id) AS total_pedidos,
    ROUND(SUM(op.payment_value) / COUNT(DISTINCT o.order_id), 2) AS ticket_medio
    FROM orders o
    INNER JOIN order_payments op ON o.order_id = op.order_id
    WHERE o.order_status = 'delivered';
    
    
    
