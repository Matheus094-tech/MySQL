create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_curso(
id bigint auto_increment,
EAD boolean not null,
promocao boolean not null,
categoria varchar (255),
primary key (id)
);

select * from tb_curso;

insert into tb_curso (EAD, promocao, categoria) values (true, true, "Matemática");
insert into tb_curso (EAD, promocao, categoria) values (true, false, "Programação");
insert into tb_curso (EAD, promocao, categoria) values (false, true, "Gramática");
insert into tb_curso (EAD, promocao, categoria) values (false, true, "Outros");
insert into tb_curso (EAD, promocao, categoria) values (false, false, "Outros");


create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
valor double not null,
semana_toda boolean not null,
carga_horaria bigint,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_curso(id)
);

insert into tb_produto (nome, valor, semana_toda, carga_horaria, categoria_id) values ("Excel Avançado", 899.99, true, 48, 4);
insert into tb_produto (nome, valor, semana_toda, carga_horaria, categoria_id) values ("Excel Avançado", 1199.99, false, 48, 5);
insert into tb_produto (nome, valor, semana_toda, carga_horaria, categoria_id) values ("Java ", 1555.99, true, 110, 2);
insert into tb_produto (nome, valor, semana_toda, carga_horaria, categoria_id) values ("Fundamentos de Matemática ", 399.99, true, 15, 1);
insert into tb_produto (nome, valor, semana_toda, carga_horaria, categoria_id) values ("Algoritmos", 299.99, true, 10, 1);
insert into tb_produto (nome, valor, semana_toda, carga_horaria, categoria_id) values ("HTML", 499.99, true, 12, 2);
insert into tb_produto (nome, valor, semana_toda, carga_horaria, categoria_id) values ("Python", 999.99, true, 30, 2);
insert into tb_produto (nome, valor, semana_toda, carga_horaria, categoria_id) values ("Conjuntos", 199.99, true, 25, 1);

select *
from tb_produto
where valor >50;

select *
from tb_produto
where valor between 3 and 60;

select *
from tb_produto
where nome like "%J%";

select * from tb_produto 
inner join tb_curso
on tb_produto.categoria_id = tb_curso.id;

select *
from tb_produto
where categoria_id = 2;