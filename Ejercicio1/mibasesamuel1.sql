-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2021 a las 05:31:05
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mibasesamuel1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE `nota` (
  `ci` int(11) DEFAULT NULL,
  `sigla` char(7) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nota1` decimal(10,0) DEFAULT NULL,
  `nota2` decimal(10,0) DEFAULT NULL,
  `nota3` decimal(10,0) DEFAULT NULL,
  `notafinal` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`ci`, `sigla`, `nota1`, `nota2`, `nota3`, `notafinal`) VALUES
(9065168, 'INF-111', '30', '20', '15', '65'),
(9065168, 'INF-112', '20', '20', '30', '70'),
(9065168, 'INF-113', '30', '30', '20', '80'),
(9065168, 'INF-114', '20', '20', '15', '55'),
(9065168, 'INF-115', '20', '20', '20', '60'),
(9065168, 'INF-116', '30', '30', '25', '85'),
(9065168, 'LAB-111', '25', '30', '30', '85'),
(7984561, 'INF-111', '20', '25', '20', '65'),
(7984561, 'INF-112', '15', '30', '20', '65'),
(7984561, 'INF-113', '15', '15', '25', '55'),
(7984561, 'INF-114', '20', '25', '30', '75'),
(7984561, 'INF-115', '20', '10', '30', '60'),
(7984561, 'INF-116', '30', '20', '20', '70'),
(7984561, 'LAB-111', '20', '30', '30', '80'),
(4561237, 'INF-111', '20', '25', '25', '70'),
(4561237, 'INF-112', '15', '20', '25', '60'),
(4561237, 'INF-113', '20', '25', '25', '70'),
(4561237, 'INF-114', '20', '25', '30', '75'),
(4561237, 'INF-115', '20', '20', '35', '75'),
(4561237, 'INF-116', '20', '20', '20', '60'),
(4561237, 'LAB-111', '30', '30', '30', '90'),
(5829641, 'INF-111', '20', '20', '20', '60'),
(5829641, 'INF-112', '20', '25', '25', '70'),
(5829641, 'INF-113', '20', '25', '30', '75'),
(5829641, 'INF-114', '25', '20', '20', '65'),
(5829641, 'INF-115', '30', '30', '20', '80'),
(5829641, 'INF-116', '20', '20', '20', '60'),
(5829641, 'LAB-111', '25', '20', '20', '65'),
(9875462, 'INF-111', '20', '10', '25', '55'),
(9875462, 'INF-112', '20', '25', '20', '65'),
(9875462, 'INF-113', '10', '25', '30', '65'),
(9875462, 'INF-114', '25', '20', '20', '65'),
(9875462, 'INF-115', '30', '30', '20', '80'),
(9875462, 'INF-116', '20', '20', '20', '60'),
(9875462, 'LAB-111', '25', '20', '20', '65'),
(6543217, 'INF-111', '30', '20', '25', '75'),
(6543217, 'INF-112', '25', '25', '20', '70'),
(6543217, 'INF-113', '10', '25', '35', '70'),
(6543217, 'INF-114', '25', '20', '20', '65'),
(6543217, 'INF-115', '30', '20', '20', '70'),
(6543217, 'INF-116', '20', '20', '20', '60'),
(6543217, 'LAB-111', '25', '20', '20', '65'),
(12514307, 'INF-111', '30', '30', '20', '90'),
(12514307, 'INF-112', '20', '20', '20', '60'),
(12514307, 'INF-113', '25', '25', '10', '60');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ci` int(11) NOT NULL DEFAULT 0,
  `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `paterno` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `materno` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechanac` date DEFAULT NULL,
  `departamento` char(2) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ci`, `nombre`, `paterno`, `materno`, `fechanac`, `departamento`) VALUES
(4561237, 'Franz', 'Luque', 'Luque', '1995-10-19', '01'),
(5829641, 'Pedro', 'DElgadp', 'Delago', '1998-03-26', '03'),
(5986123, 'Cristian Turian', 'Castro', 'MAgnani', '1998-07-15', '05'),
(6543217, 'Royer', 'Alanis', 'Flores', '1994-07-10', '07'),
(7485962, 'Jorge Manuel', 'Singa', 'Silva', '1998-10-10', '08'),
(7984561, 'Indrack Asvins', 'Vega', 'Pacheco', '1997-09-10', '01'),
(9065168, 'Albert Jhonatan', 'Quisbert', 'Mujica', '1996-05-23', '02'),
(9875462, 'Erick', 'Churata', 'Luque', '1992-06-10', '06'),
(12345678, 'Juan', 'Perez', 'Gomez', '1970-02-01', '02'),
(12514307, 'Samuel Benjamin ', 'Cruz', 'Quino', '1997-06-14', '03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ci` int(11) DEFAULT NULL,
  `usuario` varchar(16) DEFAULT NULL,
  `contrasena` varchar(16) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ci`, `usuario`, `contrasena`, `rol`) VALUES
(12345678, 'jp', 'juan123', 0),
(9065168, 'albert', 'nickelodeon', 1),
(7984561, 'ivng', 'indrack123', 1),
(4561237, 'franzll', 'franz123', 1),
(12514307, 'sam', 'sam', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
  ADD KEY `FK_nota_persona` (`ci`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD KEY `FK_usuario_persona` (`ci`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `FK_nota_persona` FOREIGN KEY (`ci`) REFERENCES `persona` (`ci`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_usuario_persona` FOREIGN KEY (`ci`) REFERENCES `persona` (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
