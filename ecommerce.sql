/*
Navicat MySQL Data Transfer

Source Server         : mail
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : ecommerce

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2019-04-02 11:10:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `xx_admin`
-- ----------------------------
DROP TABLE IF EXISTS `xx_admin`;
CREATE TABLE `xx_admin` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `is_account_enabled` bit(1) NOT NULL,
  `is_account_expired` bit(1) NOT NULL,
  `is_account_locked` bit(1) NOT NULL,
  `is_credentials_expired` bit(1) NOT NULL,
  `locked_date` datetime DEFAULT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_failure_count` int(11) NOT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_admin
-- ----------------------------
INSERT INTO `xx_admin` VALUES ('0731dcsoft2010031200000000000017', '2014-11-08 19:59:20', '2017-03-31 13:29:15', '技术部', '1@qq.com', 'ADMIN', '21232f297a57a5a743894a0e4a801fc3', 'admin', '', '', '', '', null, '2017-03-31 13:29:15', '0', '0:0:0:0:0:0:0:1');
INSERT INTO `xx_admin` VALUES ('f965e436498fde4101498fe24d1d0000', '2014-11-08 22:50:13', '2017-01-14 19:58:34', '', '6@qq.com', '', 'b59c67bf196a4758191e42f76670ceba', '1111', '', '', '', '', null, '2014-11-15 20:23:30', '0', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for `xx_admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `xx_admin_role`;
CREATE TABLE `xx_admin_role` (
  `admin_set_id` varchar(32) NOT NULL,
  `role_set_id` varchar(32) NOT NULL,
  PRIMARY KEY (`admin_set_id`,`role_set_id`),
  KEY `fk_role_admin_set` (`role_set_id`),
  KEY `fk_admin_role_set` (`admin_set_id`),
  CONSTRAINT `xx_admin_role_ibfk_1` FOREIGN KEY (`admin_set_id`) REFERENCES `xx_admin` (`id`),
  CONSTRAINT `xx_admin_role_ibfk_2` FOREIGN KEY (`role_set_id`) REFERENCES `xx_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_admin_role
-- ----------------------------
INSERT INTO `xx_admin_role` VALUES ('0731dcsoft2010031200000000000017', '0731dcsoft2010031200000000000016');
INSERT INTO `xx_admin_role` VALUES ('f965e436498fde4101498fe24d1d0000', '0731dcsoft2010031200000000000016');
INSERT INTO `xx_admin_role` VALUES ('f965e436498fde4101498fe24d1d0000', 'f965e436498fc9b901498fd5a9b60000');

-- ----------------------------
-- Table structure for `xx_bulletin`
-- ----------------------------
DROP TABLE IF EXISTS `xx_bulletin`;
CREATE TABLE `xx_bulletin` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `content` longtext,
  `is_visible` bit(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_bulletin
-- ----------------------------
INSERT INTO `xx_bulletin` VALUES ('402876814c5e4f75014c5ef412950002', '2015-03-28 13:56:36', '2015-04-12 20:00:39', '阿萨德', '', '关于开展2014年度江宁区授权专利补助资金工作的通知');
INSERT INTO `xx_bulletin` VALUES ('402876814c63e59a014c63ecb37d0003', '2015-03-29 13:06:39', '2015-05-03 12:43:50', 'sasas', '', '关于组织申');
INSERT INTO `xx_bulletin` VALUES ('402876814c6501fc014c650b4d020002', '2015-03-29 18:19:41', '2015-04-13 11:45:50', '<div align=\"center\">\r\n	<p>\r\n		rerttrrrrer\r\n	</p>\r\n<br />\r\n	<p>\r\n		<br />\r\n	</p>\r\n</div>', '', '关于维护互联网安全的决定');
INSERT INTO `xx_bulletin` VALUES ('4028d0814d180f04014d181a10d40000', '2015-05-03 12:47:51', '2015-05-03 12:47:51', '<a>江宁高新区科技创业服务中心召开年</a>', '', '江宁高新区科技创业服务中心召开年');
INSERT INTO `xx_bulletin` VALUES ('4028d0814d180f04014d181a22810001', '2015-05-03 12:47:55', '2015-05-03 12:47:55', '<a>江宁高新区科技创业服务中心召开年</a>', '', '江宁高新区科技创业服务中心召开年');
INSERT INTO `xx_bulletin` VALUES ('4028d0814d180f04014d181a36650002', '2015-05-03 12:48:00', '2015-05-03 12:48:00', '<a>江宁高新区科技创业服务中心召开年</a>', '', '江宁高新区科技创业服务中心召开年');
INSERT INTO `xx_bulletin` VALUES ('4028d0814d180f04014d181ae8a20003', '2015-05-03 12:48:46', '2015-05-03 12:48:46', '<a>江宁高新区科技创业服务中心召开年</a>', '', '江宁高新区科技创业服务中心召开年');
INSERT INTO `xx_bulletin` VALUES ('4028d0814d180f04014d181b0ac90004', '2015-05-03 12:48:54', '2015-05-03 12:48:54', '<a>江宁高新区科技创业服务中心召开年</a>', '', '江宁高新区科技创业服务中心召开年');
INSERT INTO `xx_bulletin` VALUES ('4028d0814d180f04014d181b1f300005', '2015-05-03 12:49:00', '2015-05-03 12:49:00', '<a>江宁高新区科技创业服务中心召开年</a>', '', '江宁高新区科技创业服务中心召开年');

-- ----------------------------
-- Table structure for `xx_bulletin_object`
-- ----------------------------
DROP TABLE IF EXISTS `xx_bulletin_object`;
CREATE TABLE `xx_bulletin_object` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `is_read` bit(1) DEFAULT NULL,
  `bulletin_id` varchar(32) DEFAULT NULL,
  `member_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6E7CF1988E9D8A91` (`bulletin_id`),
  KEY `FK6E7CF19833C62371` (`member_id`),
  CONSTRAINT `xx_bulletin_object_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `xx_member` (`id`),
  CONSTRAINT `xx_bulletin_object_ibfk_2` FOREIGN KEY (`bulletin_id`) REFERENCES `xx_bulletin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_bulletin_object
-- ----------------------------

-- ----------------------------
-- Table structure for `xx_category`
-- ----------------------------
DROP TABLE IF EXISTS `xx_category`;
CREATE TABLE `xx_category` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_category
-- ----------------------------
INSERT INTO `xx_category` VALUES ('1', '2017-01-14 14:20:47', '2017-01-14 15:19:49', '通用商品', '阿斯蒂芬撒发');
INSERT INTO `xx_category` VALUES ('2', '2017-01-14 14:28:45', '2017-01-14 15:19:44', '零食商品', '水电费三');

-- ----------------------------
-- Table structure for `xx_commodity`
-- ----------------------------
DROP TABLE IF EXISTS `xx_commodity`;
CREATE TABLE `xx_commodity` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `commodity_pic_path` varchar(255) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `category_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKB52660AE8DB23731` (`category_id`),
  CONSTRAINT `FKB52660AE8DB23731` FOREIGN KEY (`category_id`) REFERENCES `xx_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_commodity
-- ----------------------------
INSERT INTO `xx_commodity` VALUES ('40283f815a5b6169015a5b746e3e0000', '2017-02-20 20:17:21', '2017-03-31 13:29:37', '/upload/file/201703/c4aeb781088643f9a3693e91828f1417.jpg', '大卫龙就是好吃', '卫龙大辣条', '2.00', '好吃到爆掉。。快来快来', '1');
INSERT INTO `xx_commodity` VALUES ('ff808081599b788101599b78d56a0000', '2017-01-14 13:35:04', '2017-03-28 16:09:48', '/upload/file/201703/2dfb7e91ca8145c7815d1ee087860f04.jpg', '阿斯蒂芬啊', '撒地方', '76.00', '阿萨德风口浪尖阿斯兰的就 阿斯蒂芬按时打算阿斯蒂芬回复供货商是', '1');
INSERT INTO `xx_commodity` VALUES ('ff808081599bb05201599bb0c9e30000', '2017-01-14 14:36:11', '2017-03-28 16:09:40', '/upload/file/201703/86b20f2ae9134a368096a8c86fb21306.png', '是的发送啊啊发啊', '阿斯顿发生', '65.00', '阿斯蒂芬按时发顺丰啊', '2');

-- ----------------------------
-- Table structure for `xx_indent`
-- ----------------------------
DROP TABLE IF EXISTS `xx_indent`;
CREATE TABLE `xx_indent` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `commodity_selected` varchar(3200) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `member_id` varchar(32) DEFAULT NULL,
  `evaluation` varchar(255) DEFAULT NULL,
  `total_price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8C7AFECB33C62371` (`member_id`),
  CONSTRAINT `FK8C7AFECB33C62371` FOREIGN KEY (`member_id`) REFERENCES `xx_member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_indent
-- ----------------------------
INSERT INTO `xx_indent` VALUES ('2c9b80c95b182f06015b183045960000', '2017-03-29 11:51:08', '2017-03-29 11:51:32', '2c9dd3115b13efd1015b13fa050f0001,2c9dd3115b13d934015b13d9c0c50000,', '211169', '2', '撒的故事规范化都会发个就个和可和就卡说废话国防费凤飞飞和的发就的发', '2', '40283f815a553f31015a55471dca0000', '不错不错。。哈哈岛', '201');
INSERT INTO `xx_indent` VALUES ('40281b845b22ceaa015b22d8349a0002', '2017-03-31 13:30:46', '2017-03-31 13:32:02', '40281b845b22ceaa015b22d7bb840001,', '211169', '1', '脚后跟科技馆', '2', '40281b845b22ceaa015b22d239f30000', '反对vsdf', '4');

-- ----------------------------
-- Table structure for `xx_member`
-- ----------------------------
DROP TABLE IF EXISTS `xx_member`;
CREATE TABLE `xx_member` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `contact_way` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_member
-- ----------------------------
INSERT INTO `xx_member` VALUES ('2c9dd3115b139b83015b139f12780000', '2017-03-28 14:34:03', '2017-03-28 14:34:03', '123@qq.com', '81dc9bdb52d04dc20036dbd8313ed055', 'test', '132', 'jit', '哈哈');
INSERT INTO `xx_member` VALUES ('2c9dd3115b139b83015b13a0fde20001', '2017-03-28 14:36:09', '2017-03-28 14:36:09', '123@qq.com', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '123', '123', '123');
INSERT INTO `xx_member` VALUES ('40281b845b22ceaa015b22d239f30000', '2017-03-31 13:24:14', '2017-03-31 13:24:14', '12345@qq.com', '827ccb0eea8a706c4c34a16891f84e7b', 'sa', '12345', '南京', '小明');
INSERT INTO `xx_member` VALUES ('40283f815a553f31015a55471dca0000', '2017-02-19 15:30:08', '2017-03-29 11:22:43', '2236742419@qq.com', '81bdc8baa3546e586a336d32426343a9', 'luwei', '13218016163', '金陵科技学院', '卢伟');

-- ----------------------------
-- Table structure for `xx_navigation`
-- ----------------------------
DROP TABLE IF EXISTS `xx_navigation`;
CREATE TABLE `xx_navigation` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `is_visible` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order_list` int(11) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_navigation
-- ----------------------------
INSERT INTO `xx_navigation` VALUES ('402876814c97acd1014c97b254910000', '2015-04-08 14:23:08', '2017-02-20 12:23:04', '', '特色商品', '3', '', 'index!load.action?parentId=402876814c97acd1014c97b254910000');
INSERT INTO `xx_navigation` VALUES ('402876814c97acd1014c97b2799b0001', '2015-04-08 14:23:18', '2017-02-20 13:14:30', '', '简讯公告', '4', '', 'index!load.action?parentId=402876814c97acd1014c97b2799b0001');
INSERT INTO `xx_navigation` VALUES ('402881ff4f2ae4ea014f2aeef1c40000', '2015-08-14 14:39:06', '2017-02-20 13:15:09', '', '折扣商品', '1', '402876814c97acd1014c97b254910000', 'index!load.action?parentId=402876814c97acd1014c97b254910000');
INSERT INTO `xx_navigation` VALUES ('402881ff4f2ae4ea014f2aef2a4a0001', '2015-08-14 14:39:21', '2017-02-20 13:15:34', '', '最新动态', '1', '402876814c97acd1014c97b2799b0001', 'index!load.action?parentId=402876814c97acd1014c97b2799b0001');

-- ----------------------------
-- Table structure for `xx_newload`
-- ----------------------------
DROP TABLE IF EXISTS `xx_newload`;
CREATE TABLE `xx_newload` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `content` longtext,
  `file_path` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_newload
-- ----------------------------

-- ----------------------------
-- Table structure for `xx_news`
-- ----------------------------
DROP TABLE IF EXISTS `xx_news`;
CREATE TABLE `xx_news` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `content` longtext NOT NULL,
  `is_visible` bit(1) NOT NULL,
  `news_pic_path` varchar(255) DEFAULT NULL,
  `order_list` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `navigation_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9E1F94B2E76265B1` (`navigation_id`),
  CONSTRAINT `xx_news_ibfk_1` FOREIGN KEY (`navigation_id`) REFERENCES `xx_navigation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_news
-- ----------------------------
INSERT INTO `xx_news` VALUES ('40283f815a8861ef015a8868047f0000', '2017-03-01 13:46:42', '2017-03-01 13:46:42', '撒地方阿斯蒂芬阿斯蒂芬发斯蒂芬阿斯蒂芬 撒地方啊<img src=\"/ecommerce/attached/image/20170301/20170301134639_108.jpg\" alt=\"\" /><br />', '', '/upload/file/201703/7109b6917ee1494aa4d64bb5f9b7c01d.jpg', '0', '第三方', '402881ff4f2ae4ea014f2aef2a4a0001');
INSERT INTO `xx_news` VALUES ('402881ff4f2ae4ea014f2af3eee60009', '2015-08-14 14:44:33', '2015-10-04 15:41:42', '<span style=\"font-size:14pt;font-family:宋体;line-height:26pt;\">为进一步提高预备党员的党性素养，坚定入党信念，激励大家在今后的学习、生活中发挥党员的模范带头作用，同时加强两院学生党支部工作交流，</span><span style=\"font-size:14pt;line-height:26pt;\">5</span><span style=\"font-size:14pt;font-family:宋体;line-height:26pt;\">月</span><span style=\"font-size:14pt;line-height:26pt;\">15</span><span style=\"font-size:14pt;font-family:宋体;line-height:26pt;\">日下午，软件学院学生党支部书记邵彦婷带领软件学院及电信学院（筹）全体学生党员前往中山陵开展党日活动暨新发展党员宣誓活动。</span> \r\n<p class=\"MsoNormal\" style=\"text-indent:28pt;\">\r\n	<span style=\"font-size:14pt;font-family:宋体;\">活动首先由全体参会人员奏唱的《国际歌》作为开始。邵老师带领全体预备党员同学进行宣誓。接下来由软件工程学院预备党员代表胡珊及电子信息工程学院预备党员代表张金霞进行发言，他们总结自己在成为积极分子后在学习、工作和思想上积极向党组织靠拢的努力，并且向大家分享了他们积极研读党章的心得体会。</span><span style=\"font-size:14pt;\"></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:left;text-indent:28pt;\">\r\n	<span style=\"font-size:14pt;font-family:宋体;\">宣誓活动结束，两院的党支部成员们进行了关于和谐党支部建设的交流。他们表示会通力合作，共建和谐党支部。邵老师就两院学生党支部成立以来的工作进行总结，她鼓励两院党支部定期进行交流，分享经验，共创和谐党支部。</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:left;text-indent:28pt;\">\r\n	<span style=\"font-size:14pt;font-family:宋体;\"></span> \r\n</p>', '', '/upload/file/201509/12e11c6868244d978188d4e5c08c15f7.jpg', '0', '中山陵园祭伟人、预备党员同励志', '402881ff4f2ae4ea014f2aeef1c40000');
INSERT INTO `xx_news` VALUES ('402881ff4f2ae4ea014f2af4bebf000a', '2015-08-14 14:45:26', '2015-10-04 15:53:41', '<span style=\"color:#444444;\">为进一步提高预备党员的党性素养，坚定入党信念，激励大家在今后的学习、生活中发挥党员的模范带头作用，同时加强两院学生党支部工作交流，</span><span style=\"color:#444444;\">5</span><span style=\"color:#444444;\">月</span><span style=\"color:#444444;\">15</span><span style=\"color:#444444;\">日下午，软件学院学生党支部书记邵彦婷带领软件学院及电信学院（筹）全体学生党员前往中山陵开展党日活动暨新发展党员宣誓活动。</span><span style=\"color:#444444;background-color:#ffffff;\"></span> \r\n<p class=\"MsoNormal\" style=\"color:#444444;text-indent:28pt;\">\r\n	<span style=\"font-size:14pt;font-family:宋体;\">活动首先由全体参会人员奏唱的《国际歌》作为开始。邵老师带领全体预备党员同学进行宣誓。接下来由软件工程学院预备党员代表胡珊及电子信息工程学院预备党员代表张金霞进行发言，他们总结自己在成为积极分子后在学习、工作和思想上积极向党组织靠拢的努力，并且向大家分享了他们积极研读党章的心得体会。</span><span style=\"font-size:14pt;\"></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"color:#444444;text-align:left;text-indent:28pt;\">\r\n	<span style=\"font-size:14pt;font-family:宋体;\">宣誓活动结束，两院的党支部成员们进行了关于和谐党支部建设的交流。他们表示会通力合作，共建和谐党支部。邵老师就两院学生党支部成立以来的工作进行总结，她鼓励两院党支部定期进行交流，分享经验，共创和谐党支部。</span> \r\n</p>', '', null, '0', '中山陵园祭伟人、预备党员同励志', '402881ff4f2ae4ea014f2aef2a4a0001');
INSERT INTO `xx_news` VALUES ('402881ff4f2ae4ea014f2af8fe93000c', '2015-08-14 14:50:05', '2015-10-04 15:48:44', '12', '', '/upload/file/201509/889028f534ac44848df3d475638e126e.jpg', '0', '12', '402881ff4f2ae4ea014f2aeef1c40000');
INSERT INTO `xx_news` VALUES ('4028d0815031b8fc015031b944a70000', '2015-10-04 15:20:36', '2015-10-04 15:20:36', '阿三地方阿斯顿发', '', null, '0', '士大夫', '402881ff4f2ae4ea014f2aef2a4a0001');
INSERT INTO `xx_news` VALUES ('4028d0815031c625015031c744710000', '2015-10-04 15:35:54', '2015-10-04 15:53:25', '啊手动发士大夫阿三地方啊水电费阿道夫阿三', '', '/upload/file/201510/02ee7e5d5e70400f95b8fc47da41fa0c.png', '0', '上半年预备党员转正', '402881ff4f2ae4ea014f2aeef1c40000');

-- ----------------------------
-- Table structure for `xx_product_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `xx_product_recommend`;
CREATE TABLE `xx_product_recommend` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `content` longtext,
  `file_path` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_product_recommend
-- ----------------------------
INSERT INTO `xx_product_recommend` VALUES ('4028d081501bae0201501bdedf4e0001', '2015-09-30 09:30:02', '2015-09-30 11:01:20', 'http://theory.people.com.cn/n/2015/0727/c40531-27364960.html', '/upload/file/201509/2402a70c2f0943ba83dae2ba80e174a4.png', '周文彰：“三严三实”的内涵和意义');
INSERT INTO `xx_product_recommend` VALUES ('4028d081501bae0201501becf4960002', '2015-09-30 09:45:25', '2015-09-30 11:01:12', 'http://theory.people.com.cn/n/2015/0623/c40531-27192609.html', '/upload/file/201509/25cbdd327f644e6999edf9f37d27b9a5.png', '肖冬松：把学习贯彻“四个全面”引向深入的若干思考');
INSERT INTO `xx_product_recommend` VALUES ('4028d081501bae0201501bed786b0003', '2015-09-30 09:45:59', '2015-09-30 11:01:04', 'http://theory.people.com.cn/n/2015/0602/c148980-27091782.html', '/upload/file/201509/a7e6dd7898f44c9087e8d653cd0e3d88.png', '邱霈恩：习近平“四个全面”战略布局与中国政府改革创新');
INSERT INTO `xx_product_recommend` VALUES ('4028d081501bae0201501bede02a0004', '2015-09-30 09:46:25', '2015-09-30 11:04:36', 'http://theory.people.com.cn/n/2015/0720/c40531-27328408.html', '/upload/file/201509/0a58ad5d8b354e0cb0f2cc09a044dc15.png', '马宝成：简政放权等改革推动中国经济行稳致远');
INSERT INTO `xx_product_recommend` VALUES ('4028d081501bae0201501bee4f9c0005', '2015-09-30 09:46:54', '2015-09-30 11:00:46', 'http://theory.people.com.cn/n/2015/0506/c40531-26954905.html', '/upload/file/201509/2e7140fb58404816bf5f7ff780cb0439.png', '韩庆祥：“新三步走战略”与“四个全面”战略布局');
INSERT INTO `xx_product_recommend` VALUES ('4028d081501bae0201501beea3420006', '2015-09-30 09:47:15', '2015-09-30 11:00:36', 'http://theory.people.com.cn/n/2015/0415/c40531-26849492.html', '/upload/file/201509/389a3b851ef74627b25e75355726710f.png', '周文彰：建构和弘扬法治行政文化');
INSERT INTO `xx_product_recommend` VALUES ('4028d081501bae0201501bef03d80007', '2015-09-30 09:47:40', '2015-09-30 11:00:09', 'http://theory.people.com.cn/n/2015/0429/c148980-26925417.html', '/upload/file/201509/faad035d8ab54dd2ae2f9163e7ff4fdb.png', '褚松燕：从国家建构视角观中国国家治理能力现代化');
INSERT INTO `xx_product_recommend` VALUES ('4028d081501bae0201501bef59c60008', '2015-09-30 09:48:02', '2015-09-30 10:59:58', 'http://theory.people.com.cn/n/2015/0326/c40531-26751641.html', '/upload/file/201509/7df4ce1f54fd4b73bf5ea1a0f6c3fd39.png', '郭建宁：“四个全面”引领中国');
INSERT INTO `xx_product_recommend` VALUES ('4028d081501bae0201501befb6cf0009', '2015-09-30 09:48:26', '2015-09-30 10:59:48', 'http://theory.people.com.cn/n/2015/0203/c40531-26497102.html', '/upload/file/201509/b5bec77188d84b65848970712d5ac9d8.png', '任天佑：“新古田会议”与实现强军梦');
INSERT INTO `xx_product_recommend` VALUES ('4028d081501bae0201501bf0154f000a', '2015-09-30 09:48:50', '2015-09-30 10:59:36', 'http://theory.people.com.cn/n/2015/0105/c40531-26323796.html', '/upload/file/201509/6da7ff107f9b4fe9a53a90bd1f1c74eb.png', '李义平：如何认识中国经济发展新常态');
INSERT INTO `xx_product_recommend` VALUES ('ff8080815997be2a015997c2e3630000', '2017-01-13 20:17:28', '2017-01-13 20:17:28', '暗室逢灯啊', '/upload/file/201701/8d401f2f926842b594ad32125d13b869.doc', '打发');
INSERT INTO `xx_product_recommend` VALUES ('ff808081599bb05201599bb5a6ee0001', '2017-01-14 14:41:30', '2017-01-14 14:41:30', '撒地方阿发算法打算撒sad阿斯蒂芬阿斯蒂芬按时', '/upload/file/201701/72d2fc9fdd414002aed4bfedaeb66bfc.doc', '大师傅');

-- ----------------------------
-- Table structure for `xx_role`
-- ----------------------------
DROP TABLE IF EXISTS `xx_role`;
CREATE TABLE `xx_role` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `authority_list_store` longtext,
  `description` longtext,
  `is_system` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_role
-- ----------------------------
INSERT INTO `xx_role` VALUES ('0731dcsoft2010031200000000000016', '2014-11-08 20:32:22', '2014-11-08 20:32:19', '[\"ROLE_GOODS\",\"ROLE_GOODS_NOTIFY\",\"ROLE_GOODS_CATEGORY\",\"ROLE_GOODS_TYPE\",\"ROLE_SPECIFICATION\",\"ROLE_BRAND\",\"ROLE_ORDER\",\"ROLE_PAYMENT\",\"ROLE_REFUND\",\"ROLE_SHIPPING\",\"ROLE_RESHIP\",\"ROLE_MEMBER\",\"ROLE_MEMBER_RANK\",\"ROLE_MEMBER_ATTRIBUTE\",\"ROLE_COMMENT\",\"ROLE_LEAVE_MESSAGE\",\"ROLE_NAVIGATION\",\"ROLE_ARTICLEE\",\"ROLE_ARTICLE_CATEGORY\",\"ROLE_FRIEND_LINK\",\"ROLE_PAGE_TEMPLATE\",\"ROLE_MAIL_TEMPLATE\",\"ROLE_PRINT_TEMPLATE\",\"ROLE_CACHE\",\"ROLE_BUILD_HTML\",\"ROLE_ADMIN\",\"ROLE_ROLE\",\"ROLE_MESSAGE\",\"ROLE_LOG\",\"ROLE_SETTING\",\"ROLE_INSTANT_MESSAGING\",\"ROLE_PAYMENT_CONFIG\",\"ROLE_DELIVERY_TYPE\",\"ROLE_AREA\",\"ROLE_DELIVERY_CORP\",\"ROLE_DELIVERY_CENTER\",\"ROLE_DELIVERY_TEMPLATE\",\"ROLE_BASE\"]', '拥有后台管理最高权限', '', '超级管理员');
INSERT INTO `xx_role` VALUES ('f965e436498fc9b901498fd5a9b60000', '2014-11-08 22:36:24', '2014-11-08 22:36:24', '[\"ROLE_MEMBER\",\"ROLE_MEMBER_RANK\",\"ROLE_MEMBER_ATTRIBUTE\",\"ROLE_BASE\"]', '可以管理会员', '', '会员管理员');

-- ----------------------------
-- Table structure for `xx_shopcart`
-- ----------------------------
DROP TABLE IF EXISTS `xx_shopcart`;
CREATE TABLE `xx_shopcart` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `commodity_id` varchar(32) DEFAULT NULL,
  `member_id` varchar(32) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `total_price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3E77ED7574DD7F43` (`commodity_id`),
  KEY `FK3E77ED7533C62371` (`member_id`),
  CONSTRAINT `FK3E77ED7533C62371` FOREIGN KEY (`member_id`) REFERENCES `xx_member` (`id`),
  CONSTRAINT `FK3E77ED7574DD7F43` FOREIGN KEY (`commodity_id`) REFERENCES `xx_commodity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_shopcart
-- ----------------------------
INSERT INTO `xx_shopcart` VALUES ('2c9dd3115b13d934015b13d9c0c50000', '2017-03-28 15:38:09', '2017-03-28 15:38:09', '40283f815a5b6169015a5b746e3e0000', '40283f815a553f31015a55471dca0000', '3', '6.0');
INSERT INTO `xx_shopcart` VALUES ('2c9dd3115b13efd1015b13fa050f0001', '2017-03-28 16:13:24', '2017-03-28 16:13:24', 'ff808081599bb05201599bb0c9e30000', '40283f815a553f31015a55471dca0000', '3', '195.0');
INSERT INTO `xx_shopcart` VALUES ('2c9dd3115b1407e3015b140d2b5b0001', '2017-03-28 16:34:19', '2017-03-28 16:34:19', 'ff808081599bb05201599bb0c9e30000', '2c9dd3115b139b83015b139f12780000', '2', '130.0');
INSERT INTO `xx_shopcart` VALUES ('2c9dd3115b1410b0015b1411172e0000', '2017-03-28 16:38:36', '2017-03-28 16:38:36', 'ff808081599b788101599b78d56a0000', '2c9dd3115b139b83015b139f12780000', '2', '152.0');
INSERT INTO `xx_shopcart` VALUES ('40281b845b22ceaa015b22d7bb840001', '2017-03-31 13:30:15', '2017-03-31 13:30:15', '40283f815a5b6169015a5b746e3e0000', '40281b845b22ceaa015b22d239f30000', '2', '4.0');
