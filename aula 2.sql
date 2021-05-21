create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Bovino", true);
insert tb_categoria (descricao, ativo) values ("Ave", true);
insert tb_categoria (descricao, ativo) values ("Picanha", true);
insert tb_categoria (descricao, ativo) values ("Bacon", true);


select * from tb_categoria; 

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
preco float not null,
categoria_id bigint,
qtProduto bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Bovino",40.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Ave",20.00,30,2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Picanha",60.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Bacon",15.00,30,4);


select * from tb_produtos;


select * from tb_produtos where nome = "Bovino";

select * from tb_produtos where nome like "%B%";

select *
from tb_produtos
where preco IN (20,30,40);

select *
from tb_produtos
where preco between 20 and 40;

select count(*) from tb_produtos; 

select avg(preco) as media from tb_produtos;

select sum(preco) from tb_produtos;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;