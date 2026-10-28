/*INSTRUÇÃO 1*/

USE vendas_informatica;
DELETE FROM Cliente
WHERE id_cliente = 5;

/*INSTRUÇÃO 2*/

USE vendas_informatica;
DELETE FROM Cliente
WHERE estado = 'SC';

/*INSTRUÇÃO 3*/

USE vendas_informatica;
DELETE FROM Produto
WHERE marca = 'LG';

/*INSTRUÇÃO 4*/

USE vendas_informatica;
DELETE FROM Produto
WHERE id_produto IN (3, 5, 10);

/*INSTRUÇÃO 5*/

USE vendas_informatica;
DELETE FROM Venda
WHERE desconto_percentual = 0;

/*INSTRUÇÃO 6*/

USE vendas_informatica;
DELETE FROM Venda
WHERE status_venda = 'Cancelada';