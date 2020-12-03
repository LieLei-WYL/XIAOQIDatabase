/*
Navicat MySQL Data Transfer

Source Server         : XIAOQI
Source Server Version : 50701
Source Host           : localhost:3306
Source Database       : xiaoqi

Target Server Type    : MYSQL
Target Server Version : 50701
File Encoding         : 65001

Date: 2020-12-03 08:38:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `collections`
-- ----------------------------
DROP TABLE IF EXISTS `collections`;
CREATE TABLE `collections` (
  `phone` char(11) NOT NULL,
  `note_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collections
-- ----------------------------

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `note_id` int(100) NOT NULL,
  `phone` char(11) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `likes` int(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for `follow`
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `follower_phone` char(11) NOT NULL,
  `followed_phone` char(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of follow
-- ----------------------------

-- ----------------------------
-- Table structure for `hot_search`
-- ----------------------------
DROP TABLE IF EXISTS `hot_search`;
CREATE TABLE `hot_search` (
  `hot_search` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hot_search
-- ----------------------------

-- ----------------------------
-- Table structure for `likes`
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `phone` char(11) NOT NULL,
  `note_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likes
-- ----------------------------

-- ----------------------------
-- Table structure for `notes`
-- ----------------------------
DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
  `note_id` int(100) NOT NULL AUTO_INCREMENT,
  `phone` char(11) NOT NULL,
  `images` varchar(9000) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `topic` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`note_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notes
-- ----------------------------
INSERT INTO `notes` VALUES ('1', '13513382833', 'note1img1.jpg、note1img2.jpg、note1img3.jpg、note1img4.jpg、note1img5.jpg、note1img6.jpg、note1img7.jpg', '插画分享 | 风雪待归人 古风美人系列', '插画师：付璐\r\n颜料：水彩、颜彩、矿物岩彩色系等，来自涂鸦王国', '插画分享', '2020-11-27', '正定');
INSERT INTO `notes` VALUES ('2', '18931378558', 'note2img1.jpg、note2img2.jpg、note2img3.jpg、note2img4.jpg、note2img5.jpg、note2img6.jpg、note2img7.jpg、note2img8.jpg、note2img9.jpg', '当《诗经》遇上古风插画，也太美了吧！', '画师：呼葱觅蒜', '古风插画', '2020-11-28', '石家庄');
INSERT INTO `notes` VALUES ('3', '17733870176', 'note3img1.jpg、note3img2.jpg、note3img3.jpg、note3img4.jpg、note3img5.jpg', '中式古风小可堂茶馆 费时半年打造完成', '设计构想，在深圳这座创新城市中设计具有中国古风味道的茶室，快节奏的城市中设计出能小憩小聚的慢节奏写意空间。\\n作为小可堂第一打卡景，门头的古灯笼与现代的小可堂招牌形成跨越年限的冲突美，入门玄关邀请余秋雨先生题字，除了意境还有派头。\\n室内的空间五大元素:\\n1沿用原始木头建筑结构\\n2具有年代感的红木家具和原木门窗部件\\n3搭配具有意境的花艺和绿植\\n4古风灯笼\\n5端景造景设计\\n每一个元素结合到室内设计里都成为小可堂处于深圳这座城市独一无二的茶室体验感。\\n与三五好友品上一杯好茶，分享盘中美食，随着时间的转移，欣赏窗户光影变化和室外的园林美景。懂生活懂享受就是那么美好。', '茶室设计', '2020-12-29', '正定');
INSERT INTO `notes` VALUES ('4', '13513382833', 'note4img1.jpg、note4img2.jpg、note4img3.jpg、note4img4.jpg、note4img5.jpg', '搬运 | 古风人物 | 插画分享', '蜉蝣羽衣，朝生暮死\r\n作者：猫君大白', '寻找小憩绘画大神', '2020-12-30', '石家庄');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `phone` char(11) NOT NULL,
  `password` varchar(16) NOT NULL,
  `avatar` varchar(1000) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `profile` varchar(1000) DEFAULT NULL,
  `background` varchar(1000) DEFAULT NULL,
  `search` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('13513382833', '123', 'avatar3.jpg', '休息休息一下', null, null, null, null, null, null);
INSERT INTO `users` VALUES ('18931378558', '456', 'avatar8.jpg', '人生得意须尽欢', null, null, null, null, null, null);
INSERT INTO `users` VALUES ('17733870176', '789', 'avatar1.jpg', '浮生若梦', null, null, null, null, null, null);
