-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2024 a las 19:52:05
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
-- Base de datos: `agconsultorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `idAgenda` int(11) NOT NULL,
  `idMedico` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `anio` int(11) NOT NULL,
  `diasHabiles` varchar(255) NOT NULL,
  `turnos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`turnos`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`idAgenda`, `idMedico`, `mes`, `anio`, `diasHabiles`, `turnos`) VALUES
(1, 1, 11, 2024, 'lunes, martes, miércoles, jueves, viernes', '{\r\n        \"lunes\": [\r\n            {\"hora\": \"08:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:40\", \"estado\": \"disponible\"}\r\n        ],\r\n        \"martes\": [\r\n            {\"hora\": \"08:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:40\", \"estado\": \"disponible\"}\r\n        ],\r\n        \"miércoles\": [\r\n            {\"hora\": \"08:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:40\", \"estado\": \"disponible\"}\r\n        ],\r\n        \"jueves\": [\r\n            {\"hora\": \"08:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:40\", \"estado\": \"disponible\"}\r\n        ],\r\n        \"viernes\": [\r\n            {\"hora\": \"08:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:40\", \"estado\": \"disponible\"}\r\n        ]\r\n    }'),
(2, 3, 11, 2024, 'lunes, martes, miércoles, jueves, viernes', '{\r\n        \"lunes\": [\r\n            {\"hora\": \"08:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:40\", \"estado\": \"disponible\"}\r\n        ],\r\n        \"martes\": [\r\n            {\"hora\": \"08:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:40\", \"estado\": \"disponible\"}\r\n        ],\r\n        \"miércoles\": [\r\n            {\"hora\": \"08:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:40\", \"estado\": \"disponible\"}\r\n        ],\r\n        \"jueves\": [\r\n            {\"hora\": \"08:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:40\", \"estado\": \"disponible\"}\r\n        ],\r\n        \"viernes\": [\r\n            {\"hora\": \"08:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:40\", \"estado\": \"disponible\"}\r\n        ]\r\n    }'),
(3, 5, 11, 2024, 'lunes, martes, miércoles, jueves, viernes', '{\r\n        \"lunes\": [\r\n            {\"hora\": \"08:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:40\", \"estado\": \"disponible\"}\r\n        ],\r\n        \"martes\": [\r\n            {\"hora\": \"08:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:40\", \"estado\": \"disponible\"}\r\n        ],\r\n        \"miércoles\": [\r\n            {\"hora\": \"08:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:40\", \"estado\": \"disponible\"}\r\n        ],\r\n        \"jueves\": [\r\n            {\"hora\": \"08:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:40\", \"estado\": \"disponible\"}\r\n        ],\r\n        \"viernes\": [\r\n            {\"hora\": \"08:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"08:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"09:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"10:40\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:00\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:20\", \"estado\": \"disponible\"},\r\n            {\"hora\": \"11:40\", \"estado\": \"disponible\"}\r\n        ]\r\n    }');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloqueos_agenda`
--

CREATE TABLE `bloqueos_agenda` (
  `idBloqueo` int(11) NOT NULL,
  `idAgenda` int(11) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL,
  `motivo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion_horarios`
--

CREATE TABLE `configuracion_horarios` (
  `idConfiguracion` int(11) NOT NULL,
  `idAgenda` int(11) NOT NULL,
  `diaSemana` enum('Lunes','Martes','Miércoles','Jueves','Viernes','Sábado','Domingo') NOT NULL,
  `horaInicio` time NOT NULL,
  `horaFin` time NOT NULL,
  `duracionTurno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `idEspecialidad` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`idEspecialidad`, `nombre`) VALUES
(1, 'cardiologia'),
(3, 'pediatria'),
(4, 'traumatologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_turno`
--

CREATE TABLE `estado_turno` (
  `idEstado` int(11) NOT NULL,
  `nombre` enum('No disponible','Libre','Reservada','Confirmado','Cancelado','Ausente','Presente','En consulta','Atendido','Sobreturno') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechasnolaborables`
--

CREATE TABLE `fechasnolaborables` (
  `idFechaNoLaborable` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_turno`
--

CREATE TABLE `historial_turno` (
  `idHistorial` int(11) NOT NULL,
  `idTurno` int(11) NOT NULL,
  `fechaCambio` timestamp NOT NULL DEFAULT current_timestamp(),
  `idEstado` int(11) NOT NULL,
  `comentario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_espera`
--

CREATE TABLE `lista_espera` (
  `idListaEspera` int(11) NOT NULL,
  `idPaciente` int(11) NOT NULL,
  `idEspecialidad` int(11) NOT NULL,
  `idMedico` int(11) NOT NULL,
  `fechaIngreso` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `idMedico` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`idMedico`, `nombre`, `apellido`, `email`, `estado`) VALUES
(1, 'juan', 'paco', 'jpaco@gmail.com', 1),
(3, 'julia', 'rodriguez', 'juliar@gmail.com', 1),
(5, 'juana', 'paca', 'juanapaca1@gmail.com', 1),
(8, 'Gerardoxx', 'Moyax', 'gmoya@gmail.com', 1),
(9, 'sebastian', 'inostroza', 'sinostroza@gmail.com', 1),
(10, 'franco', 'bulacios', 'fbulacios', 1),
(11, 'gabriel', 'barbas', 'gbarbas@gmail.com', 1),
(12, 'pablon', 'juarez', 'pjuarez@gmail.com', 1),
(13, 'changos', 'mas', 'cmas@gmail.com', 1),
(14, 'Ricardo', 'Espinoza', 'rikespinoza@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicoespecialidad`
--

CREATE TABLE `medicoespecialidad` (
  `idMedEsp` int(11) NOT NULL,
  `idMedico` varchar(50) NOT NULL,
  `idEspecialidad` varchar(50) NOT NULL,
  `matricula` varchar(10) NOT NULL,
  `fechaMatricula` date NOT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `medicoespecialidad`
--

INSERT INTO `medicoespecialidad` (`idMedEsp`, `idMedico`, `idEspecialidad`, `matricula`, `fechaMatricula`, `estado`) VALUES
(1, '1', '1', '55', '2022-11-15', 'Activo'),
(2, '3', '2', '56', '2019-11-03', 'Activo'),
(3, '5', '3', '54', '2019-11-09', 'Activo'),
(4, '12', 'pediatria', '', '0000-00-00', 'Activo'),
(5, '13', 'cardiologia', '', '0000-00-00', 'Activo'),
(6, '14', 'pediatria', '', '0000-00-00', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `idPaciente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `notificacion_previa` tinyint(1) DEFAULT 0,
  `email_notificacion` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `idSucursal` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`idSucursal`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'lavalle', 'lavalle123', 266411111);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `idTurno` int(11) NOT NULL,
  `idPaciente` int(11) NOT NULL,
  `idAgenda` int(11) NOT NULL,
  `fechaHora` datetime NOT NULL,
  `idEstado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `rol` enum('administrador','secretaria','medico') NOT NULL,
  `idMedico` int(11) DEFAULT NULL,
  `salt` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacaciones_medico`
--

CREATE TABLE `vacaciones_medico` (
  `idVacacion` int(11) NOT NULL,
  `idMedico` int(11) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`idAgenda`),
  ADD KEY `idMedico` (`idMedico`);

--
-- Indices de la tabla `bloqueos_agenda`
--
ALTER TABLE `bloqueos_agenda`
  ADD PRIMARY KEY (`idBloqueo`),
  ADD KEY `idAgenda` (`idAgenda`);

--
-- Indices de la tabla `configuracion_horarios`
--
ALTER TABLE `configuracion_horarios`
  ADD PRIMARY KEY (`idConfiguracion`),
  ADD KEY `idAgenda` (`idAgenda`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`idEspecialidad`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `estado_turno`
--
ALTER TABLE `estado_turno`
  ADD PRIMARY KEY (`idEstado`);

--
-- Indices de la tabla `fechasnolaborables`
--
ALTER TABLE `fechasnolaborables`
  ADD PRIMARY KEY (`idFechaNoLaborable`),
  ADD UNIQUE KEY `fecha` (`fecha`);

--
-- Indices de la tabla `historial_turno`
--
ALTER TABLE `historial_turno`
  ADD PRIMARY KEY (`idHistorial`),
  ADD KEY `idTurno` (`idTurno`),
  ADD KEY `idEstado` (`idEstado`);

--
-- Indices de la tabla `lista_espera`
--
ALTER TABLE `lista_espera`
  ADD PRIMARY KEY (`idListaEspera`),
  ADD KEY `idPaciente` (`idPaciente`),
  ADD KEY `idMedico` (`idMedico`),
  ADD KEY `idEspecialidad` (`idEspecialidad`);

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`idMedico`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `medicoespecialidad`
--
ALTER TABLE `medicoespecialidad`
  ADD PRIMARY KEY (`idMedEsp`),
  ADD UNIQUE KEY `unique_medico_especialidad` (`idMedico`,`idEspecialidad`),
  ADD KEY `medico` (`idMedico`),
  ADD KEY `especialidad` (`idEspecialidad`),
  ADD KEY `idMedico` (`idMedico`),
  ADD KEY `idEspecialidad` (`idEspecialidad`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`idPaciente`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`idSucursal`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`idTurno`),
  ADD UNIQUE KEY `unique_agenda_fecha` (`idAgenda`,`fechaHora`),
  ADD KEY `idPaciente` (`idPaciente`),
  ADD KEY `idAgenda` (`idAgenda`),
  ADD KEY `fk_turno_estado` (`idEstado`),
  ADD KEY `idx_turno_fechaHora` (`fechaHora`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `fk_usuario_medico` (`idMedico`);

--
-- Indices de la tabla `vacaciones_medico`
--
ALTER TABLE `vacaciones_medico`
  ADD PRIMARY KEY (`idVacacion`),
  ADD KEY `idMedico` (`idMedico`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agenda`
--
ALTER TABLE `agenda`
  MODIFY `idAgenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `bloqueos_agenda`
--
ALTER TABLE `bloqueos_agenda`
  MODIFY `idBloqueo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `configuracion_horarios`
--
ALTER TABLE `configuracion_horarios`
  MODIFY `idConfiguracion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `idEspecialidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estado_turno`
--
ALTER TABLE `estado_turno`
  MODIFY `idEstado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fechasnolaborables`
--
ALTER TABLE `fechasnolaborables`
  MODIFY `idFechaNoLaborable` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial_turno`
--
ALTER TABLE `historial_turno`
  MODIFY `idHistorial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lista_espera`
--
ALTER TABLE `lista_espera`
  MODIFY `idListaEspera` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medico`
--
ALTER TABLE `medico`
  MODIFY `idMedico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `medicoespecialidad`
--
ALTER TABLE `medicoespecialidad`
  MODIFY `idMedEsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `idPaciente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `idSucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `idTurno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vacaciones_medico`
--
ALTER TABLE `vacaciones_medico`
  MODIFY `idVacacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD CONSTRAINT `agenda_ibfk_1` FOREIGN KEY (`idMedico`) REFERENCES `medico` (`idMedico`);

--
-- Filtros para la tabla `bloqueos_agenda`
--
ALTER TABLE `bloqueos_agenda`
  ADD CONSTRAINT `bloqueos_agenda_ibfk_1` FOREIGN KEY (`idAgenda`) REFERENCES `agenda` (`idAgenda`) ON DELETE CASCADE;

--
-- Filtros para la tabla `configuracion_horarios`
--
ALTER TABLE `configuracion_horarios`
  ADD CONSTRAINT `configuracion_horarios_ibfk_1` FOREIGN KEY (`idAgenda`) REFERENCES `agenda` (`idAgenda`) ON DELETE CASCADE;

--
-- Filtros para la tabla `historial_turno`
--
ALTER TABLE `historial_turno`
  ADD CONSTRAINT `historial_turno_ibfk_1` FOREIGN KEY (`idTurno`) REFERENCES `turno` (`idTurno`) ON DELETE CASCADE,
  ADD CONSTRAINT `historial_turno_ibfk_2` FOREIGN KEY (`idEstado`) REFERENCES `estado_turno` (`idEstado`);

--
-- Filtros para la tabla `lista_espera`
--
ALTER TABLE `lista_espera`
  ADD CONSTRAINT `lista_espera_ibfk_1` FOREIGN KEY (`idPaciente`) REFERENCES `paciente` (`idPaciente`),
  ADD CONSTRAINT `lista_espera_ibfk_2` FOREIGN KEY (`idMedico`) REFERENCES `medico` (`idMedico`),
  ADD CONSTRAINT `lista_espera_ibfk_3` FOREIGN KEY (`idEspecialidad`) REFERENCES `especialidad` (`idEspecialidad`);

--
-- Filtros para la tabla `turno`
--
ALTER TABLE `turno`
  ADD CONSTRAINT `fk_turno_estado` FOREIGN KEY (`idEstado`) REFERENCES `estado_turno` (`idEstado`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_medico` FOREIGN KEY (`idMedico`) REFERENCES `medico` (`idMedico`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `vacaciones_medico`
--
ALTER TABLE `vacaciones_medico`
  ADD CONSTRAINT `vacaciones_medico_ibfk_1` FOREIGN KEY (`idMedico`) REFERENCES `medico` (`idMedico`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
