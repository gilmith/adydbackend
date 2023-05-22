drop table if exists habilidades_fuerza;

create table habilidades_fuerza(puntuacionBase varchar(8) primary key,
probimpacto int,
ajusteDano int,
pesoTranspor float,
pesoMaximo float,
abrirPuertas varchar(10),
doblarBarras int);

insert into habilidades_fuerza values ('1', -5, -4, 0.5, 1.5 ,1,0);
insert into habilidades_fuerza values ('2', -3, -2, 0.5, 2.5 ,1,0);
insert into habilidades_fuerza values ('3', -3, -1, 2.5, 5 ,2,0);
insert into habilidades_fuerza values ('4', -2, -1, 5, 23 ,3,0);
insert into habilidades_fuerza values ('5', -2, -1, 5, 23 ,3,0);
insert into habilidades_fuerza values ('6', -1, 0, 10, 28 ,4,0);
insert into habilidades_fuerza values ('7', -1, 0, 10, 28 ,4,0);
insert into habilidades_fuerza values ('8', 0, 0, 18, 45 ,5,1);
insert into habilidades_fuerza values ('9', 0, 0, 18, 45 ,5,1);
insert into habilidades_fuerza values ('10', 0, 0, 20, 58 ,6,2);
insert into habilidades_fuerza values ('11', 0, 0, 20, 58 ,6,2);
insert into habilidades_fuerza values ('12', 0, 0,23, 70 ,7,4);
insert into habilidades_fuerza values ('13', 0, 0,23, 70 ,7,4);
insert into habilidades_fuerza values ('14', 0, 0, 28, 85 ,8,7);
insert into habilidades_fuerza values ('15', 0, 0, 28, 85 ,8,7);
insert into habilidades_fuerza values ('16', 0, 1, 35, 98 ,8,10);
insert into habilidades_fuerza values ('17', 1, 1, 43, 110 ,10,13);
insert into habilidades_fuerza values ('18', 1, 2, 55, 130 ,11,16);
insert into habilidades_fuerza values ('18/01-50', 1, 3, 70, 140 ,12,20);
insert into habilidades_fuerza values ('18/51-75', 2, 4, 80, 155 ,13,25);
insert into habilidades_fuerza values ('18/76-90', 2, 4, 95, 165 ,14,30);
insert into habilidades_fuerza values ('18/91-99', 2, 5, 120, 190 ,'15(3)',35);
insert into habilidades_fuerza values ('18/00', 3, 6, 170, 240 ,'16(8)',40);
insert into habilidades_fuerza values ('19', 3, 7, 245, 320 ,'16(8)', 50);


select * from habilidades_fuerza;
