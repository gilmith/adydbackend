drop table if exists habilidades_sabiduria;


create table habilidades_sabiduria(puntuacionBase int primary key,
defensa int,
bonusConjuros int,
fracasoConjuro int);

insert into habilidades_sabiduria values (1, -6, null, 80);
insert into habilidades_sabiduria values (2, -4, null, 60);
insert into habilidades_sabiduria values (3, -3, null, 50);
insert into habilidades_sabiduria values (4, -2, null, 45);
insert into habilidades_sabiduria values (5, -1, null, 40);
insert into habilidades_sabiduria values (6, -1, null, 35);
insert into habilidades_sabiduria values (7, -1, null, 30);
insert into habilidades_sabiduria values (8, 0, null, 25);
insert into habilidades_sabiduria values (9, 0, null, 20);
insert into habilidades_sabiduria values (10, 0, null, 15);
insert into habilidades_sabiduria values (11, 0, null, 10);
insert into habilidades_sabiduria values (12, 0, null, 5);
insert into habilidades_sabiduria values (13, 0, 1,  0);
insert into habilidades_sabiduria values (14, 0, 1, 0);
insert into habilidades_sabiduria values (15, 1, 2, 0);
insert into habilidades_sabiduria values (16, 2, 2, 0);
insert into habilidades_sabiduria values (17, 3, 3, 0);
insert into habilidades_sabiduria values (18, 4, 4, 0);
