-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2024 a las 18:19:48
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
-- Base de datos: `planos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_compras`
--

CREATE TABLE `historial_compras` (
  `id_compra` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `tipo_plano` varchar(50) NOT NULL,
  `precio_plano` decimal(10,2) NOT NULL,
  `monto_pagado` decimal(10,2) NOT NULL,
  `cambio` decimal(10,2) NOT NULL,
  `fecha_hora` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planos_residenciales`
--

CREATE TABLE `planos_residenciales` (
  `id_planos` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `habitaciones` int(11) NOT NULL,
  `niveles` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `tamano` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `vehiculos` int(11) NOT NULL,
  `detalles` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `planos_residenciales`
--

INSERT INTO `planos_residenciales` (`id_planos`, `nombre`, `habitaciones`, `niveles`, `descripcion`, `tamano`, `precio`, `vehiculos`, `detalles`) VALUES
(1, 'Casa Tipo LOFT 9 X 16', 2, 2, 'Ideal para familias pequeñas, cuenta con un diseño contemporáneo y funcional.', '144 m²', 150000.00, 1, NULL),
(2, 'Casa Moderna 10 X 20', 3, 1, 'Perfecta para un estilo de vida moderno, con espacios amplios y luminosos.', '200 m²', 250000.00, 2, NULL),
(3, 'Casa Familiar 12 X 18', 4, 2, 'Espacios diseñados para el confort familiar, ideal para la convivencia.', '216 m²', 300000.00, 2, NULL),
(4, 'Casa Minimalista 8 X 16', 2, 1, 'Diseño minimalista que maximiza los espacios.', '128 m²', 120000.00, 1, NULL),
(5, 'Casa Estilo Ranchero 15 X 25', 5, 1, 'Ideal para áreas rurales, combina confort con estilo campestre.', '375 m²', 400000.00, 3, NULL),
(6, 'Casa Eco-Amigable 11 X 22', 3, 2, 'Diseñada para ser sostenible y respetuosa con el medio ambiente.', '242 m²', 280000.00, 2, NULL),
(7, 'Casa Contemporánea 14 X 28', 4, 3, 'Combina elegancia y funcionalidad en cada rincón.', '392 m²', 450000.00, 4, NULL),
(8, 'Casa de Playa 13 X 30', 6, 2, 'Perfecta para disfrutar de la brisa marina y los días soleados.', '390 m²', 500000.00, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `numero_telefono` varchar(15) DEFAULT NULL,
  `correo_electronico` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `usuario`, `password`, `numero_telefono`, `correo_electronico`) VALUES
(4, 'Ediel Solis', 'ediel', '123', '1234567890', 'ediel.solis@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historial_compras`
--
ALTER TABLE `historial_compras`
  ADD PRIMARY KEY (`id_compra`);

--
-- Indices de la tabla `planos_residenciales`
--
ALTER TABLE `planos_residenciales`
  ADD PRIMARY KEY (`id_planos`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historial_compras`
--
ALTER TABLE `historial_compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `planos_residenciales`
--
ALTER TABLE `planos_residenciales`
  MODIFY `id_planos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
