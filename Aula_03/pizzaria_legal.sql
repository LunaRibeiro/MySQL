create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(

id bigint auto_increment,
tipo varchar (255) not null, 
primary key (id));

insert into tb_categoria (tipo) values ("Salgada");
insert into tb_categoria (tipo) values ("Doce");
insert into tb_categoria (tipo) values ("Vegana");

create table tb_pizza (

id bigint auto_increment,
sabor varchar (255) not null, 
borda boolean, 
valor decimal (8,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id));

insert into tb_pizza (sabor, borda, valor, categoria_id) values ("Brocolis com catupiry", true, 32.00, 3);
insert into tb_pizza (sabor, borda, valor, categoria_id) values ("Mussarela com Palmitos", true, 38.00, 3);
insert into tb_pizza (sabor, borda, valor, categoria_id) values ("Brigadeiro", false, 40.00, 2);
insert into tb_pizza (sabor, borda, valor, categoria_id) values ("Frango com catupiry", true, 42.00, 1);
insert into tb_pizza (sabor, borda, valor, categoria_id) values ("Banana com canela", false, 40.00, 2);
insert into tb_pizza (sabor, borda, valor, categoria_id) values ("Prestigio", true, 45.00, 2);
insert into tb_pizza (sabor, borda, valor, categoria_id) values ("Abobrinha", true, 42.00, 3);
insert into tb_pizza (sabor, borda, valor, categoria_id) values ("Calabresa", false, 38.00, 1);
insert into tb_pizza (sabor, borda, valor, categoria_id) values ("Quatro queijos", true, 50.00, 1);

select * from tb_pizza;
select * from tb_categoria;

-- produtos com valor maior do que 45 
select * from tb_pizza where valor > 45;

-- produtos com valor entre 29 e 60 reais
select * from tb_pizza where valor between 29 and 60;

-- sabores que contém a letra C
select * from tb_pizza where sabor like "%C%";

-- select para mostrar a tabela pizza junto com a categoria
select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id;

-- select para mostrar somente os sabores que estão na categoria doce
select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 2;
