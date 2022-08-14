CREATE DATABASE peluqueria_canina;
USE peluqueria_canina;

/*Tabla Dueño*/
CREATE TABLE Dueno(
DNI_d int primary key NOT NULL,
Nombre_d varchar (25) NOT NULL,
Apellido_d varchar (25) NOT NULL,
Telefono_d bigint NOT NULL,
Direccion_d varchar(50) NOT NULL
);

/*Tabla Perro*/
CREATE TABLE Perro(
ID_perro_p int primary key auto_increment NOT NULL,
Nombre_p varchar (25) NOT NULL,
Fecha_Nac_p date NOT NULL,
Sexo_p enum('macho','hembra') NOT NULL,
DNI_dueno_p int NOT NULL,
constraint fk_fdni foreign key (DNI_dueno_p) references Dueno(DNI_d)
);

/*Tabla Historial*/
CREATE TABLE Historial(
ID_Historial_h int primary key auto_increment NOT NULL,
Fecha_h date NOT NULL,
Perro_h int NOT NULL,
Descripcion_h varchar(200) NOT NULL,
Monto_h decimal(19,2) NOT NULL,
constraint fk_fperro foreign key (Perro_h) references Perro(ID_perro_p)
)