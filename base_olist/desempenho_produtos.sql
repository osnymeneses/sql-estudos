# Desempenho de Produtos
SELECT 
    p.product_category_name AS categoria,
    ROUND(SUM(op.payment_value), 2) AS receita_total,
    COUNT(oi.product_id) AS volume_vendido
FROM order_payments op
INNER JOIN order_items oi ON op.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY receita_total DESC
LIMIT 10;






