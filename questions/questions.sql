-- Expressões regulares
-- 1.	Mostre todos os tênis que possuem a cor branca.
SELECT 
    principal.int_idaproduto AS 'ID',
	principal.vhr_nome AS 'Produto',
	CONCAT('R$ ', principal.flt_vlrunit) AS 'Valor (R$)',
	cat.vhr_categoria AS 'Categoria',
	tam.vhr_tamanho AS 'Tamanho',
	cor.vhr_cor AS 'Cor'
FROM tb_produto principal
INNER JOIN td_categoria cat
	ON cat.int_idacategoria = principal.int_idfcategoria
INNER JOIN td_tamanho tam
	ON	tam.int_idatamanho = principal.int_idftamanho
INNER JOIN	td_cor cor
	ON	cor.int_idacor = principal.int_idfcor
WHERE cor.vhr_cor REGEXP '(branca)';

-- 2. Mostre a quantidade de tênis que possuem a cor vermelha.
SELECT 
    COUNT(*) AS 'Quantidade'
FROM tb_produto principal
INNER JOIN td_categoria cat
	ON cat.int_idacategoria = principal.int_idfcategoria
INNER JOIN td_tamanho tam
	ON	tam.int_idatamanho = principal.int_idftamanho
INNER JOIN	td_cor cor
	ON	cor.int_idacor = principal.int_idfcor
WHERE cor.vhr_cor REGEXP '(vermelha)';

-- Cálculo com datas
-- 3. Mostre todas as vendas realizadas a uma semana atrás, a contar de hoje.
SELECT
	ped.int_idapedido as 'ID',
	CONCAT(cli.vhr_nome, ' ', cli.vhr_sobrenome) AS 'Cliente',
	pro.vhr_nome AS 'Produto',
	cat.vhr_categoria AS 'Categoria',
	tam.vhr_tamanho AS 'Tamanho',
	cor.vhr_cor AS 'Cor',
	ped.dtt_pedido AS 'Data',
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
WHERE ped.dtt_pedido BETWEEN date_sub(curdate(), interval 7 day) AND curdate()
ORDER BY ped.dtt_pedido ASC;

-- 4. Mostre o ID, o nome completo, a data de nascimento e a idade de todos os clientes cadastrados.
SELECT 
	int_idacliente AS 'ID',
	CONCAT(vhr_nome, ' ', vhr_sobrenome) AS 'Cliente',
	dtt_nascimento AS 'Data de nascimento',
	TIMESTAMPDIFF(YEAR, dtt_nascimento, curdate()) AS 'Idade'
FROM tb_cliente;

-- Funções de agregação coma a cláusula having
-- 5. Deseja-se saber quais produtos estão com menos de 10 quantidades a venda. Para isso mostre a quantidade de tênis por tipo.
SELECT 
	vhr_nome AS 'Produto',
	COUNT(int_idaproduto) AS 'Quantidade'
FROM tb_produto
GROUP BY vhr_nome
HAVING COUNT(int_idaproduto) < 10
ORDER BY COUNT(int_idaproduto) DESC;

-- 6. Mostre o ID, o nome completo e quantidade de vendas dos funcionários que realizaram mais de 5 vendas.
SELECT 
	ven.int_idavendedor AS 'ID',
	CONCAT(ven.vhr_nome, ' ', ven.vhr_sobrenome) AS 'Vendedor',
	COUNT(principal.int_idapedido) AS 'Total de vendas'
FROM ta_pedido principal
INNER JOIN tb_vendedor ven
	ON ven.int_idavendedor = principal.int_idfvendedor
GROUP BY ven.int_idavendedor
HAVING COUNT(principal.int_idapedido) >= 5;

-- Subquery
-- 7. Mostre os clientes que possuem idade maior que a média das idades dos clientes.
SELECT
  int_idacliente AS 'ID',
  CONCAT(vhr_nome, ' ', vhr_sobrenome) AS 'Cliente',
  dtt_nascimento AS 'Data de nascimento',
  TIMESTAMPDIFF(YEAR, dtt_nascimento, curdate()) AS 'Idade'
FROM tb_cliente
WHERE TIMESTAMPDIFF(YEAR, dtt_nascimento, curdate()) > (SELECT
  AVG(TIMESTAMPDIFF(YEAR, dtt_nascimento, curdate()))
FROM tb_cliente);

-- 8. Mostre todos os tênis que possuem valor unitário maior que a média dos valores unitários dos tênis.
SELECT 
	principal.int_idaproduto AS 'ID',
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
	ON	cor.int_idacor = principal.int_idfcor
WHERE flt_vlrunit > (SELECT AVG(flt_vlrunit) FROM tb_produto);

-- Limit
-- 9. Mostre os 100 primeiros produtos cadastrados.
SELECT
	principal.int_idaproduto AS 'ID',
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
	ON	cor.int_idacor = principal.int_idfcor
ORDER BY principal.int_idaproduto
LIMIT 100;

-- 10. Mostre os 5 primeiros clientes cadastrados.
SELECT 
	int_idacliente AS 'ID',
	CONCAT(vhr_nome, ' ', vhr_sobrenome) AS 'Cliente',
	dtt_nascimento AS 'Data de nascimento',
	vhr_cpf AS 'CPF',
	vhr_endereco AS 'Endereço',
	vhr_telefone AS 'Telefone'
FROM tb_cliente
ORDER BY int_idacliente
LIMIT 5;
	



	


