create database db_ecommerce;

use db_ecommerce;

create table tb_product(

id bigint auto_increment,
genero varchar (255) not null,
nome varchar (255) not null, 
preco decimal not null,
estoque int,

primary key(id));

insert into tb_product(genero, nome, preco, estoque) values ("Computadores/Informática", "MacBook Pro M1", 36000.00, 5);
insert into tb_product(genero, nome, preco, estoque) values ("Games/Consoles", "Playstation 5", 8000.00, 1);
insert into tb_product(genero, nome, preco, estoque) values ("Livros", "Os sete maridos de Evelyn Hugo", 37.99, 10);
insert into tb_product(genero, nome, preco, estoque) values ("Ferramentas/Construção", "Furadeira", 380.90, 30);
insert into tb_product(genero, nome, preco, estoque) values ("Esportes/Aventura/Lazer", "Bola de Futebol - Penalty", 120.50, 25);
insert into tb_product(genero, nome, preco, estoque) values ("Cozinha", "Frigideira AntiAderente", 499.99, 40);
insert into tb_product(genero, nome, preco, estoque) values ("Brinquedos", "Lego Star Wars - Millenium Falcon", 1600.00, 2);
insert into tb_product(genero, nome, preco, estoque) values ("Jogos", "Detetive", 199.99, 13);

alter table tb_product modify preco decimal(10,2);

-- produtos com o valor maior do que 500
select * from tb_product where preco > 500;

-- produtos com o valor menor do que 600
select * from tb_product where preco < 500;

-- dar uma atualizada
update tb_product set estoque = 0 where id =  6;

select * from tb_product;