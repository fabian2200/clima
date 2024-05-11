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
CREATE DATABASE /*!32312 IF NOT EXISTS*/`clima` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `clima`;

/*Table structure for table `datos_socio` */

DROP TABLE IF EXISTS `datos_socio`;

CREATE TABLE `datos_socio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sexo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `edad` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `nivel_educacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `estado_civil` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `tiempo_cargo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `tiempo_entidad` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `salario_actual` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `estrato` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `ciudad` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `area` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
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
  `nombre` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `logo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `numero_empleados` int DEFAULT NULL,
  `empleados_responden` int DEFAULT NULL,
  `fecha_creada` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
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
  `nombre_area` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
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

/*Table structure for table `muni` */

DROP TABLE IF EXISTS `muni`;

CREATE TABLE `muni` (
  `codmun` varchar(5) COLLATE utf8mb3_spanish_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8mb3_spanish_ci NOT NULL,
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1120 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

/*Data for the table `muni` */

LOCK TABLES `muni` WRITE;

insert  into `muni`(`codmun`,`descripcion`,`id`) values 
('001','MEDELLIN',1),
('001','BARRANQUILLA',2),
('001','BOGOTA D.C.',3),
('001','CARTAGENA',4),
('001','TUNJA',5),
('001','MANIZALES',6),
('001','FLORENCIA',7),
('001','POPAYAN',8),
('001','VALLEDUPAR',9),
('001','MONTERIA',10),
('001','AGUA DE DIOS',11),
('001','QUIBDO',12),
('001','NEIVA',13),
('001','RIOHACHA',14),
('001','SANTA MARTA',15),
('001','VILLAVICENCIO',16),
('001','PASTO',17),
('001','CUCUTA',18),
('001','ARMENIA',19),
('001','PEREIRA',20),
('001','BUCARAMANGA',21),
('001','SINCELEJO',22),
('001','IBAGUE',23),
('001','CALI',24),
('001','ARAUCA',25),
('001','YOPAL',26),
('001','MOCOA',27),
('001','SAN ANDRES',28),
('001','LETICIA',29),
('001','INIRIDA',30),
('001','SAN JOSE DEL GU',31),
('001','MITU',32),
('001','PUERTO CARRE',33),
('002','ABEJORRAL',34),
('003','ABREGO',35),
('004','ABRIAQUI',36),
('006','ACHI',37),
('006','ACANDI',38),
('006','ACEVEDO',39),
('006','ACACIAS',40),
('010','AGUAZUL',41),
('011','AGUACHICA',42),
('013','AGUADAS',43),
('013','AGUSTIN CODAZZI',44),
('013','AGRADO',45),
('013','AGUADA',46),
('015','CHAMEZA',47),
('015','CALAMAR',48),
('016','AIPE',49),
('019','ALBAN',50),
('019','ALBAN',51),
('020','ALGECIRAS',52),
('020','ALBANIA',53),
('020','ALCALA',54),
('021','ALEJANDRIA',55),
('022','ALMEIDA',56),
('022','ALMAGUER',57),
('022','ALDANA',58),
('024','ALPUJARRA',59),
('025','ALTO BAUDO',60),
('025','EL RETORNO',61),
('026','ALTAMIRA',62),
('026','ALVARADO',63),
('029','ALBANIA',64),
('030','AMAGA',65),
('030','ALTOS DEL ROSAR',66),
('030','ALGARROBO',67),
('030','AMBALEMA',68),
('031','AMALFI',69),
('032','ASTREA',70),
('034','ANDES',71),
('035','ANAPOIMA',72),
('035','ALBANIA',73),
('036','ANGELOPOLIS',74),
('036','ANCUYA',75),
('036','ANDALUCIA',76),
('038','ANGOSTURA',77),
('040','ANORIA',78),
('040','ANOLAIMA',79),
('041','ANSERMANUEVO',80),
('042','SANTA FE DE ANT',81),
('042','ARENAL',82),
('042','ANSERMA',83),
('043','ANZOATEGUI',84),
('044','ANZA',85),
('045','APARTADO',86),
('045','BECERRIL',87),
('045','APIA',88),
('047','AQUITANIA',89),
('050','ARANZAZU',90),
('050','ARGELIA',91),
('050','ATRATO',92),
('051','ARBOLETES',93),
('051','ARCABUCO',94),
('051','ARBOLEDA',95),
('051','ARBOLEDAS',96),
('051','ARATOCA',97),
('052','ARJONA',98),
('053','ARBELAEZ',99),
('053','ARACATACA',100),
('054','ARGELIA',101),
('055','ARGELIA',102),
('055','ARMERO',103),
('058','ARIGUANI',104),
('059','ARMENIA',105),
('060','BOSCONIA',106),
('062','ARROYOHONDO',107),
('065','ARAUQUITA',108),
('067','ATACO',109),
('068','AYAPEL',110),
('073','BAGADO',111),
('074','BARRANCO DE LOB',112),
('075','BALBOA',113),
('075','BAHIA SOLANO',114),
('075','BALBOA',115),
('077','BAJO BAUDO',116),
('077','BARBOSA',117),
('078','BARANOA',118),
('078','BARAYA',119),
('078','BARRANCAS',120),
('079','BARBOSA',121),
('079','BUENAVISTA',122),
('079','BARBACOAS',123),
('079','BARICHARA',124),
('081','BARRANCABERMEJA',125),
('083','BELEN',126),
('086','BELMIRA',127),
('086','BELTRAN',128),
('086','BELEN DE BAJIRA',129),
('087','BELEN',130),
('088','VELLO',131),
('088','BELALCAZAR',132),
('088','BELEN DE UMBRIA',133),
('090','BERBEO',134),
('090','CANALETE',135),
('090','DIBULLA',136),
('091','BETANIA',137),
('092','BETEITIVA',138),
('092','BETULIA',139),
('093','BETULIA',140),
('094','BELEN DE LOS AN',141),
('095','BITUIMA',142),
('097','BOAVITA',143),
('098','DISTRACCION',144),
('099','BOJACA',145),
('099','BOJAYA',146),
('099','BOCHALEMA',147),
('100','BOLIVAR',148),
('100','BOLIVAR',149),
('101','CIUDAD BOLIVAR',150),
('101','BOLIVAR',151),
('104','BOYACA',152),
('106','BRICE',153),
('107','BRICE',154),
('109','BUENAVISTA',155),
('109','BUCARASICA',156),
('109','BUENAVENTURA',157),
('110','BUENOS AIRES',158),
('110','EL MOLINO',159),
('110','BARRANCA DE UPI',160),
('110','BUESACO',161),
('110','BUENAVISTA',162),
('111','BUENAVISTA',163),
('111','GUADALAJARA DE ',164),
('113','BURITICA',165),
('113','BUGALAGRANDE',166),
('114','BUSBANZA',167),
('120','CACERES',168),
('120','CABRERA',169),
('121','CABRERA',170),
('122','CAICEDONIA',171),
('123','CACHIPAY',172),
('124','CABUYARO',173),
('124','CAIMITO',174),
('124','CAJAMARCA',175),
('125','CAICEDO',176),
('125','CACOTA',177),
('125','HATO COROZAL',178),
('126','CAJICA',179),
('126','CALIMA',180),
('128','CACHIRA',181),
('129','CALDAS',182),
('130','CAJIBIO',183),
('130','CALARCA',184),
('130','CANDELARIA',185),
('131','CALDAS',186),
('132','CAMPOALEGRE',187),
('132','CALIFORNIA',188),
('134','CAMPAMENTO',189),
('135','CAMPOHERMOSO',190),
('135','EL CANTON DEL S',191),
('136','LA SALINA',192),
('137','CAMPO DE LA CRU',193),
('137','CALDONO',194),
('138','CA',195),
('139','MANI',196),
('140','CALAMAR',197),
('141','CANDELARIA',198),
('142','CARACOLI',199),
('142','CALOTO',200),
('145','CARAMANTA',201),
('147','CAREPA',202),
('147','CAPITANEJO',203),
('147','CARTAGO',204),
('148','EL CARMEN DE VI',205),
('148','CAPARRAPI',206),
('148','CARMEN DE APICA',207),
('150','CAROLINA',208),
('150','CARTAGENA DEL C',209),
('150','CARMEN DEL DARI',210),
('150','CASTILLA LA NUE',211),
('151','CAQUEZA',212),
('152','CARCASI',213),
('152','CASABIANCA',214),
('154','CAUCASIA',215),
('154','CARMEN DE CARUP',216),
('160','CANTAGALLO',217),
('160','CERTEGUI',218),
('160','CEPITA',219),
('161','CERRO SAN ANTON',220),
('161','CARURU',221),
('162','CERINZA',222),
('162','CERETE',223),
('162','CERRITO',224),
('162','MONTERREY',225),
('167','CHARALA',226),
('168','CHIMA',227),
('168','CHAGUANI',228),
('168','CHAPARRAL',229),
('169','CHARTA',230),
('170','CHIBOLO',231),
('170','DOSQUEBRADAS',232),
('172','CHIGORODO',233),
('172','CHINAVITA',234),
('172','CHINACOTA',235),
('174','CHINCHINA',236),
('174','CHITAGA',237),
('175','CHIMICHAGUA',238),
('175','CHIA',239),
('176','CHIQUINQUIRA',240),
('176','CHIMA',241),
('178','CHIRIGUANA',242),
('178','CHIPAQUE',243),
('179','CHIPATA',244),
('180','CHISCAS',245),
('181','CHOACHI',246),
('182','CHINU',247),
('183','CHITA',248),
('183','CHOCONTA',249),
('185','CHITARAQUE',250),
('187','CHIVATA',251),
('188','CICUCO',252),
('189','CIENEGA',253),
('189','CIENAGA DE ORO',254),
('189','CIENAGA',255),
('190','CISNEROS',256),
('190','CIRCASIA',257),
('190','CIMITARRA',258),
('197','COCORNA',259),
('200','COGUA',260),
('200','COELLO',261),
('200','MIRAFLORES',262),
('203','COLON',263),
('204','COMBITA',264),
('204','COLOSO',265),
('205','CURILLO',266),
('205','CONDOTO',267),
('205','CONCORDIA',268),
('206','CONCEPCION',269),
('206','COLOMBIA',270),
('206','CONVENCION',271),
('207','CONSACA',272),
('207','CONCEPCION',273),
('209','CONCORDIA',274),
('209','CONFINES',275),
('210','CONTADERO',276),
('211','CONTRATACION',277),
('212','COPACABANA',278),
('212','CORDOBA',279),
('212','COPER',280),
('212','CORINTO',281),
('212','CORDOBA',282),
('214','COTA',283),
('215','CORRALES',284),
('215','MARIPI',285),
('215','CORDOBA',286),
('215','COROZAL',287),
('217','COROMORO',288),
('217','COYAIMA',289),
('218','COVARACHIA',290),
('219','COLON',291),
('220','CRAVO NORTE',292),
('221','COVE',293),
('222','CLEMENCIA',294),
('223','CUBARA',295),
('223','CUBARRAL',296),
('223','CUCUTILLA',297),
('224','CUCAITA',298),
('224','CUASPUD',299),
('225','NUNCHIA',300),
('226','CUITIVA',301),
('226','CUMARAL',302),
('226','CUNDAY',303),
('227','CUMBAL',304),
('228','CURUMANI',305),
('229','CURITI',306),
('230','CHALAN',307),
('230','OROCUE',308),
('232','CHIQUIZA',309),
('233','CUMBITARA',310),
('233','EL ROBLE',311),
('233','DAGUA',312),
('234','DABEIBA',313),
('235','EL CARMEN DE CH',314),
('235','GALERAS',315),
('236','CHIVOR',316),
('236','DOLORES',317),
('237','DON MATIAS',318),
('238','DUITAMA',319),
('238','EL COPEY',320),
('239','DURANIA',321),
('240','EBEJICO',322),
('240','CHACHAG',323),
('243','EL ',324),
('244','EL CARMEN DE BO',325),
('244','EL COCUY',326),
('244','ELIAS',327),
('245','EL COLEGIO',328),
('245','EL CARMEN DE AT',329),
('245','EL BANCO',330),
('245','EL CALVARIO',331),
('245','EL CARMEN',332),
('245','EL GUACAMAYO',333),
('246','EL CAIRO',334),
('247','EL DONCELLO',335),
('248','EL GUAMO',336),
('248','EL ESPINO',337),
('248','EL CERRITO',338),
('250','EL BAGRE',339),
('250','EL PASO',340),
('250','EL LITORAL DEL ',341),
('250','EL CHARCO',342),
('250','EL TARRA',343),
('250','EL PE',344),
('250','EL DOVIO',345),
('250','PAZ DE ARIPORO',346),
('251','EL CASTILLO',347),
('254','EL PE',348),
('255','EL PLAYON',349),
('256','EL PAUJIL',350),
('256','EL TAMBO',351),
('256','EL ROSARIO',352),
('258','EL PE',353),
('258','EL PI',354),
('258','EL TABLON DE GO',355),
('260','EL ROSAL',356),
('260','EL TAMBO',357),
('261','EL ZULIA',358),
('263','PORE',359),
('263','EL ENCANTO',360),
('264','ENTRERRIOS',361),
('264','ENCINO',362),
('265','GUARANDA',363),
('266','ENVIGADO',364),
('266','ENCISO',365),
('268','EL PE',366),
('268','EL RETEN',367),
('268','ESPINAL',368),
('269','FACATATIVA',369),
('270','EL DORADO',370),
('270','FALAN',371),
('271','FLORIAN',372),
('272','FIRAVITOBA',373),
('272','FILADELFIA',374),
('272','FILANDIA',375),
('275','FLANDES',376),
('275','FLORIDA',377),
('276','FLORESTA',378),
('276','FLORIDABLANCA',379),
('279','FOMEQUE',380),
('279','FONSECA',381),
('279','RECETOR',382),
('281','FOSCA',383),
('282','FREDONIA',384),
('283','FRESNO',385),
('284','FRONTINO',386),
('286','FUNZA',387),
('287','FUENTE DE ORO',388),
('287','FUNES',389),
('288','FUQUENE',390),
('288','FUNDACION',391),
('290','FLORENCIA',392),
('290','FUSAGASUGA',393),
('293','GACHANTIVA',394),
('293','GACHALA',395),
('295','GAMARRA',396),
('295','GACHANCIPA',397),
('296','GALAPA',398),
('296','GAMEZA',399),
('296','GALAN',400),
('297','GACHETA',401),
('298','GARZON',402),
('298','GAMBITA',403),
('299','GARAGOA',404),
('299','GAMA',405),
('300','HATILLO DE LOBA',406),
('300','COTORRA',407),
('300','FORTUL',408),
('300','SABANALARGA',409),
('302','GENOVA',410),
('306','GIRALDO',411),
('306','GIGANTE',412),
('306','GINEBRA',413),
('307','GIRARDOT',414),
('307','GIRON',415),
('308','GIRARDOTA',416),
('310','GOMEZ PLATA',417),
('310','GONZALEZ',418),
('312','GRANADA',419),
('313','GRANADA',420),
('313','GRANADA',421),
('313','GRAMALOTE',422),
('315','GUADALUPE',423),
('315','SACAMA',424),
('317','GUACAMAYAS',425),
('317','GUACHETA',426),
('317','GUACHUCAL',427),
('318','GUARNE',428),
('318','GUAPI',429),
('318','GUAMAL',430),
('318','GUAMAL',431),
('318','GUATICA',432),
('318','GUACA',433),
('318','GUACARI',434),
('319','GUADALUPE',435),
('319','GUAMO',436),
('320','GUADUAS',437),
('320','GUAITARILLA',438),
('320','GUADALUPE',439),
('320','ORITO',440),
('321','GUATAPE',441),
('322','GUATEQUE',442),
('322','GUASCA',443),
('322','GUAPOTA',444),
('323','GUALMATAN',445),
('324','GUATAQUI',446),
('324','GUAVATA',447),
('325','GUAYATA',448),
('325','MAPIRIPAN',449),
('325','SAN LUIS DE PAL',450),
('326','GUATAVITA',451),
('327','G',452),
('328','GUAYABAL DE SIQ',453),
('330','MESETAS',454),
('332','G',455),
('335','GUAYABETAL',456),
('339','GUTIERREZ',457),
('343','BARRANCO MINAS',458),
('344','HACARI',459),
('344','HATO',460),
('347','HELICONIA',461),
('347','HERRAN',462),
('347','HERVEO',463),
('349','HOBO',464),
('349','HONDA',465),
('350','LA APARTADA',466),
('350','LA MACARENA',467),
('352','ILES',468),
('352','ICONONZO',469),
('353','HISPANIA',470),
('354','IMUES',471),
('355','INZA',472),
('356','IPIALES',473),
('357','IQUIRA',474),
('359','ISNOS',475),
('360','ITAGUI',476),
('361','ITUANGO',477),
('361','ISTMINA',478),
('362','IZA',479),
('364','JARDIN',480),
('364','JAMBALO',481),
('364','JAMUNDI',482),
('367','JENESANO',483),
('368','JERICO',484),
('368','JERICO',485),
('368','JERUSALEN',486),
('368','JESUS MARIA',487),
('370','URIBE',488),
('370','JORDAN',489),
('372','JUAN DE ACOSTA',490),
('372','JUNIN',491),
('372','JURADO',492),
('376','LA CEJA',493),
('377','LABRANZAGRANDE',494),
('377','LA CALERA',495),
('377','LABATECA',496),
('377','LA BELLEZA',497),
('377','LA CUMBRE',498),
('378','LA ARGENTINA',499),
('378','HATONUEVO',500),
('378','LA CRUZ',501),
('380','LA ESTRELLA',502),
('380','LA CAPILLA',503),
('380','LA DORADA',504),
('381','LA FLORIDA',505),
('383','LA GLORIA',506),
('383','LA CELIA',507),
('385','LA LLANADA',508),
('385','LA ESPERANZA',509),
('385','LANDAZURI',510),
('386','LA MESA',511),
('388','LA MERCED',512),
('390','LA PINTADA',513),
('390','LA TOLA',514),
('392','LA SIERRA',515),
('394','LA PALMA',516),
('396','LA PLATA',517),
('397','LA VEGA',518),
('397','LA PAZ',519),
('398','LA PE',520),
('398','LA PLAYA',521),
('399','LA UNION',522),
('400','LA UNION',523),
('400','LA JAGUA DE IBI',524),
('400','LEJANIAS',525),
('400','LA VIRGINIA',526),
('400','LA UNION',527),
('400','LA UNION',528),
('400','TAMARA',529),
('401','LA VICTORIA',530),
('401','LA TEBAIDA',531),
('402','LA VEGA',532),
('403','LA UVITA',533),
('403','LA VICTORIA',534),
('405','LEIVA',535),
('405','LOS PATIOS',536),
('405','LA CHORRERA',537),
('406','LEBRIJA',538),
('407','VILLA DE LEYVA',539),
('407','LENGUAZAQUE',540),
('407','LA PEDRERA',541),
('408','LERIDA',542),
('410','LA MONTA',543),
('410','TAURAMENA',544),
('411','LIBORINA',545),
('411','LINARES',546),
('411','LIBANO',547),
('413','LLORO',548),
('417','LORICA',549),
('418','LOPEZ',550),
('418','LOS ANDES',551),
('418','LOURDES',552),
('418','LOS SANTOS',553),
('418','LOS PALMITOS',554),
('419','LOS CORDOBAS',555),
('420','LA JAGUA DEL PI',556),
('421','LURUACO',557),
('425','MACEO',558),
('425','MACANAL',559),
('425','MEDIO ATRATO',560),
('425','MACARAVITA',561),
('426','MACHETA',562),
('427','MAG',563),
('429','MAJAGUAL',564),
('430','MAGANGUE',565),
('430','MADRID',566),
('430','MEDIO BAUDO',567),
('430','MAICAO',568),
('430','TRINIDAD',569),
('430','LA VICTORIA',570),
('432','MALAGA',571),
('433','MALAMBO',572),
('433','MAHATES',573),
('433','MANZANARES',574),
('435','MALLAMA',575),
('436','MANATI',576),
('436','MANTA',577),
('438','MEDINA',578),
('440','MARINILLA',579),
('440','MARGARITA',580),
('440','MARSELLA',581),
('440','VILLANUEVA',582),
('442','MARIA LA BAJA',583),
('442','MARMATO',584),
('443','MANAURE',585),
('443','MARIQUITA',586),
('444','MARQUETALIA',587),
('444','MATANZA',588),
('446','MARULANDA',589),
('449','MELGAR',590),
('450','MERCADERES',591),
('450','MEDIO SAN JUAN',592),
('450','PUERTO CONCORDI',593),
('455','MIRAFLORES',594),
('455','MIRANDA',595),
('456','MISTRATO',596),
('458','MONTECRISTO',597),
('460','MILAN',598),
('460','NUEVA GRANADA',599),
('460','MIRITI-PARANA',600),
('461','MURILLO',601),
('464','MONGUA',602),
('464','MOMIL',603),
('464','MOGOTES',604),
('466','MONGUI',605),
('466','MONTELIBANO',606),
('467','MONTEBELLO',607),
('468','MOMPOS',608),
('468','MOLAGAVITA',609),
('469','MONIQUIRA',610),
('470','MONTENEGRO',611),
('473','MORALES',612),
('473','MORALES',613),
('473','MOSQUERA',614),
('473','MOSQUERA',615),
('473','MORROA',616),
('475','MURINDO',617),
('476','MOTAVITA',618),
('479','MORELIA',619),
('480','MUTATA',620),
('480','MUZO',621),
('480','NARI',622),
('480','MUTISCUA',623),
('483','NARI',624),
('483','NARI',625),
('483','NATAGA',626),
('483','NATAGAIMA',627),
('486','NEIRA',628),
('486','NEMOCON',629),
('488','NILO',630),
('489','NIMAIMA',631),
('490','NECOCLI',632),
('490','OLAYA HERRERA',633),
('491','NOBSA',634),
('491','NOCAIMA',635),
('491','NOVITA',636),
('494','NUEVO COLON',637),
('495','NECHI',638),
('495','NORCASIA',639),
('495','NUQUI',640),
('497','OBANDO',641),
('498','OCA',642),
('498','OCAMONTE',643),
('500','OICATA',644),
('500','MO',645),
('500','OIBA',646),
('501','OLAYA',647),
('502','ONZAGA',648),
('503','OPORAPA',649),
('504','ORTEGA',650),
('506','VENECIA',651),
('506','OSPINA',652),
('507','OTANCHE',653),
('508','OVEJAS',654),
('511','PACHAVITA',655),
('511','PACOA',656),
('513','PACORA',657),
('513','PADILLA',658),
('513','PACHO',659),
('514','PAEZ',660),
('516','PAIPA',661),
('517','PAEZ',662),
('517','PAILITAS',663),
('518','PAJARITO',664),
('518','PAIME',665),
('518','PAICOL',666),
('518','PAMPLONA',667),
('520','PALMAR DE VAREL',668),
('520','FRANCISCO PIZAR',669),
('520','PAMPLONITA',670),
('520','PALOCABILDO',671),
('520','PALMIRA',672),
('522','PANQUEBA',673),
('522','PALMAR',674),
('523','PALMITO',675),
('524','PALESTINA',676),
('524','CUCUNUBA',677),
('524','PANDI',678),
('524','PALERMO',679),
('524','PALMAS DEL SOCO',680),
('524','LA PRIMAVERA',681),
('530','PARATEBUENO',682),
('530','PALESTINA',683),
('530','PUERTO ALEGRIA',684),
('531','PAUNA',685),
('532','PATIA',686),
('533','PAYA',687),
('533','PIAMONTE',688),
('533','PARAMO',689),
('535','PASCA',690),
('536','PUERTO ARICA',691),
('537','PAZ DE RIO',692),
('540','POLICARPA',693),
('540','PUERTO NARI',694),
('541','PE',695),
('541','PENSILVANIA',696),
('541','PEDRAZA',697),
('542','PESCA',698),
('543','PEQUE',699),
('545','PIJI',700),
('547','PIEDECUESTA',701),
('547','PIEDRAS',702),
('548','PITAL',703),
('548','PIJAO',704),
('549','PIOJO',705),
('549','PINILLOS',706),
('549','PINCHOTE',707),
('550','PISBA',708),
('550','PELAYA',709),
('551','PITALITO',710),
('551','PIVIJAY',711),
('553','PUERTO SANTANDE',712),
('555','PLANETA RICA',713),
('555','PLATO',714),
('555','PLANADAS',715),
('558','POLONUEVO',716),
('560','PONEDERA',717),
('560','MANAURE',718),
('560','POTOSI',719),
('563','PRADO',720),
('563','PRADERA',721),
('564','PROVIDENCIA',722),
('565','PROVIDENCIA',723),
('568','PUERTO GAITAN',724),
('568','PUERTO ASIS',725),
('569','PUERTO CAICEDO',726),
('570','PUEBLO BELLO',727),
('570','PUEBLO NUEVO',728),
('570','PUEBLOVIEJO',729),
('571','PUERTO GUZMAN',730),
('572','PUERTO BOYACA',731),
('572','PUERTO SALGAR',732),
('572','PUEBLO RICO',733),
('572','PUENTE NACIONAL',734),
('573','PUERTO COLOMBIA',735),
('573','PUERTO TEJADA',736),
('573','PUERTO LOPEZ',737),
('573','PUERRES',738),
('573','PUERTO PARRA',739),
('573','LEGUIZAMO',740),
('574','PUERTO ESCONDID',741),
('575','PUERTO WILCHES',742),
('576','PUEBLORRICO',743),
('577','PUERTO LLERAS',744),
('579','PUERTO BERRIO',745),
('580','REGIDOR',746),
('580','QUIPAMA',747),
('580','PUERTO LIBERTAD',748),
('580','PULI',749),
('580','RIO IRO',750),
('585','PUERTO NARE',751),
('585','PURACE',752),
('585','PUPIALES',753),
('585','PURIFICACION',754),
('586','PURISIMA',755),
('590','PUERTO RICO',756),
('591','PUERTO TRIUNFO',757),
('591','PUERTO RONDON',758),
('592','PUERTO RICO',759),
('592','QUEBRADANEGRA',760),
('594','QUETAME',761),
('594','QUIMBAYA',762),
('594','QUINCHIA',763),
('596','QUIPILE',764),
('599','RAMIRIQUI',765),
('599','APULO',766),
('599','RAGONVALIA',767),
('600','RIO VIEJO',768),
('600','RAQUIRA',769),
('600','RIO QUITO',770),
('604','REMEDIOS',771),
('605','REMOLINO',772),
('606','REPELON',773),
('606','RESTREPO',774),
('606','RESTREPO',775),
('607','RETIRO',776),
('610','SAN JOSE DEL FR',777),
('612','RICAURTE',778),
('612','RICAURTE',779),
('614','RIOSUCIO',780),
('614','RIO DE ORO',781),
('615','RIONEGRO',782),
('615','RIOSUCIO',783),
('615','RIVERA',784),
('615','RIONEGRO',785),
('616','RISARALDA',786),
('616','RIOBLANCO',787),
('616','RIOFRIO',788),
('620','SAN CRISTOBAL',789),
('621','RONDON',790),
('621','LA PAZ',791),
('621','ROBERTO PAYAN',792),
('622','ROSAS',793),
('622','RONCESVALLES',794),
('622','ROLDANILLO',795),
('624','ROVIRA',796),
('624','SANTA ROSALIA',797),
('628','SABANALARGA',798),
('631','SABANETA',799),
('632','SABOYA',800),
('634','SABANAGRANDE',801),
('638','SABANALARGA',802),
('638','SACHICA',803),
('642','SALGAR',804),
('645','SAN ANTONIO DEL',805),
('646','SAMACA',806),
('647','SAN ANDRES',807),
('647','SAN ESTANISLAO',808),
('649','SAN CARLOS',809),
('649','SAN BERNARDO',810),
('650','SAN FERNANDO',811),
('650','SAN JUAN DEL CE',812),
('652','SAN FRANCISCO',813),
('653','SALAMINA',814),
('653','SAN CAYETANO',815),
('654','SAN JACINTO',816),
('655','SAN JACINTO DEL',817),
('655','SABANA DE TORRE',818),
('656','SAN JERONIMO',819),
('657','SAN JUAN NEPOMU',820),
('658','SAN JOSE DE LA ',821),
('658','SAN FRANCISCO',822),
('659','SAN JUAN DE URA',823),
('660','SAN LUIS',824),
('660','SAN EDUARDO',825),
('660','SAHAGUN',826),
('660','SAN JOSE DEL PA',827),
('660','SALADOBLANCO',828),
('660','SABANAS DE SAN ',829),
('660','SALAZAR',830),
('662','SAMANA',831),
('662','SAN JUAN DE RIO',832),
('663','MAPIRIPANA',833),
('664','SAN PEDRO',834),
('664','SAN JOSE DE PAR',835),
('665','SAN PEDRO DE UR',836),
('665','SAN JOSE',837),
('666','TARAIRA',838),
('667','SAN RAFAEL',839),
('667','SAN MARTIN DE L',840),
('667','SAN LUIS DE GAC',841),
('668','SAN AGUSTIN',842),
('669','SAN ANDRES',843),
('669','PUERTO SANTANDE',844),
('670','SAN ROQUE',845),
('670','SAN PABLO',846),
('670','SAN ANDRES SOTA',847),
('670','SAN CALIXTO',848),
('670','SAMPUES',849),
('670','SAN PEDRO',850),
('671','SALDA',851),
('672','SAN ANTERO',852),
('673','SANTA CATALINA',853),
('673','SAN MATEO',854),
('673','SAN CAYETANO',855),
('673','SAN BENITO',856),
('674','SAN VICENTE',857),
('675','SANTA LUCIA',858),
('675','SAN BERNARDO DE',859),
('675','SALAMINA',860),
('675','SAN ANTONIO',861),
('676','SAN MIGUEL DE S',862),
('676','SANTA MARIA',863),
('678','SAN CARLOS',864),
('678','SAMANIEGO',865),
('678','SAN BENITO ABAD',866),
('678','SAN LUIS',867),
('679','SANTA BARBARA',868),
('679','SAN GIL',869),
('680','SAN CARLOS DE G',870),
('680','SANTIAGO',871),
('681','SAN PABLO DE BO',872),
('682','SANTA ROSA DE C',873),
('682','SAN JOAQUIN',874),
('683','SANTA ROSA',875),
('683','SAN JUAN DE ARA',876),
('683','SANDONA',877),
('684','SAN JOSE DE MIR',878),
('685','SANTO TOMAS',879),
('685','SAN BERNARDO',880),
('686','SANTA ROSA DE O',881),
('686','SANTANA',882),
('686','SAN PELAYO',883),
('686','SAN JUANITO',884),
('686','SAN MIGUEL',885),
('686','SANTA ISABEL',886),
('687','SAN LORENZO',887),
('687','SANTUARIO',888),
('688','SANTA ROSA DEL ',889),
('689','SAN MARTIN',890),
('689','SAN VICENTE DE ',891),
('690','SANTO DOMINGO',892),
('690','SANTA MARIA',893),
('690','SALENTO',894),
('692','SAN SEBASTIAN D',895),
('693','SANTA ROSA DE V',896),
('693','SAN SEBASTIAN',897),
('693','SAN PABLO',898),
('694','SAN PEDRO DE CA',899),
('696','SANTA SOFIA',900),
('696','SANTA BARBARA',901),
('697','EL SANTUARIO',902),
('698','SANTANDER DE QU',903),
('699','SANTACRUZ',904),
('701','SANTA ROSA',905),
('702','SAN JUAN DE BET',906),
('703','SAN ZENON',907),
('705','SANTA BARBARA',908),
('707','SANTA ANA',909),
('708','SAN MARCOS',910),
('710','SAN ALBERTO',911),
('711','VISTAHERMOSA',912),
('713','SAN ONOFRE',913),
('717','SAN PEDRO',914),
('718','SASAIMA',915),
('720','SATIVANORTE',916),
('720','SANTA BARBARA D',917),
('720','SAPUYES',918),
('720','SARDINATA',919),
('720','SANTA HELENA DE',920),
('723','SATIVASUR',921),
('736','SEGOVIA',922),
('736','SESQUILE',923),
('736','SEVILLA',924),
('736','SARAVENA',925),
('740','SIACHOQUE',926),
('740','SIBATE',927),
('742','SINCE',928),
('743','SILVIA',929),
('743','SILVANIA',930),
('743','SILOS',931),
('744','SIMITI',932),
('745','SIMIJACA',933),
('745','SIPI',934),
('745','SITIONUEVO',935),
('745','SIMACOTA',936),
('749','SIBUNDOY',937),
('750','SAN DIEGO',938),
('753','SOATA',939),
('753','SAN VICENTE DEL',940),
('754','SOACHA',941),
('755','SOCOTA',942),
('755','SOCORRO',943),
('755','SAN FRANCISCO',944),
('756','SONSON',945),
('756','SOLANO',946),
('757','SOCHA',947),
('757','SAN MIGUEL',948),
('758','SOLEDAD',949),
('758','SOPO',950),
('759','SOGAMOSO',951),
('760','SOPLAVIENTO',952),
('760','SOTARA',953),
('760','SANTIAGO',954),
('761','SOPETRAN',955),
('761','SOMONDOCO',956),
('762','SORA',957),
('763','SOTAQUIRA',958),
('764','SORACA',959),
('769','SUBACHOQUE',960),
('770','SUAN',961),
('770','SAN MARTIN',962),
('770','SUAZA',963),
('770','SUAITA',964),
('770','SUAREZ',965),
('771','SUCRE',966),
('772','SUESCA',967),
('773','SUCRE',968),
('773','CUMARIBO',969),
('774','SUSACON',970),
('776','SUTAMARCHAN',971),
('777','SUPIA',972),
('777','SUPATA',973),
('777','PAPUNAUA',974),
('778','SUTATENZA',975),
('779','SUSA',976),
('780','TALAIGUA NUEVO',977),
('780','SUAREZ',978),
('780','SURATA',979),
('781','SUTATAUSA',980),
('785','SOLITA',981),
('785','SUCRE',982),
('785','TABIO',983),
('786','TAMINANGO',984),
('787','TAMALAMEQUE',985),
('787','TADO',986),
('788','TANGUA',987),
('789','TAMESIS',988),
('790','TARAZA',989),
('790','TASCO',990),
('791','TARQUI',991),
('792','TARSO',992),
('793','TAUSA',993),
('794','TAME',994),
('797','TENA',995),
('797','TESALIA',996),
('798','TENZA',997),
('798','TENERIFE',998),
('798','TARAPACA',999),
('799','TENJO',1000),
('799','TELLO',1001),
('800','UNGUIA',1002),
('800','TEORAMA',1003),
('801','TERUEL',1004),
('804','TIBANA',1005),
('805','TIBACUY',1006),
('806','TIBASOSA',1007),
('807','TIMBIO',1008),
('807','TIERRALTA',1009),
('807','TIBIRITA',1010),
('807','TIMANA',1011),
('808','TINJACA',1012),
('809','TITIRIBI',1013),
('809','TIMBIQUI',1014),
('810','TIQUISIO',1015),
('810','TIPACOQUE',1016),
('810','UNION PANAMERIC',1017),
('810','TIBU',1018),
('814','TOCA',1019),
('815','TOCAIMA',1020),
('816','TOG',1021),
('817','TOCANCIPA',1022),
('819','TOLEDO',1023),
('819','PIENDAMO',1024),
('820','TOPAGA',1025),
('820','TOLEDO',1026),
('820','TONA',1027),
('820','SANTIAGO DE TOL',1028),
('821','TORIBIO',1029),
('822','TOTA',1030),
('823','TOPAIPI',1031),
('823','TOLU VIEJO',1032),
('823','TORO',1033),
('824','TOTORO',1034),
('828','TRUJILLO',1035),
('832','TUBARA',1036),
('832','TUNUNGUA',1037),
('834','TULUA',1038),
('835','TURMEQUE',1039),
('835','TUMACO',1040),
('836','TURBACO',1041),
('837','TURBO',1042),
('837','TUTA',1043),
('838','TURBANA',1044),
('838','TUQUERRES',1045),
('839','TUTAZA',1046),
('839','UBALA',1047),
('841','UBAQUE',1048),
('842','URAMITA',1049),
('842','UMBITA',1050),
('843','VILLA DE SAN DI',1051),
('845','VILLA RICA',1052),
('845','UNE',1053),
('845','ULLOA',1054),
('847','URRAO',1055),
('847','URIBIA',1056),
('849','USIACURI',1057),
('851','',1058),
('854','VALDIVIA',1059),
('854','VALLE DE SAN JU',1060),
('855','VALENCIA',1061),
('855','URUMITA',1062),
('855','VALLE DE SAN JO',1063),
('856','VALPARAISO',1064),
('858','VEGACHI',1065),
('860','VALPARAISO',1066),
('861','VENECIA',1067),
('861','VENTAQUEMADA',1068),
('861','VELEZ',1069),
('861','VENADILLO',1070),
('862','VERGARA',1071),
('863','VERSALLES',1072),
('865','VALLE DEL GUAMU',1073),
('867','VICTORIA',1074),
('867','VIANI',1075),
('867','VETAS',1076),
('869','VIJES',1077),
('870','VILLAHERMOSA',1078),
('871','VILLAGOMEZ',1079),
('871','VILLA CARO',1080),
('872','VILLAVIEJA',1081),
('872','VILLANUEVA',1082),
('873','VIGIA DEL FUERT',1083),
('873','VILLANUEVA',1084),
('873','VILLAMARIA',1085),
('873','VILLAPINZON',1086),
('873','VILLARRICA',1087),
('874','VILLANUEVA',1088),
('874','VILLA DEL ROSAR',1089),
('875','VILLETA',1090),
('877','VITERBO',1091),
('878','VIOTA',1092),
('879','VIRACACHA',1093),
('883','SAN FELIPE',1094),
('884','PUERTO COLOMBIA',1095),
('885','YALI',1096),
('885','YACOPI',1097),
('885','YAGUARA',1098),
('885','YACUANQUER',1099),
('885','VILLAGARZON',1100),
('885','LA GUADALUPE',1101),
('886','CACAHUAL',1102),
('887','YARUMAL',1103),
('887','PANA PANA',1104),
('888','MORICHAL NUEVO',1105),
('889','YAVARATE',1106),
('890','YOLOMBO',1107),
('890','YOTOCO',1108),
('892','YUMBO',1109),
('893','YONDO',1110),
('894','ZAMBRANO',1111),
('895','ZARAGOZA',1112),
('895','ZAPATOCA',1113),
('895','ZARZAL',1114),
('897','ZETAQUIRA',1115),
('898','ZIPACON',1116),
('899','ZIPAQUIRA',1117),
('960','ZAPAYAN',1118),
('980','ZONA BANANERA',1119);

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
