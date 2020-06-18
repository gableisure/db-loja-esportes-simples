-- create 
CREATE TABLE ta_itempedido (
	int_idaitempedido int primary key auto_increment,
	int_idfproduto int not null,
	int_idfpedido int not null,
	CONSTRAINT fk_itempedido_produto FOREIGN KEY (int_idfproduto) REFERENCES tb_produto (int_idaproduto),
	CONSTRAINT fk_itempedido_pedido FOREIGN KEY (int_idfpedido) REFERENCES ta_pedido (int_idapedido)
);


-- Default Query
SELECT
	ped.int_idapedido as 'ID',
	CONCAT(cli.vhr_nome, ' ', cli.vhr_sobrenome) AS 'Cliente',
	cli.vhr_cpf AS 'CPF',
	cli.vhr_telefone AS 'Telefone',
	CONCAT(ven.vhr_nome, ' ', ven.vhr_sobrenome) AS 'Vendedor',
	pro.vhr_nome AS 'Produto',
	cat.vhr_categoria AS 'Categoria',
	tam.vhr_tamanho AS 'Tamanho',
	cor.vhr_cor AS 'Cor',
	CONCAT('R$ ', pro.flt_vlrunit) AS 'Valor (R$)'
FROM ta_itempedido principal
INNER JOIN tb_produto pro
	ON pro.int_idaproduto = principal.int_idfproduto
INNER JOIN ta_pedido ped
	ON ped.int_idapedido = principal.int_idfpedido
INNER JOIN tb_vendedor ven
	ON ven.int_idavendedor = ped.int_idfvendedor
INNER JOIN tb_cliente cli
	ON cli.int_idacliente = ped.int_idfcliente
INNER JOIN td_categoria cat
	ON cat.int_idacategoria = pro.int_idfcategoria
INNER JOIN td_tamanho tam
	ON tam.int_idatamanho = pro.int_idftamanho
INNER JOIN	td_cor cor
	ON cor.int_idacor = pro.int_idfcor;

-- insert
-- Cliente 1
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (1, 1);
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (2, 1);

-- Cliente 2
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (3, 2);

-- Cliente 3
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (4, 3);
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (5, 3);
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (6, 3);

-- Cliente 4
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (22, 4);
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (23, 4);

-- Cliente 5
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (27, 5);
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (28, 5);
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (7, 5);

-- Cliente 6
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (21, 6);
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (8, 6);
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (9, 6);
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (100, 6);

-- Cliente 7
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (101, 7);
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (17, 7);
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (35, 7);
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (78, 7);

-- Cliente 8
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (95, 8);

-- Cliente 1
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (75, 9);
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (78, 9);

-- Cliente 8
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (15, 10);
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (16, 10);

-- Cliente 9
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (110, 11);
INSERT INTO ta_itempedido (int_idfproduto, int_idfpedido) VALUES (110, 11);