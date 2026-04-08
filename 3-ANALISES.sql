---------------------------------------------------------
-- PROJETO: Análise de Desempenho de Vendas
---------------------------------------------------------

-- Produtos mais vendidos 
SELECT 
    p.nome, 
    SUM(v.quantidade) AS total_vendido
FROM vendas v
JOIN produtos p ON v.produto_id = p.id
GROUP BY p.nome
ORDER BY total_vendido DESC;

--  Faturamento Total por Produtos
SELECT 
    p.nome, 
    SUM(v.quantidade * p.preco) AS faturamento_produto
FROM vendas v
JOIN produtos p ON v.produto_id = p.id
GROUP BY p.nome
ORDER BY faturamento_produto DESC;

--  Ranking de Clientes 
SELECT 
    c.nome, 
    SUM(v.quantidade * p.preco) AS total_gasto
FROM clientes c
JOIN vendas v ON c.id = v.cliente_id
JOIN produtos p ON v.produto_id = p.id
GROUP BY c.nome
ORDER BY total_gasto DESC;

--  Faturamento Global 
SELECT 
    SUM(v.quantidade * p.preco) AS faturamento_total_geral
FROM vendas v
JOIN produtos p ON v.produto_id = p.id;