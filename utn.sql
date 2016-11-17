-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2016 a las 04:23:05
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
CREATE DATABASE IF NOT EXISTS `utn` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `utn`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(4) NOT NULL,
  `seccion` varchar(10) DEFAULT NULL,
  `nombre` varchar(19) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `importado` tinyint(1) DEFAULT NULL,
  `pais` varchar(9) DEFAULT NULL,
  `foto` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `seccion`, `nombre`, `precio`, `fecha`, `importado`, `pais`, `foto`) VALUES
(1, 'FERRETERÍA', 'DESTORNILLADOR', '6.62', '2000-10-22', 0, 'ARGENTINA', NULL),
(2, 'CONFECCIÓN', 'TRAJE CABALLERO', '284.57', '2002-03-11', 1, 'ITALIA', NULL),
(3, 'JUGUETERÍA', 'COCHE TELEDIRIGIDO', '159.62', '2002-05-26', 1, 'MARRUECOS', NULL),
(4, 'DEPORTES', 'RAQUETA TENIS', '93.94', '2000-03-20', 1, 'USA', NULL),
(6, 'DEPORTES', 'MANCUERNAS', '60.00', '2000-09-13', 1, 'USA', NULL),
(7, 'CONFECCIÓN', 'SERRUCHO', '30.20', '2001-03-23', 1, 'FRANCIA', NULL),
(8, 'JUGUETERÍA', 'CORREPASILLOS', '103.36', '2000-04-11', 1, 'JAPÓN', NULL),
(9, 'CONFECCIÓN', 'PANTALÓN SEÑORA', '174.20', '2000-01-10', 1, 'MARRUECOS', NULL),
(10, 'JUGUETERÍA', 'CONSOLA VIDEO', '442.54', '2002-09-24', 1, 'USA', NULL),
(11, 'CERÁMICA', 'TUBOS', '168.43', '2000-02-04', 1, 'CHINA', NULL),
(12, 'FERRETERÍA', 'LLAVE INGLESA', '24.36', '2001-05-23', 1, 'USA', NULL),
(13, 'CONFECCIÓN', 'CAMISA CABALLERO', '67.13', '2002-08-11', 0, 'ARGENTINA', NULL),
(14, 'JUGUETERÍA', 'TREN ELÉCTRICO', '1505.37', '2001-07-03', 1, 'JAPÓN', NULL),
(15, 'CERÁMICA', 'PLATO DECORATIVO', '54.01', '2000-06-07', 1, 'CHINA', NULL),
(16, 'FERRETERÍA', 'ALICATES', '6.72', '2000-04-17', 1, 'ITALIA', NULL),
(17, 'JUGUETERÍA', 'MUÑECA ANDADORA', '105.03', '2001-01-04', 0, 'ARGENTINA', NULL),
(18, 'DEPORTES', 'PISTOLA OLÍMPICA', '46.73', '2001-02-02', 1, 'SUECIA', NULL),
(19, 'CONFECCIÓN', 'BLUSA SRA.', '101.06', '2000-03-18', 1, 'CHINA', NULL),
(20, 'CERÁMICA', 'JUEGO DE TE', '43.28', '2001-01-15', 1, 'CHINA', NULL),
(21, 'CERÁMICA', 'CENICERO', '19.78', '2001-07-02', 1, 'JAPÓN', NULL),
(22, 'FERRETERÍA', 'MARTILLO', '11.32', '2001-09-04', 0, 'ARGENTINA', NULL),
(23, 'CONFECCIÓN', 'CAZADORA PIEL', '522.69', '2001-07-10', 1, 'ITALIA', NULL),
(24, 'DEPORTES', 'BALÓN RUGBY', '111.64', '2000-11-11', 1, 'USA', NULL),
(25, 'DEPORTES', 'BALÓN BALONCESTO', '75.21', '2001-06-25', 1, 'JAPÓN', NULL),
(26, 'JUGUETERÍA', 'FUERTE DE SOLDADOS', '143.70', '2000-11-25', 1, 'JAPÓN', NULL),
(27, 'CONFECCIÓN', 'ABRIGO CABALLERO', '500000.00', '2002-04-05', 1, 'ITALIA', NULL),
(28, 'DEPORTES', 'BALÓN FÚTBOL', '43.91', '2002-07-04', 0, 'ARGENTINA', NULL),
(29, 'CONFECCIÓN', 'ABRIGO SRA', '360.06', '2001-05-03', 1, 'MARRUECOS', NULL),
(30, 'FERRETERÍA', 'DESTORNILLADOR', '9.84', '2002-02-20', 1, 'FRANCIA', NULL),
(31, 'JUGUETERÍA', 'PISTOLA CON SONIDOS', '57.25', '2001-04-15', 0, 'ARGENTINA', NULL),
(32, 'DEPORTES', 'CRONÓMETRO', '439.17', '2002-01-03', 1, 'USA', NULL),
(33, 'CERÁMICA', 'MACETA', '29.04', '2000-02-23', 0, 'ARGENTINA', NULL),
(34, 'OFICINA', 'PIE DE LÁMPARA', '39.76', '2001-05-27', 1, 'TURQUÍA', NULL),
(35, 'FERRETERÍA', 'LIMA GRANDE', '22.02', '2002-08-10', 0, 'ARGENTINA', NULL),
(36, 'FERRETERÍA', 'JUEGO DE BROCAS', '15.00', '2002-07-04', 1, 'TAIWÁN', NULL),
(37, 'CONFECCIÓN', 'CINTURÓN DE PIEL', '4.33', '2002-05-12', 0, 'ARGENTINA', NULL),
(38, 'DEPORTES', 'CAÑA DE PESCA', '270.00', '2000-02-14', 1, 'USA', NULL),
(39, 'CERÁMICA', 'JARRA CHINA', '127.77', '2002-09-02', 1, 'CHINA', NULL),
(40, 'DEPORTES', 'BOTA ALPINISMO', '144.00', '2002-05-05', 0, 'ARGENTINA', NULL),
(41, 'DEPORTES', 'PALAS DE PING PONG', '21.60', '2002-02-02', 0, 'ARGENTINA', NULL),
(45, 'DEPORTES', 'ARCO', '100.00', '0000-00-00', 0, 'ARGENTINA', ''),
(46, 'CERÁMICA', 'ESTATUILLA', '80.45', '0000-00-00', 1, 'EEUU', NULL),
(49, 'OFICINA', 'Testeo', '10.50', '0000-00-00', 1, 'TAIWAN', NULL);

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
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
