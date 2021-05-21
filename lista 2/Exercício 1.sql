create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe varchar (255) not null,
nivel bigint,
primary key (id)
);

select * from tb_classe;

insert tb_classe (classe, nivel) values ("Destruidor", 80);
insert tb_classe (classe, nivel) values ("Pantera", 50);
insert tb_classe (classe, nivel) values ("Vikins",25);
insert tb_classe (classe, nivel) values ("Magos",19);
insert tb_classe (classe, nivel) values ("Elfos",100);
insert tb_classe (classe, nivel) values ("Heróis",100);
insert tb_classe (classe, nivel) values ("Outros",100);

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
funcao varchar (255) not null,
idade bigint,
poder varchar (255) not null,
genero varchar (255) not null,
tb_classe_id bigint,
primary key (id),
foreign key (tb_classe_id) references tb_classe (id)
);

select * from tb_personagem;

insert tb_personagem (nome, funcao, idade, poder, genero, tb_classe_id) values ("Mario", "Atirador", 30, 800, "Masculino",6);
insert tb_personagem (nome, funcao, idade, poder, genero, tb_classe_id) values ("Zaya", "Proteção", 20, 5500, "Feminino",6);
insert tb_personagem (nome, funcao, idade, poder, genero, tb_classe_id) values ("Yoshi", "Ataque", 39, 8000, "Masculino",7);
insert tb_personagem (nome, funcao, idade, poder, genero, tb_classe_id) values ("Orochi", "Defesa", 80, 14200, "Masculino",7);
insert tb_personagem (nome, funcao, idade, poder, genero, tb_classe_id) values ("Goku", "Salvador", 100, 8001, "Masculino",6);
insert tb_personagem (nome, funcao, idade, poder, genero, tb_classe_id) values ("Freezar", "Destruir", 200, 7990, "Masculino",1);
insert tb_personagem (nome, funcao, idade, poder, genero, tb_classe_id) values ("Maga Negra", "Magia", 700, 80000, "Feminino",4);
insert tb_personagem (nome, funcao, idade, poder, genero, tb_classe_id) values ("Mago Negro", "Magia", 2000, 150000, "Masculino",4);

alter table tb_personagem
add defesa varchar (255);

alter table tb_personagem change poder ataque bigint;
alter table tb_personagem change defesa defesa bigint;

update tb_personagem set defesa = 500 where id = 1;
update tb_personagem set defesa = 458 where id = 2;
update tb_personagem set defesa = 1100 where id = 3;
update tb_personagem set defesa = 2500 where id = 4;
update tb_personagem set defesa = 8001 where id = 5;
update tb_personagem set defesa = 5000 where id = 6;
update tb_personagem set defesa = 57000 where id = 7;
update tb_personagem set defesa = 150000 where id = 8;

select *
from tb_personagem
where ataque > 2000;

select *
from tb_personagem
where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%C%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.tb_classe_id;

select *
from tb_personagem
where tb_classe_id = 6;

