-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2021 a las 22:33:17
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `ISBM` int(11) NOT NULL,
  `Portada` varchar(50) NOT NULL,
  `Libro` varchar(50) NOT NULL,
  `Genero` varchar(15) NOT NULL,
  `Autor` varchar(25) NOT NULL,
  `Año Public` int(4) NOT NULL,
  `Disponible` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`ISBM`, `Portada`, `Libro`, `Genero`, `Autor`, `Año Public`, `Disponible`) VALUES
(1, 'Franken.jpg', 'Frankenstein', 'Ciencia Ficción', 'Mary Shelley', 1818, 'Sí'),
(2, 'Cerditos.jpg', 'Los tres cerditos', 'Cuento', 'Yukiko Mari', 1852, 'Sí'),
(3, 'Baldor.jpg', 'Álgebra de Baldor', 'Matemática', ' Aurelio Baldor', 2017, 'No'),
(4, 'Holmes.jpg', 'Las aventuras de Sherlock Holmes', 'Misterio', 'Arthur Conan Doyle', 1892, 'Sí'),
(5, 'HPfuego.jpg', 'Harry Potter y el cáliz de fuego', 'Novela', 'J. K. Rowling', 2000, 'No'),
(6, 'HPpiedra.jpg', 'Harry Potter y la piedra filosofal', 'Novela', 'J. K. Rowling', 1997, 'No'),
(7, 'Lupin.jpg', 'Arsenio Lupin', 'Ciencia Ficción', ' Maurice Leblanc', 1950, 'Sí'),
(8, 'Tail.jpg', 'Fairy Tail', 'Manga', 'Hiro Mashima', 2006, 'Sí');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`ISBM`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `ISBM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
