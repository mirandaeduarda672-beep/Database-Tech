-- crie uma consulta que exiba o nome do produto e o nome da sua respectiva categoria.
select p.nome as produto, c.nome AS categoria
from produtos p
inner join categorias c ON p.id_categoria = c.id_categoria;