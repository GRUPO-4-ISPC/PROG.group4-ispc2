
CREATE DATABASE IF NOT EXISTS peluqueria_mascota_ispc;

USE peluqueria_mascota_ispc;

CREATE TABLE IF NOT EXISTS duenio (
    dni VARCHAR(10) PRIMARY KEY UNIQUE NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    apellido VARCHAR(20) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    direccion VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS perro (
    id_perro BIGINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    sexo ENUM('hembra', 'macho') NOT NULL,
    fk_duenio_dni VARCHAR(10) NOT NULL,
    FOREIGN KEY (fk_duenio_dni) REFERENCES duenio (dni)
);

CREATE TRIGGER lcase_insert BEFORE INSERT ON perro FOR EACH ROW
SET NEW.sexo = LOWER(NEW.sexo);

CREATE TRIGGER lcase_update BEFORE UPDATE ON perro FOR EACH ROW
SET NEW.sexo = LOWER(NEW.sexo);


CREATE TABLE IF NOT EXISTS historial (
    id_historial BIGINT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE DEFAULT (CURRENT_DATE()),
    descripcion VARCHAR(100) NULL default "",
    monto DECIMAL(16,2) NOT NULL CHECK (monto >= 0),
    fk_perro_id BIGINT NOT NULL,
    FOREIGN KEY (fk_perro_id) REFERENCES perro(id_perro)
);
