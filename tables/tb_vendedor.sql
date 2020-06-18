-- create
CREATE TABLE tb_vendedor (
	int_idavendedor int primary key auto_increment,
    vhr_nome varchar(15) not null,
    vhr_sobrenome varchar(50) not null,
    dtt_nascimento date not null,
    dtt_contratacao date not null,
    vhr_telefone varchar(17) not null
);

-- Informações dos vendedores
SELECT
	int_idavendedor AS 'ID',
	CONCAT(vhr_nome, ' ', vhr_sobrenome) AS 'Vendedor',
    dtt_nascimento AS 'Data de nascimento',
    dtt_contratacao AS 'Data de contratação',
    vhr_telefone AS 'Telefone'
FROM tb_vendedor;

-- insert
INSERT INTO tb_vendedor (vhr_nome, vhr_sobrenome, dtt_nascimento, dtt_contratacao, vhr_telefone) 
	VALUES ('João', 'Costa Oliveira', '1990-05-06', '2020-01-06', '6185023697');

INSERT INTO tb_vendedor (vhr_nome, vhr_sobrenome, dtt_nascimento, dtt_contratacao, vhr_telefone) 
	VALUES ('Joana', 'Lima Ribeiro', '1987-04-11', '2016-02-15', '61984523147');

INSERT INTO tb_vendedor (vhr_nome, vhr_sobrenome, dtt_nascimento, dtt_contratacao, vhr_telefone) 
	VALUES ('Gustavo', 'Aprígio', '1997-07-26', '2020-04-26', '61999652531');