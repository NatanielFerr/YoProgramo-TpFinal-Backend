-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2023 a las 22:57:53
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
-- Base de datos: `nataniel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cvs`
--

CREATE TABLE `cvs` (
  `id` int(11) NOT NULL,
  `anio_derechos` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `personaid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cvs`
--

INSERT INTO `cvs` (`id`, `anio_derechos`, `link`, `nombre`, `personaid`) VALUES
(1, '2023', './assets/img/cloudy.jpg', 'cv', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educaciones`
--

CREATE TABLE `educaciones` (
  `id` int(11) NOT NULL,
  `descripcion` tinytext DEFAULT NULL,
  `fin` date DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `institucion` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `nivel` varchar(255) NOT NULL,
  `personaid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `educaciones`
--

INSERT INTO `educaciones` (`id`, `descripcion`, `fin`, `img`, `inicio`, `institucion`, `link`, `nivel`, `personaid`) VALUES
(3, 'hola como te va', '2023-04-20', './assets/img/html-5-logo-svgrepo-com.svg', '2023-04-28', '', NULL, 'html', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencias`
--

CREATE TABLE `experiencias` (
  `id` int(11) NOT NULL,
  `actual` bit(1) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `descripcion_cargo` tinytext DEFAULT NULL,
  `fin` date DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `personaid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `experiencias`
--

INSERT INTO `experiencias` (`id`, `actual`, `cargo`, `descripcion_cargo`, `fin`, `inicio`, `link`, `logo`, `nombre`, `personaid`) VALUES
(4, b'1', 'ef', 'soy gerente de ml', NULL, '2023-04-13', '', './assets/img/html-5-logo-svgrepo-com.svg', 'html', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--

CREATE TABLE `habilidades` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `personaid` bigint(20) DEFAULT NULL,
  `porcentaje` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `habilidades`
--

INSERT INTO `habilidades` (`id`, `logo`, `nombre`, `personaid`, `porcentaje`) VALUES
(1, './assets/img/html-5-logo-svgrepo-com.svg', 'html', 1, 76);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `contrasenia` varchar(255) DEFAULT NULL,
  `email` tinytext DEFAULT NULL,
  `imagen` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `sobre_mi` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `apellido`, `banner`, `contrasenia`, `email`, `imagen`, `nombre`, `sobre_mi`, `titulo`) VALUES
(1, 'Ferreyra', './assets/img/cloudy.jpg', 'user', 'nataniel.ferreyra15@gmail.com', './assets/img/Nataniel.F- (6).png', 'Nataniel', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem tempora expedita officiis cupiditate, accusamus quasi! Ullam id, inventore eveniet accusantium asperiores, maiores quas magnam quasi odio ut doloremque cumque. Sapiente.', 'Full Stack Developer Jr');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_cvs`
--

CREATE TABLE `personas_cvs` (
  `persona_id` bigint(20) NOT NULL,
  `cvs_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_educaciones`
--

CREATE TABLE `personas_educaciones` (
  `persona_id` bigint(20) NOT NULL,
  `educaciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_experiencias`
--

CREATE TABLE `personas_experiencias` (
  `persona_id` bigint(20) NOT NULL,
  `experiencias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_habilidades`
--

CREATE TABLE `personas_habilidades` (
  `persona_id` bigint(20) NOT NULL,
  `habilidades_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_proyectos`
--

CREATE TABLE `personas_proyectos` (
  `persona_id` bigint(20) NOT NULL,
  `proyectos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_redes`
--

CREATE TABLE `personas_redes` (
  `persona_id` bigint(20) NOT NULL,
  `redes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `descripcion` tinytext DEFAULT NULL,
  `fin` date DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `personaid` bigint(20) DEFAULT NULL,
  `proyecto` varchar(255) NOT NULL,
  `tecnologia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `descripcion`, `fin`, `inicio`, `link`, `logo`, `personaid`, `proyecto`, `tecnologia`) VALUES
(2, 'uyuyuyu', '2023-04-11', '2023-04-19', NULL, '', 1, 'uiui', 'Unl app');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `red`
--

CREATE TABLE `red` (
  `id` int(11) NOT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `personaid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `red`
--

INSERT INTO `red` (`id`, `denominacion`, `link`, `logo`, `personaid`) VALUES
(4, 'Linkedin', 'https://www.linkedin.com/in/nataniel-alexandro-ferreyra-kus-347385246/', 'instagram', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cvs`
--
ALTER TABLE `cvs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKixl6bqyhhxc9lckdt1ruymuog` (`personaid`);

--
-- Indices de la tabla `educaciones`
--
ALTER TABLE `educaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6heheq1x7m57hvjhxx9vn4629` (`personaid`);

--
-- Indices de la tabla `experiencias`
--
ALTER TABLE `experiencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKljhhng3lt9oefydsh4bx1b9y9` (`personaid`);

--
-- Indices de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKm9puahaofmykwo3o7opt2346t` (`personaid`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personas_cvs`
--
ALTER TABLE `personas_cvs`
  ADD UNIQUE KEY `UK_67ingjjm3w9rbhblq4cl3rwm9` (`cvs_id`),
  ADD KEY `FK5w9cbmis9c8h7j3vfblffioiy` (`persona_id`);

--
-- Indices de la tabla `personas_educaciones`
--
ALTER TABLE `personas_educaciones`
  ADD UNIQUE KEY `UK_ih0huvu68xhj785qq0k6rpoa2` (`educaciones_id`),
  ADD KEY `FKj2oii3uvfw41j2twn6n8labvr` (`persona_id`);

--
-- Indices de la tabla `personas_experiencias`
--
ALTER TABLE `personas_experiencias`
  ADD UNIQUE KEY `UK_q797c723btio5yjwasd9abce3` (`experiencias_id`),
  ADD KEY `FKkvo1hqgiitlxw18aallhx2t6h` (`persona_id`);

--
-- Indices de la tabla `personas_habilidades`
--
ALTER TABLE `personas_habilidades`
  ADD UNIQUE KEY `UK_ng5oeyftv31ctvd9gtdxasrfk` (`habilidades_id`),
  ADD KEY `FKeemtq6h8jy8hb0lpjdmb1mpmf` (`persona_id`);

--
-- Indices de la tabla `personas_proyectos`
--
ALTER TABLE `personas_proyectos`
  ADD UNIQUE KEY `UK_hm2vfqbadnkkr1bgvhgopi3ab` (`proyectos_id`),
  ADD KEY `FKqtvgk1k4lsbflncjqq0keqxes` (`persona_id`);

--
-- Indices de la tabla `personas_redes`
--
ALTER TABLE `personas_redes`
  ADD UNIQUE KEY `UK_evpr737errcicxi2q32ur3kao` (`redes_id`),
  ADD KEY `FK81f0nghvni07erofvuc6krtic` (`persona_id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjyarsvl225wrfeo83wtkax2nb` (`personaid`);

--
-- Indices de la tabla `red`
--
ALTER TABLE `red`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5irjnk63twi0t2wyvr35dfa1q` (`personaid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cvs`
--
ALTER TABLE `cvs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `educaciones`
--
ALTER TABLE `educaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `experiencias`
--
ALTER TABLE `experiencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `red`
--
ALTER TABLE `red`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cvs`
--
ALTER TABLE `cvs`
  ADD CONSTRAINT `FKixl6bqyhhxc9lckdt1ruymuog` FOREIGN KEY (`personaid`) REFERENCES `personas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `educaciones`
--
ALTER TABLE `educaciones`
  ADD CONSTRAINT `FK6heheq1x7m57hvjhxx9vn4629` FOREIGN KEY (`personaid`) REFERENCES `personas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `experiencias`
--
ALTER TABLE `experiencias`
  ADD CONSTRAINT `FKljhhng3lt9oefydsh4bx1b9y9` FOREIGN KEY (`personaid`) REFERENCES `personas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `habilidades`
--
ALTER TABLE `habilidades`
  ADD CONSTRAINT `FKm9puahaofmykwo3o7opt2346t` FOREIGN KEY (`personaid`) REFERENCES `personas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `personas_cvs`
--
ALTER TABLE `personas_cvs`
  ADD CONSTRAINT `FK5w9cbmis9c8h7j3vfblffioiy` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`),
  ADD CONSTRAINT `FKldy7kibcqf8i410a0gmitvkm6` FOREIGN KEY (`cvs_id`) REFERENCES `cvs` (`id`);

--
-- Filtros para la tabla `personas_educaciones`
--
ALTER TABLE `personas_educaciones`
  ADD CONSTRAINT `FKj2oii3uvfw41j2twn6n8labvr` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`),
  ADD CONSTRAINT `FKsm76vqi4gho0uogiaix59pg1i` FOREIGN KEY (`educaciones_id`) REFERENCES `educaciones` (`id`);

--
-- Filtros para la tabla `personas_experiencias`
--
ALTER TABLE `personas_experiencias`
  ADD CONSTRAINT `FKipbfljgfe98sqqejx2wc0qsu6` FOREIGN KEY (`experiencias_id`) REFERENCES `experiencias` (`id`),
  ADD CONSTRAINT `FKkvo1hqgiitlxw18aallhx2t6h` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`);

--
-- Filtros para la tabla `personas_habilidades`
--
ALTER TABLE `personas_habilidades`
  ADD CONSTRAINT `FKeemtq6h8jy8hb0lpjdmb1mpmf` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`),
  ADD CONSTRAINT `FKfpnvhyhehgjuuqriclbqym3nw` FOREIGN KEY (`habilidades_id`) REFERENCES `habilidades` (`id`);

--
-- Filtros para la tabla `personas_proyectos`
--
ALTER TABLE `personas_proyectos`
  ADD CONSTRAINT `FKir8lndxjarkkql78y8gas5fcm` FOREIGN KEY (`proyectos_id`) REFERENCES `proyectos` (`id`),
  ADD CONSTRAINT `FKqtvgk1k4lsbflncjqq0keqxes` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`);

--
-- Filtros para la tabla `personas_redes`
--
ALTER TABLE `personas_redes`
  ADD CONSTRAINT `FK5utuk3heqbwlcthso3fujuevp` FOREIGN KEY (`redes_id`) REFERENCES `red` (`id`),
  ADD CONSTRAINT `FK81f0nghvni07erofvuc6krtic` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`);

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `FKjyarsvl225wrfeo83wtkax2nb` FOREIGN KEY (`personaid`) REFERENCES `personas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `red`
--
ALTER TABLE `red`
  ADD CONSTRAINT `FK5irjnk63twi0t2wyvr35dfa1q` FOREIGN KEY (`personaid`) REFERENCES `personas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
