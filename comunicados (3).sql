-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-03-2024 a las 09:03:38
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comunicados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atc_lectura`
--

CREATE TABLE `atc_lectura` (
  `ID` int(11) NOT NULL,
  `FECHACREADO` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TITULO` varchar(255) NOT NULL,
  `DESCRIPCION` varchar(255) NOT NULL,
  `TIPOLECTURA` varchar(255) NOT NULL,
  `USUARIO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atc_reportelectura`
--

CREATE TABLE `atc_reportelectura` (
  `ID` int(11) NOT NULL,
  `IDLECTURA` int(11) NOT NULL,
  `USUARIORED` varchar(255) NOT NULL,
  `CIUDAD` varchar(255) NOT NULL,
  `TITULO` varchar(255) NOT NULL,
  `ESTATUS` varchar(255) NOT NULL,
  `IP` varchar(255) NOT NULL,
  `APERTURAPAG` timestamp NOT NULL DEFAULT current_timestamp(),
  `FECHALEIDO` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atc_staff`
--

CREATE TABLE `atc_staff` (
  `ID` int(11) NOT NULL,
  `NUMEMPLEADO` varchar(255) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `APPATERNO` varchar(255) NOT NULL,
  `APMATERNO` varchar(255) NOT NULL,
  `CORREO` varchar(255) NOT NULL,
  `SUCURSAL` varchar(255) NOT NULL,
  `PUESTO` varchar(255) NOT NULL,
  `USUARIORED` varchar(255) NOT NULL,
  `ULTIMASESION` timestamp NOT NULL DEFAULT current_timestamp(),
  `CONTRASENIA` varchar(255) NOT NULL,
  `FECHAINGRESO` date NOT NULL,
  `USUARIOMODIFICA` varchar(255) NOT NULL,
  `FECHAMODIFICACION` timestamp NOT NULL DEFAULT current_timestamp(),
  `ESTADO` varchar(255) NOT NULL,
  `NIVEL` varchar(255) NOT NULL,
  `RFC` varchar(255) NOT NULL,
  `FECHANACIMIENTO` varchar(255) NOT NULL,
  `IDSIEBEL` varchar(255) NOT NULL,
  `IDSIEBEL2` varchar(255) NOT NULL,
  `PERFILSIEBEL` varchar(255) NOT NULL,
  `SISTEMACOBRO` varchar(255) NOT NULL,
  `NOMBRESIEBEL` varchar(255) NOT NULL,
  `NUMEROPLAZA` varchar(255) NOT NULL,
  `NOMINERA` varchar(255) NOT NULL,
  `AREA` varchar(255) NOT NULL,
  `GENERO` varchar(255) NOT NULL,
  `USUARIOREDII` varchar(255) NOT NULL,
  `IDVLOCITY` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `atc_staff`
--

INSERT INTO `atc_staff` (`ID`, `NUMEMPLEADO`, `NOMBRE`, `APPATERNO`, `APMATERNO`, `CORREO`, `SUCURSAL`, `PUESTO`, `USUARIORED`, `ULTIMASESION`, `CONTRASENIA`, `FECHAINGRESO`, `USUARIOMODIFICA`, `FECHAMODIFICACION`, `ESTADO`, `NIVEL`, `RFC`, `FECHANACIMIENTO`, `IDSIEBEL`, `IDSIEBEL2`, `PERFILSIEBEL`, `SISTEMACOBRO`, `NOMBRESIEBEL`, `NUMEROPLAZA`, `NOMINERA`, `AREA`, `GENERO`, `USUARIOREDII`, `IDVLOCITY`) VALUES
(2, '8894109', 'Jorge Patricio', 'Ruiz', 'Salas', 'jpruiz@izzi.mx', 'Tampico Ampliacion', 'Ejecutivo ATC', 'jpruiz', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'RUSJ890520F86', '', 'CVSUC8894109', 'CVSUC911394165', 'NA', 'JORGE PATRICIO RUIZ SALAS', '', 'MP89648221', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Masculino', 'p-jpruiz', '0'),
(3, '8893389', 'Maria Guadalupe', 'Lona', 'Vazquez', 'mlona@izzi.mx', 'San Roque', 'Ejecutivo ATC', 'mlona', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Activo', '1', 'LOVG841022R43', '', 'CVSUC8893389', '', 'Tiendas', '', '', '89644051', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(4, '8314153', 'Fatima Lorena', 'Rodriguez ', 'Obregon', 'flrodriguezo@izzi.mx', 'Matriz Matehuala', 'Ejecutivo ATC', 'flrodriguezo', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'ROOF990412TE0', '', 'CVSUC8314153', '', 'NA', 'FATIMA LORENA RODRIGUEZ OBREGON', '', '83450081', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(5, '8315040', 'Kassandra Guadalupe', 'Sigala', 'Morales', 'ksigala@izzi.mx', 'Satelite QRO', 'Ejecutivo ATC', 'ksigala', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'SIMK951118CCA', '', 'CVSUC8315040', 'CVSUC911358383', 'NA', 'KASSANDRA GUADALUPE SIGALA MORALES', '', '88601411', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-ksigala', '0'),
(6, '2136667', 'Carolina', 'Robles', 'Rodriguez', 'croblesr@izzi.mx', 'La Pastora', 'Jefe ATC', 'croblesr', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Baja', '2', 'RORC9508244P2', '', 'CVSUC7823274', 'CVSUC911395195', 'Tiendas', '', '', '83447101', 'RH SERVICIOS ADMINISTRATIVOS, S.A. DE C.V.', 'ATC', 'Femenino', 'p-croblesr', 'Carolina Robles Rodriguez'),
(7, '4115488', 'Diego Antonio', 'Ramos', 'Monjo', 'daramosm@izzi.mx', 'Cuautitlan Izcalli', 'Ejecutivo ATC', 'daramosm', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'RAMD9509077R8', '', 'CVSUC4115488', 'CVSUC911393411', 'Tiendas', '', '', '81805071', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Masculino', 'p-daramos', '0'),
(8, '4115376', 'Leonardo Gabriel', 'Alcocer', 'Resendiz', 'lgalcocer@izzi.mx', 'Satelite', 'Ejecutivo ATC', 'lgalcocer', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Incapacidad', '1', 'AORL960414EIA', '', 'CVSUC4115376', 'CVSUC911393405', 'Tiendas', '', '', '81805081', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Masculino', 'p-lalcocer', 'Leonardo Gabriel Alcocer Resendiz'),
(9, '4115320', 'Luis Daniel', 'Aceves', 'Paramo', 'lacevesp@izzi.mx', 'Antenas', 'Ejecutivo ATC', 'lacevesp', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'AEPL901203HC9', '', 'CVSUC4115320', 'CVSUC911394393', 'Tiendas', '', '', '81125001', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Masculino', 'p-laceves', '0'),
(10, '8314610', 'Jorge Alberto', 'Rosales', 'Cruz', 'jarosalesc@izzi.mx', 'Oficina Central Acapulco', 'Ejecutivo ATC', 'jarosalesc', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'ROCJ920309MPA', '', 'CVSUC8314610', 'CVSUC911396384', 'Tiendas', '', '', '86454281', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', 'p-jarosales', '0'),
(11, '8893982', 'Perla Rubi', 'Lupercio', 'Caballero', 'plupercio@izzi.mx', 'Matriz Vallarta', 'Ejecutivo ATC', 'plupercio', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'LUCP890227S37', '', 'CVSUC911394307', '', 'Tiendas', '', '', '140670001', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-plupercio', 'Perla Lupercio Caballero'),
(12, '4115331', 'Azael Victor', 'Aguirre', 'Camacho', 'avaguirre@izzi.mx', 'Tepeyac', 'Ejecutivo ATC', 'avaguirre', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'AUCA810722KL3', '', 'CVSUC4115331', 'CVSUC911396969', 'NA', 'AZAEL VICTOR AGUIRRE CAMACHO', '', '81306571', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Masculino', 'p-avaguirre', '0'),
(13, '4115327', 'Sheila Yanin', 'Parra', 'Lopez', 'sparral@izzi.mx', 'Polanco', 'Ejecutivo ATC', 'sparral', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Baja', '1', 'PALS940128BR3', '', 'CVSUC4115327', 'CVSUC911396986', 'Tiendas', '', '', '81121011', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Femenino', 'p-sparra', '0'),
(14, '7823295', 'Victor Eleazar', 'Diaz', 'Rangel', 'vdiazr@izzi.mx', 'Santa Maria', 'Ejecutivo ATC', 'vdiazr', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Baja', '1', 'DIRV9208239T9', '', 'CVSUC7823295', 'CVSUC911396878', 'Tiendas', '', '', '83446961', 'RH SERVICIOS ADMINISTRATIVOS, S.A. DE C.V.', 'ATC', 'Masculino', 'p-vdiaz', 'Victor Eleazar Diaz Rangel'),
(15, '7823292', 'Jorge Armando', 'Rodriguez', 'Alvarado', 'jarodriguezal@izzi.mx', 'Linda Vista', 'Jefe ATC', 'jarodriguezal', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '2', 'ROAJ950130MD1', '', 'CVSUC7823292', 'CVSUC911398063', 'Tiendas', '', '', '83446991', 'RH SERVICIOS ADMINISTRATIVOS, S.A. DE C.V.', 'ATC', 'Masculino', 'p-jarodriguezal', '0'),
(16, '7823287', 'Claudia Guadalupe', 'Barrera', 'De Leon', 'cgbarrera@izzi.mx', 'Santo Domingo', 'Ejecutivo ATC', 'cgbarrera', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Activo', '1', 'BALC730125EZ7', '', 'CVSUC7823287', 'CVSUC911398075', 'Tiendas', '', '', '83447261', 'RH SERVICIOS ADMINISTRATIVOS, S.A. DE C.V.', 'ATC', 'Femenino', 'p-cgbarrera', 'Claudia Barrera De Leon'),
(17, '7823289', 'Bertha Margarita', 'Gonzalez', 'Jasso', 'bmgonzalez@izzi.mx', 'La Fama', 'Ejecutivo ATC', 'bmgonzalez', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'GOJB9505299U9', '', 'CVSUC7823289', 'CVSUC911398520', 'Tiendas', '', '', '83447241', 'RH SERVICIOS ADMINISTRATIVOS, S.A. DE C.V.', 'ATC', 'Femenino', 'p-bmgonzalez', '0'),
(18, '8315006', 'Salvador', 'Gonzalez', 'Garces', 'sgonzalezg@izzi.mx', 'Gran Sur Pachuca', 'Ejecutivo Sr ATC', 'sgonzalezg', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '2', 'GOGS9108215S1', '', 'CVSUC911398419', '', 'Tiendas', '', '', '88593391', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', 'p-sgonzalezg', '0'),
(19, '2131556', 'Johanna', 'Garcia', 'Cavazos', 'jgarciac@izzi.mx', 'Allende', 'Jefe ATC', 'jgarciac', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '2', 'GACJ871013710', '', 'CVSUC8314597', '', 'NA', 'JOHANNA GARCIA CAVAZOS', '', '83454591', 'DKM BROKER, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(20, '8314995', 'Esmeralda', 'Cruz', 'Guzman', 'ecruzg@izzi.mx', 'Tulancingo Centro', 'Ejecutivo ATC', 'ecruzg', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'CUGE980605TY5', '', 'CVSUC8314995', 'CVSUC911399974', 'Tiendas', 'ESMERALDA CRUZ GUZMAN', '', '88588541', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-ecruzg', '0'),
(21, '8315013', 'Mayra Piedad', 'Lara', 'Lagunes', 'mlaral@izzi.mx', 'Tihuatlan', 'Ejecutivo Sr ATC', 'mlaral', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '2', 'LALM781107FZ4', '', 'CVSUC911396340', '', 'Tiendas', '', '', '86414031', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-mlara', '0'),
(22, '8894182', 'Irma Yolanda', 'Zuniga', 'Rodriguez', 'izuniga@izzi.mx', 'Las Torres GDL', 'Ejecutivo ATC', 'izuniga', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'ZURI781220T77', '', 'CVSUC8894182', 'CVSUC911396345', 'Tiendas', 'IRMA YOLANDA ZU??IGA RODRIGUEZ', '', '89801901', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-izuniga', '0'),
(23, '2991223', 'Felipe', 'Bedoy', 'Solis', 'fbedoy@izzi.mx', 'San Gaspar', 'Ejecutivo ATC', 'fbedoy', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'BESF9311233X4', '', 'CVSUC911397379', 'CVSUC8893810', 'Tiendas', '', '', '89801471', 'BROKERS MOL, S.A. DE C.V.', 'ATC', 'Masculino', 'p-fbedoy', 'Felipe Bedoy Solis'),
(24, '8315032', 'Itzajana', 'Ramirez', 'Figueroa', 'iramirezf@izzi.mx', 'Nanchital', 'Ejecutivo ATC', 'iramirezf', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Baja', '1', 'RAFI980425V25', '', 'CVSUC911399078', 'CVSUC8315032', 'Tiendas', '', '', '10084898', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-iramirezf', '0'),
(25, '7115984', 'Jovanna Alejandra', 'Arellano', 'Gonzalez', 'jaarellano@izzi.mx', 'Madero Rio Bravo', 'Ejecutivo ATC', 'jaarellano', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Baja', '1', 'AEGJ911217B33', '', 'CVSUC911400074', '', 'Tiendas', '', '', '83447401', 'SUMANT, S.A. DE C.V.', 'ATC', 'Femenino', 'p-jaarellano', '0'),
(26, '2134630', 'Jose Ernesto', 'Ramirez', 'Escobar', 'jramireze@izzi.mx', 'Tula', 'Gerente ATC', 'jramireze', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Baja', '3', 'RAEE721126QS2', '', 'NA', '', 'Tiendas', '', '', '88551321', 'DKM BROKER, S.A. DE C.V.', 'ATC', 'Masculino', '', '0'),
(27, '4115380', 'Cecilia', 'Alvarado', 'Martinez', 'calvaradom@izzi.mx', 'Atizapan', 'Ejecutivo ATC', 'calvaradom', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Incapacidad', '1', 'AAMC9608223QA', '', 'CVSUC4115380', 'CVSUC999781938', 'Tiendas', '', '', '81805101', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Femenino', 'p-calvarado', '0'),
(28, '8302372', 'Jesus Santiago', 'Almaraz', 'Montez', 'jalmaraz@izzi.mx', 'Valles', 'Ejecutivo ATC', 'jalmaraz', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Activo', '1', 'AAMJ8807258BA', '', 'CVSUC8302372', '', 'Tiendas', 'JESUS SANTIAGO ALMARAZ MONTEZ', '', '864549811', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', '', '0'),
(29, '8314350', 'Felipe Antonio', 'Rivera', 'Vieyra', 'friverav@izzi.mx', 'Plaza Uno', 'Ejecutivo ATC', 'friverav', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'RIVF860207LZ9', '', 'CVSUC8314350', 'CVSUC911385077', 'NA', 'FELIPE ANTONIO RIVERA VIEYRA', '', '88592241', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', '', '0'),
(30, '4115046', 'Jonathan Adrian', 'Lemus', 'Rojas', 'jlemus@izzi.mx', 'Bosques de Aragon', 'Ejecutivo ATC', 'jlemus', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'LERJ921121M63', '', 'CVSUC4115046', 'CVSUC911388036', 'Tiendas', '', '', '81193211', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Masculino', 'p-jlemus', '0'),
(31, '4115045', 'Jose Enrique', 'Lozano', 'Dominguez', 'jlozanod@izzi.mx', 'Polanco', 'Ejecutivo ATC', 'jlozanod', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'LODE960319TBA', '', 'CVSUC4115045', 'CVSUC911388035', 'Tiendas', 'JOSE ENRIQUE LOZANO DOMINGUEZ', '', '81756531', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Masculino', 'p-jlozano', '0'),
(32, '8313914', 'Janet', 'Dominguez', 'Carmona', 'jdominguezc@izzi.mx', 'Matriz Zaragoza', 'Ejecutivo ATC', 'jdominguezc', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'DOCJ870308UG6', '', 'CVSUC8313914', '', 'Tiendas', '', '', '88594071', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(33, '8893682', 'Johana Vianey', 'Angel', 'Magana', 'jangel@izzi.mx', 'Purisima', 'Ejecutivo ATC', 'jangel', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Activo', '1', 'AEMJ940109286', '', 'CVSUC8893682', 'CVSUC911390861', 'Tiendas', '', '', '10078986', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-jangel', 'Johana Vianey Angel Magana'),
(34, '4115077', 'Barbara', 'Ortega', 'Altamirano', 'bortegaa@izzi.mx', 'Antenas', 'Ejecutivo ATC', 'bortegaa', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'OEAB990810P98', '', 'CVSUC4115077', 'CVSUC911385574', 'Tiendas', '', '', '81746871', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Femenino', 'p-bortega', '0'),
(35, '8313873', 'Glendy Mariel', 'Catzin', 'Navarrete', 'p-gcatzin@izzi.mx', 'Playa del Carmen', 'Ejecutivo Sr ATC', 'p-gcatzin', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '2', 'CANG9212287B1', '', 'CVSUC8313873', '', 'Tiendas', '', '', '86412441', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(36, '8313861', 'Luis Fernando', 'Ojeda', 'Cruz', 'lojeda@izzi.mx', 'Matriz Orizaba', 'Ejecutivo ATC', 'lojeda', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'OECL950714535', '', 'CVSUC8313861', '', 'Tiendas', 'LUIS FERNANDO OJEDA CRUZ', '', '88600561', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', '', '0'),
(37, '7115127', 'Karla Marina', 'Alvizo', 'Escobedo', 'kalvizo@izzi.mx', 'Matriz Saltillo', 'Ejecutivo ATC', 'kalvizo', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Activo', '1', 'AIEK860318D18', '', 'CVSUC7115127', 'CVSUC911388071', 'Tiendas', '', '', '83446951', 'SUMANT, S.A. DE C.V.', 'ATC', 'Femenino', 'p-kalvizo', '0'),
(38, '4115074', 'Jesus Ohtokani', 'Garcia', 'Salinas', 'jogarcias@izzi.mx', 'Tlatelolco', 'Ejecutivo ATC', 'jogarcias', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'GASJ9409141X4', '', 'CVSUC4115074', 'CVSUC911388709', 'Tiendas', '', '', '81193551', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Masculino', 'p-jogarcia', '0'),
(39, '8314089', 'Martha Valeria', 'Roque', 'Perez', 'mvroque@izzi.mx', 'Plaza Palmira', 'Ejecutivo ATC', 'mvroque', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'ROPM9211233N7', '', 'CVSUC8314089', 'CVSUC911388119', 'Tiendas', 'MARTHA VALERIA ROQUE PEREZ', '', '88597661', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-mvroque', '0'),
(40, '8313996', 'Grisel', 'Jaimes', 'Olivares', 'gjaimeso@izzi.mx', 'Gastelum', 'Ejecutivo ATC', 'gjaimeso', '0000-00-00 00:00:00', '8313996', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'JAOG860626V79', '', 'CVSUC8313996', '', 'Tiendas', 'GRISEL JAIMES OLIVARES', '', '86453801', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', '', 'Grisel Jaimes Olivares'),
(41, '8893676', 'Maria Carolina', 'Martinez', 'Mejia', 'mcmartinez@izzi.mx', 'Ahualulco', 'Ejecutivo Sr ATC', 'mcmartinez', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '2', 'MAMC990518RC4', '', 'CVSUC8893676', 'CVSUC911390006', 'Tiendas', 'MARIA CAROLINA MARTINEZ MEJIA', '', '89646691', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-mcmartinez', 'MARIA MARTINEZ MEJIA'),
(42, '2133867', 'Yazmin Del Carmen', 'Escobedo', 'Zuniga', 'yescobedo@izzi.mx', 'San Nicolas', 'Jefe Regional ATC', 'yescobedo', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '3', 'EOZY870716EF8', '', 'CVSUC8314036', '', 'Tiendas', '', '', '86711921', 'DKM BROKER, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(43, '8893593', 'Citlalli Judith', 'Plascencia ', 'Vazquez', 'cplascenciav@izzi.mx', 'Naciones', 'Administrativo', 'cplascenciav', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Baja', '3', 'PAVC990519L12', '', 'CVSUC8893593', 'CVSUC911390263', 'Tiendas', '', '', '89647301', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-cplascencia', 'Citlalli Judith Plascencia Vazquez'),
(44, '8893445', 'Jaqueline', 'De Luna', 'Ferrer', 'jdeluna@izzi.mx', 'San Juan Del Rio', 'Ejecutivo ATC', 'jdeluna', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'LUFJ950402TF3', '', 'CVSUC8893445', '', 'Tiendas', '', '', '89639721', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(45, '8893592', 'Jaime Antonio', 'Rivas', 'Avina', 'jrivasa@izzi.mx', 'Naciones', 'Ejecutivo ATC', 'jrivasa', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'RIAJ9403032P8', '', 'CVSUC8893592', 'CVSUC911263436', 'NA', 'JAIME ANTONIO RIVAS AVI??A', '', '89640371', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Masculino', 'p-jrivas', '0'),
(46, '8893677', 'Fabiola Elizabeth', 'Jimenez', 'Gonzalez', 'fejimenez@izzi.mx', 'Capilla de Guadalupe', 'Ejecutivo Sr ATC', 'fejimenez', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '2', 'JIGF961106673', '', 'CVSUC8893677', 'CVSUC89642781', 'Tiendas', '', '', '89642781', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-fejimenez', '0'),
(47, '8316117', 'Jorge Luis', 'Barrera', 'Mendieta', 'jbarreram@izzi.mx', 'Cuajimalpa', 'Ejecutivo Sr ATC', 'jbarreram', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '2', 'BAMJ960825EIA', '', 'CVSUC4115044', 'CVSUC911387251', 'Tiendas', '', '', '81756131', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Masculino', '', '0'),
(48, '8893601', 'Maricela', 'Escobedo', 'Hernandez', 'mescobedo@izzi.mx', 'Barragan', 'Ejecutivo ATC', 'mescobedoh', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'EOHM790427674', '', 'CVSUC8893601', 'CVSUC911387048', 'Tiendas', '', '', '10076412', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', '', 'Maricela Escobedo Hernandez'),
(49, '4115079', 'Mario Alberto', 'Ornelas', 'Calderon', 'mornelasc@izzi.mx', 'Pabellon del Valle', 'Ejecutivo ATC', 'mornelasc', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'OECM900414S5A', '', 'CVSUC4115079', 'CVSUC911387249', 'Tiendas', '', '', '81756391', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Masculino', 'p-mornelas', '0'),
(50, '7114953', 'Perla Montserrat', 'Reyes', 'Resendez', 'pmreyes@izzi.mx', 'Matriz Saltillo', 'Ejecutivo ATC', 'pmreyes', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'RERP020207557', '', 'CVSUC7114953', 'CVSUC911386154', 'Tiendas', 'PERLA MONTSERRAT REYES RESENDEZ', '', '83447211', 'SUMANT, S.A. DE C.V.', 'ATC', 'Femenino', 'p-pmreyes', 'Perla Montserrat Reyes Resendez'),
(51, '7823191', 'Cristopher Eduardo', 'Gonzalez', 'Muniz', 'cegonzalezm@izzi.mx', 'La Fama', 'Ejecutivo ATC', 'cegonzalezm', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Baja', '1', 'GOMC010303SUA', '', 'CVSUC7823191', 'CVSUC911388716', 'Tiendas', '', '', '83447271', 'RH SERVICIOS ADMINISTRATIVOS, S.A. DE C.V.', 'ATC', 'Masculino', '', '0'),
(52, '4115041', 'Anabell Joana', 'Rangel', 'Padilla', 'ajrangelp@izzi.mx', 'Izcalli del Valle', 'Ejecutivo ATC', 'ajrangelp', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Baja', '1', 'RAPA8608084Z1', '', 'CVSUC4115041', 'CVSUC911383267', 'Tiendas', '', '', '81756521', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(53, '4115078', 'Saul Roberto', 'Gutierrez', 'Morales', 'srgutierrez@izzi.mx', 'Paseo Acoxpa', 'Ejecutivo ATC', 'srgutierrez', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Baja', '1', 'GUMS830824V32', '', 'CVSUC4115078', 'CVSUC911389471', 'Tiendas', '', '', '81124931', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Masculino', 'p-srgutierrez', '0'),
(54, '8313738', 'Elizabeth', 'Jimenez', 'Velazquez', 'ejimenezvel@izzi.mx', 'Cancun Mall', 'Ejecutivo ATC', 'ejimenezvel', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Baja', '1', 'JIVE860426H63', '', 'CVSUC8313738', '', 'Tiendas', '', '', '86409101', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(55, '8893553', 'Jorge Luis', 'Sandoval', 'Reyes', 'jlsandovalr@izzi.mx', 'Villasuncion', 'Ejecutivo ATC', 'jlsandovalr', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'SARJ9609146Y0', '', 'CVSUC8893553', 'CVSUC911386375', 'Tiendas', 'JORGE LUIS SANDOVAL REYES', '', '89640071', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Masculino', '', '0'),
(56, '2136768', 'Juan Carlos', 'Zamudio', 'Cabrera', 'p-jzamudio@izzi.mx', 'Las Americas Tabasco', 'Ejecutivo Sr ATC', 'p-jzamudio', '0000-00-00 00:00:00', '8313714', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '2', 'ZACJ8901162C3', '', 'CVSUC8313714', '', 'Tiendas', 'JUAN CARLOS ZAMUDIO CABRERA', '', '88604471', 'DKM BROKER, S.A. DE C.V.', 'ATC', 'Masculino', '', 'Juan Carlos Zamudio Cabrera'),
(57, '8893607', 'Zulma Dinora', 'Lopez', 'Cardenas', 'zdlopez@izzi.mx', 'Acaponeta', 'Ejecutivo ATC', 'zdlopez', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'LOCZ821221N42', '', 'CVSUC8893607', 'CVSUC911389113', 'Tiendas', '', '', '89644671', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-zdlopez', '0'),
(58, '4115528', 'Berenice', 'Ramirez', 'Sandoval', 'bramirezs@izzi.mx', 'Los Reyes la Paz', 'Ejecutivo ATC', 'bramirezs', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'RASB870604988', '', 'CVSUC911388723', '', 'Tiendas', '', '', '81756081', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Femenino', 'p-bramirezs', '0'),
(59, '8314586', 'Aldrin Efrain', 'Silva', 'Brito', 'asilvab@izzi.mx', 'Altamira Centro', 'Ejecutivo ATC', 'asilvab', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'SIBA890908BE6', '', 'CVSUC8314586', 'CVSUC911388079', 'Tiendas', '', '', '83447841', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', 'p-asilva', '0'),
(60, '8893674', 'Valeria Jocelin', 'Gutierrez', 'Padilla', 'vjgutierrez@izzi.mx', 'Jalostotitlan', 'Ejecutivo ATC', 'vjgutierrez', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'GUPV970418PS9', '', 'CVSUC8893674', 'CVSUC911390013', 'Tiendas', '', '', '89654551', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-vjgutierrez', '0'),
(61, '8314088', 'Alma Adelina', 'Soto', 'Garcia', 'aasotog@izzi.mx', 'Matriz Cd Del Carmen', 'Ejecutivo ATC', 'aasotog', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Activo', '1', 'SOGA880806U94', '', 'CVSUC8314088', 'CVSUC911390198', 'Tiendas', '', '', '88599891', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-aasoto', '0'),
(62, '2132849', 'Jesus Salvador', 'Hernandez', 'Hernandez', 'jehernandezhe@izzi.mx', 'Matriz Orizaba', 'Jefe Regional ATC', 'jehernandezhe', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Activo', '3', 'HEHJ880121PF4', '', 'CVSUC8314047', '', 'Tiendas', '', '', '86411361', 'DKM BROKER, S.A. DE C.V.', 'ATC', 'Masculino', '', 'JESUS SALVADOR HERNANDEZ HERNANDEZ'),
(63, '8314557', 'Maria Fernanda', 'Galindo', 'Mendoza', 'mfgalindo@izzi.mx', 'Huimilpan', 'Ejecutivo ATC', 'mfgalindo', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'GAMF931026KK2', '', 'CVSUC8314557', 'CVSUC911389846', 'Tiendas', '', '', '88593881', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-mfgalindo', 'Maria Fernanda Galindo Mendoza'),
(64, '7115218', 'Luis Fernando', 'Hernandez', 'Gomez', 'lfhernandezg@izzi.mx', 'Matriz Saltillo', 'Ejecutivo ATC', 'lfhernandezg', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'HEGL010523G40', '', 'CVSUC7115218', 'CVSUC911389335', 'Tiendas', 'LUIS FERNANDO HERNANDEZ GOMEZ', '', '83447221', 'SUMANT, S.A. DE C.V.', 'ATC', 'Masculino', 'p-lfhernandezg', '0'),
(65, '8313789', 'Anali', 'Jimenez', 'Castro', 'ajimenezc@izzi.mx', 'Montejo', 'Ejecutivo ATC', 'ajimenezc', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'JICA850704152', '', 'CVSUC8313789', '', 'Tiendas', '', '', '10027436', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(66, '8314696', 'Lucia Daniela', 'Jimenez', 'Gomez', 'ldjimenez@izzi.mx', 'El Dorado', 'Ejecutivo ATC', 'ldjimenez', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Baja', '1', 'JIGL8910129G6', '', 'CVSUC8314696', 'CVSUC911389848', 'Tiendas', '', '', '88594951', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-ldjimenez', 'OMAR JIMENEZ GOMEZ'),
(67, '8893675', 'Liliana Guadalupe', 'Padilla', 'Hernandez', 'lpadillah@izzi.mx', 'Arandas Tulipanes', 'Ejecutivo ATC', 'lpadillah', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'PAHL930322AX6', '', 'CVSUC8893675', 'CVSUC89638141', 'NA', 'LILIANA GUADALUPE PADILLA HERNANDEZ', '', '89638141', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-lpadilla', '0'),
(68, '8302266', 'Javier', 'Zaldivar', 'Arizaga', 'jzaldivar@izzi.mx', 'Malecon Americas', 'Ejecutivo ATC', 'jzaldivar', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'ZAAJ850326632', '', 'CVSUC315745', '', 'Tiendas', '', '', '86452501', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', '', '0'),
(69, '8314322', 'Aimee Gabriela', 'Castaneda', 'Bello', 'agcastanedab@izzi.mx', 'Plaza Espinal', 'Ejecutivo Sr ATC', 'agcastanedab', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '2', 'CABA9405277W5', '', 'CVSUC8314322', 'CVSUC911391270', 'Tiendas', 'AIMEE GABRIELA CASTANEDA BELLO', '', '88601881', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-agcastaneda', '0'),
(70, '8314267', 'Ivanna De Jesus', 'Flores', 'Moreno', 'idflores@izzi.mx', 'Las Americas QRO', 'Ejecutivo ATC', 'idflores', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Baja', '1', 'FOMI990104LI8', '', 'CVSUC8314267', 'CVSUC911391268', 'Tiendas', '', '', '88600321', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-idflores', 'IVANNA DE JESUS FLORES MORENO'),
(71, '7115126', 'Melissa Abigail', 'Torres', 'Duque', 'matorresd@izzi.mx', 'Nogalera', 'Ejecutivo ATC', 'matorresd', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'TODM970127MV0', '', 'CVSUC7115126', 'CVSUC911387912', 'Tiendas', 'MELISSA ABIGAIL TORRES DUQUE', '', '83446841', 'SUMANT, S.A. DE C.V.', 'ATC', 'Femenino', 'p-matorresd', '0'),
(72, '8314460', 'Luis Eduardo', 'Loredo', 'Mendez', 'lloredo@izzi.mx', 'Matriz San Luis', 'Ejecutivo ATC', 'lloredo', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'LOML880905CW5', '', 'CVSUC8314460', 'CVSUC911387881', 'Tiendas', '', '', '88603571', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', 'p-lloredo', '0'),
(73, '7823205', 'Veronica Georgina', 'Vega', 'Lopez', 'vgvega@izzi.mx', 'Lincoln', 'Ejecutivo ATC', 'vgvega', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Baja', '1', 'VELV8312287D3', '', 'CVSUC7823205', 'CVSUC911389519', 'Tiendas', '', '', '83447091', 'RH SERVICIOS ADMINISTRATIVOS, S.A. DE C.V.', 'ATC', 'Femenino', 'p-vvega', '0'),
(74, '8315866', 'Diana Zulema', 'Cruz', 'Silva', 'dcruzs@izzi.mx', 'Corporativo', 'Administrativo', 'dcruzs', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Activo', '4', 'CUSD990211UWA', '', 'CVSUC4115043', 'CVSUC911387247', 'Tiendas', '', 'Cristopher Martinez Medina', '81746821', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(75, '4115076', 'Josafath', 'Dominguez', 'Lopez', 'jdominguezl@izzi.mx', 'Ermita', 'Ejecutivo ATC', 'jdominguezl', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'DOLJ921023DR0', '', 'CVSUC4115076', 'CVSUC911386353', 'Tiendas', 'JOSAFATH DOMINGUEZ LOPEZ', '', '81273911', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Masculino', 'p-jdominguezl', '0'),
(76, '7823190', 'Jesus Eduardo', 'Rodriguez ', 'Bernal', 'jerodriguezb@izzi.mx', 'Nuevo Sur', 'Ejecutivo ATC', 'jerodriguezb', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'ROBJ000223C19', '', 'CVSUC7823190', 'CVSUC911388718', 'Tiendas', 'JESUS EDUARDO RODRIGUEZ BERNAL', '', '83447171', 'RH SERVICIOS ADMINISTRATIVOS, S.A. DE C.V.', 'ATC', 'Masculino', '', '0'),
(77, '8314109', 'Aldairs De Jesus', 'Mijangos', 'Perez', 'amijangos@izzi.mx', 'Coatzacoalcos Centro', 'Ejecutivo ATC', 'amijangos', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'MIPA960625SS4', '', 'CVSUC8314109', '', 'NA', 'ALDAIRS DE JESUS MIJANGOS PEREZ', '', '86409321', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', '', '0'),
(78, '8314998', 'Eduardo', 'Espinoza', 'Mora', 'eemora@izzi.mx', 'Las Americas QRO', 'Ejecutivo ATC', 'eemora', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'EIME990601UY8', '', 'CVSUC911390761', '', 'Tiendas', '', '', '88592531', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', 'p-eespinoza', 'Eduardo Espinoza Mora'),
(79, '8313705', 'Carlos Daniel', 'Meza', 'Maldonado', 'cdmeza@izzi.mx', 'Plaza Monumental', 'Ejecutivo ATC', 'cdmeza', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'MEMC901219TD5', '', 'CVSUC8313705', '', 'Tiendas', 'CARLOS DANIEL MEZA MALDONADO', '', '86411841', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', '', '0'),
(80, '8314082', 'Diana Lizbeth', 'Alcocer', 'Frias', 'dlalcocerfr@izzi.mx', 'Plaza Jilotepec', 'Ejecutivo ATC', 'dlalcocerfr', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'AOFD9212112D9', '', 'CVSUC8314082', '', 'Tiendas', 'DIANA LIZBETH ALCOCER FRIAS', '', '86454151', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(81, '8893665', 'Lorena', 'Amador', 'Aguayo', 'lamadora@izzi.mx', 'Pabellon Arteaga', 'Ejecutivo Sr ATC', 'lamadora', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Activo', '2', 'AAAL9405297K5', '', 'CVSUC8893665', 'CVSUC911209005', 'Tiendas', '', '', '89640911', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-lamador', '0'),
(82, '4115165', 'Laura Berenice', 'Garcia', 'Chavez', 'lbgarcia@izzi.mx', 'Pabellon Cuauhtemoc', 'Ejecutivo ATC', 'lbgarcia', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Activo', '1', 'GACL8802105J4', '', 'CVSUC4115165', 'CVSUC911392207', 'Tiendas', '', '', '81756341', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Femenino', 'p-lbgarcia', '0'),
(83, '8315037', 'Karina Marisol', 'Saucedo', 'Vargas', 'ksaucedo@izzi.mx', 'La Encantada', 'Ejecutivo ATC', 'ksaucedo', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Baja', '1', 'SAVK930623637', '', 'CVSUC911392781', 'CVSUC8315037', 'Tiendas', '', '', '88601741', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-ksaucedo', '0'),
(84, '8894159', 'Oscar Francisco', 'Vazquez', 'Bermejo', 'ofvazquez@izzi.mx', 'Miravalle', 'Ejecutivo Sr ATC', 'ofvazquez', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '2', 'VABO971228LB9', '', 'CVSUC8894159', 'CVSUC911391784', 'Tiendas', 'OSCAR FRANCISCO VAZQUEZ BERMEJO', '', '89802041', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Masculino', 'p-ofvazquez', '0'),
(85, '8315023', 'Diana', 'Monter', 'Mendoza', 'dmonterm@izzi.mx', 'Cuautepec', 'Ejecutivo ATC', 'dmonterm', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Baja', '1', 'MOMD880807AU3', '', 'CVSUC8315023', 'CVSUC911397691', 'Tiendas', '', '', '88619861', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-dmonterm', '0'),
(86, '8894037', 'Kareli Elizarit', 'Navarro', 'Vazquez', 'kenavarro@izzi.mx', 'Portales', 'Ejecutivo ATC', 'kenavarro', '0000-00-00 00:00:00', '', '0000-00-00', 'mdgutierrezb', '0000-00-00 00:00:00', 'Baja', '1', 'NAVK000906IU1', '', 'CVSUC911397246', 'CVSUC8894037', 'Tiendas', 'KARELI ELIZARIT NAVARRO VAZQUEZ', '', '89643151', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-kenavarro', '0'),
(87, '8894031', 'Alma Lizbeth', 'Mulgado', 'Rojo', 'amulgado@izzi.mx', 'Arandas Tulipanes', 'Ejecutivo Sr ATC', 'amulgado', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '2', 'MURA010131R48', '', 'CVSUC911399336', '', 'Tiendas', '', '', '89642281', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-amulgado', 'Alma Lizbeth Mulgado Rojo'),
(88, '8893979', 'Stephanie Del Socorro', 'Lopez', 'Meza', 'sdlopezm@izzi.mx', 'Ixtlan', 'Ejecutivo ATC', 'sdlopezm', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'LOMS920308L48', '', 'CVSUC911394658', '', 'Tiendas', 'STEPHANIE DEL SOCORRO LOPEZ MEZA', '', '89642461', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-slopez', '0'),
(89, '7116907', 'Odalys Sarahi', 'Pena', 'Rodriguez', 'opena@izzi.mx', 'Madero Rio Bravo', 'Ejecutivo ATC', 'opena', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Activo', '1', 'PERO9708154NA', '', 'CVSUC911398754', '', 'Tiendas', '', '', '83447381', 'SUMANT, S.A. DE C.V.', 'ATC', 'Femenino', 'p-opena', 'ODALYS PENA RODRIGUEZ'),
(90, '2131621', 'Juan Martin', 'Saucedo', 'Jimenez', 'jmsaucedo@izzi.mx', 'Apodaca', 'Jefe ATC', 'jmsaucedo', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Baja', '2', 'SAJJ931001191', '', 'CVSUC8314592', '', 'Tiendas', '', '', '83456791', 'DKM BROKER, S.A. DE C.V.', 'ATC', 'Masculino', '', '0'),
(91, '8894087', 'Diana Jarummy', 'Rodriguez ', 'Sandoval', 'djrodriguez@izzi.mx', 'Matriz Vallarta', 'Ejecutivo ATC', 'djrodriguez', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'ROSD951229NFA', '', 'CVSUC911399390', '', 'Tiendas', 'DIANA JARUMMY RODRIGUEZ SANDOVAL', '', '89650811', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-djrodriguez', '0'),
(92, '8315021', 'Raul', 'Millan', 'Ruiz', 'rmillanr@izzi.mx', 'Ojo De Agua', 'Jefe ATC', 'rmillanr', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Activo', '2', 'MIRR950919453', '', 'CVSUC8315021', 'CVSUC911394768', 'Tiendas', '', '', '88586791', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', 'p-rmillan', '0'),
(93, '4115507', 'Carlos Alejandro', 'Sepulveda', 'Alzua', 'csepulveda@izzi.mx', 'Paseo Acoxpa', 'Ejecutivo ATC', 'csepulvedaa', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'SEAC770405TR5', '', 'CVSUC760829', '', 'Tiendas', 'CARLOS ALEJANDRO SEPULVEDA ALZUA', '', '81756331', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Masculino', '', '0'),
(94, '8893666', 'Casandra Yudit', 'Salas', 'Gallegos', 'cysalas@izzi.mx', 'Haciendas', 'Ejecutivo ATC', 'cysalas', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Baja', '1', 'SAGC011008SM8', '', 'CVSUC8893666', 'CVSUC911391497', 'Tiendas', '', '', '89640251', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-cysalas', '0'),
(95, '8894090', 'Jessica Guadalupe', 'Rodriguez ', 'Escalera', 'jgrodrigueze@izzi.mx', 'Haciendas', 'Ejecutivo ATC', 'jgrodrigueze', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'ROEJ960213PV1', '', 'CVSUC911393014', '', 'Tiendas', 'JESSICA GUADALUPE RODRIGUEZ ESCALERA', '', '89645871', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-jgrodrigueze', '0'),
(96, '7823212', 'Maria', 'Nino', 'Faz', 'mnino@izzi.mx', 'Altea Huinala', 'Ejecutivo ATC', 'mnino', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'NIFM7409228A0', '', 'CVSUC7823212', 'CVSUC911391749', 'Tiendas', '', '', '83447721', 'RH SERVICIOS ADMINISTRATIVOS, S.A. DE C.V.', 'ATC', 'Femenino', 'p-mnino', '0'),
(97, '8893591', 'Miriam Elizabeth', 'Heredia', 'Garcia', 'mherediag@izzi.mx', 'San Isidro', 'Ejecutivo ATC', 'mherediag', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'HEGM8401245S7', '', 'CVSUC8893591', 'CVSUC911270078', 'Tiendas', '', '', '89639381', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-mheredia', '0'),
(98, '8314761', 'Alan Mauricio', 'Lopez', 'Ramirez', 'amlopezr@izzi.mx', 'Los Reyes la Paz', 'Ejecutivo ATC', 'amlopezr', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'LORA930805UY3', '', 'CVSUC8314761', 'CVSUC911394746', 'Tiendas', '', '', '88598241', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', 'p-amlopez', '0'),
(99, '8314380', 'Noelia Johana', 'Lozano', 'Melo', 'njlozano@izzi.mx', 'Plaza Bella Pachuca', 'Ejecutivo ATC', 'njlozano', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'LOMN991019KN1', '', 'CVSUC8314380', '', 'Tiendas', 'NOELIA JOHANA LOZANO MELO', '', '88595771', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(100, '8314275', 'Sandra Luz', 'Velasco', 'Sanchez', 'svelasco@izzi.mx', 'Rio Blanco', 'Ejecutivo Sr ATC', 'svelasco', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Activo', '2', 'VESS890516LA6', '', 'CVSUC8314275', '', 'Tiendas', '', '', '88597911', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(101, '9120744', 'Eric', 'Torres', 'Feria', 'etorresf@izzi.mx', 'Paraiso', 'Ejecutivo ATC', 'etorresf', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'TOFE911116B31', '', 'CVSUC911399371', '', 'Tiendas', 'ERIC TORRES FERIA', '', '88586931', 'GRUPO CABLE ASESORES, S.A. DE C.V.', 'ATC', 'Masculino', 'p-etorres', 'Eric Torres Feria'),
(102, '2991460', 'Brenda Karina', 'Villegas', 'Ramirez', 'bkvillegas@izzi.mx', 'Forum Tlaquepaque', 'Jefe ATC', 'bkvillegas', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '2', 'VIRB880229U48', '', 'CVSUC8894181', 'CVSUC911396344', 'Tiendas', '', '', '89814861', 'BROKERS MOL, S.A. DE C.V.', 'ATC', 'Femenino', 'p-bkvillegas', 'Brenda Karina Villegas Ramirez'),
(103, '8893976', 'Raul', 'Lopez', 'Ramirez', 'rlopezra@izzi.mx', 'HB Sania', 'Ejecutivo Sr ATC', 'rlopezra', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '2', 'LORR940906NV0', '', 'CVSUC8893976', 'CVSUC911201637', 'Tiendas', 'RAUL LOPEZ RAMIREZ', '', '89801601', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Masculino', 'p-rlopezr', '0'),
(104, '8314553', 'Iliana Jacqueline', 'Roque', 'Martinez', 'iroquem@izzi.mx', 'CD Mendoza', 'Ejecutivo Sr ATC', 'iroquem', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '2', 'ROMI9607232J8', '', 'CVSUC8314553', '', 'Tiendas', 'ILIANA JACQUELINE ROQUE MARTINEZ', '', '88597411', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(105, '8894098', 'Yessica', 'Rojas', 'Marquez', 'yrojasm@izzi.mx', 'Tonala', 'Ejecutivo ATC', 'yrojasm', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'ROMY920727T30', '', 'CVSUC911397380', 'CVSUC8894098', 'Tiendas', 'YESSICA ROJAS MARQUEZ', '', '89802061', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-yrojas', 'Yessica Rojas Marquez'),
(106, '7823416', 'Jonatan', 'Martinez', 'Limon', 'jmartinezli@izzi.mx', 'Altea Lincoln', 'Ejecutivo ATC', 'jmartinezli', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'MALJ991114R29', '', 'CVSUC911399906', '', 'NA', 'JONATAN MARTINEZ LIMON', '', '83447761', 'RH SERVICIOS ADMINISTRATIVOS, S.A. DE C.V.', 'ATC', 'Masculino', 'p-jmartinezl', '0'),
(107, '7823420', 'Jasmin Esmeralda', 'Montano', 'Sanchez', 'jemontano@izzi.mx', 'Nuevo Sur', 'Ejecutivo ATC', 'jemontano', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'MOSJ900222H59', '', 'CVSUC911400667', '', 'Tiendas', 'JASMIN ESMERALDA MONTANO SANCHEZ', '', '83446731', 'RH SERVICIOS ADMINISTRATIVOS, S.A. DE C.V.', 'ATC', 'Femenino', 'p-jemontano', '0'),
(108, '8894059', 'Diana Berenice', 'Pulido', 'Landin', 'dpulido@izzi.mx', 'El Parian', 'Ejecutivo ATC', 'dpulido', '0000-00-00 00:00:00', '911397297', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'PULD92102842A', '', 'CVSUC911397297', '', 'NA', 'DIANA BERENICE PULIDO LANDIN', '', '89641441', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-dpulido', '0'),
(109, '4115164', 'David', 'Castillo', 'Palacios', 'dcastillop@izzi.mx', 'Pabellon Cuauhtemoc', 'Ejecutivo ATC', 'dcastillop', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'CAPD840929472', '', 'CVSUC4115164', 'CVSUC30135809', 'Tiendas', '', '', '81756061', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Masculino', 'p-dcastillo', '0'),
(110, '8314642', 'Uriel', 'Garcia', 'Islas', 'ugarciai@izzi.mx', 'HB Pachuca', 'Ejecutivo ATC', 'ugarciai', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Activo', '1', 'GAIU961122P47', '', 'CVSUC8314642', '', 'Tiendas', '', '', '88585481', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', '', 'URIEL GARCIA ISLAS'),
(111, '7823402', 'Janeth', 'Jacinto', 'Lopez', 'jjacinto@izzi.mx', 'Juarez', 'Ejecutivo ATC', 'jjacinto', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Baja', '1', 'JALJ800112427', '', 'CVSUC911399635', '', 'Tiendas', '', '', '83447001', 'RH SERVICIOS ADMINISTRATIVOS, S.A. DE C.V.', 'ATC', 'Femenino', 'p-jjacinto', '0'),
(112, '8315041', 'Jesus Ivan', 'Solano', 'Pena', 'jisolano@izzi.mx', 'Parque Lindavista', 'Ejecutivo ATC', 'jisolano', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'SOPJ8912282K4', '', 'CVSUC8315041', 'CVSUC911389124', 'Tiendas', 'JESUS IVAN SOLANO PENA', '', '88602441', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', 'p-jisolano', '0'),
(113, '8315007', 'Zayra Elizabeth', 'Gonzalez', 'Jacobo', 'zegonzalez@izzi.mx', 'La Encantada', 'Ejecutivo ATC', 'zegonzalez', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Activo', '1', 'GOJZ940220KR3', '', 'CVSUC911400013', 'CVSUC8315007', 'Tiendas', '', '', '83447631', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-zegonzalez', '0'),
(114, '4115458', 'Donovan Israel', 'Mogoyan', 'Velazquez', 'dmogoyan@izzi.mx', 'Atizapan', 'Ejecutivo ATC', 'dmogoyan', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Activo', '1', 'MOVD021229E91', '', 'CVSUC4115458', 'CVSUC911397867', 'Tiendas', '', '', '81805061', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Masculino', 'p-dmogoyan', '0'),
(115, '8314691', 'Pedro Emmanuel', 'Rueda', 'Luna', 'perueda@izzi.mx', 'Rio', 'Ejecutivo ATC', 'perueda', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'RULP990409SN0', '', 'CVSUC8314691', '', 'NA', 'PEDRO EMMANUEL RUEDA LUNA', '', '86454431', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', '', '0'),
(116, '8317034', 'Barbara Edith', 'Vazquez', 'Martinez', 'bevazquezm@izzi.mx', 'BO Tiendas', 'Ejecutivo BO Tiendas', 'bevazquezm', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Activo', '1', 'VAMB801204QR1', '', 'CVSUC911398831', '', 'Tiendas', '', '', '86408591', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-bvazquez', 'BARBARA EDITH VAZQUEZ MARTINEZ'),
(117, '4115378', 'Valentina', 'Alonso', 'Mata', 'valonsoma@izzi.mx', 'Patio Santa Fe', 'Ejecutivo ATC', 'valonsoma', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Baja', '1', 'AOMV960127QJ3', '', 'CVSUC4115378', 'CVSUC911399565', 'Tiendas', 'VALENTINA ALONSO MATA', '', '81124841', 'INTEGRAVISION DE OCCIDENTE, S.A. DE C.V.', 'ATC', 'Femenino', 'p-valonso', '0'),
(118, '8315029', 'Ma Ruth', 'Pena', 'Perez', 'mrpena@izzi.mx', 'Amaxac', 'Ejecutivo ATC', 'mrpena', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Baja', '1', 'PEPM8210246D0', '', 'CVSUC911400485', '', 'Tiendas', '', '', '86455761', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-mrpena', '0'),
(119, '8315034', 'Cyntia Jazmin', 'Romero', 'Aguilera', 'cromeroa@izzi.mx', 'Up Town Juriquilla', 'Ejecutivo Sr ATC', 'cromeroa', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Activo', '2', 'ROAC851011LZ9', '', 'CVSUC8315034', 'CVSUC911401349', 'Tiendas', '', '', '88778581', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-cromeroa', '0'),
(120, '2991833', 'Mayra Cristina', 'Mendoza', 'Rodriguez', 'mcmendoza@izzi.mx', 'Lincoln', 'Jefe ATC', 'mcmendoza', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Baja', '2', 'MERM870817L86', '', 'CVSUC7823300', '', 'Tiendas', '', '', '83447581', 'RH SERVICIOS ADMINISTRATIVOS, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(121, '2991174', 'Brendy Alfonso', 'Langarica', 'Villela', 'blangarica@izzi.mx', 'Santiago', 'Jefe Regional ATC', 'blangarica', '0000-00-00 00:00:00', '', '0000-00-00', 'NA', '0000-00-00 00:00:00', 'Activo', '3', 'LAVB890916PG7', '', 'CVSUC8893465', '', 'Tiendas', 'BRENDY ALFONSO LANGARICA VILLELA', '', '89640011', 'BROKERS MOL, S.A. DE C.V.', 'ATC', 'Masculino', '', '0'),
(122, '8893939', 'Andrea', 'Hernandez', 'Gomez', 'anhernandezg@izzi.mx', 'Federico Medrano', 'Ejecutivo ATC', 'anhernandezg', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Activo', '1', 'HEGA9211111S2', '', 'CVSUC8893939', 'CVSUC911393933', 'Tiendas', '', '', '10081207', 'ADMINISTRADORA DE SISTEMAS DE COMUNICACION, S.A. DE C.V.', 'ATC', 'Femenino', 'p-ahernandezg', 'Andrea Hernandez Gomez'),
(123, '8315018', 'Amisadai', 'Martinez', 'Santiago', 'amartinezsa@izzi.mx', 'Acayucan', 'Ejecutivo ATC', 'amartinezsa', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'MASA0001187Q3', '', 'CVSUC8315018', 'CVSUC911394000', 'Tiendas', 'AMISADAI MARTINEZ SANTIAGO', '', '88588741', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', 'p-amartinezs', 'AMISADAI MARTINEZ SANTIAGO'),
(124, '2134569', 'Idania', 'Arias', 'Azamar', 'idarias@izzi.mx', 'Acayucan', 'Jefe Regional ATC', 'idarias', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Activo', '3', 'AIAI810202HR4', '', 'CVSUC8309204', '', 'Tiendas', '', '', '88585071', 'DKM BROKER, S.A. DE C.V.', 'ATC', 'Femenino', '', 'Idania Arias Azamar'),
(125, '9109439', 'Navil', 'Roman', 'Morales', 'nromanm@izzi.mx', 'Acayucan', 'Ejecutivo ATC', 'nromanm', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Activo', '1', 'ROMN9011265K1', '', 'CVSUC9109439', '', 'Tiendas', '', '', '88588101', 'GRUPO CABLE ASESORES, S.A. DE C.V.', 'ATC', 'Femenino', '', 'Navil Roman Morales'),
(126, '9109792', 'Nora Nayeli', 'Carmona', 'Morales', 'ncarmonam@izzi.mx', 'Acayucan', 'Ejecutivo ATC', 'ncarmonam', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Baja', '1', 'CAMN880602CF7', '', 'CVSUC9109792', '', 'Tiendas', '', '', '88588271', 'GRUPO CABLE ASESORES, S.A. DE C.V.', 'ATC', 'Femenino', '', 'Nora Carmona Morales'),
(127, '2132655', 'Brenda', 'Valenzuela', 'Farias', 'bvalenzuela@izzi.mx', 'Chetumal', 'Jefe ATC', 'bvalenzuela', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Activo', '2', 'VAFB810629MM6', '', 'CVSUC8301225', '', 'Tiendas', '', '', '86407681', 'DKM BROKER, S.A. DE C.V.', 'ATC', 'Femenino', '', 'Brenda Valenzuela Farias'),
(128, '8303138', 'Beatriz Irene', 'Perez', 'Basto', 'biperez@izzi.mx', 'Cozumel', 'Ejecutivo ATC', 'biperez', '0000-00-00 00:00:00', '', '0000-00-00', 'jgcuevas', '0000-00-00 00:00:00', 'Activo', '1', 'PEBB900715UE6', '', 'CVSUC8303138', '', 'Tiendas', '', '', '86411131', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', '', 'BEATRIZ IRENE PEREZ BASTO'),
(129, '8302123', 'Marisol', 'Contreras', 'Reyes', 'mcontrerasre@izzi.mx', 'Oficina Central Cuautla', 'Ejecutivo ATC', 'mcontrerasre', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Baja', '1', 'CORM850802GS7', '', 'CVSUC8302123', '', 'Tiendas', '', '', '86455811', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', '', '0'),
(130, '8300169', 'Maria Fatima', 'Estrella', 'Barcelo', 'mestrella@izzi.mx', 'Cozumel', 'Ejecutivo ATC', 'mestrella', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Activo', '1', 'EEBF851008T23', '', 'CVSUC8300169', '', 'Tiendas', '', '', '86402681', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Femenino', '', 'Maria Estrella Barcelo'),
(131, '2990151', 'Heidi Leticia', 'Castellanos', 'Linares', 'hcastellanos@izzi.mx', 'Hombres Ilustres', 'Jefe ATC', 'hcastellanos', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', 'Activo', '2', 'CALH791019MW9', '', 'CVSUC7810204', '', 'Tiendas', 'HEIDI LETICIA CASTELLANOS LINARES', '', '83454501', 'BROKERS MOL, S.A. DE C.V.', 'ATC', 'Femenino', '', 'Heidi Castellanos Linares'),
(132, '8307931', 'Alexis Maurilio', 'Negrete', 'Flores', 'anegrete@izzi.mx', 'Poza Rica', 'Ejecutivo ATC', 'anegrete', '0000-00-00 00:00:00', '', '0000-00-00', 'nvvazquez', '0000-00-00 00:00:00', 'Baja', '1', 'NEFA940817IA1', '', 'CVSUC8307931', '', 'Tiendas', '', '', '86454201', 'ARYADEBA, S.A. DE C.V.', 'ATC', 'Masculino', '', 'Alexis Maurilio Negrete Flores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atc_sucursal`
--

CREATE TABLE `atc_sucursal` (
  `ID` int(11) NOT NULL,
  `DIVISION` varchar(255) DEFAULT NULL,
  `REGION` varchar(255) NOT NULL,
  `CIUDAD` varchar(255) NOT NULL,
  `SUCURSAL` varchar(255) NOT NULL,
  `HUB` varchar(255) DEFAULT NULL,
  `MARCA` varchar(255) DEFAULT NULL,
  `DIRECCION` varchar(255) DEFAULT NULL,
  `HORARIOLV` varchar(255) DEFAULT NULL,
  `HORARIOSAB` varchar(255) DEFAULT NULL,
  `HORARIODOM` varchar(255) DEFAULT NULL,
  `GEOLOCALIZACION` varchar(255) DEFAULT NULL,
  `ENFUNCIONAMIENTO` varchar(255) DEFAULT NULL,
  `SAPID` varchar(255) DEFAULT NULL,
  `FELXII` varchar(255) DEFAULT NULL,
  `TT` varchar(255) DEFAULT NULL,
  `ATM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `atc_sucursal`
--

INSERT INTO `atc_sucursal` (`ID`, `DIVISION`, `REGION`, `CIUDAD`, `SUCURSAL`, `HUB`, `MARCA`, `DIRECCION`, `HORARIOLV`, `HORARIOSAB`, `HORARIODOM`, `GEOLOCALIZACION`, `ENFUNCIONAMIENTO`, `SAPID`, `FELXII`, `TT`, `ATM`) VALUES
(2, 'Metro', 'Metro Sur', 'Amecameca', 'Amecameca', 'Ixtapaluca', 'izzi', 'CalleDel Rosario No.36 Loc.1 , Col.Centro C.P.56900 Amecameca, Edo.Mexico', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '19.126511, -98.767124', 'si', 'N/A', 'N/A', 'no', 'no'),
(3, 'Metro', 'Metro Sur', 'Chalco', 'Chalco', 'Ixtapaluca', 'izzi', 'Carr.Chalco-Mixquic S/N Loc.24 y 25 Plaza Volcanes, Col.Conjunto Urbano Los Volcanes C.P.56600 Chalco, Edo.Mexico', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '19.250203, -98.903394', 'si', 'S049', 'SIM', 'no', 'no'),
(4, 'Metro', 'Metro Sur', 'Chalco', 'Patio Chalco', 'Ixtapaluca', 'izzi', 'Blvd.Juan Pablo II No.376 MZ 1854 Lote 3 Loc.11-E , Col.Maria Isabel C.P.56615 Valle de Chalco Solidaridad, Edo.Mexico', '9:00 a 18:00', '9:00 a 14:00', '9:00 a 14:00', '19.300605, -98.952789', 'si', 'S048', 'SIM', 'si', 'si'),
(5, 'Metro', 'Metro Sur', 'Ixtapaluca', 'Plaza Cortijo', 'Ixtapaluca', 'izzi', 'Carr.Federal Mexico-Cuautla km 37 , Col.Hacienda de Santa Barbara C.P.56530 Ixtapaluca, Edo.Mexico', '9:30 a 19:30', '9:30 a 19:30', '9:30 a 17:00', '19.296976, -98.885217', 'si', 'S223', 'SIM', 'si', 'si'),
(6, 'Metro', 'Metro Sur', 'San Buenaventura', 'San Buenaventura', 'Ixtapaluca', 'izzi', 'Paseo de San Buenaventura S/N MZ 67 Lote 4 , Col.Fracc. San Buenaventura C.P.56530 San Buenaventura, Edo.Mexico', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '19.304619, -98.863097', 'si', 'S224', 'SIM', 'si', 'no'),
(7, 'Sur', 'Golfo', 'Izucar de Matamoros', 'Izucar de Matamoros', 'Izucar de Matamoros', 'wizz', 'Aquiles Serdan No.24 , Col.Centro C.P.74400 Izucar de Matamoros, Puebla', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '18.603894, -98.468350', 'si', 'N/A', 'N/A', 'no', 'no'),
(8, 'Sur', 'Sureste', 'Jalpa', 'Jalpa', 'Jalpa', 'wizz', '18 de Marzo S/N , Col.Santa Ana C.P.86200 Jalpa, Tabasco', '9:00 a 17:00', '9:00 a 13:30', 'Cerrado', '18.176708, -93.064537', 'si', 'N/A', 'N/A', 'no', 'no'),
(9, 'Sur', 'Occidente', 'La Barca', 'Jamay', 'La Barca', 'wizz', 'Calle Guerrero No.64 , Col.Centro C.P.47900 Jamay, Jalisco', '9:00 a 14:00 - 16:00 a 18:30', '9:00 a 13:30', 'Cerrado', '20.290598, -102.709352', 'si', 'N/A', 'N/A', 'no', 'no'),
(10, 'Sur', 'Occidente', 'La Barca', 'La Barca Guerrero', 'La Barca', 'wizz', 'Vicente Guerrero No.689 , Col.Centro C.P.47910 La Barca, Jalisco', '8:30 a 18:30', '9:00 a 13:30', 'Cerrado', '20.289877, -102.547568', 'si', 'N/A', 'N/A', 'no', 'no'),
(11, 'Norte', 'Centro', 'Lagos de Moreno', 'Lagos Capuchinas', 'Lagos', 'izzi', 'Blvd.Felix Ramirez Reinteria No.150 Loc.3, 4 y 5-F , Col.El Carmen C.P.47490 Lagos de Moreno, Jalisco', '9:00 a 18:00', '9:00 a 15:00', '9:00 a 15:00', '21.3590671, -101.9213731', 'si', 'N/A', 'SIM', 'si', 'si'),
(12, 'Sur', 'Sureste', 'Lerdo de Tejada', 'Lerdo De Tejada', 'Lerdo de Tejada', 'wizz', 'Revolucion No.135 Entre Hidalgo y Morelos , Col.Centro C.P.95280 Lerdo de Tejada, Veracruz', '8:00 a 18:00', '8:00 a 13:30', 'Cerrado', '18.627770, -95.520444', 'si', 'N/A', 'N/A', 'no', 'no'),
(13, 'Norte', 'Noreste', 'Linares', 'Linares', 'Linares', 'wizz', 'Carr.Nacional km 856.3 , Col.Amistad C.P.67710 Linares, Nuevo Leon ', '9:00 a 19:00', '9:00 a 15:00', 'Cerrado', '24.872164, -99.574056', 'si', 'N/A', 'N/A', 'no', 'si'),
(14, 'Norte', 'Noreste', 'Montemorelos', 'Montemorelos', 'Linares', 'wizz', 'Av.Carlos Cantu No.504 Loc.2 , Col.Barrio Zaragoza C.P.67530 Montemorelos, Nuevo Leon ', '9:00 a 19:00', '9:00 a 15:00', 'Cerrado', '25.189771, -99.836271', 'si', 'N/A', 'N/A', 'no', 'si'),
(15, 'Sur', 'Occidente', 'Los Reyes Higuerita', 'Los Reyes Mich', 'Los Reyes Higuerita', 'wizz', 'Ignacio Lopez Rayon No.54 , Col.Centro C.P.60300 Los Reyes, Michoacan', '9:00 a 19:00', '9:00 a 14:00', 'Cerrado', '19.590927, -102.472834', 'si', 'N/A', 'N/A', 'no', 'no'),
(16, 'Sur', 'Occidente', 'Periban', 'Periban', 'Los Reyes Higuerita', 'wizz', 'Priv.De Ni?os Heroes S/N , Col.Girasol C.P.60440 Periban, Michoacan', '9:00 a 15:00 - 16:00 a 18:00', '9:00 a 14:00', 'Cerrado', '19.524504, -102.416179', 'si', 'N/A', 'N/A', 'no', 'no'),
(17, 'Norte', 'Occidente', 'Santa Clara', 'Santa Clara', 'Los Reyes Higuerita', 'wizz', 'Salvador Ochoa No.36 , Col.Centro C.P.59963 Santa Clara, Michoacan', '9:00 a 14:00 - 15:00 a 18:00', '9:00 a 14:00', 'Cerrado', '19.638504, -102.490352', 'no', 'N/A', 'N/A', 'no', 'no'),
(18, 'Sur', 'Sureste', 'Macuspana', 'Macuspana', 'Macuspana', 'wizz', 'Francisco J Santa Maria No.306 , Col.Centro C.P.86706 Macuspana, Tabasco', '9:00 a 17:00', '9:00 a 13:30', 'Cerrado', '17.757524, -92.593332', 'si', 'N/A', 'N/A', 'no', 'no'),
(19, 'Sur', 'Occidente', 'Cihuatlan', 'Cihuatlan', 'Manzanillo', 'wizz', 'Aquiles Serdan No.40 , Col.Centro C.P.48970 Cihuatlan, Jalisco', '9:00 a 17:00', '8:00 a 14:00', 'Cerrado', '19.237010, -104.562234', 'si', 'N/A', 'N/A', 'no', 'no'),
(20, 'Sur', 'Occidente', 'Manzanillo', 'Manzanillo Centro', 'Manzanillo', 'wizz', 'Carrillo Puerto No.255 , Col.Centro C.P.28200 Manzanillo, Colima', '9:00 a 18:00', '8:00 a 14:00', 'Cerrado', '19.051637, -104.318211', 'si', 'N/A', 'N/A', 'no', 'no'),
(21, 'Sur', 'Occidente', 'Manzanillo', 'Soriana Manzanillo', 'Manzanillo', 'wizz', 'Blvd.Miguel de la Madrid No.1580 Loc.I-51 al I-55, Col.Salagua C.P.28200 Manzanillo, Colima', '9:00 a 19:00', '9:00 a 19:00', 'Cerrado', '19.103133, -104.327012', 'si', 'N/A', 'N/A', 'no', 'no'),
(22, 'Sur', 'Golfo', 'Matamoros', 'Guerrero', 'Matamoros', 'izzi', 'Av.Guerrero No.408 Entre Calle 4 y 5 , Col.Zona Centro C.P.87300 Matamoros, Tamaulipas', '9:00 a 18:00', '9:00 a 15:00', 'Cerrado', '25.879023, -97.503310', 'si', 'N/A', 'N/A', 'no', 'si'),
(23, 'Sur', 'Golfo', 'Matamoros', 'Lauro Villar', 'Matamoros', 'izzi', 'Av.Lauro Villar No.1024  Plaza el Kiosko, Col.Alianza C.P.87410 Matamoros, Tamaulipas', '9:00 a 18:00', '9:00 a 15:00', 'Cerrado', '25.868027, -97.483822', 'si', 'N/A', 'N/A', 'no', 'si'),
(24, 'Sur', 'Golfo', 'Matamoros', 'Plaza Fiesta Mtm', 'Matamoros', 'izzi', 'Av.Pedro Cardenas No.100 Loc.6 , Col.Fracc. Victoria Secc Fiesta C.P.87390 Matamoros, Tamaulipas', '9:00 a 18:00', '9:00 a 15:00', '10:00 a 16:00', '25.850793, -97.504573', 'si', 'N/A', 'N/A', 'no', 'si'),
(25, 'Sur', 'Golfo', 'Matamoros', 'San Fernando', 'Matamoros', 'wizz', 'Av.Guerrero No.208 y Ruiz Cortinez , Col.Zona Centro C.P.87600 San Fernando, Tamaulipas', '8:30 a 17:30', '9:00 a 12:00', 'Cerrado', '24.845785, -98.153950', 'si', 'N/A', 'N/A', 'no', 'no'),
(26, 'Sur', 'Golfo', 'Matamoros', 'Valle Hermoso', 'Matamoros', 'wizz', 'Av.Madero No.221 Entre Calle 1 y 2 , Col.Zona Centro C.P.87500 Valle Hermoso, Tamaulipas', '8:30 a 17:30', '9:00 a 12:00', 'Cerrado', '25.669372, -97.822478', 'si', 'N/A', 'N/A', 'no', 'no'),
(27, 'Sur', 'Golfo', 'Cedral', 'Cedral', 'Matehuala', 'wizz', 'Manuel Jose Oton No.174 , Col.Valle Verde C.P.78520 Cedral, San Luis Potosi', '9:00 a 19:00', '9:00 a 14:00', 'Cerrado', '23.815163, -100.723452', 'si', 'N/A', 'N/A', 'no', 'no'),
(28, 'Sur', 'Golfo', 'Matehuala', 'Matriz Matehuala', 'Matehuala', 'wizz', 'Juarez No.113 , Col.Centro C.P.78700 Matehuala, San Luis Potosi', '9:00 - 14:00 a 16:00 - 19:00', '9:00 a 14:00', 'Cerrado', '23.651184, -100.644594', 'si', 'N/A', 'N/A', 'no', 'si'),
(29, 'Metro', 'Metro Norte', 'Coacalco', 'Plaza las Flores', 'Melchor Ocampo', 'izzi', 'ViaLopez Portillo No.105 Loc.37 , Col.Zacuautitla C.P.55700 Coacalco, Edo.Mexico', '10:00 a 19:00', '10:00 a 19:00', '10:00 a 18:00', '19.634408, -99.096336', 'si', 'S056', 'SIM', 'si', 'si'),
(30, 'Metro', 'Metro Norte', 'Coacalco', 'Power Center', 'Melchor Ocampo', 'izzi', 'ViaLopez Portillo S/N Fraccion 3 Loc.G01 y G03 , Col.La Palma C.P.55717 Coacalco, Edo.Mexico', '10:00 a 19:00', '10:00 a 19:00', '10:00 a 18:00', '19.628849, -99.123770', 'si', 'S057', 'SIM', 'no', 'no'),
(31, 'Metro', 'Metro Norte', 'Melchor Ocampo', 'Melchor Ocampo', 'Melchor Ocampo', 'izzi', 'Carr.Federal Cuautitlan - Zumpango km 7.5 Loc.7 , Col.Visitacion C.P.54890 Melchor Ocampo, Edo.Mexico', '10:00 a 19:00', '10:00 a 14:00', 'Cerrado', '19.716859, -99.139849', 'si', 'S073', 'SIM', 'no', 'no'),
(32, 'Sur', 'Golfo', 'Apizaco', 'Matriz Morelos', 'Apizaco', 'wizz', 'Av.Morelos Sur No.1505 , Col.Jesus y San Juan C.P.90358 Apizaco, Tlaxcala', '9:00 a 18:30', '9:00 a 13:30', 'Cerrado', '19.407953, -98.141107', 'si', 'N/A', 'N/A', 'no', 'no'),
(33, 'Sur', 'Golfo', 'Apizaco', 'Plaza Santa Julia', 'Apizaco', 'wizz', 'Av.16 de Septiembre No.701 Loc.1 Esq. Zaragoza , Col.Centro C.P.90300 Apizaco, Tlaxcala', '10:00 a 19:30', '10:00 a 19:30', '12:00 a 15:00', '19.417522, -98.143357', 'si', 'N/A', 'N/A', 'no', 'no'),
(34, 'Sur', 'Sureste', 'Cd Mendoza', 'CD Mendoza', 'Orizaba', 'izzi', 'Parque Hidalgo No.229 , Col.Centro C.P.94740 Cd. Mendoza, Veracruz', '9:00 a 18:00', '9:00 a 15:00', 'Cerrado', '18.803963, -97.181225', 'si', 'N/A', 'N/A', 'no', 'no'),
(35, 'Norte', 'Centro', 'Queretaro', 'Las Americas QRO', 'Queretaro', 'wizz plus', 'Av.Constituyentes No.183 Ote Loc.38 , Col.Carretas C.P.76050 Queretaro, Queretaro', '9:00 a 19:00', '10:00 a 17:00', '10:00 a 17:00', '20.589586, -100.375911', 'si', 'S103', 'SIM', 'no', 'si'),
(36, 'Norte', 'Centro', 'Queretaro', 'Los Heroes QRO', 'Queretaro', 'wizz plus', 'Hacienda Jesus de Maria No.7 Loc.15 , Col.Los Heroes C.P.76243 Queretaro, Queretaro', '10:00 a 18:00', '9:00 a 14:00', 'Cerrado', '20.630760, -100.283211', 'si', 'S104', 'SIM', 'no', 'no'),
(37, 'Norte', 'Centro', 'Queretaro', 'Plaza Citadina QRO', 'Queretaro', 'wizz plus', 'Av.Constituyentes S/N Esq.Callejon de los Mendoza , Col.El Pueblito C.P.76900 Queretaro, Queretaro', '10:00 a 19:00', '10:00 a 18:00', '10:00 a 18:00', '20.536442, -100.433874', 'si', 'S108', 'SIM', 'no', 'si'),
(38, 'Norte', 'Centro', 'Queretaro', 'Satelite QRO', 'Queretaro', 'wizz plus', 'Av.De La Luz No.497 , Col.Satelite C.P.76110 Queretaro, Queretaro', '9:00 a 19:00', '9:00 a 14:00', 'Cerrado', '20.635718, -100.454572', 'si', 'S106', 'SIM', 'no', 'no'),
(39, 'Norte', 'Centro', 'Tepatitlan', 'Tepatitlan Los Altos', 'Tepatitlan', 'wizz', 'Matamoros No.448 Loc.D-10 , Col.Comercial de Sur C.P.47655 Tepatitlan, Jalisco', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '20.802362, -102.762757', 'si', 'N/A', 'N/A', 'no', 'no'),
(40, 'Norte', 'Centro', 'Acambaro', 'Acambaro', 'Acambaro', 'wizz', 'Av.Miguel Hidalgo No.241 , Col.Centro C.P.38600 Acambaro, Guanajuato', '9:00 a 14:00 - 16:00 a 18:30', '9:00 a 13:30', 'Cerrado', '20.035865, -100.719787', 'si', 'N/A', 'N/A', 'no', 'no'),
(41, 'Sur', 'Occidente', 'Acapulco', 'Oficina Central Acapulco', 'Acapulco', 'izzi', 'Gonzalo Gomez No.14 , Col.Fracc.Magallanes C.P.39670 Acapulco, Guerrero', '8:00 a 19:00', '9:00 a 17:00', '9:00 a 14:00', '16.861342, -99.884140', 'si', 'N/A', 'N/A', 'si', 'si'),
(42, 'Sur', 'Occidente', 'Acapulco', 'Patio Acapulco', 'Acapulco', 'izzi', 'Carr.Cayaco Puerto Marques km 3 , Col.Ejido Del Cayaco C.P.39906 Acapulco, Guerrero', '10:00 a 18:00', '11:00 a 17:00', '11:00 a 17:00', '16.834029, -99.811391', 'si', 'N/A', 'N/A', 'no', 'si'),
(43, 'Sur', 'Sureste', 'Acayucan', 'Acayucan', 'Acayucan', 'wizz', 'Calle Ocampo No.1205 , Col.Centro C.P.96000 Acayucan, Veracruz', '8:00 a 18:00', '8:00 a 13:00', 'Cerrado', '17.950088, -94.911570', 'si', 'N/A', 'N/A', 'no', 'no'),
(44, 'Sur', 'Sureste', 'Agua Dulce', 'Agua Dulce', 'Agua Dulce', 'wizz', 'Ursulo Galvan No.158 , Col.Centro C.P.96600 Agua Dulce, Veracruz', '9:00 a 13:30 - 15:00 a 18:00', '9:00 a 14:00', 'Cerrado', '18.146157, -94.142698', 'si', 'N/A', 'N/A', 'no', 'no'),
(45, 'Sur', 'Sureste', 'Las Choapas', 'Las Choapas', 'Agua Dulce', 'wizz', 'Moctezuma No.901 , Col.Campo Nuevo C.P.96980 Las Choapas, Veracruz', '9:00 a 13:30 - 15:00 a 18:00', '9:00 a 14:00', 'Cerrado', '17.912447, -94.091794', 'si', 'N/A', 'N/A', 'no', 'no'),
(46, 'Norte', 'Centro', 'Aguascalientes', 'Barragan', 'Aguascalientes', 'izzi', 'Gral.Miguel Barragan No.1611 , Col.Gremial C.P.20030 Aguascalientes, Aguascalientes', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '21.900684, -102.292290', 'si', 'S001', 'SIM+EQ', 'si', 'si'),
(47, 'Norte', 'Centro', 'Aguascalientes', 'El Parian', 'Aguascalientes', 'izzi', 'Rivero y Gutierrez No.29 Loc.6 , Col.Centro C.P.20000 Aguascalientes, Aguascalientes', '9:00 a 18:00', '9:00 a 18:00', '10:00 a 14:00', '21.883859, -102.295168', 'si', 'S002', 'SIM', 'si', 'si'),
(48, 'Norte', 'Centro', 'Aguascalientes', 'Galerias Ags', 'Aguascalientes', 'izzi', 'Av.Independencia No.2351 Loc.37 , Col.Trojes De Alonso C.P.20116 Aguascalientes, Aguascalientes', '9:00 a 18:00', '9:00 a 18:00', '10:00 a 14:00', '21.923975, -102.294747', 'no', 'S003', 'SIM', 'si', 'si'),
(49, 'Norte', 'Centro', 'Aguascalientes', 'Haciendas', 'Aguascalientes', 'izzi', 'Av.Hacienda Ojo Caliente No.131 Loc.5 , Col.Haciendas de Aguascalientes C.P.20196 Aguascalientes, Aguascalientes', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '21.887505, -102.249391', 'si', 'S004', 'SIM', 'si', 'si'),
(50, 'Norte', 'Centro', 'Aguascalientes', 'Villasuncion', 'Aguascalientes', 'izzi', 'Blvd.Jose Ma.Chavez S/N , Col.Mesoneros C.P.20280 Aguascalientes, Aguascalientes', '9:00 a 18:00', '9:00 a 18:00', '10:00 a 14:00', '21.850535, -102.292577', 'si', 'S005', 'SIM', 'si', 'si'),
(51, 'Norte', 'Centro', 'Aguascalientes', 'Gomez Portugal', 'Aguascalientes', 'izzi', 'CalleNueva No.215 , Col.Gomez Portugal C.P.20909 Jesus Gomez Portugal, Aguascalientes', '9:00 a 14:00 - 16:00 a 19:00', '9:00 a 14:00', 'Cerrado', '21.996876, -102.291167', 'no', 'S151', 'SIM', 'no', 'no'),
(52, 'Norte', 'Centro', 'Aguascalientes', 'San Lorenzo', 'Aguascalientes', 'izzi', 'Av.San Lorenzo No.101-3 , Col.Centro C.P.20920 Jesus Maria, Aguascalientes', '9:00 a 14:00 - 16:00 a 19:00', '9:00 a 14:00', 'Cerrado', '21.958896, -102.343025', 'si', 'S152', 'SIM', 'no', 'no'),
(53, 'Norte', 'Centro', 'Aguascalientes', 'Pabellon Arteaga', 'Aguascalientes', 'izzi', 'Aquiles Serdan No.1 , Col.Centro C.P.20660 Pabellon de Arteaga, Aguascalientes', '9:00 a 14:00 - 16:00 a 19:00', '9:00 a 14:00', 'Cerrado', '22.149041, -102.277317', 'si', 'S153', 'SIM', 'no', 'no'),
(54, 'Norte', 'Centro', 'Aguascalientes', 'Rincon De Romos', 'Aguascalientes', 'izzi', 'Alvaro Obregon No.132 , Col.Centro C.P.20400 Rincon de Romos, Aguascalientes', '9:00 a 14:00 - 16:00 a 19:00', '9:00 a 14:00', 'Cerrado', '22.229814, -102.319595', 'si', 'S154', 'SIM', 'no', 'no'),
(55, 'Norte', 'Centro', 'Aguascalientes', 'San Francisco de los Romos', 'Aguascalientes', 'izzi', 'Emiliano Carranza No.101-A , Col.Centro C.P.20300 San Francisco de los Romos, Aguascalientes', '9:00 a 14:00 - 16:00 a 19:00', '9:00 a 14:00', 'Cerrado', '22.077455, -102.272546', 'si', 'S/I', 'SIM', 'no', 'no'),
(56, 'Sur', 'Golfo', 'Altamira', 'Altamira Centro', 'Altamira', 'izzi', 'Quintero No.410 Loc.3 , Col.Centro C.P.89600 Altamira, Tamaulipas', '9:00 a 20:00', '9:00 a 16:00', '9:00 a 16:00', '22.391744, -97.935454', 'si', 'N/A', 'SIM', 'si', 'si'),
(57, 'MetroSur', 'Golfo', 'Altamira', 'Altamira San Jose', 'Altamira', 'izzi', 'Morelos No.200 Loc.14 , Col.Centro C.P.89600 Altamira, Tamaulipas', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '22.394836, -97.935045', 'no', 'N/A', 'SIM', 'no', 'na'),
(58, 'Sur', 'Golfo', 'Altamira', 'Arboledas Altamira', 'Altamira', 'izzi', 'Av.Perimetral Duport S/N , Col.San Jacinto C.P.89603 Altamira, Tamaulipas', '9:00 a 20:00', '10:00 a 16:00', '10:00 a 16:00', '22.387359, -97.911980', 'si', 'N/A', 'SIM', 'si', 'si'),
(59, 'Sur', 'Golfo', 'Altamira', 'Arenas', 'Altamira', 'izzi', 'Av.De la Industria No.10680 Loc.29 , Col.Tampico C.P.89609 Altamira, Tamaulipas', '9:00 a 20:00', '9:00 a 16:00', '9:00 a 16:00', '22.328443, -97.874146', 'si', 'N/A', 'SIM', 'no', 'si'),
(60, 'Sur', 'Sureste', 'Alvarado', 'Alvarado', 'Alvarado', 'wizz', 'Ignacio de la LLave No.210 , Col.Centro C.P.95270 Alvarado, Veracruz', '8:00 a 18:00', '8:00 a 13:30', 'Cerrado', '18.768764, -95.761059', 'si', 'N/A', 'N/A', 'no', 'no'),
(61, 'Norte', 'Centro', 'Amealco', 'Amealco', 'Amealco', 'wizz', 'Vicente Guerrero No.90 Loc.3 , Col.Centro C.P.76850 Amealco, Queretaro', '9:00 a 17:00', '9:00 a 14:00', 'Cerrado', '20.186050, -100.145136', 'si', 'N/A', 'N/A', 'no', 'no'),
(62, 'Metro', 'Metro Norte', 'Apan', 'Apan', 'Apan', 'wizz', 'Hidalgo Poniente No.4 , Col.Centro C.P.43900 Apan, Hidalgo', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '19.710501, -98.451599', 'si', 'N/A', 'N/A', 'no', 'no'),
(63, 'Norte', 'Centro', 'Arandas', 'Arandas Centro', 'Arandas', 'wizz', 'Alvaro Obregon No.305 , Col.Centro C.P.47180 Arandas, Jalisco', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '20.705517, -102.351078', 'si', 'N/A', 'N/A', 'no', 'no'),
(64, 'Norte', 'Centro', 'Arandas', 'Arandas Tulipanes', 'Arandas', 'wizz', 'Francisco I Madero No.307 Int.5 , Col.Santuario C.P.47180 Arandas, Jalisco', '9:00 a 18:00', '9:00 a 14:00', '10:00 a 14:00', '20.704716, -102.338545', 'no', 'N/A', 'N/A', 'no', 'no'),
(65, 'Norte', 'Centro', 'Arandas', 'Jesus Ma.Tepatitlan', 'Arandas', 'wizz', 'Alberto Orozco Romero No.29-A , Col.Centro C.P.47950 Jesus Maria, Jalisco', '9:00 a 17:00', '9:00 a 14:00', 'Cerrado', '20.607814, -102.224083', 'si', 'N/A', 'N/A', 'no', 'no'),
(66, 'MetroSur', 'Golfo', 'Atencingo', 'Atencingo', 'Atlixco', 'wizz', 'CalleLa Palma No.6 , Col.Atencingo C.P.74583 Atencingo, Puebla', '9:00 a 17:00', '9:00 a 14:00', 'Cerrado', '18.509694, -98.609196', 'no', 'N/A', 'N/A', 'no', 'na'),
(67, 'Sur', 'Golfo', 'Atlixco', 'Atlixco', 'Atlixco', 'wizz', '15 Ote No.3 , Col.Prado Sur C.P.74260 Atlixco, Puebla', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '18.901620, -98.436501', 'si', 'N/A', 'N/A', 'no', 'no'),
(68, 'MetroSur', 'Golfo', 'Atlixco', 'Plaza Comercial Atlixco', 'Atlixco', 'wizz', 'Blvd.Ni?os Heroes No.805-A Loc.18 Plaza Atlixco, Col.Revolucion C.P.74270 Atlixco, Puebla', '10:00 a 18:00', '10:00 a 18:00', 'Cerrado', '18.897723, -98.431548', 'no', 'N/A', 'N/A', 'no', 'no'),
(69, 'Norte', 'Centro', 'Calera', 'Calera', 'Calera', 'wizz', 'Melchor Ocampo Poniente No.104-A , Col.Centro C.P.98500 Calera, Zacatecas', '9:00 a 14:00 - 16:00 a 19:00', '9:00 a 14:00', 'Cerrado', '22.948470, -102.702614', 'si', 'N/A', 'N/A', 'no', 'no'),
(70, 'Sur', 'Sureste', 'Campeche', 'Galerias Campeche', 'Campeche', 'izzi', 'Av.Pedro Sainz de Baranda No.139 Loc.6 , Col.Area Ah Kim Pech San Francisco C.P.24014 Campeche, Campeche', '11:00 a 20:00', '11:00 a 20:00', '11:00 a 20:00', '19.856643, -90.523432', 'si', 'N/A', 'SIM', 'si', 'si'),
(71, 'Sur', 'Sureste', 'Cancun', 'Cancun Mall', 'Cancun', 'izzi', 'Av.Costa Maya S/N MZ 22 Lote 1 Cancun Mall, Col.Benito Juarez C.P.77516 Cancun, Quintana Roo', '11:00 a 20:00', '11:00 a 20:00', '11:00 a 20:00', '21.182951, -86.850695', 'si', 'S008', 'SIM', 'si', 'si'),
(72, 'Sur', 'Sureste', 'Cancun', 'Chichen Itza', 'Cancun', 'izzi', 'Av.Chichen Itza S/N MZ 100 Lote 1-3 , Col.Supermanzana 38 C.P.77507 Cancun, Quintana Roo', '9:00 a 18:00', '9:00 a 18:00', 'Cerrado', '21.158193,-86.851687', 'si', 'S009', 'SIM', 'si', 'si'),
(73, 'Sur', 'Sureste', 'Cancun', 'Gran Plaza Cancun', 'Cancun', 'izzi', 'Av.Nichupte S/N MZ 18 Lote 1 Loc.45 Gran Plaza, Col.Supermanzana 51 C.P.77517 Cancun, Quintana Roo', '11:00 a 20:00', '11:00 a 20:00', '11:00 a 20:00', '21.145443,-86.822914', 'si', 'S010', 'SIM+EQ', 'si', 'si'),
(74, 'Sur', 'Sureste', 'Cancun', 'Malecon Americas', 'Cancun', 'izzi', 'Av.Bonampak No.1317 Loc.S01, 02 y 03 Sm 6 Mz 1 Lt 1, Col.Supermanza 6 C.P.77500 Cancun, Quintana Roo', '11:00 a 20:00', '11:00 a 20:00', '11:00 a 20:00', '21.1444958,-86.8237057', 'no', 'S011', 'SIM', 'si', 'si'),
(75, 'Sur', 'Sureste', 'Playa Del Carmen', 'Playa del Carmen', 'Cancun', 'izzi', 'Calle 10 Norte Manzana 103 Lote 4,5,9 entre calle 20 y 25 Col.Centro C.P.77710 Solidaridad Quintana Roo', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '20.628528, -87.075433', 'si', 'S101', 'SIM+EQ', 'si', 'si'),
(76, 'Sur', 'Sureste', 'Cardenas', 'Cardenas', 'Cardenas', 'wizz', 'Josefa Ortiz de Dominguez No.301 , Col.Centro C.P.86500 Cardenas, Tabasco', '8:00 a 17:00', '8:00 a 13:30', 'Cerrado', '17.982851, -93.376623', 'si', 'N/A', 'N/A', 'no', 'no'),
(77, 'Sur', 'Sureste', 'Cardenas', 'Soriana Cardenas', 'Cardenas', 'wizz', 'Periferico Carlos A. Molina S/N Loc.5 y 6 Plaza Soriana, Col.Playa Cardenas C.P.86540 Cardenas, Tabasco', '9:00 a 18:00', '9:00 a 17:00', '9:00 a 17:00', '17.974716, -93.376607', 'no', 'N/A', 'N/A', 'no', 'no'),
(78, 'Sur', 'Sureste', 'Catemaco', 'Catemaco', 'Catemaco', 'wizz', 'Ocampo No.10 , Col.Centro C.P.95870 Catemaco, Veracruz', '8:00 a 17:00', '8:00 a 13:30', 'Cerrado', '18.418204, -95.109003', 'si', 'N/A', 'N/A', 'no', 'no'),
(79, 'Sur', 'Sureste', 'Cd Del Carmen', 'Matriz Cd Del Carmen', 'Cd del Carmen', 'izzi', 'Calle35 No.147 , Col.Tecolutla C.P.24168 Cd. del Carmen, Campeche', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '18.646408, -91.829554', 'si', 'N/A', 'SIM', 'si', 'si'),
(80, 'Sur', 'Sureste', 'Cd Del Carmen', 'Plaza Aviacion', 'Cd del Carmen', 'izzi', 'Av.Concordia S/N Loc.25 y 26 , Col.Aeropuerto C.P.24119 Cd. del Carmen, Campeche', '10:00 a 19:00', '10:00 a 19:00', '10:00 a 16:00', '18.650675, -91.805753', 'si', 'N/A', 'SIM', 'no', 'si'),
(81, 'Sur', 'Sureste', 'Cd Del Carmen', 'Plaza Palmira', 'Cd del Carmen', 'izzi', 'Av.Isla del Tris S/N Loc.10 , Col.Fracc. Palmira  C.P.24150 Cd. del Carmen, Campeche', '10:00 a 19:00', '10:00 a 19:00', '10:00 a 16:00', '18.655899, -91.792331', 'no', 'N/A', 'SIM', 'no', 'no'),
(82, 'Sur', 'Occidente', 'Ciudad Guzman', 'Plaza Zapotlan', 'Cd Guzman', 'wizz', 'Av.Gobernador Alberto Cardenas Jimenez No.565 Loc.E-2 , Col.Centro C.P.49000 Ciudad Guzman, Jalisco', '10:00 a 19:00', '10:00 a 15:00', 'Cerrado', '19.691121, -103.467628', 'no', 'N/A', 'N/A', 'no', 'no'),
(83, 'Sur', 'Occidente', 'Ciudad Guzman', 'Portales', 'Cd Guzman', 'wizz', 'Av.Colon No.78 ,Col.Centro C.P.49000 Ciudad Guzman, Jalisco', '9:00 a 18:00', '9:00 a 15:00', 'Cerrado', '19.705407, -103.462445', 'si', 'N/A', 'N/A', 'no', 'no'),
(84, 'Sur', 'Occidente', 'Gomez Farias', 'Gomez Farias', 'Cd Guzman', 'wizz', 'CalleHidalgo No.1 , Col.Centro C.P.49120 Gomez Farias, Jalisco', '9:00 a 17:00', '9:00 a 14:00', 'Cerrado', '19.794837, -103.477598', 'si', 'N/A', 'N/A', 'no', 'no'),
(85, 'Sur', 'Occidente', 'Zapotiltic', 'Zapotiltic', 'Cd Guzman', 'wizz', 'Calle Hidalgo No.58-2 , Col.Centro C.P.49600 Zapotiltic, Jalisco', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '19.626608, -103.416836', 'si', 'N/A', 'N/A', 'no', 'no'),
(86, 'Norte', 'Pacifico', 'Cd Juarez', 'Las Torres', 'Cd Juarez', 'izzi', 'Av.Las Torres No.2111 Loc.26-C , Col.Lopez Bravo C.P.32695 Cd. Juarez, Chihuahua', '9:00 a 18:00', '9:00 a 15:00', '9:00 a 15:00', '31.623256, -106.395278', 'si', 'S015', 'SIM', 'si', 'si'),
(87, 'Norte', 'Pacifico', 'Cd Juarez', 'Plaza Cuquita', 'Cd Juarez', 'izzi', 'Blvd.Gomez Morin No.7384 Loc.12 , Col.Fuentes del Valle C.P.32674 Cd. Juarez, Chihuahua', '9:00 a 18:00', '9:00 a 15:00', 'Cerrado', '31.722208, -106.419972', 'no', 'S016', 'SIM+EQ', 'si', 'si'),
(88, 'Norte', 'Pacifico', 'Cd Juarez', 'Plaza Jilotepec', 'Cd Juarez', 'izzi', 'Av.Jilotepec No.10110 Loc.22 y 23 , Col.Jilotepec C.P.32350 Cd. Juarez, Chihuahua', '9:00 a 18:00', '9:00 a 15:00', 'Cerrado', '31.660595, -106.361949', 'si', 'S017', 'SIM', 'si', 'si'),
(89, 'Norte', 'Pacifico', 'Cd Juarez', 'Plaza Monumental', 'Cd Juarez', 'izzi', 'Paseo Triunfo de la Republica No.4630 , Col.Monumental C.P.32310 Cd. Juarez, Chihuahua', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '31.734957, -106.443365', 'si', 'S018', 'SIM', 'si', 'si'),
(90, 'Sur', 'Golfo', 'Cd Mante', 'Mante', 'Cd Mante', 'wizz', 'Calle Servando Canales No.205 , Col.Centro C.P.89800 Cd. Mante, Tamaulipas', '8:00 a 17:00', '9:00 a 15:00', '9:00 a 15:00', '22.744551, -98.969831', 'si', 'N/A', 'N/A', 'no', 'si'),
(91, 'Metro', 'Metro Norte', 'Cd Sahagun', 'Cd.Sahagun', 'Cd Sahagun', 'wizz', 'Pedro de Ponce No.9-A Col.Carros C.P.43997 Cd.Sahagun, Hidalgo', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '19.775350, -98.580080', 'si', 'N/A', 'N/A', 'no', 'no'),
(92, 'Sur', 'Golfo', 'Cd Valles', 'Valles', 'Cd Valles', 'wizz', 'Carranza No.759 , Col.Centro C.P.79000 Cd. Valles, San Luis Potosi', '8:00 a 17:00', '9:00 a 14:00', '9:00 a 14:00', '21.9923856,-99.01382', 'si', 'N/A', 'N/A', 'si', 'si'),
(93, 'Sur', 'Golfo', 'Cd Victoria', 'Hombres Ilustres', 'Cd Victoria', 'izzi', 'Blvd.Familia Rotaria No.781 , Col.Fracc Teocaltiche C.P.87024 Cd. Victoria, Tamaulipas', '9:00 a 20:00', '9:00 a 17:00', '9:00 a 17:00', '23.752598, -99.140481', 'si', 'N/A', 'N/A', 'no', 'no'),
(94, 'Sur', 'Golfo', 'Cd Victoria', 'Libertad', 'Cd Victoria', 'izzi', 'Av.Lazaro Cardenas S/N Esq.Av Americas 3651 , Col.Mexico C.P.87049 Cd. Victoria, Tamaulipas', '9:00 a 20:00', '9:00 a 17:00', '9:00 a 17:00', '23.765789, -99.160887', 'si', 'N/A', 'N/A', 'no', 'si'),
(95, 'Sur', 'Golfo', 'Cd Victoria', 'Matriz Victoria', 'Cd Victoria', 'izzi', 'Porfirio Diaz Nte No.814 , Col.Morelos C.P.87050 Cd. Victoria, Tamaulipas', '9:00 a 19:00', '9:00 a 16:00', 'Cerrado', '23.737775, -99.142960', 'si', 'N/A', 'N/A', 'si', 'si'),
(96, 'Sur', 'Golfo', 'Cd Victoria', 'Palmas', 'Cd Victoria', 'izzi', 'Blvd.Tamaulipas No.2033 Nte Loc.11 Soriana Palmas, Col.Fracc. Los Arcos C.P.87040 Cd. Victoria, Tamaulipas', '9:00 a 20:00', '9:00 a 17:00', '9:00 a 17:00', '23.749845, -99.140003', 'si', 'N/A', 'N/A', 'no', 'no'),
(97, 'Sur', 'Golfo', 'Cd Victoria', 'Tamatan', 'Cd Victoria', 'izzi', 'CalzadaGral.Luis Caballero No.250 Pte Loc.47 y 48 Soriana Tamatan, Col.Fracc. Zozaya C.P.87070 Cd. Victoria, Tamaulipas', '9:00 a 20:00', '9:00 a 17:00', '9:00 a 17:00', '23.723860, -99.160351', 'si', 'N/A', 'N/A', 'no', 'si'),
(98, 'Norte', 'Centro', 'Celaya', 'CM Celaya', 'Celaya', 'izzi', 'Camino a Jofre No.104 , Col.Barrio Tierra Blanca C.P.38090 Celaya, Guanajuato', '9:00 a 19:00', '9:00 a 17:00', '10:00 a 15:00', '20.508185, -100.815556', 'si', 'S002', 'SIM', 'no', 'si'),
(99, 'Norte', 'Centro', 'Celaya', 'Juarez Celaya', 'Celaya', 'izzi', 'Benito Juarez No.441 , Col.Centro C.P.38000 Celaya, Guanajuato', '9:00 a 19:00', '9:00 a 17:00', 'Cerrado', '20.525294, -100.815174', 'no', 'S044', 'SIM', 'no', 'si'),
(100, 'Norte', 'Centro', 'Celaya', 'Matriz Celaya', 'Celaya', 'izzi', 'Miguel Hidalgo No.706 , Col.Centro C.P.38040 Celaya, Guanajuato', '8:00 a 18:00', '9:00 a 17:00', 'Cerrado', '20.521212, -100.825104', 'si', 'S045', 'SIM+EQ', 'si', 'si'),
(101, 'Norte', 'Centro', 'Celaya', 'Parque Celaya', 'Celaya', 'izzi', 'Eje. Nor Poniente No.801 15 de Mayo Loc.E-05, Col.Del Parque C.P.38020 Celaya, Guanajuato', '9:00 a 19:00', '9:00 a 17:00', '10:00 a 15:00', '20.546999, -100.839301', 'si', 'S046', 'SIM', 'no', 'si'),
(102, 'Norte', 'Centro', 'Celaya', 'Plaza Veleros', 'Celaya', 'izzi', 'Parque Floresta S/N Loc.11 , Col.Del Parque C.P.38010 Celaya, Guanajuato', '9:00 a 19:00', '9:00 a 17:00', '10:00 a 15:00', '20.536818, -100.825307', 'no', 'S047', 'SIM', 'no', 'si'),
(103, 'Sur', 'Sureste', 'Coatzacoalcos', 'Coatzacoalcos Centro', 'Coatzacoalcos', 'izzi', 'Blvd.Manuel Avila Camacho No.603 , Col.Centro C.P.96400 Coatzacoalcos, Veracruz', '8:00 a 18:00', '9:00 a 14:00', 'Cerrado', '18.150437,-94.411609', 'si', 'N/A', 'SIM', 'si', 'si'),
(104, 'Sur', 'Sureste', 'Coatzacoalcos', 'Forum Coatzacoalcos', 'Coatzacoalcos', 'izzi', 'Av.Universidad km 8 Loc.PA-10 , Col.Predio Santa Rosa C.P.96536 Coatzacoalcos, Veracruz', '11:00 a 20:00', '11:00 a 20:00', '11:00 a 20:00', '18.141837, -94.487765', 'si', 'N/A', 'SIM', 'si', 'si'),
(105, 'Sur', 'Sureste', 'Nanchital', 'Nanchital', 'Coatzacoalcos', 'izzi', 'Miguel Hidalgo SN Local 1 Plaza Juventud Col.Centro C.P.93770 Nanchital, Veracruz', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '18.072446, -94.413351', 'si', 'N/A', 'N/A', 'no', 'no'),
(106, 'Sur', 'Sureste', 'Comalcalco', 'Comalcalco', 'Comalcalco', 'wizz', 'Guillermo Prieto Oriente No.420 Col.Lopez Mateos Loc. 6 y 7 C.P. 86380, Comalcalco, Tabasco', '9:00 a 18:00', '9:00 a 17:00', '9:00 a 17:00', '18.274146, -93.219521', 'si', 'N/A', 'N/A', 'no', 'no'),
(107, 'Sur', 'Sureste', 'Amatlan', 'Amatlan', 'Cordoba', 'izzi', 'Pascual de los Santos No.6 , Col.Centro C.P.94950 Amatlan de Los Reyes, Veracruz', '9:00 a 18:00', '9:00 a 15:00', 'Cerrado', '18.845204, -96.916422', 'si', 'N/A', 'N/A', 'no', 'no'),
(108, 'Sur', 'Sureste', 'Cordoba', 'Crystal Cordoba', 'Cordoba', 'izzi', 'Prolongacion Autopista Cordoba - Puebla km 1 , Col.Lomas  C.P.94570 Cordoba, Veracruz', '10:00 a 19:00', '10:00 a 19:00', '10:00 a 15:00', '18.889430, -96.947302', 'si', 'N/A', 'SIM', 'si', 'si'),
(109, 'Sur', 'Sureste', 'Cordoba', 'Matriz Cordoba', 'Cordoba', 'izzi', 'Av.5 No.1307 Entre calles 13 y 15 , Col.Centro C.P.94500 Cordoba, Veracruz', '9:00 a 18:00', '9:00 a 15:00', 'Cerrado', '18.889615, -96.931577', 'si', 'N/A', 'SIM', 'si', 'si'),
(110, 'Sur', 'Sureste', 'Fortin De Las Flores', 'Fortin', 'Cordoba', 'izzi', 'Sur 3 No.102 , Col.Centro C.P.94470 Fortin de Las Flores, Veracruz', '9:00 a 18:00', '9:00 a 15:00', 'Cerrado', '18.899815, -96.997604', 'si', 'N/A', 'N/A', 'no', 'no'),
(111, 'Sur', 'Sureste', 'Coscomatepec', 'Chocaman', 'Coscomatepec', 'wizz', 'Lerdo No.52 Entre Hidalgo y Guerrero , Col.Centro C.P.94160 Chocaman, Veracruz', '8:00 a 16:00', '8:00 a 13:00', 'Cerrado', '19.011559, -97.030521', 'si', 'N/A', 'N/A', 'no', 'no'),
(112, 'Sur', 'Sureste', 'Coscomatepec', 'Coscomatepec', 'Coscomatepec', 'wizz', 'Av.Reforma S/N Entre Lerdo Y Zamora , Col.Centro C.P.94140 Coscomatepec, Veracruz', '8:00 a 16:00', '8:00 a 13:00', 'Cerrado', '19.074875, -97.044353', 'si', 'N/A', 'N/A', 'no', 'no'),
(113, 'Metro', 'Metro Sur', 'Cuautla', 'Oficina Central Cuautla', 'Cuernavaca', 'izzi', 'Antigua Carretera M?xico - Cuautla No. 6 Loc.6,7,8 y 9 Col.Miguel Hidalgo C.P.62748 Cuautla Morelos', '8:00 a 19:00', '9:00 a 14:00', '9:00 a 14:00', '18.8478522,-98.9377331', 'si', 'S209', 'SIM', 'si', 'si'),
(114, 'MetroSur', 'Metro Sur', 'Cuernavaca', 'Bellavista', 'Cuernavaca', 'izzi', 'Jardin Juarez No.7 Loc.D Pasaje BellaVista, Col.Centro C.P.62000 Cuernavaca, Morelos', '9:00 a 19:00', '9:00 a 14:00', 'Cerrado', '18.922667, -99.235063', 'no', 'S062', 'SIM', 'no', 'si'),
(115, 'Metro', 'Metro Sur', 'Cuernavaca', 'Bugambilias', 'Cuernavaca', 'izzi', 'Rio Balsas No.2-A Av.Vicente Guerrero No.100 , Col.Lomas de la Selva C.P.62290 Cuernavaca, Morelos', '08:00 a 19:00', '09:00 a 17:00', '09:00 a 17:00', '18.933681, -99.228336', 'si', 'S063', 'SIM+EQ', 'si', 'si'),
(116, 'Metro', 'Metro Sur', 'Cuernavaca', 'Chapultepec', 'Cuernavaca', 'izzi', 'Av.Cuauthemoc No.186 Loc.B-10 , Col.Chapultepec C.P.62450 Cuernavaca, Morelos', '9:00 a 19:00', '9:00 a 14:00', '9:00 a 14:00', '18.922755, -99.210317', 'si', 'S064', 'SIM', 'si', 'si'),
(117, 'Metro', 'Metro Sur', 'Cuernavaca', 'Jiutepec', 'Cuernavaca', 'izzi', 'Paseo Cuauhnahuac 3 loc. 25 y 26 col. Moctezuma, CP 62553, Jiutepec Morelos', '9:00 a 19:00', '10:00 a 17:00', '10:00 a 17:00', '18.898633, -99.170791', 'si', 'S065', 'SIM', 'si', 'si'),
(118, 'Metro', 'Metro Sur', 'Cuernavaca', 'Zapata', 'Cuernavaca', 'izzi', 'Av.No Reeleccion No.190 , Col.Centro C.P.62760 Emiliano Zapata, Morelos', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '18.842271, -99.183037', 'si', 'S066', 'SIM', 'no', 'no'),
(119, 'Metro', 'Metro Sur', 'Yautepec', 'Yautepec', 'Cuernavaca', 'izzi', '5 de Mayo No.71 , Col.Barrio de Santiago C.P.62730 Yautepec, Morelos', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '18.889720, -99.057964', 'si', 'S210', 'SIM', 'si', 'no'),
(120, 'Sur', 'Sureste', 'Cunduacan', 'Cunduacan', 'Cunduacan', 'wizz', 'Carr.Via Corta Reforma dos Bocas No.13 Loc.12 , Col.Centro C.P.86690 Cunduacan, Tabasco', '9:00 a 18:00', '9:00 a 17:00', '9:00 a 17:00', '18.069264, -93.163789', 'si', 'S211', 'SIM', 'no', 'no'),
(121, 'Sur', 'Occidente', 'Chapala', 'Chapala Centro', 'Chapala', 'wizz', 'Av.Francisco I Madero No.252-A , Col.Centro C.P.45900 Chapala, Jalisco', '9:00 a 14:00 - 15:00 a 18:00', '9:00 a 14:00', 'Cerrado', '20.294810, -103.191156', 'si', 'N/A', 'N/A', 'no', 'no'),
(122, 'Sur', 'Occidente', 'Chapala', 'Jocotepec', 'Chapala', 'wizz', 'Priv.Josefa Ortiz de Dominguez No.15 Int.7 y 9 , Col.Jocotepec Centro C.P.45800 Jocotepec, Jalisco', '10:00 a 14:00 - 15:00 a 18:00', '10:00 a 14:00', 'Cerrado', '20.286163, -103.431050', 'si', 'N/A', 'N/A', 'no', 'no'),
(123, 'Sur', 'Occidente', 'Chapala', 'Riberas', 'Chapala', 'wizz', 'Av.Hidalgo No.88 , Col.Ribera del Pilar C.P.45906 Chapala, Jalisco', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '20.292580, -103.218304', 'si', 'N/A', 'N/A', 'no', 'no'),
(124, 'Sur', 'Sureste', 'Chetumal', 'Chetumal', 'Chetumal', 'izzi', 'Av.San Salvador No.471 , Col.Fracc. Flamboyanes C.P.77034 Chetumal, Quintana Roo', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '18.509826, -88.312458', 'si', 'N/A', 'N/A', 'si', 'si'),
(125, 'Sur', 'Golfo', 'Chietla', 'Chietla', 'Chietla', 'wizz', 'Prolongacion Victoria No.44 Entre Independencia y Priv. Josefa Ortiz de Dominguez , Col.Centro C.P.74580 Chietla, Puebla', '9:00 a 17:00', '9:00 a 14:00', 'Cerrado', '18.522098, -98.582979', 'si', 'N/A', 'N/A', 'no', 'no'),
(126, 'Norte', 'Pacifico', 'Camargo', 'Camargo', 'Chihuahua', 'izzi', 'Av.Juarez S/N Esq.Alllende , Col.Centro C.P.33700 Camargo, Chihuahua', '8:00 a 18:00', '9:00 a 15:00', 'Cerrado', '27.693608, -105.174167', 'si', 'N/A', 'N/A', 'si', 'si'),
(127, 'Norte', 'Pacifico', 'Chihuahua', 'Fashion Mall', 'Chihuahua', 'izzi', 'Periferico de la Juventud No.3501 Loc.277 y 278 , Col.Fracc. Puerta Del Hierro C.P.31236 Chihuahua, Chihuahua', '11:00 a 20:00', '11:00 a 20:00', '11:00 a 20:00', '28.622708, -106.115068', 'si', 'S002', 'SIM', 'si', 'si'),
(128, 'Norte', 'Pacifico', 'Chihuahua', 'Fuentes Mares', 'Chihuahua', 'izzi', 'Blvd.Fuentes Mares No.31000 Loc.19 , Col.Nueva Espa?a C.P.32075 Chihuahua, Chihuahua', '8:00 a 17:00', '9:00 a 16:00', 'Cerrado', '28.621412, -106.031328', 'si', 'S052', 'SIM', 'si', 'si'),
(129, 'Norte', 'Pacifico', 'Chihuahua', 'Saucito', 'Chihuahua', 'izzi', 'Av.Francisco Villa No.5705 Loc.25 , Col.Saucito C.P.31176 Chihuahua, Chihuahua', '8:00 a 17:00', '9:00 a 16:00', 'Cerrado', '28.664548, -106.128011', 'si', 'S053', 'SIM', 'si', 'si'),
(130, 'Norte', 'Pacifico', 'Chihuahua', 'Vallarta', 'Chihuahua', 'izzi', 'Av.Ignacio Vallarta No.5900 Loc.6 y 7 , Col.Granjas C.P.31160 Chihuahua, Chihuahua', '8:00 a 17:00', '9:00 a 16:00', 'Cerrado', '28.672296, -106.100563', 'si', 'S054', 'SIM+EQ', 'si', 'si'),
(131, 'Norte', 'Pacifico', 'Cuauhtemoc', 'Cuauhtemoc', 'Chihuahua', 'izzi', 'Av.Mariano Jimenez No.1775 , Col.Fracc. San Antonio C.P.31530 Cd. Cuahtemoc, Chihuahua', '8:00 a 17:00', '9:00 a 16:00', 'Cerrado', '28.408712, -106.851291', 'si', 'S197', 'SIM', 'si', 'si'),
(132, 'Norte', 'Pacifico', 'Delicias', 'Delicias', 'Chihuahua', 'izzi', 'Av.Segunda Oriente No.108 , Col.Centro C.P.33000 Delicias, Chihuahua', '8:00 a 17:00', '8:00 a 16:00', 'Cerrado', '28.193285, -105.469115', 'si', 'S067', 'SIM', 'si', 'si'),
(133, 'Norte', 'Pacifico', 'Meoqui', 'Meoqui', 'Chihuahua', 'izzi', 'Allende No.105-B , Col.Centro C.P.33130 Meoqui, Chihuahua', '8:00 a 17:00', '8:00 a 16:00', 'Cerrado', '28.273763, -105.484423', 'si', 'S198', 'SIM', 'no', 'no'),
(134, 'Norte', 'Pacifico', 'Parral', 'Parral', 'Chihuahua', 'izzi', 'Prolongacion Jose Marti No.4 , Col.Americas C.P.33880 Parral, Chihuahua', '9:00 a 18:00', '8:00 a 16:00', 'Cerrado', '26.925503, -105.661949', 'si', 'S199', 'SIM', 'si', 'si'),
(135, 'Sur', 'Occidente', 'Chilpancingo', 'Oficina Central Chilpancingo', 'Chilpancingo', 'izzi', 'Av.De La Juventud S/N , Col.El Centenario C.P.39060 Chilpancingo, Guerrero', '9:00 a 18:00', '9:00 a 17:00', '9:00 a 14:00', '17.533899, -99.494842', 'si', 'N/A', 'N/A', 'si', 'si'),
(136, 'Metro', 'Metro Sur', 'Chimalhuacan', 'Chimalhuacan', 'Chimalhuacan', 'izzi', 'Av.Nezahualcoyotl S/N Loc.53B Plaza Chimalhuacan, Col.Santa Maria Nativitas C.P.56330 Chimalhuacan, Edo.Mexico', '10:00 a 19:00', '10:00 a 19:00', '10:00 a 19:00', '19.410501, -98.927351', 'si', 'S055', 'SIM', 'si', 'si'),
(137, 'Metro', 'Metro Sur', 'Los Reyes Acaquilpan', 'Los Reyes la Paz', 'Chimalhuacan', 'izzi', 'Av.Puebla No.81 , Col.Los Reyes Acaquilpan C.P.56400 Los Reyes Acaquilpan, Edo.Mexico', '9:00 a 18:00', '9:00 a 15:00', 'Cerrado', '19.359261, -98.974240', 'si', 'S072', 'SIM', 'no', 'no'),
(138, 'Metro', 'Metro Sur', 'Nezahualcoyotl', 'Neza', 'Chimalhuacan', 'izzi', 'Av.Chimalhuacan No.488 , Col.Benito Juarez C.P.57000 Nezahualcoyotl, Edo.Mexico', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '19.399736, -99.001416', 'si', 'S201', 'SIM', 'si', 'si'),
(139, 'Metro', 'Metro Sur', 'Nezahualcoyotl', 'Plaza Jardin', 'Chimalhuacan', 'izzi', 'CalzadaBordo de Xochiaca No.3 Loc.C-07 , Col.Ciudad Jardin Bicentenario C.P.57205 Nezahualcoyotl, Edo.Mexico', '10:00 a 19:00', '10:00 a 19:00', '10:00 a 18:00', '19.425118, -99.023277', 'si', 'S202', 'SIM', 'no', 'no'),
(140, 'Metro', 'Metro Sur', 'Texcoco', 'Patio Texcoco', 'Chimalhuacan', 'izzi', 'Camino al Molino de las Flores S/N , Col.Santa Cruz De Arriba C.P.56120 Texcoco, Edo.Mexico', '10:00 a 19:00', '10:00 a 19:00', '10:00 a 18:00', '19.515326, -98.868523', 'si', 'S122', 'SIM', 'no', 'no'),
(141, 'Metro', 'Metro Norte', 'Ecatepec', 'Plaza Aragon', 'Ecatepec', 'izzi', 'Av.Carlos Hank Gonzalez No.120 Loc.97 , Col.Los Laureles Rinconada de Aragon  C.P.55140 Ecatepec, Edo.Mexico', '10:00 a 19:00', '10:00 a 19:00', '10:00 a 18:00', '19.528910, -99.026516', 'si', 'S068', 'SIM', 'si', 'si'),
(142, 'Metro', 'Metro Norte', 'Ecatepec', 'Plaza Ecatepec', 'Ecatepec', 'izzi', 'Via Morelos No.72 Sub Ancla 2Fb , Col.Los Laureles C.P.55090 Ecatepec, Edo.Mexico', '10:00 a 19:00', '10:00 a 19:00', '10:00 a 18:00', '19.581675, -99.041560', 'si', 'S069', 'SIM', 'si', 'si'),
(143, 'Metro', 'Metro Norte', 'Los Reyes Acozac', 'Los Reyes Acozac', 'Ecatepec', 'izzi', 'Pasaje Reforma No.1 Int 3 , Col.Los Reyes Acozac C.P.55775 Los Reyes Acozac, Edo.Mexico', '9:00 a 14:00 - 15:00 a 18:00', '9:00 a 14:00', 'Cerrado', '19.774155, -98.981948', 'si', 'S212', 'SIM', 'no', 'no'),
(144, 'Metro', 'Metro Norte', 'Ojo De Agua', 'Ojo De Agua', 'Ecatepec', 'izzi', 'Santa Cruz 125 Col. Real Castell C.P. 55770 Ojo de Agua Edo.de M?xico', '09:00 a 14:00 - 15:00 a 18:00', '9:00 a 2:00 ', 'Cerrado', '19.667278, -99.016026', 'si', 'S095', 'SIM', 'no', 'no'),
(145, 'Metro', 'Metro Norte', 'Tecamac', 'Heroes Tecamac', 'Ecatepec', 'izzi', 'Conjunto Urbano los Heroes 2da Seccion S/N MZ 1 Lote.1 , Col.Bosques Tecamac C.P.55764 Tecamac, Edo.Mexico', '9:00 a 18:00', '9:00 a 17:00', '9:00 a 17:00', '19.618733, -99.038635', 'si', 'S119', 'SIM', 'si', 'si'),
(146, 'Metro', 'Metro Norte', 'Teotihuacan De Arista', 'Teotihuacan', 'Ecatepec', 'izzi', '25 Regimiento S/N , Col.Centro C.P.55800 San Juan Teotihuacan de Arista, Edo.Mexico', '9:00 a 14:00 - 15:00 a 18:00', '9:00 a 14:00', 'Cerrado', '19.686787, -98.868523', 'si', 'S213', 'SIM', 'no', 'no'),
(147, 'Metro', 'Metro Norte', 'Tepexpan', 'Tepexpan', 'Ecatepec', 'izzi', 'Los Reyes S/N Loc.3H , Col.Tepexpan C.P.55885 Tepexpan, Edo.Mexico', '9:00 a 18:00', '9:00 a 14:00', 'Cerrado', '19.613260, -98.936060', 'si', 'S120', 'SIM', 'no', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunicados_tabla`
--

CREATE TABLE `comunicados_tabla` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `portada` varchar(255) NOT NULL,
  `archivo` varchar(255) NOT NULL,
  `puesto` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `ciudad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comunicados_tabla`
--

INSERT INTO `comunicados_tabla` (`id`, `titulo`, `descripcion`, `portada`, `archivo`, `puesto`, `marca`, `division`, `ciudad`) VALUES
(1, 'Prueba uno', 'Descripcion uno', '', '', 'Ejecutivo ATC', 'izzi', '', 'CDMX'),
(2, 'Prueba dos', 'Descripcion dos', '', '', 'Gerente ATC', 'wizz', '', 'Queretaro'),
(4, 'Prueba tres', 'Descripcion tres', '', '', 'Gerente ATC', 'izzi', '', 'Yautepec'),
(5, 'Prueba 4', 'Descripcion 4', '', '', 'Ejecutivo Sr ATC', 'izzi', '', 'Monterrey'),
(6, 'Prueba 5', 'Descripcion 5', '', '', 'Jefe Sucursal', 'wizz plus', '', 'Queretaro');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atc_lectura`
--
ALTER TABLE `atc_lectura`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `atc_reportelectura`
--
ALTER TABLE `atc_reportelectura`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `atc_staff`
--
ALTER TABLE `atc_staff`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `atc_sucursal`
--
ALTER TABLE `atc_sucursal`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `comunicados_tabla`
--
ALTER TABLE `comunicados_tabla`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atc_lectura`
--
ALTER TABLE `atc_lectura`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `atc_reportelectura`
--
ALTER TABLE `atc_reportelectura`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `atc_staff`
--
ALTER TABLE `atc_staff`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT de la tabla `atc_sucursal`
--
ALTER TABLE `atc_sucursal`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT de la tabla `comunicados_tabla`
--
ALTER TABLE `comunicados_tabla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
