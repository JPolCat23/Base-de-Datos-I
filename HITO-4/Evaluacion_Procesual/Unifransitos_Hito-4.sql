Create database defensa_hito4_unifranzitos;
use defensa_hito4_unifranzitos;


--realizar una tabla--

create table campeonato
(
  id_campeonato varchar (10) primary key,
  nombre_campeonato varchar (20),
  sede varchar (25)
);

insert campeonato(id_campeonato, nombre_campeonato, sede)
values ('camp-111', 'Campeonato Unifranz', 'El Alto')
insert campeonato(id_campeonato, nombre_campeonato, sede)
values ('camp-222', 'Campeonato Unifranz', 'Cochabamba')

select * from campeonato;

create table equipo
(
  id_equipo varchar (10) primary key,
  nombre_equipo varchar (15),
  categoria varchar (15),
  id_campeonato varchar(10)
  foreign key (id_campeonato) references campeonato(id_campeonato)
);

insert equipo(id_equipo, nombre_equipo, categoria, id_campeonato)
values ('equ-111', 'Google', 'Varones', 'camp-111')
insert equipo(id_equipo, nombre_equipo, categoria, id_campeonato)
values ('equ-222', '404 not found', 'Varones', 'camp-111')
insert equipo(id_equipo, nombre_equipo, categoria, id_campeonato)
values ('equ-333', 'girls unifranz', 'mujeres', 'camp-111')

 drop table equipo;
 select * from equipo;

create table jugador
(
  id_jugador varchar (20) primary key,
  nombres varchar (20),
  apellidos varchar (20),
  CI varchar (20),
  edad integer,
  id_equipo varchar (10)
  foreign key (id_equipo) references equipo(id_equipo)
);

insert jugador(id_jugador, nombres, apellidos, CI, edad, id_equipo)
values ('jug-111', 'carlos', 'villa', '8997811LP', 19, 'equ-222')
insert jugador(id_jugador, nombres, apellidos, CI, edad, id_equipo)
values ('jug-222', 'pedro', 'salas', '8997822LP', 20, 'equ-222')
insert jugador(id_jugador, nombres, apellidos, CI, edad, id_equipo)
values ('jug-333', 'saul', 'araj', '8997833LP', 21, 'equ-222')
insert jugador(id_jugador, nombres, apellidos, CI, edad, id_equipo)
values ('jug-444', 'sandra', 'solis', '8997844LP', 20, 'equ-333')
insert jugador(id_jugador, nombres, apellidos, CI, edad, id_equipo)
values ('jug-555', 'ana', 'mica', '8997855LP', 23, 'equ-333')

drop table jugador;

select * from jugador;

--Manejo de conceptos--

--mostrar un ejemplo de count--
 
 SELECT COUNT (*)
  FROM jugador AS jug;

  --mostrar un ejemplo de AVG--

 SELECT avg(jug.edad)
 FROM jugador AS jug;

 --mostrar un ejemplo de max-min--

   SELECT MAX(jug.edad)
   FROM jugador AS jug
   WHERE jug.id_equipo = 'equ-222';

   SELECT MIN(jug.edad)
   FROM jugador AS jug
   WHERE jug.id_equipo = 'equ-222';

   --manejo de consultas--

   --1.-Mostrar que jugadores que formen parte del equipo equ-333--

 Select nombres, id_equipo
 from jugador
 Where id_equipo = 'equ-333';

 /*--2.-Crear una función que permita saber cuantos jugadores están inscritos--
 La función debe llamarse F1_CantidadJugadores()()*/

  create function F1_CantidadJugadores(@id_jugador varchar(20))
  Returns Integer as 
  Begin

   Declare @response integer = 0;

  SELECT @response COUNT(jug.id_jugador)
  FROM jugador AS jug

   end

  Return @response;

  end


 /*3.-Crear una función que permita saber cuántos jugadores están inscritos y que sean 
 de la categoría varones o mujeres.
- La función debe llamarse F2_CantidadJugadoresParam()
- La función debe recibir un parámetro “Varones” o “Mujeres”*/

  create function F2_CantidadJugadores(@id_jugador varchar(20))
  Returns Integer as 
  Begin

   Declare @response integer = 0;

  SELECT @response COUNT(jug.id_jugador)
  FROM jugador AS jug
  inner join equipo as aqui on jug.id_jugador = aqui_jugador
  where equi.categotria = 'femenino' and jug.jugador

   end

  Return @response;

  end

/*4.-Crear una función que obtenga el promedio de las edades mayores a una cierta edad.
- La función debe llamarse F3_PromedioEdades()
- La función debe recibir como parámetro 2 valores.
- La categoría. (Varones o Mujeres)
- La edad con la que se comparara (21 años ejemplo)
- Es decir mostrar el promedio de edades que sean de una categoría y que sean mayores a 21 años.*/

  create function F3_PromedioEdades(@edad integer)
  Returns Integer as 
  Begin

   Declare @response integer = 0;

  SELECT @response COUNT(jug.edad)
  FROM jugador AS jug
  WHERE jug.edad > @edad and equi.categotria = 'masculino';

   end

  Return @response;

  end;

/*5.- Crear una función que permita concatenar 3 parámetros.
- La función debe llamarse F4_ConcatItems()
- La función debe de recibir 3 parámetros.
- La función debe de concatenar los 3 valores.
- Para verificar la correcta creación de la función debe mostrar lo siguiente.
- Mostrar los nombres de los jugadores, el nombre del equipo y la sede concatenada, utilizando la función
que acaba de crear.*/

  create function F4_ConcatIterms(@nombre varchar(20), nombre_equipo varchar (15), sede varchar (15))
  Returns Integer as 
  Begin
   declare @respuesta varchar (60);

     select @respuesta = COUNT (jug.id_campeonato)
	 from jugador as jug
	  inner join campeonato as camp on jug.id_campeonato = camp.id_campeonato
	  where jug.nombre  and
	        jug.nombre_equipo = '404 not found'  and
			jug.sede 'El Alto';
   
   return @respuesta;
     
  end;