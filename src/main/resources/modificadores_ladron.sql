drop table if exists Modificadores_Ladron;

create table Modificadores_Ladron(puntuacion_destreza int primary key,
vaciar_bolsillos int,
abrir_cerraduras int,
hallar_retirar_trampas int,
moverse_en_silencio int,
ocultase_en_las_sombras int
);
insert into modificadores_ladron values (9, -15, -10, -10, -20, -10);
insert into modificadores_ladron values (10, -10, -5, -10, -15, -5);
insert into modificadores_ladron values (11, -5, 0, -5, -10, 0);
insert into modificadores_ladron values (12, 0, 0, 0, -5, 0);
insert into modificadores_ladron values (13, 0, 0, 0, 0, 0);
insert into modificadores_ladron values (14, 0, 0, 0, 0, 0);
insert into modificadores_ladron values (15, 0, 0, 0, 0, 0);
insert into modificadores_ladron values (16, 0, 5, 0, 0, 0);
insert into modificadores_ladron values (17, 5, 10, 0, 5, 5);
insert into modificadores_ladron values (18, 10, 15, 5, 10, 10);
insert into modificadores_ladron values (19, 15, 20, 10, 15, 15);
