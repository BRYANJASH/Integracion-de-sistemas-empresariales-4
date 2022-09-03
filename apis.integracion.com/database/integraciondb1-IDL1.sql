-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-09-2022 a las 07:41:14
-- Versión del servidor: 8.0.30
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integraciondb1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` char(36) NOT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `tipo_documento` varchar(20) DEFAULT NULL,
  `numero_documento` varchar(20) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellido_paterno` varchar(50) DEFAULT NULL,
  `apellido_materno` varchar(50) DEFAULT NULL,
  `razon_social` varchar(150) DEFAULT NULL,
  `direccion` varchar(256) DEFAULT NULL,
  `ubigeo` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `tipo`, `tipo_documento`, `numero_documento`, `nombres`, `apellido_paterno`, `apellido_materno`, `razon_social`, `direccion`, `ubigeo`, `created_at`, `updated_at`, `deleted_at`) VALUES
('90246db0-2b3b-11ed-8236-fd3e78c7a1b7', 'PERSONA', 'DNI', '48787478', 'bryan', 'nolasco', 'mandujano', NULL, 'av huallaga 997', '12003', '2022-09-03 08:50:33', '2022-09-03 08:50:33', NULL),
('cf226f00-2b42-11ed-9847-f7375555cf25', 'PERSONA', 'DNI', '44797078', 'kevin', 'vidal', 'almonacid', NULL, 'jr progreso 123', '12003', '2022-09-03 09:42:26', '2022-09-03 09:42:26', NULL),
('f6307760-2b42-11ed-aada-bd1e46c2e51f', 'PERSONA', 'DNI', '44805278', 'jorge', 'Ruiz', 'martines', NULL, 'av grau 632', '12003', '2022-09-03 09:43:31', '2022-09-03 09:43:31', NULL),
('f8cd2134-186e-11ed-861d-0242ac120002', 'PERSONA', 'DNI', '48787478', 'Luis', 'curo', 'Salvatierra', NULL, 'Jr los alamos 123', '12003', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
