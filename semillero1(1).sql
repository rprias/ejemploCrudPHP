-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-05-2024 a las 04:26:08
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `semillero1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidad`
--

CREATE TABLE `entidad` (
  `idEntidad` int(11) NOT NULL,
  `idTipoDocumento` int(11) DEFAULT NULL,
  `NIT` bigint(20) NOT NULL,
  `nombreEntidad` varchar(45) NOT NULL,
  `correoEntidad` varchar(45) NOT NULL,
  `telefonoEntidad` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `entidad`
--

INSERT INTO `entidad` (`idEntidad`, `idTipoDocumento`, `NIT`, `nombreEntidad`, `correoEntidad`, `telefonoEntidad`) VALUES
(2, 6, 899999034, 'SENA', 'sena@sena.edu.co', '6015461600 '),
(3, 6, 89999999, 'ICA', 'algo@ica.gov.co', '60134567891'),
(4, 6, 89900000, 'DELL', 'dell@dell.com', '6015678912'),
(6, 4, 9877777777, 'IVANTI', 'ivanti@sena.edu.co', '23423423'),
(7, 6, 89233455, 'Proesystem', 'prove@gmail.com', '6012344566'),
(14, 6, 8900078, 'Cun', 'cun@gmail.com', '3077070');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL,
  `nombreRol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idRol`, `nombreRol`) VALUES
(1, 'Administrador'),
(3, 'Aprendiz'),
(9, 'Coordinador'),
(7, 'Desarrollador'),
(4, 'Instructor'),
(6, 'Lider Sennova');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE `tipodocumento` (
  `idTipoDocumento` int(11) NOT NULL,
  `tipoDocumento` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tipodocumento`
--

INSERT INTO `tipodocumento` (`idTipoDocumento`, `tipoDocumento`) VALUES
(4, 'Cedula de Ciudadania'),
(5, 'Tarjeta de Identidad'),
(6, 'NIT'),
(8, 'NIUP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `idTipoDocumento` int(11) DEFAULT NULL,
  `documentoUsuario` bigint(20) NOT NULL,
  `nombreUsuario` varchar(45) NOT NULL,
  `apellidoUsuario` varchar(45) NOT NULL,
  `correoUsuario` varchar(45) NOT NULL,
  `telefonoUsuario` varchar(25) NOT NULL,
  `foto` varchar(125) NOT NULL,
  `claveUsuario` varchar(45) DEFAULT NULL,
  `idRol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `idTipoDocumento`, `documentoUsuario`, `nombreUsuario`, `apellidoUsuario`, `correoUsuario`, `telefonoUsuario`, `foto`, `claveUsuario`, `idRol`) VALUES
(1, 4, 80160531, 'Nelson Hernan', 'Rodriguez Ayala', 'nhrodrigueza@misena.edu.co', '3204386199', 'foto/80160531.jpg', '123456', 1),
(3, 4, 11111111, 'Juan', 'Ramirez', 'juan@gmail.com', '320987654', 'foto/11111111.jpg', '123456', 4),
(4, 4, 52345678, 'Kely', 'Enciso Tellez', 'kely@gmail.com', '320224567', 'foto/52345678.jpg', '123456', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entidad`
--
ALTER TABLE `entidad`
  ADD PRIMARY KEY (`idEntidad`),
  ADD UNIQUE KEY `documentoUsuario_UNIQUE` (`NIT`),
  ADD KEY `idTipoDocumento` (`idTipoDocumento`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idRol`),
  ADD UNIQUE KEY `nombreRol_UNIQUE` (`nombreRol`);

--
-- Indices de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`idTipoDocumento`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `documentoUsuario_UNIQUE` (`documentoUsuario`),
  ADD KEY `fk_Usuario_Rol_idx` (`idRol`),
  ADD KEY `idTipoDocumento` (`idTipoDocumento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entidad`
--
ALTER TABLE `entidad`
  MODIFY `idEntidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `idTipoDocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entidad`
--
ALTER TABLE `entidad`
  ADD CONSTRAINT `entidad_ibfk_1` FOREIGN KEY (`idTipoDocumento`) REFERENCES `tipodocumento` (`idTipoDocumento`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_Rol` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idTipoDocumento`) REFERENCES `tipodocumento` (`idTipoDocumento`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
