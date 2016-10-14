/*
Navicat MySQL Data Transfer

Source Server         : aa
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : testbase

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2016-10-14 09:04:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `uname` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhangsan', '123456');
INSERT INTO `user` VALUES ('0e970be-8', 'aa', 'bb');
INSERT INTO `user` VALUES ('3', 'hehe', '123');
