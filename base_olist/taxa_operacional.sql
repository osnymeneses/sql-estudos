#Taxa operacional
SELECT 
	order_status AS status_pedido,
    COUNT(order_id) AS quantidade_pedidos
FROM orders
GROUP BY order_status
ORDER BY quantidade_pedidos DESC;