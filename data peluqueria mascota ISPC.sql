
USE peluqueria_mascota_ispc;

INSERT INTO duenio
VALUES ("37876584", "Pedro", "alvear", "1137874509", "calle 123 Diagonal"),
       ("35860794", "Ana", "Molina", "1148667820","calle 456 Sur"),
       ("28476195", "Maria", "Guitierrez", "1159678931","calle 655 Oeste"),
       ("30572647", "Juan", "Sosa", "1132868931","calle 899 Este"),
       ("29857638", "Camila", "Fernandez", "1143989042","calle 282"),
       ("30968547", "Pedro", "Ordaz", "1157357378","calle 945 Sur");
       
-- 2.Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
INSERT INTO perro (nombre, fecha_nacimiento, sexo, fk_duenio_dni)
VALUES  ("Luli", "2020-10-15", "hembra", "37876584"),
	    ("Dora", "2016-12-23", "hembra", "37876584"),
        ("Mora", "2019-11-25", "hembra", "30968547"),
	    ("Tito", "2020-12-19", "macho", "29857638"),
	    ("Roco", "2022-01-27", "macho", "29857638"),
	    ("Odin", "2021-04-24", "macho", "30572647"),
        ("Perla", "2018-05-13", "hembra", "30572647"),
        ("Machi", "2016-06-14", "hembra", "35860794"),
        ("Nina", "2022-01-11", "hembra", "35860794"),
        ("Tobi", "2015-11-24", "macho", "28476195");
        
INSERT INTO historial (fecha, monto, fk_perro_id)
VALUES  ( "2021-10-15", 3000, 1),
	    ( "2017-06-08", 500, 2),
        ( "2020-11-25", 2000, 3),
	    ( "2022-03-18", 4000, 4),
	    ( "2022-11-17", 4000, 5),
	    ( "2022-05-22", 4000, 6),
        ( "2019-10-19", 1000, 7),
        ( "2017-02-22", 500, 8),
        ( "2022-10-19", 100, 9),
        ( "2016-11-15", 500, 10);