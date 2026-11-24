DELIMITER //

create procedure contar_produtos_categoria(
    in p_id_categoria INT,
    out p_total INT
)
begin
    select COUNT(*)
    into p_total
    from produtos
    where id_categoria = p_id_categoria;
end //

DELIMITER ;

call contar_produtos_categoria(1, @total_produtos);
select @total_produtos AS total_na_categoria;