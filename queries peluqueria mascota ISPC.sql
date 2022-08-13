
USE  peluqueria_mascota_ispc;

-- SELECT * FROM duenio;
-- SELECT * FROM perro;
-- SELECT * FROM historial;

-- 6. Obtener todos los perros que asistieron a la peluqueria en el año 2022
SELECT id_perro, nombre, fecha_nacimiento, sexo, fk_duenio_dni, fecha
FROM perro
INNER JOIN historial
ON perro.id_perro = historial.fk_perro_id 
WHERE YEAR(fecha)=2022;