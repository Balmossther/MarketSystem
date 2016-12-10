/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : tienda_online

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-12-10 14:21:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `categorias`
-- ----------------------------
DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `categoria_id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_nombre` varchar(150) NOT NULL,
  `categoria_descripcion` varchar(250) NOT NULL,
  PRIMARY KEY (`categoria_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categorias
-- ----------------------------
INSERT INTO `categorias` VALUES ('1', 'Accesorio Electronicos', 'Aparatos Electronicos y Portatiles');
INSERT INTO `categorias` VALUES ('2', 'Laptop', 'Portatiles');
INSERT INTO `categorias` VALUES ('3', 'Accesorios de Computadoras', 'Gadget, accesorios y mas');

-- ----------------------------
-- Table structure for `clientes`
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `cliente_id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_nombre` varchar(100) NOT NULL,
  `cliente_apellido` varchar(100) NOT NULL,
  `cliente_correo` varchar(100) NOT NULL,
  `cliente_passw` varchar(100) NOT NULL,
  `cliente_pais` varchar(100) NOT NULL,
  `cliente_departamento` varchar(150) NOT NULL,
  `cliente_direccion` varchar(250) NOT NULL,
  `cliente_telefono` varchar(10) NOT NULL,
  `cliente_fecha_registro` datetime NOT NULL,
  `cliente_fecha_nacimiento` date NOT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES ('1', 'Liam', 'Martinez', 'hola@gmail.com', '123', 'EL SALVADOR', 'SAN FRANCISCO GOTERA', 'BO. SAN RAFAEL, 4A. CALLE ORIENTE N20', '1212-1212', '2016-08-13 00:00:00', '2000-01-30');
INSERT INTO `clientes` VALUES ('2', 'LYAM', 'AMAYA', 'a@hotmail.com', '4545', 'EL SALVADOR', 'SAN SALVADOR', 'OSICALA', '75787578', '2016-10-22 00:00:00', '0000-00-00');
INSERT INTO `clientes` VALUES ('4', 'Roberto', 'Mendez', 'hola1@hotmail.com', '1515', 'EL SALVADOR', 'SAN MIGUEL', 'San Miguel, ', '75757887', '2016-12-10 13:22:35', '2012-01-01');

-- ----------------------------
-- Table structure for `lista_compras`
-- ----------------------------
DROP TABLE IF EXISTS `lista_compras`;
CREATE TABLE `lista_compras` (
  `lista_compra_id` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `lista_compra_cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`lista_compra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lista_compras
-- ----------------------------
INSERT INTO `lista_compras` VALUES ('5', '7', '1', '2');

-- ----------------------------
-- Table structure for `marca`
-- ----------------------------
DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca` (
  `marca_id` int(11) NOT NULL AUTO_INCREMENT,
  `marca_nombre` varchar(150) NOT NULL,
  `marca_descripcion` varchar(250) NOT NULL,
  PRIMARY KEY (`marca_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of marca
-- ----------------------------
INSERT INTO `marca` VALUES ('1', 'SONY', 'Accesorios Sony');
INSERT INTO `marca` VALUES ('2', 'LG', 'Electronica LG');
INSERT INTO `marca` VALUES ('3', 'ACER', 'Marca de Laptop, economicas');
INSERT INTO `marca` VALUES ('4', 'HP', 'Marca de Laptop');

-- ----------------------------
-- Table structure for `modelo`
-- ----------------------------
DROP TABLE IF EXISTS `modelo`;
CREATE TABLE `modelo` (
  `modelo_id` int(11) NOT NULL AUTO_INCREMENT,
  `marca_id` int(11) NOT NULL,
  `modelo_nombre` varchar(200) NOT NULL,
  `modelo_descripcion` varchar(250) NOT NULL,
  PRIMARY KEY (`modelo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of modelo
-- ----------------------------
INSERT INTO `modelo` VALUES ('1', '4', 'hp Notebook', 'Laptop Color Negro, Pantalla 1200*750');
INSERT INTO `modelo` VALUES ('2', '3', 'Acer 100', 'Laptop Economica, Color Gris');
INSERT INTO `modelo` VALUES ('3', '4', 'Kingston', 'USB');
INSERT INTO `modelo` VALUES ('4', '2', 'Electronics 250', 'Accesorios electronicos varios');

-- ----------------------------
-- Table structure for `productos`
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `producto_id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) NOT NULL,
  `subcategoria_id` int(11) NOT NULL,
  `modelo_id` int(11) NOT NULL,
  `marca_id` int(11) NOT NULL,
  `producto_nombre` varchar(200) NOT NULL,
  `producto_descripcion` varchar(250) NOT NULL,
  `producto_precio` decimal(6,2) NOT NULL,
  `producto_cantidad` int(11) NOT NULL,
  `producto_fecha_registro` datetime NOT NULL,
  `producto_url_imagen` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`producto_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES ('2', '3', '0', '1', '2', 'USB 10 gb', 'Color Verde', '5.50', '250', '2016-08-01 00:00:00', 'https://pedidos.com/myfotos/xLarge/(X)ME-KIN-8GGREEN.jpg');
INSERT INTO `productos` VALUES ('3', '2', '0', '1', '1', 'Mouse Optico', 'Laser ', '20.00', '450', '2016-08-01 00:00:00', 'https://images.pcel.com/300/e47swAbsGXsnhpZ8.jpg');
INSERT INTO `productos` VALUES ('4', '3', '0', '4', '2', 'MousePad 16x20', 'Estampado Rocket', '10.00', '118', '2016-08-01 00:00:00', 'http://bpc.h-cdn.co/assets/16/11/480x480/gallery-1458229603-steel-series-dex-gaming-mouse-pad.jpg');
INSERT INTO `productos` VALUES ('5', '3', '0', '4', '2', 'Carcasa de Enclouser', 'Color Verde - Negro', '5.00', '50', '2016-08-01 00:00:00', 'http://voragolive.com/images/productos/accesorios/HDD-102/carcasa-para-disco-duro-vorago-HDD-102-titulo.png');
INSERT INTO `productos` VALUES ('7', '1', '0', '1', '1', 'Laptop', 'N/D', '34.00', '545', '2016-10-22 00:00:00', 'http://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c05059975.png');

-- ----------------------------
-- Table structure for `promociones`
-- ----------------------------
DROP TABLE IF EXISTS `promociones`;
CREATE TABLE `promociones` (
  `id_promocion` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `fecha_inicia` date NOT NULL,
  `fecha_termina` date NOT NULL,
  `precio` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id_promocion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promociones
-- ----------------------------

-- ----------------------------
-- Table structure for `subcategorias`
-- ----------------------------
DROP TABLE IF EXISTS `subcategorias`;
CREATE TABLE `subcategorias` (
  `subcategoria_id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) NOT NULL,
  `subcategoria_nombre` varchar(200) NOT NULL,
  `subcategoria_descripcion` varchar(250) NOT NULL,
  PRIMARY KEY (`subcategoria_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subcategorias
-- ----------------------------
INSERT INTO `subcategorias` VALUES ('1', '1', 'Mouse', 'Los Diferentes tipos de mouse');
INSERT INTO `subcategorias` VALUES ('2', '2', 'Memorias USB', 'USB de todas las capacidades');
INSERT INTO `subcategorias` VALUES ('3', '3', 'Gadget', 'Gadget varios de escritorio');

-- ----------------------------
-- Table structure for `usuarios`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_nombre` varchar(150) NOT NULL,
  `usuario_user` varchar(150) NOT NULL,
  `usuario_passw` varchar(150) NOT NULL,
  `usuario_correo` varchar(200) NOT NULL,
  `usuario_tipo` varchar(50) NOT NULL,
  `usuario_estado` varchar(25) NOT NULL,
  `usuario_fecha_registro` datetime NOT NULL,
  PRIMARY KEY (`usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('9', 'LINK AND ZELDA', 'LINK', '1515', 'a@hotmail.com', 'ADMINISTRACION', 'ACTIVO', '2016-10-08 00:00:00');
INSERT INTO `usuarios` VALUES ('4', 'juan550', 'Juan Ernesto', '7887', 'a@hotmail.com', 'VENDEDOR', 'DESACTIVADO', '2016-10-02 00:00:00');

-- ----------------------------
-- Table structure for `ventas_detalle`
-- ----------------------------
DROP TABLE IF EXISTS `ventas_detalle`;
CREATE TABLE `ventas_detalle` (
  `venta_d_id` int(11) NOT NULL AUTO_INCREMENT,
  `venta_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `venta_d_cantidad` int(11) NOT NULL,
  `venta_d_precio` decimal(4,2) NOT NULL,
  `venta_d_fecha` datetime NOT NULL,
  PRIMARY KEY (`venta_d_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ventas_detalle
-- ----------------------------
INSERT INTO `ventas_detalle` VALUES ('1', '1', '2', '1', '10.00', '2016-08-13 00:00:00');
INSERT INTO `ventas_detalle` VALUES ('2', '1', '1', '1', '10.00', '2016-08-13 00:00:00');
INSERT INTO `ventas_detalle` VALUES ('3', '1', '0', '1', '5.00', '2016-08-13 00:00:00');
INSERT INTO `ventas_detalle` VALUES ('4', '1', '3', '1', '20.00', '2016-08-13 00:00:00');
INSERT INTO `ventas_detalle` VALUES ('5', '1', '0', '1', '5.50', '2016-08-13 00:00:00');
INSERT INTO `ventas_detalle` VALUES ('6', '4', '4', '3', '10.00', '2016-12-09 21:59:45');
INSERT INTO `ventas_detalle` VALUES ('7', '5', '4', '3', '10.00', '2016-12-09 22:02:10');
INSERT INTO `ventas_detalle` VALUES ('8', '6', '4', '3', '10.00', '2016-12-09 22:41:37');
INSERT INTO `ventas_detalle` VALUES ('9', '7', '4', '1', '10.00', '2016-12-09 22:44:05');
INSERT INTO `ventas_detalle` VALUES ('10', '8', '4', '1', '10.00', '2016-12-10 13:40:41');
INSERT INTO `ventas_detalle` VALUES ('11', '9', '7', '1', '34.00', '2016-12-10 14:06:08');

-- ----------------------------
-- Table structure for `ventas_general`
-- ----------------------------
DROP TABLE IF EXISTS `ventas_general`;
CREATE TABLE `ventas_general` (
  `venta_id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `venta_cantidad` int(11) NOT NULL,
  `venta_total` decimal(4,2) NOT NULL,
  `venta_fecha` datetime NOT NULL,
  `venta_estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`venta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ventas_general
-- ----------------------------
INSERT INTO `ventas_general` VALUES ('1', '1', '5', '50.50', '2016-08-13 00:00:00', 'PENDIENTE');
INSERT INTO `ventas_general` VALUES ('2', '1', '2', '20.00', '2016-12-09 20:53:31', 'APROBADO');
INSERT INTO `ventas_general` VALUES ('3', '1', '0', '0.00', '2016-12-09 21:57:55', 'RECHAZADO');
INSERT INTO `ventas_general` VALUES ('4', '1', '0', '0.00', '2016-12-09 21:59:45', 'PENDIENTE');
INSERT INTO `ventas_general` VALUES ('5', '1', '3', '30.00', '2016-12-09 22:02:10', 'APROBADO');
INSERT INTO `ventas_general` VALUES ('6', '1', '3', '30.00', '2016-12-09 22:41:37', 'APROBADO');
INSERT INTO `ventas_general` VALUES ('7', '1', '1', '10.00', '2016-12-09 22:44:05', 'APROBADO');
INSERT INTO `ventas_general` VALUES ('8', '1', '1', '10.00', '2016-12-10 13:40:41', 'PENDIENTE');
INSERT INTO `ventas_general` VALUES ('9', '1', '1', '34.00', '2016-12-10 14:06:08', 'PENDIENTE');
