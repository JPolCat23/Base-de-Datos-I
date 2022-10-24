/*Practica de Base de datos I 
Campeonato unifranzitos*/

/*Creamos una base de datos*/

Create database Unifransitos_Hito3;
use Unifransitos_Hito3;

/*Creamos tres tablas "Campeonato, equipo y jugador "tabla*/

create table campeonato (

id_campeonato varchar (12) primary key,
nombre_campeonato varchar (30)not null,
sede varchar (20)not null
);

/*le ponemos los valores*/

insert into campeonato(id_campeonato, nombre_campeonato, sede)
values ('camp-111', 'Campeonato Unifranz', 'El Alto')
insert into campeonato(id_campeonato, nombre_campeonato, sede)
values ('camp-222', 'Campeonato Unifranz', 'Cochabamba')

drop table campeonato;
select * from campeonato;

create table equipo (

id_equipo varchar (12) primary key,
nombre_equipo varchar (30)not null,
categoria varchar (30)not null,
id_campeonato varchar (12) 
foreign key (id_campeonato) references campeonato (id_campeonato)
);

insert into equipo (id_equipo, nombre_equipo, categoria, id_campeonato)
values ('equ-111', 'Google', 'varones', 'camp-111')
insert into equipo (id_equipo, nombre_equipo, categoria, id_campeonato)
values ('equ-222', '404 Not found', 'varones', 'camp-111')
insert into equipo (id_equipo, nombre_equipo, categoria, id_campeonato)
values ('equ-333', 'girls unifranz', 'mujeres', 'camp-111')

drop table equipo;
select * from equipo;

create table jugador (

id_jugador varchar (12) primary key,
nombres varchar (30),
apellidos varchar (30),
ci varchar (15),
edad integer,
id_equipo varchar (12) 
foreign key (id_equipo) references equipo (id_equipo)
);

insert into jugador(id_jugador, nombres, apellidos, ci, edad, id_equipo)
values ('jug-111', 'Carlos', 'Villa', '8997811LP', 19, 'equ-222')
insert into jugador(id_jugador, nombres, apellidos, ci, edad, id_equipo)
values ('jug-222', 'Pedro', 'Salas', '8997822LP', 20, 'equ-222')
insert into jugador(id_jugador, nombres, apellidos, ci, edad, id_equipo)
values ('jug-333', 'Saul', 'Araj', '8997833LP', 21, 'equ-222')
insert into jugador(id_jugador, nombres, apellidos, ci, edad, id_equipo)
values ('jug-444', 'Sandra', 'Solis', '8997844LP', 22, 'equ-333')
insert into jugador(id_jugador, nombres, apellidos, ci, edad, id_equipo)
values ('jug-555', 'Ana', 'Mica', '8997855LP', 23, 'equ-333')

select * from jugador;
drop table jugador;
describe jugador;

/*Manejo de consultas de la tabla*/

/*1.- Mostrar que jugadores que son del equipo equ-222*/

select nombres, id_equipo
from jugador
where id_equipo = 'equ-222'

/*2.- Mostrar que jugadores(nombres, apellidos) que juegan en la sede de El Alto*/

select nombres, apellidos, id_campeonato
from jugador
where id_campeonato = 'El Alto' and nombres and apellidos

/*3.- Mostrar aquellos jugadores mayores o igual a 21 años que sean de la categoría VARONES*/

 select jug.nombres, jug.apellidos, jug.edad
 from equipo as equi
 inner join jugador as jug on equi.id_equipo = jug.id_equipo
 where equi.nombre_equipo = '404 not found' and edad < = 21

/*4.- Mostrar a todos los estudiantes en donde su apellido empiece con la letra S*/

select * from jugador 
where nombres like 'S%' and apellidos Like 'S%'

/*5.- Mostrar que equipos forman parte del campeonato camp-111 y además sean de la categoría MUJERES*/

select * from equipo
where nombre_equipo = 'girls unifranz'

/*6.- Mostrar el nombre del equipo del jugador con id_jugador igual a jug-333*/

select equi.nombre_equipo, equi.id_jugador
from nombre_equipo as equi
inner join id_jugador as equi on equi.id_jugador = equi.id_jugador
where id_jugador = 'jug-333'

/*7.- Mostrar el nombre del campeonato del jugador con id_jugador igual a jug-333*/

/*8.- Crear una consulta SQL que maneje las 3 tablas de la base de datos.*/

select * from campeonato, equipo, jugador

/*9.- ¿Qué estrategia utilizaría para determinar cuántos equipos inscritos hay?*/

select * from equipo

/*10.- ¿Qué estrategia utilizaría para determinar cuántos jugadores pertenecen a la categoría VARONES o Categoria
MUJERES*/
select * from equipo, jugador
where categoria = 'mujeres'
select * from equipo, jugador
where categoria = 'varones'