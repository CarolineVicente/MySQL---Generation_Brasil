/*
Atividade 3
1- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
2- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
3- Insira nesta tabela no mínimo 8 dados (registros).
4- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
5- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
6- Ao término atualize um registro desta tabela através de uma query de atualização.
7- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

CREATE DATABASE tb_escola;
USE tb_escola;

CREATE TABLE tb_alunos(
ra int,
nome varchar(200),
turma varchar(3),
nota int,
semestre int,
primary key(ra)
);

INSERT tb_alunos (ra, nome, turma, nota, semestre)
VALUE (12364, "Jemeremias", "5ºD", 10, 1);

INSERT tb_alunos (ra, nome, turma, nota, semestre)
VALUE (12363, "Carlos", "5ºD", 3, 1);

INSERT tb_alunos (ra, nome, turma, nota, semestre)
VALUE (12362, "Lualinda", "5ºD", 6, 1);

INSERT tb_alunos (ra, nome, turma, nota, semestre)
VALUE (12359, "Fabricio", "5ºD", 4, 1);

INSERT tb_alunos (ra, nome, turma, nota, semestre)
VALUE (12360, "Fabio", "5ºD", 7, 1);

INSERT tb_alunos (ra, nome, turma, nota, semestre)
VALUE (12354, "João", "5ºD", 9, 1);

INSERT tb_alunos (ra, nome, turma, nota, semestre)
VALUE (12358,"Karol", "5ºD", 10, 1);

INSERT tb_alunos (ra, nome, turma, nota, semestre)
VALUE (12353,"Mario", "5ºD", 8, 1);

SELECT * FROM tb_alunos WHERE nota > 7;

SELECT * FROM tb_alunos WHERE nota < 7;

SELECT * FROM tb_alunos;



