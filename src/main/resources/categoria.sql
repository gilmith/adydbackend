drop sequence if exists seq_categoria; 

CREATE SEQUENCE seq_categoria
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO CYCLE;

drop table if exists categoria;

create table categoria(id int primary key,
nombre varchar2(15),
dado_golpe int,
minimo_fuerza int default 0,
minimo_destreza int default 0,
minimo_inteligencia int default 0,
minimo_sabiduria int default 0, 
minimo_carisma int default 0,
minimo_constitucion int default 0);

insert into categoria (id, nombre, minimo_fuerza, dado_golpe)  values ((select next value for seq_categoria from dual), 'guerrero', 9, 10);
insert into categoria (id, nombre, minimo_fuerza, minimo_constitucion, minimo_sabiduria, minimo_carisma, dado_golpe)  values ((select next value for seq_categoria from dual), 'paladin', 12, 9, 13, 17, 10);
insert into categoria (id, nombre, minimo_fuerza, minimo_destreza, minimo_constitucion, minimo_sabiduria, dado_golpe)  values ((select next value for seq_categoria from dual), 'guardabosques', 13, 13, 14, 14, 10);
insert into categoria (id, nombre, minimo_inteligencia, dado_golpe)  values ((select next value for seq_categoria from dual), 'mago', 9, 4);
insert into categoria (id, nombre,  minimo_sabiduria, dado_golpe)  values ((select next value for seq_categoria from dual), 'clerigo',  9, 8);
insert into categoria (id, nombre, minimo_sabiduria, minimo_carisma, dado_golpe)  values ((select next value for seq_categoria from dual), 'druida', 12, 15, 8);
insert into categoria (id, nombre, minimo_destreza, dado_golpe)  values ((select next value for seq_categoria from dual), 'ladron', 9, 6);
insert into categoria (id, nombre, minimo_destreza, minimo_inteligencia, minimo_carisma,dado_golpe)  values ((select next value for seq_categoria from dual), 'bardo', 12, 13, 15,6);


