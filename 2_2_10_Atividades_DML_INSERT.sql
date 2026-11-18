/*INSTRUÇÂO 1*/
USE vendas_informatica;

INSERT INTO cliente VALUES
(DEFAULT, "Rubervaldo Sesiano", "ruber.sesi@gmail.com", "jaguariuna", "SP", "2026-10-28");

/*INSTRUÇÂO 2*/
USE vendas_informatica;

INSERT INTO produtos VALUES
(DEFAULT, "MousePad 5POL", "Acessórios","Lumix", 59.98, 35, 1, "2026-10-21");

/*INSTRUÇÃO 3*/
USE vendas_informatica;
INSERT INTO Venda VALUES
(DEFAULT,
(SELECT id_produto FROM Produto WHERE nome_produto = 'MousePad 5POL' LIMIT 1),
(SELECT id_cliente FROM Cliente WHERE nome_cliente LIKE 'Rubervaldo%' LIMIT 1),
'2026-10-21', 10, 59.98, 1.33, 'PIX', 'Concluída'
);