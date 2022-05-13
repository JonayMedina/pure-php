-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-08-2020 a las 15:36:00
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `apirest`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointments`
--

CREATE TABLE `appointments` (
  `AppointmentId` int(11) NOT NULL,
  `PatientId` varchar(45) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `StartTime` varchar(45) DEFAULT NULL,
  `EndTime` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Reason` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `appointments`
--

INSERT INTO `appointments` (`AppointmentId`, `PatientId`, `Date`, `StartTime`, `EndTime`, `Status`, `Reason`) VALUES
(1, '1', '2020-06-09', '08:30:00', '09:00:00', 'Confirmada', 'El paciente presenta un leve dolor de espalda'),
(2, '2', '2020-06-10', '08:30:00', '09:00:00', 'Confirmada', 'Dolor en la zona lumbar '),
(3, '3', '2020-06-18', '09:00:00', '09:30:00', 'Confirmada', 'Dolor en el cuello');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patients`
--

CREATE TABLE `patients` (
  `PatientId` int(11) NOT NULL,
  `Dni` varchar(45) DEFAULT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Genero` varchar(45) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `patients`
--

INSERT INTO `patients` (`PatientId`, `Dni`, `Name`, `Address`, `Telefono`, `Genero`, `FechaNacimiento`, `Correo`) VALUES
(1, 'A000000001', 'Juan Carlos Medina', 'Calle de pruebas 1', '633281515', 'M', '1989-03-02', 'Paciente1@gmail.com'),
(2, 'B000000002', 'Daniel Rios', 'Calle de pruebas 2', '633281512', 'M', '1990-05-11', 'Paciente2@gmail.com'),
(3, 'C000000003', 'Marcela Dubon', 'Calle de pruebas 3', '633281511', 'F', '2000-07-22', 'Paciente3@gmail.com'),
(4, 'D000000004', 'Maria Mendez', 'Calle de pruebas 4', '633281516', 'F', '1980-01-01', 'Paciente4@gmail.com'),
(5, 'E000000005', 'Zamuel Valladares', 'Calle de pruebas 5', '633281519', 'M', '1985-12-15', 'Paciente5@gmail.com'),
(6, 'F000000006', 'Angel Rios', 'Calle de pruebas 6', '633281510', 'M', '1988-11-30', 'Paciente6@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`UserId`, `UserName`, `Password`, `Status`) VALUES
(1, 'usuario1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Activo'),
(2, 'usuario2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Activo'),
(3, 'usuario3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Activo'),
(4, 'usuario4@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Activo'),
(5, 'usuario5@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Activo'),
(6, 'usuario6@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Activo'),
(7, 'usuario7@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Inactivo'),
(8, 'usuario8@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Inactivo'),
(9, 'usuario9@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_token`
--

CREATE TABLE `users_token` (
  `TokenId` int(11) NOT NULL,
  `UserId` varchar(45) DEFAULT NULL,
  `Token` varchar(45) DEFAULT NULL,
  `Status` varchar(45) CHARACTER SET armscii8 DEFAULT NULL,
  `Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`AppointmentId`);

--
-- Indices de la tabla `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`PatientId`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- Indices de la tabla `users_token`
--
ALTER TABLE `users_token`
  ADD PRIMARY KEY (`TokenId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `appointments`
--
ALTER TABLE `appointments`
  MODIFY `AppointmentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `patients`
--
ALTER TABLE `patients`
  MODIFY `PatientId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `users_token`
--
ALTER TABLE `users_token`
  MODIFY `TokenId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;