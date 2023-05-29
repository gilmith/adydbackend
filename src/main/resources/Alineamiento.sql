drop sequence if exists seq_alineamiento; 

CREATE SEQUENCE seq_alineamiento
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO CYCLE;

drop table if exists alineamiento;

create table alineamiento(id int primary key,
nombre varchar2(35),
descripcion varchar2(300)
);

insert into alineamiento values ((select next value for seq_alineamiento from dual), 'legal bueno', 'Los personajes con este alineamiento creen que una sociedad ordenada y fuerte con un gobierno bien organizado puede conseguir que la vida sea mejor para la mayoría de la gente.');
insert into alineamiento values ((select next value for seq_alineamiento from dual), 'legal neutral', 'Orden y organización son de importancia primordial a los personajes de este alineamiento');
insert into alineamiento values ((select next value for seq_alineamiento from dual), 'letal malvado', 'Estos personajes creen en utilizar la sociedad  y sus leyes para el beneficio propio');
insert into alineamiento values ((select next value for seq_alineamiento from dual), 'neutral bueno', 'Estos personajes creen que es importante un equilibrio de fuerzas pero que las preocupaciones de la ley y el caso no moderan la necesidad de ley');
insert into alineamiento values ((select next value for seq_alineamiento  from dual), 'neutral autentico',  'Los personajes auténticos neutrales creen en el equilibrio ultimo de de las fuerzas y se niegan a ver las acciones como buenas ni como malas');
insert into alineamiento values ((select next value for seq_alineamiento from dual), 'neutral malvado', 'Los personajes neutrales malvados se sientes primariamente preocupados por ellos mismos y su propio avance');
insert into alineamiento values ((select next value for seq_alineamiento from dual), 'caótico legal', 'Los personajes caóticos legales son individualistas fuertes marcados por un rasco de amabilidad y benevolencia');
insert into alineamiento values ((select next value for seq_alineamiento from dual), 'caótico neutral', 'Estos personajes creen que no hay orden en nada incluidas sus propias acciones');
insert into alineamiento values ((select next value for seq_alineamiento from dual), 'caótico malvado', 'Los personajes caóticos malvados están motivados por el deseo del beneficio personal y el placer');



