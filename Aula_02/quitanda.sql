-- criar o banco de dados db_quitanda
create database db_quitanda; -- o ; indica que a linha está finalizada

-- seleciona o db_quitanda
use db_quitanda;

-- criar tabela com os produtos
create table tb_product(
-- atributos (colunas)
-- id: codigo de identificação do produto
id bigint auto_increment,
nome varchar(255) not null,  
quantidade int, 
preco decimal,
primary key(id)
);

insert into tb_product(nome, quantidade, preco) 
values ("Maçã", 10, 1.99);
insert into tb_product(nome, quantidade, preco) 
values ("Banana", 13, 4.99);
insert into tb_product(nome, quantidade, preco) 
values ("Coca Cola", 20, 7.99);
insert into tb_product(nome, quantidade, preco) 
values ("Manga", 3, 5.49);
insert into tb_product(nome, quantidade, preco) 
values ("Cebola", 100, 1.50);

-- mostra o que tem na tabela
select * from tb_product;

-- atualizar
update tb_product set preco = 2.99 where id = 1;

-- atualizando a descrição do id 4 
update tb_product set descricao = "Banana ouro" where id = 4;

-- deletar
delete from tb_product where id = 3;

-- modifica a estrutura da tabela
alter table tb_product modify preco decimal(8,2);

-- adiciona uma nova coluna na tabela
alter table tb_product add descricao varchar(255);