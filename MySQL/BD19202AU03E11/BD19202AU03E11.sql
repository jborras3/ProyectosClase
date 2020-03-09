drop database if exists BD19202AU03E11;
create database BD19202AU03E11;
use BD19202AU03E11;

create table libros(
  codigo int unsigned auto_increment,
  titulo varchar(60) not null,
  autor varchar(30),
  editorial varchar(15),
  precio decimal(5,2) unsigned,
  primary key (codigo)
 );

insert into libros (titulo,autor,editorial,precio) values('El principito','Antonine de Saint','Planeta',15);
insert into libros (titulo,autor,editorial,precio) values('La Cocinera de Castamar','Fernando J. Múñez','Planeta',40);
insert into libros (titulo,autor,editorial,precio) values('Cómo hacer que te pasen cosas buenas','Marián Rojas','Espasa',18.20);
insert into libros (titulo,autor,editorial,precio) values('Magia y enigma','Henry Kamen','Espasa',22.20);
insert into libros (titulo,autor,editorial,precio) values('Matilda','Roald Dahl','Alfaguara',36.40);
insert into libros (titulo,autor,editorial,precio) values('Momo', 'Michael Ende', 'Alfaguara',30.80);
insert into libros (titulo,autor,editorial,precio) values('Mujeritas','Louisa May Alcott','Alfaguara',45.00);
insert into libros (titulo,autor,editorial,precio) values('La historia interminable','Michael Ende','Alfaguara',46.00);
insert into libros (titulo,autor,editorial,precio) values('Peter Pan','J.M. Barrie','Alfaguara',null);

select * from libros;

-- 1. Listar la cantidad de libros agrupados por editorial (No hay que utilizar having):

-- 2. Listar la cantidad de libros agrupados por editorial, pero sólo los que grupos editoriales que tienen más de dos libros.

-- 3. Listar el promedio de los precios de los libros agrupados por editorial (No hay que utilizar having):

-- 4. Listar el promedio de los precios de los libros agrupados por editorial, pero sólo aquellos cuyo promedio supere los 25 euros:

-- 5. Listar número de libros agrupados por editorial sin tener en cuenta la editorial "Planeta"

-- 6. Listar número de libros agrupados por editorial sin tener en cuenta la editorial "Planeta" ni los libros con precio nulo

-- 7. Listar promedio de los precios agrupados por editorial de aquellas editoriales que tienen más de 2 libros 

-- 8. Listar el mayor precio de un libro por editorial (No hay que utilizar having):

-- 9. Listar el mayor precio de un libro por editorial de aquellas que tengan, al menos, un libro que supere los 30 euros

-- 1. Listar la cantidad de libros agrupados por editorial (No hay que utilizar having):

-- 2. Listar la cantidad de libros agrupados por editorial, pero sólo los que grupos editoriales que tienen más de dos libros.

-- 3. Listar el promedio de los precios de los libros agrupados por editorial (No hay que utilizar having):

-- 4. Listar el promedio de los precios de los libros agrupados por editorial, pero sólo aquellos cuyo promedio supere los 25 euros:

-- 5. Listar número de libros agrupados por editorial sin tener en cuenta la editorial "Planeta"

-- 6. Listar número de libros agrupados por editorial sin tener en cuenta la editorial "Planeta" ni los libros con precio nulo

-- 7. Listar promedio de los precios agrupados por editorial de aquellas editoriales que tienen más de 2 libros 

-- 8. Listar el mayor precio de un libro por editorial (No hay que utilizar having):

-- 9. Listar el mayor precio de un libro por editorial de aquellas que tengan, al menos, un libro que supere los 30 euros