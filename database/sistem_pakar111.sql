/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : sistem_pakar111

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-09-26 19:46:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `analisa_hasil`
-- ----------------------------
DROP TABLE IF EXISTS `analisa_hasil`;
CREATE TABLE `analisa_hasil` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `nama_pasien` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` enum('J','B') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `session_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  `kd_penyakit` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of analisa_hasil
-- ----------------------------
INSERT INTO `analisa_hasil` VALUES ('6', 'dede', 'B', 'w', '5e33fa078d77e04825d701b69b7ad013', '2015-09-24 12:25:35', '11');
INSERT INTO `analisa_hasil` VALUES ('7', 'dede', 'J', 'wweessss', 'dabb8a650a121b36469e9cb9bc3aa436', '2015-09-24 12:27:06', '11');
INSERT INTO `analisa_hasil` VALUES ('8', 'Dede Gunawan', 'J', 'Cioray', 'f6bd06d263a7a226feb740102c8d61d1', '2015-09-24 14:29:48', '0');
INSERT INTO `analisa_hasil` VALUES ('9', 'Dede Gunawan', 'J', 'Cijantung', '47a607fa627caccfeca54c6932e9a5aa', '2015-09-24 15:01:11', '15');
INSERT INTO `analisa_hasil` VALUES ('10', 'p', 'B', 'j', '8c89e7bf4e49673735ba20dda5f629de', '2018-09-21 05:24:58', '0');
INSERT INTO `analisa_hasil` VALUES ('11', 'e', 'J', 'rr', 'bf4126a0a20a3183167f29bdc27c8b19', '2018-09-21 05:27:59', '15');
INSERT INTO `analisa_hasil` VALUES ('12', 'er', 'J', 'ff', 'ae628167590875c8cd4c22d9d99fa0c7', '2018-09-21 05:44:46', '16');
INSERT INTO `analisa_hasil` VALUES ('13', 'tito', '', 'smd', 'e9af7f5396e58791950b8c414278a3c2', '2018-09-22 04:23:48', '0');
INSERT INTO `analisa_hasil` VALUES ('14', 'RIMA', '', 'smd', 'ed30400318e7e78bd50c401949c0d9d7', '2018-09-23 04:07:51', '0');
INSERT INTO `analisa_hasil` VALUES ('15', 'mm', '', 'kk', '6bfca2097110330c19e548b498bbf6b0', '2018-09-24 03:34:59', '0');
INSERT INTO `analisa_hasil` VALUES ('16', 't', '', 'y', '13d0402a783cf37d6a2a2275bc6f88a6', '2018-09-25 15:12:10', '0');

-- ----------------------------
-- Table structure for `gejala`
-- ----------------------------
DROP TABLE IF EXISTS `gejala`;
CREATE TABLE `gejala` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nm_gejala` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gejala
-- ----------------------------
INSERT INTO `gejala` VALUES ('18', 'Demam Tinggi');
INSERT INTO `gejala` VALUES ('19', 'nafsu makan menurun');
INSERT INTO `gejala` VALUES ('20', 'bintik merah pada kulit');
INSERT INTO `gejala` VALUES ('21', 'mual muntah susah tidur');
INSERT INTO `gejala` VALUES ('22', 'bibir pecah-pecah');
INSERT INTO `gejala` VALUES ('23', 'nafsu makan menurun');
INSERT INTO `gejala` VALUES ('24', 'lesu lemah letih');
INSERT INTO `gejala` VALUES ('25', 'widalnya positif');

-- ----------------------------
-- Table structure for `jenis_sapi`
-- ----------------------------
DROP TABLE IF EXISTS `jenis_sapi`;
CREATE TABLE `jenis_sapi` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `nama_jenis` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jenis_sapi
-- ----------------------------
INSERT INTO `jenis_sapi` VALUES ('1', 'Perah');
INSERT INTO `jenis_sapi` VALUES ('2', 'Pedaging');
INSERT INTO `jenis_sapi` VALUES ('3', 'Indukan');

-- ----------------------------
-- Table structure for `penyakit`
-- ----------------------------
DROP TABLE IF EXISTS `penyakit`;
CREATE TABLE `penyakit` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nm_penyakit` varchar(128) NOT NULL,
  `nm_latin` varchar(128) NOT NULL,
  `definisi` text NOT NULL,
  `solusi` text NOT NULL,
  `other` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penyakit
-- ----------------------------
INSERT INTO `penyakit` VALUES ('16', 'Demam Berdarah Dengue (DBD)', 'DBD', 'penyakit ini disebabkan oleh nyamuk', 'bawa ke dokter', '');
INSERT INTO `penyakit` VALUES ('17', 'Tifus', 'tipes', 'penyakit dengan demam tinggi', 'bawa ke dokter', '');

-- ----------------------------
-- Table structure for `relasi`
-- ----------------------------
DROP TABLE IF EXISTS `relasi`;
CREATE TABLE `relasi` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `kd_penyakit` int(6) NOT NULL,
  `kd_gejala` int(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`kd_penyakit`,`kd_gejala`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of relasi
-- ----------------------------
INSERT INTO `relasi` VALUES ('1', '16', '19');
INSERT INTO `relasi` VALUES ('2', '16', '20');
INSERT INTO `relasi` VALUES ('3', '16', '21');
INSERT INTO `relasi` VALUES ('4', '17', '18');
INSERT INTO `relasi` VALUES ('5', '17', '22');
INSERT INTO `relasi` VALUES ('6', '17', '23');
INSERT INTO `relasi` VALUES ('7', '17', '24');
INSERT INTO `relasi` VALUES ('8', '17', '25');

-- ----------------------------
-- Table structure for `tmp_analisa`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_analisa`;
CREATE TABLE `tmp_analisa` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(128) NOT NULL DEFAULT '',
  `kd_penyakit` longtext NOT NULL,
  `kd_gejala` int(6) NOT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmp_analisa
-- ----------------------------
INSERT INTO `tmp_analisa` VALUES ('6', 'deb9ff027f0f2ed5d05fd6b0d6532fdb', '[11,12,13]', '7', 'Y');
INSERT INTO `tmp_analisa` VALUES ('7', 'deb9ff027f0f2ed5d05fd6b0d6532fdb', '[11,13]', '4', 'Y');
INSERT INTO `tmp_analisa` VALUES ('8', 'deb9ff027f0f2ed5d05fd6b0d6532fdb', '[13]', '5', 'N');
INSERT INTO `tmp_analisa` VALUES ('9', '8638279a8a8b9f2f4d2bdb19ab04d8bb', '[11,12,13]', '7', 'Y');
INSERT INTO `tmp_analisa` VALUES ('10', '8638279a8a8b9f2f4d2bdb19ab04d8bb', '[11,13]', '4', 'Y');
INSERT INTO `tmp_analisa` VALUES ('11', '8638279a8a8b9f2f4d2bdb19ab04d8bb', '[11]', '5', 'Y');
INSERT INTO `tmp_analisa` VALUES ('12', '8638279a8a8b9f2f4d2bdb19ab04d8bb', '[11]', '6', 'Y');
INSERT INTO `tmp_analisa` VALUES ('13', '8638279a8a8b9f2f4d2bdb19ab04d8bb', '[11]', '8', 'Y');
INSERT INTO `tmp_analisa` VALUES ('14', 'd07e49428806d86cd2c4ab10dc1c72bf', '[11,12,13]', '7', 'Y');
INSERT INTO `tmp_analisa` VALUES ('15', 'd07e49428806d86cd2c4ab10dc1c72bf', '[11,13]', '4', 'Y');
INSERT INTO `tmp_analisa` VALUES ('16', 'd07e49428806d86cd2c4ab10dc1c72bf', '[11]', '5', 'Y');
INSERT INTO `tmp_analisa` VALUES ('17', 'd07e49428806d86cd2c4ab10dc1c72bf', '[11]', '6', 'Y');
INSERT INTO `tmp_analisa` VALUES ('18', 'd07e49428806d86cd2c4ab10dc1c72bf', '[11]', '8', 'Y');
INSERT INTO `tmp_analisa` VALUES ('19', '5e33fa078d77e04825d701b69b7ad013', '[11,12,13]', '7', 'Y');
INSERT INTO `tmp_analisa` VALUES ('20', '5e33fa078d77e04825d701b69b7ad013', '[11,13]', '4', 'Y');
INSERT INTO `tmp_analisa` VALUES ('21', '5e33fa078d77e04825d701b69b7ad013', '[11]', '5', 'Y');
INSERT INTO `tmp_analisa` VALUES ('22', '5e33fa078d77e04825d701b69b7ad013', '[11]', '6', 'Y');
INSERT INTO `tmp_analisa` VALUES ('23', '5e33fa078d77e04825d701b69b7ad013', '[11]', '8', 'Y');
INSERT INTO `tmp_analisa` VALUES ('24', 'dabb8a650a121b36469e9cb9bc3aa436', '[11,12,13]', '7', 'Y');
INSERT INTO `tmp_analisa` VALUES ('25', 'dabb8a650a121b36469e9cb9bc3aa436', '[11,13]', '4', 'Y');
INSERT INTO `tmp_analisa` VALUES ('26', 'dabb8a650a121b36469e9cb9bc3aa436', '[11]', '5', 'Y');
INSERT INTO `tmp_analisa` VALUES ('27', 'dabb8a650a121b36469e9cb9bc3aa436', '[11]', '6', 'Y');
INSERT INTO `tmp_analisa` VALUES ('28', 'dabb8a650a121b36469e9cb9bc3aa436', '[11]', '8', 'Y');
INSERT INTO `tmp_analisa` VALUES ('29', '47a607fa627caccfeca54c6932e9a5aa', '[15]', '7', 'N');
INSERT INTO `tmp_analisa` VALUES ('30', '47a607fa627caccfeca54c6932e9a5aa', '[15]', '15', 'Y');
INSERT INTO `tmp_analisa` VALUES ('31', '8c89e7bf4e49673735ba20dda5f629de', '[11,12,13]', '7', 'Y');
INSERT INTO `tmp_analisa` VALUES ('32', '8c89e7bf4e49673735ba20dda5f629de', '[11,13]', '4', 'Y');
INSERT INTO `tmp_analisa` VALUES ('33', '8c89e7bf4e49673735ba20dda5f629de', '[11]', '5', 'Y');
INSERT INTO `tmp_analisa` VALUES ('34', 'bf4126a0a20a3183167f29bdc27c8b19', '[15]', '7', 'N');
INSERT INTO `tmp_analisa` VALUES ('35', 'bf4126a0a20a3183167f29bdc27c8b19', '[15]', '15', 'Y');
INSERT INTO `tmp_analisa` VALUES ('36', 'ae628167590875c8cd4c22d9d99fa0c7', '[16]', '19', 'Y');
INSERT INTO `tmp_analisa` VALUES ('37', 'ae628167590875c8cd4c22d9d99fa0c7', '[16]', '20', 'Y');
INSERT INTO `tmp_analisa` VALUES ('38', 'e9af7f5396e58791950b8c414278a3c2', '[17]', '18', 'Y');
INSERT INTO `tmp_analisa` VALUES ('39', 'e9af7f5396e58791950b8c414278a3c2', '[17]', '22', 'Y');
INSERT INTO `tmp_analisa` VALUES ('40', 'ed30400318e7e78bd50c401949c0d9d7', '[16]', '19', 'Y');
INSERT INTO `tmp_analisa` VALUES ('41', '6bfca2097110330c19e548b498bbf6b0', '[16]', '19', 'Y');
INSERT INTO `tmp_analisa` VALUES ('42', '13d0402a783cf37d6a2a2275bc6f88a6', '[16]', '20', 'Y');

-- ----------------------------
-- Table structure for `tmp_gejala`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_gejala`;
CREATE TABLE `tmp_gejala` (
  `kd_gejala` int(6) NOT NULL,
  `session_id` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmp_gejala
-- ----------------------------

-- ----------------------------
-- Table structure for `tmp_pasien`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_pasien`;
CREATE TABLE `tmp_pasien` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `nama_pasien` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` enum('L','P') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `session_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmp_pasien
-- ----------------------------
INSERT INTO `tmp_pasien` VALUES ('17', 'Dede Gunawan', '', 'Cijantung', '47a607fa627caccfeca54c6932e9a5aa', '2015-09-24 15:01:11');
INSERT INTO `tmp_pasien` VALUES ('18', 'tito', '', 'smd', 'e9af7f5396e58791950b8c414278a3c2', '2018-09-22 04:23:48');
INSERT INTO `tmp_pasien` VALUES ('19', 'tito', '', 'ddd', '413f0bb53b9085bb9442a6dbcb117ebb', '2018-09-22 04:27:06');
INSERT INTO `tmp_pasien` VALUES ('20', 'tia', '', 'smd', 'bd34f126954feaa1a1291c7004c6252d', '2018-09-23 03:55:11');
INSERT INTO `tmp_pasien` VALUES ('21', 'RIMA', '', 'smd', 'ed30400318e7e78bd50c401949c0d9d7', '2018-09-23 04:07:51');
INSERT INTO `tmp_pasien` VALUES ('22', 'dudu', 'L', 'Bdg', 'a308e386f253177f5c6730cf79e6dcb2', '2018-09-23 04:17:27');
INSERT INTO `tmp_pasien` VALUES ('23', 'dudu', 'L', 'bdg', '2182a4e7ed533a85c39691e7da771b61', '2018-09-23 04:18:11');
INSERT INTO `tmp_pasien` VALUES ('24', 'dadidu', 'P', 'bbg', 'be97651f5fbacd362ec0d74793a900e0', '2018-09-23 04:18:47');
INSERT INTO `tmp_pasien` VALUES ('25', 'sasisu', 'L', 'sdf', 'ac0e10af33d0d1105c04f48ecbc44b08', '2018-09-23 04:19:55');
INSERT INTO `tmp_pasien` VALUES ('26', 'a', 'L', 'a', '9e8f576bc1624288d67d3f4bb871e457', '2018-09-23 04:23:27');
INSERT INTO `tmp_pasien` VALUES ('27', 'as', 'L', 'asd', 'ad954ccabdd4829dfb31177daf24874c', '2018-09-23 04:24:12');
INSERT INTO `tmp_pasien` VALUES ('28', 'tito', 'L', 'ddd', '25a5739f9b800e8f54e4a2c1d74868ec', '2018-09-23 04:45:55');
INSERT INTO `tmp_pasien` VALUES ('29', 'jj', 'P', 'ii', '0c3c3b4a705e34ee81d2e81b16086f1e', '2018-09-24 03:33:50');
INSERT INTO `tmp_pasien` VALUES ('30', 'mm', 'L', 'kk', '6bfca2097110330c19e548b498bbf6b0', '2018-09-24 03:34:59');
INSERT INTO `tmp_pasien` VALUES ('31', 'rina', 'P', 'banjar', '890d06a8aed4ff19ec82a5fa1e2e542a', '2018-09-24 03:40:23');
INSERT INTO `tmp_pasien` VALUES ('32', 'jj', 'L', 'bb', '7beef133a5dd133f475ec854ef5faab1', '2018-09-24 03:47:00');
INSERT INTO `tmp_pasien` VALUES ('33', 'hh', 'P', 'kkk', 'eb053cb93e78957dc27967d768c547df', '2018-09-24 04:08:16');
INSERT INTO `tmp_pasien` VALUES ('34', 'bb', 'P', 'nn', 'f8ad0245beabb41b2b3c28680e564ac2', '2018-09-24 04:09:31');
INSERT INTO `tmp_pasien` VALUES ('35', 'tiya', 'P', 'dse', 'a7b4f9461080b9eedce0d53a7a646e88', '2018-09-25 14:58:13');
INSERT INTO `tmp_pasien` VALUES ('36', 'tiya', 'P', 'smd', 'ba64bcdc58f84d7790ec5854174c8ad1', '2018-09-25 14:58:52');
INSERT INTO `tmp_pasien` VALUES ('37', 'jje', 'L', 'hh', '581508984923e143c3b1d532aff5a3d9', '2018-09-25 15:11:12');
INSERT INTO `tmp_pasien` VALUES ('38', 't', 'P', 'y', '13d0402a783cf37d6a2a2275bc6f88a6', '2018-09-25 15:12:10');
INSERT INTO `tmp_pasien` VALUES ('39', 'tiyas', 'P', 'smd', '89380b138b0fa51d7a27244eea5a39f6', '2018-09-25 15:53:10');
INSERT INTO `tmp_pasien` VALUES ('40', 'tt', 'P', 'asd', '95421ce36befd9aae3bff924e8d33388', '2018-09-25 16:01:12');

-- ----------------------------
-- Table structure for `tmp_penyakit`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_penyakit`;
CREATE TABLE `tmp_penyakit` (
  `kd_penyakit` int(6) NOT NULL,
  `session_id` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmp_penyakit
-- ----------------------------

-- ----------------------------
-- Table structure for `tmp_relasi`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_relasi`;
CREATE TABLE `tmp_relasi` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `kd_penyakit` int(6) NOT NULL,
  `kd_gejala` int(6) NOT NULL,
  `session_id` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`kd_penyakit`,`kd_gejala`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmp_relasi
-- ----------------------------
INSERT INTO `tmp_relasi` VALUES ('1', '16', '19', '95421ce36befd9aae3bff924e8d33388');
INSERT INTO `tmp_relasi` VALUES ('2', '16', '20', '95421ce36befd9aae3bff924e8d33388');
INSERT INTO `tmp_relasi` VALUES ('3', '16', '21', '95421ce36befd9aae3bff924e8d33388');
INSERT INTO `tmp_relasi` VALUES ('4', '17', '18', '95421ce36befd9aae3bff924e8d33388');
INSERT INTO `tmp_relasi` VALUES ('5', '17', '22', '95421ce36befd9aae3bff924e8d33388');
INSERT INTO `tmp_relasi` VALUES ('6', '17', '23', '95421ce36befd9aae3bff924e8d33388');
INSERT INTO `tmp_relasi` VALUES ('7', '17', '24', '95421ce36befd9aae3bff924e8d33388');
INSERT INTO `tmp_relasi` VALUES ('8', '17', '25', '95421ce36befd9aae3bff924e8d33388');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `user_nama` varchar(64) NOT NULL,
  `user_password` varchar(128) NOT NULL,
  `user_level` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'gunawanassanusi1@gmail.com', '$2y$10$yrOPB1xac8WOdWqENqXvWuRYOUqw3HNQj.b0yOiti29ywTBfO57y2', 'admin');
INSERT INTO `users` VALUES ('2', 'dede@pakar.com', '$2y$10$viKzEnFSVjWIRJFma35Em.0AJrvJDo0oO8PSggcCULULuowVaJL16', 'pakar');

-- ----------------------------
-- Table structure for `varietas_sapi`
-- ----------------------------
DROP TABLE IF EXISTS `varietas_sapi`;
CREATE TABLE `varietas_sapi` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `nama_jenis` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of varietas_sapi
-- ----------------------------
INSERT INTO `varietas_sapi` VALUES ('1', 'Brahman');
INSERT INTO `varietas_sapi` VALUES ('2', 'Limosin');
INSERT INTO `varietas_sapi` VALUES ('3', 'Simental');
INSERT INTO `varietas_sapi` VALUES ('4', 'Bali');
INSERT INTO `varietas_sapi` VALUES ('5', 'Lainnya');

-- ----------------------------
-- Procedure structure for `getDetailRekaman`
-- ----------------------------
DROP PROCEDURE IF EXISTS `getDetailRekaman`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDetailRekaman`(id INT(6))
BEGIN
SELECT ah.id, IF(UPPER(ah.`kelamin_sapi`) = 'J', "Jantan", "Betina") AS kelamin_sapi, 
ah.`nama_pemilik`, p.`nm_penyakit`, p.nm_latin, p.definisi, p.solusi, p.other,
IF(j.`nama_jenis` IS NOT NULL, j.`nama_jenis`, "")  AS jenis_sapi,
IF(v.nama_jenis IS NOT NULL, v.nama_jenis, "") AS varietas_sapi, 
ah.kd_penyakit,
CONCAT(ah.usia, " Bulan") AS usia, ah.`lokasi`
FROM analisa_hasil ah 
LEFT OUTER JOIN penyakit p ON ah.`kd_penyakit` = p.`id`
LEFT OUTER JOIN jenis_sapi j ON ah.`jenis_sapi` = j.`id`
LEFT OUTER JOIN varietas_sapi v ON ah.`varietas_sapi` = v.`id`
WHERE ah.id = id;
    END
;;
DELIMITER ;
