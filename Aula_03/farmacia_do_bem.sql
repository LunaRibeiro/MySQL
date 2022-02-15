create database db_farmacia_do_bem;
 
use db_farmacia_do_bem;

create table tb_categoria(

id bigint auto_increment,
tipo varchar (255) not null,
primary key (id));

insert into tb_categoria (tipo) values ("Medicamentos");
insert into tb_categoria (tipo) values ("Genéricos");
insert into tb_categoria (tipo) values ("Beleza e Higiene");
insert into tb_categoria (tipo) values ("Saúde e Bem-estar");

create table tb_produtos(

id bigint auto_increment,
produto varchar (255) not null,
unidades int,
prescricao boolean,
retencao boolean, 
preco decimal (8,2),
promocao boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id));

insert into tb_produtos (produto, unidades, prescricao, retencao, preco, promocao, categoria_id) values ("Venvanse - 38mg", 28, true, true, 273.14, true, 1);
insert into tb_produtos (produto, unidades, prescricao, retencao, preco, promocao, categoria_id) values ("Ritalina - 10mg", 30, true, true, 105.92, false, 1);
insert into tb_produtos (produto, unidades, prescricao, retencao, preco, promocao, categoria_id) values ("Nimesulida - 100mg", 12, false, false, 273.14, true, 2);
insert into tb_produtos (produto, unidades, prescricao, retencao, preco, promocao, categoria_id) values ("Omeprazol - 20mg", 56, false, false, 25.33, true, 2);
insert into tb_produtos (produto, unidades, prescricao, retencao, preco, promocao, categoria_id) values ("Cotonetes", 75, false, false, 3.69, true, 3);
insert into tb_produtos (produto, unidades, prescricao, retencao, preco, promocao, categoria_id) values ("Escova Dental", 3, false, false, 8.99, false, 3);
insert into tb_produtos (produto, unidades, prescricao, retencao, preco, promocao, categoria_id) values ("Repelente Aerosol - BOA - 200ml", 1, false, false, 19.39, false, 4);
insert into tb_produtos (produto, unidades, prescricao, retencao, preco, promocao, categoria_id) values ("Benegrip", 20, false, false, 32.97, false, 2);

select * from tb_categoria;
select * from tb_produtos;

-- produtos com valor superior a 50 reais
select * from tb_produtos where preco > 50;

-- produtos com valor entre 3 e 60 reais
select * from tb_produtos where preco between 3 and 60;

-- produtos com a letra B
select * from tb_produtos where produto like "%b%";

select * from tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

select *from tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 2
