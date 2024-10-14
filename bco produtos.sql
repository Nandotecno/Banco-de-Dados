-- GROUP BY com ROLLUP
WITH Produtos AS (
    SELECT 'eletronicos' AS tipo_produto, 'notebook' AS nome_produto, 15 AS quantidade_produto UNION ALL
    SELECT 'eletronicos', 'smartphone', 30 UNION ALL
    SELECT 'vestuario', 'camiseta', 50 UNION ALL
    SELECT 'vestuario', 'calca', 25
)

SELECT 
    COALESCE(tipo_produto, 'Total') AS tipo_produto,
    COALESCE(nome_produto, 'Total') AS nome_produto,
    SUM(quantidade_produto) AS soma_produto
FROM Produtos
GROUP BY ROLLUP (tipo_produto, nome_produto)
ORDER BY tipo_produto, nome_produto;