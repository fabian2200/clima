DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` text,
  `clave` text,
  `rol` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `nombres` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `apellidos` text,
  `cedula` text,
  `correo` text,
  `pines_comprados` text,
  `pines_utilizados` text,
  `pines_borrados` text,
  `imagen` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

/*Data for the table `usuario` */

LOCK TABLES `usuario` WRITE;

insert  into `usuario`(`id`,`usuario`,`clave`,`rol`,`nombres`,`apellidos`,`cedula`,`correo`,`pines_comprados`,`pines_utilizados`,`pines_borrados`,`imagen`) values 
(1,'root','63a9f0ea7bb98050796b649e85481845','1','Administrador',NULL,'0000','0000@gmail.com','0','0','0','default.png'),
(4,'user_1254544','be721663de810660d837c2f200c2b289','2','Juan Jose','Lopez Quintero','1254544','juan34@gmail.com','10','0','0','default.png'),
(5,'user_34234234234','136c653d36da8b28bdbfd467c098df8c','2','Andres','Mendez','34234234234','ANDRES@gmail.com','34','0','0','default.png'),
(6,'user_4543534534','57c23cf4919bb9b51cf63f832ae26fe4','2','Fabian','Quintero','4543534534','fabian@gmail.com','4','0','0','default.png'),
(7,'user_645645645645','0f50b8ccb6a6700950ec98a06b1c36f8','2','Julian','Mendez','645645645645','julian@gmail.com','80','0','0','default.png'),
(8,'user_34245546546456','83eb77e6945634d07c43956601b4ce02','2','Cristian','Mendoza','34245546546456','cristian@gmail.com','40','0','0','default.png');

UNLOCK TABLES;

/*Table structure for table `venta` */

DROP TABLE IF EXISTS `venta`;

CREATE TABLE `venta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `pines_comprados` text,
  `precio_pin` text,
  `fecha` text,
  `total` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

/*Data for the table `venta` */

LOCK TABLES `venta` WRITE;

insert  into `venta`(`id`,`id_cliente`,`pines_comprados`,`precio_pin`,`fecha`,`total`) values 
(3,4,'10','20000','16-04-2024 18:11:54','200000'),
(4,5,'34','10000','16-04-2024 18:12:40','340000'),
(5,6,'4','10000','16-04-2024 18:13:16','40000'),
(6,7,'80','6000','16-04-2024 18:14:12','480000'),
(7,8,'40','12000','16-04-2024 18:16:07','480000');

UNLOCK TABLES;