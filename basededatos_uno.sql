-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-02-2015 a las 23:06:55
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `basededatos_uno`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE IF NOT EXISTS `estudiantes` (
`id_Estudiante` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_Estudiante`, `Nombre`, `Correo`) VALUES
(1, 'Arnoldo Viafara', 'arnoldoelmas'),
(2, 'pablo Armero', 'armerostyle'),
(3, 'Luis Gomez', 'luG'),
(4, 'Anibal Alvarez', 'labina89'),
(5, 'alejandra Rodriguez', 'luG'),
(6, 'Rebecca Linares', 'labina89');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_curso`
--

CREATE TABLE IF NOT EXISTS `estudiante_curso` (
`id_estudiante_curso` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante_curso`
--

INSERT INTO `estudiante_curso` (`id_estudiante_curso`, `id_estudiante`, `id_curso`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 1, 2),
(4, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
`idMateria` int(11) NOT NULL,
  `materia_Nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`idMateria`, `materia_Nombre`) VALUES
(1, 'Representacion Grafica'),
(2, 'Logica y Argumentacion'),
(3, 'Matematicas'),
(4, 'Modelado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
 ADD PRIMARY KEY (`id_Estudiante`);

--
-- Indices de la tabla `estudiante_curso`
--
ALTER TABLE `estudiante_curso`
 ADD PRIMARY KEY (`id_estudiante_curso`), ADD KEY `Estudiantes_idx` (`id_estudiante`), ADD KEY `Materia_idx` (`id_curso`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
 ADD PRIMARY KEY (`idMateria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
MODIFY `id_Estudiante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `estudiante_curso`
--
ALTER TABLE `estudiante_curso`
MODIFY `id_estudiante_curso` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
MODIFY `idMateria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante_curso`
--
ALTER TABLE `estudiante_curso`
ADD CONSTRAINT `Estudiantes` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_Estudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `Materia` FOREIGN KEY (`id_curso`) REFERENCES `materia` (`idMateria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
