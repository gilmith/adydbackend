drop table if exists habilidades_inteligencia;


create table habilidades_inteligencia(puntuacionBase int primary key,
idiomas int,
nivelConjuro int,
nuevosConjuros int,
maxConjuros int,
ilusiones int

);

insert into habilidades_inteligencia values (1, 0, null, null, null, null);
insert into habilidades_inteligencia values (2, 1, null, null, null, null);
insert into habilidades_inteligencia values (3, 1, null, null, null, null);
insert into habilidades_inteligencia values (4, 1, null, null, null, null);
insert into habilidades_inteligencia values (5, 1, null, null, null, null);
insert into habilidades_inteligencia values (6, 1, null, null, null, null);
insert into habilidades_inteligencia values (7, 1, null, null, null, null);
insert into habilidades_inteligencia values (8, 1, null, null, null, null);
insert into habilidades_inteligencia values (9, 2, 4, 35, 6, null);
insert into habilidades_inteligencia values (10, 2, 5, 40, 7, null);
insert into habilidades_inteligencia values (11, 2, 5, 45, 7, null);
insert into habilidades_inteligencia values (12, 3, 6, 50, 7, null);
insert into habilidades_inteligencia values (13, 3, 6, 60, 9, null);
insert into habilidades_inteligencia values (14, 4, 7, 65, 9, null);
insert into habilidades_inteligencia values (15, 4, 7, 70, 11, null);
insert into habilidades_inteligencia values (16, 5, 8, 70, 11, null);
insert into habilidades_inteligencia values (17, 6, 8, 75, 14, null);
insert into habilidades_inteligencia values (18, 7, 9, 85, 18, null);
insert into habilidades_inteligencia values (19, 8, 9, 95, 999, 1);