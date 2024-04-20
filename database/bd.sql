/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 8.0.30 : Database - clima
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`clima` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `clima`;

/*Table structure for table `datos_socio` */

DROP TABLE IF EXISTS `datos_socio`;

CREATE TABLE `datos_socio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sexo` text COLLATE utf8mb3_spanish_ci,
  `edad` text COLLATE utf8mb3_spanish_ci,
  `nivel_educacion` text COLLATE utf8mb3_spanish_ci,
  `estado_civil` text COLLATE utf8mb3_spanish_ci,
  `tiempo_cargo` text COLLATE utf8mb3_spanish_ci,
  `tiempo_entidad` text COLLATE utf8mb3_spanish_ci,
  `salario_actual` text COLLATE utf8mb3_spanish_ci,
  `estrato` text COLLATE utf8mb3_spanish_ci,
  `ciudad` text COLLATE utf8mb3_spanish_ci,
  `area` text COLLATE utf8mb3_spanish_ci,
  `id_empresa` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

/*Data for the table `datos_socio` */

LOCK TABLES `datos_socio` WRITE;

insert  into `datos_socio`(`id`,`sexo`,`edad`,`nivel_educacion`,`estado_civil`,`tiempo_cargo`,`tiempo_entidad`,`salario_actual`,`estrato`,`ciudad`,`area`,`id_empresa`) values 
(1,'Femenino','18-22','Secundaria','Casado/a','Menos  de 1 año','Menos  de 1 año','Un salario MLV','Estrato 1','Valledupar','23',4),
(2,'Femenino','23-27','Primaria','Casado/a','Menos  de 1 año','Menos  de 1 año','Un salario MLV','Estrato 1','Valledupar','23',4),
(3,'Femenino','18-22','Primaria','Casado/a','Menos  de 1 año','Menos  de 1 año','Más de 1 hasta 2 salarios MLV','Estrato 1','Valledupar','23',4),
(4,'Masculino','18-22','Primaria','Unión Libre','21 y más años','Menos  de 1 año','Un salario MLV','Estrato 2','Valledupar','23',4),
(5,'Femenino','18-22','Postgrado','Casado/a','Menos  de 1 año','Menos  de 1 año','Más de 1 hasta 2 salarios MLV','Estrato 1','Valledupar','23',4),
(6,'Femenino','18-22','Secundaria','Casado/a','Menos  de 1 año','1 - 5 años','Un salario MLV','Estrato 1','Valledupar','24',4),
(7,'Femenino','18-22','Primaria','Unión Libre','Menos  de 1 año','Menos  de 1 año','Un salario MLV','Estrato 1','Valledupar','25',4),
(8,'Femenino','18-22','Primaria','Casado/a','1 - 5 años','Menos  de 1 año','Un salario MLV','Estrato 1','Valledupar','24',4),
(9,'Masculino','38-42','Universitario','Soltero/a en una relación','6 - 10 años','6 - 10 años','Más de 1 hasta 2 salarios MLV','Estrato 3','Valledupar','26',4),
(10,'Femenino','18-22','Secundaria','Casado/a','Menos  de 1 año','Menos  de 1 año','Un salario MLV','Estrato 1','Aguachica','9',3);

UNLOCK TABLES;

/*Table structure for table `empresa` */

DROP TABLE IF EXISTS `empresa`;

CREATE TABLE `empresa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `nombre` text COLLATE utf8mb3_spanish_ci,
  `logo` text COLLATE utf8mb3_spanish_ci,
  `numero_empleados` int DEFAULT NULL,
  `empleados_responden` int DEFAULT NULL,
  `fecha_creada` text COLLATE utf8mb3_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

/*Data for the table `empresa` */

LOCK TABLES `empresa` WRITE;

insert  into `empresa`(`id`,`id_cliente`,`nombre`,`logo`,`numero_empleados`,`empleados_responden`,`fecha_creada`) values 
(3,5,'Coca-cola','1713469975_coca.jpg',15,1,'18-04-2024 16:19:58'),
(4,5,'Pepsi','1713457608_pepsi.jpg',9,9,'18-04-2024 16:26:48');

UNLOCK TABLES;

/*Table structure for table `empresa_area` */

DROP TABLE IF EXISTS `empresa_area`;

CREATE TABLE `empresa_area` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_empresa` int DEFAULT NULL,
  `nombre_area` text COLLATE utf8mb3_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

/*Data for the table `empresa_area` */

LOCK TABLES `empresa_area` WRITE;

insert  into `empresa_area`(`id`,`id_empresa`,`nombre_area`) values 
(1,3,'Recursos Humanos'),
(2,3,'Finanzas'),
(3,3,'Ventas'),
(4,3,'Marketing'),
(5,3,'Operaciones'),
(6,3,'Tecnología de la Información'),
(7,3,'Servicio al Cliente'),
(8,3,'Logística'),
(9,3,'Administración'),
(10,3,'Comunicaciones'),
(11,3,'Gestión de Proyectos'),
(12,3,'Diseño'),
(13,3,'Relaciones Públicas'),
(14,3,'Consultoría'),
(15,4,'Recursos Humanos'),
(16,4,'Finanzas'),
(17,4,'Ventas'),
(18,4,'Marketing'),
(19,4,'Operaciones'),
(20,4,'Tecnología de la Información'),
(21,4,'Servicio al Cliente'),
(22,4,'Logística'),
(23,4,'Administración editada'),
(24,4,'Comunicaciones editada 2'),
(25,4,'Gestión de Proyectos'),
(26,4,'Diseño'),
(27,4,'Relaciones Públicas'),
(28,4,'Consultoría');

UNLOCK TABLES;

/*Table structure for table `respuestas` */

DROP TABLE IF EXISTS `respuestas`;

CREATE TABLE `respuestas` (
  `id_contesto` int NOT NULL,
  `preg1` int DEFAULT NULL,
  `preg2` int DEFAULT NULL,
  `preg3` int DEFAULT NULL,
  `preg4` int DEFAULT NULL,
  `preg5` int DEFAULT NULL,
  `preg6` int DEFAULT NULL,
  `preg7` int DEFAULT NULL,
  `preg8` int DEFAULT NULL,
  `preg9` int DEFAULT NULL,
  `preg10` int DEFAULT NULL,
  `preg11` int DEFAULT NULL,
  `preg12` int DEFAULT NULL,
  `preg13` int DEFAULT NULL,
  `preg14` int DEFAULT NULL,
  `preg15` int DEFAULT NULL,
  `preg16` int DEFAULT NULL,
  `preg17` int DEFAULT NULL,
  `preg18` int DEFAULT NULL,
  `preg19` int DEFAULT NULL,
  `preg20` int DEFAULT NULL,
  `preg21` int DEFAULT NULL,
  `preg22` int DEFAULT NULL,
  `preg23` int DEFAULT NULL,
  `preg24` int DEFAULT NULL,
  `preg25` int DEFAULT NULL,
  `preg26` int DEFAULT NULL,
  `preg27` int DEFAULT NULL,
  `preg28` int DEFAULT NULL,
  `preg29` int DEFAULT NULL,
  `preg30` int DEFAULT NULL,
  `preg31` int DEFAULT NULL,
  `preg32` int DEFAULT NULL,
  `preg33` int DEFAULT NULL,
  `preg34` int DEFAULT NULL,
  `preg35` int DEFAULT NULL,
  `preg36` int DEFAULT NULL,
  `preg37` int DEFAULT NULL,
  `preg38` int DEFAULT NULL,
  `preg39` int DEFAULT NULL,
  `preg40` int DEFAULT NULL,
  `preg41` int DEFAULT NULL,
  `preg42` int DEFAULT NULL,
  `preg43` int DEFAULT NULL,
  `preg44` int DEFAULT NULL,
  `preg45` int DEFAULT NULL,
  `preg46` int DEFAULT NULL,
  `preg47` int DEFAULT NULL,
  `preg48` int DEFAULT NULL,
  `preg49` int DEFAULT NULL,
  `preg50` int DEFAULT NULL,
  `id_empresa` int DEFAULT NULL,
  PRIMARY KEY (`id_contesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

/*Data for the table `respuestas` */

LOCK TABLES `respuestas` WRITE;

insert  into `respuestas`(`id_contesto`,`preg1`,`preg2`,`preg3`,`preg4`,`preg5`,`preg6`,`preg7`,`preg8`,`preg9`,`preg10`,`preg11`,`preg12`,`preg13`,`preg14`,`preg15`,`preg16`,`preg17`,`preg18`,`preg19`,`preg20`,`preg21`,`preg22`,`preg23`,`preg24`,`preg25`,`preg26`,`preg27`,`preg28`,`preg29`,`preg30`,`preg31`,`preg32`,`preg33`,`preg34`,`preg35`,`preg36`,`preg37`,`preg38`,`preg39`,`preg40`,`preg41`,`preg42`,`preg43`,`preg44`,`preg45`,`preg46`,`preg47`,`preg48`,`preg49`,`preg50`,`id_empresa`) values 
(1,3,2,3,2,2,1,1,1,4,1,4,4,1,4,1,4,1,1,2,1,1,1,4,4,1,4,1,2,1,1,1,1,1,2,1,4,4,1,1,1,1,1,2,4,4,4,1,1,1,1,4),
(2,4,4,1,4,3,1,1,1,4,1,4,4,2,4,1,4,1,1,1,1,1,1,3,4,1,4,1,1,1,1,2,1,1,1,1,4,4,2,1,1,1,1,1,4,3,4,1,1,2,1,4),
(3,3,2,3,2,2,2,3,3,2,3,2,2,2,2,3,3,3,2,3,3,3,3,2,3,3,2,3,3,3,3,2,3,3,3,3,2,2,3,3,2,3,3,3,2,2,2,3,2,3,3,4),
(4,3,2,3,2,2,2,3,3,2,3,2,2,3,2,2,2,3,3,3,2,3,3,2,2,3,2,3,3,1,2,1,1,1,1,1,4,3,1,1,1,1,1,2,4,4,4,1,2,1,1,4),
(5,4,3,3,3,2,3,2,3,2,3,3,3,3,2,2,3,3,3,3,3,3,3,2,2,3,3,3,3,3,3,3,2,3,2,3,2,2,3,2,3,3,3,3,3,2,3,3,3,2,3,4),
(6,3,2,3,2,3,3,3,3,3,3,2,2,3,2,2,2,3,3,3,3,3,2,2,2,3,2,3,3,3,2,3,3,3,3,2,2,2,3,3,3,2,3,3,2,2,2,3,3,2,3,4),
(7,1,4,1,3,4,1,1,2,4,1,4,3,1,4,1,4,1,2,1,1,2,1,4,4,2,4,1,1,1,2,1,1,1,2,1,4,4,2,1,1,1,1,1,4,4,4,2,1,1,1,4),
(8,4,2,2,2,2,3,3,3,3,3,2,2,3,2,3,2,2,3,3,3,3,3,2,2,2,2,2,3,3,3,3,3,3,2,3,2,2,3,3,3,3,3,3,3,2,2,3,3,3,3,4),
(9,3,2,3,2,2,2,3,3,2,2,2,2,3,2,2,2,3,3,2,3,3,3,3,2,3,2,3,2,3,3,3,3,3,2,3,2,2,3,3,3,3,3,3,2,3,2,3,3,3,3,4),
(10,4,3,3,3,2,3,2,3,2,3,2,2,3,2,3,2,3,1,1,1,1,1,4,4,1,2,2,3,3,3,3,3,3,3,3,3,2,3,3,3,3,3,3,2,2,1,1,1,1,1,3);

UNLOCK TABLES;

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `clave` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rol` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `nombres` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `apellidos` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `cedula` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `correo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `pines_comprados` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `pines_utilizados` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `pines_borrados` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

/*Data for the table `usuario` */

LOCK TABLES `usuario` WRITE;

insert  into `usuario`(`id`,`usuario`,`clave`,`rol`,`nombres`,`apellidos`,`cedula`,`correo`,`pines_comprados`,`pines_utilizados`,`pines_borrados`,`imagen`) values 
(1,'root','63a9f0ea7bb98050796b649e85481845','1','Administrador','Administrador','0000000','root@gmail.com','0','0','0','1713370278_admin.png'),
(4,'user_1254544','4673ee619c60af59476a1304a3f4be9a','2','Juan Jose','Lopez Quintero','1254544','juan34@gmail.com','16','0','0','default.png'),
(5,'user_34234234234','81dc9bdb52d04dc20036dbd8313ed055','2','Andres','Mendez','34234234234','ANDRES@gmail.com','34','24','0','default.png'),
(6,'user_4543534534','57c23cf4919bb9b51cf63f832ae26fe4','2','Fabian','Quintero','4543534534','fabian@gmail.com','4','0','0','default.png'),
(7,'user_645645645645','0f50b8ccb6a6700950ec98a06b1c36f8','2','Julian','Mendez','645645645645','julian@gmail.com','80','0','0','default.png'),
(8,'user_34245546546456','83eb77e6945634d07c43956601b4ce02','2','Cristian','Mendoza','34245546546456','cristian@gmail.com','55','0','0','default.png');

UNLOCK TABLES;

/*Table structure for table `venta` */

DROP TABLE IF EXISTS `venta`;

CREATE TABLE `venta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `pines_comprados` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `precio_pin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `fecha` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `total` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

/*Data for the table `venta` */

LOCK TABLES `venta` WRITE;

insert  into `venta`(`id`,`id_cliente`,`pines_comprados`,`precio_pin`,`fecha`,`total`) values 
(3,4,'10','20000','16-04-2024 18:11:54','200000'),
(4,5,'34','10000','16-04-2024 18:12:40','340000'),
(5,6,'4','10000','16-04-2024 18:13:16','40000'),
(6,7,'80','6000','16-04-2024 18:14:12','480000'),
(7,8,'40','12000','16-04-2024 18:16:07','480000'),
(9,4,'6','30000','17-04-2024 14:38:28','180000'),
(10,8,'15','5000','17-04-2024 15:28:04','75000');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
