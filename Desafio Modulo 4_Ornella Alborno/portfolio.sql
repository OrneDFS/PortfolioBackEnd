-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 17-10-2022 a las 19:14:58
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portfolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudios`
--

DROP TABLE IF EXISTS `estudios`;
CREATE TABLE IF NOT EXISTS `estudios` (
  `idEstudios` int(11) NOT NULL,
  `Institución` varchar(300) DEFAULT NULL,
  `Periodo` varchar(45) DEFAULT NULL,
  `Título` varchar(200) DEFAULT NULL,
  `Descripción` varchar(500) DEFAULT NULL,
  `Enlace` varchar(200) DEFAULT NULL,
  `Persona_idPersona` int(11) NOT NULL,
  PRIMARY KEY (`idEstudios`,`Persona_idPersona`),
  KEY `fk_Estudios_Persona1` (`Persona_idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudios`
--

INSERT INTO `estudios` (`idEstudios`, `Institución`, `Periodo`, `Título`, `Descripción`, `Enlace`, `Persona_idPersona`) VALUES
(1, 'Argentina Programa', '2020 - 2022', 'Desarrollador Web Full Stack Jr.', 'Programa Nacional y Federal de capacitación en lenguajes y conocimientos sobre programación y habilidades digitales; impulsado por el Ministerio de Desarrollo Productivo de la Nación con apoyo de un consejo consultivo especializado.', 'https://www.argentina.gob.ar/economia/conocimiento/argentina-programa', 1),
(2, 'Argentina Programa', '2022', 'Curso de Inglés para Desarrolladores', 'Programa Nacional y Federal de capacitación en lenguajes y conocimientos sobre programación y habilidades digitales; impulsado por el Ministerio de Desarrollo Productivo de la Nación con apoyo de un consejo consultivo especializado.', 'https://www.argentina.gob.ar/economia/conocimiento/argentina-programa', 1),
(3, 'Instituto Superior de Estudios Pedagógicos', '2021', 'Seminario de Narrativas Hipermediales', 'Hipertextos e hipermedia. Recuperación de aportes disciplinares y didácticos que enriquecen la mirada sobre la relación entre medios digitales y escuela, estimulando la ambición de entender cómo estos operan', 'https://isep-cba.edu.ar/web/', 1),
(4, 'Instituto Superior de Estudios Pedagógicos', '2020', 'Seminario de Pensamiento Computacional', 'Comprensión de las características generales del pensamiento computacional, exploración y  experimentación de las habilidades genéricas que lo conforman, así como la resolución de problemas lógicos, su codificación en programas de computadora y la dimensión social de dichos saberes y prácticas; todo ello, con el fin de construir un marco para analizar críticamente las prácticas de enseñanza de computación en la escuela.', 'https://isep-cba.edu.ar/web/', 1),
(5, 'Instituto Superior Carlos Arberto Leguizamón', '2012 - 2021', 'Profesorado en Educacón Primaria', 'Formación competente en la enseñanza del primer y segundo ciclo de la Educación Primaria, con sólidos conocimientos pedagógicos, atención a los cambios y transformaciones propios de la tarea cotidiana fundamentados en el compromiso con la realidad sociocultural del país.', 'https://isleguizamon-cba.infd.edu.ar/sitio/', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--

DROP TABLE IF EXISTS `habilidades`;
CREATE TABLE IF NOT EXISTS `habilidades` (
  `idtable1` int(11) NOT NULL,
  `Descripción` varchar(100) DEFAULT NULL,
  `URL_Video` varchar(200) DEFAULT NULL,
  `Persona_idPersona` int(11) NOT NULL,
  PRIMARY KEY (`idtable1`,`Persona_idPersona`),
  KEY `fk_Habilidades_Persona1` (`Persona_idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idPersona` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Descripción` varchar(500) DEFAULT NULL,
  `WhatsApp` varchar(20) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `Red social 1` varchar(45) DEFAULT NULL,
  `Red social 2` varchar(45) DEFAULT NULL,
  `Lugar de Residencia` varchar(45) DEFAULT NULL,
  `Url_Img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idPersona`, `Nombre`, `Apellido`, `Descripción`, `WhatsApp`, `Correo`, `Red social 1`, `Red social 2`, `Lugar de Residencia`, `Url_Img`) VALUES
(1, 'Ornella', 'Alborno', 'Soy tucumana pero vivo en Córdoba (Argentina) hace varios años. También soy docente de primaria, con una especialización en Pensamiento Computacional y Narrativas Hipermediales._Busco incorporarme al sector de software y especializarme en el desarrollo de aplicaciones, principalmente en el area de FronEnd.', '+54 9 3512894982', 'ornella.desarrolladorafs@gmail.com', 'Url pendiente LinkedIn', 'https://github.com/OrneDFS', 'Córdoba, Argentina', 'Url_MiFoto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
CREATE TABLE IF NOT EXISTS `proyectos` (
  `idProyectos` int(11) NOT NULL,
  `Titulo` varchar(200) DEFAULT NULL,
  `Descripción` varchar(200) DEFAULT NULL,
  `Url_Proy` varchar(200) DEFAULT NULL,
  `Persona_idPersona` int(11) NOT NULL,
  PRIMARY KEY (`idProyectos`,`Persona_idPersona`),
  KEY `fk_Proyectos_Persona1` (`Persona_idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`idProyectos`, `Titulo`, `Descripción`, `Url_Proy`, `Persona_idPersona`) VALUES
(1, 'Este Portafolio FrontEnd', 'Lorem Ipsum', 'Url GitGub', 1),
(2, 'Este Portafolio BackEnd', 'Lorem Ipsum', 'Url GitGub', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

DROP TABLE IF EXISTS `trabajos`;
CREATE TABLE IF NOT EXISTS `trabajos` (
  `idTrabajos` int(11) NOT NULL,
  `Empresa` varchar(45) DEFAULT NULL,
  `Periodo` varchar(45) DEFAULT NULL,
  `Puesto` varchar(45) DEFAULT NULL,
  `Descripción` varchar(500) DEFAULT NULL,
  `Url_empresa` varchar(200) DEFAULT NULL,
  `Persona_idPersona` int(11) NOT NULL,
  PRIMARY KEY (`idTrabajos`,`Persona_idPersona`),
  KEY `fk_Trabajos_Persona1` (`Persona_idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajos`
--

INSERT INTO `trabajos` (`idTrabajos`, `Empresa`, `Periodo`, `Puesto`, `Descripción`, `Url_empresa`, `Persona_idPersona`) VALUES
(1, 'Tandem BPO', '2022', 'Formadora FreeLancer', 'Dictado de Talleres para Capital Humano. Ruptura de Paradigmas y Seguimiento de Procesos', 'http://grupotandembpo.com/', 1),
(2, 'VN Global BPO', '2014-2020', 'Analista de Calidad y Capacitación', 'Analista de Capacitación para cuentas de Cobranzas y Customer Service. Clientes: Banco Galica, Sancor Salud, Cencosud, Tarjeta Naranja, Increase, etc. Analista de Aseguramiento de Control de Calidad y Capacitación para Cliente: Grupo Telefónica', 'https://www.v-n.com.ar/', 1),
(3, 'Atento Argentina ', '2006 - 2011', 'Analista de Capacitación', 'Analista Jr. de Capacitación - Clientes: Grupo Telefónica.', 'https://atento.com/es/', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudios`
--
ALTER TABLE `estudios`
  ADD CONSTRAINT `fk_Estudios_Persona1` FOREIGN KEY (`Persona_idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `habilidades`
--
ALTER TABLE `habilidades`
  ADD CONSTRAINT `fk_Habilidades_Persona1` FOREIGN KEY (`Persona_idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `fk_Proyectos_Persona1` FOREIGN KEY (`Persona_idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `trabajos`
--
ALTER TABLE `trabajos`
  ADD CONSTRAINT `fk_Trabajos_Persona1` FOREIGN KEY (`Persona_idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
