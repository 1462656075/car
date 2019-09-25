/*
Navicat MySQL Data Transfer

Source Server         : MyLocalhost
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : cars

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2017-01-02 22:38:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(255) DEFAULT NULL,
  `isDelete` int(11) NOT NULL,
  `passWord` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '0', '123', '张总');
INSERT INTO `t_admin` VALUES ('2', 'testAdmin', '0', '123', '测试管理员');
INSERT INTO `t_admin` VALUES ('3', '13121321', '0', '1311321', '1231');

-- ----------------------------
-- Table structure for t_car
-- ----------------------------
DROP TABLE IF EXISTS `t_car`;
CREATE TABLE `t_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carImage` varchar(255) DEFAULT NULL,
  `carNumber` varchar(255) DEFAULT NULL,
  `carOilType` varchar(255) DEFAULT NULL,
  `carType` varchar(255) DEFAULT NULL,
  `dailyPrice` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `isDelete` int(11) NOT NULL,
  `car_category_id` int(11) DEFAULT NULL,
  `isDiscount` int(11) NOT NULL,
  `isRecommend` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1a6pqndequjgtklnv0bvl6mvy` (`car_category_id`),
  CONSTRAINT `FK_1a6pqndequjgtklnv0bvl6mvy` FOREIGN KEY (`car_category_id`) REFERENCES `t_car_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_car
-- ----------------------------
INSERT INTO `t_car` VALUES ('1', '\\upload\\e22843d0c51a11e6681cae703dc644b166.jpg', '苏A111111', '12', '12', '200', '100', '0', '1', '0', '0');
INSERT INTO `t_car` VALUES ('2', '\\upload\\2168bd40c51b11e6681cae703dc644b166.jpg', '苏A123456', '12', '12', '200', '100', '0', '1', '1', '0');
INSERT INTO `t_car` VALUES ('3', '\\upload\\52bfc890c51e11e6f1561e41b2eda34269.jpg', '苏A222222', '123', '123', '2000', '1000', '0', '2', '1', '0');
INSERT INTO `t_car` VALUES ('4', '\\upload\\077e6430c52e11e6b9c23dd695d32eb9330619-141023093K534.jpg', '苏A3333333', 'as', 'as', '300', '100', '0', '1', '0', '0');
INSERT INTO `t_car` VALUES ('5', '\\upload\\1091b900c9e811e6e7e1b8ec2a416551timg.jpg', '苏A444444', '1234', '333', '300', '1000', '0', '2', '1', '0');
INSERT INTO `t_car` VALUES ('6', '\\upload\\e22843d0c51a11e6681cae703dc644b166.jpg', '苏A111111', '12', '12', '200', '100', '0', '1', '0', '0');
INSERT INTO `t_car` VALUES ('7', '\\upload\\2168bd40c51b11e6681cae703dc644b166.jpg', '苏A123456', '12', '12', '200', '100', '0', '1', '0', '1');
INSERT INTO `t_car` VALUES ('8', '\\upload\\52bfc890c51e11e6f1561e41b2eda34269.jpg', '苏A222222', '123', '123', '2000', '1000', '0', '2', '1', '0');
INSERT INTO `t_car` VALUES ('9', '\\upload\\077e6430c52e11e6b9c23dd695d32eb9330619-141023093K534.jpg', '苏A3333333', 'as', 'as', '300', '100', '0', '1', '0', '1');
INSERT INTO `t_car` VALUES ('10', '\\upload\\1091b900c9e811e6e7e1b8ec2a416551timg.jpg', '苏A444444', '1234', '333', '300', '1000', '0', '2', '1', '0');
INSERT INTO `t_car` VALUES ('11', '\\upload\\e22843d0c51a11e6681cae703dc644b166.jpg', '苏A111111', '12', '12', '200', '100', '0', '1', '0', '0');
INSERT INTO `t_car` VALUES ('12', '\\upload\\2168bd40c51b11e6681cae703dc644b166.jpg', '苏A123456', '12', '12', '200', '100', '0', '1', '1', '0');
INSERT INTO `t_car` VALUES ('13', '\\upload\\52bfc890c51e11e6f1561e41b2eda34269.jpg', '苏A222222', '123', '123', '2000', '1000', '0', '2', '1', '0');
INSERT INTO `t_car` VALUES ('14', '\\upload\\077e6430c52e11e6b9c23dd695d32eb9330619-141023093K534.jpg', '苏A3333333', 'as', 'as', '300', '100', '0', '1', '0', '1');
INSERT INTO `t_car` VALUES ('15', '\\upload\\1091b900c9e811e6e7e1b8ec2a416551timg.jpg', '苏A444444', '1234', '333', '300', '1000', '0', '2', '1', '0');
INSERT INTO `t_car` VALUES ('16', '\\upload\\e22843d0c51a11e6681cae703dc644b166.jpg', '苏A111111', '12', '12', '200', '100', '0', '1', '0', '0');
INSERT INTO `t_car` VALUES ('17', '\\upload\\2168bd40c51b11e6681cae703dc644b166.jpg', '苏A123456', '12', '12', '200', '100', '0', '1', '1', '0');
INSERT INTO `t_car` VALUES ('18', '\\upload\\52bfc890c51e11e6f1561e41b2eda34269.jpg', '苏A222222', '123', '123', '2000', '1000', '0', '2', '1', '0');
INSERT INTO `t_car` VALUES ('19', '\\upload\\077e6430c52e11e6b9c23dd695d32eb9330619-141023093K534.jpg', '苏A3333333', 'as', '12345', '300', '100', '0', '1', '0', '1');
INSERT INTO `t_car` VALUES ('20', '\\upload\\1091b900c9e811e6e7e1b8ec2a416551timg.jpg', '苏A444444', '1234', '333', '300', '1000', '0', '2', '1', '0');
INSERT INTO `t_car` VALUES ('21', '\\upload\\2168bd40c51b11e6681cae703dc644b166.jpg', '苏A123456', '12', '12', '200', '100', '0', '1', '0', '1');
INSERT INTO `t_car` VALUES ('22', '\\upload\\52bfc890c51e11e6f1561e41b2eda34269.jpg', '苏A222222', '123', '123', '2000', '1000', '0', '2', '0', '1');
INSERT INTO `t_car` VALUES ('23', '\\upload\\077e6430c52e11e6b9c23dd695d32eb9330619-141023093K534.jpg', '苏A3333333', 'as', 'as', '300', '100', '0', '1', '0', '1');
INSERT INTO `t_car` VALUES ('24', '\\upload\\1091b900c9e811e6e7e1b8ec2a416551timg.jpg', '苏A444444', '1234', '333', '300', '1000', '0', '2', '0', '1');
INSERT INTO `t_car` VALUES ('25', '\\upload\\b6ee0ad0c9eb11e6e7e1b8ec2a416551118011_090349063_2.jpg', '苏A888888', '1234', '宝马X5', '2000', '1000', '0', '1', '0', '1');
INSERT INTO `t_car` VALUES ('26', '\\upload\\88b981c0cc4411e6e3d78598213b3e8275.JPG', '苏A55555', '123', '666', '2000', '1000', '0', '3', '0', '1');

-- ----------------------------
-- Table structure for t_car_category
-- ----------------------------
DROP TABLE IF EXISTS `t_car_category`;
CREATE TABLE `t_car_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `isDelete` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_car_category
-- ----------------------------
INSERT INTO `t_car_category` VALUES ('1', '宝马', '0');
INSERT INTO `t_car_category` VALUES ('2', '奔驰', '0');
INSERT INTO `t_car_category` VALUES ('3', '奥迪', '0');
INSERT INTO `t_car_category` VALUES ('4', '雪佛兰', '0');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `isDelete` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `totalPrice` varchar(255) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `rent_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `isDeal` int(11) NOT NULL,
  `finishTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2wb0k1l10ccrh5s1n6e4agmh7` (`car_id`),
  KEY `FK_g45jhdajq364jt3ekohnouu7` (`rent_id`),
  KEY `FK_75ffb6s55q5aibdhqs2unu49q` (`user_id`),
  CONSTRAINT `FK_2wb0k1l10ccrh5s1n6e4agmh7` FOREIGN KEY (`car_id`) REFERENCES `t_car` (`id`),
  CONSTRAINT `FK_75ffb6s55q5aibdhqs2unu49q` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_g45jhdajq364jt3ekohnouu7` FOREIGN KEY (`rent_id`) REFERENCES `t_rent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1', '1482675312051', '2016-12-25 22:15:13', '0', '0', '1000', '20', '1', '1', '0', null);
INSERT INTO `t_order` VALUES ('2', '1482680499586', '2016-12-25 23:41:39', '0', '1', '1000', '19', '2', '2', '0', null);
INSERT INTO `t_order` VALUES ('3', '1482764888848', '2016-12-26 23:08:08', '0', '1', '100', '21', '3', '2', '1', '2016-12-27 21:13:16');
INSERT INTO `t_order` VALUES ('4', '1482842713384', '2016-12-27 20:45:13', '0', '1', '1000', '9', '4', '1', '1', '2016-11-23 21:17:49');
INSERT INTO `t_order` VALUES ('5', '1482843215408', '2016-12-27 20:53:35', '0', '0', '10000', '18', '5', '1', '0', null);
INSERT INTO `t_order` VALUES ('6', '1482843289819', '2016-12-27 20:54:49', '0', '1', '1000', '20', '6', '1', '1', '2016-12-27 22:54:04');
INSERT INTO `t_order` VALUES ('7', '1482843675726', '2016-12-27 21:01:15', '0', '0', '1000', '12', '7', '1', '0', null);
INSERT INTO `t_order` VALUES ('8', '1482844565191', '2016-12-27 21:16:05', '0', '0', '300', '20', '8', '2', '0', null);
INSERT INTO `t_order` VALUES ('9', '1482844648260', '2016-12-27 21:17:28', '0', '0', '200', '12', '9', '1', '0', null);
INSERT INTO `t_order` VALUES ('10', '1482850251199', '2016-12-27 22:50:51', '0', '1', '4000', '25', '10', '3', '1', '2016-12-27 22:54:13');
INSERT INTO `t_order` VALUES ('11', '1482851822060', '2016-12-27 23:17:02', '0', '0', '2000', '26', '11', '3', '0', null);

-- ----------------------------
-- Table structure for t_rent
-- ----------------------------
DROP TABLE IF EXISTS `t_rent`;
CREATE TABLE `t_rent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` int(11) NOT NULL,
  `rentTime` datetime DEFAULT NULL,
  `returnTime` datetime DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mtb6hp9krocauyby7drpxw22m` (`car_id`),
  KEY `FK_3dtevvh8yqs6reapajgcaxuxn` (`user_id`),
  CONSTRAINT `FK_3dtevvh8yqs6reapajgcaxuxn` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_mtb6hp9krocauyby7drpxw22m` FOREIGN KEY (`car_id`) REFERENCES `t_car` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_rent
-- ----------------------------
INSERT INTO `t_rent` VALUES ('1', '0', '2016-12-25 00:00:00', '2016-12-31 00:00:00', '20', '1');
INSERT INTO `t_rent` VALUES ('2', '0', '2016-12-26 00:00:00', '2016-12-28 00:00:00', '19', '2');
INSERT INTO `t_rent` VALUES ('3', '0', '2016-12-27 00:00:00', '2016-12-29 00:00:00', '21', '2');
INSERT INTO `t_rent` VALUES ('4', '0', '2016-12-27 00:00:00', '2016-12-29 00:00:00', '9', '1');
INSERT INTO `t_rent` VALUES ('5', '0', '2016-12-26 00:00:00', '2016-12-31 00:00:00', '18', '1');
INSERT INTO `t_rent` VALUES ('6', '0', '2016-12-27 00:00:00', '2016-12-27 00:00:00', '20', '1');
INSERT INTO `t_rent` VALUES ('7', '0', '2016-12-27 00:00:00', '2016-12-27 00:00:00', '12', '1');
INSERT INTO `t_rent` VALUES ('8', '0', '2016-12-27 00:00:00', '2016-12-27 00:00:00', '20', '2');
INSERT INTO `t_rent` VALUES ('9', '0', '2016-12-26 00:00:00', '2016-12-26 00:00:00', '12', '1');
INSERT INTO `t_rent` VALUES ('10', '0', '2016-12-27 00:00:00', '2016-12-30 00:00:00', '25', '3');
INSERT INTO `t_rent` VALUES ('11', '0', '2016-12-28 00:00:00', '2016-12-29 00:00:00', '26', '3');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `isDelete` int(11) NOT NULL,
  `loginName` varchar(255) DEFAULT NULL,
  `passWord` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '2016.10.30', '222@qq.com', '0', 'zs', '123', '13916456974', '我的生日', '张三');
INSERT INTO `t_user` VALUES ('2', '2016.10.31', '32423222@qq.com', '0', 'lisi', '1234', '13916456974', '我的生日', '李四');
INSERT INTO `t_user` VALUES ('3', '12.30', '222@qq.com', '0', 'test', '1234', '139164569741', '我的生日', '测试');
