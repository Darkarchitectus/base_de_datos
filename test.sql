create database test
use test

--crear tablas
create table datos (
ID varchar(20),
Nombre varchar(15),
apellido varchar(15)
)

create table notas(
ID varchar(20),
Nombre Varchar(15),
Notas varchar(2)
)
--insertar datos
insert into datos (ID,Nombre,apellido) values (1,'Carlos','Lopez')
insert into datos (ID,Nombre,apellido) values (2,'carlos','perez')
insert into datos (ID,Nombre,apellido) values (3,'carlos','silva')

insert into notas (ID,Nombre,Notas) values (2,'carlos',5)
insert into notas (ID,Nombre,Notas) values (1,'carlos',8)
insert into notas (ID,Nombre,Notas) values (3,'carlos',9)



--consultas
select * from datos
select * from datos where ID=2
select Nombre from datos where apellido='lopez'
select *from notas
--consulta que no se ha igual
select distinct nombre,apellido from datos

--ORDENAR DATOS
order by ID DESC

--funcion sum,count,max,avg,min
select SUM(Notas) as  total_promedio from notas
where nombre='carlos'
--consulta con in/not in
select Nombre as estudiante,notas as nota_final
from notas
where ID IN(SELECT DISTINCT (ID) AS IDENTIFICADOR FROM datos)
--conuslta between
select Nombre as estudiante,notas as nota_media
from notas
where notas between 1 and 6
--consulta like
select Nombre as estudiante,notas as nota_igual
from notas
where notas like 9