-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-01-2022 a las 15:18:26
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_persona`
--
CREATE DATABASE IF NOT EXISTS `bd_persona` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `bd_persona`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_persona`
--

CREATE TABLE `tbl_persona` (
  `id` int(11) NOT NULL,
  `nombre_persona` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido_persona` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `dni_persona` varchar(10) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `edad_persona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `tbl_persona`
--

INSERT INTO `tbl_persona` (`id`, `nombre_persona`, `apellido_persona`, `dni_persona`, `edad_persona`) VALUES
(1, 'Raul', 'Santacruz', '48249931E', 20),
(2, 'Iker', 'Santacruz', '48249932F', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_telef`
--

CREATE TABLE `tbl_telef` (
  `id_telf` int(11) NOT NULL,
  `num_telf` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `tbl_telef`
--

INSERT INTO `tbl_telef` (`id_telf`, `num_telf`, `id_persona`) VALUES
(1, 123456789, 1),
(2, 123456789, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_persona`
--
ALTER TABLE `tbl_persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_telef`
--
ALTER TABLE `tbl_telef`
  ADD PRIMARY KEY (`id_telf`),
  ADD KEY `id_persona` (`id_persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_persona`
--
ALTER TABLE `tbl_persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_telef`
--
ALTER TABLE `tbl_telef`
  MODIFY `id_telf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_telef`
--
ALTER TABLE `tbl_telef`
  ADD CONSTRAINT `tbl_telef_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `tbl_persona` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
