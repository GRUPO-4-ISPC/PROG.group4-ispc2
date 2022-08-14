-- CREACION DE TABLAS --
create database Peluqueria_canina;

use Peluqueria_canina;

create table Dueno (
DNI int primary key not null,
Nombre varchar(20) not null,
Apellido varchar(20) not null,
Telefono int not null,
Direccion varchar(50)
);

create table Perro (
ID_perro bigint primary key not null auto_increment,
Nombre varchar(20) not null,
Fecha_nac date not null,
Sexo enum ( 'h','m' ),
DNI_dueno int not null,
FOREIGN KEY(DNI_dueno) REFERENCES Dueno(DNI)
);

create table Historial (
ID_historial bigint primary key not null auto_increment,
Fecha date not null,
Perro bigint not null,
Descripcion varchar(200) not null,
Monto decimal(15,1),
foreign key(Perro) REFERENCES Perro(ID_perro)
);

-- INCORPORACION DE DATOS -- 
insert into dueno (dni,nombre,apellido,telefono,direccion)
values (6789671, 'Veronica', 'Perez', 351586211, 'Avda. Alvear 3500'),
       (25879451, 'Carlos', 'Amarilla', 351489621, 'Avda. Colón 381'),
       (8737541, 'Ana Maria', 'Gialdroni', 351558697, 'Pellegrini 671'),
       (8647847, 'Patricio', 'López', 351456871, 'Güemes 458'),
       (35897741, 'Juan Manuel', 'Estregón', 351587962, 'Peatonal Junín 230');
       
insert into perro (nombre, fecha_nac, sexo, DNI_dueno)
values ('Toto', '2020-08-10', 'm',6789671),
	   ('Ulises', '2019-11-25', 'm',25879451),
       ('Popea', '2015-08-08', 'h',8737541),
       ('Akuma', '2008-06-12', 'h',8647847),
       ('Papaleta', '2022-01-15', 'm',35897741);
       
insert into historial (fecha, perro, descripcion, monto)
values ('2022-05-12','1','corte y baño','1500'),
       ('2022-03-10','2','baño perro grande','2500'),
       ('2021-01-18','3','corte y baño ','1500'),
       ('2021-12-20','4','corte y baño','1500'),
       ('2022-08-13','5','baño perro chico','1200');

-- EJERCICIOS / CONSULTAS A LA BASE DE DATOS--

-- 1. Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.--

SELECT * FROM Perro 

-- 2. Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal. --

insert into dueno (dni,nombre,apellido,telefono,direccion)
values (27758984, 'Pablo', 'Morales', 351556221, 'Los Jazmines 258');

insert into perro (nombre, fecha_nac, sexo, DNI_dueno)
values ('Gufy', '2022-07-20', 'm', 27758984);

-- 8. Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10 --

insert into perro (ID_perro, nombre, fecha_nac, sexo, DNI_dueno)
values (10, 'Calígula', '2020-06-10', 'm', 27758984);

insert into historial (fecha, perro, descripcion, monto)
values ('2022-08-13','10','corte y baño perro grande','2500');

select * from historial