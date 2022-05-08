/* Sentencias DDL para crear el esquema de la base de datos nuclear */
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



DROP DATABASE IF EXISTS nuclear;
CREATE DATABASE IF NOT EXISTS nuclear DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE nuclear;

--
-- Estructura de tabla para la tabla `tipos`
--
CREATE TABLE tipos (
	id int(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	tipo varchar(60) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;



--
-- Estructura de tabla para la tabla `provincias`
--
CREATE TABLE provincias (
	id varchar(2) NOT NULL PRIMARY KEY DEFAULT '00',
	nombre varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Estructura de tabla para la tabla `centrales`
--
CREATE TABLE centrales (
	id int(5) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	id_tipo int(5) NOT NULL, 
	latitud varchar(15) DEFAULT '' NOT NULL,
	longitud varchar(15) DEFAULT '' NOT NULL,
	descripcion varchar(250) DEFAULT '' NOT NULL,
	imagen varchar(500) DEFAULT '' NOT NULL,
	potencia int(7) DEFAULT 500 NOT NULL,
	id_provincia varchar(2) DEFAULT '00' NOT NULL,
	activa bit(1) DEFAULT b'1' NOT NULL, 
	inicio datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
	fin datetime DEFAULT NULL,
	observaciones TEXT,
	FOREIGN KEY (id_tipo) REFERENCES tipos (id),
	FOREIGN KEY (id_provincia) REFERENCES provincias (id)	
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Estructura de tabla para la tabla `roles`
--
CREATE TABLE roles (
	id int(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	rol varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE usuarios (
	id int(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_rol int(5) NOT NULL DEFAULT 2, /*Por defecto, es usuario*/
	nombre varchar(50) NOT NULL DEFAULT '',
	correo varchar(50) NOT NULL UNIQUE,
	clave varchar(50) NOT NULL DEFAULT '',
	FOREIGN KEY (id_rol) REFERENCES roles (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Estructura de tabla para la tabla `incidencias`
--

CREATE TABLE incidencias (
	id int(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_usuario int(5) NOT NULL,
	id_central int(5) NOT NULL,
	texto varchar(255) DEFAULT '(Descripción de la incidencia)' NOT NULL,
	fecha datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
	resuelta bit(1) DEFAULT b'0' NOT NULL,
	FOREIGN KEY (id_usuario) REFERENCES usuarios (id),
	FOREIGN KEY (id_central) REFERENCES centrales (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;