create database hito4_funciones;
use hito4_funciones;

--manejo de funciones

--una funcion de agregacion siempre se ejecuta
--en la clausula SELECT
--Ademas siempre arroja un unico valor (una fila)
--Es aplicado a un grupo de registros (A una columna de la tabla)

/*
Create table estudiantes(

id_est Integer identity Primary key,
nombres varchar (20) not null,
apellidos varchar (20)not null,
edad integer not null,
fono integer not null,
email varchar (100) not null,
direccion varchar (200) not null,
genero varchar(50)not null,
id_esc Integer,
foreign key (id_esc) references ESCUELA (id_esc) 
);

INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero)
  VALUES ('Miguel' ,'Gonzales Veliz', 20, 2832115, 'miguel@gmail.com', 'Av. 6 de Agosto', 'masculino');
INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero)
  VALUES ('Sandra' ,'Mavir Uria', 25, 2832116, 'sandra@gmail.com', 'Av. 6 de Agosto', 'femenino');
INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero)
  VALUES ('Joel' ,'Adubiri Mondar', 30, 2832117, 'joel@gmail.com', 'Av. 6 de Agosto', 'masculino');
INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero)
  VALUES ('Andrea' ,'Areas Ballesteros', 21, 2832118, 'andrea@gmail.com', 'Av. 6 de Agosto', 'femenino');
INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero)
  VALUES ('Santos' ,'Montes valenzuela', 24, 2832119, 'santos@gmail.com', 'Av. 6 de Agosto', 'masculino');

  Select est.*
  from estudiantes AS est;


  --Determinar cuantos estudiantes registrados hay.

  Select COUNT(*) /*El Count nos sirve para ver cuantos valores tiene la tabla*/
  From estudiantes AS est; 

  SELECT COUNT(est.id_est)
  FROM estudiantes AS est;

  --Determinar la minima de edad de los estudiantes

  SELECT MIN (est.edad)
  FROM estudiantes AS est;


  --DETERMINAR LA CANTIDAD DE estudiantes de genero femenino

  SELECT COUNT (est.genero)
  FROM estudiantes AS est
  WHERE genero = 'femenino'

  SELECT COUNT (est.genero)
  FROM estudiantes AS est
  WHERE genero = 'masculino'

  SELECT avg(est.edad)
FROM estudiantes AS est;

ALTER TABLE estudiantes ADD licencia_conducir BIT;

  Select est.*
  from estudiantes AS est;

  INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero, Licencia_conducir)
  VALUES ('Ana' ,'Gonzales Veliz', 20, 2832115, 'miguel@gmail.com', 'Av. 6 de Agosto', 'Femenino', 1);

    INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero, Licencia_conducir)
  VALUES ('Pepito' ,'Gonzales Veliz', 25, 2832115, 'miguel@gmail.com', 'Av. 6 de Agosto', 'masculino', 1);

  --DETERMINAR LA CANTIDAD DE ESTUDIANTES

  SELECT COUNT (est.licencia_conducir)
  FROM estudiantes AS est;

  SELECT COUNT (*)
  FROM estudiantes AS est;

  SELECT avg(est.edad)
FROM estudiantes AS est;

-- Crear la consulta SQL que obtenga la mayor edad de los estudiantes 
--(cuyo sexo seas masculino o femenino).

  SELECT MAX(est.edad)
  FROM estudiantes AS est
  WHERE est.genero = 'femenino';

  SELECT MAX(est.edad)
  FROM estudiantes AS est
  WHERE est.genero = 'masculino';

  /*Determinar cuántos estudiantes hay, en donde su apellido contenga con la PALABRA "el" 
  y ademas seal del genero masculino*/

  SELECT COUNT (est.id_est)
  FROM estudiantes AS est
  WHERE est.apellidos like'%el%' and est.genero = 'masculino';

  /*Determinar cuántos estudiantes tienen una edad mayor 
  a 20 y menor a 30 de los estudiantes que tengan licencia de conducir.*/

  SELECT COUNT(est.Licencia_conducir)
  FROM estudiantes AS est
  WHERE est.edad > 20 and est.edad < 30;
/*Esta respuesta esta MAL >:( */  

  SELECT COUNT(est.id_est)
  FROM estudiantes AS est
  WHERE est.edad > 20 and est.edad < 30 and est.Licencia_conducir = 1;

/*Esta respuesta esta BIEN :D */

/*Ahora con between*/

  SELECT COUNT(est.id_est)
  FROM estudiantes AS est
  WHERE est.edad > 20 and est.edad < 30 and est.Licencia_conducir BETWEEN 0 and 1;

  SELECT COUNT(est.id_est)
  FROM estudiantes AS est
  WHERE est.edad BETWEEN 21 and 29
        and est.Licencia_conducir = 1;

/*Agregar la tabla escuela
id_esc
nombre
direccion
turno*/

Create table ESCUELA(

id_esc Integer Primary key,
nombre varchar (30),
direccion varchar (40),
turno varchar (20)
);

    INSERT INTO ESCUELA(id_esc, nombre, direccion, turno)
  VALUES ('1','Luis Espinal Camps' ,'Alto Villa Victoria', 'mañana');
   
    INSERT INTO ESCUELA(id_esc, nombre, direccion, turno)
  VALUES ('2','Luis Espinal Camps' ,'Alto Villa Victoria', 'tarde');

  SELECT * FROM ESCUELA;

  Drop table estudiantes;



--Todo estudiantes forma parte de una escuela

Create table estudiantes(

id_est Integer identity Primary key,
nombres varchar (20) not null,
apellidos varchar (20)not null,
edad integer not null,
fono integer not null,
email varchar (100) not null,
direccion varchar (200) not null,
genero varchar(50)not null,
id_esc Integer,
foreign key (id_esc) references ESCUELA (id_esc) 
);

INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero, id_esc)
  VALUES ('Miguel' ,'Gonzales Veliz', 20, 2832115, 'miguel@gmail.com', 'Av. 6 de Agosto', 'masculino', 1);
INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero)
  VALUES ('Sandra' ,'Mavir Uria', 25, 2832116, 'sandra@gmail.com', 'Av. 6 de Agosto', 'femenino', 2);
INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero)
  VALUES ('Joel' ,'Adubiri Mondar', 30, 2832117, 'joel@gmail.com', 'Av. 6 de Agosto', 'masculino', 1);
INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero)
  VALUES ('Andrea' ,'Areas Ballesteros', 21, 2832118, 'andrea@gmail.com', 'Av. 6 de Agosto', 'femenino',2);
INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero)
  VALUES ('Santos' ,'Montes valenzuela', 24, 2832119, 'santos@gmail.com', 'Av. 6 de Agosto', 'masculino',1);

  select * from estudiantes, ESCUELA
  drop table estudiantes;
  drop table ESCUELA; */

  /*Base de datos 1 laboratorio 2*/

  /*
Create table estudiantes(

id_est Integer identity Primary key,
nombres varchar (20) not null,
apellidos varchar (20)not null,
edad integer not null,
fono integer not null,
email varchar (100) not null,
direccion varchar (200) not null,
genero varchar(50)not null,
id_esc Integer not null,
licencia_conducir Bit not null,
foreign key (id_esc) references ESCUELA (id_esc) 
);

INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero, id_esc, licencia_conducir)
  VALUES ('Miguel' ,'Gonzales Veliz', 20, 2832115, 'miguel@gmail.com', 'Av. 6 de Agosto', 'masculino', 1, 0),
         ('Sandra' ,'Mavir Uria', 25, 2832116, 'sandra@gmail.com', 'Av. 6 de Agosto', 'femenino', 2, 0),
         ('Joel' ,'Adubiri Mondar', 30, 2832117, 'joel@gmail.com', 'Av. 6 de Agosto', 'masculino', 3, 0),
         ('Andrea' ,'Areas Ballesteros', 21, 2832118, 'andrea@gmail.com', 'Av. 6 de Agosto', 'femenino',4, 1),
         ('Santos' ,'Montes valenzuela', 24, 2832119, 'santos@gmail.com', 'Av. 6 de Agosto', 'masculino',1, 0),
INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero, id_esc, licencia_conducir)
  VALUES ('Ana' ,'Gonzales Veliz', 20, 2832115, 'ana@gmail.com', 'Av. 6 de Agosto', 'femenino',2, 1),
		 ('Pepito' ,'Gonzales Veliz', 20, 2832119, 'pepito@gmail.com', 'Av. 6 de Agosto', 'masculino',3, 0);
		

  
Create table ESCUELA(

id_esc Integer Primary key not null,
nombre varchar (30) not null,
direccion varchar (40) not null,
turno varchar (20) not null
);

    INSERT INTO ESCUELA(id_esc, nombre, direccion, turno)
  VALUES ('1','San Simon' ,'Cochabamba', 'mañana'),
         ('2','Andres Bello' ,'El Alto', 'mañana-tarde'),
         ('3','Amor de Dios Fe y Alegria' ,'El Alto', 'mañana-tarde'),
         ('4','Don Bosco' ,'La Paz', 'mañana-tarde-noche');


  select * from estudiantes;
    select * from escuela;
	drop table ESCUELA;
	drop table estudiantes;


	select est.*
	from estudiantes as est;

/*Cuantos estudiantes tienen licencia de conducir*/

	select COUNT (est.licencia_conducir)
	from estudiantes as est
	where est.licencia_conducir = 1;

/*Cuantos estudiantes menores a 20 años no tienen licencia de conducir*/
	
  SELECT COUNT(est.licencia_conducir)
  FROM estudiantes AS est
  WHERE est.edad < 20 and est.Licencia_conducir = 0;

/*determinar cuantos estudiantes son de la escuela amor de dios fe y alegria*/

  select COUNT (est.id_esc)
  from estudiantes as est
  inner join escuela as esc on est.id_esc = esc.id_esc
  where esc.nombre = 'Amor de Dios Fe y Alegria';

  /*Cuantos estudiantes forman parte de las escuelas que tienen los horarios mañana y tarde*/

  select COUNT (est.id_esc)
  from estudiantes as est
  inner join escuela as esc on est.id_esc = esc.id_esc
  where esc.turno = 'mañana-tarde'; 

  /*Cuantos estudiantes mayor a 25 años estan en escuelas del turno tarde*/

    select COUNT (est.id_esc)
  from estudiantes as est
  inner join escuela as esc on est.id_esc = esc.id_esc
  where esc.turno like '%tarde%' and est.edad > 25;

-----------/*Creacion de funciones*/---------------

Create function retorna_nombre_materia ()
returns varchar(20)as 
begin
  return 'Base de datos I'
end;

Select dbo.retorna_nombre_materia () as DBA;

Alter function retorna_nombre_materia_V2()
returns varchar(25) as
Begin
Declare @nombre Varchar(25); --declaramos el nombre de nuestra funcion 
set @nombre = 'Base de datos III' --entrada
return @nombre; --retornamos
end; --Finalizamos

select dbo.retorna_nombre_materia_v2() as DBA

create function retorna_nombre_materia_v3(@nombreMateria varchar(25))
returns varchar(25) as
begin
  declare @nombre varchar(25);
  set @nombre = @nombreMateria;
  return @nombre;
end;

/*Crear una funcion que no reciba parametros*/
/*la suma de dos numeros cualquiera*/
/*la funcion retorna esa forma*/
create function suma_de_dos_numeros()
returns integer as
begin
return(5+5);
end

select dbo.suma_de_dos_numeros();

/*Crear una funcion que reciba tres parametros enteros*/
/*la suma de 3 numeros cualquiera*/
/*la funcion retorna esa forma*/

create function suma_de_tres_numeros()
returns integer as
begin
return(5+5+5);
end

select dbo.suma_de_tres_numeros()

/*accion es sumar: Retornar la suma de los 2 numeros*/
/*accion es restar: Retornar la resta de los 2 numeros*/

create function suma_y_resta_de_dos_numeros(@numero1 integer, @numero2 integer, @accion varchar(20))
returns integer as
begin
declare @resultado integer;
if @accion = 'sumar'
set @resultado = @numero1 + @numero2;
return(@resultado);
if @accion = 'restar'
set @resultado = @numero1 - @numero2;
return (@resultado);
end

select dbo.suma_y_resta_de_dos_numeros(2,1,'sumar') ;
*/
--laboratorio 3 hito 4 --

create function operaciones(@num1 Integer, @num2 integer, @action Varchar(20))
Returns integer as
begin
declare @response integer = 0;

if (@action = 'suma')
Begin
Set @response = @num1 + @num2;
end;

if (@action = 'resta')
Begin
Set @response = @num1 - @num2;
end;

if (@action = 'multiplicacion')
Begin
Set @response = @num1 * @num2;
end;

if (@action = 'division')
Begin
Set @response = @num1 / @num2;
end;
Return @response;
end;

select dbo.operaciones(2,1,'suma') ;

--Con returns

create function operaciones_v2 (@num1 Integer, @num2 integer, @action Varchar(20))
Returns integer as
begin
  if(@action = 'suma')
     Return @num1 + @num2;
  if(@action = 'resta')
     Return @num1 - @num2;
  if(@action = 'multiplicacion')
     Return @num1 * @num2;
  if(@action = 'division')
     Return @num1 / @num2;

	 return 1;

	 end;

	 select dbo.operaciones_V2(2,1,'suma') ;

--Con cases

create function operaciones_v3 (@num1 Integer, @num2 integer, @action Varchar(20))

Select est.* 
from estudiantes as est;

--Determinar aquellos estudiantes mayores a 25 años

  SELECT COUNT(est.edad)
  FROM estudiantes AS est
  WHERE est.edad > 25 ;

  --Crear una funcion que me permita saber la cantidad de
  -- estudiantes mayores a cierta edad

  create function mayores_a_cierta_edad(@edad integer)
  Returns Integer as 
  Begin


   Declare @response integer = 0;

  SELECT @response COUNT(est.edad)
  FROM estudiantes AS est
  WHERE est.edad > @edad;

   end;

  Return @response;

  end;

  --Crear una funcion que permita saber la cantidad de estudiantes mayores
  --a cierta edad del sexo femenino que forman
  --parte de la escuela Andres bello.

  --La funcion recibe 2 parametros
  --1er parametro es la edad
  --2do parametro es el genero

   create function mayores_a_cierta_edad_del_sexo_femenino(@edad integer, genero varchar (50))
  Returns Integer as 
  Begin
   declare @respuesta integer  = 0;

     select @respuesta = COUNT (est.id_esc)
	 from estudiantes as est
	  inner join escuela as esc on est.id_esc = esc.id_esc
	  where est.genero = 'femenino' and
	        est.edad > @respuesta and
			esc.nombre 'Andres Bello';
   
   return @respuesta;
     
  end;

  SELECT MAX (est.id_est )
  FROM estudiantes AS est
  

  create function max_id_valor()
  returns integer as
  begin
  Declare @respuesta integer = 0;

    SELECT @respuesta = MAX (est.id_est)
  FROM estudiantes AS est
  return @respuesta;
  end;

  select dbo.max_id_valor();

  select est.*
  from estudiantes as est
  where est.id_est = dbo.max_id_valor();