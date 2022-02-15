create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(

id bigint auto_increment,
departamento varchar (255) not null,
primary key(id));

insert into tb_categoria (departamento) values ("Decoração");
insert into tb_categoria (departamento) values ("Ferramentas");
insert into tb_categoria (departamento) values ("Materiais de Construção");

create table tb_produto(

id bigint auto_increment,
nome varchar (255) not null,
marca varchar (255) not null, 
preco decimal (8,2),
promocao varchar (3) not null,
quantidade int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id));

insert into tb_produto(nome, marca, preco, promocao, quantidade, categoria_id) values ("Cortina -  Blackout", "inspire", 159.99, "Sim", 2, 1);
insert into tb_produto(nome, marca, preco, promocao, quantidade, categoria_id) values ("Capacete - Aba Frotal", "Delta Plus", 12.99, "Não", 1, 2);
insert into tb_produto(nome, marca, preco, promocao, quantidade, categoria_id) values ("Furadeira", "Hammer", 159.90, "Não", 3, 2);
insert into tb_produto(nome, marca, preco, promocao, quantidade, categoria_id) values ("Combo - Furadeira e Parafusadeira", "Makita", 1299.99, "Sim", 4, 2);
insert into tb_produto(nome, marca, preco, promocao, quantidade, categoria_id) values ("Serra Mármore", "Bosch", 436.90, "Sim", 10, 2);
insert into tb_produto(nome, marca, preco, promocao, quantidade, categoria_id) values ("Cimento - 5Kg", "Fortaleza", 28.99, "Não", 5, 3);
insert into tb_produto(nome, marca, preco, promocao, quantidade, categoria_id) values ("Caixa D'água - 1000L", "Fortlev", 349.99, "Não", 1, 3);
insert into tb_produto(nome, marca, preco, promocao, quantidade, categoria_id) values ("Tinta Branca - Fosca - 20L", "Coral", 69.99, "Sim", 15, 3);

-- produtos com preço superior a 50
select * from tb_produto where preco > 50;

-- produtos com preços entre 3 e 60
select * from tb_produto where preco between 3 and 60;

-- produtos que tem a letra C
select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 3;
