/*
Navicat MySQL Data Transfer

Source Server         : XIAOQI
Source Server Version : 50701
Source Host           : localhost:3306
Source Database       : xiaoqi

Target Server Type    : MYSQL
Target Server Version : 50701
File Encoding         : 65001

Date: 2020-12-18 16:24:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `collections`
-- ----------------------------
DROP TABLE IF EXISTS `collections`;
CREATE TABLE `collections` (
  `phone` char(11) NOT NULL,
  `note_id` int(100) NOT NULL,
  PRIMARY KEY (`phone`,`note_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collections
-- ----------------------------
INSERT INTO `collections` VALUES ('13513382833', '1');
INSERT INTO `collections` VALUES ('13513382833', '4');
INSERT INTO `collections` VALUES ('17733870176', '3');
INSERT INTO `collections` VALUES ('18931378558', '2');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `comment_id` int(100) NOT NULL AUTO_INCREMENT,
  `note_id` int(100) NOT NULL,
  `phone` char(11) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `likes` int(100) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '1', '13513382833', '求原图,爱了爱了爱了爱了爱了爱了爱了爱了爱了爱了爱了爱了爱了爱了爱了爱了', '2020-11-27', '4');
INSERT INTO `comments` VALUES ('2', '2', '13513382833', '求原图,爱了爱了爱了爱了爱了爱了爱了爱了爱了爱了爱了爱了爱了爱了爱了爱了', '2020-12-29', '4');
INSERT INTO `comments` VALUES ('3', '1', '18931378558', '赞', '2020-11-27', '5');
INSERT INTO `comments` VALUES ('4', '3', '17733870176', '好美', '2020-11-29', '6');
INSERT INTO `comments` VALUES ('5', '4', '18931378558', '赞', '2020-11-30', '3');
INSERT INTO `comments` VALUES ('6', '4', '17733870176', '好美', '2020-11-30', '2');
INSERT INTO `comments` VALUES ('7', '4', '13513382833', '大大画画好好看哦,爱了爱了', '2020-11-30', '1');
INSERT INTO `comments` VALUES ('10', '1', '13513382833', '爱了', '2020-12-10', '0');
INSERT INTO `comments` VALUES ('9', '1', '13513382833', '好看好看', '2020-12-10', '0');
INSERT INTO `comments` VALUES ('11', '4', '13513382833', '赞', '2020-12-18', '0');

-- ----------------------------
-- Table structure for `dialogue`
-- ----------------------------
DROP TABLE IF EXISTS `dialogue`;
CREATE TABLE `dialogue` (
  `phone1` char(11) NOT NULL,
  `phone2` char(11) NOT NULL,
  `lastTime` varchar(20) DEFAULT NULL,
  `lastSentence` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`phone1`,`phone2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dialogue
-- ----------------------------
INSERT INTO `dialogue` VALUES ('13513382833', '17733870176', '2020-12-18 04:40:27', '好的');
INSERT INTO `dialogue` VALUES ('13513382833', '18931378558', '2020-12-16 08:18:09', '嗯嗯，发你了');
INSERT INTO `dialogue` VALUES ('17733870176', '18931378558', '2020-12-17 14:18:56', 'OK');

-- ----------------------------
-- Table structure for `dialoguecontent`
-- ----------------------------
DROP TABLE IF EXISTS `dialoguecontent`;
CREATE TABLE `dialoguecontent` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `sendPhone` char(11) NOT NULL,
  `acceptPhone` char(11) NOT NULL,
  `sentence` varchar(1000) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dialoguecontent
-- ----------------------------
INSERT INTO `dialoguecontent` VALUES ('1', '13513382833', '17733870176', '你喜欢看《陈情令吗》？', '2020-12-15 09:10:13');
INSERT INTO `dialoguecontent` VALUES ('2', '17733870176', '13513382833', '喜欢啊，我已经看过四遍了', '2020-12-15 09:10:48');
INSERT INTO `dialoguecontent` VALUES ('3', '13513382833', '17733870176', '下次我们一起看吧', '2020-12-15 09:11:05');
INSERT INTO `dialoguecontent` VALUES ('4', '17733870176', '13513382833', '好的', '2020-12-15 09:12:09');
INSERT INTO `dialoguecontent` VALUES ('5', '13513382833', '18931378558', '求原图', '2020-12-16 08:17:01');
INSERT INTO `dialoguecontent` VALUES ('6', '18931378558', '13513382833', '嗯嗯，发你了', '2020-12-16 08:18:09');
INSERT INTO `dialoguecontent` VALUES ('7', '17733870176', '18931378558', '求原图', '2020-12-17 12:22:22');
INSERT INTO `dialoguecontent` VALUES ('8', '18931378558', '17733870176', 'OK', '2020-12-17 14:18:56');
INSERT INTO `dialoguecontent` VALUES ('9', '13513382833', '17733870176', '嗯嗯', '2020-12-17 07:02:12');
INSERT INTO `dialoguecontent` VALUES ('10', '13513382833', '17733870176', '好的', '2020-12-18 04:40:27');

-- ----------------------------
-- Table structure for `follow`
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `follower_phone` char(11) NOT NULL,
  `followed_phone` char(11) NOT NULL,
  PRIMARY KEY (`follower_phone`,`followed_phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES ('13513382833', '17733870176');
INSERT INTO `follow` VALUES ('13513382833', '18931378558');
INSERT INTO `follow` VALUES ('17733870176', '13513382833');

-- ----------------------------
-- Table structure for `hotsearch`
-- ----------------------------
DROP TABLE IF EXISTS `hotsearch`;
CREATE TABLE `hotsearch` (
  `search` varchar(100) NOT NULL DEFAULT '',
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`search`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotsearch
-- ----------------------------
INSERT INTO `hotsearch` VALUES ('国风合伙人', '10');
INSERT INTO `hotsearch` VALUES ('汉尚华莲', '8');
INSERT INTO `hotsearch` VALUES ('敦煌壁画', '5');
INSERT INTO `hotsearch` VALUES ('陈情令', '103');
INSERT INTO `hotsearch` VALUES ('国潮', '1');
INSERT INTO `hotsearch` VALUES ('京剧脸谱', '2');
INSERT INTO `hotsearch` VALUES ('云肩', '1');
INSERT INTO `hotsearch` VALUES ('古风插画', '23');
INSERT INTO `hotsearch` VALUES ('汉服', '1');
INSERT INTO `hotsearch` VALUES ('王一博', '1');
INSERT INTO `hotsearch` VALUES ('国风', '1');
INSERT INTO `hotsearch` VALUES ('分享', '10');
INSERT INTO `hotsearch` VALUES ('休息', '11');
INSERT INTO `hotsearch` VALUES ('发现', '2');

-- ----------------------------
-- Table structure for `likes`
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `phone` char(11) NOT NULL,
  `note_id` int(100) NOT NULL,
  PRIMARY KEY (`phone`,`note_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES ('13513382833', '1');
INSERT INTO `likes` VALUES ('13513382833', '2');
INSERT INTO `likes` VALUES ('13513382833', '4');
INSERT INTO `likes` VALUES ('17733870176', '1');
INSERT INTO `likes` VALUES ('17733870176', '2');
INSERT INTO `likes` VALUES ('17733870176', '3');
INSERT INTO `likes` VALUES ('17733870176', '4');
INSERT INTO `likes` VALUES ('18931378558', '1');
INSERT INTO `likes` VALUES ('18931378558', '3');

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notes
-- ----------------------------
INSERT INTO `notes` VALUES ('1', '13513382833', 'note1img1.jpg、note1img2.jpg、note1img3.jpg、note1img4.jpg、note1img5.jpg、note1img6.jpg、note1img7.jpg', '插画分享 | 风雪待归人 古风美人系列', '插画师：付璐\r\n颜料：水彩、颜彩、矿物岩彩色系等，来自涂鸦王国', '插画分享', '2020-11-27', '正定');
INSERT INTO `notes` VALUES ('2', '18931378558', 'note2img1.jpg、note2img2.jpg、note2img3.jpg、note2img4.jpg、note2img5.jpg、note2img6.jpg、note2img7.jpg、note2img8.jpg、note2img9.jpg', '当《诗经》遇上古风插画，也太美了吧！', '画师：呼葱觅蒜', '古风插画', '2020-11-28', '石家庄');
INSERT INTO `notes` VALUES ('3', '17733870176', 'note3img1.jpg、note3img2.jpg、note3img3.jpg、note3img4.jpg、note3img5.jpg', '中式古风小可堂茶馆 费时半年打造完成', '设计构想，在深圳这座创新城市中设计具有中国古风味道的茶室，快节奏的城市中设计出能小憩小聚的慢节奏写意空间。\r\n作为小可堂第一打卡景，门头的古灯笼与现代的小可堂招牌形成跨越年限的冲突美，入门玄关邀请余秋雨先生题字，除了意境还有派头。\r\n室内的空间五大元素:\r\n1沿用原始木头建筑结构\r\n2具有年代感的红木家具和原木门窗部件\r\n3搭配具有意境的花艺和绿植\r\n4古风灯笼\r\n5端景造景设计\r\n每一个元素结合到室内设计里都成为小可堂处于深圳这座城市独一无二的茶室体验感。\r\n与三五好友品上一杯好茶，分享盘中美食，随着时间的转移，欣赏窗户光影变化和室外的园林美景。懂生活懂享受就是那么美好。', '茶室设计', '2020-11-29', '正定');
INSERT INTO `notes` VALUES ('4', '13513382833', 'note4img1.jpg、note4img2.jpg、note4img3.jpg、note4img4.jpg、note4img5.jpg', '搬运 | 古风人物 | 插画分享', '蜉蝣羽衣，朝生暮死\r\n作者：猫君大白', '寻找小憩绘画大神', '2020-11-30', '河北');
INSERT INTO `notes` VALUES ('5', '13513382833', 'note5img1.jpg', '古风线稿 | 素材', '来啦来啦', '线稿', '2020-12-17', '石家庄');
INSERT INTO `notes` VALUES ('6', '17733870176', 'note6img1.jpg', '玄幻美丽 古风神话人物与精怪', '来自涂鸦王国', '插画分享', '2020-12-18', '石家庄');
INSERT INTO `notes` VALUES ('14', '13513382833', 'note7.png', '12', '34', '56', '2020-12-18', 'Mountain View');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `phone` char(11) NOT NULL,
  `password` varchar(16) NOT NULL,
  `avatar` varchar(1000) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
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
INSERT INTO `users` VALUES ('13513382833', '123', 'avatar3.jpg', '休息休息', 'man', '1999-09-15', '石家庄', '谢谢你的关注', 'infobg.jpg', '分享、汉服、陈情令、唐诗、宋词、古风插画、休息、发现、休息、休息、分享');
INSERT INTO `users` VALUES ('18931378558', '456', 'avatar8.jpg', '人生得意须尽欢', 'man', '1976-05-01', '正定', null, 'infobg1.jpg', null);
INSERT INTO `users` VALUES ('17733870176', '789', 'avatar1.jpg', '浮生若梦', 'woman', '1976-05-12', '正定', '生如夏花', 'infobg2.png', null);
