-- Consulte o id_produto, o nome e o preco de todos os produtos que contenham a palavra Monitor em qualquer parte do nome.
select id_produto,nome,preco
from produtos 
where nome like "%monitor%";