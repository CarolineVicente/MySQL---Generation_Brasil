/*
Atividade 1
1- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
2- Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
3- Insira nesta tabela no mínimo 5 dados (registros).
4- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
5- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
6- Ao término atualize um registro desta tabela através de uma query de atualização.
7- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/


CREATE DATABASE tb_empresa;
USE tb_empresa; 

CREATE TABLE tb_funcionarios(
nome varchar(100),
id_func INT,
cpf varchar(14),
salario decimal (10,2),
funcao varchar(200),
primary key (id_func)
);

ALTER TABLE tb_funcionarios MODIFY salario decimal(10,2);

INSERT INTO tb_funcionarios(nome, id_func, cpf, salario, funcao) 
VALUES ("João Vicente", 123459, "145.578.52-54", 10000.50, "Gerente");
 
INSERT INTO tb_funcionarios(nome, id_func, cpf, salario, funcao)
VALUES ("José Carlos", 123453, "145.578.52-55", 3.500, "Administrador");

INSERT INTO tb_funcionarios(nome, id_func, cpf, salario, funcao)
VALUES ("Maria Santos", 123454, "145.578.52-45", 6.500 , "Aux Adm");

INSERT INTO tb_funcionarios(nome, id_func, cpf, salario, funcao)
VALUES ("Ronalda Martins Borges", 123450, "145.578.52-60", 7.500 , "Desenvolvedor(a) Mobile");

INSERT INTO tb_funcionarios(nome, id_func, cpf, salario, funcao)
VALUES ("Carla Souza", 123424, "145.578.52-10", 1.500 , "Desenvolvedor(a) Mobile Jr.");

UPDATE tb_funcionarios SET salario = 1500.00  WHERE id_func = 123424;

SELECT id_func, nome, cpf, salario, funcao FROM tb_funcionarios WHERE salario > 2000;

SELECT id_func, nome, cpf, salario, funcao FROM tb_funcionarios WHERE salario < 2000;

SELECT id_func, nome, cpf, salario, funcao FROM tb_funcionarios;




