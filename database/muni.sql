-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-04-2024 a las 08:46:44
-- Versión del servidor: 10.6.16-MariaDB-cll-lve
-- Versión de PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `caracterizacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `muni`
--

CREATE TABLE `muni` (
  `codmun` varchar(5) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `coddep` varchar(2) NOT NULL,
  `id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `muni`
--

INSERT INTO `muni` (`codmun`, `descripcion`, `coddep`, `id`) VALUES
('001', 'MEDELLIN', '05', 1),
('001', 'BARRANQUILLA', '08', 2),
('001', 'BOGOTA D.C.', '11', 3),
('001', 'CARTAGENA', '13', 4),
('001', 'TUNJA', '15', 5),
('001', 'MANIZALES', '17', 6),
('001', 'FLORENCIA', '18', 7),
('001', 'POPAYAN', '19', 8),
('001', 'VALLEDUPAR', '20', 9),
('001', 'MONTERIA', '23', 10),
('001', 'AGUA DE DIOS', '25', 11),
('001', 'QUIBDO', '27', 12),
('001', 'NEIVA', '41', 13),
('001', 'RIOHACHA', '44', 14),
('001', 'SANTA MARTA', '47', 15),
('001', 'VILLAVICENCIO', '50', 16),
('001', 'PASTO', '52', 17),
('001', 'CUCUTA', '54', 18),
('001', 'ARMENIA', '63', 19),
('001', 'PEREIRA', '66', 20),
('001', 'BUCARAMANGA', '68', 21),
('001', 'SINCELEJO', '70', 22),
('001', 'IBAGUE', '73', 23),
('001', 'CALI', '76', 24),
('001', 'ARAUCA', '81', 25),
('001', 'YOPAL', '85', 26),
('001', 'MOCOA', '86', 27),
('001', 'SAN ANDRES', '88', 28),
('001', 'LETICIA', '91', 29),
('001', 'INIRIDA', '94', 30),
('001', 'SAN JOSE DEL GU', '95', 31),
('001', 'MITU', '97', 32),
('001', 'PUERTO CARRE', '99', 33),
('002', 'ABEJORRAL', '05', 34),
('003', 'ABREGO', '54', 35),
('004', 'ABRIAQUI', '05', 36),
('006', 'ACHI', '13', 37),
('006', 'ACANDI', '27', 38),
('006', 'ACEVEDO', '41', 39),
('006', 'ACACIAS', '50', 40),
('010', 'AGUAZUL', '85', 41),
('011', 'AGUACHICA', '20', 42),
('013', 'AGUADAS', '17', 43),
('013', 'AGUSTIN CODAZZI', '20', 44),
('013', 'AGRADO', '41', 45),
('013', 'AGUADA', '68', 46),
('015', 'CHAMEZA', '85', 47),
('015', 'CALAMAR', '95', 48),
('016', 'AIPE', '41', 49),
('019', 'ALBAN', '25', 50),
('019', 'ALBAN', '52', 51),
('020', 'ALGECIRAS', '41', 52),
('020', 'ALBANIA', '68', 53),
('020', 'ALCALA', '76', 54),
('021', 'ALEJANDRIA', '05', 55),
('022', 'ALMEIDA', '15', 56),
('022', 'ALMAGUER', '19', 57),
('022', 'ALDANA', '52', 58),
('024', 'ALPUJARRA', '73', 59),
('025', 'ALTO BAUDO', '27', 60),
('025', 'EL RETORNO', '95', 61),
('026', 'ALTAMIRA', '41', 62),
('026', 'ALVARADO', '73', 63),
('029', 'ALBANIA', '18', 64),
('030', 'AMAGA', '05', 65),
('030', 'ALTOS DEL ROSAR', '13', 66),
('030', 'ALGARROBO', '47', 67),
('030', 'AMBALEMA', '73', 68),
('031', 'AMALFI', '05', 69),
('032', 'ASTREA', '20', 70),
('034', 'ANDES', '05', 71),
('035', 'ANAPOIMA', '25', 72),
('035', 'ALBANIA', '44', 73),
('036', 'ANGELOPOLIS', '05', 74),
('036', 'ANCUYA', '52', 75),
('036', 'ANDALUCIA', '76', 76),
('038', 'ANGOSTURA', '05', 77),
('040', 'ANORIA', '05', 78),
('040', 'ANOLAIMA', '25', 79),
('041', 'ANSERMANUEVO', '76', 80),
('042', 'SANTA FE DE ANT', '05', 81),
('042', 'ARENAL', '13', 82),
('042', 'ANSERMA', '17', 83),
('043', 'ANZOATEGUI', '73', 84),
('044', 'ANZA', '05', 85),
('045', 'APARTADO', '05', 86),
('045', 'BECERRIL', '20', 87),
('045', 'APIA', '66', 88),
('047', 'AQUITANIA', '15', 89),
('050', 'ARANZAZU', '17', 90),
('050', 'ARGELIA', '19', 91),
('050', 'ATRATO', '27', 92),
('051', 'ARBOLETES', '05', 93),
('051', 'ARCABUCO', '15', 94),
('051', 'ARBOLEDA', '52', 95),
('051', 'ARBOLEDAS', '54', 96),
('051', 'ARATOCA', '68', 97),
('052', 'ARJONA', '13', 98),
('053', 'ARBELAEZ', '25', 99),
('053', 'ARACATACA', '47', 100),
('054', 'ARGELIA', '76', 101),
('055', 'ARGELIA', '05', 102),
('055', 'ARMERO', '73', 103),
('058', 'ARIGUANI', '47', 104),
('059', 'ARMENIA', '05', 105),
('060', 'BOSCONIA', '20', 106),
('062', 'ARROYOHONDO', '13', 107),
('065', 'ARAUQUITA', '81', 108),
('067', 'ATACO', '73', 109),
('068', 'AYAPEL', '23', 110),
('073', 'BAGADO', '27', 111),
('074', 'BARRANCO DE LOB', '13', 112),
('075', 'BALBOA', '19', 113),
('075', 'BAHIA SOLANO', '27', 114),
('075', 'BALBOA', '66', 115),
('077', 'BAJO BAUDO', '27', 116),
('077', 'BARBOSA', '68', 117),
('078', 'BARANOA', '08', 118),
('078', 'BARAYA', '41', 119),
('078', 'BARRANCAS', '44', 120),
('079', 'BARBOSA', '05', 121),
('079', 'BUENAVISTA', '23', 122),
('079', 'BARBACOAS', '52', 123),
('079', 'BARICHARA', '68', 124),
('081', 'BARRANCABERMEJA', '68', 125),
('083', 'BELEN', '52', 126),
('086', 'BELMIRA', '05', 127),
('086', 'BELTRAN', '25', 128),
('086', 'BELEN DE BAJIRA', '27', 129),
('087', 'BELEN', '15', 130),
('088', 'VELLO', '05', 131),
('088', 'BELALCAZAR', '17', 132),
('088', 'BELEN DE UMBRIA', '66', 133),
('090', 'BERBEO', '15', 134),
('090', 'CANALETE', '23', 135),
('090', 'DIBULLA', '44', 136),
('091', 'BETANIA', '05', 137),
('092', 'BETEITIVA', '15', 138),
('092', 'BETULIA', '68', 139),
('093', 'BETULIA', '05', 140),
('094', 'BELEN DE LOS AN', '18', 141),
('095', 'BITUIMA', '25', 142),
('097', 'BOAVITA', '15', 143),
('098', 'DISTRACCION', '44', 144),
('099', 'BOJACA', '25', 145),
('099', 'BOJAYA', '27', 146),
('099', 'BOCHALEMA', '54', 147),
('100', 'BOLIVAR', '19', 148),
('100', 'BOLIVAR', '76', 149),
('101', 'CIUDAD BOLIVAR', '05', 150),
('101', 'BOLIVAR', '68', 151),
('104', 'BOYACA', '15', 152),
('106', 'BRICE', '15', 153),
('107', 'BRICE', '05', 154),
('109', 'BUENAVISTA', '15', 155),
('109', 'BUCARASICA', '54', 156),
('109', 'BUENAVENTURA', '76', 157),
('110', 'BUENOS AIRES', '19', 158),
('110', 'EL MOLINO', '44', 159),
('110', 'BARRANCA DE UPI', '50', 160),
('110', 'BUESACO', '52', 161),
('110', 'BUENAVISTA', '70', 162),
('111', 'BUENAVISTA', '63', 163),
('111', 'GUADALAJARA DE ', '76', 164),
('113', 'BURITICA', '05', 165),
('113', 'BUGALAGRANDE', '76', 166),
('114', 'BUSBANZA', '15', 167),
('120', 'CACERES', '05', 168),
('120', 'CABRERA', '25', 169),
('121', 'CABRERA', '68', 170),
('122', 'CAICEDONIA', '76', 171),
('123', 'CACHIPAY', '25', 172),
('124', 'CABUYARO', '50', 173),
('124', 'CAIMITO', '70', 174),
('124', 'CAJAMARCA', '73', 175),
('125', 'CAICEDO', '05', 176),
('125', 'CACOTA', '54', 177),
('125', 'HATO COROZAL', '85', 178),
('126', 'CAJICA', '25', 179),
('126', 'CALIMA', '76', 180),
('128', 'CACHIRA', '54', 181),
('129', 'CALDAS', '05', 182),
('130', 'CAJIBIO', '19', 183),
('130', 'CALARCA', '63', 184),
('130', 'CANDELARIA', '76', 185),
('131', 'CALDAS', '15', 186),
('132', 'CAMPOALEGRE', '41', 187),
('132', 'CALIFORNIA', '68', 188),
('134', 'CAMPAMENTO', '05', 189),
('135', 'CAMPOHERMOSO', '15', 190),
('135', 'EL CANTON DEL S', '27', 191),
('136', 'LA SALINA', '85', 192),
('137', 'CAMPO DE LA CRU', '08', 193),
('137', 'CALDONO', '19', 194),
('138', 'CA', '05', 195),
('139', 'MANI', '85', 196),
('140', 'CALAMAR', '13', 197),
('141', 'CANDELARIA', '08', 198),
('142', 'CARACOLI', '05', 199),
('142', 'CALOTO', '19', 200),
('145', 'CARAMANTA', '05', 201),
('147', 'CAREPA', '05', 202),
('147', 'CAPITANEJO', '68', 203),
('147', 'CARTAGO', '76', 204),
('148', 'EL CARMEN DE VI', '05', 205),
('148', 'CAPARRAPI', '25', 206),
('148', 'CARMEN DE APICA', '73', 207),
('150', 'CAROLINA', '05', 208),
('150', 'CARTAGENA DEL C', '18', 209),
('150', 'CARMEN DEL DARI', '27', 210),
('150', 'CASTILLA LA NUE', '50', 211),
('151', 'CAQUEZA', '25', 212),
('152', 'CARCASI', '68', 213),
('152', 'CASABIANCA', '73', 214),
('154', 'CAUCASIA', '05', 215),
('154', 'CARMEN DE CARUP', '25', 216),
('160', 'CANTAGALLO', '13', 217),
('160', 'CERTEGUI', '27', 218),
('160', 'CEPITA', '68', 219),
('161', 'CERRO SAN ANTON', '47', 220),
('161', 'CARURU', '97', 221),
('162', 'CERINZA', '15', 222),
('162', 'CERETE', '23', 223),
('162', 'CERRITO', '68', 224),
('162', 'MONTERREY', '85', 225),
('167', 'CHARALA', '68', 226),
('168', 'CHIMA', '23', 227),
('168', 'CHAGUANI', '25', 228),
('168', 'CHAPARRAL', '73', 229),
('169', 'CHARTA', '68', 230),
('170', 'CHIBOLO', '47', 231),
('170', 'DOSQUEBRADAS', '66', 232),
('172', 'CHIGORODO', '05', 233),
('172', 'CHINAVITA', '15', 234),
('172', 'CHINACOTA', '54', 235),
('174', 'CHINCHINA', '17', 236),
('174', 'CHITAGA', '54', 237),
('175', 'CHIMICHAGUA', '20', 238),
('175', 'CHIA', '25', 239),
('176', 'CHIQUINQUIRA', '15', 240),
('176', 'CHIMA', '68', 241),
('178', 'CHIRIGUANA', '20', 242),
('178', 'CHIPAQUE', '25', 243),
('179', 'CHIPATA', '68', 244),
('180', 'CHISCAS', '15', 245),
('181', 'CHOACHI', '25', 246),
('182', 'CHINU', '23', 247),
('183', 'CHITA', '15', 248),
('183', 'CHOCONTA', '25', 249),
('185', 'CHITARAQUE', '15', 250),
('187', 'CHIVATA', '15', 251),
('188', 'CICUCO', '13', 252),
('189', 'CIENEGA', '15', 253),
('189', 'CIENAGA DE ORO', '23', 254),
('189', 'CIENAGA', '47', 255),
('190', 'CISNEROS', '05', 256),
('190', 'CIRCASIA', '63', 257),
('190', 'CIMITARRA', '68', 258),
('197', 'COCORNA', '05', 259),
('200', 'COGUA', '25', 260),
('200', 'COELLO', '73', 261),
('200', 'MIRAFLORES', '95', 262),
('203', 'COLON', '52', 263),
('204', 'COMBITA', '15', 264),
('204', 'COLOSO', '70', 265),
('205', 'CURILLO', '18', 266),
('205', 'CONDOTO', '27', 267),
('205', 'CONCORDIA', '47', 268),
('206', 'CONCEPCION', '05', 269),
('206', 'COLOMBIA', '41', 270),
('206', 'CONVENCION', '54', 271),
('207', 'CONSACA', '52', 272),
('207', 'CONCEPCION', '68', 273),
('209', 'CONCORDIA', '05', 274),
('209', 'CONFINES', '68', 275),
('210', 'CONTADERO', '52', 276),
('211', 'CONTRATACION', '68', 277),
('212', 'COPACABANA', '05', 278),
('212', 'CORDOBA', '13', 279),
('212', 'COPER', '15', 280),
('212', 'CORINTO', '19', 281),
('212', 'CORDOBA', '63', 282),
('214', 'COTA', '25', 283),
('215', 'CORRALES', '15', 284),
('215', 'MARIPI', '44', 285),
('215', 'CORDOBA', '52', 286),
('215', 'COROZAL', '70', 287),
('217', 'COROMORO', '68', 288),
('217', 'COYAIMA', '73', 289),
('218', 'COVARACHIA', '15', 290),
('219', 'COLON', '86', 291),
('220', 'CRAVO NORTE', '81', 292),
('221', 'COVE', '70', 293),
('222', 'CLEMENCIA', '13', 294),
('223', 'CUBARA', '15', 295),
('223', 'CUBARRAL', '50', 296),
('223', 'CUCUTILLA', '54', 297),
('224', 'CUCAITA', '15', 298),
('224', 'CUASPUD', '52', 299),
('225', 'NUNCHIA', '85', 300),
('226', 'CUITIVA', '15', 301),
('226', 'CUMARAL', '50', 302),
('226', 'CUNDAY', '73', 303),
('227', 'CUMBAL', '52', 304),
('228', 'CURUMANI', '20', 305),
('229', 'CURITI', '68', 306),
('230', 'CHALAN', '70', 307),
('230', 'OROCUE', '85', 308),
('232', 'CHIQUIZA', '15', 309),
('233', 'CUMBITARA', '52', 310),
('233', 'EL ROBLE', '70', 311),
('233', 'DAGUA', '76', 312),
('234', 'DABEIBA', '05', 313),
('235', 'EL CARMEN DE CH', '68', 314),
('235', 'GALERAS', '70', 315),
('236', 'CHIVOR', '15', 316),
('236', 'DOLORES', '73', 317),
('237', 'DON MATIAS', '05', 318),
('238', 'DUITAMA', '15', 319),
('238', 'EL COPEY', '20', 320),
('239', 'DURANIA', '54', 321),
('240', 'EBEJICO', '05', 322),
('240', 'CHACHAG', '52', 323),
('243', 'EL ', '76', 324),
('244', 'EL CARMEN DE BO', '13', 325),
('244', 'EL COCUY', '15', 326),
('244', 'ELIAS', '41', 327),
('245', 'EL COLEGIO', '25', 328),
('245', 'EL CARMEN DE AT', '27', 329),
('245', 'EL BANCO', '47', 330),
('245', 'EL CALVARIO', '50', 331),
('245', 'EL CARMEN', '54', 332),
('245', 'EL GUACAMAYO', '68', 333),
('246', 'EL CAIRO', '76', 334),
('247', 'EL DONCELLO', '18', 335),
('248', 'EL GUAMO', '13', 336),
('248', 'EL ESPINO', '15', 337),
('248', 'EL CERRITO', '76', 338),
('250', 'EL BAGRE', '05', 339),
('250', 'EL PASO', '20', 340),
('250', 'EL LITORAL DEL ', '27', 341),
('250', 'EL CHARCO', '52', 342),
('250', 'EL TARRA', '54', 343),
('250', 'EL PE', '68', 344),
('250', 'EL DOVIO', '76', 345),
('250', 'PAZ DE ARIPORO', '85', 346),
('251', 'EL CASTILLO', '50', 347),
('254', 'EL PE', '52', 348),
('255', 'EL PLAYON', '68', 349),
('256', 'EL PAUJIL', '18', 350),
('256', 'EL TAMBO', '19', 351),
('256', 'EL ROSARIO', '52', 352),
('258', 'EL PE', '25', 353),
('258', 'EL PI', '47', 354),
('258', 'EL TABLON DE GO', '52', 355),
('260', 'EL ROSAL', '25', 356),
('260', 'EL TAMBO', '52', 357),
('261', 'EL ZULIA', '54', 358),
('263', 'PORE', '85', 359),
('263', 'EL ENCANTO', '91', 360),
('264', 'ENTRERRIOS', '05', 361),
('264', 'ENCINO', '68', 362),
('265', 'GUARANDA', '70', 363),
('266', 'ENVIGADO', '05', 364),
('266', 'ENCISO', '68', 365),
('268', 'EL PE', '13', 366),
('268', 'EL RETEN', '47', 367),
('268', 'ESPINAL', '73', 368),
('269', 'FACATATIVA', '25', 369),
('270', 'EL DORADO', '50', 370),
('270', 'FALAN', '73', 371),
('271', 'FLORIAN', '68', 372),
('272', 'FIRAVITOBA', '15', 373),
('272', 'FILADELFIA', '17', 374),
('272', 'FILANDIA', '63', 375),
('275', 'FLANDES', '73', 376),
('275', 'FLORIDA', '76', 377),
('276', 'FLORESTA', '15', 378),
('276', 'FLORIDABLANCA', '68', 379),
('279', 'FOMEQUE', '25', 380),
('279', 'FONSECA', '44', 381),
('279', 'RECETOR', '85', 382),
('281', 'FOSCA', '25', 383),
('282', 'FREDONIA', '05', 384),
('283', 'FRESNO', '73', 385),
('284', 'FRONTINO', '05', 386),
('286', 'FUNZA', '25', 387),
('287', 'FUENTE DE ORO', '50', 388),
('287', 'FUNES', '52', 389),
('288', 'FUQUENE', '25', 390),
('288', 'FUNDACION', '47', 391),
('290', 'FLORENCIA', '19', 392),
('290', 'FUSAGASUGA', '25', 393),
('293', 'GACHANTIVA', '15', 394),
('293', 'GACHALA', '25', 395),
('295', 'GAMARRA', '20', 396),
('295', 'GACHANCIPA', '25', 397),
('296', 'GALAPA', '08', 398),
('296', 'GAMEZA', '15', 399),
('296', 'GALAN', '68', 400),
('297', 'GACHETA', '25', 401),
('298', 'GARZON', '41', 402),
('298', 'GAMBITA', '68', 403),
('299', 'GARAGOA', '15', 404),
('299', 'GAMA', '25', 405),
('300', 'HATILLO DE LOBA', '13', 406),
('300', 'COTORRA', '23', 407),
('300', 'FORTUL', '81', 408),
('300', 'SABANALARGA', '85', 409),
('302', 'GENOVA', '63', 410),
('306', 'GIRALDO', '05', 411),
('306', 'GIGANTE', '41', 412),
('306', 'GINEBRA', '76', 413),
('307', 'GIRARDOT', '25', 414),
('307', 'GIRON', '68', 415),
('308', 'GIRARDOTA', '05', 416),
('310', 'GOMEZ PLATA', '05', 417),
('310', 'GONZALEZ', '20', 418),
('312', 'GRANADA', '25', 419),
('313', 'GRANADA', '05', 420),
('313', 'GRANADA', '50', 421),
('313', 'GRAMALOTE', '54', 422),
('315', 'GUADALUPE', '05', 423),
('315', 'SACAMA', '85', 424),
('317', 'GUACAMAYAS', '15', 425),
('317', 'GUACHETA', '25', 426),
('317', 'GUACHUCAL', '52', 427),
('318', 'GUARNE', '05', 428),
('318', 'GUAPI', '19', 429),
('318', 'GUAMAL', '47', 430),
('318', 'GUAMAL', '50', 431),
('318', 'GUATICA', '66', 432),
('318', 'GUACA', '68', 433),
('318', 'GUACARI', '76', 434),
('319', 'GUADALUPE', '41', 435),
('319', 'GUAMO', '73', 436),
('320', 'GUADUAS', '25', 437),
('320', 'GUAITARILLA', '52', 438),
('320', 'GUADALUPE', '68', 439),
('320', 'ORITO', '86', 440),
('321', 'GUATAPE', '05', 441),
('322', 'GUATEQUE', '15', 442),
('322', 'GUASCA', '25', 443),
('322', 'GUAPOTA', '68', 444),
('323', 'GUALMATAN', '52', 445),
('324', 'GUATAQUI', '25', 446),
('324', 'GUAVATA', '68', 447),
('325', 'GUAYATA', '15', 448),
('325', 'MAPIRIPAN', '50', 449),
('325', 'SAN LUIS DE PAL', '85', 450),
('326', 'GUATAVITA', '25', 451),
('327', 'G', '68', 452),
('328', 'GUAYABAL DE SIQ', '25', 453),
('330', 'MESETAS', '50', 454),
('332', 'G', '15', 455),
('335', 'GUAYABETAL', '25', 456),
('339', 'GUTIERREZ', '25', 457),
('343', 'BARRANCO MINAS', '94', 458),
('344', 'HACARI', '54', 459),
('344', 'HATO', '68', 460),
('347', 'HELICONIA', '05', 461),
('347', 'HERRAN', '54', 462),
('347', 'HERVEO', '73', 463),
('349', 'HOBO', '41', 464),
('349', 'HONDA', '73', 465),
('350', 'LA APARTADA', '23', 466),
('350', 'LA MACARENA', '50', 467),
('352', 'ILES', '52', 468),
('352', 'ICONONZO', '73', 469),
('353', 'HISPANIA', '05', 470),
('354', 'IMUES', '52', 471),
('355', 'INZA', '19', 472),
('356', 'IPIALES', '52', 473),
('357', 'IQUIRA', '41', 474),
('359', 'ISNOS', '41', 475),
('360', 'ITAGUI', '05', 476),
('361', 'ITUANGO', '05', 477),
('361', 'ISTMINA', '27', 478),
('362', 'IZA', '15', 479),
('364', 'JARDIN', '05', 480),
('364', 'JAMBALO', '19', 481),
('364', 'JAMUNDI', '76', 482),
('367', 'JENESANO', '15', 483),
('368', 'JERICO', '05', 484),
('368', 'JERICO', '15', 485),
('368', 'JERUSALEN', '25', 486),
('368', 'JESUS MARIA', '68', 487),
('370', 'URIBE', '50', 488),
('370', 'JORDAN', '68', 489),
('372', 'JUAN DE ACOSTA', '08', 490),
('372', 'JUNIN', '25', 491),
('372', 'JURADO', '27', 492),
('376', 'LA CEJA', '05', 493),
('377', 'LABRANZAGRANDE', '15', 494),
('377', 'LA CALERA', '25', 495),
('377', 'LABATECA', '54', 496),
('377', 'LA BELLEZA', '68', 497),
('377', 'LA CUMBRE', '76', 498),
('378', 'LA ARGENTINA', '41', 499),
('378', 'HATONUEVO', '44', 500),
('378', 'LA CRUZ', '52', 501),
('380', 'LA ESTRELLA', '05', 502),
('380', 'LA CAPILLA', '15', 503),
('380', 'LA DORADA', '17', 504),
('381', 'LA FLORIDA', '52', 505),
('383', 'LA GLORIA', '20', 506),
('383', 'LA CELIA', '66', 507),
('385', 'LA LLANADA', '52', 508),
('385', 'LA ESPERANZA', '54', 509),
('385', 'LANDAZURI', '68', 510),
('386', 'LA MESA', '25', 511),
('388', 'LA MERCED', '17', 512),
('390', 'LA PINTADA', '05', 513),
('390', 'LA TOLA', '52', 514),
('392', 'LA SIERRA', '19', 515),
('394', 'LA PALMA', '25', 516),
('396', 'LA PLATA', '41', 517),
('397', 'LA VEGA', '19', 518),
('397', 'LA PAZ', '68', 519),
('398', 'LA PE', '25', 520),
('398', 'LA PLAYA', '54', 521),
('399', 'LA UNION', '52', 522),
('400', 'LA UNION', '05', 523),
('400', 'LA JAGUA DE IBI', '20', 524),
('400', 'LEJANIAS', '50', 525),
('400', 'LA VIRGINIA', '66', 526),
('400', 'LA UNION', '70', 527),
('400', 'LA UNION', '76', 528),
('400', 'TAMARA', '85', 529),
('401', 'LA VICTORIA', '15', 530),
('401', 'LA TEBAIDA', '63', 531),
('402', 'LA VEGA', '25', 532),
('403', 'LA UVITA', '15', 533),
('403', 'LA VICTORIA', '76', 534),
('405', 'LEIVA', '52', 535),
('405', 'LOS PATIOS', '54', 536),
('405', 'LA CHORRERA', '91', 537),
('406', 'LEBRIJA', '68', 538),
('407', 'VILLA DE LEYVA', '15', 539),
('407', 'LENGUAZAQUE', '25', 540),
('407', 'LA PEDRERA', '91', 541),
('408', 'LERIDA', '73', 542),
('410', 'LA MONTA', '18', 543),
('410', 'TAURAMENA', '85', 544),
('411', 'LIBORINA', '05', 545),
('411', 'LINARES', '52', 546),
('411', 'LIBANO', '73', 547),
('413', 'LLORO', '27', 548),
('417', 'LORICA', '23', 549),
('418', 'LOPEZ', '19', 550),
('418', 'LOS ANDES', '52', 551),
('418', 'LOURDES', '54', 552),
('418', 'LOS SANTOS', '68', 553),
('418', 'LOS PALMITOS', '70', 554),
('419', 'LOS CORDOBAS', '23', 555),
('420', 'LA JAGUA DEL PI', '44', 556),
('421', 'LURUACO', '08', 557),
('425', 'MACEO', '05', 558),
('425', 'MACANAL', '15', 559),
('425', 'MEDIO ATRATO', '27', 560),
('425', 'MACARAVITA', '68', 561),
('426', 'MACHETA', '25', 562),
('427', 'MAG', '52', 563),
('429', 'MAJAGUAL', '70', 564),
('430', 'MAGANGUE', '13', 565),
('430', 'MADRID', '25', 566),
('430', 'MEDIO BAUDO', '27', 567),
('430', 'MAICAO', '44', 568),
('430', 'TRINIDAD', '85', 569),
('430', 'LA VICTORIA', '91', 570),
('432', 'MALAGA', '68', 571),
('433', 'MALAMBO', '08', 572),
('433', 'MAHATES', '13', 573),
('433', 'MANZANARES', '17', 574),
('435', 'MALLAMA', '52', 575),
('436', 'MANATI', '08', 576),
('436', 'MANTA', '25', 577),
('438', 'MEDINA', '25', 578),
('440', 'MARINILLA', '05', 579),
('440', 'MARGARITA', '13', 580),
('440', 'MARSELLA', '66', 581),
('440', 'VILLANUEVA', '85', 582),
('442', 'MARIA LA BAJA', '13', 583),
('442', 'MARMATO', '17', 584),
('443', 'MANAURE', '20', 585),
('443', 'MARIQUITA', '73', 586),
('444', 'MARQUETALIA', '17', 587),
('444', 'MATANZA', '68', 588),
('446', 'MARULANDA', '17', 589),
('449', 'MELGAR', '73', 590),
('450', 'MERCADERES', '19', 591),
('450', 'MEDIO SAN JUAN', '27', 592),
('450', 'PUERTO CONCORDI', '50', 593),
('455', 'MIRAFLORES', '15', 594),
('455', 'MIRANDA', '19', 595),
('456', 'MISTRATO', '66', 596),
('458', 'MONTECRISTO', '13', 597),
('460', 'MILAN', '18', 598),
('460', 'NUEVA GRANADA', '47', 599),
('460', 'MIRITI-PARANA', '91', 600),
('461', 'MURILLO', '73', 601),
('464', 'MONGUA', '15', 602),
('464', 'MOMIL', '23', 603),
('464', 'MOGOTES', '68', 604),
('466', 'MONGUI', '15', 605),
('466', 'MONTELIBANO', '23', 606),
('467', 'MONTEBELLO', '05', 607),
('468', 'MOMPOS', '13', 608),
('468', 'MOLAGAVITA', '68', 609),
('469', 'MONIQUIRA', '15', 610),
('470', 'MONTENEGRO', '63', 611),
('473', 'MORALES', '13', 612),
('473', 'MORALES', '19', 613),
('473', 'MOSQUERA', '25', 614),
('473', 'MOSQUERA', '52', 615),
('473', 'MORROA', '70', 616),
('475', 'MURINDO', '05', 617),
('476', 'MOTAVITA', '15', 618),
('479', 'MORELIA', '18', 619),
('480', 'MUTATA', '05', 620),
('480', 'MUZO', '15', 621),
('480', 'NARI', '52', 622),
('480', 'MUTISCUA', '54', 623),
('483', 'NARI', '05', 624),
('483', 'NARI', '25', 625),
('483', 'NATAGA', '41', 626),
('483', 'NATAGAIMA', '73', 627),
('486', 'NEIRA', '17', 628),
('486', 'NEMOCON', '25', 629),
('488', 'NILO', '25', 630),
('489', 'NIMAIMA', '25', 631),
('490', 'NECOCLI', '05', 632),
('490', 'OLAYA HERRERA', '52', 633),
('491', 'NOBSA', '15', 634),
('491', 'NOCAIMA', '25', 635),
('491', 'NOVITA', '27', 636),
('494', 'NUEVO COLON', '15', 637),
('495', 'NECHI', '05', 638),
('495', 'NORCASIA', '17', 639),
('495', 'NUQUI', '27', 640),
('497', 'OBANDO', '76', 641),
('498', 'OCA', '54', 642),
('498', 'OCAMONTE', '68', 643),
('500', 'OICATA', '15', 644),
('500', 'MO', '23', 645),
('500', 'OIBA', '68', 646),
('501', 'OLAYA', '05', 647),
('502', 'ONZAGA', '68', 648),
('503', 'OPORAPA', '41', 649),
('504', 'ORTEGA', '73', 650),
('506', 'VENECIA', '25', 651),
('506', 'OSPINA', '52', 652),
('507', 'OTANCHE', '15', 653),
('508', 'OVEJAS', '70', 654),
('511', 'PACHAVITA', '15', 655),
('511', 'PACOA', '97', 656),
('513', 'PACORA', '17', 657),
('513', 'PADILLA', '19', 658),
('513', 'PACHO', '25', 659),
('514', 'PAEZ', '15', 660),
('516', 'PAIPA', '15', 661),
('517', 'PAEZ', '19', 662),
('517', 'PAILITAS', '20', 663),
('518', 'PAJARITO', '15', 664),
('518', 'PAIME', '25', 665),
('518', 'PAICOL', '41', 666),
('518', 'PAMPLONA', '54', 667),
('520', 'PALMAR DE VAREL', '08', 668),
('520', 'FRANCISCO PIZAR', '52', 669),
('520', 'PAMPLONITA', '54', 670),
('520', 'PALOCABILDO', '73', 671),
('520', 'PALMIRA', '76', 672),
('522', 'PANQUEBA', '15', 673),
('522', 'PALMAR', '68', 674),
('523', 'PALMITO', '70', 675),
('524', 'PALESTINA', '17', 676),
('524', 'CUCUNUBA', '22', 677),
('524', 'PANDI', '25', 678),
('524', 'PALERMO', '41', 679),
('524', 'PALMAS DEL SOCO', '68', 680),
('524', 'LA PRIMAVERA', '99', 681),
('530', 'PARATEBUENO', '25', 682),
('530', 'PALESTINA', '41', 683),
('530', 'PUERTO ALEGRIA', '91', 684),
('531', 'PAUNA', '15', 685),
('532', 'PATIA', '19', 686),
('533', 'PAYA', '15', 687),
('533', 'PIAMONTE', '19', 688),
('533', 'PARAMO', '68', 689),
('535', 'PASCA', '25', 690),
('536', 'PUERTO ARICA', '91', 691),
('537', 'PAZ DE RIO', '15', 692),
('540', 'POLICARPA', '52', 693),
('540', 'PUERTO NARI', '91', 694),
('541', 'PE', '05', 695),
('541', 'PENSILVANIA', '17', 696),
('541', 'PEDRAZA', '47', 697),
('542', 'PESCA', '15', 698),
('543', 'PEQUE', '05', 699),
('545', 'PIJI', '47', 700),
('547', 'PIEDECUESTA', '68', 701),
('547', 'PIEDRAS', '73', 702),
('548', 'PITAL', '41', 703),
('548', 'PIJAO', '63', 704),
('549', 'PIOJO', '08', 705),
('549', 'PINILLOS', '13', 706),
('549', 'PINCHOTE', '68', 707),
('550', 'PISBA', '15', 708),
('550', 'PELAYA', '20', 709),
('551', 'PITALITO', '41', 710),
('551', 'PIVIJAY', '47', 711),
('553', 'PUERTO SANTANDE', '54', 712),
('555', 'PLANETA RICA', '23', 713),
('555', 'PLATO', '47', 714),
('555', 'PLANADAS', '73', 715),
('558', 'POLONUEVO', '08', 716),
('560', 'PONEDERA', '08', 717),
('560', 'MANAURE', '44', 718),
('560', 'POTOSI', '52', 719),
('563', 'PRADO', '73', 720),
('563', 'PRADERA', '76', 721),
('564', 'PROVIDENCIA', '88', 722),
('565', 'PROVIDENCIA', '52', 723),
('568', 'PUERTO GAITAN', '50', 724),
('568', 'PUERTO ASIS', '86', 725),
('569', 'PUERTO CAICEDO', '86', 726),
('570', 'PUEBLO BELLO', '20', 727),
('570', 'PUEBLO NUEVO', '23', 728),
('570', 'PUEBLOVIEJO', '47', 729),
('571', 'PUERTO GUZMAN', '86', 730),
('572', 'PUERTO BOYACA', '15', 731),
('572', 'PUERTO SALGAR', '25', 732),
('572', 'PUEBLO RICO', '66', 733),
('572', 'PUENTE NACIONAL', '68', 734),
('573', 'PUERTO COLOMBIA', '08', 735),
('573', 'PUERTO TEJADA', '19', 736),
('573', 'PUERTO LOPEZ', '50', 737),
('573', 'PUERRES', '52', 738),
('573', 'PUERTO PARRA', '68', 739),
('573', 'LEGUIZAMO', '86', 740),
('574', 'PUERTO ESCONDID', '23', 741),
('575', 'PUERTO WILCHES', '68', 742),
('576', 'PUEBLORRICO', '05', 743),
('577', 'PUERTO LLERAS', '50', 744),
('579', 'PUERTO BERRIO', '05', 745),
('580', 'REGIDOR', '13', 746),
('580', 'QUIPAMA', '15', 747),
('580', 'PUERTO LIBERTAD', '23', 748),
('580', 'PULI', '25', 749),
('580', 'RIO IRO', '27', 750),
('585', 'PUERTO NARE', '05', 751),
('585', 'PURACE', '19', 752),
('585', 'PUPIALES', '52', 753),
('585', 'PURIFICACION', '73', 754),
('586', 'PURISIMA', '23', 755),
('590', 'PUERTO RICO', '50', 756),
('591', 'PUERTO TRIUNFO', '05', 757),
('591', 'PUERTO RONDON', '81', 758),
('592', 'PUERTO RICO', '18', 759),
('592', 'QUEBRADANEGRA', '25', 760),
('594', 'QUETAME', '25', 761),
('594', 'QUIMBAYA', '63', 762),
('594', 'QUINCHIA', '66', 763),
('596', 'QUIPILE', '25', 764),
('599', 'RAMIRIQUI', '15', 765),
('599', 'APULO', '25', 766),
('599', 'RAGONVALIA', '54', 767),
('600', 'RIO VIEJO', '13', 768),
('600', 'RAQUIRA', '15', 769),
('600', 'RIO QUITO', '27', 770),
('604', 'REMEDIOS', '05', 771),
('605', 'REMOLINO', '47', 772),
('606', 'REPELON', '08', 773),
('606', 'RESTREPO', '50', 774),
('606', 'RESTREPO', '76', 775),
('607', 'RETIRO', '05', 776),
('610', 'SAN JOSE DEL FR', '18', 777),
('612', 'RICAURTE', '25', 778),
('612', 'RICAURTE', '52', 779),
('614', 'RIOSUCIO', '17', 780),
('614', 'RIO DE ORO', '20', 781),
('615', 'RIONEGRO', '05', 782),
('615', 'RIOSUCIO', '27', 783),
('615', 'RIVERA', '41', 784),
('615', 'RIONEGRO', '68', 785),
('616', 'RISARALDA', '17', 786),
('616', 'RIOBLANCO', '73', 787),
('616', 'RIOFRIO', '76', 788),
('620', 'SAN CRISTOBAL', '13', 789),
('621', 'RONDON', '15', 790),
('621', 'LA PAZ', '20', 791),
('621', 'ROBERTO PAYAN', '52', 792),
('622', 'ROSAS', '19', 793),
('622', 'RONCESVALLES', '73', 794),
('622', 'ROLDANILLO', '76', 795),
('624', 'ROVIRA', '73', 796),
('624', 'SANTA ROSALIA', '99', 797),
('628', 'SABANALARGA', '05', 798),
('631', 'SABANETA', '05', 799),
('632', 'SABOYA', '15', 800),
('634', 'SABANAGRANDE', '08', 801),
('638', 'SABANALARGA', '08', 802),
('638', 'SACHICA', '15', 803),
('642', 'SALGAR', '05', 804),
('645', 'SAN ANTONIO DEL', '25', 805),
('646', 'SAMACA', '15', 806),
('647', 'SAN ANDRES', '05', 807),
('647', 'SAN ESTANISLAO', '13', 808),
('649', 'SAN CARLOS', '05', 809),
('649', 'SAN BERNARDO', '25', 810),
('650', 'SAN FERNANDO', '13', 811),
('650', 'SAN JUAN DEL CE', '44', 812),
('652', 'SAN FRANCISCO', '05', 813),
('653', 'SALAMINA', '17', 814),
('653', 'SAN CAYETANO', '25', 815),
('654', 'SAN JACINTO', '13', 816),
('655', 'SAN JACINTO DEL', '13', 817),
('655', 'SABANA DE TORRE', '68', 818),
('656', 'SAN JERONIMO', '05', 819),
('657', 'SAN JUAN NEPOMU', '13', 820),
('658', 'SAN JOSE DE LA ', '05', 821),
('658', 'SAN FRANCISCO', '25', 822),
('659', 'SAN JUAN DE URA', '05', 823),
('660', 'SAN LUIS', '05', 824),
('660', 'SAN EDUARDO', '15', 825),
('660', 'SAHAGUN', '23', 826),
('660', 'SAN JOSE DEL PA', '27', 827),
('660', 'SALADOBLANCO', '41', 828),
('660', 'SABANAS DE SAN ', '47', 829),
('660', 'SALAZAR', '54', 830),
('662', 'SAMANA', '17', 831),
('662', 'SAN JUAN DE RIO', '25', 832),
('663', 'MAPIRIPANA', '94', 833),
('664', 'SAN PEDRO', '05', 834),
('664', 'SAN JOSE DE PAR', '15', 835),
('665', 'SAN PEDRO DE UR', '05', 836),
('665', 'SAN JOSE', '17', 837),
('666', 'TARAIRA', '97', 838),
('667', 'SAN RAFAEL', '05', 839),
('667', 'SAN MARTIN DE L', '13', 840),
('667', 'SAN LUIS DE GAC', '15', 841),
('668', 'SAN AGUSTIN', '41', 842),
('669', 'SAN ANDRES', '68', 843),
('669', 'PUERTO SANTANDE', '91', 844),
('670', 'SAN ROQUE', '05', 845),
('670', 'SAN PABLO', '13', 846),
('670', 'SAN ANDRES SOTA', '23', 847),
('670', 'SAN CALIXTO', '54', 848),
('670', 'SAMPUES', '70', 849),
('670', 'SAN PEDRO', '76', 850),
('671', 'SALDA', '73', 851),
('672', 'SAN ANTERO', '23', 852),
('673', 'SANTA CATALINA', '13', 853),
('673', 'SAN MATEO', '15', 854),
('673', 'SAN CAYETANO', '54', 855),
('673', 'SAN BENITO', '68', 856),
('674', 'SAN VICENTE', '05', 857),
('675', 'SANTA LUCIA', '08', 858),
('675', 'SAN BERNARDO DE', '23', 859),
('675', 'SALAMINA', '47', 860),
('675', 'SAN ANTONIO', '73', 861),
('676', 'SAN MIGUEL DE S', '15', 862),
('676', 'SANTA MARIA', '41', 863),
('678', 'SAN CARLOS', '23', 864),
('678', 'SAMANIEGO', '52', 865),
('678', 'SAN BENITO ABAD', '70', 866),
('678', 'SAN LUIS', '73', 867),
('679', 'SANTA BARBARA', '05', 868),
('679', 'SAN GIL', '68', 869),
('680', 'SAN CARLOS DE G', '50', 870),
('680', 'SANTIAGO', '54', 871),
('681', 'SAN PABLO DE BO', '15', 872),
('682', 'SANTA ROSA DE C', '66', 873),
('682', 'SAN JOAQUIN', '68', 874),
('683', 'SANTA ROSA', '13', 875),
('683', 'SAN JUAN DE ARA', '50', 876),
('683', 'SANDONA', '52', 877),
('684', 'SAN JOSE DE MIR', '68', 878),
('685', 'SANTO TOMAS', '08', 879),
('685', 'SAN BERNARDO', '52', 880),
('686', 'SANTA ROSA DE O', '05', 881),
('686', 'SANTANA', '15', 882),
('686', 'SAN PELAYO', '23', 883),
('686', 'SAN JUANITO', '50', 884),
('686', 'SAN MIGUEL', '68', 885),
('686', 'SANTA ISABEL', '73', 886),
('687', 'SAN LORENZO', '52', 887),
('687', 'SANTUARIO', '66', 888),
('688', 'SANTA ROSA DEL ', '13', 889),
('689', 'SAN MARTIN', '50', 890),
('689', 'SAN VICENTE DE ', '68', 891),
('690', 'SANTO DOMINGO', '05', 892),
('690', 'SANTA MARIA', '15', 893),
('690', 'SALENTO', '63', 894),
('692', 'SAN SEBASTIAN D', '47', 895),
('693', 'SANTA ROSA DE V', '15', 896),
('693', 'SAN SEBASTIAN', '19', 897),
('693', 'SAN PABLO', '52', 898),
('694', 'SAN PEDRO DE CA', '52', 899),
('696', 'SANTA SOFIA', '15', 900),
('696', 'SANTA BARBARA', '52', 901),
('697', 'EL SANTUARIO', '05', 902),
('698', 'SANTANDER DE QU', '19', 903),
('699', 'SANTACRUZ', '52', 904),
('701', 'SANTA ROSA', '19', 905),
('702', 'SAN JUAN DE BET', '70', 906),
('703', 'SAN ZENON', '47', 907),
('705', 'SANTA BARBARA', '68', 908),
('707', 'SANTA ANA', '47', 909),
('708', 'SAN MARCOS', '70', 910),
('710', 'SAN ALBERTO', '20', 911),
('711', 'VISTAHERMOSA', '50', 912),
('713', 'SAN ONOFRE', '70', 913),
('717', 'SAN PEDRO', '70', 914),
('718', 'SASAIMA', '25', 915),
('720', 'SATIVANORTE', '15', 916),
('720', 'SANTA BARBARA D', '47', 917),
('720', 'SAPUYES', '52', 918),
('720', 'SARDINATA', '54', 919),
('720', 'SANTA HELENA DE', '68', 920),
('723', 'SATIVASUR', '15', 921),
('736', 'SEGOVIA', '05', 922),
('736', 'SESQUILE', '25', 923),
('736', 'SEVILLA', '76', 924),
('736', 'SARAVENA', '81', 925),
('740', 'SIACHOQUE', '15', 926),
('740', 'SIBATE', '25', 927),
('742', 'SINCE', '70', 928),
('743', 'SILVIA', '19', 929),
('743', 'SILVANIA', '25', 930),
('743', 'SILOS', '54', 931),
('744', 'SIMITI', '13', 932),
('745', 'SIMIJACA', '25', 933),
('745', 'SIPI', '27', 934),
('745', 'SITIONUEVO', '47', 935),
('745', 'SIMACOTA', '68', 936),
('749', 'SIBUNDOY', '86', 937),
('750', 'SAN DIEGO', '20', 938),
('753', 'SOATA', '15', 939),
('753', 'SAN VICENTE DEL', '18', 940),
('754', 'SOACHA', '25', 941),
('755', 'SOCOTA', '15', 942),
('755', 'SOCORRO', '68', 943),
('755', 'SAN FRANCISCO', '86', 944),
('756', 'SONSON', '05', 945),
('756', 'SOLANO', '18', 946),
('757', 'SOCHA', '15', 947),
('757', 'SAN MIGUEL', '86', 948),
('758', 'SOLEDAD', '08', 949),
('758', 'SOPO', '25', 950),
('759', 'SOGAMOSO', '15', 951),
('760', 'SOPLAVIENTO', '13', 952),
('760', 'SOTARA', '19', 953),
('760', 'SANTIAGO', '86', 954),
('761', 'SOPETRAN', '05', 955),
('761', 'SOMONDOCO', '15', 956),
('762', 'SORA', '15', 957),
('763', 'SOTAQUIRA', '15', 958),
('764', 'SORACA', '15', 959),
('769', 'SUBACHOQUE', '25', 960),
('770', 'SUAN', '08', 961),
('770', 'SAN MARTIN', '20', 962),
('770', 'SUAZA', '41', 963),
('770', 'SUAITA', '68', 964),
('770', 'SUAREZ', '73', 965),
('771', 'SUCRE', '70', 966),
('772', 'SUESCA', '25', 967),
('773', 'SUCRE', '68', 968),
('773', 'CUMARIBO', '99', 969),
('774', 'SUSACON', '15', 970),
('776', 'SUTAMARCHAN', '15', 971),
('777', 'SUPIA', '17', 972),
('777', 'SUPATA', '25', 973),
('777', 'PAPUNAUA', '97', 974),
('778', 'SUTATENZA', '15', 975),
('779', 'SUSA', '25', 976),
('780', 'TALAIGUA NUEVO', '13', 977),
('780', 'SUAREZ', '19', 978),
('780', 'SURATA', '68', 979),
('781', 'SUTATAUSA', '25', 980),
('785', 'SOLITA', '18', 981),
('785', 'SUCRE', '19', 982),
('785', 'TABIO', '25', 983),
('786', 'TAMINANGO', '52', 984),
('787', 'TAMALAMEQUE', '20', 985),
('787', 'TADO', '27', 986),
('788', 'TANGUA', '52', 987),
('789', 'TAMESIS', '05', 988),
('790', 'TARAZA', '05', 989),
('790', 'TASCO', '15', 990),
('791', 'TARQUI', '41', 991),
('792', 'TARSO', '05', 992),
('793', 'TAUSA', '25', 993),
('794', 'TAME', '81', 994),
('797', 'TENA', '25', 995),
('797', 'TESALIA', '41', 996),
('798', 'TENZA', '15', 997),
('798', 'TENERIFE', '47', 998),
('798', 'TARAPACA', '91', 999),
('799', 'TENJO', '25', 1000),
('799', 'TELLO', '41', 1001),
('800', 'UNGUIA', '27', 1002),
('800', 'TEORAMA', '54', 1003),
('801', 'TERUEL', '41', 1004),
('804', 'TIBANA', '15', 1005),
('805', 'TIBACUY', '25', 1006),
('806', 'TIBASOSA', '15', 1007),
('807', 'TIMBIO', '19', 1008),
('807', 'TIERRALTA', '23', 1009),
('807', 'TIBIRITA', '25', 1010),
('807', 'TIMANA', '41', 1011),
('808', 'TINJACA', '15', 1012),
('809', 'TITIRIBI', '05', 1013),
('809', 'TIMBIQUI', '19', 1014),
('810', 'TIQUISIO', '13', 1015),
('810', 'TIPACOQUE', '15', 1016),
('810', 'UNION PANAMERIC', '27', 1017),
('810', 'TIBU', '54', 1018),
('814', 'TOCA', '15', 1019),
('815', 'TOCAIMA', '25', 1020),
('816', 'TOG', '15', 1021),
('817', 'TOCANCIPA', '25', 1022),
('819', 'TOLEDO', '05', 1023),
('819', 'PIENDAMO', '54', 1024),
('820', 'TOPAGA', '15', 1025),
('820', 'TOLEDO', '54', 1026),
('820', 'TONA', '68', 1027),
('820', 'SANTIAGO DE TOL', '70', 1028),
('821', 'TORIBIO', '19', 1029),
('822', 'TOTA', '15', 1030),
('823', 'TOPAIPI', '25', 1031),
('823', 'TOLU VIEJO', '70', 1032),
('823', 'TORO', '76', 1033),
('824', 'TOTORO', '19', 1034),
('828', 'TRUJILLO', '76', 1035),
('832', 'TUBARA', '08', 1036),
('832', 'TUNUNGUA', '15', 1037),
('834', 'TULUA', '76', 1038),
('835', 'TURMEQUE', '15', 1039),
('835', 'TUMACO', '52', 1040),
('836', 'TURBACO', '13', 1041),
('837', 'TURBO', '05', 1042),
('837', 'TUTA', '15', 1043),
('838', 'TURBANA', '13', 1044),
('838', 'TUQUERRES', '52', 1045),
('839', 'TUTAZA', '15', 1046),
('839', 'UBALA', '25', 1047),
('841', 'UBAQUE', '25', 1048),
('842', 'URAMITA', '05', 1049),
('842', 'UMBITA', '15', 1050),
('843', 'VILLA DE SAN DI', '25', 1051),
('845', 'VILLA RICA', '19', 1052),
('845', 'UNE', '25', 1053),
('845', 'ULLOA', '76', 1054),
('847', 'URRAO', '05', 1055),
('847', 'URIBIA', '44', 1056),
('849', 'USIACURI', '08', 1057),
('851', '', '25', 1058),
('854', 'VALDIVIA', '05', 1059),
('854', 'VALLE DE SAN JU', '73', 1060),
('855', 'VALENCIA', '23', 1061),
('855', 'URUMITA', '44', 1062),
('855', 'VALLE DE SAN JO', '68', 1063),
('856', 'VALPARAISO', '05', 1064),
('858', 'VEGACHI', '05', 1065),
('860', 'VALPARAISO', '18', 1066),
('861', 'VENECIA', '05', 1067),
('861', 'VENTAQUEMADA', '15', 1068),
('861', 'VELEZ', '68', 1069),
('861', 'VENADILLO', '73', 1070),
('862', 'VERGARA', '25', 1071),
('863', 'VERSALLES', '76', 1072),
('865', 'VALLE DEL GUAMU', '86', 1073),
('867', 'VICTORIA', '17', 1074),
('867', 'VIANI', '25', 1075),
('867', 'VETAS', '68', 1076),
('869', 'VIJES', '76', 1077),
('870', 'VILLAHERMOSA', '73', 1078),
('871', 'VILLAGOMEZ', '25', 1079),
('871', 'VILLA CARO', '54', 1080),
('872', 'VILLAVIEJA', '41', 1081),
('872', 'VILLANUEVA', '68', 1082),
('873', 'VIGIA DEL FUERT', '05', 1083),
('873', 'VILLANUEVA', '13', 1084),
('873', 'VILLAMARIA', '17', 1085),
('873', 'VILLAPINZON', '25', 1086),
('873', 'VILLARRICA', '73', 1087),
('874', 'VILLANUEVA', '44', 1088),
('874', 'VILLA DEL ROSAR', '54', 1089),
('875', 'VILLETA', '25', 1090),
('877', 'VITERBO', '17', 1091),
('878', 'VIOTA', '25', 1092),
('879', 'VIRACACHA', '15', 1093),
('883', 'SAN FELIPE', '94', 1094),
('884', 'PUERTO COLOMBIA', '94', 1095),
('885', 'YALI', '05', 1096),
('885', 'YACOPI', '25', 1097),
('885', 'YAGUARA', '41', 1098),
('885', 'YACUANQUER', '52', 1099),
('885', 'VILLAGARZON', '86', 1100),
('885', 'LA GUADALUPE', '94', 1101),
('886', 'CACAHUAL', '94', 1102),
('887', 'YARUMAL', '05', 1103),
('887', 'PANA PANA', '94', 1104),
('888', 'MORICHAL NUEVO', '94', 1105),
('889', 'YAVARATE', '97', 1106),
('890', 'YOLOMBO', '05', 1107),
('890', 'YOTOCO', '76', 1108),
('892', 'YUMBO', '76', 1109),
('893', 'YONDO', '05', 1110),
('894', 'ZAMBRANO', '13', 1111),
('895', 'ZARAGOZA', '05', 1112),
('895', 'ZAPATOCA', '68', 1113),
('895', 'ZARZAL', '76', 1114),
('897', 'ZETAQUIRA', '15', 1115),
('898', 'ZIPACON', '25', 1116),
('899', 'ZIPAQUIRA', '25', 1117),
('960', 'ZAPAYAN', '47', 1118),
('980', 'ZONA BANANERA', '47', 1119);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `muni`
--
ALTER TABLE `muni`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `muni`
--
ALTER TABLE `muni`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1120;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;