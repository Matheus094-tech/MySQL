create database db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
vegana boolean not null,
doce boolean not null, 
salgada boolean not null,
primary key (id)
);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabor varchar (255),
borda_recheada boolean not null,
recheio_borda varchar (255),
broto boolean not null,
familia boolean not null,
categoria bigint, 
primary key (id),
foreign key (categoria) references tb_categoria (id)
);

select * from tb_pizza;

insert tb_categoria (vegana, doce, salgada) values (true, false, false);
insert tb_categoria (vegana, doce, salgada) values (false, true, false);
insert tb_categoria (vegana, doce, salgada) values (true, true, true);
insert tb_categoria (vegana, doce, salgada) values (false, true, true);
insert tb_categoria (vegana, doce, salgada) values (false, false, true);

insert tb_pizza (sabor, borda_recheada, recheio_borda, broto, familia, categoria) values ("Tradicional", false, "Normal",false,true,5);
insert tb_pizza (sabor, borda_recheada, recheio_borda, broto, familia, categoria) values ("Bacon", false, "Normal",false,true,5);
insert tb_pizza (sabor, borda_recheada, recheio_borda, broto, familia, categoria) values ("Brocolis", false, "Normal",false,true,1);
insert tb_pizza (sabor, borda_recheada, recheio_borda, broto, familia, categoria) values ("Beringela", false, "Normal",false,true,1);
insert tb_pizza (sabor, borda_recheada, recheio_borda, broto, familia, categoria) values ("Portuguesa", true, "Cheddar",false,true,5);
insert tb_pizza (sabor, borda_recheada, recheio_borda, broto, familia, categoria) values ("Mussarela", true, "Catuppiry",false,true,5);
insert tb_pizza (sabor, borda_recheada, recheio_borda, broto, familia, categoria) values ("Calabresa", true, "Vulcão",false,true,5);
insert tb_pizza (sabor, borda_recheada, recheio_borda, broto, familia, categoria) values ("Brigadeiro", false, "Normal",false,true,2);

alter table tb_pizza
add valor bigint;

alter table tb_pizza change valor valor float;

update tb_pizza set valor = 40.00 where id = 1;
update tb_pizza set valor = 38.00 where id = 2;
update tb_pizza set valor = 45.00where id = 3;
update tb_pizza set valor = 51.00 where id = 4;
update tb_pizza set valor = 47.00 where id = 5;
update tb_pizza set valor = 35.00 where id = 6;
update tb_pizza set valor = 48.00 where id = 7;
update tb_pizza set valor = 60.00 where id = 8;

select *
from tb_pizza
where valor > 45;

select *
from tb_pizza
where valor between 29 and 60;

select * from tb_pizza where sabor like "%C%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria;

select *
from tb_pizza
where categoria = 5;