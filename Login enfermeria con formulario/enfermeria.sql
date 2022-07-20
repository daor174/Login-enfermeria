-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-07-2022 a las 05:44:11
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `enfermeria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rut_paciente`
--

CREATE TABLE `rut_paciente` (
  `RUT` varchar(13) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` varchar(3) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `nacionalidad` varchar(30) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `estadocivil` varchar(15) NOT NULL,
  `fechanac` date NOT NULL,
  `prevision` varchar(20) NOT NULL,
  `seguroanexo` varchar(40) NOT NULL,
  `nivelescolaridad` varchar(20) NOT NULL,
  `pueblooriginario` varchar(40) NOT NULL,
  `certificado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rut_paciente`
--

INSERT INTO `rut_paciente` (`RUT`, `nombre`, `apellido`, `edad`, `sexo`, `nacionalidad`, `direccion`, `telefono`, `estadocivil`, `fechanac`, `prevision`, `seguroanexo`, `nivelescolaridad`, `pueblooriginario`, `certificado`) VALUES
('20.805.050-8', 'victoria', 'conteras', '20', 'F', 'chilena', 'Londres 111', '+56955555555', 'soltera', '2022-07-14', 'fonasa', 'melt', 'media', 'no', 'no.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'default.svg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `photo`) VALUES
(1, 'ardianta', 'ardianta_pargo@yahoo.co.id', '$2y$10$HIEq2w.8Et9RsJmY4TMKye4aVCxOd9xJTOtG4vyOEmo.GIBxaPQHK', 'Ardianta Pargo', 'default.svg'),
(3, 'petanikode', 'info@petanikode.com', '$2y$10$uXa.Hz9rr8gkv4ztaqf6FO84iW64gXHbeyEOy1tIQ5wmqMjTk0yQa', 'Petani Kode', 'default.svg'),
(4, 'victoria', 'vickycar2001@gmail.com', '$2y$10$PdmWoslyDgZT2QisC/E3SuiRBDe5j89118y8mmUX7InejHynyUWg2', 'enfermera', 'default.svg'),
(5, '', '', '$2y$10$EPYt006qeycM7NOFZccvrOCMem7Xygsy1gRYyIWfjc3rqQJJP7v8S', 'fsdfd', 'default.svg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `rut_paciente`
--
ALTER TABLE `rut_paciente`
  ADD PRIMARY KEY (`RUT`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
