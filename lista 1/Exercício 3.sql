create database db_escola;
use db_escola;

create table tb_alunos(
id bigint auto_increment,
matricula bigint not null,
nome varchar(255) not null,
nota int,
presente boolean not null,
turma int,
primary key (id)
);

insert tb_alunos (matricula,nome,nota,presente,turma) values (461,"Matheus",10,true,10);
insert tb_alunos (matricula,nome,nota,presente,turma) values (541,"Bruna",8,true,21);
insert tb_alunos (matricula,nome,nota,presente,turma) values (111,"Felipe",6,false,12);
insert tb_alunos (matricula,nome,nota,presente,turma) values (222,"Rodrigo",7,false,22);

select * from tb_alunos where nota >7;
select * from tb_alunos where nota <7;

update tb_alunos set nota = 5 where id = 4;