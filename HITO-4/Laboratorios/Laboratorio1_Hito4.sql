create database hito4_funciones;
use hito4_funciones;

--manejo de funciones

--una funcion de agregacion siempre se ejecuta
--en la clausula SELECT
--Ademas siempre arroja un unico valor (una fila)
--Es aplicado a un grupo de registros (A una columna de la tabla)

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



--Todo estudiantes forma parte de una escuela*/

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
  drop table ESCUELA;