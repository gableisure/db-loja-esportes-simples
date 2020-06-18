-- create 
CREATE TABLE tb_produto (
	int_idaproduto int primary key auto_increment,
	int_idfcor int not null,
	int_idftamanho int not null,
	int_idfcategoria int not null,
	vhr_nome varchar(100) not null,
	flt_vlrunit float not null,
	CONSTRAINT fk_produto_cor FOREIGN KEY (int_idfcor) REFERENCES td_cor (int_idacor),
	CONSTRAINT fk_produto_tamanho FOREIGN KEY (int_idftamanho) REFERENCES td_tamanho (int_idatamanho),
	CONSTRAINT fk_produto_categoria FOREIGN KEY (int_idfcategoria) REFERENCES td_tcategoria (int_idacategoria)
);

-- Default select
SELECT
	principal.vhr_nome AS 'Produto',
	cat.vhr_categoria AS 'Categoria',
	tam.vhr_tamanho AS 'Tamanho',
	cor.vhr_cor AS 'Cor',
	CONCAT('R$ ', principal.flt_vlrunit) AS 'Valor (R$)'
FROM tb_produto principal
INNER JOIN td_categoria cat
	ON cat.int_idacategoria = principal.int_idfcategoria
INNER JOIN td_tamanho tam
	ON	tam.int_idatamanho = principal.int_idftamanho
INNER JOIN	td_cor cor
	ON	cor.int_idacor = principal.int_idfcor;

-- Todos os produtos com seus respectivos ID
SELECT 
	int_idaproduto AS 'ID', 
	vhr_nome AS 'Produto'
FROM tb_produto;

-- insert
-- Tênis Tam: 35
INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 12, 'Tênis Oxer Slip - Feminino', 69.99);

-- Tênis Tam: 36
INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 6, 13, 'Tênis Oxer Slip - Feminino', 69.99);

-- Tênis Tam: 37
INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 6, 14, 'Tênis Oxer Slip - Feminino', 69.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 10, 14, 'Tênis Oxer Slip - Feminino', 69.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 6, 14, 'Tênis Nike Shox R4 - Masculino', 399.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 14, 'Tênis Nike Shox R4 - Masculino', 399.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 14, 'Tênis Puma Smash V2 - Unissex', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 14, 'Tênis Puma Smash V2 - Unissex', 179.99);

-- Tênis Tam: 38
INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 15, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 15, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 15, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 9, 15, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 5, 15, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 15, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 12, 15, 'Tênis adidas UltraBoost PB - Masculino', 899.99);


-- Tênis Tam: 39
INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 16, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 16, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 16, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 9, 16, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 5, 16, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 16, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 12, 16, 'Tênis adidas UltraBoost PB - Masculino', 899.99);
	
-- Tênis Tam: 40
INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 17, 'Tênis Nike Revolution 5 - Masculino', 279.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 17, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 17, 'Tênis Olympikus 130G Ultraleve - Feminino', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 17, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 17, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 17, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 9, 17, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 5, 17, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 17, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 12, 17, 'Tênis adidas UltraBoost PB - Masculino', 899.99);

-- Tênis Tam: 41
INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 18, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 18, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 18, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 3, 18, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 18, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 18, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 18, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 18, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 9, 18, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 5, 18, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 18, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 12, 18, 'Tênis adidas UltraBoost PB - Masculino', 899.99);


-- Tênis Tam: 42
INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 19, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 5, 19, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 19, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 19, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 3, 19, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 19, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 19, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 19, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 19, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 9, 19, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 5, 19, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 19, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 12, 19, 'Tênis adidas UltraBoost PB - Masculino', 899.99);

-- Tênis Tam: 43
INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 20, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 6, 20, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 20, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 20, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 20, 'Tênis Puma Smash V2 - Unissex', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 20, 'Tênis Puma Smash V2 - Unissex', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 20, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 20, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 3, 20, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 20, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 20, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 20, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 20, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 9, 20, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 5, 20, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 20, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 12, 20, 'Tênis adidas UltraBoost PB - Masculino', 899.99);

-- Tênis Tam: 44
INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 21, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 6, 21, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 21, 'Tênis Puma Smash V2 - Unissex', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 21, 'Tênis Puma Smash V2 - Unissex', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 11, 21, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 11, 21, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 21, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 21, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 21, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 21, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 21, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 9, 21, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 5, 21, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 21, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 12, 21, 'Tênis adidas UltraBoost PB - Masculino', 899.99);

-- Tênis Tam: 45
INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 22, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 6, 22, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 22, 'Tênis Puma Smash V2 - Unissex', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 22, 'Tênis Puma Smash V2 - Unissex', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 11, 22, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 11, 22, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 22, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 22, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 22, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 22, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 22, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 9, 22, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 5, 22, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 22, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 12, 22, 'Tênis adidas UltraBoost PB - Masculino', 899.99);

-- Tênis Tam: 46
INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 23, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 6, 23, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 23, 'Tênis Puma Smash V2 - Unissex', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 23, 'Tênis Puma Smash V2 - Unissex', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 11, 23, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 11, 23, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 23, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 23, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 23, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 23, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 23, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 9, 23, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 5, 23, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 23, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 12, 23, 'Tênis adidas UltraBoost PB - Masculino', 899.99);

-- Tênis Tam: 47
INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 24, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 6, 24, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 24, 'Tênis Puma Smash V2 - Unissex', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 24, 'Tênis Puma Smash V2 - Unissex', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 11, 24, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 11, 24, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 24, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 24, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 24, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 24, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 24, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 9, 24, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 5, 24, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 24, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 12, 24, 'Tênis adidas UltraBoost PB - Masculino', 899.99);

-- Tênis Tam: 48
INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 25, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 6, 25, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 25, 'Tênis Puma Smash V2 - Unissex', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 25, 'Tênis Puma Smash V2 - Unissex', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 11, 25, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 11, 25, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 25, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 25, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 25, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 25, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 25, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 9, 25, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 5, 25, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 25, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 12, 25, 'Tênis adidas UltraBoost PB - Masculino', 899.99);

-- Tênis Tam: 49
INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 26, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 6, 26, 'Tênis New Balance ML501 - Masculino', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 26, 'Tênis Puma Smash V2 - Unissex', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 26, 'Tênis Puma Smash V2 - Unissex', 179.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 11, 26, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 11, 26, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 26, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 4, 26, 'Tênis Converse All Star CT AS Core OX CT0001 - Unissex', 159.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 8, 26, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 1, 26, 'Tênis Nike Air Zoom Pegasus 36 - Masculino', 449.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 2, 26, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 9, 26, 'Tênis adidas UltraBoost - Masculino', 599.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 5, 26, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 7, 26, 'Tênis Asics Gel-Sileo - Masculino', 229.99);

INSERT INTO tb_produto (int_idfcategoria, int_idfcor, int_idftamanho, vhr_nome, flt_vlrunit)
	VALUES (1, 12, 26, 'Tênis adidas UltraBoost PB - Masculino', 899.99);