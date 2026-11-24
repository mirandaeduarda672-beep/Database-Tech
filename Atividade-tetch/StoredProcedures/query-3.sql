DELIMITER //

create procedure inserir_categoria(
    in p_nome VARCHAR(100),
    in p_descricao text
)
begin
    insert into categorias (nome, descricao)
    values (p_nome, p_descricao);
end //

DELIMITER ;

CALL inserir_categoria('Eletrônicos', 'Dispositivos, gadgets e acessórios em geral');