DELIMITER //

create procedure atualizar_telefone_cliente(
    in p_id_cliente INT,
    in p_telefone VARCHAR(15)
)
begin
    update clientes
    set telefone = p_telefone
    where id_cliente = p_id_cliente;
end //

DELIMITER ;

CALL atualizar_telefone_cliente(1, '(11) 98765-4321');