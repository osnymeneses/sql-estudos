#Formas de Pagamento
SELECT
	op.payment_type AS forma_pagmento,
    COUNT(op.order_id) AS quantidade,
    ROUND(SUM(op.payment_value),2) AS total
FROM order_payments op
INNER JOIN orders o ON op.order_id = o.order_id
WHERE o.order_status = 'delivered'
GROUP BY op.payment_type
ORDER BY total DESC;
