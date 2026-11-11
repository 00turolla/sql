/*Instrução 1*/
USE vendas_informatica;

SELECT * FROM produto WHERE nome_produto LIKE "D%";

/*Instrução 2*/
USE vendas_informatica;

SELECT nome_produto, marca, estoque FROM produto WHERE marca LIKE "%E";

/*Instrução 3*/
USE vendas_informatica;

SELECT nome_produto, marca, preco_unitario FROM produto WHERE nome_produto LIKE "%Gamer%";

/*Instrução 4*/
USE vendas_informatica;

SELECT * FROM cliente WHERE nome_cliente LIKE "%Barbosa%";

/*Instrução 5*/
use vendas_informatica;

SELECT cliente.nome_cliente, venda.data_venda, venda.preco_unitario_venda, venda.forma_pagamento FROM Venda INNER JOIN Cliente ON venda.id_cliente = cliente.id_cliente WHERE cliente.nome_cliente LIKE "C%";


/*Instrução 6*/
USE vendas_informatica;

SELECT Produto.nome_produto, Venda.preco_unitario_venda, Venda.id_venda, Venda.forma_pagamento FROM Venda INNER JOIN Produto ON Venda.id_produto = Produto.id_produto WHERE Venda.forma_pagamento IN ("PIX", "Boleto") AND Produto.nome_produto LIKE "%Polegada%";


/*Instrução 7*/
USE vendas_informatica;

SELECT Produto.nome_produto, Cliente.nome_cliente, Venda.desconto_percentual, Venda.forma_pagamento FROM Venda INNER JOIN Produto ON Venda.id_produto = Produto.id_produto INNER JOIN Cliente ON Venda.id_cliente = Cliente.id_cliente WHERE Produto.nome_produto LIKE "%Placa%" OR Produto.nome_produto LIKE "%Notebook%" OR Cliente.nome_cliente LIKE "%Ana%" ORDER BY Venda.status_venda ASC;
