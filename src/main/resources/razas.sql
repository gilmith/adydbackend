drop sequence if exists seq_razas; 

CREATE SEQUENCE seq_razas
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO CYCLE;

drop table if exists razas;

create table razas(id int primary key,
nombre varchar2(15),
minimo_fuerza int default 0,
minimo_destreza int default 0,
minimo_inteligencia int default 0,
minimo_sabiduria int default 0, 
minimo_carisma int default 0,
minimo_constitucion int default 0);

insert into razas values ((select next value for seq_razas from dual), 'enano', 8,3,3,3,3,11);
insert into razas values ((select next value for seq_razas from dual), 'elfo', 3,5,8,3,8,8);
insert into razas values ((select next value for seq_razas from dual), 'gnomo', 6,3,6,3,3,8);
insert into razas  values ((select next value for seq_razas from dual), 'semielfo', 3,6,4,3,3,6);
insert into razas values ((select next value for seq_razas from dual), 'Halfling',  7,7,6,3,3,10);
insert into razas values ((select next value for seq_razas from dual), 'humano', 3,3,3,3,3,3);

