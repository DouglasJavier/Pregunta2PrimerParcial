-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-04-2021 a las 20:34:03
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mibase`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE `nota` (
  `cod_nota` varchar(5) NOT NULL,
  `ci` varchar(9) DEFAULT NULL,
  `sigla` varchar(7) DEFAULT NULL,
  `nota1` int(11) DEFAULT NULL,
  `nota2` int(11) DEFAULT NULL,
  `nota3` int(11) DEFAULT NULL,
  `notaF` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`cod_nota`, `ci`, `sigla`, `nota1`, `nota2`, `nota3`, `notaF`) VALUES
('cod1', '123456', 'INF-112', 45, 52, 62, 53),
('cod10', '951632', 'INF-144', 39, 70, 42, 50),
('cod11', '951632', 'INF-272', 68, 71, 63, 67),
('cod12', '369845', 'INF-111', 71, 56, 74, 67),
('cod13', '369845', 'INF-112', 63, 85, 76, 75),
('cod14', '369845', 'INF-121', 45, 45, 72, 54),
('cod15', '652314', 'MAT-115', 62, 53, 35, 50),
('cod16', '652314', 'INF-112', 65, 40, 42, 49),
('cod17', '652314', 'INF-271', 75, 50, 62, 62),
('cod18', '624853', 'INF-319', 35, 45, 45, 41),
('cod19', '624853', 'INF-324', 29, 48, 32, 36),
('cod2', '123456', 'INF-111', 54, 47, 51, 51),
('cod20', '624853', 'INF-317', 75, 62, 56, 64),
('cod3', '123456', 'INF-154', 74, 49, 54, 59),
('cod4', '654987', 'INF-112', 65, 52, 65, 61),
('cod5', '654987', 'INF-111', 23, 56, 32, 37),
('cod6', '741852', 'INF-121', 48, 58, 96, 67),
('cod7', '741852', 'MAT-115', 75, 64, 78, 72),
('cod8', '741852', 'INF-112', 63, 62, 45, 57),
('cod9', '951632', 'INF-271', 54, 63, 51, 56);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ci` varchar(9) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `fecha_nac` varchar(10) DEFAULT NULL,
  `depto` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ci`, `nombre`, `fecha_nac`, `depto`) VALUES
('123456', 'Elva Gomez', '30/05/1995', '02'),
('369845', 'Alma Gozo', '09/01/1997', '03'),
('624853', 'Yenny Garcia', '25/06/1998', '07'),
('652314', 'Ana Chavez', '03/07/1998', '03'),
('654741', 'Maria Frias', '12/08/1997', '01'),
('654987', 'Juan Perez', '05/04/1996', '02'),
('741852', 'Alan Brito', '16/10/1997', '02'),
('951632', 'Carlos Vega', '30/05/1998', '01'),
('984632', 'Julio Rocha', '24/07/1997', '07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion1`
--

CREATE TABLE `relacion1` (
  `ci` varchar(9) NOT NULL,
  `usr` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `relacion1`
--

INSERT INTO `relacion1` (`ci`, `usr`) VALUES
('123456', '123456'),
('369845', '369845'),
('624853', '624853'),
('652314', '652314'),
('654741', '654741'),
('654987', '654987'),
('741852', '741852'),
('951632', '951632'),
('984632', '984632');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario` varchar(20) DEFAULT NULL,
  `ci` varchar(9) NOT NULL,
  `pass` varchar(15) DEFAULT NULL,
  `tipo` varchar(3) DEFAULT NULL,
  `color` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario`, `ci`, `pass`, `tipo`, `color`) VALUES
('elvagomez@umsa.bo', '123456', '123456', 'est', 'aqua'),
('almagozo@umsa.bo', '369845', '123456', 'est', 'white'),
('yennygarcia@umsa.bo', '624853', '123456', 'est', 'white'),
('anachavez@umsa.bo', '652314', '123456', 'est', 'white'),
('mariafrias@umsa.bo', '654741', '123456', 'doc', 'tan'),
('juanperez@umsa.bo', '654987', '123456', 'est', 'white'),
('alanbrito@umsa.bo', '741852', '123456', 'est', 'white'),
('carlosvega@umsa.bo', '951632', '123456', 'est', 'white'),
('juliorocha@umsa.bo', '984632', '123456', 'doc', 'white');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`cod_nota`),
  ADD KEY `ci` (`ci`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `relacion1`
--
ALTER TABLE `relacion1`
  ADD PRIMARY KEY (`ci`),
  ADD UNIQUE KEY `usr` (`usr`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ci`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`ci`) REFERENCES `usuario` (`ci`);

--
-- Filtros para la tabla `relacion1`
--
ALTER TABLE `relacion1`
  ADD CONSTRAINT `relacion1_ibfk_1` FOREIGN KEY (`ci`) REFERENCES `persona` (`ci`),
  ADD CONSTRAINT `relacion1_ibfk_2` FOREIGN KEY (`usr`) REFERENCES `usuario` (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
