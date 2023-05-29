drop table if exists habilidades_carisma;


create table habilidades_carisma(puntuacionBase int primary key,
maxSeguidores int,
lealtad int,
reaccion int);

insert into habilidades_carisma values (1, 0, -8, -7);
insert into habilidades_carisma values (2, 1, -7, -6);
insert into habilidades_carisma values (3, 1, -6, -5);
insert into habilidades_carisma values (4, 1, -5, -4);
insert into habilidades_carisma values (5, 2, -4, -3);
insert into habilidades_carisma values (6, 2, -3, -2);
insert into habilidades_carisma values (7, 3, -2, -1);
insert into habilidades_carisma values (8, 3, -1, 0);
insert into habilidades_carisma values (9, 4, 0, 0);
insert into habilidades_carisma values (10, 4, 0, 0);
insert into habilidades_carisma values (11, 4, 0, 0);
insert into habilidades_carisma values (12, 5, 0, 0);
insert into habilidades_carisma values (13, 5, 0,  1);
insert into habilidades_carisma values (14, 6, 1, 2);
insert into habilidades_carisma values (15, 7, 3, 3);
insert into habilidades_carisma values (16, 8, 4, 4);
insert into habilidades_carisma values (17, 10, 6, 5);
insert into habilidades_carisma values (18, 15, 8, 6);