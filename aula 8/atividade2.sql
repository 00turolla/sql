/*INSTRUÇÃO 1*/
use vendas_informatica;

update cliente
set cidade ="senailandia"
WHERE estado in("DF","ES");

/*INSTRUÇÃO 2*/
use vendas_informatica;
update cliente
set data_cadastro="2026-01-01"
WHERE cidade in("Manaus");


/*INSTRUÇÃO 3*/
use vendas_informatica;
update cliente
set nome_cliente="Michaeil jackson" 
WHERE id_cliente = 10;


/*INSTRUÇÃO 4*/
use vendas_informatica;
update produto
set nome_produto = "notebook lenovo ideapad 7"
WHERE id_produto = 1;


/*INSTRUÇÃO 5*/
use vendas_informatica;
update produto
set preco_unitario = 4999.99
WHERE marca="Dell";

/*INSTRUÇÃO 6*/
use vendas_informatica;
update venda
SET desconto_percentual = 0.01
WHERE quantidade = 2;