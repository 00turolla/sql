/*INSTRUÇÃO 1*/
use vendas_informatica;

SELECT * FROM produto;

/*INSTRUÇÃO 2*/
use vendas_informatica;

SELECT nome_produto, marca, estoque FROM produto;

/*INSTRUÇÃO 3*/
use vendas_informatica;

SELECT nome_produto, categoria, preco_unitario, data_cadastro, marca
FROM produto
ORDER BY Marca asc;

/*INSTRUÇÃO 4*/
use vendas_informatica;

SELECT nome_produto, marca, estoque
FROM produto
ORDER BY data_cadastro asc;

/*INSTRUÇÃO 5*/
use vendas_informatica;

SELECT * FROM cliente;

/*INSTRUÇÃO 6*/
use vendas_informatica;

SELECT nome_cliente, cidade, estado FROM cliente;

/*INSTRUÇÃO 7*/
use vendas_informatica;

SELECT nome_cliente, cidade, estado 
FROM cliente
ORDER BY estado asc;

/*INSTRUÇÃO 8*/
use vendas_informatica;

SELECT nome_cliente, email, estado
FROM cliente
ORDER BY data_cadastro desc;

/*INSTRUÇÃO 9*/
use vendas_informatica;

SELECT * FROM venda;

/*INSTRUÇÃO 10*/
use vendas_informatica;

SELECT cliente.nome_cliente, data_venda, preco_unitario, forma_pagamento
FROM produto
INNER JOIN venda
ON venda.id_produto = produto.id_produto
INNER JOIN cliente
ON cliente.id_cliente = venda.id_cliente;

/*INSTRUÇÃO 11*/
use vendas_informatica;

SELECT produto.nome_produto, data_venda, quantidade, forma_pagamento, status_venda
FROM produto
INNER JOIN venda
ON venda.id_produto = produto.id_produto;

/*INSTRUÇÃO 12*/
use vendas_informatica;

SELECT cliente.nome_cliente, produto.nome_produto, forma_pagamento
FROM produto
INNER JOIN venda
ON venda.id_produto = produto.id_produto
INNER JOIN cliente
ON cliente.id_cliente = venda.id_cliente
WHERE forma_pagamento in ('Pix', 'Boleto');

/*INSTRUÇÃO 13*/
use vendas_informatica;

SELECT produto.nome_produto, desconto_percentual, forma_pagamento, data_venda
FROM produto
INNER JOIN venda
ON venda.id_produto = produto.id_produto
ORDER BY data_venda asc;

/*INSTRUÇÃO 14*/
use vendas_informatica;

SELECT produto.nome_produto, cliente.nome_cliente, desconto_percentual, forma_pagamento
FROM produto
INNER JOIN venda
ON venda.id_produto = produto.id_produto
INNER JOIN cliente
ON cliente.id_cliente = venda.id_cliente
ORDER BY status_venda asc;

/*INSTRUÇÃO 15*/
use vendas_informatica;

SELECT cliente.nome_cliente, cliente.email, produto.nome_produto, produto.marca, produto.categoria, forma_pagamento, status_venda
from venda
INNER JOIN cliente
on venda.id_cliente = cliente.id_cliente
INNER JOIN produto
on venda.id_produto = produto.id_produto
WHERE status_venda = 'Concluída' or status_venda = 'cancelada'
ORDER BY preco_unitario_venda asc;