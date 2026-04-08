---------------------------------------------------------
-- POPULAÇÂO DA BASE DE DADOS 
---------------------------------------------------------

-- Cadastro de Clientes
INSERT INTO clientes (id, nome,cidade) VALUES
(1,'Jonatas', 'S�o Paulo'),
(2,'Luigi', 'BAHIA'),
(3,'Evellyn', 'Rio de Janeiro'),
(4,'Guilherme', 'S�o Paulo'),
(5,'Marli', 'Alagoas');

-- Tabela de Produtos e Preços
INSERT INTO produtos (id, nome, categoria, preco) VALUES
(1, 'Fone de Ouvido', 'Eletr�nicos', 100.00),
(2, 'Carregador Port�til', 'Eletr�nicos', 150.00),
(3, 'Carregador Turbo', 'Eletr�nicos', 95.00), 
(4, 'Capinha Celular', 'Acess�rios', 50.00);

-- Histórico de Vendas
INSERT INTO vendas (id, cliente_id, produto_id, quantidade, data_venda) VALUES
(1, 1, 1, 1, '2026-03-26'),
(2, 1, 3, 1, '2026-03-26'),
(3, 1, 4, 2, '2026-03-26'),
(4, 2, 2, 1, '2026-03-30'),
(5, 3, 4, 3, '2026-03-31'),
(6, 3, 2, 1, '2026-03-31'),
(7, 4, 1, 1, '2026-04-01'),
(8, 4, 2, 1, '2026-04-01'),
(9, 5, 3, 1, '2026-04-02'),
(10, 5, 4, 4, '2026-04-03');
