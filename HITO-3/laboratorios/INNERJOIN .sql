Create Database Universidad6;
use Universidad6;

create table Letras_A
(
  
  letra char not null

);

insert into Letras_A
Values('D');
insert into Letras_A
Values('E');
insert into Letras_A
Values('F');
insert into Letras_A
Values('G');
insert into Letras_A
Values('H');

select * from Letras_A;

create table Letras_B
(
  
  letra char not null

);

insert into Letras_B
Values ('A');
insert into Letras_B
Values ('B');
insert into Letras_B
Values ('C');
insert into Letras_B
Values ('D');
insert into Letras_B
Values ('E');

select * from Letras_B;

select ta.letra, tb.letra
from Letras_A AS ta
     INNER JOIN Letras_B AS tb ON ta.letra = tb.letra;
	 
--------------------------------------------------------
--------------------------------------------------------
--------------INNER JOIN de numeros---------------------
--------------------------------------------------------
--------------------------------------------------------

create table Numeros_A
(
  
  numero integer not null

);

insert into Numeros_A (numero)
Values(1);
insert into Numeros_A (numero)
Values(2);
insert into Numeros_A (numero)
Values(3);
insert into Numeros_A (numero)
Values(4);
insert into Numeros_A (numero)
Values(5);
insert into Numeros_A (numero)
Values(6);
insert into Numeros_A (numero)
Values(7);

drop table Numeros_A;

create table Numeros_B
(
  
  numeros integer not null

);

insert into Numeros_B (numeros)
Values(4);
insert into Numeros_B (numeros)
Values(5);
insert into Numeros_B (numeros)
Values(6);
insert into Numeros_B (numeros)
Values(7);
insert into Numeros_B (numeros)
Values(8);
insert into Numeros_B (numeros)
Values(9);

drop table Numeros_B;

----Mostrar los numeros que tengan relacion con Num_A y Num_B---

select Num_A.numero, Num_B.numeros
from Numeros_A AS Num_A
     INNER JOIN Numeros_B AS num_B On Num_A.numero = Num_B.numeros

----mostrar todos los numeros que tengan relacion con Num_A y num_B y que sean menores o igual a 5----

select Num_A.numero, Num_B.numeros
from Numeros_A AS Num_A
     INNER JOIN Numeros_B AS num_B On Num_A.numero = Num_B.numeros
WHERE Num_B.numeros <= AND Num_B.numero <=5

