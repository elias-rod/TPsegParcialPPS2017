
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-07-2017 a las 04:21:35
-- Versión del servidor: 10.1.22-MariaDB
-- Versión de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `u766132325_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `idAlumno` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `dni` int(11) NOT NULL,
  `legajo` int(11) NOT NULL,
  PRIMARY KEY (`idAlumno`),
  UNIQUE KEY `idUser` (`idUsuario`,`dni`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`idAlumno`, `idUsuario`, `nombre`, `apellido`, `dni`, `legajo`) VALUES
(1, 4, 'Elias', 'Rodriguez', 33276333, 195205),
(2, 5, 'Lucas', 'Rodriguez', 33278445, 195808),
(3, 6, 'Julian', 'Reinoso', 35568954, 456788),
(4, 7, 'Pablo', 'De Cecco', 45180846, 789789),
(5, 11, 'Marcos', 'Galarza', 45465789, 195848),
(6, 12, 'Juan', 'Chotra', 12346455, 123878),
(7, 13, 'Mariana', 'Pinchuk', 46458459, 123456),
(8, 14, 'Sofia', 'Reinoso', 48455654, 568751),
(9, 15, 'Nestor', 'Laresca', 784564555, 157888),
(10, 16, 'Luis', 'Maygua', 84694555, 337855),
(11, 17, 'Daniela', 'Cardone', 89946666, 248787),
(12, 18, 'Julieta', 'Venegas', 48888555, 777777),
(13, 19, 'Tomas', 'Sapia', 21045201, 888888),
(14, 20, 'Jesus', 'Neirus', 30555436, 999999),
(15, 21, 'Luciana', 'Gonzalez', 36073086, 105063),
(16, 25, 'alberto', 'esteban', 8989, 7878),
(17, 26, 'NOMBRE', 'APELLIDO', 12231, 12301),
(18, 27, 'minombre', 'miapellido', 3232, 6578),
(19, 28, 'Test', 'Prueba', 23568, 1288),
(20, 29, 'Administrador', 'admin', 1245, 1245),
(21, 30, 'trativo', 'adminis', 1234550, 123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos_materias`
--

CREATE TABLE IF NOT EXISTS `alumnos_materias` (
  `idAlumno` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL,
  PRIMARY KEY (`idAlumno`,`idMateria`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=FIXED;

--
-- Volcado de datos para la tabla `alumnos_materias`
--

INSERT INTO `alumnos_materias` (`idAlumno`, `idMateria`) VALUES
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 9),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 16),
(1, 17),
(2, 5),
(2, 6),
(2, 7),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(3, 5),
(3, 7),
(3, 8),
(3, 11),
(3, 13),
(3, 15),
(4, 3),
(4, 4),
(4, 8),
(4, 12),
(5, 3),
(5, 4),
(5, 5),
(6, 3),
(6, 4),
(6, 5),
(7, 6),
(7, 7),
(7, 8),
(8, 6),
(8, 7),
(8, 8),
(9, 9),
(9, 10),
(9, 11),
(10, 9),
(10, 10),
(10, 11),
(11, 12),
(11, 13),
(11, 14),
(12, 12),
(12, 13),
(12, 14),
(13, 15),
(13, 16),
(13, 17),
(14, 15),
(14, 16),
(14, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE IF NOT EXISTS `asistencias` (
  `fecha` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `idMateria` int(11) NOT NULL,
  `idAlumno` int(11) NOT NULL,
  `asistencia` int(11) NOT NULL,
  PRIMARY KEY (`fecha`,`idMateria`,`idAlumno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`fecha`, `idMateria`, `idAlumno`, `asistencia`) VALUES
('2017-05-29', 3, 1, 1),
('2017-05-29', 3, 2, 1),
('2017-05-29', 3, 3, 1),
('2017-05-29', 4, 4, 1),
('2017-05-30', 4, 1, 2),
('2017-05-30', 4, 2, 2),
('2017-05-30', 4, 3, 2),
('2017-05-30', 5, 4, 2),
('2017-05-30', 5, 1, 3),
('2017-05-31', 5, 1, 3),
('2017-07-14', 13, 12, 2),
('2017-07-14', 13, 11, 1),
('2017-05-31', 7, 4, 1),
('2017-05-31', 7, 1, 2),
('2017-05-31', 7, 2, 3),
('2017-06-03', 14, 11, 2),
('2017-07-14', 13, 3, 2),
('2017-06-10', 14, 2, 3),
('2017-06-10', 14, 11, 3),
('2017-06-10', 14, 12, 3),
('2017-06-10', 17, 1, 3),
('2017-06-10', 17, 13, 1),
('2017-06-10', 17, 14, 2),
('2017-06-16', 12, 1, 1),
('2017-06-09', 12, 1, 2),
('2017-06-02', 12, 1, 2),
('2017-06-16', 13, 1, 3),
('2017-06-16', 13, 2, 3),
('2017-06-16', 13, 3, 2),
('2017-06-16', 13, 11, 1),
('2017-06-16', 13, 12, 3),
('2017-06-17', 16, 1, 2),
('2017-06-17', 16, 13, 3),
('2017-06-17', 16, 14, 3),
('2017-06-17', 17, 1, 2),
('2017-06-17', 17, 13, 3),
('2017-06-17', 17, 14, 1),
('2017-06-17', 15, 2, 3),
('2017-06-17', 15, 3, 2),
('2017-07-14', 13, 2, 1),
('2017-06-17', 15, 14, 1),
('2017-06-16', 11, 1, 3),
('2017-06-16', 11, 2, 3),
('2017-06-16', 11, 3, 3),
('2017-06-16', 11, 9, 3),
('2017-07-14', 13, 1, 3),
('2017-06-19', 4, 1, 3),
('2017-06-19', 4, 4, 3),
('2017-07-11', 5, 6, 1),
('2017-07-11', 5, 5, 1),
('2017-06-12', 4, 1, 1),
('2017-06-12', 4, 4, 3),
('2017-06-12', 4, 5, 3),
('2017-07-11', 5, 3, 2),
('2017-07-11', 5, 2, 3),
('2017-06-05', 4, 4, 3),
('2017-07-11', 5, 1, 3),
('2017-06-05', 4, 6, 3),
('2017-06-19', 0, 1, 3),
('2017-06-19', 0, 4, 3),
('2017-07-10', 4, 6, 3),
('2017-06-19', 3, 1, 1),
('2017-06-19', 3, 4, 3),
('2017-06-19', 3, 5, 2),
('2017-06-19', 3, 6, 1),
('2017-06-21', 7, 2, 3),
('2017-06-21', 7, 3, 3),
('2017-06-21', 7, 7, 2),
('2017-06-21', 7, 8, 2),
('2017-07-10', 4, 5, 2),
('2017-06-24', 17, 13, 3),
('2017-06-24', 17, 14, 3),
('2017-06-24', 14, 2, 3),
('2017-07-08', 14, 1, 2),
('2017-07-08', 14, 2, 3),
('2017-07-08', 14, 11, 1),
('2017-07-10', 4, 4, 2),
('2017-07-08', 15, 2, 1),
('2017-07-08', 15, 3, 3),
('2017-07-10', 4, 1, 2),
('2017-07-08', 15, 14, 1),
('2017-07-08', 16, 1, 2),
('2017-07-08', 16, 13, 3),
('2017-07-08', 16, 14, 1),
('2017-07-12', 7, 2, 1),
('2017-07-12', 7, 3, 2),
('2017-07-12', 7, 7, 2),
('2017-07-12', 7, 8, 3),
('2017-07-14', 12, 1, 3),
('2017-07-14', 12, 2, 3),
('2017-07-14', 12, 4, 3),
('2017-07-14', 12, 11, 3),
('2017-07-14', 12, 12, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE IF NOT EXISTS `aulas` (
  `idAula` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`idAula`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`idAula`, `numero`) VALUES
(1, 101),
(2, 102),
(3, 103),
(4, 104),
(5, 105),
(6, 106),
(7, 107);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dias`
--

CREATE TABLE IF NOT EXISTS `dias` (
  `idDia` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idDia`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `dias`
--

INSERT INTO `dias` (`idDia`, `Nombre`) VALUES
(1, 'Lunes'),
(2, 'Martes'),
(3, 'Miercoles'),
(4, 'Jueves'),
(5, 'Viernes'),
(6, 'Sabado'),
(7, 'Domingo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dispositivos`
--

CREATE TABLE IF NOT EXISTS `dispositivos` (
  `idUsuario` int(11) NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fabricante` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modelo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dispositivos`
--

INSERT INTO `dispositivos` (`idUsuario`, `plataforma`, `version`, `fabricante`, `modelo`) VALUES
(4, 'Android', '7.0', 'samsung', 'SM-G920I'),
(5, 'Androidfsssss', '5.7', 'Juantio', '8a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE IF NOT EXISTS `encuesta` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `pregunta1` varchar(123) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta1` varchar(123) COLLATE utf8_unicode_ci NOT NULL,
  `pregunta2` varchar(123) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta2` varchar(123) COLLATE utf8_unicode_ci NOT NULL,
  `pregunta3` varchar(123) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta3` varchar(123) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `encuesta`
--

INSERT INTO `encuesta` (`id`, `pregunta1`, `respuesta1`, `pregunta2`, `respuesta2`, `pregunta3`, `respuesta3`) VALUES
(1, 'pregunta1', 'Buena', 'pregunta2', 'Si', 'pregunta3', 'Sisi'),
(2, 'pregunta1', 'Mala', 'pregunta2', 'Si', 'pregunta3', 'Sisi'),
(3, 'pregunta1', 'Mala', 'pregunta2', 'No', 'pregunta3', 'Sisi'),
(8, 'pregunta1', 'Buena', 'pregunta2', 'No', 'pregunta3', 'Sisi'),
(7, 'pregunta1', 'Buena', 'pregunta2', 'No', 'pregunta3', 'Nono'),
(4, 'pregunta1', 'Mala', 'pregunta2', 'No', 'pregunta3', 'Sisi'),
(5, 'pregunta1', 'Buena', 'pregunta2', 'No', 'pregunta3', 'Nono'),
(6, 'pregunta1', 'Mala', 'pregunta2', 'Si', 'pregunta3', 'Sisi'),
(9, 'pregunta1', 'Buena', 'pregunta2', 'No', 'pregunta3', 'Nono'),
(10, 'pregunta1', 'Regular', 'pregunta2', 'Si', 'pregunta3', 'Sisi'),
(11, 'pregunta1', 'Buena', 'pregunta2', 'No', 'pregunta3', 'Sisi'),
(12, 'pregunta1', 'Buena', 'pregunta2', 'Si', 'pregunta3', 'Sisi'),
(13, 'pregunta1', 'Mala', 'pregunta2', 'No', 'pregunta3', 'Nono'),
(14, 'pregunta1', 'Regular', 'pregunta2', 'No', 'pregunta3', 'Nono'),
(15, 'pregunta1', 'Mala', 'pregunta2', 'No', 'pregunta3', 'Nono'),
(16, 'pregunta1', 'Regular', 'pregunta2', 'Si', 'pregunta3', 'Sisi'),
(17, 'pregunta1', 'Buena', 'pregunta2', 'Si', 'pregunta3', 'Sisi'),
(18, 'pregunta1', 'Buena', 'pregunta2', 'Si', 'pregunta3', 'Sisi'),
(19, 'pregunta1', 'Regular', 'pregunta2', 'No', 'pregunta3', 'Sisi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE IF NOT EXISTS `materias` (
  `idMateria` int(11) NOT NULL AUTO_INCREMENT,
  `idDia` int(11) NOT NULL,
  `idAula` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cuatrimestre` int(11) NOT NULL,
  `division` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idMateria`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`idMateria`, `idDia`, `idAula`, `nombre`, `cuatrimestre`, `division`) VALUES
(3, 1, 1, 'Matemtic', 1, 'A'),
(4, 1, 1, 'Gimnasia', 1, 'B'),
(5, 2, 2, 'Lengua', 1, 'C'),
(6, 2, 2, 'Sociales', 2, 'A'),
(7, 3, 3, 'Naturales', 2, 'B'),
(8, 3, 3, 'Programacion', 2, 'C'),
(9, 4, 4, 'Laboratorio', 3, 'A'),
(10, 4, 4, 'Civica', 3, 'B'),
(11, 5, 5, 'Legislacion', 4, 'A'),
(12, 5, 5, 'Base de datos', 4, 'B'),
(13, 5, 6, 'Informatica', 5, 'A'),
(14, 6, 6, 'Laboratorio 2', 5, 'B'),
(15, 6, 7, 'Programacion 2', 6, 'A'),
(16, 6, 7, 'Matematica 2', 6, 'B'),
(17, 6, 1, 'Lengua 2', 1, 'D'),
(19, 1, 126, 'data', 2, '1B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE IF NOT EXISTS `profesores` (
  `idProfesor` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idProfesor`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`idProfesor`, `idUsuario`, `nombre`, `apellido`) VALUES
(3, 8, 'Octavio', 'Villegas'),
(4, 9, 'Maxi', 'Neiner'),
(5, 10, 'German', 'Scarafilo'),
(6, 32, 'dat', 'er');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores_materias`
--

CREATE TABLE IF NOT EXISTS `profesores_materias` (
  `idProfesor` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL,
  PRIMARY KEY (`idProfesor`,`idMateria`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `profesores_materias`
--

INSERT INTO `profesores_materias` (`idProfesor`, `idMateria`) VALUES
(3, 3),
(3, 4),
(3, 5),
(3, 13),
(3, 16),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 14),
(4, 17),
(5, 10),
(5, 11),
(5, 12),
(5, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `descripcion`) VALUES
(1, 'administrador'),
(2, 'administrativo'),
(3, 'alumno'),
(4, 'profesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposasistencia`
--

CREATE TABLE IF NOT EXISTS `tiposasistencia` (
  `idTipoAsistencia` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idTipoAsistencia`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tiposasistencia`
--

INSERT INTO `tiposasistencia` (`idTipoAsistencia`, `descripcion`) VALUES
(1, 'presente'),
(2, 'ausente'),
(3, 'media falta'),
(4, 'ausente justificado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `idRol` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=34 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `idRol`, `email`, `password`, `nombre`, `apellido`, `imagen`, `estado`) VALUES
(1, 1, 'admin@utn.com', '123', 'Nelson', 'Mandela', 'file:///storage/emulated/0/Android/data/io.ionic.starter/cache/1500065091986.jpg', 1),
(2, 2, 'administrativo1@utn.com', '123', 'Maria', 'De las Nieves', '', 1),
(3, 2, 'administrativo2@utn.com', '123', 'Norma', 'Retamoso', '', 1),
(4, 3, 'elias@utn.com', '123', 'Elias', 'Rodriguez', '', 1),
(5, 3, 'lucas@utn.com', '123', 'Lucas', 'Rodriguez', '', 1),
(6, 3, 'julian@utn.com', '123', 'Julian', 'Reynoso', '', 1),
(7, 3, 'pablo@utn.com', '123', 'Pablo', 'De Cecco', 'file:///storage/emulated/0/Android/data/io.ionic.starter/cache/1499550538512.jpg', 1),
(8, 4, 'octavio@utn.com', '123', 'Octavio', 'Villegas', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQH/2wBDAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBA', 1),
(9, 4, 'neiner@utn.com', '123', 'Maxi', 'Neiner', '', 1),
(10, 4, 'german@utn.com', '123', 'German', 'Scarafilo', '', 1),
(11, 3, 'marcos@utn.com', '123', 'Marcos', 'Galarza', '', 1),
(12, 3, 'juan@utn.com', '123', 'Juan', 'Chotra', '', 1),
(13, 3, 'mariana@utn.com', '123', 'Mariana', 'Pinchuk', '', 1),
(14, 3, 'sofia@utn.com', '123asd', 'Sofia', 'Reinoso', '', 1),
(15, 3, 'nestor@utn.com', '123', 'Nestor', 'Laresca', '', 1),
(16, 3, 'luis@utn.com', '123', 'Luis', 'Maygua', '', 1),
(17, 3, 'daniela@utn.com', '123', 'Daniela', 'Cardone', 'file:///storage/emulated/0/Android/data/io.ionic.starter/cache/1498780762918.jpg', 1),
(18, 3, 'julieta@utn.com', '123', 'Julieta', 'Venegas', '', 1),
(19, 3, 'tomas@utn.com', '123', 'Tomas', 'Sapia', '', 1),
(20, 3, 'jesus@utn.com', '123', 'Jesus', 'Neirus', '', 1),
(21, 3, 'lgon@mail.com', '123', 'Luciana', 'Gonzalez', '', 0),
(22, 1, 'pablo.dececco@hotmail.com', '1234', 'Pablo', 'De cecco', 'file:///storage/emulated/0/Android/data/io.ionic.starter/cache/1498592671884.jpg', 1),
(24, 1, 'asdsda@asdasd.com', '123', 'Pablo', 'De Cecco', '', 0),
(23, 2, 'dafa@fsd.com', 'dsd', 'Data', 'Derer', 'file:///storage/emulated/0/Android/data/io.ionic.starter/cache/1498592749061.jpg', 1),
(25, 3, 'aequito@hosdf.cvom', 'asdasd', 'alberto', 'esteban', '', 1),
(27, 3, 'minomape@mipnpasd.com', 'asdasd', 'minombre', 'miapellido', '', 1),
(28, 3, 'prueba@ted.co', '123456', 'Test', 'Prueba', 'file:///storage/emulated/0/Android/data/io.ionic.starter/cache/1500037380141.jpg', 1),
(29, 1, 'administrador@utn.com', '123asd', 'Administrador', 'admin', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQH/2wBDAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBA', 1),
(30, 3, 'trativo@adminis.com', 'asd123', 'trativo', 'adminis', '', 1),
(31, 2, 'ad@sd.com', '123456', 'Proba', 'Asd', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQH/2wBDAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBA', 0),
(32, 4, 'sdf@sdf.co', '123456', 'dat', 'er', '', 1),
(33, 2, 'asd@fire.com', 'asdasd', 'fire', 'fire', '', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
