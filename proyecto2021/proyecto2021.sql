-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2021 a las 00:18:45
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto2021`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_com` bigint(25) NOT NULL,
  `id_pub_com` bigint(20) NOT NULL,
  `id_usu_com` bigint(11) NOT NULL,
  `coment` varchar(3500) NOT NULL,
  `solucion` varchar(7999) DEFAULT NULL,
  `fecha_com` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `likes` bigint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dimension_cliente`
--

CREATE TABLE `dimension_cliente` (
  `id_cliente` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `mensaje` varchar(300) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dimension_cliente`
--

INSERT INTO `dimension_cliente` (`id_cliente`, `nombre`, `correo`, `telefono`, `mensaje`, `fecha_registro`) VALUES
(2, 'nombre', 'catalina08delgado@gmail.com', 3135483198, 'hola', '2021-06-15 01:10:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lenguajes`
--

CREATE TABLE `lenguajes` (
  `codigo` int(10) NOT NULL,
  `nombre_lenguaje` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lenguajes`
--

INSERT INTO `lenguajes` (`codigo`, `nombre_lenguaje`) VALUES
(0, 'Assembly'),
(1, 'Basic'),
(2, 'C'),
(3, 'C#'),
(4, 'C++'),
(5, 'Cobol'),
(6, 'Dart'),
(7, 'Elixir'),
(8, 'Fortran'),
(9, 'Go'),
(10, 'Haskell'),
(11, 'HTML-CSS'),
(12, 'Java'),
(13, 'JavaScript'),
(14, 'Kotlin'),
(15, 'Lisp'),
(16, 'Lua'),
(17, 'Pascal'),
(18, 'Perl'),
(19, 'PHP'),
(20, 'Python'),
(21, 'Ruby'),
(22, 'Rust'),
(23, 'SQL'),
(24, 'swift');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` bigint(11) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `lenguajes` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `id_pub` bigint(20) NOT NULL,
  `ejercicio` varchar(3500) NOT NULL,
  `solucion` varchar(7999) DEFAULT NULL,
  `id_usu_pub` bigint(11) NOT NULL,
  `fecha_pub` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id_respuesta` bigint(28) NOT NULL,
  `id_com_res` bigint(25) NOT NULL,
  `id_usu_res` bigint(11) NOT NULL,
  `respuesta` varchar(3500) NOT NULL,
  `resp_cod` varchar(4000) DEFAULT NULL,
  `likes` bigint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` bigint(11) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `nombre_usuario` varchar(18) NOT NULL,
  `contrasenia` varchar(100) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `codigo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `correo`, `nombre_usuario`, `contrasenia`, `fecha_registro`, `codigo`) VALUES
(15, 'hola@hola', 't', '4d186321c1a7f0f354b297e8914ab2', '2021-07-06 19:36:07', 'USER'),
(17, 'c@c', 'c', '202cb962ac59075b964b07152d234b70', '2021-07-06 19:41:42', 'USER'),
(18, 'f@f', 'hytgrfedw', '827ccb0eea8a706c4c34a16891f84e7b', '2021-07-12 20:52:30', 'USER');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_com`),
  ADD KEY `id_pub_com` (`id_pub_com`),
  ADD KEY `id_usu_com` (`id_usu_com`);

--
-- Indices de la tabla `dimension_cliente`
--
ALTER TABLE `dimension_cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`id_pub`),
  ADD KEY `id_usu_pub` (`id_usu_pub`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id_respuesta`),
  ADD KEY `id_com_res` (`id_com_res`),
  ADD KEY `id_usu_res` (`id_usu_res`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_com` bigint(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dimension_cliente`
--
ALTER TABLE `dimension_cliente`
  MODIFY `id_cliente` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `id_pub` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_pub_com`) REFERENCES `publicacion` (`id_pub`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_usu_com`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD CONSTRAINT `perfil_ibfk_1` FOREIGN KEY (`id_perfil`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`id_usu_pub`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `respuesta_ibfk_1` FOREIGN KEY (`id_com_res`) REFERENCES `comentarios` (`id_com`),
  ADD CONSTRAINT `respuesta_ibfk_2` FOREIGN KEY (`id_usu_res`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
