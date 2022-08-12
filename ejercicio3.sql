CREATE SCHEMA `valoracion_final` ;
CREATE TABLE `valoracion_final`.`dueno` (
  `dni_dueno` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  `direccion` VARCHAR(45) NULL,
  PRIMARY KEY (`dni`));
  
CREATE TABLE `valoracion_final`.`perro` (
  `idperro` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `fecha_nac` VARCHAR(45) NULL,
  `sexo` VARCHAR(45) NULL,
  `dni_dueno` INT NULL,
  PRIMARY KEY (`idperro`),
    FOREIGN KEY (`dni_dueno`)
    REFERENCES `valoracion_final`.`dueno` (`dni`)
);

CREATE TABLE `valoracion_final`.`historial` (
  `idhistorial` INT NOT NULL,
  `fecha` VARCHAR(45) NULL,
  `perro` INT NULL,
  `descripcion` VARCHAR(45) NULL,
  `monto` VARCHAR(45) NULL,
  PRIMARY KEY (`idhistorial`),
    FOREIGN KEY (`perro`)
    REFERENCES `valoracion_final`.`perro` (`idperro`));

INSERT INTO `valoracion_final`.`dueno` (`dni_dueno`, `nombre`, `apellido`, `telefono`, `direccion`) VALUES ('1234565', 'juan', 'perez', '4789000', 'calle 123');

INSERT INTO `valoracion_final`.`perro` (`idperro`, `nombre`, `fecha_nac`, `sexo`, `dni_dueno`) VALUES ('1', 'ciro', '1-2-2020', 'm', '1234565');

select * from `valoracion_final`.`historial` order by `fecha` desc;
delete from `valoracion_final`.`historial` where `fecha` > '1-1-2020' -- si no se atiende hace 2 años se elimina
