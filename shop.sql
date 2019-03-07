/*
MYSQL
Source Host           : localhost:3306
Source Database       : shop
Date: 2019-04-02 14:51:30

*/
-- ------------------
-- Table structure for category
-- -------------------
CREATE DATABASE SHOP;
USE SHOP;

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`(
`id_category`  int(11) NOT NULL  auto_increment primary key,
`name_category`  varchar(255) collate utf8_unicode_ci default NULL,
`describe_category` varchar(255) collate utf8_unicode_ci default NULL
)ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ------------------
-- Table structure for product
-- -------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`(
`id_product` int(11) NOT NULL auto_increment primary key,
`name_product` varchar(255) collate utf8_unicode_ci default NULL,
`image_product` varchar(255) collate utf8_unicode_ci default NULL,
`price_product`  double default NULL,
`quantity_product` int(11) default NULL,
`manufacture` varchar(255) collate utf8_unicode_ci default NULL,
`information` varchar(255) collate utf8_unicode_ci default NULL,
`id_category`  int(11) NOT NULL ,
FOREIGN KEY (`id_category`) REFERENCES category(`id_category`) 
)ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- ------------------
-- Table structure for customer
-- -------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`(
`id_customer` int(11) NOT NULL auto_increment primary key,
`name_customer` varchar(255) NULL collate utf8_unicode_ci default NULL,
`password` varchar(255)  collate utf8_unicode_ci default NULL ,
`phone` varchar(20)  collate utf8_unicode_ci default NULL,
`email` varchar(255)  collate utf8_unicode_ci default NULL,
`role` varchar(25) collate utf8_unicode_ci default NULL
)ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ------------------
-- Table structure for comment
-- -------------------

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`(
`id_comment` int (11) NOT NULL auto_increment primary key,
`name_comment` varchar(255) collate utf8_unicode_ci default NULL,
`content` varchar(255) collate utf8_unicode_ci default NULL,
`id_product`  int(11),
FOREIGN KEY(`id_product`) REFERENCES product(`id_product`)

)ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ------------------
-- Table structure for customer
-- -------------------

DROP TABLE IF EXISTS `customer_product`;
CREATE TABLE `customer_product`(
`id_customer` int (11) default NULL,
`id_product` int(11) default NULL,
FOREIGN KEY(`id_product`) REFERENCES product(`id_product`),
FOREIGN KEY(`id_customer`) REFERENCES customer(`id_customer`)
)ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ------------------
-- Table structure for bill
-- -------------------

DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`(
`id_bill` int (11) NOT NULL,
`name` int(11)  collate utf8_unicode_ci default NULL,
`phone` varchar(25) default NULL,
`address` varchar(255)  collate utf8_unicode_ci default NULL,
`email` varchar(255)  collate utf8_unicode_ci default NULL ,
`note` varchar(255) NULL  collate utf8_unicode_ci default NULL
)ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'Đồng hồ nam', 'Đồng hồ nam sang trọng,chuẩn phong cách thịnh hành');
INSERT INTO `category` VALUES ('2', 'Dồng hồ nữ', 'Đồng hồ dành cho phái nữ tạo nên ngoại hình sang trọng');
INSERT INTO `category` VALUES ('3', 'Dồng hồ đôi', 'Đồng hồ dành cho các cặp tình nhân');
INSERT INTO `category` VALUES ('4', 'Dồng hồ trẻ em', 'Đồng hồ dành cho những đứa trẻ góp phần tạo phong cách cho trẻ');
-- ----------------------------
-- Records of Product
-- ----------------------------
INSERT INTO `product` VALUES ('1','Aries Goad Smart','01.jpg','1850000','10','Singapore','Kiểu dáng','1');
INSERT INTO `product` VALUES ('2','Jacques Lemans jl 1901L','02.jpg','2850000','80','Singapore','Kiểu dáng:Đồng hồ nam,Năng lượng:Quartz/Pin,Đường kính mặt:17X43 mm,','1');
INSERT INTO `product` VALUES ('3','Jacques Lemans jl 1901H','03.jpg','5600000','8','Mỹ','Kiểu dáng:Đồng hồ nam,Năng lượng:Quartz/Pin,Đường kính mặt:17X43 mm,','1');
INSERT INTO `product` VALUES ('4','Jacques Lemans jl 1901Y','04.jpg','8850000','6','Việt Nam','Kiểu dáng:Đồng hồ nam,Năng lượng:Quartz/Pin,Đường kính mặt:17X43 mm,','1');
INSERT INTO `product` VALUES ('5','Aries Goad Smart 7010','05.jpg','1850000','100','Hàn Quốc','Kiểu dáng:Đồng hồ nam,Năng lượng:Quartz/Pin,Đường kính mặt:17X43 mm,','1');
INSERT INTO `product` VALUES ('6','Anlantic','06.jpg','1650000','10','Singapore','Kiểu dáng:Đồng hồ nam,Năng lượng:Quartz/Pin,Đường kính mặt:17X43 mm,','1');
INSERT INTO `product` VALUES ('7','Jacques Lemans jl 1901K','07.jpg','1850000','20','Singapore','Kiểu dáng:Đồng hồ nam,Năng lượng:Quartz/Pin,Đường kính mặt:17X43 mm,','1');
INSERT INTO `product` VALUES ('8','Jacques Lemans jl 1901V','08.jpg','6850000','40','Malaysia','Kiểu dáng:Đồng hồ nam,Năng lượng:Quartz/Pin,Đường kính mặt:17X43 mm,','1');
INSERT INTO `product` VALUES ('9','QQ A7HH','09.jpg','1850000','10','Singapore','Kiểu dáng:Đồng hồ nam,Năng lượng:Quartz/Pin,Đường kính mặt:17X43 mm,','1');
INSERT INTO `product` VALUES ('10','Citizen 7G','10.jpg','1910000','10','Singapore','Kiểu dáng:Đồng hồ nam,Năng lượng:Quartz/Pin,Đường kính mặt:17X43 mm,','1');
INSERT INTO `product` VALUES ('11','Aries Goad Smart KQ','11.jpg','4850000','30','Lào','Kiểu dáng:Đồng hồ nam,Năng lượng:Quartz/Pin,Đường kính mặt:17X43 mm,','1');
INSERT INTO `product` VALUES ('12','Memorigin','12.jpg','1890000','1','Campuchia','Kiểu dáng:Đồng hồ nam,Năng lượng:Quartz/Pin,Đường kính mặt:17X43 mm,','1');
INSERT INTO `product` VALUES ('13','Tourbillon','13.jpg','3850000','20','Thụy sỹ','Kiểu dáng:Đồng hồ nam,Năng lượng:Quartz/Pin,Đường kính mặt:17X43 mm,','1');


