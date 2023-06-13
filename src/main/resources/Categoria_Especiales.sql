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


--guardabosques 

insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='guardabosques'), 'El guardabosques puede luchar con dos armas sin penalizaciones cuando lleva armadura tachonada o ligera');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='guardabosques'), 'El guardabosques tiene una criatura predilecta y una criatura enemiga');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='guardabosques'), 'Empatia animal, el guardabosques genera tranquilidad a los animales, un guardabosques puede afectar al comportamiento animal como si se tratara de uan tirada de salvacion -3 contra cetros');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='guardabosques'), 'El guardabosques puede acceder a los conjuros de sacerdote al llegar al nivel 8');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='guardabosques'), 'El guardabosques a nivel 10 tiene 2d6 seguidores animales');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='guardabosques'), 'El guardabosques solo puede llevar armadura ligera');



-- mago
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='mago'), 'El mago no puede llevar armadura ni armas pesadas');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='mago'), 'El mago debe de llevar siempre su libro o similar de conjuros');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='mago'), 'El mago puede especializarse en una escuela de magia, dependiendo del escenario de campaña');



-- clerigo
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='clerigo'), 'El clerigo no puede llevar armas de filo');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='clerigo'), 'El clerigo dependiendo de la deidad y campaña tendra acceso a una serie de conjuros');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='clerigo'), 'El clerigo puede ahuyentar a muertos vivientes, demonios, vampiros');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='clerigo'), 'A partir de nivel 8 el clerigo puede atraer a creyentes');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='clerigo'), 'El clerigo recibe los encantamientos directamente de los dioses, por tanto tiene que dedicar tiempo a la meditacion');


-- druida
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='druida'), 'El druida vive en comunion con la naturaleza, no puede llevar armas metalicas ni armaduras');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='druida'), 'No todos los hechizos de clerigo estan accesibles para el druida, solo estan permitidos los esfera animal, clima, curadora, elemental, vegetal y total');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='druida'), '+2 a todas las tiradas de salvacion contra fuego y ataques electricos');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='druida'), 'Los druidas tienen un lenguaje propio solo conocido por ellos');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='druida'), 'Los druidas a nivel 3 pueden identificar con perfecta exactitud plantas, animales y agua pura');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='druida'), 'A nivel 3 los druidas pueden pasar sin dejar rastro entre arbustos, zarzas');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='druida'), 'Puede aprender lenguajes de criaturas del bosque, centauros, hadas');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='druida'), 'a partir de nivel 7 el druida es inmue a los encatamientos lanzados por criaturas del bosque');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='druida'), 'a partir de nivel 7 el druida puede transformarse en un animal, con sus proporciones reales, no se podra transformar en un monstruo o muerto viviente');

-- ladron
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='ladron'), 'El ladron dispone de las siguientes habilidades, vaciar bolsillos, abrir cerraduras, hallar y retirar trampas, moverse en silencio, ocultarse en las sombras, detectar ruidos, escalar paredes, leer lenguajes');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='ladron'), 'El tiene un multiplicador de daro en apuñalamientos por las espalda');

-- bardo
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='bardo'), 'El bardo dispone de las siguientes habilidades, escalar paredes, detectarruidos, vaciar bolsillos y leer lenguajes');
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='bardo'), 'A partir de nivel 2 el bardo puede aprender conjuros de mago');

-- guerrero
insert into categoria_especiales values ((select next value for seq_categoria_especiales from dual), (select id from categoria where nombre='guerrero'), 'A partir de nviel 9 el guerrero tiene 2d6 seguidores');


















