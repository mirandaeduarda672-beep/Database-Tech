-- Liste o nome e o estoque dos produtos da categoria de Periféricos (id_categoria = 3) que possuam mais de 40 unidades em estoque.
select nome, estoque
from produtos
where id_categoria=3 
and estoque>=40;