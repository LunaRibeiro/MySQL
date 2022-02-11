create database db_escola;

use db_escola;

create table tb_infos(

id bigint auto_increment,
nome varchar (255) not null,
idade int, 
nota decimal not null, 
turma int,

primary key (id));


insert into tb_infos (nome, idade, nota, turma) values ("Luna", 13, 10, 44); 
insert into tb_infos (nome, idade, nota, turma) values ("Laura", 14, 8, 42); 
insert into tb_infos (nome, idade, nota, turma) values ("Isabella", 12, 5, 35); 
insert into tb_infos (nome, idade, nota, turma) values ("Arthur", 10, 4, 22); 
insert into tb_infos (nome, idade, nota, turma) values ("Victor", 16, 0, 24); 

select * from tb_infos;

-- notas maiores do que 7
select * from tb_infos where nota > 7;

-- notas menores do que 7
select * from tb_infos where nota < 7;

update tb_infos set nota = 3 where id = 5;