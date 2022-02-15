create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(

id bigint auto_increment,
cursoArea varchar (255) not null,
primary key(id));

insert into tb_categoria (cursoArea) values ("Humanas");
insert into tb_categoria (cursoArea) values ("Exatas");
insert into tb_categoria (cursoArea) values ("Biológicas");

create table tb_curso(

id bigint auto_increment,
nome varchar (255) not null,
duracao varchar (255) not null, 
preco decimal (8,2),
promocao varchar (3) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id));

insert into tb_curso(nome, duracao, preco, promocao, categoria_id) values ("Ciência da Computação", "8 semestres" ,2000.00, "Não", 2);
insert into tb_curso(nome, duracao, preco, promocao, categoria_id) values ("Sistemas da Informação", "8 semestres", 2500.00, "Sim", 2);
insert into tb_curso(nome, duracao, preco, promocao, categoria_id) values ("Enfermagem", "8 semestres", 3000.90, "Não", 3);
insert into tb_curso(nome, duracao, preco, promocao, categoria_id) values ("Licenciatura em Biologia", "10 semestres", 1299.99, "Sim", 3);
insert into tb_curso(nome, duracao, preco, promocao, categoria_id) values ("Licenciatura em História", "10 semestres", 2000.90, "Não", 1);

-- produtos com preço superior a 2000
select * from tb_curso where preco > 2000;

-- produtos com preços entre 3 e 60
select * from tb_curso where preco between 2000 and 3000;

-- produtos que tem a letra S
select * from tb_curso where nome like "%S%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 2;
