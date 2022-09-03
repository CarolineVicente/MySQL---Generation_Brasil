/*
Atividade 1 

Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. O sistema trabalhará com as informações dos personagens do jogo. O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.

Boas Práticas:

1- Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
2- Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.
3- Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
4- Insira 5 registros na tabela tb_classes.
5- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
6- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
7- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
8- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
11- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

CREATE DATABASE db_classes;

-- Selecionar o db_quitanda
USE db_classes;

-- Criar a tabela classe
CREATE TABLE tb_classes(
id bigint auto_increment,
job varchar(255),
arma varchar(255),
primary key(id)
);

-- Insere dados na tabela tb_classes
INSERT tb_classes(job, arma)
VALUE ("Arqueiro", "Arco e Flecha");

INSERT tb_classes(job, arma)
VALUE ("Bardo", "Ministrel");

INSERT tb_classes(job, arma)
VALUE ("Paladino", "Lança de uma mão e Escudo");

INSERT tb_classes(job, arma)
VALUE ("Cavaleiro", "Lança de duas mãos");

INSERT tb_classes(job, arma)
VALUE ("Lanceiro", "Lança");

INSERT tb_classes(job, arma)
VALUE ("Mago", "Vara");

INSERT tb_classes(job, arma)
VALUE ("Sacerdote", "Bíblia");

INSERT tb_classes(job, arma)
VALUE ("Vampiro", "Garras");

INSERT tb_classes(job, arma)
VALUE ("Mercenário", "Adagas");

INSERT tb_classes(job, arma)
VALUE ("Ninja", "Shuriken");

SELECT * FROM tb_classes;

-- Criar a tabela personagem

CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
atributos varchar(255) not null,
poderAtaque int,
poderDefesa int,
lvl int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

-- Insere dados na tabela tb_personagens
INSERT tb_personagens(nome, atributos, poderAtaque, poderDefesa , lvl, classe_id)
VALUE ("Saint Paul", "INT: 99, VIT: 99 , DEX:80, AGI:0, STR:0", " 5000 ", "3000", 70, " 7 ");

INSERT tb_personagens(nome, atributos, poderAtaque, poderDefesa , lvl, classe_id)
VALUE ("Ken", "INT: 0, VIT: 60 , DEX: 50, AGI: 0, STR: 70", " 2000", "1200", "55",  5 );

INSERT tb_personagens(nome, atributos, poderAtaque, poderDefesa,  lvl, classe_id)
VALUE ("BigDragoon", "INT: 99, VIT: 99 , DEX: 50, AGI: 0, STR: 0", " 4000", "7000", 63, " 3 ");

INSERT tb_personagens(nome, atributos, poderAtaque, poderDefesa,  lvl, classe_id)
VALUE ("Bach", "INT: 99, VIT: 30 , DEX: 99, AGI: 30, STR: 0", "4500", "500", 78, " 2 ");

INSERT tb_personagens(nome, atributos, poderAtaque, poderDefesa,  lvl, classe_id)
VALUE ("Lucky7", "INT: 0, VIT: 40 , DEX: 99, AGI: 99, STR: 70", "8000","1500", 99, " 9 ");

INSERT tb_personagens(nome, atributos, poderAtaque, poderDefesa,  lvl, classe_id)
VALUE ("Skaava", "INT: 60, VIT: 30 , DEX: 60, AGI: 0, STR: 0", "1500", "800", 40, " 6 ");

INSERT tb_personagens(nome, atributos, poderAtaque, poderDefesa, lvl, classe_id)
VALUE ("Komine", "INT: 0, VIT: 30 , DEX: 70, AGI: 60, STR: 30", "1900", "1200", 45, " 8 ");

INSERT tb_personagens(nome, atributos, poderAtaque, poderDefesa,  lvl, classe_id)
VALUE ("IceLemon", "INT: 0, VIT: 80 , DEX: 60, AGI: 60, STR: 99", "8200", "5000", 99, " 4 ");

-- Mostrar toda tabela tb_personagem
SELECT * FROM tb_personagens;

-- Mostrar toda tabela tb_personagem que tenham poder menor que 2000
SELECT * FROM tb_personagens WHERE poderAtaque < 2000;

-- Mostrar toda tabela tb_personagem que tenham poder entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poderDefesa BETWEEN 1000 AND 2000;

-- Mostrar toda tabela tb_personagem que tenham a letra "C" em seu nome
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

-- Inner Join (Todas as categorias)
SELECT nome, atributos, poderAtaque, poderDefesa, lvl, tb_classes.job, tb_classes.arma
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;

-- Inner Join (Uma categoria)
SELECT nome, atributos, poderAtaque, poderDefesa, lvl, tb_classes.job, tb_classes.arma
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id WHERE tb_classes.job = "Paladino";
