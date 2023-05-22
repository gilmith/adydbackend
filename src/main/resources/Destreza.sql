drop table if exists habilidades_destreza;

create table habilidades_destreza(puntuacionBase int primary key,
reaccion int,
proyectil int,
defensa int);

insert into habilidades_destreza values (1, -6, -6, 5);
insert into habilidades_destreza values (2, -4, -4, 5);
insert into habilidades_destreza values (3, -3, -3, 4);
insert into habilidades_destreza values (4, -2, -2, 3);
insert into habilidades_destreza values (5, -1, -1, 2);
insert into habilidades_destreza values (6, 0, 0, 1);
insert into habilidades_destreza values (7, 0, 0, 0);
insert into habilidades_destreza values (8, 0, 0, 0);
insert into habilidades_destreza values (9, 0, 0, 0);
insert into habilidades_destreza values (10, 0, 0, 0);
insert into habilidades_destreza values (11, 0, 0, 0);
insert into habilidades_destreza values (12, 0, 0, 0);
insert into habilidades_destreza values (13, 0, 0, 0);
insert into habilidades_destreza values (14, 0, 0, 0);
insert into habilidades_destreza values (15, 0, 0, -1);
insert into habilidades_destreza values (16, 1, 1, -2);
insert into habilidades_destreza values (17, 2, 2, -3);
insert into habilidades_destreza values (18, 2, 2, -4);
insert into habilidades_destreza values (19, 3, 3, -4);

select * from HABILIDADES_destreza;