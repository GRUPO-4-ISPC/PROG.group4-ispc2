USE peluqueria_canina;

INSERT INTO Dueno (DNI_d, Nombre_d, Apellido_d, Telefono_d, Direccion_d)
VALUES ('25345678', 'Pablo', 'Parra', '3852423456', 'Buenos aires 456'),
	   ('27890543', 'Raul', 'Faisal', '3854234565', 'Mendoza 1112'),
	   ('30329684', 'Santiago', 'Iglesias', '3856275900', 'Mitre 590'),
	   ('23968487', 'Hugo', 'Musso', '3855347890', '25 de mayo 338'),
	   ('32783111', 'Pedro', 'Grosso', '3853832208', 'Catamarca 984');
	   
INSERT INTO Perro (Nombre_p, Fecha_Nac_p, Sexo_p, DNI_dueno_p)
VALUES ('Neon', '2019/12/12', 'macho', '25345678'),
	   ('Indiana', '2020/10/1', 'hembra', '27890543'),
	   ('Aika', '2022/5/9', 'hembra', '30329684'),
	   ('Homero', '2015/4/22', 'macho', '23968487'),
	   ('Tyson', '2017/8/5', 'macho', '32783111');
	   
INSERT INTO Historial (Fecha_h, Perro_h, Monto_h, Descripcion_h)
VALUES ('2020/1/10', 1, 500, 'control'),
	   ('2020/1/31', 1, 3290, 'vacunas'),
	   ('2020/10/10', 2, 8900, 'pulgas'),
	   ('2022/5/17', 3, 900, 'control'),
	   ('2022/6/25', 3, 8762, 'vacunas'),
	   ('2021/4/22', 4, 4700, 'control'),
	   ('2020/7/23', 5, 1000, 'peluqueria'),
	   ('2021/2/11', 5, 4765, 'vacunas');