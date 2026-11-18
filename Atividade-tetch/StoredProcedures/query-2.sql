-- Crie uma stored procedure chamada buscar_pedidos_por_status 
-- que receba um status (p_status VARCHAR(20)) e exiba o id_pedido, o id_cliente, a data_pedido e o valor_total de todos os pedidos que possuam o status informado.
DELIMITER //

create procedure buscar_pedidos_por_status (
	in p_status VARCHAR(20)
    )
	begin
	 select id_pedido, id_cliente, data_pedido, valor_total
    from pedidos
    where status = p_status;
end //
    call buscar_pedidos_por_status('pendente');