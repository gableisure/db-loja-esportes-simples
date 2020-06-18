-- create
CREATE TABLE td_categoria (
	int_idacategoria int primary key auto_increment,
	vhr_categoria varchar(20) not null
);

-- insert
INSERT INTO td_categoria (vhr_categoria) VALUES ('Tênis');
INSERT INTO td_categoria (vhr_categoria) VALUES ('Camisa');
