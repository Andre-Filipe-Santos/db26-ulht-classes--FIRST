-- Aula 4 - Exercícios de SELECT
-- Exemplos de consultas SQL

SELECT *
FROM clientes;

SELECT nome, email
FROM clientes
WHERE ativo = 1;

SELECT nome, cidade
FROM clientes
ORDER BY nome ASC;

SELECT COUNT(*) AS total_clientes
FROM clientes;

SELECT c.nome AS cliente, p.id AS pedido, p.data_pedido
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
ORDER BY c.nome, p.data_pedido;

SELECT c.nome AS cliente, SUM(ip.quantidade * pr.preco) AS total_gasto
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
JOIN itens_pedido ip ON p.id = ip.pedido_id
JOIN produtos pr ON ip.produto_id = pr.id
GROUP BY c.nome
ORDER BY total_gasto DESC;

SELECT nome, email
FROM clientes
WHERE cidade = 'Lisboa';
