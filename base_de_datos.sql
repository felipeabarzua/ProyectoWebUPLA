
/*!40101 SET SQL_MODE=''*/;

create database if not exists `noticias`;

USE `noticias`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `clave` */

DROP TABLE IF EXISTS `clave`;

CREATE TABLE `clave` (
  `Rut` int(8) NOT NULL,
  `pass` varchar(100) NOT NULL,
  KEY `FK_Rut` (`Rut`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `clave` */

/*Table structure for table `noticia` */

DROP TABLE IF EXISTS `noticia`;

CREATE TABLE `noticia` (
  `Idnoticia` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(100) NOT NULL,
  `Subtitulo` varchar(500) NOT NULL,
  `Cuerpo` varchar(500) NOT NULL,
  `Imagen` varchar(500) NOT NULL,
  `Sonido` varchar(500) DEFAULT NULL,
  `Video` varchar(500) DEFAULT NULL,
  `Rut` int(9) NOT NULL,
  `FechaNot` date NOT NULL,
  PRIMARY KEY (`Idnoticia`),
  KEY `FK_Rut` (`Rut`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `noticia` */

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `Rut` int(8) NOT NULL,
  `Rutver` varchar(1) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido1` varchar(100) NOT NULL,
  `Apellido2` varchar(100) NOT NULL,
  `Fechanac` date NOT NULL,
  `Tipo` varchar(100) NOT NULL,
  `Carrera` varchar(100) NOT NULL,
  `Estado` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Rut`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
