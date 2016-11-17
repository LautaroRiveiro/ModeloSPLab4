-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2016 a las 04:23:29
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `utn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `perfil` varchar(15) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `sexo`, `perfil`, `password`) VALUES
(1, 'Administrador', 'Administrador', 'admin@admin.com', 'Masculino', 'administrador', '1234'),
(2, 'Comprador', 'Freeman', 'comprador@comprador.com', 'Masculino', 'comprador', '1234'),
(3, 'Eric', 'Daniels', 'edaniels2@com.com', 'Masculino', 'comprador', '1234'),
(4, 'Lisa', 'Burke', 'lburke3@ezinearticles.com', 'Femenino', 'comprador', '1234'),
(5, 'Julie', 'Mccoy', 'empleado@empleado.com', 'Femenino', 'comprador', '1234'),
(6, 'Robert', 'Bell', 'rbell5@fc2.com', 'Masculino', 'comprador', '1234'),
(7, 'Vendedor', 'Harris', 'vendedor@vendedor.com', 'Masculino', 'vendedor', '1234'),
(8, 'Judy', 'Rossi', 'jross7@freewebs.com.br', 'Masculino', 'comprador', '1234'),
(9, 'Mildred', 'Lane', 'mlane8@wikispaces.com', 'Femenino', 'vendedor', '1234'),
(10, 'Howard', 'Collins', 'hcollins9@tamu.edu', 'Masculino', 'vendedor', '1234'),
(11, 'Nicole', 'Little', 'nlittlea@oakley.com', 'Femenino', 'vendedor', '1234'),
(12, 'Phyllis', 'Robertson', 'probertsonb@sogou.com', 'Femenino', 'vendedor', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
