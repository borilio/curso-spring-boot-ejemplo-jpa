/* Sentencias DML para añadir datos a la base de datos nuclear */
USE nuclear;

--
-- Volcado de datos para la tabla `roles`
--
INSERT INTO roles (rol) VALUES
	('administrador'),
	('usuario'),
	('visor');

--
-- Volcado de datos para la tabla `usuarios`
--
INSERT INTO usuarios (id_rol, nombre, correo, clave) VALUES
    (1, 'Admin 1', 'admin1@empresa.com', '654321'),
    (1, 'Admin 2', 'admin2@empresa.com', '654321'),
    (2, 'Usuario', 'user@empresa.com', '123456'),
    (3, 'Visor', 'visor@empresa.com', '123456');


--
-- Volcado de datos para la tabla `tipos`
--
INSERT INTO tipos (tipo) VALUES
('PWR'),('BWR'),('VVER Ruso'),('CANDU (Canadian Natural Deuterium Uranium)'),('MAGNOX Inglés'),('FBR');

--
-- Volcado de datos para la tabla `provincias`
--
INSERT INTO provincias (id, nombre) VALUES
('00', ''),
('01', 'Álava'),
('02', 'Albacete'),
('03', 'Alicante'),
('04', 'Almería'),
('05', 'Ávila'),
('06', 'Badajoz'),
('07', 'Baleares (Illes)'),
('08', 'Barcelona'),
('09', 'Burgos'),
('10', 'Cáceres'),
('11', 'Cádiz'),
('12', 'Castellón'),
('13', 'Ciudad Real'),
('14', 'Córdoba'),
('15', 'A Coruña'),
('16', 'Cuenca'),
('17', 'Girona'),
('18', 'Granada'),
('19', 'Guadalajara'),
('20', 'Guipúzcoa'),
('21', 'Huelva'),
('22', 'Huesca'),
('23', 'Jaén'),
('24', 'León'),
('25', 'Lleida'),
('26', 'La Rioja'),
('27', 'Lugo'),
('28', 'Madrid'),
('29', 'Málaga'),
('30', 'Murcia'),
('31', 'Navarra'),
('32', 'Ourense'),
('33', 'Asturias'),
('34', 'Palencia'),
('35', 'Las Palmas'),
('36', 'Pontevedra'),
('37', 'Salamanca'),
('38', 'Santa Cruz de Tenerife'),
('39', 'Cantabria'),
('40', 'Segovia'),
('41', 'Sevilla'),
('42', 'Soria'),
('43', 'Tarragona'),
('44', 'Teruel'),
('45', 'Toledo'),
('46', 'Valencia'),
('47', 'Valladolid'),
('48', 'Vizcaya'),
('49', 'Zamora'),
('50', 'Zaragoza'),
('51', 'Ceuta'),
('52', 'Melilla'),
('99', 'Internacional');

--
-- Volcado de datos para la tabla `tipos`
--
INSERT INTO centrales (id_tipo, latitud, longitud, descripcion, imagen, potencia, id_provincia, activa, inicio) VALUES
(1, '39.8055894','-5.6894704', 'Almaraz I', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Centranuclearalmaraz2.JPG/368px-Centranuclearalmaraz2.JPG', 980, '10', b'1','1980-1-1'),
(2, '37.4210301','141.0231186', 'Fukushima I', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Fukushima-1.JPG/245px-Fukushima-1.JPG', 4600, '99', b'0','1971-04-26'),
(1, '41.201675', '0.573101', 'Ascó I', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Central_Nuclear_d%27Asc%C3%B3_%28Tarragona%2C_Catalunya%29.jpg/245px-Central_Nuclear_d%27Asc%C3%B3_%28Tarragona%2C_Catalunya%29.jpg', 1032, '43', b'1', '1982-1-1'),
(3, '51.3885605','30.0970901', 'Chernobyl', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Chernobyl_NPP_Site_Panorama_with_NSC_Construction_-_June_2013.jpg/245px-Chernobyl_NPP_Site_Panorama_with_NSC_Construction_-_June_2013.jpg', 2000, '99', b'0', '1972-08-15')
;


--
-- Volcado de datos para la tabla `incidencias`
--

INSERT INTO incidencias (id_usuario, id_central, texto, resuelta) VALUES
(1, 2, "Terremoto importante", b'1'),
(2, 3, "Incidencia en Ascó. Grave", b'0');