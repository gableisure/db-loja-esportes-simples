-- create
CREATE TABLE tb_cliente (
	int_idacliente int primary key auto_increment,
    vhr_nome varchar(15) not null,
    vhr_sobrenome varchar(50) not null,
    dtt_nascimento date not null,
    vhr_cpf varchar(11) unique not null,
    vhr_endereco varchar(100) not null,
    vhr_telefone varchar(17) not null
);

-- Lista de clientes
SELECT 
	int_idacliente AS 'ID',
	CONCAT(vhr_nome, ' ', vhr_sobrenome) AS 'Cliente',
	dtt_nascimento AS 'Data de nascimento',
	vhr_cpf AS 'CPF',
	vhr_endereco AS 'Endereço',
	vhr_telefone AS 'Telefone'
FROM tb_cliente;

-- Total de clientes
SELECT 
	COUNT(*) AS 'Total de clientes'
FROM tb_cliente;

-- insert
INSERT INTO tb_cliente (vhr_nome, vhr_sobrenome, dtt_nascimento, vhr_cpf, vhr_endereco, vhr_telefone)* 
	VALUES ('Lucas', 'Emanuel Pinho da Silva', '1996-11-11', '12342563214', 'Rua das Plameiras Conj. 5 Lote 22', '61981661088');

INSERT INTO tb_cliente (vhr_nome, vhr_sobrenome, dtt_nascimento, vhr_cpf, vhr_endereco, vhr_telefone) *
	VALUES ('Fernando', 'Lima Ferreira', '1995-10-22', '76315984301', 'Av. Contorno conj Q lote 56', '6234350135');

INSERT INTO tb_cliente (vhr_nome, vhr_sobrenome, dtt_nascimento, vhr_cpf, vhr_endereco, vhr_telefone) 
	VALUES ('Laine', 'Karolaine Silva', '2000-05-12', '05236974180', 'QRO A conj Q lote 43 Candogolândia-DF', '6178996321');

INSERT INTO tb_cliente (vhr_nome, vhr_sobrenome, dtt_nascimento, vhr_cpf, vhr_endereco, vhr_telefone) 
	VALUES ('Josenilton', 'Santos da Brenha', '1986-02-02', '23896388732', 'Av. das nações bloco 303 lote 3001 Lagoa Azul', '6187453216');

INSERT INTO tb_cliente (vhr_nome, vhr_sobrenome, dtt_nascimento, vhr_cpf, vhr_endereco, vhr_telefone) 
	VALUES ('Renê', 'Boaventura Junior', '1990-02-21', '02314566698', 'QRI B conj 7 lote 22 apt 306', '61998223511');

INSERT INTO tb_cliente (vhr_nome, vhr_sobrenome, dtt_nascimento, vhr_cpf, vhr_endereco, vhr_telefone) 
	VALUES ('Gabriela', 'Fernandes Lima da Silva', '2002-07-30', '12322254598', 'Av. Castanheiras Rua 35 lote 303 Apt 709 Residencial Caliendra', '61985629713');
	
INSERT INTO tb_cliente (vhr_nome, vhr_sobrenome, dtt_nascimento, vhr_cpf, vhr_endereco, vhr_telefone) 
	VALUES ('José', 'Gomes Fayad', '1978-09-22', '02314588214', 'Av. Parque Águas Claras rua 34 sul lote 10 apt 603 Residencial Joinville', '61984552266');

INSERT INTO tb_cliente (vhr_nome, vhr_sobrenome, dtt_nascimento, vhr_cpf, vhr_endereco, vhr_telefone) 
	VALUES ('Olavo', 'Haddad Color', '1965-11-06', '03211455598', 'Rua Martim Gomes número 22 lote 36 Em frente a paradia Doce Pão', '61985663210');

INSERT INTO tb_cliente (vhr_nome, vhr_sobrenome, dtt_nascimento, vhr_cpf, vhr_endereco, vhr_telefone) 
	VALUES ('Victor', 'Sampaio Paulino', '1992-01-06', '77842395168', 'SHA Chácara 96 conj. 5 lote 01 Residencial Mirante Arniqueiras', '61984651922');

