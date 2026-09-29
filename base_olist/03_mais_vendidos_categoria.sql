#3 mais vendidos por categoria
SELECT 
    categoria,
    produto_id,
    qtd_vendida,
    ranking_categoria
FROM (
    -- Subconsulta: O cálculo do ranking de todos os produtos
    SELECT 
        p.product_category_name AS categoria,
        i.product_id AS produto_id,
        COUNT(i.order_id) AS qtd_vendida,
        DENSE_RANK() OVER (PARTITION BY p.product_category_name ORDER BY COUNT(i.order_id) DESC) AS ranking_categoria
    FROM order_items i
    INNER JOIN products p ON i.product_id = p.product_id
    WHERE p.product_category_name IS NOT NULL
    GROUP BY p.product_category_name, i.product_id
) AS vitrine_produtos
WHERE ranking_categoria <= 3
ORDER BY categoria ASC, ranking_categoria ASC;