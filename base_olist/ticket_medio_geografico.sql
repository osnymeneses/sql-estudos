#Ticket Médio por Estado
SELECT 
	c.customer_state AS estado,
    ROUND(SUM(op.payment_value) / COUNT(DISTINCT o.order_id),2) AS ticket_medio
FROM order_payments op
INNER JOIN orders o ON op.order_id = o.order_id
INNER JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_state
ORDER BY ticket_medio DESC;

