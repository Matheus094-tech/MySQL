create database db_RH;

use db_RH;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
cargo varchar(50) not null,
genero varchar(1),
salario decimal(10,2) not null,
primary key (id)
);

insert into tb_funcionarios (nome, idade, cargo, genero, salario) values ("Matheus",22, "Técnico","M", 6000.00);
insert into tb_funcionarios (nome, idade, cargo, genero, salario) values ("Bruna",24, "Técnico","F", 10000.00);
insert into tb_funcionarios (nome, idade, cargo, genero, salario) values ("Regina",30, "Técnico","F", 5142.00);
insert into tb_funcionarios (nome, idade, cargo, genero, salario) values ("Luan",19, "Técnico","M", 45201.00);
insert into tb_funcionarios (nome, idade, cargo, genero, salario) values ("Lucas",24, "Técnico","M", 10578.00);
delete from tb_funcionarios where id = 3;
select * from tb_funcionarios;
select * from tb_funcionarios where salario <2000;
select * from tb_funcionarios where salario >2000;

alter table tb_funcionarios change salario remuneracao decimal(10,2);