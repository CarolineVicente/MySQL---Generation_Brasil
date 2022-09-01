/*
Atividade 2

1- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
2- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
3- Insira nesta tabela no mínimo 8 dados (registros).
4- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
5- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
6-Ao término atualize um registro desta tabela através de uma query de atualização.
7- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

CREATE DATABASE tb_ecommerce;
USE tb_ecommerce;

CREATE TABLE tb_produtos(
produto varchar(200),
preco decimal(7,2),
estoque int,
cor varchar(50),
fabricante varchar(200),
primary key(produto)
);

ALTER TABLE tb_produtos MODIFY preco decimal(7,2);

INSERT INTO tb_produtos(produto, preco, estoque, cor, fabricante)
VALUES ("Playstation 5", 4500.0, 53, "branco", "Sony");

INSERT INTO tb_produtos(produto, preco, estoque, cor, fabricante)
VALUES ("Controle Playstation 5", 400.0, 10, "branco", "Sony");

INSERT INTO tb_produtos(produto, preco, estoque, cor, fabricante)
VALUES ("Controle XBOX ONE", 350.0, 15, "preto", "Microsoft");

INSERT INTO tb_produtos(produto, preco, estoque, cor, fabricante)
VALUES ("XBOX ONE", 3500.0, 70, "preto", "Microsoft");

INSERT INTO tb_produtos(produto, preco, estoque, cor, fabricante)
VALUES ("Headset Gamer Razer Kraken X", 450.90, 70, "preto", "Razer");

INSERT INTO tb_produtos(produto, preco, estoque, cor, fabricante)
VALUES ("Headset Gamer Sem Fio Razer Opus X ", 800.90, 70, "rosa", "Razer");

INSERT INTO tb_produtos(produto, preco, estoque, cor, fabricante)
VALUES ("Cadeira Gamer Alpha Gamer Polaris Racing", 1349.99, 70, "black red", "Alpha Gamer");

INSERT INTO tb_produtos(produto, preco, estoque, cor, fabricante)
VALUES ("Cadeira Gamer Alpha Gamer Zeta Black Blue", 1349.99, 50, "black blue", "Alpha Gamer");

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

SELECT * FROM tb_produtos;


