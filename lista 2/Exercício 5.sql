create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(50) not null,
ativo boolean not null,
promocao boolean not null,
primary key(id)
);

select * from tb_categoria;

insert into tb_categoria (categoria, ativo, promocao) values ("Telhado", true, true);
insert into tb_categoria (categoria, ativo, promocao) values ("Cozinha", true, false);
insert into tb_categoria (categoria, ativo, promocao) values ("Sala", true, false);
insert into tb_categoria (categoria, ativo, promocao) values ("Banheiro", true, true);
insert into tb_categoria (categoria, ativo, promocao) values ("Quarto", true, false);

create table tb_produto(
id bigint auto_increment,
produto varchar(255) not null,
valor double not null,
descrição varchar(255) not null,
quantidade bigint not null,
categoria_id bigint not null,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

select * from tb_produto;

insert into tb_produto (produto, valor, descrição, quantidade, categoria_id) values ("Telha", 11.99, "Transparente", 50, 1);
insert into tb_produto (produto, valor, descrição, quantidade, categoria_id) values ("Pia", 29.99, "Com torneira", 40, 2);
insert into tb_produto (produto, valor, descrição, quantidade, categoria_id) values ("Vaso Sanitario", 51.99, "Com tampa", 50, 4);
insert into tb_produto (produto, valor, descrição, quantidade, categoria_id) values ("Piso", 11.99, "Xadrez", 50, 3);
insert into tb_produto (produto, valor, descrição, quantidade, categoria_id) values ("Janela", 19.99, "Aço", 50, 4);
insert into tb_produto (produto, valor, descrição, quantidade, categoria_id) values ("Porta", 18.99, "Abertura 90cm", 50, 3);
insert into tb_produto (produto, valor, descrição, quantidade, categoria_id) values ("Tomada", 4.99, "10A", 50, 5);
insert into tb_produto (produto, valor, descrição, quantidade, categoria_id) values ("Tomada", 4.99, "20A", 50, 5);

select *
from tb_produto
where valor > 50;

select *
from tb_produto
where valor between 3 and 60;

select *
from tb_produto
where produto like "%C%";

select * from tb_produto 
inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;

select *
from tb_produto
where categoria_id = 3;