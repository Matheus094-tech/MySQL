-- criar um banco de dados
create database db_quitanda;

-- acessar o banco de dados
use db_quitanda;

create table tb_produtos(
id  bigint auto_increment,
nome varchar(255) not null,
preco float not null,
primary key (id)
);

-- busca de dados  * = pra puxar todas as colunas 
select * from tb_produtos;

-- inserindo dados na tabela
insert into tb_produtos (nome, preco) values ("uva",5);

-- atualizar
update tb_produtos set preco = 7 where id = 4;

-- deletar
delete from tb_produtos where id = 4;

-- adicionar nova coluna
alter table tb_produtos
add descricao varchar (255);

-- alterar coluna
alter table tb_produtos change descricao descricao_produtos varchar (255);

-- deletar coluna
alter table tb_produtos
drop column descricao_produtos; 

-- deletar tabela
drop table tb_produtos;

-- deleta banco de dados
drop database db_quitanda;
