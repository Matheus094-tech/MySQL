create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(50) not null,
preco float not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (descricao, ativo) values ("Suino",true);
insert into tb_categoria (descricao, ativo) values ("Bovino", true);
insert into tb_categoria (descricao, ativo) values ("Aves",true);
insert into tb_categoria (descricao, ativo) values ("Outros",true);

insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Picanha",61.99,40,1);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Coxa de frango",18.99,35,3);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Peito de frango",20.99,30,3);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Cupim",16.99,25,1);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Mocoto",15.99,19,1);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Salame",24.99,56,4);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Medalhao",45.89,47,1);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Bacon",16.99,55,2);

select * from tb_produto where preco >50.00;
select * from tb_produto where preco >3.00 and preco <60.00;
select * from tb_produto where nome like "%C%";


select * from tb_produto 
inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto where categoria_id = 1;

