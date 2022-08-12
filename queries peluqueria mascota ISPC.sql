
USE  peluqueria_mascota_ispc;

SELECT * FROM historial;
SELECT * FROM perro;
SELECT * FROM duenio;

-- 6. Obtener todos los perros que asistieron a la peluqueria en el año 2022
SELECT *
FROM perro
INNER JOIN historial
ON perro.id_perro = historial.fk_perro_id 
WHERE YEAR(fecha)=2022;