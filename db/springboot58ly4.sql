/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : springboot58ly4

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2020-11-30 14:51:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '2020-11-30 11:36:04', '1', '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES ('2', '2020-11-30 11:36:04', '2', '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES ('3', '2020-11-30 11:36:04', '3', '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES ('4', '2020-11-30 11:36:04', '4', '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES ('5', '2020-11-30 11:36:04', '5', '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES ('6', '2020-11-30 11:36:04', '6', '宇宙银河系月球1号', '月某', '13823888886', '是');

-- ----------------------------
-- Table structure for baokaozhinan
-- ----------------------------
DROP TABLE IF EXISTS `baokaozhinan`;
CREATE TABLE `baokaozhinan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jiuyefangxiang` varchar(200) DEFAULT NULL COMMENT '就业方向',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xiangqing` longtext COMMENT '详情',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='报考指南';

-- ----------------------------
-- Records of baokaozhinan
-- ----------------------------
INSERT INTO `baokaozhinan` VALUES ('1', '2020-11-30 11:36:04', '标题1', '就业方向1', 'http://localhost:8080/springboot58ly4/upload/baokaozhinan_tupian1.jpg', '专业1', '详情1', '2020-11-30');
INSERT INTO `baokaozhinan` VALUES ('2', '2020-11-30 11:36:04', '标题2', '就业方向2', 'http://localhost:8080/springboot58ly4/upload/baokaozhinan_tupian2.jpg', '专业2', '详情2', '2020-11-30');
INSERT INTO `baokaozhinan` VALUES ('3', '2020-11-30 11:36:04', '标题3', '就业方向3', 'http://localhost:8080/springboot58ly4/upload/baokaozhinan_tupian3.jpg', '专业3', '详情3', '2020-11-30');
INSERT INTO `baokaozhinan` VALUES ('4', '2020-11-30 11:36:04', '标题4', '就业方向4', 'http://localhost:8080/springboot58ly4/upload/baokaozhinan_tupian4.jpg', '专业4', '详情4', '2020-11-30');
INSERT INTO `baokaozhinan` VALUES ('5', '2020-11-30 11:36:04', '标题5', '就业方向5', 'http://localhost:8080/springboot58ly4/upload/baokaozhinan_tupian5.jpg', '专业5', '详情5', '2020-11-30');
INSERT INTO `baokaozhinan` VALUES ('6', '2020-11-30 11:36:04', '标题6', '就业方向6', 'http://localhost:8080/springboot58ly4/upload/baokaozhinan_tupian6.jpg', '专业6', '详情6', '2020-11-30');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'ziliaoxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606718908963 DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606718963970 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1', '2020-11-30 11:36:04', '1', '1', '提问1', '回复1', '0');
INSERT INTO `chat` VALUES ('2', '2020-11-30 11:36:04', '2', '2', '提问2', '回复2', '2');
INSERT INTO `chat` VALUES ('3', '2020-11-30 11:36:04', '3', '3', '提问3', '回复3', '3');
INSERT INTO `chat` VALUES ('4', '2020-11-30 11:36:04', '4', '4', '提问4', '回复4', '4');
INSERT INTO `chat` VALUES ('5', '2020-11-30 11:36:04', '5', '5', '提问5', '回复5', '5');
INSERT INTO `chat` VALUES ('6', '2020-11-30 11:36:04', '6', '6', '提问6', '回复6', '6');
INSERT INTO `chat` VALUES ('1606718720322', '2020-11-30 14:45:20', '1', null, '你好', null, '0');
INSERT INTO `chat` VALUES ('1606718834663', '2020-11-30 14:47:14', '1', '1', null, '在这里可以回答学生的咨询 并开解学生', '0');
INSERT INTO `chat` VALUES ('1606718963969', '2020-11-30 14:49:23', '1', null, '在这里咨询 ', null, '1');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/springboot58ly4/upload/picture1.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/springboot58ly4/upload/picture2.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/springboot58ly4/upload/picture3.jpg');
INSERT INTO `config` VALUES ('4', 'picture4', 'http://localhost:8080/springboot58ly4/upload/picture4.jpg');
INSERT INTO `config` VALUES ('5', 'picture5', 'http://localhost:8080/springboot58ly4/upload/picture5.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for discussbaokaozhinan
-- ----------------------------
DROP TABLE IF EXISTS `discussbaokaozhinan`;
CREATE TABLE `discussbaokaozhinan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='报考指南评论表';

-- ----------------------------
-- Records of discussbaokaozhinan
-- ----------------------------
INSERT INTO `discussbaokaozhinan` VALUES ('1', '2020-11-30 11:36:04', '1', '评论内容1', '1');
INSERT INTO `discussbaokaozhinan` VALUES ('2', '2020-11-30 11:36:04', '2', '评论内容2', '2');
INSERT INTO `discussbaokaozhinan` VALUES ('3', '2020-11-30 11:36:04', '3', '评论内容3', '3');
INSERT INTO `discussbaokaozhinan` VALUES ('4', '2020-11-30 11:36:04', '4', '评论内容4', '4');
INSERT INTO `discussbaokaozhinan` VALUES ('5', '2020-11-30 11:36:04', '5', '评论内容5', '5');
INSERT INTO `discussbaokaozhinan` VALUES ('6', '2020-11-30 11:36:04', '6', '评论内容6', '6');

-- ----------------------------
-- Table structure for discusskaoyanzixun
-- ----------------------------
DROP TABLE IF EXISTS `discusskaoyanzixun`;
CREATE TABLE `discusskaoyanzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606718894635 DEFAULT CHARSET=utf8 COMMENT='考研资讯评论表';

-- ----------------------------
-- Records of discusskaoyanzixun
-- ----------------------------
INSERT INTO `discusskaoyanzixun` VALUES ('1', '2020-11-30 11:36:04', '1', '评论内容1', '1');
INSERT INTO `discusskaoyanzixun` VALUES ('2', '2020-11-30 11:36:04', '2', '评论内容2', '2');
INSERT INTO `discusskaoyanzixun` VALUES ('3', '2020-11-30 11:36:04', '3', '评论内容3', '3');
INSERT INTO `discusskaoyanzixun` VALUES ('4', '2020-11-30 11:36:04', '4', '评论内容4', '4');
INSERT INTO `discusskaoyanzixun` VALUES ('5', '2020-11-30 11:36:04', '5', '评论内容5', '5');
INSERT INTO `discusskaoyanzixun` VALUES ('6', '2020-11-30 11:36:04', '6', '评论内容6', '6');
INSERT INTO `discusskaoyanzixun` VALUES ('1606718894634', '2020-11-30 14:48:14', '3', '登陆后可以收藏跟评论', '1');

-- ----------------------------
-- Table structure for discussziliaoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussziliaoxinxi`;
CREATE TABLE `discussziliaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='资料信息评论表';

-- ----------------------------
-- Records of discussziliaoxinxi
-- ----------------------------
INSERT INTO `discussziliaoxinxi` VALUES ('1', '2020-11-30 11:36:04', '1', '评论内容1', '1');
INSERT INTO `discussziliaoxinxi` VALUES ('2', '2020-11-30 11:36:04', '2', '评论内容2', '2');
INSERT INTO `discussziliaoxinxi` VALUES ('3', '2020-11-30 11:36:04', '3', '评论内容3', '3');
INSERT INTO `discussziliaoxinxi` VALUES ('4', '2020-11-30 11:36:04', '4', '评论内容4', '4');
INSERT INTO `discussziliaoxinxi` VALUES ('5', '2020-11-30 11:36:04', '5', '评论内容5', '5');
INSERT INTO `discussziliaoxinxi` VALUES ('6', '2020-11-30 11:36:04', '6', '评论内容6', '6');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606718943879 DEFAULT CHARSET=utf8 COMMENT='论坛表';

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES ('1606718935714', '2020-11-30 14:48:55', '这里可以发帖讨论', '<p>也可以回帖</p>', '0', '1', '001', '开放');
INSERT INTO `forum` VALUES ('1606718943878', '2020-11-30 14:49:03', null, '666', '1606718935714', '1', '001', null);

-- ----------------------------
-- Table structure for kaoyanzixun
-- ----------------------------
DROP TABLE IF EXISTS `kaoyanzixun`;
CREATE TABLE `kaoyanzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunbiaoti` varchar(200) NOT NULL COMMENT '资讯标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='考研资讯';

-- ----------------------------
-- Records of kaoyanzixun
-- ----------------------------
INSERT INTO `kaoyanzixun` VALUES ('1', '2020-11-30 11:36:04', '资讯标题1', '类型1', 'http://localhost:8080/springboot58ly4/upload/kaoyanzixun_tupian1.jpg', '内容1', '2020-11-30', '2020-11-30 06:45:55', '2');
INSERT INTO `kaoyanzixun` VALUES ('2', '2020-11-30 11:36:04', '资讯标题2', '类型2', 'http://localhost:8080/springboot58ly4/upload/kaoyanzixun_tupian2.jpg', '内容2', '2020-11-30', '2020-11-30 06:47:23', '8');
INSERT INTO `kaoyanzixun` VALUES ('3', '2020-11-30 11:36:04', '资讯标题3', '类型3', 'http://localhost:8080/springboot58ly4/upload/kaoyanzixun_tupian3.jpg', '内容3', '2020-11-30', '2020-11-30 06:48:21', '9');
INSERT INTO `kaoyanzixun` VALUES ('4', '2020-11-30 11:36:04', '资讯标题4', '类型4', 'http://localhost:8080/springboot58ly4/upload/kaoyanzixun_tupian4.jpg', '内容4', '2020-11-30', '2020-11-30 11:36:04', '4');
INSERT INTO `kaoyanzixun` VALUES ('5', '2020-11-30 11:36:04', '资讯标题5', '类型5', 'http://localhost:8080/springboot58ly4/upload/kaoyanzixun_tupian5.jpg', '内容5', '2020-11-30', '2020-11-30 11:36:04', '5');
INSERT INTO `kaoyanzixun` VALUES ('6', '2020-11-30 11:36:04', '资讯标题6', '类型6', 'http://localhost:8080/springboot58ly4/upload/kaoyanzixun_tupian6.jpg', '内容6', '2020-11-30', '2020-11-30 11:36:04', '6');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'ziliaoxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1606718914793 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1606707918160', '2020-11-30 11:45:18', '2020113011424119229200', 'ziliaoxinxi', '1', '1', '资料名称1', 'http://localhost:8080/springboot58ly4/upload/ziliaoxinxi_tupian1.jpg', '1', '60', '60', '60', '60', '1', '已完成', '宇宙银河系金星1号');
INSERT INTO `orders` VALUES ('1606718914792', '2020-11-30 14:48:34', '2020113014483416903800', 'ziliaoxinxi', '1', '2', '资料名称2', 'http://localhost:8080/springboot58ly4/upload/ziliaoxinxi_tupian2.jpg', '1', '66', '66', '66', '66', '1', '已完成', '宇宙银河系金星1号');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606718880877 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('1606718880876', '2020-11-30 14:48:00', '1', '3', 'kaoyanzixun', '资讯标题3', 'http://localhost:8080/springboot58ly4/upload/kaoyanzixun_tupian3.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', 'tiuysbkktmvmuggtr22jm8qiowrltie5', '2020-11-30 11:38:45', '2020-11-30 07:49:51');
INSERT INTO `token` VALUES ('2', '1', '001', 'xuesheng', '学生', 'nvt28ke5dman27rdmxkwvqc85rvdmjmg', '2020-11-30 11:44:44', '2020-11-30 07:50:01');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2020-11-30 11:36:04');

-- ----------------------------
-- Table structure for xuesheng
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='学生';

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES ('1', '2020-11-30 11:36:04', '001', '001', '小吴1', '女', 'http://localhost:8080/springboot58ly4/upload/xuesheng_touxiang1.jpg', '计算机', '六班', '13823888881', '773890001@qq.com', '224');
INSERT INTO `xuesheng` VALUES ('2', '2020-11-30 11:36:04', '学生2', '123456', '学生姓名2', '男', 'http://localhost:8080/springboot58ly4/upload/xuesheng_touxiang2.jpg', '专业2', '班级2', '13823888882', '773890002@qq.com', '100');
INSERT INTO `xuesheng` VALUES ('3', '2020-11-30 11:36:04', '学生3', '123456', '学生姓名3', '男', 'http://localhost:8080/springboot58ly4/upload/xuesheng_touxiang3.jpg', '专业3', '班级3', '13823888883', '773890003@qq.com', '100');
INSERT INTO `xuesheng` VALUES ('4', '2020-11-30 11:36:04', '学生4', '123456', '学生姓名4', '男', 'http://localhost:8080/springboot58ly4/upload/xuesheng_touxiang4.jpg', '专业4', '班级4', '13823888884', '773890004@qq.com', '100');
INSERT INTO `xuesheng` VALUES ('5', '2020-11-30 11:36:04', '学生5', '123456', '学生姓名5', '男', 'http://localhost:8080/springboot58ly4/upload/xuesheng_touxiang5.jpg', '专业5', '班级5', '13823888885', '773890005@qq.com', '100');
INSERT INTO `xuesheng` VALUES ('6', '2020-11-30 11:36:04', '学生6', '123456', '学生姓名6', '男', 'http://localhost:8080/springboot58ly4/upload/xuesheng_touxiang6.jpg', '专业6', '班级6', '13823888886', '773890006@qq.com', '100');

-- ----------------------------
-- Table structure for ziliaofenlei
-- ----------------------------
DROP TABLE IF EXISTS `ziliaofenlei`;
CREATE TABLE `ziliaofenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='资料分类';

-- ----------------------------
-- Records of ziliaofenlei
-- ----------------------------
INSERT INTO `ziliaofenlei` VALUES ('1', '2020-11-30 11:36:04', '分类1');
INSERT INTO `ziliaofenlei` VALUES ('2', '2020-11-30 11:36:04', '分类2');
INSERT INTO `ziliaofenlei` VALUES ('3', '2020-11-30 11:36:04', '分类3');
INSERT INTO `ziliaofenlei` VALUES ('4', '2020-11-30 11:36:04', '分类4');
INSERT INTO `ziliaofenlei` VALUES ('5', '2020-11-30 11:36:04', '分类5');
INSERT INTO `ziliaofenlei` VALUES ('6', '2020-11-30 11:36:04', '分类6');

-- ----------------------------
-- Table structure for ziliaoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `ziliaoxinxi`;
CREATE TABLE `ziliaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaomingcheng` varchar(200) NOT NULL COMMENT '资料名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `xiangqing` longtext COMMENT '详情',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='资料信息';

-- ----------------------------
-- Records of ziliaoxinxi
-- ----------------------------
INSERT INTO `ziliaoxinxi` VALUES ('1', '2020-11-30 11:36:04', '资料名称1', '分类1', 'http://localhost:8080/springboot58ly4/upload/ziliaoxinxi_tupian1.jpg', '规格1', '备注1', '<p>详情1</p>', '60');
INSERT INTO `ziliaoxinxi` VALUES ('2', '2020-11-30 11:36:04', '资料名称2', '分类2', 'http://localhost:8080/springboot58ly4/upload/ziliaoxinxi_tupian2.jpg', '规格2', '备注2', '<p>详情2</p>', '66');
INSERT INTO `ziliaoxinxi` VALUES ('3', '2020-11-30 11:36:04', '资料名称3', '分类3', 'http://localhost:8080/springboot58ly4/upload/ziliaoxinxi_tupian3.jpg', '规格3', '备注3', '<p>详情3</p>', '50');
INSERT INTO `ziliaoxinxi` VALUES ('4', '2020-11-30 11:36:04', '资料名称4', '分类4', 'http://localhost:8080/springboot58ly4/upload/ziliaoxinxi_tupian4.jpg', '规格4', '备注4', '<p>详情4</p>', '56');
INSERT INTO `ziliaoxinxi` VALUES ('5', '2020-11-30 11:36:04', '资料名称5', '分类5', 'http://localhost:8080/springboot58ly4/upload/ziliaoxinxi_tupian5.jpg', '规格5', '备注5', '<p>详情5</p>', '70');
INSERT INTO `ziliaoxinxi` VALUES ('6', '2020-11-30 11:36:04', '资料名称6', '分类6', 'http://localhost:8080/springboot58ly4/upload/ziliaoxinxi_tupian6.jpg', '规格6', '备注6', '<p>详情6</p>', '60');
