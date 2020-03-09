/* Creamos base de datos */
drop database if exists indices;
create database indices;
use indices;

/* Creamos tabla con información de la base de datos de employees - 240124 registros*/
create table ejercicio_indices as
select e.emp_no as id_empleado,e.first_name as nombre,e.last_name as apellido,t.title as puesto,e.birth_date as fecha_nacimiento, gender as sexo
  from employees.employees e inner join employees.titles t on e.emp_no=t.emp_no
 where t.to_date = '9999-01-01';

/* Añadimos otros 240124 registros*/
insert into ejercicio_indices
select id_empleado+499999,nombre,
       apellido,puesto,fecha_nacimiento,sexo
  from ejercicio_indices;

/* Añadimos otros 480248 registros*/
insert into ejercicio_indices
select id_empleado+999998,nombre,
       apellido,puesto,fecha_nacimiento,sexo
  from ejercicio_indices;

/* Añadimos otros 960496 registros*/
insert into ejercicio_indices
select id_empleado+1999996,nombre,
       apellido,puesto,fecha_nacimiento,sexo
  from ejercicio_indices;

/* ¿Cuantos megas ocupa la tabla? Miralo en la pestaña de información de la tabla en el Workbench */

/* ¿Cuantos registros hay en total? */ 

/* ¿Cuanto tarda en obtener los datos del id_empleado 11000? */

/* ¿Cuanto tarda en obtener los datos ordenado alfabeticamente por puesto? */

/* ¿Cuanto tarda en obtener el número de empleados por puesto? */

/* Crea un indice en la columna id_empleado */

/* Ahora, ¿Cuanto tarda en obtener los datos del id_empleado 11000? */

/* Crea un indice en la columna puesto */

/* ¿Cuanto tarda en obtener los datos ordenado alfabeticamente por puesto? */

/* ¿Cuanto tarda en obtener el número de empleados por puesto? */

/* ¿Cuanto tarda en obtener los datos ordenado por nombre y apellido? */

/* Crea un índice para obtener la lista por nombre y apellido más rápidamente */

/* ¿Cuanto tarda en obtener los datos ordenado por nombre y apellido? */

/* ¿Cuantos megas ocupan los indices? Miralo en la pestaña de información de la tabla en el Workbench */