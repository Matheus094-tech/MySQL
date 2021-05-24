create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
entrega_domicilio boolean not null,
entrega_balcao boolean not null,
generico boolean not null,
categoria varchar (255) not null,
primary key (id)
);

select * from tb_categoria;

insert into tb_categoria (entrega_domicilio, entrega_balcao, generico, categoria) values (false, true, true, "Antibiótico");
insert into tb_categoria (entrega_domicilio, entrega_balcao, generico, categoria) values (false, true, true, "Antibiótico");
insert into tb_categoria (entrega_domicilio, entrega_balcao, generico, categoria) values (true, false, false, "Antialérgicos");
insert into tb_categoria (entrega_domicilio, entrega_balcao, generico, categoria) values (true, true, true, "Estômago");
insert into tb_categoria (entrega_domicilio, entrega_balcao, generico, categoria) values (true, false, true, "Outros");

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
fabricante varchar (255) not null,
valor double not null,
quantidade bigint,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

select * from tb_produto;

insert into tb_produto (nome, fabricante, valor, quantidade, categoria_id) values ("Loratadina", "Neo Quimica", 12.99, 5, 3);
insert into tb_produto (nome, fabricante, valor, quantidade, categoria_id) values ("Polaramine", "Neo Quimica", 22.99, 7, 3);
insert into tb_produto (nome, fabricante, valor, quantidade, categoria_id) values ("Omeprazol", "Neo Quimica", 25.99, 8, 4);
insert into tb_produto (nome, fabricante, valor, quantidade, categoria_id) values ("Finasterida", "Neo Quimica", 12.99, 10, 5);
insert into tb_produto (nome, fabricante, valor, quantidade, categoria_id) values ("Dorflex", "Generico", 3.99, 50, 5);
insert into tb_produto (nome, fabricante, valor, quantidade, categoria_id) values ("Doril", "Generico", 2.99, 35, 5);
insert into tb_produto (nome, fabricante, valor, quantidade, categoria_id) values ("Benegrip", "Generico", 7.99, 18, 5);
insert into tb_produto (nome, fabricante, valor, quantidade, categoria_id) values ("Dipirona", "Generico", 2.88, 25, 5);

select *
from tb_produto
where valor > 50;

select *
from tb_produto
where valor between 3 and 60;

select * from tb_produto where nome like "%B%";

select * from tb_produto 
inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto where categoria_id = 5;