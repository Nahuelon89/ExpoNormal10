-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-10-2023 a las 01:49:22
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `panda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `telefono_cliente` char(30) NOT NULL,
  `email_cliente` varchar(64) NOT NULL,
  `direccion_cliente` varchar(255) NOT NULL,
  `status_cliente` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `telefono_cliente`, `email_cliente`, `direccion_cliente`, `status_cliente`, `date_added`) VALUES
(2, 'Gabriela Leiva', '3764594935', 'gabvl@gmail.com', 'Moritan 2311', 1, '2023-10-18 04:43:32'),
(3, 'Aires Facundo', '3764525878', 'aires@culeao.com', 'zona roja', 1, '2023-10-18 04:48:11'),
(4, 'Leandro Villalba', '3765230488', 'lean@villalba.com', 'su casa', 1, '2023-10-18 05:21:34'),
(5, 'Mostrador', '3764123467', 'mostrador@mostrador.com.ar', 'local 1', 1, '2023-10-18 23:43:51'),
(6, 'fausto', '34975', 'fautsot@gmail.com', 'casa', 1, '2023-10-19 00:36:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `code`) VALUES
(1, 'US Dollar', '$', '2', ',', '.', 'USD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `id_detalle` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`id_detalle`, `numero_factura`, `id_producto`, `cantidad`, `precio_venta`) VALUES
(9, 2, 4, 4, 1000),
(10, 4, 6, 3, 30),
(7, 2, 4, 3, 1000),
(8, 3, 4, 3, 1000),
(11, 4, 8, 1, 100),
(12, 4, 7, 4, 20),
(13, 5, 7, 3, 20),
(14, 5, 4, 2, 1000),
(15, 5, 6, 4, 30),
(16, 6, 6, 1, 30),
(17, 6, 7, 1, 20),
(18, 6, 4, 1, 1000),
(19, 6, 8, 1, 100),
(20, 7, 4, 1, 1000),
(21, 7, 8, 1, 100),
(22, 7, 6, 1, 30),
(23, 8, 6, 1, 30),
(24, 8, 4, 31, 1000),
(25, 9, 6, 1, 30),
(26, 9, 7, 1, 20),
(27, 9, 4, 3, 1000),
(28, 10, 8, 1, 100),
(29, 10, 6, 1, 30),
(30, 10, 7, 1, 20),
(31, 10, 4, 1, 1000),
(32, 10, 9, 1, 8000),
(33, 10, 10, 1, 80000),
(34, 10, 11, 1, 333);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `total_venta` varchar(20) NOT NULL,
  `estado_factura` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id_factura`, `numero_factura`, `fecha_factura`, `id_cliente`, `id_vendedor`, `condiciones`, `total_venta`, `estado_factura`) VALUES
(5, 4, '2023-10-18 06:58:34', 3, 2, '3', '326.7', 1),
(3, 2, '2023-10-18 06:51:48', 2, 2, '1', '8470', 1),
(4, 3, '2023-10-18 06:53:25', 2, 2, '1', '3630', 1),
(6, 5, '2023-10-18 06:59:08', 3, 2, '4', '2637.8', 1),
(7, 6, '2023-10-18 07:01:08', 4, 2, '1', '1391.5', 1),
(8, 7, '2023-10-18 07:08:47', 4, 2, '4', '1367.3', 1),
(9, 8, '2023-10-18 23:55:47', 3, 2, '1', '37546.3', 1),
(10, 9, '2023-10-19 00:39:19', 3, 4, '1', '3690.5', 1),
(11, 10, '2023-10-19 00:53:42', 3, 5, '4', '108274.43', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `nombre_empresa` varchar(150) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `codigo_postal` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `impuesto` int(3) NOT NULL,
  `moneda` varchar(1) NOT NULL DEFAULT '$'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nombre_empresa`, `direccion`, `ciudad`, `codigo_postal`, `estado`, `telefono`, `email`, `logo_url`, `impuesto`, `moneda`) VALUES
(1, 'Soderia Scherf', 'Donde el diablo perdió el poncho', 'Posadas', '3300', 'Misiones', '3764515256', 'soderia@scherf.com', 'img/1697597470_1516640081_avatarr.jpg', 21, '$');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_producto` int(11) NOT NULL,
  `codigo_producto` char(20) NOT NULL,
  `nombre_producto` char(255) NOT NULL,
  `status_producto` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `precio_producto` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_producto`, `codigo_producto`, `nombre_producto`, `status_producto`, `date_added`, `precio_producto`) VALUES
(4, '1', 'Agua 20lt', 1, '2023-10-18 04:44:11', 1000),
(7, '2', 'Soda 1lt', 1, '2023-10-18 04:47:17', 20),
(6, '3', 'Soda 2lt', 1, '2023-10-18 04:44:48', 30),
(8, '10', 'Bidon', 1, '2023-10-18 05:22:09', 100),
(9, '5', 'Dispenser análogo', 1, '2023-10-18 07:46:40', 8000),
(10, '50', 'Dispenser eléctrico', 1, '2023-10-18 07:46:51', 80000),
(11, '44', 'rrerw', 1, '2023-10-19 00:49:52', 333);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp`
--

CREATE TABLE `tmp` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` int(11) NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `user_name` varchar(64) NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) NOT NULL COMMENT 'user''s email, unique',
  `date_added` datetime NOT NULL,
  `rol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `user_name`, `user_password_hash`, `user_email`, `date_added`, `rol`) VALUES
(1, 'Admin', 'Admin', 'admin', '$2y$10$5Se56VWP29j9cN2L/enF5OBgiq9bszT0Z5dGAqudVlmLXFmpIEURq', 'admin@admin.com', '2016-05-21 15:06:00', 'admin'),
(2, 'Nahuel', 'Malich', 'user', '$2y$10$EtiVSdCu5MqMQduC/spApOsqpdPQIeddtZl6PAeUabuUgck0v.VJ6', 'user@user.com', '2023-10-18 04:36:57', 'user'),
(3, 'Facundo', 'Aires', 'aires', '$2y$10$YNZCsT/9GUqR3ix14zvn4OWiY/0ZVswE686/xB6eS7PQWpmotUf0K', 'aires@aires.com', '2023-10-18 23:57:01', 'user'),
(4, 'fausto', 'gARCETE', 'FAUSTO', '$2y$10$pgZqJZFZCbKRYTN.nBf.ZeJER8PIo7ZQVdRSpXnPngZzzgOrqE8gS', 'fasuto@gmail.com', '2023-10-19 00:37:41', 'user'),
(5, 'pepe', 'ipier', 'pepe', '$2y$10$u1p0wH1y/W.hcgZWeNOcnusrmQS77g3C38Cqil0WQ/K9icVTH/zS.', 'zszzsd@fs.com', '2023-10-19 00:51:13', 'user');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `codigo_producto` (`nombre_cliente`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id_factura`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `codigo_producto` (`codigo_producto`);

--
-- Indices de la tabla `tmp`
--
ALTER TABLE `tmp`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tmp`
--
ALTER TABLE `tmp`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
