drop table if exists tirada_salvacion;

create table tirada_salvacion(
nivel int not null,
id_categoria int not null,
paralizacion_veneno_muerte_magica int,
cetro_vara_varita int, 
petrificacion_polimorfismo int,
arma_aliento int, 
conjuro int
);

alter table tirada_salvacion add constraint pk primary key(nivel, id_categoria);

alter table tirada_salvacion add constraint fk_id_categoria foreign key(id_categoria) references categoria(id);

insert into tirada_salvacion values (1, (select id from categoria where nombre='ladron'), 13, 14, 12, 16, 15);
insert into tirada_salvacion values (2, (select id from categoria where nombre='ladron'), 13, 14, 12, 16, 15);
insert into tirada_salvacion values (3, (select id from categoria where nombre='ladron'), 13, 14, 12, 16, 15);
insert into tirada_salvacion values (4, (select id from categoria where nombre='ladron'), 13, 14, 12, 16, 15);
insert into tirada_salvacion values (5, (select id from categoria where nombre='ladron'), 12, 12, 11, 15, 13);
insert into tirada_salvacion values (6, (select id from categoria where nombre='ladron'), 12, 12, 11, 15, 13);
insert into tirada_salvacion values (7, (select id from categoria where nombre='ladron'), 12, 12, 11, 15, 13);
insert into tirada_salvacion values (8, (select id from categoria where nombre='ladron'), 12, 12, 11, 15, 13);
insert into tirada_salvacion values (9, (select id from categoria where nombre='ladron'), 11, 10, 10, 14, 11);
insert into tirada_salvacion values (10, (select id from categoria where nombre='ladron'), 11, 10, 10, 14, 11);
insert into tirada_salvacion values (11, (select id from categoria where nombre='ladron'), 11, 10, 10, 14, 11);
insert into tirada_salvacion values (12, (select id from categoria where nombre='ladron'), 11, 10, 10, 14, 11);
insert into tirada_salvacion values (13, (select id from categoria where nombre='ladron'), 10, 8, 9, 13, 9);
insert into tirada_salvacion values (14, (select id from categoria where nombre='ladron'), 10, 8, 9, 13, 9);
insert into tirada_salvacion values (15, (select id from categoria where nombre='ladron'), 10, 8, 9, 13, 9);
insert into tirada_salvacion values (16, (select id from categoria where nombre='ladron'), 10, 8, 9, 13, 9);
insert into tirada_salvacion values (17, (select id from categoria where nombre='ladron'), 9, 6, 8, 12, 7);
insert into tirada_salvacion values (18, (select id from categoria where nombre='ladron'), 9, 6, 8, 12, 7);
insert into tirada_salvacion values (19, (select id from categoria where nombre='ladron'), 9, 6, 8, 12, 7);
insert into tirada_salvacion values (20, (select id from categoria where nombre='ladron'), 9, 6, 8, 12, 7);

insert into tirada_salvacion values (1, (select id from categoria where nombre='bardo'), 13, 14, 12, 16, 15);
insert into tirada_salvacion values (2, (select id from categoria where nombre='bardo'), 13, 14, 12, 16, 15);
insert into tirada_salvacion values (3, (select id from categoria where nombre='bardo'), 13, 14, 12, 16, 15);
insert into tirada_salvacion values (4, (select id from categoria where nombre='bardo'), 13, 14, 12, 16, 15);
insert into tirada_salvacion values (5, (select id from categoria where nombre='bardo'), 12, 12, 11, 15, 13);
insert into tirada_salvacion values (6, (select id from categoria where nombre='bardo'), 12, 12, 11, 15, 13);
insert into tirada_salvacion values (7, (select id from categoria where nombre='bardo'), 12, 12, 11, 15, 13);
insert into tirada_salvacion values (8, (select id from categoria where nombre='bardo'), 12, 12, 11, 15, 13);
insert into tirada_salvacion values (9, (select id from categoria where nombre='bardo'), 11, 10, 10, 14, 11);
insert into tirada_salvacion values (10, (select id from categoria where nombre='bardo'), 11, 10, 10, 14, 11);
insert into tirada_salvacion values (11, (select id from categoria where nombre='bardo'), 11, 10, 10, 14, 11);
insert into tirada_salvacion values (12, (select id from categoria where nombre='bardo'), 11, 10, 10, 14, 11);
insert into tirada_salvacion values (13, (select id from categoria where nombre='bardo'), 10, 8, 9, 13, 9);
insert into tirada_salvacion values (14, (select id from categoria where nombre='bardo'), 10, 8, 9, 13, 9);
insert into tirada_salvacion values (15, (select id from categoria where nombre='bardo'), 10, 8, 9, 13, 9);
insert into tirada_salvacion values (16, (select id from categoria where nombre='bardo'), 10, 8, 9, 13, 9);
insert into tirada_salvacion values (17, (select id from categoria where nombre='bardo'), 9, 6, 8, 12, 7);
insert into tirada_salvacion values (18, (select id from categoria where nombre='bardo'), 9, 6, 8, 12, 7);
insert into tirada_salvacion values (19, (select id from categoria where nombre='bardo'), 9, 6, 8, 12, 7);
insert into tirada_salvacion values (20, (select id from categoria where nombre='bardo'), 9, 6, 8, 12, 7);


insert into tirada_salvacion values (1, (select id from categoria where nombre='mago'), 14, 11, 13, 15, 12);
insert into tirada_salvacion values (2, (select id from categoria where nombre='mago'), 14, 11, 13, 15, 12);
insert into tirada_salvacion values (3, (select id from categoria where nombre='mago'), 14, 11, 13, 15, 12);
insert into tirada_salvacion values (4, (select id from categoria where nombre='mago'), 14, 11, 13, 15, 12);
insert into tirada_salvacion values (5, (select id from categoria where nombre='mago'), 14, 11, 13, 15, 12);
insert into tirada_salvacion values (6, (select id from categoria where nombre='mago'), 13, 9, 11, 13, 10);
insert into tirada_salvacion values (7, (select id from categoria where nombre='mago'), 13, 9, 11, 13, 10);
insert into tirada_salvacion values (8, (select id from categoria where nombre='mago'), 13, 9, 11, 13, 10);
insert into tirada_salvacion values (9, (select id from categoria where nombre='mago'), 13, 9, 11, 13, 10);
insert into tirada_salvacion values (10, (select id from categoria where nombre='mago'), 13, 9, 11, 13, 10);
insert into tirada_salvacion values (11, (select id from categoria where nombre='mago'), 11, 7, 9, 11, 8);
insert into tirada_salvacion values (12, (select id from categoria where nombre='mago'), 11, 7, 9, 11, 8);
insert into tirada_salvacion values (13, (select id from categoria where nombre='mago'), 11, 7, 9, 11, 8);
insert into tirada_salvacion values (14, (select id from categoria where nombre='mago'), 11, 7, 9, 11, 8);
insert into tirada_salvacion values (15, (select id from categoria where nombre='mago'), 11, 7, 9, 11, 8);
insert into tirada_salvacion values (16, (select id from categoria where nombre='mago'), 10, 5, 7, 9, 6);
insert into tirada_salvacion values (17, (select id from categoria where nombre='mago'), 10, 5, 7, 9, 6);
insert into tirada_salvacion values (18, (select id from categoria where nombre='mago'), 10, 5, 7, 9, 6);
insert into tirada_salvacion values (19, (select id from categoria where nombre='mago'), 10, 5, 7, 9, 6);
insert into tirada_salvacion values (20, (select id from categoria where nombre='mago'), 10, 5, 7, 9, 6);

insert into tirada_salvacion values (1, (select id from categoria where nombre='guerrero'), 14, 16, 15, 17, 17);
insert into tirada_salvacion values (2, (select id from categoria where nombre='guerrero'), 14, 16, 15, 17, 17);
insert into tirada_salvacion values (3, (select id from categoria where nombre='guerrero'), 13, 15, 14, 16, 16);
insert into tirada_salvacion values (4, (select id from categoria where nombre='guerrero'), 13, 15, 14, 16, 16);
insert into tirada_salvacion values (5, (select id from categoria where nombre='guerrero'), 11, 13, 12, 13, 14);
insert into tirada_salvacion values (6, (select id from categoria where nombre='guerrero'), 11, 13, 12, 13, 14);
insert into tirada_salvacion values (7, (select id from categoria where nombre='guerrero'), 10, 12, 11, 12, 13);
insert into tirada_salvacion values (8, (select id from categoria where nombre='guerrero'), 10, 12, 11, 12, 13);
insert into tirada_salvacion values (9, (select id from categoria where nombre='guerrero'), 8, 10, 9, 9, 11);
insert into tirada_salvacion values (10, (select id from categoria where nombre='guerrero'), 8, 10, 9, 9, 11);
insert into tirada_salvacion values (11, (select id from categoria where nombre='guerrero'), 7, 9, 8, 8, 10);
insert into tirada_salvacion values (12, (select id from categoria where nombre='guerrero'), 7, 9, 8, 8, 10);
insert into tirada_salvacion values (13, (select id from categoria where nombre='guerrero'), 5, 7, 6, 5, 8);
insert into tirada_salvacion values (14, (select id from categoria where nombre='guerrero'), 5, 7, 6, 5, 8);
insert into tirada_salvacion values (15, (select id from categoria where nombre='guerrero'), 4, 6, 5, 4, 6);
insert into tirada_salvacion values (16, (select id from categoria where nombre='guerrero'), 4, 6, 5, 4, 6);
insert into tirada_salvacion values (17, (select id from categoria where nombre='guerrero'), 3, 5, 4, 4, 6);
insert into tirada_salvacion values (18, (select id from categoria where nombre='guerrero'), 3, 5, 4, 4, 6);
insert into tirada_salvacion values (19, (select id from categoria where nombre='guerrero'), 3, 5, 4, 4, 6);
insert into tirada_salvacion values (20, (select id from categoria where nombre='guerrero'), 3, 5, 4, 4, 6);


insert into tirada_salvacion values (1, (select id from categoria where nombre='paladin'), 14, 16, 15, 17, 17);
insert into tirada_salvacion values (2, (select id from categoria where nombre='paladin'), 14, 16, 15, 17, 17);
insert into tirada_salvacion values (3, (select id from categoria where nombre='paladin'), 13, 15, 14, 16, 16);
insert into tirada_salvacion values (4, (select id from categoria where nombre='paladin'), 13, 15, 14, 16, 16);
insert into tirada_salvacion values (5, (select id from categoria where nombre='paladin'), 11, 13, 12, 13, 14);
insert into tirada_salvacion values (6, (select id from categoria where nombre='paladin'), 11, 13, 12, 13, 14);
insert into tirada_salvacion values (7, (select id from categoria where nombre='paladin'), 10, 12, 11, 12, 13);
insert into tirada_salvacion values (8, (select id from categoria where nombre='paladin'), 10, 12, 11, 12, 13);
insert into tirada_salvacion values (9, (select id from categoria where nombre='paladin'), 8, 10, 9, 9, 11);
insert into tirada_salvacion values (10, (select id from categoria where nombre='paladin'), 8, 10, 9, 9, 11);
insert into tirada_salvacion values (11, (select id from categoria where nombre='paladin'), 7, 9, 8, 8, 10);
insert into tirada_salvacion values (12, (select id from categoria where nombre='paladin'), 7, 9, 8, 8, 10);
insert into tirada_salvacion values (13, (select id from categoria where nombre='paladin'), 5, 7, 6, 5, 8);
insert into tirada_salvacion values (14, (select id from categoria where nombre='paladin'), 5, 7, 6, 5, 8);
insert into tirada_salvacion values (15, (select id from categoria where nombre='paladin'), 4, 6, 5, 4, 6);
insert into tirada_salvacion values (16, (select id from categoria where nombre='paladin'), 4, 6, 5, 4, 6);
insert into tirada_salvacion values (17, (select id from categoria where nombre='paladin'), 3, 5, 4, 4, 6);
insert into tirada_salvacion values (18, (select id from categoria where nombre='paladin'), 3, 5, 4, 4, 6);
insert into tirada_salvacion values (19, (select id from categoria where nombre='paladin'), 3, 5, 4, 4, 6);
insert into tirada_salvacion values (20, (select id from categoria where nombre='paladin'), 3, 5, 4, 4, 6);


insert into tirada_salvacion values (1, (select id from categoria where nombre='guardabosques'), 14, 16, 15, 17, 17);
insert into tirada_salvacion values (2, (select id from categoria where nombre='guardabosques'), 14, 16, 15, 17, 17);
insert into tirada_salvacion values (3, (select id from categoria where nombre='guardabosques'), 13, 15, 14, 16, 16);
insert into tirada_salvacion values (4, (select id from categoria where nombre='guardabosques'), 13, 15, 14, 16, 16);
insert into tirada_salvacion values (5, (select id from categoria where nombre='guardabosques'), 11, 13, 12, 13, 14);
insert into tirada_salvacion values (6, (select id from categoria where nombre='guardabosques'), 11, 13, 12, 13, 14);
insert into tirada_salvacion values (7, (select id from categoria where nombre='guardabosques'), 10, 12, 11, 12, 13);
insert into tirada_salvacion values (8, (select id from categoria where nombre='guardabosques'), 10, 12, 11, 12, 13);
insert into tirada_salvacion values (9, (select id from categoria where nombre='guardabosques'), 8, 10, 9, 9, 11);
insert into tirada_salvacion values (10, (select id from categoria where nombre='guardabosques'), 8, 10, 9, 9, 11);
insert into tirada_salvacion values (11, (select id from categoria where nombre='guardabosques'), 7, 9, 8, 8, 10);
insert into tirada_salvacion values (12, (select id from categoria where nombre='guardabosques'), 7, 9, 8, 8, 10);
insert into tirada_salvacion values (13, (select id from categoria where nombre='guardabosques'), 5, 7, 6, 5, 8);
insert into tirada_salvacion values (14, (select id from categoria where nombre='guardabosques'), 5, 7, 6, 5, 8);
insert into tirada_salvacion values (15, (select id from categoria where nombre='guardabosques'), 4, 6, 5, 4, 6);
insert into tirada_salvacion values (16, (select id from categoria where nombre='guardabosques'), 4, 6, 5, 4, 6);
insert into tirada_salvacion values (17, (select id from categoria where nombre='guardabosques'), 3, 5, 4, 4, 6);
insert into tirada_salvacion values (18, (select id from categoria where nombre='guardabosques'), 3, 5, 4, 4, 6);
insert into tirada_salvacion values (19, (select id from categoria where nombre='guardabosques'), 3, 5, 4, 4, 6);
insert into tirada_salvacion values (20, (select id from categoria where nombre='guardabosques'), 3, 5, 4, 4, 6);

insert into tirada_salvacion values (1, (select id from categoria where nombre='clerigo'), 10, 14, 13, 16, 15);
insert into tirada_salvacion values (2, (select id from categoria where nombre='clerigo'), 10, 14, 13, 16, 15);
insert into tirada_salvacion values (3, (select id from categoria where nombre='clerigo'), 10, 14, 13, 16, 15);
insert into tirada_salvacion values (4, (select id from categoria where nombre='clerigo'), 9, 13, 12, 15, 14);
insert into tirada_salvacion values (5, (select id from categoria where nombre='clerigo'), 9, 13, 12, 15, 14);
insert into tirada_salvacion values (6, (select id from categoria where nombre='clerigo'), 9, 13, 12, 15, 14);
insert into tirada_salvacion values (7, (select id from categoria where nombre='clerigo'), 7, 11, 10, 13, 12);
insert into tirada_salvacion values (8, (select id from categoria where nombre='clerigo'), 7, 11, 10, 13, 12);
insert into tirada_salvacion values (9, (select id from categoria where nombre='clerigo'), 7, 11, 10, 13, 12);
insert into tirada_salvacion values (10, (select id from categoria where nombre='clerigo'), 6, 10, 9, 12, 11);
insert into tirada_salvacion values (11, (select id from categoria where nombre='clerigo'), 6, 10, 9, 12, 11);
insert into tirada_salvacion values (12, (select id from categoria where nombre='clerigo'), 6, 10, 9, 12, 11);
insert into tirada_salvacion values (13, (select id from categoria where nombre='clerigo'), 5, 9, 8, 11, 10);
insert into tirada_salvacion values (14, (select id from categoria where nombre='clerigo'), 5, 9, 8, 11, 10);
insert into tirada_salvacion values (15, (select id from categoria where nombre='clerigo'), 5, 9, 8, 11, 10);
insert into tirada_salvacion values (16, (select id from categoria where nombre='clerigo'), 4, 8, 7, 10, 9);
insert into tirada_salvacion values (17, (select id from categoria where nombre='clerigo'), 4, 8, 7, 10, 9);
insert into tirada_salvacion values (18, (select id from categoria where nombre='clerigo'), 4, 8, 7, 10, 9);
insert into tirada_salvacion values (19, (select id from categoria where nombre='clerigo'), 2, 6, 5, 8, 7);
insert into tirada_salvacion values (20, (select id from categoria where nombre='clerigo'), 2, 6, 5, 8, 7);

insert into tirada_salvacion values (1, (select id from categoria where nombre='druida'), 10, 14, 13, 16, 15);
insert into tirada_salvacion values (2, (select id from categoria where nombre='druida'), 10, 14, 13, 16, 15);
insert into tirada_salvacion values (3, (select id from categoria where nombre='druida'), 10, 14, 13, 16, 15);
insert into tirada_salvacion values (4, (select id from categoria where nombre='druida'), 9, 13, 12, 15, 14);
insert into tirada_salvacion values (5, (select id from categoria where nombre='druida'), 9, 13, 12, 15, 14);
insert into tirada_salvacion values (6, (select id from categoria where nombre='druida'), 9, 13, 12, 15, 14);
insert into tirada_salvacion values (7, (select id from categoria where nombre='druida'), 7, 11, 10, 13, 12);
insert into tirada_salvacion values (8, (select id from categoria where nombre='druida'), 7, 11, 10, 13, 12);
insert into tirada_salvacion values (9, (select id from categoria where nombre='druida'), 7, 11, 10, 13, 12);
insert into tirada_salvacion values (10, (select id from categoria where nombre='druida'), 6, 10, 9, 12, 11);
insert into tirada_salvacion values (11, (select id from categoria where nombre='druida'), 6, 10, 9, 12, 11);
insert into tirada_salvacion values (12, (select id from categoria where nombre='druida'), 6, 10, 9, 12, 11);
insert into tirada_salvacion values (13, (select id from categoria where nombre='druida'), 5, 9, 8, 11, 10);
insert into tirada_salvacion values (14, (select id from categoria where nombre='druida'), 5, 9, 8, 11, 10);
insert into tirada_salvacion values (15, (select id from categoria where nombre='druida'), 5, 9, 8, 11, 10);
insert into tirada_salvacion values (16, (select id from categoria where nombre='druida'), 4, 8, 7, 10, 9);
insert into tirada_salvacion values (17, (select id from categoria where nombre='druida'), 4, 8, 7, 10, 9);
insert into tirada_salvacion values (18, (select id from categoria where nombre='druida'), 4, 8, 7, 10, 9);
insert into tirada_salvacion values (19, (select id from categoria where nombre='druida'), 2, 6, 5, 8, 7);
insert into tirada_salvacion values (20, (select id from categoria where nombre='druida'), 2, 6, 5, 8, 7);