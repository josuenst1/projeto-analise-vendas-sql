---------------------------------------------------------
-- CRIAÇÂO DA ESTRUTURA DO BANCO DE DADOS
---------------------------------------------------------

-- Criação da tabela de clientes
CREATE TABLE clientes (
	id INT PRIMARY KEY, 
	nome VARCHAR(50),
	cidade VARCHAR(50)
	);

-- Criação da tabela de produtos
	CREATE TABLE produtos (
	id INT PRIMARY KEY,
	nome  VARCHAR(50),
	categoria VARCHAR(50),
	preco DECIMAL(10,2)
	);

-- Criação da tabela de vendas
	CREATE TABLE vendas (
	id INT PRIMARY KEY,
	cliente_id INT,
	produto_id INT,
	quantidade INT,
	data_venda DATE,
	FOREIGN KEY  (cliente_id) REFERENCES clientes (id),
	FOREIGN KEY (produto_id) REFERENCES produtos (id)
	);