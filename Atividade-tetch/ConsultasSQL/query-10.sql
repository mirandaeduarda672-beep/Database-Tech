-- Liste o número do pedido (id_pedido), o status e o valor_total de todos os pedidos realizados pela cliente Ana Silva.
SELECT ped.id_pedido, ped.status, ped.valor_total
FROM pedidos ped
INNER JOIN clientes cli ON ped.id_cliente = cli.id_cliente
WHERE cli.nome = 'Ana Silva';