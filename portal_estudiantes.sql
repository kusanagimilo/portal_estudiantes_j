-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 08, 2018 at 09:07 AM
-- Server version: 5.7.16
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal_estudiantes`
--

-- --------------------------------------------------------

--
-- Table structure for table `campos`
--

CREATE TABLE `campos` (
  `id_campo` int(11) NOT NULL,
  `nombre_campo` varchar(200) DEFAULT NULL,
  `tipo_campo` int(11) DEFAULT NULL,
  `opciones` varchar(500) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usuario_creo` int(11) DEFAULT NULL,
  `id_usuario_modifico` int(11) DEFAULT NULL,
  `campo_identi` varchar(200) DEFAULT NULL,
  `perm` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campos`
--

INSERT INTO `campos` (`id_campo`, `nombre_campo`, `tipo_campo`, `opciones`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creo`, `id_usuario_modifico`, `campo_identi`, `perm`) VALUES
(1, 'NOMBRES COMPLETOS', 2, NULL, '2016-12-11 00:00:00', '2016-12-11 19:44:26', 1, 1, 'nombre', 'total'),
(2, 'TIPO DOCUMENTO', 1, 'T.I;C.C;C.E;PASAPORTE', '2016-12-11 00:00:00', '2016-12-11 19:44:28', 1, 1, 'tipo_documento', 'total'),
(3, 'NUMERO DOCUMENTO', 2, NULL, '2016-12-11 00:00:00', '2016-12-11 19:57:20', 1, 1, 'numero_documento', 'total'),
(4, 'ID INSTITUCIONAL', 2, NULL, '2016-12-11 00:00:00', '2016-12-11 19:57:20', 1, 1, 'id_javeriana', 'total'),
(5, 'CICLO DE RETIRO', 1, '1710;1730;1810;1830;1910;1930', '2016-12-11 00:00:00', '2016-12-11 19:57:20', 1, 1, 'ciclo_retiro', 'total'),
(6, 'CICLO DE INGRESO', 1, '1730;1810;1830;1910;1930', '2016-12-11 00:00:00', '2016-12-11 19:57:20', 1, 1, 'ciclo_ingreso', 'total'),
(7, 'MOTIVO', 1, 'CURSO EN EL EXTERIOR O INTERCAMBIO;PROBLEMA DE TIPO MEDICO;PERSONAL O INCONVENIENTE DE FUERZA MAYOR', '2016-12-11 00:00:00', '2016-12-11 19:57:20', 1, 1, 'motivo', 'total'),
(13, 'TELEFONO', 2, NULL, '2016-12-11 00:00:00', '2016-12-11 20:03:37', 1, 1, 'telefono', 'total'),
(14, 'DIRECCION', 2, NULL, '2016-12-11 00:00:00', '2016-12-11 20:03:37', 1, 1, 'direccion', 'total'),
(20, 'CORREO ELECTRONICO INSTITUCIONAL', 2, NULL, '2016-12-11 00:00:00', '2016-12-11 20:03:39', 1, 1, 'correo_electronico', 'total'),
(21, 'NOMBRE DEL RESPONSABLE EN LA EMPRESA', 2, NULL, '2016-12-11 00:00:00', '2016-12-11 20:03:39', 1, 1, 'nombre_responsable_empresa', 'total'),
(22, 'CARGO DEL RESPONSABLE EN LA EMPRESA', 2, NULL, '2016-12-11 00:00:00', '2016-12-11 20:03:39', 1, 1, 'cargo_responsable_empresa', 'total'),
(23, 'NOMBRE EMPRESA', 2, NULL, '2016-12-11 00:00:00', '2016-12-11 20:11:35', 1, 1, 'nombre_empresa', 'total'),
(25, 'NOMBRE DEL PROFESOR', 2, NULL, '2016-12-11 00:00:00', '2016-12-11 20:28:14', 1, 1, 'nombre_profesor', 'total'),
(26, 'FECHA INASISTENCIA', 3, NULL, '2016-12-11 00:00:00', '2016-12-11 20:28:14', 1, 1, 'fecha_inasistencia', 'total'),
(27, 'MOTIVO EXCUSA', 1, 'CITA MEDICA;INCAPACIDAD MEDICA;INCONVENIENTE PERSONAL (SITUACION DE FUERZA MAYOR);REPRESENTACION DE LA UNIVERSIDAD EN EVENTOS ACADEMICOS, CULTURALES O DEPORTIVOS;OTRO', NULL, '2016-12-11 20:28:14', 1, 1, 'motivo_inasistencia', 'total'),
(28, 'NOMBRE(S) ASIGNATURA(S)', 6, NULL, '2016-12-11 00:00:00', '2016-12-11 20:28:14', 1, 1, 'nombre_asignatura', 'total'),
(29, 'MOTIVO INASISTENCIA PARCIAL', 1, 'CITACIÓN DE SERVICIO MILITAR O DE ORDEN JUDICIAL;REPRESENTACIÓN DE LA UNIVERSIDAD EN EVENTOS ACADÉMICOS, CULTURALES O DEPORTIVOS;INTERVENCIÓN QUIRÚRGICA QUE NO ADMITE APLAZAMIENTO;INCAPACIDAD MÉDICA;CRUCE DE EXÁMENES PARCIALES PROGRAMADOS POR LA UNIVERSIDAD;FUNERAL DE PARIENTE EN PRIMER GRADO DE CONSANGUINIDAD', NULL, '2016-12-11 20:28:14', NULL, NULL, 'motivo_inasistencia_parcial', 'total'),
(30, 'NUMERO DE CLASE', 2, NULL, '2016-12-11 00:00:00', '2016-12-11 20:31:56', 1, 1, 'numero_clase', 'total'),
(31, 'PARCIAL NUMERO', 1, 'PRIMER PARCIAL;SEGUNDO PARCIAL;TERCER PARCIAL;CUARTO PARCIAL', '2016-12-11 00:00:00', '2016-12-11 20:31:56', 1, 1, 'parcial_numero', 'total'),
(32, 'TIPO DE ESPACIO', 1, 'AUDITORIO;SALÓN;SALA DE CÓMPUTO', '2016-12-11 00:00:00', '2016-12-11 20:47:36', 1, 1, 'tipo_espacio', 'total'),
(33, 'CAPACIDAD DEL SITIO', 2, NULL, '2016-12-11 00:00:00', '2016-12-11 20:47:36', 1, 1, 'capacidad_sitio', 'total'),
(34, 'NOMBRE DEL EVENTO', 2, NULL, '2016-12-11 00:00:00', '2016-12-11 20:47:36', 1, 1, 'nombre_evento', 'total'),
(35, 'ELEMENTOS A UTILIZAR', 7, 'VIDEO BEAM;COMPUTADOR;T.V;D.V.D;NINGUNO', '2016-12-11 00:00:00', '2016-12-11 20:47:36', 1, 1, 'elemento_utilizar', 'total'),
(36, 'FECHA DEL EVENTO', 3, NULL, '2016-12-11 00:00:00', '2016-12-11 20:47:36', 1, 1, 'fecha_evento', 'total'),
(37, 'HORA INICIO', 4, NULL, '2016-12-11 00:00:00', '2016-12-11 21:42:04', 1, 1, 'hora_inicio', 'total'),
(38, 'HORA FIN', 4, NULL, '2016-12-11 00:00:00', '2016-12-11 21:42:04', 1, 1, 'hora_fin', 'total'),
(39, 'NOMBRE DEL RESPONSABLE', 2, NULL, '2016-12-11 00:00:00', '2016-12-11 21:42:04', 1, 1, 'nombre_responsable', 'total'),
(40, 'MEDIO POR EL CUAL CUMPLIÓ EL REQUISITO', 1, 'BACHILLERATO INTERNACIONAL;NIVELES CURSADOS EN LA UNIVERSIDAD;PRESENTÓ EXAMEN INTERNACIONAL', '2016-12-11 00:00:00', '2016-12-11 21:42:04', 1, 1, 'medio_cumplio_requisito', 'total'),
(41, 'NÚMERO DE CRÉDITOS PARA CAMBIO DE RECIBO', 1, '1 CRÉDITOS;2 CRÉDITOS;3 CRÉDITOS;4 CRÉDITOS;11 CRÉDITOS;12 CRÉDITOS;13 CRÉDITOS;14 CRÉDITOS', '2016-12-11 00:00:00', '2016-12-11 21:42:04', 1, 1, 'numero_creditos_para_cambio_recibo', 'total'),
(42, 'ASIGNATURAS FALTANTES POR CURSAR', 2, NULL, '2016-12-11 00:00:00', '2016-12-11 21:42:04', 1, 1, 'asignaturas_faltantes_cursar', 'total'),
(43, 'PERIODO DE RETIRO', 1, 'PRIMER;TERCER', '2017-02-22 00:00:00', '2017-02-22 11:22:49', 2, NULL, 'periodo_retiro', 'total'),
(44, 'PERIODO DE INGRESO', 1, 'PRIMER;TERCER', '2017-02-22 00:00:00', '2017-02-22 11:29:10', 2, NULL, 'periodo_ingreso', 'total'),
(45, 'AÑO RETIRO', 5, '2000-2050', '2017-02-22 00:00:00', '2017-02-22 11:32:31', 2, NULL, 'anio_retiro', 'total'),
(46, 'AÑO INGRESO', 5, '2000-2050', '2017-02-22 00:00:00', '2017-02-22 11:36:05', 2, NULL, 'anio_ingreso', 'total'),
(47, 'DESCRIPCION MOTIVO', 6, NULL, '2017-02-22 00:00:00', '2017-02-22 11:38:35', 2, NULL, 'descripcion_motivo', 'total'),
(48, 'ULTIMO PERIDO CURSADO', 2, NULL, '2017-02-26 00:00:00', '2017-02-26 12:43:41', 2, NULL, 'ultimo_perido_cursado', 'admin'),
(49, 'ESTADO ACADEMICO', 1, 'NORMAL;PRIMERA PRUEBA;SEGUNDA PRUEBA', '2017-02-26 00:00:00', '2017-02-26 12:43:41', 2, NULL, 'estado_academico', 'admin'),
(50, 'PROMEDIO PONDERADO ACUMULADO', 2, NULL, '2017-02-26 00:00:00', '2017-02-26 12:46:39', 2, NULL, 'promedio_ponderado_acumulado', 'admin'),
(51, 'NOMBRE DIRECTOR CARRERA', 2, NULL, '2017-02-26 00:00:00', '2017-02-26 12:46:39', 2, NULL, 'nombre_director_carrera', 'admin'),
(52, 'FECHA INICIO INASISTENCIA', 3, NULL, '2017-02-26 00:00:00', '2017-02-26 18:59:30', 2, NULL, 'fecha_inicio_inasistencia', 'total'),
(53, 'FECHA FIN INASISTENCIA', 3, NULL, '2017-02-26 00:00:00', '2017-02-26 18:59:30', 2, NULL, 'fecha_fin_inasistencia', 'total'),
(54, 'OTRO MOTIVO EXCUSA', 2, NULL, '2017-02-26 00:00:00', '2017-02-26 19:23:39', 2, NULL, 'otro_motivo_excusa', 'total'),
(55, 'REQUERIMIENTOS ADICIONALES', 6, NULL, '2017-02-26 00:00:00', '2017-02-26 22:38:20', 2, NULL, 'requerimientos_adicionales', 'total'),
(56, 'FRECUENCIA EVENTO', 1, 'DIARIO;SEMANAL;MENSUAL;NO_APLICA', '2017-02-26 00:00:00', '2017-02-26 22:47:08', 2, NULL, 'frecuencia_evento', 'total'),
(57, 'SITUACION DE FUERZA MAYOR', 2, NULL, '2017-04-17 00:00:00', '2017-04-17 20:08:52', 2, 2, 'situacion_fuerza_mayor', 'total');

-- --------------------------------------------------------

--
-- Table structure for table `caso`
--

CREATE TABLE `caso` (
  `id_caso` int(11) NOT NULL,
  `id_tipo_proceso` int(11) DEFAULT NULL,
  `id_usuario_creo` int(11) DEFAULT NULL,
  `id_usuario_modifico` int(11) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `id_dato` int(11) DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT NULL,
  `fecha_modificacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caso`
--

INSERT INTO `caso` (`id_caso`, `id_tipo_proceso`, `id_usuario_creo`, `id_usuario_modifico`, `id_estado`, `id_dato`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 1, 2, 2, 2, 1, '2017-02-26 12:38:32', '2017-02-26 23:13:49'),
(2, 2, 2, NULL, 1, 2, '2017-02-26 16:23:30', '2017-02-26 23:23:30'),
(3, 3, 2, NULL, 1, 3, '2017-02-27 17:05:59', '2017-02-27 00:05:59'),
(4, 4, 2, NULL, 1, 4, '2017-02-27 17:58:32', '2017-02-27 00:58:32'),
(5, 4, 2, NULL, 1, 5, '2017-02-27 06:12:32', '2017-02-27 01:12:32'),
(6, 5, 2, NULL, 1, 6, '2017-02-27 06:40:55', '2017-02-27 01:40:55'),
(7, 6, 2, NULL, 1, 7, '2017-02-27 08:56:14', '2017-02-27 03:56:14'),
(8, 4, 2, NULL, 1, 8, '2017-04-17 13:22:23', '2017-04-18 01:22:23'),
(9, 4, 2, NULL, 1, 9, '2017-04-17 13:28:19', '2017-04-18 01:28:19'),
(10, 7, 2, NULL, 1, 10, '2017-04-17 15:11:13', '2017-04-18 03:11:13'),
(11, 7, 2, NULL, 1, 11, '2017-04-17 15:12:46', '2017-04-18 03:12:46'),
(12, 7, 2, NULL, 1, 12, '2017-04-17 15:17:09', '2017-04-18 03:17:09'),
(13, 7, 2, NULL, 1, 13, '2017-04-17 15:18:31', '2017-04-18 03:18:31'),
(14, 6, 2, NULL, 1, 14, '2017-04-17 16:04:49', '2017-04-18 04:04:49'),
(15, 6, 2, NULL, 1, 15, '2017-08-15 17:02:32', '2017-08-15 17:02:32'),
(16, 6, 2, NULL, 1, 16, '2017-08-15 17:07:17', '2017-08-15 17:07:17'),
(17, 8, 2, NULL, 1, 17, '2017-09-03 07:39:20', '2017-09-03 19:39:20'),
(18, 8, 2, NULL, 1, 18, '2017-09-03 07:40:23', '2017-09-03 19:40:23'),
(19, 8, 2, NULL, 1, 19, '2017-09-03 07:54:12', '2017-09-03 19:54:12'),
(20, 3, 2, NULL, 1, 21, '2017-09-12 17:31:16', '2017-09-12 05:31:16'),
(21, 3, 2, NULL, 1, 22, '2017-09-12 06:09:41', '2017-09-12 06:09:41'),
(22, 3, 2, NULL, 1, 23, '2017-09-12 06:19:59', '2017-09-12 06:19:59'),
(23, 3, 2, NULL, 1, 24, '2017-09-16 17:56:10', '2017-09-16 17:56:11'),
(24, 6, 2, NULL, 1, 25, '2017-09-16 06:00:36', '2017-09-16 18:00:36'),
(25, 7, 2, NULL, 1, 26, '2018-02-01 16:05:35', '2018-02-02 04:05:35'),
(26, 7, 2, 2, 3, 27, '2018-02-01 16:11:38', '2018-02-02 17:16:07'),
(27, 8, 4, NULL, 1, 28, '2018-02-19 15:14:32', '2018-02-20 03:14:32'),
(28, 9, 2, NULL, 1, 29, '2018-09-11 08:48:49', '2018-09-11 20:48:49'),
(29, 9, 2, NULL, 1, 30, '2018-09-11 08:48:57', '2018-09-11 20:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `dato`
--

CREATE TABLE `dato` (
  `id_dato` int(11) NOT NULL,
  `nombre` varchar(500) DEFAULT NULL,
  `tipo_documento` varchar(500) DEFAULT NULL,
  `numero_documento` varchar(500) DEFAULT NULL,
  `id_javeriana` varchar(500) DEFAULT NULL,
  `ciclo_retiro` varchar(200) DEFAULT NULL,
  `ciclo_ingreso` varchar(200) DEFAULT NULL,
  `motivo` varchar(200) DEFAULT NULL,
  `telefono` varchar(500) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `correo_electronico` varchar(500) DEFAULT NULL,
  `nombre_responsable_empresa` varchar(200) DEFAULT NULL,
  `cargo_responsable_empresa` varchar(200) DEFAULT NULL,
  `nombre_empresa` varchar(200) DEFAULT NULL,
  `nombre_asignatura` varchar(200) DEFAULT NULL,
  `nombre_profesor` varchar(200) DEFAULT NULL,
  `fecha_inasistencia` date DEFAULT NULL,
  `motivo_inasistencia` varchar(200) DEFAULT NULL,
  `motivo_inasistencia_parcial` varchar(200) DEFAULT NULL,
  `numero_clase` varchar(100) DEFAULT NULL,
  `parcial_numero` varchar(150) DEFAULT NULL,
  `tipo_espacio` varchar(150) DEFAULT NULL,
  `capacidad_sitio` varchar(150) DEFAULT NULL,
  `nombre_evento` varchar(200) DEFAULT NULL,
  `elemento_utilizar` varchar(200) DEFAULT NULL,
  `fecha_evento` date DEFAULT NULL,
  `hora_inicio` varchar(45) DEFAULT NULL,
  `hora_fin` varchar(45) DEFAULT NULL,
  `nombre_responsable` varchar(200) DEFAULT NULL,
  `medio_cumplio_requisito` varchar(200) DEFAULT NULL,
  `numero_creditos_para_cambio_recibo` varchar(200) DEFAULT NULL,
  `asignaturas_faltantes_cursar` varchar(200) DEFAULT NULL,
  `periodo_retiro` varchar(100) DEFAULT NULL,
  `periodo_ingreso` varchar(100) DEFAULT NULL,
  `anio_retiro` varchar(50) DEFAULT NULL,
  `anio_ingreso` varchar(50) DEFAULT NULL,
  `descripcion_motivo` text,
  `ultimo_perido_cursado` varchar(200) DEFAULT NULL,
  `estado_academico` varchar(200) DEFAULT NULL,
  `promedio_ponderado_acumulado` varchar(200) DEFAULT NULL,
  `nombre_director_carrera` varchar(200) DEFAULT NULL,
  `fecha_inicio_inasistencia` date DEFAULT NULL,
  `fecha_fin_inasistencia` date DEFAULT NULL,
  `otro_motivo_excusa` varchar(250) DEFAULT NULL,
  `requerimientos_adicionales` text,
  `frecuencia_evento` varchar(200) DEFAULT NULL,
  `situacion_fuerza_mayor` varchar(300) DEFAULT NULL,
  `nivel_clasificacion` varchar(200) DEFAULT NULL,
  `nivel_cursado_aprobado` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dato`
--

INSERT INTO `dato` (`id_dato`, `nombre`, `tipo_documento`, `numero_documento`, `id_javeriana`, `ciclo_retiro`, `ciclo_ingreso`, `motivo`, `telefono`, `direccion`, `correo_electronico`, `nombre_responsable_empresa`, `cargo_responsable_empresa`, `nombre_empresa`, `nombre_asignatura`, `nombre_profesor`, `fecha_inasistencia`, `motivo_inasistencia`, `motivo_inasistencia_parcial`, `numero_clase`, `parcial_numero`, `tipo_espacio`, `capacidad_sitio`, `nombre_evento`, `elemento_utilizar`, `fecha_evento`, `hora_inicio`, `hora_fin`, `nombre_responsable`, `medio_cumplio_requisito`, `numero_creditos_para_cambio_recibo`, `asignaturas_faltantes_cursar`, `periodo_retiro`, `periodo_ingreso`, `anio_retiro`, `anio_ingreso`, `descripcion_motivo`, `ultimo_perido_cursado`, `estado_academico`, `promedio_ponderado_acumulado`, `nombre_director_carrera`, `fecha_inicio_inasistencia`, `fecha_fin_inasistencia`, `otro_motivo_excusa`, `requerimientos_adicionales`, `frecuencia_evento`, `situacion_fuerza_mayor`, `nivel_clasificacion`, `nivel_cursado_aprobado`) VALUES
(1, 'JUAN CAMILO', 'T.I', '1019075739', '231245', NULL, NULL, 'CURSO EN EL EXTERIOR O INTERCAMBIO', '34259182', 'CALLE 1234', 'CAMILO @64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PRIMER', 'PRIMER', '2017', '2009', 'TENGO OBLIGACIONES EN OTRO PAIS                  ', '4 PERIODO', 'NORMAL', '34', 'JUAN CAMILO CRUZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'DIEGO EDUARDO', 'C.C', '1234567890', '12', NULL, NULL, 'PROBLEMA DE TIPO MEDICO', '88888', 'CALLE 123456', 'HOLA@HOLA.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TERCER', NULL, '2001', NULL, 'POR MI SALUD                           ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'CAMILO ', 'C.C', '333333', '123', NULL, NULL, NULL, '1231312', NULL, 'CAMILO@CAMILO.COM', 'JUAN CAMILO CRUZ F', 'ABOGADO', 'SIE(SA)', 'MATEMATICAS', 'DIEGO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ANTARES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'PRUEBA', 'T.I', '12345678', '1234', NULL, NULL, NULL, '123789', NULL, 'AAA@AA.COM', NULL, NULL, NULL, 'CALCULO,FISICA                            ', NULL, NULL, 'OTRO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-02-26', '2017-02-27', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'skdlaklÃ±k', 'T.I', '432432423', '123', NULL, NULL, NULL, '2321321321', NULL, 'camilo@camilo.com', NULL, NULL, NULL, 'matematicas,fisica                            ', NULL, NULL, 'OTRO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CAMILO', '2017-03-01', '2017-03-03', 'otro', NULL, NULL, NULL, NULL, NULL),
(6, 'JUAN ANTARES', 'C.C', '123098762', '12', NULL, NULL, NULL, '1234567', NULL, 'CAMILO@CAMILO.COM', NULL, NULL, NULL, 'FISICA', 'ANTA', '2017-02-27', NULL, 'CITACIÃ“N DE SERVICIO MILITAR O DE ORDEN JUDICIAL', '3', 'SEGUNDO PARCIAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'JUAN CAMILO', 'T.I', '1234567890', '12345', NULL, NULL, NULL, '1234567890', NULL, 'CAMILO@CAMILO.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AUDITORIO', '34', 'PRUEBA', 'COMPUTADOR,VIDEO BEAM,T.V                            ', '2017-02-27', '2:5', '18:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NINGUNO                 ', 'NO_APLICA', NULL, NULL, NULL),
(8, 'LUIS EDUARDO CRUZ', 'C.C', '39681900', '1', NULL, NULL, NULL, '6975575', NULL, 'LUIS@LUIS.COM', NULL, NULL, NULL, 'MATEMATICAS, FISICA                          ', NULL, NULL, 'INCONVENIENTE PERSONAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-17', '2017-04-19', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'PRUEBA NOMBRE', 'T.I', '32984734827342', '1234', NULL, NULL, NULL, '3006163077', NULL, 'PRUEBA@PRUEBA.COM', NULL, NULL, NULL, 'fisica,calculo                          ', NULL, NULL, 'INCONVENIENTE PERSONAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-10', '2017-04-20', NULL, NULL, NULL, 'inconveniente 1', NULL, NULL),
(10, 'INGREL', 'T.I', '92103153680', '1234', NULL, NULL, NULL, '3006163077', NULL, 'kusanagimilo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NIVELES CURSADOS EN LA UNIVERSIDAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'JUAN CAMILO CRUZ', 'C.C', '92103153680', '3', NULL, NULL, NULL, '3006163077', NULL, 'kusanagimilo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NIVELES CURSADOS EN LA UNIVERSIDAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'LALALA', 'T.I', '1019075739', '1234', NULL, NULL, NULL, '3006163077', NULL, 'kusanagimilo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NIVELES CURSADOS EN LA UNIVERSIDAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nivel 3', 'Nivel 0,Nivel 1,Nivel 2'),
(13, 'TTTTT', 'T.I', '111111', '11', NULL, NULL, NULL, '1111111', NULL, 'JA@JA.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NIVELES CURSADOS EN LA UNIVERSIDAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nivel 1', 'Nivel 0,Nivel 1,Nivel 2,Nivel 3,Nivel 4,Nivel 5'),
(14, 'JUAN CAMILO', 'T.I', '32984734827342', '1234', NULL, NULL, NULL, '3006163077', NULL, 'JA@JA.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AUDITORIO', '122', 'hola', 'VIDEO BEAM,COMPUTADOR,T.V', '2017-04-18', '2:7', '11:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'noooo                          ', 'NO_APLICA', NULL, NULL, NULL),
(15, 'Juan Camilo Cruz Franco', 'C.C', '1019075739', '12356', NULL, NULL, NULL, '6975575', NULL, 'camilo@camilo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AUDITORIO', '34', 'MI CUMPLEAÃ‘OS', 'VIDEO BEAM,COMPUTADOR,T.V', '2017-08-18', '9:0', '10:0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' djksadjkhsajdhsakjdhksjadha                         ', 'NO_APLICA', NULL, NULL, NULL),
(16, 'Juan Camilo Cruz Franco', 'C.C', '1019075739', '12356', NULL, NULL, NULL, '3006163077', NULL, 'camilo@camilo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SALÃ“N', '34', 'MI CUMPLEAÃ‘OS', 'VIDEO BEAM,COMPUTADOR,T.V', '2017-10-31', '05:00', '09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'alsklksjdlasjdsakj                            ', 'NO_APLICA', NULL, NULL, NULL),
(21, 'PRUEBA 1|PRUEBA 2', 'C.C|C.C', '111111|22222', '11|22', NULL, NULL, NULL, '11111|2221211', NULL, 'AA@AA.COM|BBB@BB.COM', 'LUIS EDUARDO', 'ABOGADO', 'HOLAAA', 'MATEMATIACAS,FISICA                               \n                            ', 'NN VELASQUEZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'JUAN CAMILO CRUZ|EDWIN IVAN CRUZ|MARIA CECILIA FRANCO', 'C.C|C.C|C.C', '1019075739|1019876543|39681900', '12345|123451|12345', NULL, NULL, NULL, '3006163077|3008765431|3115516878', NULL, 'juan.cruz@javeriana.edu.co|edwin.cruz@javeriana.edu.co|maria.franco@javeriana.edu.co', 'LUIS EDUARDO CRUZ', 'GERENTE GENERAL', 'CRUZ (SA)', 'MATEMATICAS,FISICA                            \n                            ', 'DIEGO EDUARDO CRUZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'JUAN CAMILO', 'C.C', '1019075739', '12345', NULL, NULL, NULL, '3006163077', NULL, 'juan.cruz@javeriana.edu.co', 'JUAN CAMILO CRUZ FRANCO', 'GERENTE GENERAL', 'MACAYEBAR', 'FISICA,CALCULO                        \n                            ', 'EDWIN IVAN CRUZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'JUAN CAMILO CRUZ|PRUEBA 2', 'C.C|C.C', '1019075739|1111122', '1234|1234', NULL, NULL, NULL, '11111|2132131', NULL, 'camilo@camilo.com|camilo@mmm.com', 'RESPONSABLE', 'GERENTE GENERAL', 'EMPRESA', 'FISICA                               \n                            ', 'PROFESOR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HOLA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'PRUEBA', 'C.C', '1019075739', '12356', NULL, NULL, NULL, '3006163077', NULL, 'camilo@camilo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AUDITORIO', '13', 'EVENTO', 'VIDEO BEAM,COMPUTADOR', '2017-09-16', '05:13', '13:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DSADSADS                              ', 'DIARIO', NULL, NULL, NULL),
(26, 'JUAN CAMILO CRUZ F', 'T.I', '92103153680', '12321312', NULL, NULL, NULL, '6975578', NULL, 'CAMILO@CAMILO.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BACHILLERATO INTERNACIONAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'JKSHDSAH', 'T.I', '989898', '989898', NULL, NULL, NULL, '343423', NULL, 'AAA@AAA.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BACHILLERATO INTERNACIONAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Juan Camilo Cruz Franco', 'T.I', '00000787', '1ab', NULL, NULL, NULL, '3006163077', NULL, 'hola@hola.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1 CRÃ‰DITOS', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Juan Camilo', 'C.C', '1019075739', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Juan Camilo', 'C.C', '1019075739', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documento`
--

CREATE TABLE `documento` (
  `id_documento` int(11) NOT NULL,
  `extension` varchar(150) DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_usr_creo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documento`
--

INSERT INTO `documento` (`id_documento`, `extension`, `nombre`, `url`, `fecha_creacion`, `id_usr_creo`) VALUES
(1, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'Formato Acta Retiro Temporal', 'lib/Documentos/Formato Acta Retiro Temporal.docx', '2017-02-26 14:31:15', 2),
(2, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'Formato Carta solicitud Retiro Temporal y Definitivo (RT-RD)', 'lib/Documentos/Formato Carta solicitud Retiro Temporal y Definitivo (RT-RD).xlsx', '2017-02-26 14:31:15', 2),
(3, 'application/pdf', 'Retiro Temporal', 'lib/Documentos/Retiro Temporal.pdf', '2017-02-26 14:31:15', 2),
(4, 'application/pdf', 'Retiro Temporal.pdf', 'lib/Documentos/20170226023733_Retiro Temporal.pdf', '2017-02-26 14:37:33', 2),
(5, 'application/pdf', 'Retiro Temporal.pdf', 'lib/Documentos/20170226023754_Retiro Temporal.pdf', '2017-02-26 14:37:54', 2),
(6, 'application/pdf', 'Retiro Temporal.pdf', 'lib/Documentos/20170226023832_Retiro Temporal.pdf', '2017-02-26 14:38:32', 2),
(7, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'Formato Acta Retiro Definitivo', 'lib/Documentos/Formato Acta Retiro Definitivo.docx', '2017-02-26 18:18:36', 2),
(8, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'Formato Carta solicitud Retiro Temporal y Definitivo (RT-RD)', 'lib/Documentos/Formato Carta solicitud Retiro Temporal y Definitivo (RT-RD).xlsx', '2017-02-26 18:18:36', 2),
(9, 'application/pdf', 'Retiro Definitivo', 'lib/Documentos/Retiro Definitivo.pdf', '2017-02-26 18:18:36', 2),
(10, 'application/msword', 'Carta PresentacioÌn a Empresa', 'lib/Documentos/Carta PresentacioÌn a Empresa.doc', '2017-02-26 18:30:10', 2),
(11, 'application/pdf', 'Solicitud Carta de presentacioÌn a Empresa', 'lib/Documentos/Solicitud Carta de presentacioÌn a Empresa.pdf', '2017-02-26 18:30:10', 2),
(13, 'application/pdf', 'Solicitud Excusa para profesores', 'lib/Documentos/Solicitud Excusa para profesores.pdf', '2017-02-26 19:13:12', 2),
(14, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'Formato Supletorio', 'lib/Documentos/Formato Supletorio.docx', '2017-02-26 20:38:16', 2),
(15, 'application/pdf', 'Solicitud Supletorio', 'lib/Documentos/Solicitud Supletorio.pdf', '2017-02-26 20:38:16', 2),
(16, 'application/pdf', 'Solicitud Reserva de espacios', 'lib/Documentos/Solicitud Reserva de espacios.pdf', '2017-02-26 22:52:43', 2),
(17, 'application/pdf', 'ActualizacioÌn requisito de ingleÌs', 'lib/Documentos/ActualizacioÌn requisito de ingleÌs.pdf', '2017-02-26 23:01:32', 2),
(18, 'application/pdf', 'Solicitud Cambio de carga acadeÌmica', 'lib/Documentos/Solicitud Cambio de carga acadeÌmica.pdf', '2017-02-26 23:05:02', 2),
(19, 'a', '19_EvaluacioÌn Unidad 2.pdf', 'lib/Documentos/19_EvaluacioÌn Unidad 2.pdf', '2017-05-01 17:43:06', 2),
(20, 'application/pdf', '20_EvaluacioÌn Unidad 2.pdf', 'lib/Documentos/20_EvaluacioÌn Unidad 2.pdf', '2017-05-01 17:43:46', 2),
(24, 'image/png', '21_FirmaGreta.png', 'lib/Documentos/21_FirmaGreta.png', '2017-05-01 17:54:17', 2),
(25, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '25_2-Carta bloque.docx', 'lib/Documentos/25_2-Carta bloque.docx', '2017-05-01 17:55:08', 2),
(26, 'image/png', '1492397975_briefcase.png', 'lib/Documentos/20170912123116_1492397975_briefcase.png', '2017-09-12 00:31:16', 2),
(27, 'image/png', '1492040748_bulldog.png', 'lib/Documentos/20170912010941_1492040748_bulldog.png', '2017-09-12 01:09:41', 2),
(28, 'application/pdf', '9999pnnr (1).pdf', 'lib/Documentos/20170916125611_9999pnnr (1).pdf', '2017-09-16 12:56:11', 2),
(29, 'application/pdf', 'Acue_08_20070717.pdf', 'lib/Documentos/20170916010036_Acue_08_20070717.pdf', '2017-09-16 13:00:36', 2),
(30, 'image/jpeg', '30_04-julio.jpeg', 'lib/Documentos/30_04-julio.jpeg', '2018-03-02 11:41:03', 2),
(31, 'application/pdf', 'PRUEBA22', 'lib/Documentos/CEDULA_LUIS_EDUARDO.pdf', '2018-09-11 15:46:05', 2);

-- --------------------------------------------------------

--
-- Table structure for table `documento_caso`
--

CREATE TABLE `documento_caso` (
  `id_documento_caso` int(11) NOT NULL,
  `id_documento` int(11) DEFAULT NULL,
  `id_caso` int(11) DEFAULT NULL,
  `id_usuario_creo` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documento_caso`
--

INSERT INTO `documento_caso` (`id_documento_caso`, `id_documento`, `id_caso`, `id_usuario_creo`, `fecha_creacion`) VALUES
(1, 6, 1, 2, '2017-02-26 14:38:32'),
(2, 26, 20, 2, '2017-09-12 00:31:16'),
(3, 27, 21, 2, '2017-09-12 01:09:41'),
(4, 28, 23, 2, '2017-09-16 12:56:11'),
(5, 29, 24, 2, '2017-09-16 13:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `documento_tipo_proceso`
--

CREATE TABLE `documento_tipo_proceso` (
  `id_documento_tipo_proceso` int(11) NOT NULL,
  `id_tipo_proceso` int(11) NOT NULL,
  `id_documento` int(11) NOT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_usr_creo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documento_tipo_proceso`
--

INSERT INTO `documento_tipo_proceso` (`id_documento_tipo_proceso`, `id_tipo_proceso`, `id_documento`, `fecha_creacion`, `id_usr_creo`) VALUES
(1, 1, 1, '2017-02-26 14:31:15', 2),
(2, 1, 2, '2017-02-26 14:31:15', 2),
(3, 1, 3, '2017-02-26 14:31:15', 2),
(4, 2, 7, '2017-02-26 18:18:36', 2),
(5, 2, 8, '2017-02-26 18:18:36', 2),
(6, 2, 9, '2017-02-26 18:18:36', 2),
(7, 3, 10, '2017-02-26 18:30:10', 2),
(8, 3, 11, '2017-02-26 18:30:10', 2),
(10, 4, 13, '2017-02-26 19:13:12', 2),
(11, 5, 14, '2017-02-26 20:38:16', 2),
(12, 5, 15, '2017-02-26 20:38:16', 2),
(13, 6, 16, '2017-02-26 22:52:43', 2),
(14, 7, 17, '2017-02-26 23:01:32', 2),
(15, 8, 18, '2017-02-26 23:05:02', 2),
(19, 7, 24, '2017-05-01 17:54:17', 2),
(20, 7, 25, '2017-05-01 17:55:08', 2),
(21, 7, 30, '2018-03-02 11:41:03', 2),
(22, 9, 31, '2018-09-11 15:46:05', 2);

-- --------------------------------------------------------

--
-- Table structure for table `estado_proceso`
--

CREATE TABLE `estado_proceso` (
  `id_estado_proceso` int(11) NOT NULL,
  `estado_proceso` varchar(150) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `id_usr_creo` int(11) DEFAULT NULL,
  `id_usr_modifico` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `estado_proceso`
--

INSERT INTO `estado_proceso` (`id_estado_proceso`, `estado_proceso`, `estado`, `id_usr_creo`, `id_usr_modifico`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 'SOLICITUD REGISTRADA', 'AC', 1, NULL, '2017-01-17 07:43:01', '2017-01-17 19:43:01'),
(2, 'SOLICITUD EN PROCESO', 'AC', 1, NULL, '2017-01-17 07:43:21', '2017-01-17 19:43:21'),
(3, 'SOLICITUD FINALIZADA', 'AC', 1, NULL, '2017-01-17 07:43:30', '2017-01-17 19:43:30'),
(4, 'PRUEBA', 'AC', 1, NULL, '2017-08-15 01:02:19', '2017-08-15 13:02:19'),
(5, 'mierda mierdaaaa', 'AC', 2, 2, '2018-02-19 10:40:23', '2018-02-19 22:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id_links` int(11) NOT NULL,
  `link` varchar(150) NOT NULL,
  `accion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id_links`, `link`, `accion`) VALUES
(1, 'USUARIOS', 'CargarVistaUsuarios()'),
(2, 'ROL', 'CargarVistaRoles()'),
(3, 'ESTADO', 'CargarVistaEstados()'),
(4, 'TIPO PROCESO', 'CargarTipoProceso()'),
(5, 'CREAR CASO', 'CargarCasosDisponi()'),
(6, 'CASOS', 'VerTotCasos()'),
(7, 'MIS CASOS', 'VerMisCasos()'),
(8, 'REPORTES', 'VerReportes()'),
(9, 'NOTICIAS', 'VerNoticias()');

-- --------------------------------------------------------

--
-- Table structure for table `links_rol`
--

CREATE TABLE `links_rol` (
  `id_links_rol` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_links` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usr_creo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `links_rol`
--

INSERT INTO `links_rol` (`id_links_rol`, `id_rol`, `id_links`, `fecha_creacion`, `id_usr_creo`) VALUES
(1, 8, 1, '2016-12-14 12:27:59', 1),
(2, 8, 2, '2016-12-14 12:27:59', 1),
(3, 8, 3, '2016-12-14 12:28:15', 1),
(4, 8, 4, '2016-12-14 12:28:15', 1),
(5, 8, 5, '2017-01-17 12:42:07', 2),
(6, 8, 6, '2017-01-17 06:21:59', 2),
(7, 10, 5, '2017-01-17 07:45:48', 2),
(9, 8, 7, '2017-01-18 01:55:06', 2),
(10, 10, 7, '2017-01-18 03:31:46', 2),
(11, 8, 8, '2017-02-12 06:46:23', 2),
(12, 8, 9, '2017-06-21 09:00:24', 2),
(13, 11, 1, '2018-02-01 10:21:53', 2),
(14, 11, 2, '2018-02-01 10:21:55', 2),
(15, 11, 3, '2018-02-01 10:21:57', 2),
(16, 11, 4, '2018-02-01 10:21:59', 2),
(17, 11, 5, '2018-02-01 10:22:01', 2),
(18, 11, 6, '2018-02-01 10:22:05', 2),
(19, 11, 7, '2018-02-01 10:22:07', 2),
(20, 11, 8, '2018-02-01 10:22:09', 2),
(21, 11, 9, '2018-02-01 10:22:11', 2),
(22, 12, 6, '2018-02-01 10:22:33', 2);

-- --------------------------------------------------------

--
-- Table structure for table `noticia`
--

CREATE TABLE `noticia` (
  `id_noticia` int(11) NOT NULL,
  `titulo_noticia` varchar(200) DEFAULT NULL,
  `contenido` text,
  `fecha_creacion` datetime DEFAULT NULL,
  `id_usr_creo` int(11) DEFAULT NULL,
  `fecha_modificacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usr_modifico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noticia`
--

INSERT INTO `noticia` (`id_noticia`, `titulo_noticia`, `contenido`, `fecha_creacion`, `id_usr_creo`, `fecha_modificacion`, `id_usr_modifico`) VALUES
(1, 'sasas', '<p>Ingrese el <s>contenido</s></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><s>sasassa </s><em><strong>dsaasdad </strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p><em><strong>aaaaa ss</strong></em></p>\r\n</blockquote>\r\n', '2017-06-11 11:32:15', 2, '2017-06-11 23:32:15', NULL),
(3, 'NOTICIA 3', '<p>CONTENIDO HOLAAAAAAAA QUE MAAAAAAAAS</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>A</td>\r\n			<td>B</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C</td>\r\n			<td>D</td>\r\n		</tr>\r\n		<tr>\r\n			<td>E</td>\r\n			<td>F</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '2017-06-12 12:33:24', 2, '2017-06-12 00:33:24', NULL),
(5, 'NOTICIA DE EL CONTENIDO', '<h2 style="font-style:italic">ESTA ES LA PRIMERA NOTICIA&nbsp;</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>ID</td>\r\n			<td>NOTICIA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>BOMBA EN EL ANDINO</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>SEGUNDA NOTICIA</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '2017-06-19 02:27:43', 2, '2017-06-19 14:27:43', NULL),
(6, 'NOTICIA DE PRUEBA CONTENIDO', '<h1><span class="marker"><strong>ESTA ES LA NOTICIA DE PRUEBAS</strong></span></h1>\r\n\r\n<p>SEGUN LO NUEVO QUE NOS A PRESENTADO EL PROGRAMADOR ACERCA DE ESTAS NOTICIAS LLEGAMOS A LA CONCLUSION DE QUE LAS NOTICIAS SE ESTAN PRESENTANDO MUY BIEEEEEN</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="ESTA ES UNA IMAGEN DE MARIO BROSSS" src="https://s-media-cache-ak0.pinimg.com/736x/7c/1a/25/7c1a2581e6369f2961b174e68b3b3351.jpg" style="border-style:solid; border-width:1px; float:left; height:702px; width:736px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2017-06-19 03:16:53', 2, '2017-06-19 15:16:53', NULL),
(7, 'NOTICIA #44', '<p>ESTA NOTICIA TIENE MUCHAS IMAGENES&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<caption>TABLA IMAGEN</caption>\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">ID</th>\r\n			<th scope="col">IMAGEN</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><img alt="" src="https://s-media-cache-ak0.pinimg.com/originals/00/26/55/002655228ae3e174897bff8980cd50b0.jpg" style="border-style:solid; border-width:1px; float:left; height:208px; width:419px" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '2017-06-19 04:46:37', 2, '2017-06-19 16:46:37', NULL),
(8, 'NOTICIA ESTUDIANTES', '<p>NOTICIA DE LOS ESTUDIANTES</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DSAJDALJDKSJDLKJSAKLDJLSKAJDJALDSAJDLJDKSJDS</p>\r\n\r\n<p>DSLKAJDAKJDAKLJDLKAJKJLDJLASKJDSAJDLADJAKSJDKL</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>DSADAS</li>\r\n	<li>DSADA</li>\r\n	<li>DSADASDA</li>\r\n</ul>\r\n', '2017-06-21 09:04:37', 2, '2017-06-21 09:04:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(100) DEFAULT NULL,
  `id_usr_creo` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `id_usr_modifico` int(11) DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`id_rol`, `rol`, `id_usr_creo`, `fecha_creacion`, `id_usr_modifico`, `fecha_modificacion`, `estado`) VALUES
(8, 'Administrador', 1, '2016-11-14 01:37:11', 1, '2016-11-14 13:37:11', 'AC'),
(10, 'Estudiante', 1, '2016-11-14 01:39:51', 1, '2016-11-14 13:39:51', 'AC'),
(11, 'Asistencia de Carrera', 2, '2018-02-01 10:21:34', NULL, '2018-02-01 22:21:34', 'AC'),
(12, 'Secretaria de Carrera', 2, '2018-02-01 10:22:28', NULL, '2018-02-01 22:22:28', 'AC');

-- --------------------------------------------------------

--
-- Table structure for table `rol_tipo_proceso`
--

CREATE TABLE `rol_tipo_proceso` (
  `id_rol_tipo_proceso` int(11) NOT NULL,
  `id_tipo_proceso` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_usr_creo` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rol_tipo_proceso`
--

INSERT INTO `rol_tipo_proceso` (`id_rol_tipo_proceso`, `id_tipo_proceso`, `id_rol`, `id_usr_creo`, `fecha_creacion`) VALUES
(1, 1, 8, 2, '2017-02-26 02:31:49'),
(2, 2, 8, 2, '2017-02-26 06:18:44'),
(3, 3, 8, 2, '2017-02-26 06:30:19'),
(4, 4, 8, 2, '2017-02-26 07:13:27'),
(5, 5, 8, 2, '2017-02-26 08:38:26'),
(6, 6, 8, 2, '2017-02-26 10:52:54'),
(7, 7, 8, 2, '2017-02-26 11:02:22'),
(8, 8, 8, 2, '2017-02-26 11:05:13'),
(9, 1, 12, 2, '2018-02-01 10:22:38'),
(10, 2, 12, 2, '2018-02-01 10:22:39'),
(11, 3, 12, 2, '2018-02-01 10:22:41'),
(12, 4, 12, 2, '2018-02-01 10:22:43'),
(13, 5, 12, 2, '2018-02-01 10:22:44'),
(14, 6, 12, 2, '2018-02-01 10:22:46'),
(15, 7, 12, 2, '2018-02-01 10:22:47'),
(16, 8, 12, 2, '2018-02-01 10:22:49'),
(17, 1, 10, 2, '2018-02-01 10:26:34'),
(18, 3, 10, 2, '2018-02-01 10:26:36'),
(19, 5, 10, 2, '2018-02-01 10:26:37'),
(20, 7, 10, 2, '2018-02-01 10:26:39'),
(21, 8, 10, 2, '2018-02-01 10:26:40'),
(22, 9, 8, 2, '2018-09-11 03:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_campo`
--

CREATE TABLE `tipo_campo` (
  `id_tipo_campo` int(11) NOT NULL,
  `tipo_campo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_campo`
--

INSERT INTO `tipo_campo` (`id_tipo_campo`, `tipo_campo`) VALUES
(1, 'LISTA'),
(2, 'TEXTO'),
(3, 'FECHA'),
(4, 'HORA'),
(5, 'DESDE_HASTA'),
(6, 'TEXT_AREA'),
(7, 'CHECKBOX');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_proceso`
--

CREATE TABLE `tipo_proceso` (
  `id_tipo_proceso` int(11) NOT NULL,
  `icono` varchar(300) NOT NULL,
  `tipo_proceso` varchar(200) DEFAULT NULL,
  `id_usr_creo` int(11) DEFAULT NULL,
  `id_usr_modifico` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_proceso`
--

INSERT INTO `tipo_proceso` (`id_tipo_proceso`, `icono`, `tipo_proceso`, `id_usr_creo`, `id_usr_modifico`, `fecha_creacion`, `fecha_modificacion`, `estado`) VALUES
(1, 'ico_Proceso Retiro.png', 'RETIRO TEMPORAL', 2, NULL, '2017-02-26 02:31:15', '2017-02-26 14:31:15', 'AC'),
(2, 'ico_Proceso Retiro.png', 'RETIRO DEFINITIVO', 2, NULL, '2017-02-26 06:18:36', '2017-02-26 18:18:36', 'AC'),
(3, 'ico_Proceso Solicitud Carta Empresaa.png', 'CARTA DE PRESENTACION A EMPRESA', 2, NULL, '2017-02-26 06:30:10', '2017-02-26 18:30:10', 'AC'),
(4, 'ico_Proceso Solicitud Excusa para profesores.png', 'EXCUSA PARA PROFESORES', 2, NULL, '2017-02-26 07:13:12', '2017-02-26 19:13:12', 'AC'),
(5, 'ico_Proceso Solicitud Supletorio.png', 'SOLICITUD SUPLETORIO', 2, 2, '2017-02-26 08:38:16', '2018-03-02 11:33:59', 'AC'),
(6, 'ico_Proceso Solicitud Reserva de Salones-Auditorios-Salas de C_mputo.png', 'SOLICITUD RESERVA DE ESPACIOS', 2, NULL, '2017-02-26 10:52:43', '2017-02-26 22:52:43', 'AC'),
(7, 'ico_Proceso Actualizacion Requisito Ingles.png', 'ACTUALIZACION REQUISITO DE INGLES', 2, 2, '2017-02-26 11:01:32', '2018-03-02 11:40:47', 'AC'),
(8, 'ico_Proceso Cambio Carga Academica.png', 'SOLICITUD CAMBIO CARGA ACADEMICA', 2, NULL, '2017-02-26 11:05:02', '2017-02-26 23:05:02', 'AC'),
(9, 'ico_logo.png', 'PRUEBA 1', 2, NULL, '2018-09-11 03:46:05', '2018-09-11 15:46:05', 'AC');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_proceso_campo`
--

CREATE TABLE `tipo_proceso_campo` (
  `id_tipo_proceso_campo` int(11) NOT NULL,
  `id_tipo_proceso` int(11) NOT NULL,
  `id_campo` int(11) NOT NULL,
  `id_usr_creo` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_proceso_campo`
--

INSERT INTO `tipo_proceso_campo` (`id_tipo_proceso_campo`, `id_tipo_proceso`, `id_campo`, `id_usr_creo`, `fecha_creacion`) VALUES
(1, 1, 1, 2, '2017-02-26 14:31:15'),
(2, 1, 2, 2, '2017-02-26 14:31:15'),
(3, 1, 3, 2, '2017-02-26 14:31:15'),
(4, 1, 4, 2, '2017-02-26 14:31:15'),
(5, 1, 13, 2, '2017-02-26 14:31:15'),
(6, 1, 14, 2, '2017-02-26 14:31:15'),
(7, 1, 20, 2, '2017-02-26 14:31:15'),
(8, 1, 43, 2, '2017-02-26 14:31:15'),
(9, 1, 45, 2, '2017-02-26 14:31:15'),
(10, 1, 44, 2, '2017-02-26 14:31:15'),
(11, 1, 46, 2, '2017-02-26 14:31:15'),
(12, 1, 7, 2, '2017-02-26 14:31:15'),
(13, 1, 47, 2, '2017-02-26 14:31:15'),
(14, 1, 48, 2, '2017-02-26 14:31:15'),
(15, 1, 49, 2, '2017-02-26 14:31:15'),
(16, 1, 50, 2, '2017-02-26 14:31:15'),
(17, 1, 51, 2, '2017-02-26 14:31:15'),
(18, 2, 1, 2, '2017-02-26 18:18:36'),
(19, 2, 2, 2, '2017-02-26 18:18:36'),
(20, 2, 3, 2, '2017-02-26 18:18:36'),
(21, 2, 4, 2, '2017-02-26 18:18:36'),
(22, 2, 13, 2, '2017-02-26 18:18:36'),
(23, 2, 14, 2, '2017-02-26 18:18:36'),
(24, 2, 20, 2, '2017-02-26 18:18:36'),
(25, 2, 43, 2, '2017-02-26 18:18:36'),
(26, 2, 45, 2, '2017-02-26 18:18:36'),
(27, 2, 7, 2, '2017-02-26 18:18:36'),
(28, 2, 47, 2, '2017-02-26 18:18:36'),
(29, 2, 48, 2, '2017-02-26 18:21:11'),
(30, 2, 49, 2, '2017-02-26 18:21:11'),
(31, 2, 50, 2, '2017-02-26 18:22:01'),
(32, 2, 51, 2, '2017-02-26 18:22:01'),
(33, 3, 21, 2, '2017-02-26 18:30:10'),
(34, 3, 22, 2, '2017-02-26 18:30:10'),
(35, 3, 23, 2, '2017-02-26 18:30:10'),
(36, 3, 1, 2, '2017-02-26 18:30:10'),
(37, 3, 2, 2, '2017-02-26 18:30:10'),
(38, 3, 3, 2, '2017-02-26 18:30:10'),
(39, 3, 4, 2, '2017-02-26 18:30:10'),
(40, 3, 13, 2, '2017-02-26 18:30:10'),
(41, 3, 20, 2, '2017-02-26 18:30:10'),
(42, 3, 28, 2, '2017-02-26 18:30:10'),
(43, 3, 25, 2, '2017-02-26 18:30:10'),
(44, 3, 51, 2, '2017-02-26 18:38:01'),
(45, 4, 1, 2, '2017-02-26 19:13:12'),
(46, 4, 2, 2, '2017-02-26 19:13:12'),
(47, 4, 3, 2, '2017-02-26 19:13:12'),
(48, 4, 4, 2, '2017-02-26 19:13:12'),
(49, 4, 13, 2, '2017-02-26 19:13:12'),
(50, 4, 20, 2, '2017-02-26 19:13:12'),
(51, 4, 52, 2, '2017-02-26 19:13:12'),
(52, 4, 53, 2, '2017-02-26 19:13:12'),
(53, 4, 27, 2, '2017-02-26 19:13:12'),
(54, 4, 28, 2, '2017-02-26 19:13:12'),
(55, 4, 51, 2, '2017-02-26 19:15:59'),
(56, 5, 1, 2, '2017-02-26 20:38:16'),
(57, 5, 2, 2, '2017-02-26 20:38:16'),
(58, 5, 3, 2, '2017-02-26 20:38:16'),
(59, 5, 4, 2, '2017-02-26 20:38:16'),
(60, 5, 13, 2, '2017-02-26 20:38:16'),
(61, 5, 20, 2, '2017-02-26 20:38:16'),
(62, 5, 26, 2, '2017-02-26 20:38:16'),
(63, 5, 29, 2, '2017-02-26 20:38:16'),
(64, 5, 28, 2, '2017-02-26 20:38:16'),
(65, 5, 25, 2, '2017-02-26 20:38:16'),
(66, 5, 30, 2, '2017-02-26 20:38:16'),
(67, 5, 31, 2, '2017-02-26 20:38:16'),
(68, 5, 51, 2, '2017-02-26 20:44:40'),
(69, 6, 32, 2, '2017-02-26 22:52:43'),
(70, 6, 33, 2, '2017-02-26 22:52:43'),
(71, 6, 34, 2, '2017-02-26 22:52:43'),
(72, 6, 35, 2, '2017-02-26 22:52:43'),
(73, 6, 36, 2, '2017-02-26 22:52:43'),
(74, 6, 37, 2, '2017-02-26 22:52:43'),
(75, 6, 38, 2, '2017-02-26 22:52:43'),
(76, 6, 56, 2, '2017-02-26 22:52:43'),
(77, 6, 1, 2, '2017-02-26 22:52:43'),
(78, 6, 2, 2, '2017-02-26 22:52:43'),
(79, 6, 3, 2, '2017-02-26 22:52:43'),
(80, 6, 4, 2, '2017-02-26 22:52:43'),
(81, 6, 13, 2, '2017-02-26 22:52:43'),
(82, 6, 20, 2, '2017-02-26 22:52:43'),
(83, 6, 55, 2, '2017-02-26 22:52:43'),
(84, 7, 1, 2, '2017-02-26 23:01:32'),
(85, 7, 2, 2, '2017-02-26 23:01:32'),
(86, 7, 3, 2, '2017-02-26 23:01:32'),
(87, 7, 4, 2, '2017-02-26 23:01:32'),
(88, 7, 13, 2, '2017-02-26 23:01:32'),
(89, 7, 20, 2, '2017-02-26 23:01:32'),
(90, 7, 40, 2, '2017-02-26 23:01:32'),
(91, 8, 1, 2, '2017-02-26 23:05:02'),
(92, 8, 2, 2, '2017-02-26 23:05:02'),
(93, 8, 3, 2, '2017-02-26 23:05:02'),
(94, 8, 4, 2, '2017-02-26 23:05:02'),
(95, 8, 13, 2, '2017-02-26 23:05:02'),
(96, 8, 20, 2, '2017-02-26 23:05:02'),
(97, 8, 41, 2, '2017-02-26 23:05:02'),
(98, 8, 42, 2, '2017-02-26 23:05:02'),
(99, 9, 1, 2, '2018-09-11 15:46:05'),
(100, 9, 2, 2, '2018-09-11 15:46:05'),
(101, 9, 3, 2, '2018-09-11 15:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(150) DEFAULT NULL,
  `nombres` varchar(150) DEFAULT NULL,
  `apellidos` varchar(150) DEFAULT NULL,
  `clave` varchar(300) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `LDAP` varchar(5) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `nombres`, `apellidos`, `clave`, `correo`, `LDAP`, `estado`, `fecha_creacion`, `fecha_modificacion`) VALUES
(2, 'antares', 'Juan Camilo', 'Cruz Franco', 'f2ccf97e0987f5452ba6bf4e90560d7faf15f34030c2b1641294c0940edffc26eba798f6d372c72333a345006603f993b0a3d8e4bdadb2d96b43b65930b25335', 'kusanagimilo@gmail.com', 'NO', 'AC', '2016-11-14 03:08:36', '2016-11-14 15:08:36'),
(3, 'checho2_5', 'Diego', 'Eduardo', '4ee4b97f5f212fa8f491b5e27e7a461bfc9468965c4a0e78969ba330b551194de756d5b8d45805da3e6c9b7551241af19b1b1e69fc36784ca024de8b0f44ef41', 'checho2_7@hotmail.com', 'NO', 'IN', '2017-01-13 10:18:52', '2017-01-13 10:18:52'),
(4, 'kusanagimilo', 'Antares', 'Cruz', 'ba9b28c5bf9d2709c294f21e71c54c88132b4f6916e8073ced48f531443d443bce89707ef7be62dfcad9aa5b6f8ec853f4750b21756dfbf5ac2f78fd39595324', 'antares@gmail.com', 'NO', 'AC', '2017-01-18 03:30:37', '2017-01-18 15:30:37'),
(5, 'juan.cruz', 'Juan Camilo Cruz Franco', 'Cruz Franco', NULL, 'juan.cruz@ica.gov.co', 'SI', 'IN', '2017-02-27 11:49:19', '2017-02-27 11:49:19'),
(6, 'ricardo.rugeles', 'RICARDO XIMENO RUGELES JIMENEZ', 'RUGELES JIMENEZ', NULL, 'ricardo.rugeles@javeriana.edu.co', 'SI', 'AC', '2017-02-27 02:49:02', '2017-02-27 14:49:02'),
(7, 'faroca', 'FABIO IVAN AROCA LARA', 'AROCA LARA', NULL, 'faroca@javeriana.edu.co', 'SI', 'AC', '2017-02-28 09:36:21', '2017-02-28 09:36:21'),
(8, 'msarmientos', 'MARIA ALEJANDRA SARMIENTO SALAMANCA', 'SARMIENTO SALAMANCA', NULL, 'msarmientos@javeriana.edu.co', 'SI', 'AC', '2017-02-28 10:28:27', '2017-02-28 10:28:27'),
(9, 'anamartin', 'ANA LORENA MARTIN ALDANA', 'MARTIN ALDANA', NULL, 'anamartin@javeriana.edu.co', 'SI', 'AC', '2017-02-28 10:28:48', '2017-02-28 10:28:48'),
(10, 'arango.laura', 'LAURA ARANGO CABEZAS', 'ARANGO CABEZAS', NULL, 'arango.laura@javeriana.edu.co', 'SI', 'AC', '2017-03-02 09:14:59', '2017-03-02 09:14:59'),
(11, 'barrios.maria', 'MARIA ALEJANDRA BARRIOS MENESES', 'BARRIOS MENESES', NULL, 'barrios.maria@javeriana.edu.co', 'SI', 'AC', '2017-03-06 04:24:20', '2017-03-06 16:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `id_usuario_rol` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario_rol`
--

INSERT INTO `usuario_rol` (`id_usuario_rol`, `id_usuario`, `id_rol`, `fecha_creacion`) VALUES
(1, 2, 8, '2016-12-14 12:29:31'),
(2, 3, 10, '2017-01-13 10:18:52'),
(3, 4, 10, '2017-01-18 15:30:37'),
(4, 5, 8, '2017-02-27 11:49:19'),
(5, 6, 8, '2017-02-27 14:49:02'),
(6, 7, 8, '2017-02-28 09:36:21'),
(7, 8, 8, '2017-02-28 10:28:27'),
(8, 9, 10, '2017-02-28 10:28:48'),
(9, 10, 8, '2017-03-02 09:14:59'),
(10, 11, 10, '2017-03-06 16:24:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campos`
--
ALTER TABLE `campos`
  ADD PRIMARY KEY (`id_campo`);

--
-- Indexes for table `caso`
--
ALTER TABLE `caso`
  ADD PRIMARY KEY (`id_caso`);

--
-- Indexes for table `dato`
--
ALTER TABLE `dato`
  ADD PRIMARY KEY (`id_dato`);

--
-- Indexes for table `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id_documento`);

--
-- Indexes for table `documento_caso`
--
ALTER TABLE `documento_caso`
  ADD PRIMARY KEY (`id_documento_caso`);

--
-- Indexes for table `documento_tipo_proceso`
--
ALTER TABLE `documento_tipo_proceso`
  ADD PRIMARY KEY (`id_documento_tipo_proceso`);

--
-- Indexes for table `estado_proceso`
--
ALTER TABLE `estado_proceso`
  ADD PRIMARY KEY (`id_estado_proceso`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id_links`);

--
-- Indexes for table `links_rol`
--
ALTER TABLE `links_rol`
  ADD PRIMARY KEY (`id_links_rol`);

--
-- Indexes for table `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id_noticia`);

--
-- Indexes for table `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indexes for table `rol_tipo_proceso`
--
ALTER TABLE `rol_tipo_proceso`
  ADD PRIMARY KEY (`id_rol_tipo_proceso`);

--
-- Indexes for table `tipo_campo`
--
ALTER TABLE `tipo_campo`
  ADD PRIMARY KEY (`id_tipo_campo`);

--
-- Indexes for table `tipo_proceso`
--
ALTER TABLE `tipo_proceso`
  ADD PRIMARY KEY (`id_tipo_proceso`);

--
-- Indexes for table `tipo_proceso_campo`
--
ALTER TABLE `tipo_proceso_campo`
  ADD PRIMARY KEY (`id_tipo_proceso_campo`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indexes for table `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`id_usuario_rol`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campos`
--
ALTER TABLE `campos`
  MODIFY `id_campo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `caso`
--
ALTER TABLE `caso`
  MODIFY `id_caso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `dato`
--
ALTER TABLE `dato`
  MODIFY `id_dato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `documento`
--
ALTER TABLE `documento`
  MODIFY `id_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `documento_caso`
--
ALTER TABLE `documento_caso`
  MODIFY `id_documento_caso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `documento_tipo_proceso`
--
ALTER TABLE `documento_tipo_proceso`
  MODIFY `id_documento_tipo_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `estado_proceso`
--
ALTER TABLE `estado_proceso`
  MODIFY `id_estado_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id_links` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `links_rol`
--
ALTER TABLE `links_rol`
  MODIFY `id_links_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `rol_tipo_proceso`
--
ALTER TABLE `rol_tipo_proceso`
  MODIFY `id_rol_tipo_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tipo_campo`
--
ALTER TABLE `tipo_campo`
  MODIFY `id_tipo_campo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tipo_proceso`
--
ALTER TABLE `tipo_proceso`
  MODIFY `id_tipo_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tipo_proceso_campo`
--
ALTER TABLE `tipo_proceso_campo`
  MODIFY `id_tipo_proceso_campo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `usuario_rol`
--
ALTER TABLE `usuario_rol`
  MODIFY `id_usuario_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
