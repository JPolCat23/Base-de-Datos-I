create database universidad7;
use universidad7;

create table nombres_dba_i (

SIS_EST_1 varchar (20) primary key,
nombre1 varchar (20)
)
insert nombres_dba_i(SIS_EST_1, nombre1) 
values ('SIS-6548723', 'Wiliam')
insert nombres_dba_i(SIS_EST_1, nombre1) 
values ('SIS-6473259', 'Mijail')
insert nombres_dba_i(SIS_EST_1, nombre1) 
values ('SIS-6548975', 'Victor')
insert nombres_dba_i(SIS_EST_1, nombre1) 
values ('SIS-3316851', 'Karen')
insert nombres_dba_i(SIS_EST_1, nombre1) 
values ('SIS-4684854', 'Brayan')
insert nombres_dba_i(SIS_EST_1, nombre1) 
values ('SIS-4524547', 'Ariel')

drop table nombres_dba_i;
select * from nombres_dba_i;

create table nombres_dba_ii (

SIS_EST_2 varchar (220) primary key,
nombre2 varchar (20)
)

insert nombres_dba_ii(SIS_EST_2, nombre2) 
values ('SIS-6548975', 'Victor')
insert nombres_dba_ii(SIS_EST_2, nombre2) 
values ('SIS-4684854', 'Brayan')
insert nombres_dba_ii(SIS_EST_2, nombre2) 
values ('SIS-5240786', 'Samuel')
insert nombres_dba_ii(SIS_EST_2, nombre2)
values ('SIS-5824458', 'wiliam')

drop table nombres_dba_ii;
select * from nombres_dba_ii;

select n1.nombre1, n2.nombre2 
from Nombres_dba_i AS n1
inner join Nombres_dba_ii AS n2.nombres2 on Nombres_dba_i = Nombres_dba_ii

---------------tabla universidad--------------

DROP TABLE IF EXISTS kardex;
DROP TABLE IF EXISTS estudiantes;
DROP TABLE IF EXISTS kardex;

CREATE TABLE estudiantes
(
	id_est_cedula integer identity primary key,
	nombres varchar (100) not null,
	apellidos varchar (100)not null,
	sexo varchar (10) not null,
	direccion varchar (200) not null,
	telefono integer not null,
	email varchar(50) not null,
	edad integer not null,
	id_esc integer not null,
	foreign key (id_esc) references escuela(id_esc)
);

CREATE TABLE materias
(
	id_mat integer identity primary key not null,
	nombre_mat varchar(100) not null,
	cod_mat varchar (100) not null
);

CREATE TABLE escuela
(
	id_esc integer identity primary key not null,
	nombre varchar (100) not null,
	direccion varchar (100) not null,
);

CREATE TABLE periodo
(
	id_per integer identity primary key not null,
	ano_gestion integer not null,
	semestre varchar (100)
);

CREATE TABLE kardex
(
	id_Kar integer identity primary key not null,
	nota_num integer not null,
	nota_alfabe varchar(100) not null,
	estado varchar (10) not null,
	id_mat integer,
	id_est_cedula integer,
	id_per integer,
	foreign key (id_mat) references materias(id_mat),
	foreign key (id_est_cedula) references estudiantes(id_est_cedula),
	foreign key (id_per) references periodo(id_per)
);

select * from kardex;

insert into escuela(nombre,direccion)
	values('san pedro','av 6 demarzo');

select * from escuela;

INSERT INTO estudiantes ( nombres, apellidos, sexo, direccion, telefono, email, edad, id_esc)VALUES
  ('Ximena', 'Arias Ballesteros', 'femenino', 'Av. 6 de Agosto', 79617575, 'xime@gmail.com', 25, 1);
INSERT INTO estudiantes (nombres, apellidos, sexo, direccion, telefono, email, edad, id_esc) VALUES
  ('Saul', 'Montes Valenzuela', 'masculino', 'Av. 6 de Agosto', 79617576, 'saul@gmail.com', 24, 1);
INSERT INTO estudiantes ( nombres, apellidos, sexo, direccion, telefono, email, edad, id_esc) VALUES
  ('Carla', 'Mavir Uria', 'femenino', 'Av. 6 de Agosto', 79617577, 'carla@gmail.com', 28, 1);
INSERT INTO estudiantes ( nombres, apellidos, sexo, direccion, telefono, email, edad, id_esc) VALUES
  ('Joel', 'Castillo Fuentes', 'masculino', 'Av. 6 de Agosto', 79617578, 'joel@gmail.com', 21, 1);
INSERT INTO estudiantes (nombres, apellidos, sexo, direccion, telefono, email, edad, id_esc) VALUES
  ('Augusto', 'Copar Copar', 'femenino', 'Av. 6 de Agosto', 79617579, 'augusto@gmail.com', 20, 1);

INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Introduccion a la Arquitectura','ARQ-101');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Urbanismo y Diseno','ARQ-102');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Dibujo y Pintura Arquitectonico','ARQ-103');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Matematica discreta','ARQ-104');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Fisica Basica','ARQ-105');


INSERT INTO periodo (ano_gestion, semestre) VALUES (2016, 'Semestre 1');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2016, 'Semestre 2');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2017, 'Semestre 1');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2017, 'Semestre 2');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2018, 'Semestre 1');


select * from estudiantes;

insert into kardex(nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per)
	values(51,'cincuenta y uno','aprobado',1,1,1); 
insert into kardex(nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per)
	values(31,'treinta y uno','reprobado',2,2,2);
insert into kardex(nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per)
	values(61,'sesenta y uno','aprobado',3,3,3);  
insert into kardex(nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per)
	values(41 ,'cuarenta y uno','reprobado',4,4,4);
insert into kardex(nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per)
	values(81,'ochenta y uno','aprobado',5,4,5);  

truncate table kardex;

select * from kardex;


select nombres,apellidos 
from estudiantes
where edad>=24 and sexo = 'masculino' or edad>=24 and sexo = 'femenino';


select nombres,apellidos 
from estudiantes
where edad>=24 and sexo = 'femenino';


select nombres,apellidos 
from estudiantes
where edad>=24 and sexo = 'masculino';

--Mostrar los nombres y apellidos de todos los estudiantes aprobados.
-- ESTUDIANTES 
-- KARDEX

SELECT est.nombres, est.apellidos, kar.nota_num
FROM estudiantes AS est INNER JOIN kardex AS kar ON	kar.id_est_cedula = est.id_est_cedula 	
WHERE kar.nota_num >= 51;

SELECT est.nombres, est.apellidos, est.edad
FROM estudiantes AS est INNER JOIN kardex AS kar ON	kar.id_est_cedula = est.id_est_cedula 	
WHERE kar.nota_num < 51 and est.sexo = 'masculino';

--Que estudiantes(nombres, apellidos y la direccion)
--Forman parte de la escuela"san felipe Asturias II"

--1er paso: Identificar que campos tengo que mostrar
--nombres, apellidos, direccion

--2do paso: en que tablas estan estos campos?
--estudiantes
--escuela

--3er paso: Estas tablas estan relacionadas entre si?
--inner join

Select est.nombres, est.apellidos, esc.direccion
From escuela AS esc
  inner join estudiantes AS est ON esc.id_esc = est.id_esc
  Where esc.nombre = 'san pedro';

  --Mostrar todos los estudiantes (nombres, apellidos edad, genero)
  --que forman parte de la escuela "san pedro", mostrar direccion de la escuela.
  --siempre y cuando la edad sea mayor a 22 y de genero sea masculino o femenino

 select est.nombres, est.apellidos, est.edad, est.sexo, esc.direccion
 from estudiantes as est
 inner join escuela as esc on esc.id_esc = est.id_esc
 where esc.nombre = 'san pedro' and est.edad>22 and est.sexo = 'femenino'

 --Mostrar los nombres y apellidos de todos los estudiantes aprobados en la materia fisica Basica

  select est.nombres, est.apellidos, mat.nombre_mat, kar.nota_num
 from estudiantes as est
 inner join kardex as kar on kar.id_est_cedula = est.id_est_cedula 
 inner join materias as mat on mat.id_mat = kar.id_mat
 where kar.nota_num >= 51 and mat.nombre_mat = 'Fisica Basica'

 -- Mostrar los nombres y apellidos de los estudiantes aprobados y que tengan mayor a 25 mostrar el semestre  
 --y el año  del estudiante que tenga la cedula igual a "6775688"

  select est.nombres, est.apellidos, est.edad, per.ano_gestion
 from estudiantes as est
  inner join kardex as kar on kar.id_est_cedula = est.id_est_cedula 
 inner join periodo as per on per.ano_gestion = per.ano_gestion
 where est.edad>25 and kar.nota_num >=51 and per.ano_gestion = '6775688'