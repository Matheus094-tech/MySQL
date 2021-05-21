create database db_virtual;
use db_virtual;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(10,2) not null,
categoria varchar(50),
quantidade bigint,
promocao boolean not null,
primary key (id)
);

insert tb_produtos (nome,preco,categoria,quantidade,promocao) values ("Sofá",699.99,"decoração",10,true);
insert tb_produtos (nome,preco,quantidade,promocao) values ("Notebook",5999.99,100,false);
insert tb_produtos (nome,preco,promocao) values ("Celular",2999.99,true);
insert tb_produtos (nome,preco,categoria,promocao) values ("Casa",199999.99,"Imóvel",true);


select * from tb_produtos where preco<500;
select * from tb_produtos where preco>500;

update tb_produtos set quantidade =20 where id=1;