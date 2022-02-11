create database db_rh2;

use db_rh;

create table tb_infos(

id bigint auto_increment,
nome varchar(255) not null,
idade int,
salario decimal not null,
funcao varchar(255) not null,

primary key(id)
);

insert into tb_infos(nome, idade, salario, funcao) values ("Luna", 22, 10000.00, "CEO");
insert into tb_infos(nome, idade, salario, funcao) values ("Laura", 23, 5000.00, "Gerente");
insert into tb_infos(nome, idade, salario, funcao) values ("Arthur", 20,  3000.00, "Gestor de Projetos");
insert into tb_infos(nome, idade, salario, funcao) values ("Isabella", 21,  2000.00, "Dev de jogos pleno");
insert into tb_infos(nome, idade, salario, funcao) values ("Victor", 24,  1300.00, "Estagiário");

select * from tb_infos;

alter table tb_infos modify salario decimal(10,2);
 
 -- retorna os funcionarios com salario maior do que 2000
select * from tb_infos where salario >= 2000; 
 -- retorna os funcionarios com salario menor de 2000
select * from tb_infos where salario < 2000;

-- alterou o salario do id = 5
update tb_infos set salario = 1500.00 where id = 5;
