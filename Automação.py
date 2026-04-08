import sqlite3

# Abre a conexão
conexao = sqlite3.connect('meubanco.db')
cursor = conexao.cursor()

# A consulta SQL
query = """
SELECT c.nome, SUM(v.quantidade * p.preco)
FROM clientes c
JOIN vendas v ON c.id = v.cliente_id
JOIN produtos p ON v.produto_id = p.id
GROUP BY c.nome;
"""

# Executa e guarda os dados na lista
cursor.execute(query)
lista_vendas = cursor.fetchall()

# Mostra o resultado 
print(f"{'CLIENTE':<9} | {'TOTAL GASTO'}")
print("-" * 30)

for item in lista_vendas:
    print(f"{item[0]:<9} | R$ {item[1]:>8.2f}")

conexao.close()