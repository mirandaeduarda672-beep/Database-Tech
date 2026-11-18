-- Calcule o valor total somado de todos os pedidos registrados na tabela pedidos (coluna valor_total)
select sum(valor_total) as faturamento_bruto
from pedidos;