-- create 
CREATE TABLE ta_pedido (
	int_idapedido int primary key auto_increment,
	int_idfcliente int not null,
	int_idfvendedor int not null,
	dtt_pedido date not null,
	CONSTRAINT fk_pedido_cliente FOREIGN KEY (int_idfcliente) REFERENCES tb_cliente (int_idacliente),
	CONSTRAINT fk_pedido_vendedor FOREIGN KEY (int_idfvendedor) REFERENCES tb_vendedor (int_idavendedor)
);

-- Valor total do pedido por pedido
SELECT
	ped.int_idapedido as 'ID',
	CONCAT(cli.vhr_nome, ' ', cli.vhr_sobrenome) AS 'Cliente',
	cli.vhr_cpf AS 'CPF',
	cli.vhr_telefone AS 'Telefone',
	CONCAT(ven.vhr_nome, ' ', ven.vhr_sobrenome) AS 'Vendedor',
    dtt_pedido AS 'Data',
	FORMAT(SUM(pro.flt_vlrunit), 2) AS 'Valor Total (R$)'
FROM ta_itempedido principal
INNER JOIN tb_produto pro
	ON pro.int_idaproduto = principal.int_idfproduto
INNER JOIN ta_pedido ped
	ON ped.int_idapedido = principal.int_idfpedido
INNER JOIN tb_vendedor ven
	ON ven.int_idavendedor = ped.int_idfvendedor
INNER JOIN tb_cliente cli
	ON cli.int_idacliente = ped.int_idfcliente
WHERE ped.int_idapedido = 4;
	
-- Total de pedidos
SELECT 
	COUNT(*) AS 'Total de pedidos'
FROM ta_pedido;

-- Informações de todos os pedidos
SELECT
	ped.int_idapedido as 'ID',
	CONCAT(cli.vhr_nome, ' ', cli.vhr_sobrenome) AS 'Cliente',
	CONCAT(ven.vhr_nome, ' ', ven.vhr_sobrenome) AS 'Vendedor',
	pro.vhr_nome AS 'Produto',
	cat.vhr_categoria AS 'Categoria',
	tam.vhr_tamanho AS 'Tamanho',
	cor.vhr_cor AS 'Cor',
	dtt_pedido AS 'Data',
	CONCAT('R$ ', pro.flt_vlrunit) AS 'Valor (R$)'
FROM ta_itempedido principal
INNER JOIN tb_produto pro
	ON pro.int_idaproduto = principal.int_idfproduto
INNER JOIN ta_pedido ped
	ON ped.int_idapedido = principal.int_idfpedido
INNER JOIN tb_cliente cli
	ON cli.int_idacliente = ped.int_idfcliente
INNER JOIN td_categoria cat
	ON cat.int_idacategoria = pro.int_idfcategoria
INNER JOIN td_tamanho tam
	ON tam.int_idatamanho = pro.int_idftamanho
INNER JOIN	td_cor cor
	ON cor.int_idacor = pro.int_idfcor
INNER JOIN tb_vendedor ven
	ON ven.int_idavendedor = ped.int_idfvendedor;


-- insert
INSERT INTO ta_pedido (int_idfcliente, int_idfvendedor, dtt_pedido) VALUES (1, 1, '2020-06-14'); -- 1

INSERT INTO ta_pedido (int_idfcliente, int_idfvendedor, dtt_pedido) VALUES (2, 1, '2020-06-14'); -- 2

INSERT INTO ta_pedido (int_idfcliente, int_idfvendedor, dtt_pedido) VALUES (3, 2, '2020-06-10'); -- 3

INSERT INTO ta_pedido (int_idfcliente, int_idfvendedor, dtt_pedido) VALUES (4, 3, '2020-06-10'); -- 4

INSERT INTO ta_pedido (int_idfcliente, int_idfvendedor, dtt_pedido) VALUES (5, 3, '2020-06-10'); -- 5

INSERT INTO ta_pedido (int_idfcliente, int_idfvendedor, dtt_pedido) VALUES (6, 1, '2020-06-12'); -- 6

INSERT INTO ta_pedido (int_idfcliente, int_idfvendedor, dtt_pedido) VALUES (7, 1, '2020-06-01'); -- 7

INSERT INTO ta_pedido (int_idfcliente, int_idfvendedor, dtt_pedido) VALUES (8, 1, '2020-05-03'); -- 8

INSERT INTO ta_pedido (int_idfcliente, int_idfvendedor, dtt_pedido) VALUES (1, 2, '2020-06-16'); -- 9

INSERT INTO ta_pedido (int_idfcliente, int_idfvendedor, dtt_pedido) VALUES (8, 2, '2020-05-07'); -- 10

INSERT INTO ta_pedido (int_idfcliente, int_idfvendedor, dtt_pedido) VALUES (9, 3, '2020-06-18'); -- 11


