drop sequence if exists seq_pericias_armas; 

CREATE SEQUENCE seq_pericias_armas
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO CYCLE;


drop table if exists Pericias_armas;


create table Pericias_armas(id int primary key,
nombre_pericia varchar2(150));



insert into Pericias_armas values ((select next value for seq_pericias_armas from dual), 'hacha de mano, hacha de batalla');
insert into Pericias_armas values ((select next value for seq_pericias_armas from dual), 'arco corto, arco largo, arco compuesto');
insert into Pericias_armas values ((select next value for seq_pericias_armas from dual), 'ballestas pesada y ligera');
insert into Pericias_armas values ((select next value for seq_pericias_armas from dual), 'daga, cuchillo');
insert into Pericias_armas values ((select next value for seq_pericias_armas from dual), 'espadón, albarda, bardiche, voulge, guja, guja–voulge, espadón - guja');
insert into Pericias_armas values ((select next value for seq_pericias_armas from dual), 'arpón, lanza, tridente, jabalina');
insert into Pericias_armas values ((select next value for seq_pericias_armas from dual), 'maza de infante, maza de jinete, manigual');
insert into Pericias_armas values ((select next value for seq_pericias_armas from dual), 'mayal, martillo, garrote');
insert into Pericias_armas values ((select next value for seq_pericias_armas from dual), 'horca militar, ranseur, spetum, partisana');
insert into Pericias_armas values ((select next value for seq_pericias_armas from dual), 'cimitarra, espada bastarda, espada larga, espada ancha'); 
insert into Pericias_armas values ((select next value for seq_pericias_armas from dual), 'honda, honda de mango');

drop table if exists Pericias_categorias;


create table Pericias_categoria(id_categoria int,
id_pericia int);

alter table Pericias_categoria add constraint pk_pericias_categoria primary key(id_categoria, id_pericia);
alter table Pericias_categoria add constraint fk_pericias_id_categoria foreign key(id_categoria) references categoria(id);
alter table Pericias_categoria add constraint fk_pericias_id_pericia foreign key(id_pericia) references Pericias_armas(id);

--pericias guerrero

insert into pericias_categoria values ((select id from categoria where nombre='guerrero'), (select id from Pericias_armas where nombre_pericia='hacha de mano, hacha de batalla'));
insert into pericias_categoria values ((select id from categoria where nombre='guerrero'), (select id from Pericias_armas where nombre_pericia='arco corto, arco largo, arco compuesto'));
insert into pericias_categoria values ((select id from categoria where nombre='guerrero'), (select id from Pericias_armas where nombre_pericia='ballestas pesada y ligera'));
insert into pericias_categoria values ((select id from categoria where nombre='guerrero'), (select id from Pericias_armas where nombre_pericia='daga, cuchillo'));
insert into pericias_categoria values ((select id from categoria where nombre='guerrero'), (select id from Pericias_armas where nombre_pericia='espadón, albarda, bardiche, voulge, guja, guja–voulge, espadón - guja'));
insert into pericias_categoria values ((select id from categoria where nombre='guerrero'), (select id from Pericias_armas where nombre_pericia='arpón, lanza, tridente, jabalina'));
insert into pericias_categoria values ((select id from categoria where nombre='guerrero'), (select id from Pericias_armas where nombre_pericia='maza de infante, maza de jinete, manigual'));
insert into pericias_categoria values ((select id from categoria where nombre='guerrero'), (select id from Pericias_armas where nombre_pericia='mayal, martillo, garrote'));
insert into pericias_categoria values ((select id from categoria where nombre='guerrero'), (select id from Pericias_armas where nombre_pericia='horca militar, ranseur, spetum, partisana'));
insert into pericias_categoria values ((select id from categoria where nombre='guerrero'), (select id from Pericias_armas where nombre_pericia='cimitarra, espada bastarda, espada larga, espada ancha'));
insert into pericias_categoria values ((select id from categoria where nombre='guerrero'), (select id from Pericias_armas where nombre_pericia='honda, honda de mango'));
insert into pericias_categoria values ((select id from categoria where nombre='guerrero'), (select id from Pericias_armas where nombre_pericia='baston, centro, vara'));


--pericias mago
insert into pericias_categoria values ((select id from categoria where nombre='mago'), (select id from Pericias_armas where nombre_pericia='daga, cuchillo'));
insert into pericias_categoria values ((select id from categoria where nombre='mago'), (select id from Pericias_armas where nombre_pericia='honda, honda de mango'));
insert into pericias_categoria values ((select id from categoria where nombre='mago'), (select id from Pericias_armas where nombre_pericia='baston, centro, vara'));

--pericias clerigo

insert into pericias_categoria values ((select id from categoria where nombre='clerigo'), (select id from Pericias_armas where nombre_pericia='maza de infante, maza de jinete, manigual'));
insert into pericias_categoria values ((select id from categoria where nombre='clerigo'), (select id from Pericias_armas where nombre_pericia='mayal, martillo, garrote'));
insert into pericias_categoria values ((select id from categoria where nombre='clerigo'), (select id from Pericias_armas where nombre_pericia='horca militar, ranseur, spetum, partisana'));
insert into pericias_categoria values ((select id from categoria where nombre='clerigo'), (select id from Pericias_armas where nombre_pericia='honda, honda de mango'));
insert into pericias_categoria values ((select id from categoria where nombre='clerigo'), (select id from Pericias_armas where nombre_pericia='baston, centro, vara'));


-- pericias druida

insert into pericias_categoria values ((select id from categoria where nombre='druida'), (select id from Pericias_armas where nombre_pericia='arpón, lanza, tridente, jabalina'));
insert into pericias_categoria values ((select id from categoria where nombre='druida'), (select id from Pericias_armas where nombre_pericia='maza de infante, maza de jinete, manigual'));
insert into pericias_categoria values ((select id from categoria where nombre='druida'), (select id from Pericias_armas where nombre_pericia='horca militar, ranseur, spetum, partisana'));
insert into pericias_categoria values ((select id from categoria where nombre='druida'), (select id from Pericias_armas where nombre_pericia='honda, honda de mango'));
insert into pericias_categoria values ((select id from categoria where nombre='druida'), (select id from Pericias_armas where nombre_pericia='baston, centro, vara'));

--pericias paladin
insert into pericias_categoria values ((select id from categoria where nombre='paladin'), (select id from Pericias_armas where nombre_pericia='hacha de mano, hacha de batalla'));
insert into pericias_categoria values ((select id from categoria where nombre='paladin'), (select id from Pericias_armas where nombre_pericia='arco corto, arco largo, arco compuesto'));
insert into pericias_categoria values ((select id from categoria where nombre='paladin'), (select id from Pericias_armas where nombre_pericia='ballestas pesada y ligera'));
insert into pericias_categoria values ((select id from categoria where nombre='paladin'), (select id from Pericias_armas where nombre_pericia='daga, cuchillo'));
insert into pericias_categoria values ((select id from categoria where nombre='paladin'), (select id from Pericias_armas where nombre_pericia='espadón, albarda, bardiche, voulge, guja, guja–voulge, espadón - guja'));
insert into pericias_categoria values ((select id from categoria where nombre='paladin'), (select id from Pericias_armas where nombre_pericia='arpón, lanza, tridente, jabalina'));
insert into pericias_categoria values ((select id from categoria where nombre='paladin'), (select id from Pericias_armas where nombre_pericia='maza de infante, maza de jinete, manigual'));
insert into pericias_categoria values ((select id from categoria where nombre='paladin'), (select id from Pericias_armas where nombre_pericia='mayal, martillo, garrote'));
insert into pericias_categoria values ((select id from categoria where nombre='paladin'), (select id from Pericias_armas where nombre_pericia='horca militar, ranseur, spetum, partisana'));
insert into pericias_categoria values ((select id from categoria where nombre='paladin'), (select id from Pericias_armas where nombre_pericia='cimitarra, espada bastarda, espada larga, espada ancha'));
insert into pericias_categoria values ((select id from categoria where nombre='paladin'), (select id from Pericias_armas where nombre_pericia='honda, honda de mango'));
insert into pericias_categoria values ((select id from categoria where nombre='paladin'), (select id from Pericias_armas where nombre_pericia='baston, centro, vara'));



--pericias guardabosques
insert into pericias_categoria values ((select id from categoria where nombre='guardabosques'), (select id from Pericias_armas where nombre_pericia='hacha de mano, hacha de batalla'));
insert into pericias_categoria values ((select id from categoria where nombre='guardabosques'), (select id from Pericias_armas where nombre_pericia='arco corto, arco largo, arco compuesto'));
insert into pericias_categoria values ((select id from categoria where nombre='guardabosques'), (select id from Pericias_armas where nombre_pericia='espadón, albarda, bardiche, voulge, guja, guja–voulge, espadón - guja'));
insert into pericias_categoria values ((select id from categoria where nombre='guardabosques'), (select id from Pericias_armas where nombre_pericia='cimitarra, espada bastarda, espada larga, espada ancha'));


--pericias bardo
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='hacha de mano, hacha de batalla'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='arco corto, arco largo, arco compuesto'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='ballestas pesada y ligera'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='daga, cuchillo'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='espadón, albarda, bardiche, voulge, guja, guja–voulge, espadón - guja'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='arpón, lanza, tridente, jabalina'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='maza de infante, maza de jinete, manigual'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='mayal, martillo, garrote'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='horca militar, ranseur, spetum, partisana'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='cimitarra, espada bastarda, espada larga, espada ancha'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='honda, honda de mango'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='baston, centro, vara'));

--pericias bardo
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='hacha de mano, hacha de batalla'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='arco corto, arco largo, arco compuesto'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='ballestas pesada y ligera'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='daga, cuchillo'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='espadón, albarda, bardiche, voulge, guja, guja–voulge, espadón - guja'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='arpón, lanza, tridente, jabalina'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='maza de infante, maza de jinete, manigual'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='mayal, martillo, garrote'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='horca militar, ranseur, spetum, partisana'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='cimitarra, espada bastarda, espada larga, espada ancha'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='honda, honda de mango'));
insert into pericias_categoria values ((select id from categoria where nombre='bardo'), (select id from Pericias_armas where nombre_pericia='baston, centro, vara'));


select * from pericias_armas;

select * from pericias_categoria;