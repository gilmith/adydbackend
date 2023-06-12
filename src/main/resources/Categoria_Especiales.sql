drop sequence if exists seq_categoria_especiales; 

CREATE SEQUENCE seq_categoria_especiales
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO CYCLE;

drop table if exists categoria_especiales;

create table categoria_especiales (id int primary key,
id_categoria int,
descripcion CLOB);

alter table categoria_especiales add constraint fk_id_categoria_esp foreign key(id_categoria) references categoria(id);


insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='paladin'), 'Un paladín puede detectar la presencia del mal hasta 20 metros de distancia concentrándose en localizar el mal en una dirección en particular. Puede hacer esto tan a menudo como desee, pero cada intento por round. Esta habilidad detecta monstruos y personajes malvados.');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='paladin'), '+2 a todas las tiradas de salvacion');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='paladin'), 'Imposicion de manos, un paladin puede curar dos puntos de vida por nivel una vez al dia');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='paladin'), 'Curacion de enfermedades, cura cualquier enfermedad una vez por semana');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='paladin'), 'Aura divina, en un radio de 3 metros todas las criaturas malignas tienen un -1 a todas sus tiradas de ataque');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='paladin'), 'Un paladín que utilice una espada sagradta proyecta un círculo de poder de 10 metros de diámetro cuando la espada se halla desenfundada y la sostiene en su mano. Este poder disipa la magia hostil hasta un nivel más que el nivel de experiencia del paladín');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='paladin'), 'A partir de nivel 3 puede ahuyentar muertos vivientes, diablos y demonios');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='paladin'), 'A partir de nivel 4 puede llamar a su montura de guerra');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='paladin'), 'A partir de nivel 9 puede lanzar conjuros de sacerdote');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='paladin'), 'El paladin debe de realizar una ofrenda del 10% de sus ganancias a su iglesia');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='paladin'), 'El paladin solo puede tener escuderos de su mismo alineamiento');







