drop table if exists habilidades_constitucion;

create table habilidades_constitucion(puntuacionBase int primary key,
ajusteGolpe int,
colapso int,
resurreccion int,
resistenciaVeneno int,
regeneracion varchar(10)
);

insert into habilidades_constitucion values (1, -3, 25, 30, 0, 'nada');
insert into habilidades_constitucion values (2, -2, 30, 35, 0, 'nada');
insert into habilidades_constitucion values (3, -2, 35, 40, 0, 'nada');
insert into habilidades_constitucion values  (4, -1, 40, 45, 0, 'nada');
insert into habilidades_constitucion values  (5, -1, 45, 50, 0, 'nada');
insert into habilidades_constitucion values  (6, -1, 50, 55, 0, 'nada');
insert into habilidades_constitucion values  (7, 0, 55, 60, 0, 'nada');
insert into habilidades_constitucion values (8, 0, 60, 65, 0, 'nada');
insert into habilidades_constitucion values (9, 0, 65, 70, 0, 'nada');
insert into habilidades_constitucion values (10, 0, 70, 75, 0, 'nada');
insert into habilidades_constitucion values (11, 0, 75, 80, 0, 'nada');
insert into habilidades_constitucion values (12, 0, 80, 85, 0, 'nada');
insert into habilidades_constitucion values  (13, 0, 85, 90, 0, 'nada');
insert into habilidades_constitucion values (14, 0, 88, 92, 0, 'nada');
insert into habilidades_constitucion values  (15, 1, 90, 94, 0, 'nada');
insert into habilidades_constitucion values (16, 2, 95, 96, 0, 'nada');
insert into habilidades_constitucion values  (17, 2, 97, 38, 0, 'nada');
insert into habilidades_constitucion values (18, 3, 99, 100, 0, 'nada');
insert into habilidades_constitucion values (19, 4, 99, 100, 1, 'nada');



