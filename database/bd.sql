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
(3,5,'Coca-cola','1713469975_coca.jpg',15,0,'18-04-2024 16:19:58'),
(4,5,'Pepsi','1713457608_pepsi.jpg',10,0,'18-04-2024 16:26:48');

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
(23,4,'Administración'),
(24,4,'Comunicaciones'),
(25,4,'Gestión de Proyectos'),
(26,4,'Diseño'),
(27,4,'Relaciones Públicas'),
(28,4,'Consultoría');

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
(5,'user_34234234234','81dc9bdb52d04dc20036dbd8313ed055','2','Andres','Mendez','34234234234','ANDRES@gmail.com','34','25','0','default.png'),
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