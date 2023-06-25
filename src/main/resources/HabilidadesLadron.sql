drop sequence if exists seq_habilidadesLadron; 

CREATE SEQUENCE seq_habilidadesLadron
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO CYCLE;

drop table if exists habilidades_ladron;

create table habilidades_ladron(id int primary key,
nombre varchar2(50),
id_raza int,
valor int
);

alter table habilidades_ladron add constraint fk_id_raza foreign key(id_raza) references razas(id);

--elfo
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'vaciar bolsillos', (select id from razas where nombre='elfo'), 5);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'abrir cerraduras', (select id from razas where nombre='elfo'), -5);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'hallar retirar trampas', (select id from razas where nombre='elfo'), 0);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'moverse en silecion', (select id from razas where nombre='elfo'), 5);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'ocultarse en las sombras', (select id from razas where nombre='elfo'), 5);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'detectar ruidos', (select id from razas where nombre='elfo'), 0);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'escalar paredes', (select id from razas where nombre='elfo'), 5);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'leer lenguajes', (select id from razas where nombre='elfo'), 5);

--enano

insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'vaciar bolsillos', (select id from razas where nombre='enano'), 0);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'abrir cerraduras', (select id from razas where nombre='enano'), 10);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'hallar retirar trampas', (select id from razas where nombre='enano'), 15);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'moverse en silecion', (select id from razas where nombre='elfo'), 0);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'ocultarse en las sombras', (select id from razas where nombre='elfo'), 0);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'detectar ruidos', (select id from razas where nombre='elfo'), 0);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'escalar paredes', (select id from razas where nombre='elfo'), -10);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'leer lenguajes', (select id from razas where nombre='elfo'), -5);


-- gnomo
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'vaciar bolsillos', (select id from razas where nombre='gnomo'), 0);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'abrir cerraduras', (select id from razas where nombre='gnomo'), 5);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'hallar retirar trampas', (select id from razas where nombre='gnomo'), 10);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'moverse en silecion', (select id from razas where nombre='gnomo'), 5);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'ocultarse en las sombras', (select id from razas where nombre='gnomo'), 5);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'detectar ruidos', (select id from razas where nombre='gnomo'), 10);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'escalar paredes', (select id from razas where nombre='gnomo'), -5);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'leer lenguajes', (select id from razas where nombre='gnomo'), 0);

-- semielfo

insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'vaciar bolsillos', (select id from razas where nombre='semielfo'), 10);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'abrir cerraduras', (select id from razas where nombre='semielfo'), 0);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'hallar retirar trampas', (select id from razas where nombre='semielfo'), 0);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'moverse en silecion', (select id from razas where nombre='semielfo'), 0);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'ocultarse en las sombras', (select id from razas where nombre='semielfo'), 5);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'detectar ruidos', (select id from razas where nombre='semielfo'), 0);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'escalar paredes', (select id from razas where nombre='semielfo'), 0);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'leer lenguajes', (select id from razas where nombre='semielfo'), 0);



--Halfing
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'vaciar bolsillos', (select id from razas where nombre='Halfling'), 5);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'abrir cerraduras', (select id from razas where nombre='Halfling'), 5);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'hallar retirar trampas', (select id from razas where nombre='Halfling'), 5);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'moverse en silecion', (select id from razas where nombre='Halfling'), 10);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'ocultarse en las sombras', (select id from razas where nombre='Halfling'), 15);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'detectar ruidos', (select id from razas where nombre='Halfling'), 5);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'escalar paredes', (select id from razas where nombre='Halfling'), -15);
insert into habilidades_ladron values ((select next value for seq_habilidadesLadron from dual), 'leer lenguajes', (select id from razas where nombre='Halfling'), -5);











