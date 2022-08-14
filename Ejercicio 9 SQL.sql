/*
SQLyog Community v13.1.5  (32 bit)
MySQL - 5.7.39-log : Database - valoracion final modulo programador
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`valoracion final modulo programador` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `valoracion final modulo programador`;

/*Table structure for table `dueno` */

DROP TABLE IF EXISTS `dueno`;

CREATE TABLE `dueno` (
  `ID_DNIdueno` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_DNIdueno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dueno` */

insert  into `dueno`(`ID_DNIdueno`,`Nombre`,`Apellido`,`Telefono`,`Direccion`) values 
(29456789,'Pedro','Ortiz','4646543','Jujuy 432'),
(30111222,'Pedro','Ortiz','4644441','Mexico 234'),
(34111333,'Jose','Aguirre','4640999','Peru 888');

/*Table structure for table `historial` */

DROP TABLE IF EXISTS `historial`;

CREATE TABLE `historial` (
  `ID_Historial` int(11) NOT NULL,
  `Fecha` varchar(50) DEFAULT NULL,
  `Perro` int(11) DEFAULT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  `Monto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Historial`),
  KEY `ID_Perro` (`Perro`),
  CONSTRAINT `ID_Perro` FOREIGN KEY (`Perro`) REFERENCES `perro` (`ID_Perro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `historial` */

insert  into `historial`(`ID_Historial`,`Fecha`,`Perro`,`Descripcion`,`Monto`) values 
(1,'13/07/2022',1,'Corte Pelo','$2000'),
(2,'10/10/2021',2,'Baño','$1500'),
(3,'15/11/2021',3,'Corte','$3000');

/*Table structure for table `perro` */

DROP TABLE IF EXISTS `perro`;

CREATE TABLE `perro` (
  `ID_Perro` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Fecha_nac` varchar(50) DEFAULT NULL,
  `Sexo` varchar(50) DEFAULT NULL,
  `ID_DNIdueno` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Perro`),
  KEY `ID_DNIdueno` (`ID_DNIdueno`),
  CONSTRAINT `ID_DNIdueno` FOREIGN KEY (`ID_DNIdueno`) REFERENCES `dueno` (`ID_DNIdueno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `perro` */

insert  into `perro`(`ID_Perro`,`Nombre`,`Fecha_nac`,`Sexo`,`ID_DNIdueno`) values 
(1,'Mora','02/02/2015','Femenino',29456789),
(2,'Ciro','10/10/2010','MAsculino',30111222),
(3,'Lola','12/12/2012','Femenino',34111333);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
