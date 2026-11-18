-- Crie uma stored procedure chamada listar_categorias_ativas que retorne o id_categoria, 
-- o nome e a descricao de todas as categorias que estejam ativas (ativo =TRUE), ordenadas em ordem alfabética pelo nome.
DELIMITER //
create procedure listar_categorias_ativas()
begin
select id_categoria, nome, descricao
    from categorias
    where ativo = TRUE
    order by nome ASC;
end //
DELIMITER ;

