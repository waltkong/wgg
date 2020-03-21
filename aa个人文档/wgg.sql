/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : wgg

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-03-21 13:04:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wgg_admin`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_admin`;
CREATE TABLE `wgg_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';

-- ----------------------------
-- Records of wgg_admin
-- ----------------------------
INSERT INTO `wgg_admin` VALUES ('1', 'admin', 'Admin', '075eaec83636846f51c152f29b98a2fd', 's4f3', '/assets/img/avatar.png', 'admin@fastadmin.net', '0', '1584762712', '1492186163', '1584762712', '4db8ac71-7e4a-4e6a-a087-15d5a36cd9a0', 'normal');

-- ----------------------------
-- Table structure for `wgg_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_admin_log`;
CREATE TABLE `wgg_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员日志表';

-- ----------------------------
-- Records of wgg_admin_log
-- ----------------------------
INSERT INTO `wgg_admin_log` VALUES ('1', '1', 'admin', '/admin/index/login?url=%2Fadmin', '登录', '{\"url\":\"\\/admin\",\"__token__\":\"7e4efb55aaea4e03e25a25f024a0ab4b\",\"username\":\"admin\",\"captcha\":\"55xx\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584336738');
INSERT INTO `wgg_admin_log` VALUES ('2', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"01.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584341573');
INSERT INTO `wgg_admin_log` VALUES ('3', '1', 'admin', '/admin/web/banner/add?dialog=1', 'web banner管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u9996\\u98751\",\"image_url\":\"\\/uploads\\/20200316\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"group\":\"1\",\"jump_url\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584341580');
INSERT INTO `wgg_admin_log` VALUES ('4', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"01.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584341602');
INSERT INTO `wgg_admin_log` VALUES ('5', '1', 'admin', '/admin/web/banner/add?dialog=1', 'web banner管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u9996\\u98752\",\"image_url\":\"\\/uploads\\/20200316\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"group\":\"1\",\"jump_url\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584341621');
INSERT INTO `wgg_admin_log` VALUES ('6', '1', 'admin', '/admin/general.config/edit', '常规管理 系统配置 编辑', '{\"row\":{\"name\":\"\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{\\\"backend\\\":\\\"zh-cn\\\",\\\"frontend\\\":\\\"zh-cn\\\"}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584343376');
INSERT INTO `wgg_admin_log` VALUES ('7', '1', 'admin', '/admin/general.config/edit', '常规管理 系统配置 编辑', '{\"row\":{\"name\":\"\\u4e94\\u5bab\\u683c  \\u4fe1\\u606f\\u79d1\\u6280\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{\\\"backend\\\":\\\"zh-cn\\\",\\\"frontend\\\":\\\"zh-cn\\\"}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584343400');
INSERT INTO `wgg_admin_log` VALUES ('8', '1', 'admin', '/admin/general.config/edit', '常规管理 系统配置 编辑', '{\"row\":{\"name\":\"\\u4e94\\u5bab\\u683c  \\u5b98\\u7f51\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{\\\"backend\\\":\\\"zh-cn\\\",\\\"frontend\\\":\\\"zh-cn\\\"}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584343427');
INSERT INTO `wgg_admin_log` VALUES ('9', '1', 'admin', '/admin/general.config/edit', '常规管理 系统配置 编辑', '{\"row\":{\"name\":\"\\u4e94\\u5bab\\u683c  \\u5b98\\u7f51\\u540e\\u53f0\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{\\\"backend\\\":\\\"zh-cn\\\",\\\"frontend\\\":\\\"zh-cn\\\"}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584343441');
INSERT INTO `wgg_admin_log` VALUES ('10', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"\\u7f51\\u9875\\u8bbe\\u8ba11--\\u7f51\\u7ad9\\u9996\\u9875_160.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584350113');
INSERT INTO `wgg_admin_log` VALUES ('11', '1', 'admin', '/admin/web/company/add?dialog=1', 'web 客户公司管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u767e\\u5ea6\",\"image\":\"\\/uploads\\/20200316\\/48948e52986c81f574eca4d2ca76412d.png\",\"jump_url\":\"http:\\/\\/www.baidu.com\",\"is_guest\":\"1\",\"is_friend\":\"1\",\"weigh\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584350123');
INSERT INTO `wgg_admin_log` VALUES ('12', '1', 'admin', '/admin/web/company/add?dialog=1', 'web 客户公司管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"360\",\"image\":\"\\/uploads\\/20200316\\/48948e52986c81f574eca4d2ca76412d.png\",\"jump_url\":\"http:\\/\\/www.baidu.com\",\"is_guest\":\"1\",\"is_friend\":\"1\",\"weigh\":\"2\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584350169');
INSERT INTO `wgg_admin_log` VALUES ('13', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"company1.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584352264');
INSERT INTO `wgg_admin_log` VALUES ('14', '1', 'admin', '/admin/web/company/edit/ids/9?dialog=1', 'web 客户公司管理 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"360\",\"image\":\"\\/uploads\\/20200316\\/c431ad8aa050a63ce9288d6fec376bae.png\",\"jump_url\":\"http:\\/\\/www.baidu.com\",\"is_guest\":\"1\",\"is_friend\":\"1\",\"weigh\":\"9\"},\"ids\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584352267');
INSERT INTO `wgg_admin_log` VALUES ('15', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"company1.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584352279');
INSERT INTO `wgg_admin_log` VALUES ('16', '1', 'admin', '/admin/web/company/edit/ids/8?dialog=1', 'web 客户公司管理 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u767e\\u5ea6\",\"image\":\"\\/uploads\\/20200316\\/c431ad8aa050a63ce9288d6fec376bae.png\",\"jump_url\":\"http:\\/\\/www.baidu.com\",\"is_guest\":\"1\",\"is_friend\":\"1\",\"weigh\":\"8\"},\"ids\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584352282');
INSERT INTO `wgg_admin_log` VALUES ('17', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"dog1.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584359271');
INSERT INTO `wgg_admin_log` VALUES ('18', '1', 'admin', '/admin/web/news/add?dialog=1', 'web 新闻管理 添加', '{\"dialog\":\"1\",\"row\":{\"category_id\":\"1\",\"name\":\"\\u6bd4\\u5c14\\u76d6\\u8328\\u9000\\u51fa\\u5fae\\u8f6f\\u8463\\u4e8b\\u4f1a\\uff0c20\\u5e74\\u5171\\u6350\\u51fa538\\u4ebf\\u7f8e\\u5143\",\"keyword\":\"\\u6bd4\\u5c14\\u76d6\\u8328\\uff0c\\u5fae\\u8f6f\",\"description\":\"\\u5fae\\u8f6f\\u516c\\u53f8\\u5468\\u4e94\\u5ba3\\u5e03\\uff0c\\u516c\\u53f8\\u8054\\u5408\\u521b\\u59cb\\u4eba\\u517c\\u6280\\u672f\\u987e\\u95ee\\u6bd4\\u5c14-\\u76d6\\u8328\\uff08Bill Gates\\uff09\\u8f9e\\u53bb\\u8463\\u4e8b\\u4f1a\\u804c\\u52a1\\uff0c\\u5c06\\u66f4\\u591a\\u65f6\\u95f4\\u7528\\u4e8e\\u6148\\u5584\\u4e8b\\u4e1a\\uff0c\\u5176\\u4e2d\\u5305\\u62ec\\u5168\\u7403\\u5065\\u5eb7\\u3001\\u53d1\\u5c55\\u3001\\u6559\\u80b2\\uff0c\\u4ee5\\u53ca\\u4ed6\\u5728\\u5e94\\u5bf9\\u6c14\\u5019\\u53d8\\u5316\\u65b9\\u9762\\u8d8a\\u6765\\u8d8a\\u591a\\u7684\\u6295\\u5165\",\"content\":\"\\u5fae\\u8f6f\\u8868\\u793a\\uff0c\\u6bd4\\u5c14-\\u76d6\\u8328\\u5c06\\u7ee7\\u7eed\\u62c5\\u4efb\\u9996\\u5e2d\\u6267\\u884c\\u5b98\\u8428\\u8482\\u4e9a-\\u7eb3\\u5fb7\\u62c9\\uff08Satya Nadella\\uff09\\u548c\\u516c\\u53f8\\u5176\\u4ed6\\u9886\\u5bfc\\u4eba\\u7684\\u6280\\u672f\\u987e\\u95ee\\u3002\\r\\n\\r\\n\\u6bd4\\u5c14-\\u76d6\\u83282014\\u5e74\\u5378\\u4efb\\u5fae\\u8f6f\\u8463\\u4e8b\\u4f1a\\u4e3b\\u5e2d\\uff0c\\u4f46\\u4ed6\\u4ece2008\\u5e74\\u5f00\\u59cb\\u5c31\\u5c06\\u66f4\\u591a\\u65f6\\u95f4\\u548c\\u7cbe\\u529b\\u6295\\u5165\\u5230\\u76d6\\u8328\\u57fa\\u91d1\\u4f1a\\uff0c\\u8fd9\\u662f\\u4e16\\u754c\\u4e0a\\u6700\\u5927\\u7684\\u6148\\u5584\\u673a\\u6784\\u4e4b\\u4e00\\uff0c\\u62e5\\u6709\\u6570\\u5341\\u4ebf\\u7f8e\\u5143\\u8d44\\u4ea7\\uff0c\\u4e3a\\u6297\\u51fb\\u75be\\u75c5\\u548c\\u6d88\\u9664\\u8d2b\\u56f0\\u7684\\u5168\\u7403\\u536b\\u751f\\u9879\\u76ee\\u63d0\\u4f9b\\u8d44\\u91d1\\u3002\\r\\n\\r\\n\",\"image_url\":\"\\/uploads\\/20200316\\/b0ebabd0b6093132da11f8e924161e6a.jpg\",\"click_count\":\"122\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584359277');
INSERT INTO `wgg_admin_log` VALUES ('19', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"dog3.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584359344');
INSERT INTO `wgg_admin_log` VALUES ('20', '1', 'admin', '/admin/web/news/add?dialog=1', 'web 新闻管理 添加', '{\"dialog\":\"1\",\"row\":{\"category_id\":\"1\",\"name\":\"\\u817e\\u8baf\\u65e0\\u5948\\u5411\\u82f9\\u679c\\u4f4e\\u5934\\uff0c\\u963f\\u91cc\\u7a81\\u7136\\u51b3\\u5b9a\\u52a9\\u63a8\\u534e\\u4e3a\\uff0c\\u5411\\u7f8e\\u5de8\\u5934\\u53d1\\u8d77\\u53cd\\u51fb\",\"keyword\":\"\\u817e\\u8baf\\uff0c\\u82f9\\u679c\",\"description\":\"\\u968f\\u7740\\u79fb\\u52a8\\u4e92\\u8054\\u7f51\\u7684\\u4e0d\\u65ad\\u53d1\\u5c55\\uff0c\\u6700\\u8fd1\\u8fd9\\u51e0\\u5e74\\u4e2d\\u56fd\\u7684\\u79fb\\u52a8\\u4e92\\u8054\\u7f51\\u5e02\\u573a\\u4e5f\\u53d1\\u5c55\\u5f97\\u6781\\u4e3a\\u8fc5\\u731b\\uff0c\\u5728\\u4e2d\\u56fd\\u8fd8\\u8bde\\u751f\\u4e86\\u4e0d\\u5c11\\u7684\\u79fb\\u52a8\\u4e92\\u8054\\u7f51\\u5de8\\u5934\\u516c\\u53f8\\uff0c\\u50cf\\u817e\\u8baf\\u3001\\u963f\\u91cc\\u5df4\\u5df4\\u3001\\u534e\\u4e3a\\u7b49\\u4f01\\u4e1a\\u90fd\\u662f\\u4e2d\\u56fd\\u5bb6\\u55bb\\u6237\\u6653\\u7684\\u4f01\\u4e1a\\uff0c\\u800c\\u8fd9\\u4e9b\\u5de8\\u5934\\u4f01\\u4e1a\\u7684\\u4e0d\\u65ad\\u53d1\\u5c55\\u4e5f\\u7ed9\\u6211\\u4eec\\u7684\\u751f\\u6d3b\\u5e26\\u6765\\u4e86\\u5f88\\u5927\\u7684\\u4fbf\\u5229\",\"content\":\"\\u5bfc\\u8bfb\\uff1a\\u817e\\u8baf\\u65e0\\u5948\\u5411\\u82f9\\u679c\\u4f4e\\u5934\\uff0c\\u963f\\u91cc\\u7a81\\u7136\\u51b3\\u5b9a\\u52a9\\u63a8\\u534e\\u4e3a\\uff0c\\u5411\\u7f8e\\u5de8\\u5934\\u53d1\\u8d77\\u53cd\\u51fb\\uff01\\r\\n\\r\\n\\u968f\\u7740\\u79fb\\u52a8\\u4e92\\u8054\\u7f51\\u7684\\u4e0d\\u65ad\\u53d1\\u5c55\\uff0c\\u6700\\u8fd1\\u8fd9\\u51e0\\u5e74\\u4e2d\\u56fd\\u7684\\u79fb\\u52a8\\u4e92\\u8054\\u7f51\\u5e02\\u573a\\u4e5f\\u53d1\\u5c55\\u5f97\\u6781\\u4e3a\\u8fc5\\u731b\\uff0c\\u5728\\u4e2d\\u56fd\\u8fd8\\u8bde\\u751f\\u4e86\\u4e0d\\u5c11\\u7684\\u79fb\\u52a8\\u4e92\\u8054\\u7f51\\u5de8\\u5934\\u516c\\u53f8\\uff0c\\u50cf\\u817e\\u8baf\\u3001\\u963f\\u91cc\\u5df4\\u5df4\\u3001\\u534e\\u4e3a\\u7b49\\u4f01\\u4e1a\\u90fd\\u662f\\u4e2d\\u56fd\\u5bb6\\u55bb\\u6237\\u6653\\u7684\\u4f01\\u4e1a\\uff0c\\u800c\\u8fd9\\u4e9b\\u5de8\\u5934\\u4f01\\u4e1a\\u7684\\u4e0d\\u65ad\\u53d1\\u5c55\\u4e5f\\u7ed9\\u6211\\u4eec\\u7684\\u751f\\u6d3b\\u5e26\\u6765\\u4e86\\u5f88\\u5927\\u7684\\u4fbf\\u5229\\uff0c\\u540c\\u65f6\\u4e5f\\u6781\\u5927\\u5730\\u4fc3\\u8fdb\\u4e86\\u6211\\u56fd\\u7ecf\\u6d4e\\u7684\\u53d1\\u5c55\\uff1b\\u4f46\\u968f\\u7740\\u4e2d\\u56fd\\u79d1\\u6280\\u4f01\\u4e1a\\u7684\\u4e0d\\u65ad\\u53d1\\u5c55\\u548c\\u5d1b\\u8d77\\uff0c\\u4e5f\\u8ba9\\u4e0d\\u5c11\\u56fd\\u5916\\u4f01\\u4e1a\\u5f00\\u59cb\\u62c5\\u5fc3\\u8d77\\u4e2d\\u56fd\\u4f01\\u4e1a\\u7684\\u6311\\u6218\\u8d77\\u6765\\uff0c\\u5176\\u4e2d\\u5c31\\u5305\\u62ec\\u7f8e\\u56fd\\u7684\\u4e00\\u4e9b\\u79d1\\u6280\\u5de8\\u5934\\u4f01\\u4e1a\\uff01\",\"image_url\":\"\\/uploads\\/20200316\\/d24704353b609f131f0881fa7b7a25c4.jpg\",\"click_count\":\"234\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584359349');
INSERT INTO `wgg_admin_log` VALUES ('21', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"dog4.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584359407');
INSERT INTO `wgg_admin_log` VALUES ('22', '1', 'admin', '/admin/web/news/add?dialog=1', 'web 新闻管理 添加', '{\"dialog\":\"1\",\"row\":{\"category_id\":\"1\",\"name\":\"\\u82f9\\u679c\\u8dea\\u4e86\\uff0ciOS14\\u63d0\\u524d\\u6cc4\\u9732\\uff0c\\u66b4\\u9732\\u6240\\u6709\\u65b0\\u54c1\",\"keyword\":\"\\u82f9\\u679c\",\"description\":\"\\u4e0d\\u77e5\\u9053\\u82f9\\u679c\\u662f\\u4e0d\\u662f\\u51c6\\u5907\\u5f00\\u7ebf\\u4e0a\\u53d1\\u5e03\\u4f1a\\uff0c\\u9700\\u8981\\u63d0\\u524d\\u9884\\u70ed\\u7684\\u5173\\u7cfb\\uff0c\\u5c45\\u7136\\u5728iOS 13.4 Beta\\u4e2d\\u9690\\u85cf\\u4e86\\u8bb8\\u591a\\u65b0\\u529f\\u80fd\\u3002\\u6cc4\\u6f0f\\u7684\\u9600\\u95e8\\u4e00\\u65e6\\u6253\\u5f00\\u5c31\\u5173\\u4e0d\\u4e0a\\u4e86\\uff0c\\u9664\\u4e86iOS 13.4\\u6cc4\\u4e86\\uff0c\\u5c31\\u8fde6\\u6708\\u4efd\\u624d\\u53d1\\u5e03\\u7684iOS 14\\u4e5f\\u88ab\\u6cc4\\u9732\\u7cfb\\u7edf\\u4ee3\\u7801\\uff0c\\u628a\\u65b0\\u529f\\u80fd\\u65b0\\u673a\\u578b\\u90fd\\u7ed9\\u6252\\u5f97\\u4e00\\u5e72\\u4e8c\\u51c0\\u3002\",\"content\":\"\\u6240\\u4ee5\\u6ca1\\u6536\\u5230\\u7684\\u670b\\u53cb\\u4e5f\\u4e0d\\u7528\\u5fc3\\u6025\\uff0c\\u4f30\\u8ba1\\u5728iOS 13.4\\u6b63\\u5f0f\\u7248\\u6216\\u8005\\u4e4b\\u540e\\u7684\\u7248\\u672c\\u5c31\\u4f1a\\u63a8\\u51fa\\uff0c\\u54b1\\u4eec\\u8fd8\\u662f\\u518d\\u7b49\\u7b49\\u53ed\\u3002\\r\\n\\r\\n\\u5c0f\\u96f7\\u8fd8\\u662f\\u633a\\u671f\\u5f85\\u7684\\uff0c\\u56e0\\u4e3a\\u4ee5\\u540e\\u5c31\\u4e0d\\u7528\\u518d\\u5e26\\u591a\\u4e00\\u5f20\\u5b9e\\u4f53\\u5361\\u4e86\\uff0c\\u540c\\u65f6\\u8fd8\\u80fd\\u4eab\\u53d7\\u4e58\\u8f66\\u4f18\\u60e0\\u3002\\r\\n\\r\\nOS Recovery\\uff1a\\u7cfb\\u7edf\\u6062\\u590d\\r\\n\\r\\niOS 13.4\\u4e2d\\u6cc4\\u9732\\u7684\\u65b0\\u529f\\u80fd\\u53ef\\u4e0d\\u6b62\\u4e00\\u4e2a\\u3002\\r\\n\\r\\n\\u56fd\\u5916\\u6709\\u4f4d\\u5927\\u795e\\u8fd8\\u5728iOS 13.4 \\u6d4b\\u8bd5\\u7248\\u4e2d\\u627e\\u5230\\u4e00\\u5f20\\u540d\\u4e3a\\u201cOS Recovery\\uff08\\u7cfb\\u7edf\\u6062\\u590d\\uff09\\u201d\\u65b0\\u529f\\u80fd\\u7684\\u56fe\\u7247\\u3002\",\"image_url\":\"\\/uploads\\/20200316\\/d1aad9a00d756bbb64ee250a84ff9bd4.jpg\",\"click_count\":\"345\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584359412');
INSERT INTO `wgg_admin_log` VALUES ('23', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"12.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584362550');
INSERT INTO `wgg_admin_log` VALUES ('24', '1', 'admin', '/admin/web/cases/add?dialog=1', 'web 案例管理 添加', '{\"dialog\":\"1\",\"row\":{\"category_id\":\"1\",\"company_id\":\"8\",\"name\":\"56\\u5ea6C\\u4ee3\\u8868\\u7740\\u5b89\\u5168\\u7684\\u6e29\\u5ea6\",\"keyword\":\"56\\u5ea6C\\u4ee3\\u8868\\u7740\\u5b89\\u5168\\u7684\\u6e29\\u5ea6\",\"description\":\"56\\u5ea6C\\u4ee3\\u8868\\u7740\\u5b89\\u5168\\u7684\\u6e29\\u5ea6\\u3002\\u975e\\u5e38\\u65f6\\u671f\\uff0c\\u5bb6\\u91cc\\u8863\\u7269\\u3001\\u9910\\u5177\\u90fd\\u8981\\u9ad8\\u6e29\\u6d88\\u6bd2\\uff0c\\u5bb6\\u91cc\\u7a7a\\u6c14\\u4e5f\\u8981\\u6d88\\u6bd2\\u9664\\u83cc\\u30022\\u670826\\u65e5\\uff0c\\u6d77\\u5c14\\u7a7a\\u8c03\\u884c\\u4e1a\\u9996\\u4e2a\\u53d1\\u5e03\\u4e8656\\u5ea6C\\u9664\\u83cc\\u7a7a\\u8c03\\uff0c\\u5b9e\\u73b0\\u201c\\u667a\\u6167\\u81ea\\u6e05\\u6d01\\uff0c\\u53ea\\u5439\\u5e72\\u51c0\\u98ce\\u201d\\u7684\\u6548\\u679c\\u3002\\u4ec5\\u534a\\u4e2a\\u6708\\u65f6\\u95f4\\uff0c56\\u5ea6C\\u9664\\u83cc\\u6210\\u4e3a\\u884c\\u4e1a\\u70ed\\u8bcd\\uff0c\\u5e76\\u5f15\\u53d1\\u884c\\u4e1a\\u8ddf\\u8fdb\\u3002\",\"content\":\"\\u901a\\u8fc7\\u5bf9\\u6bd4\\u53d1\\u73b0\\uff0c\\u6d77\\u5c1456\\u5ea6C\\u9664\\u83cc\\u7a7a\\u8c03\\u5177\\u5907\\u72ec\\u6709\\u76843\\u5927\\u4f18\\u52bf\\uff1a\\r\\n\\r\\n1\\u3001\\u552f\\u4e00\\u4e00\\u4e2a\\u84b8\\u53d1\\u5668\\u7fc5\\u7247\\u4e0e\\u76d8\\u7ba1\\u540c\\u65f6\\u8fbe\\u523056\\u2103\\u4ee5\\u4e0a\\u9664\\u83cc\\uff0c\\u5b9e\\u6d4b\\u6700\\u9ad8\\u8d85\\u8fc760\\u2103\\uff0c\\u800c\\u884c\\u4e1a\\u53ea\\u80fd\\u505a\\u5230\\u84b8\\u53d1\\u5668\\u76d8\\u7ba1\\u768456\\u2103\\u3002\\r\\n\\r\\n2\\u3001\\u552f\\u4e00\\u4e00\\u4e2a\\u84b8\\u53d1\\u566856\\u2103\\u4ee5\\u4e0a\\u6e29\\u5ea6\\u6301\\u7eed\\u65f6\\u95f4\\u8d85\\u8fc730\\u5206\\u949f\\uff0c\\u6700\\u9ad8\\u8fbe\\u523060\\u5206\\u949f\\u3002\\u6309\\u7167\\u5b98\\u65b9\\u8bf4\\u6cd5\\uff1a\\u6e29\\u5ea6\\u8fbe\\u523056\\u2103\\u3001\\u6301\\u7eed30\\u5206\\u949f\\uff0c\\u53ef\\u4ee5\\u6709\\u6548\\u706d\\u6d3b\\u65b0\\u578b\\u51a0\\u72b6\\u75c5\\u6bd2\\u3002\\r\\n\\r\\n3\\u3001\\u552f\\u4e00\\u4e00\\u4e2a\\u62e5\\u6709\\u6d77\\u5916\\u4e13\\u5229\\u6388\\u6743\\uff0c\\u76ee\\u524d\\u9664\\u83cc\\u81ea\\u6e05\\u6d01\\u5df2\\u83b7\\u5f97\\u6b27\\u76df\\u3001\\u65e5\\u672c\\u3001\\u4fc4\\u7f57\\u65af\\u7b49\\u6d77\\u5916\\u591a\\u4e2a\\u56fd\\u5bb6\\u548c\\u5730\\u533a\\u7684\\u4e13\\u5229\\u6388\\u6743\\u3002\\r\\n\\r\\n\\u901a\\u8fc7\\u4ee5\\u4e0a3\\u5927\\u4f18\\u52bf\\uff0c\\u6d77\\u5c1456\\u5ea6C\\u9664\\u83cc\\u7a7a\\u8c03\\u8ba9\\u7528\\u6237\\u771f\\u6b63\\u4eab\\u53d7\\u5230\\u5065\\u5eb7\\u547c\\u5438\\u3002\\u57283\\u670813\\u65e519:00\\u4e0a\\u7ebf\\u768456\\u5ea6C\\u9664\\u83cc\\u7a7a\\u8c03\\u55e8\\u8d2d\\u76db\\u5178\\u4e2d\\uff0c\\u6d77\\u5c14\\u7a7a\\u8c03\\u7ebf\\u4e0a\\u4e3a\\u7528\\u6237\\u73b0\\u573a\\u6f14\\u793a56\\u5ea6C\\u300130\\u5206\\u949f\\u4ee5\\u4e0a\\u7684\\u7a7a\\u8c03\\u9664\\u83cc\\u5168\\u8fc7\\u7a0b\\u3002\\r\\n\\r\\n\",\"image_url\":\"\\/uploads\\/20200316\\/5ff54fa9ea5b0661de62c1746d730fe1.png\",\"click_count\":\"234\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584362554');
INSERT INTO `wgg_admin_log` VALUES ('25', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"13.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584362654');
INSERT INTO `wgg_admin_log` VALUES ('26', '1', 'admin', '/admin/web/cases/add?dialog=1', 'web 案例管理 添加', '{\"dialog\":\"1\",\"row\":{\"category_id\":\"1\",\"company_id\":\"9\",\"name\":\"6\\u5ea6C\\u4ee3\\u8868\\u7740\\u5b89\\u5168\\u7684\\u6e29\\u5ea6\\u3002\\u975e\\u5e38\\u65f6\\u671f\\uff0c\\u5bb6\\u91cc\\u8863\\u7269\",\"keyword\":\"\\u76d8\\u7ba1\\u540c\\u65f6\\u8fbe\\u523056\\u2103\\u4ee5\\u4e0a\\u9664\\u83cc\\uff0c\\u5b9e\\u6d4b\\u6700\\u9ad8\\u8d85\\u8fc760\\u2103\\uff0c\\u800c\\u884c\\u4e1a\\u53ea\\u80fd\\u505a\\u5230\\u84b8\\u53d1\\u5668\\u76d8\\u7ba1\\u768456\\u2103\",\"description\":\"\\u901a\\u8fc7\\u4ee5\\u4e0a3\\u5927\\u4f18\\u52bf\\uff0c\\u6d77\\u5c1456\\u5ea6C\\u9664\\u83cc\\u7a7a\\u8c03\\u8ba9\\u7528\\u6237\\u771f\\u6b63\\u4eab\\u53d7\\u5230\\u5065\\u5eb7\\u547c\\u5438\\u3002\\u57283\\u670813\\u65e519:00\\u4e0a\\u7ebf\\u768456\\u5ea6C\\u9664\\u83cc\\u7a7a\\u8c03\\u55e8\",\"content\":\"56\\u5ea6C\\u4ee3\\u8868\\u7740\\u5b89\\u5168\\u7684\\u6e29\\u5ea6\\u3002\\u975e\\u5e38\\u65f6\\u671f\\uff0c\\u5bb6\\u91cc\\u8863\\u7269\\u3001\\u9910\\u5177\\u90fd\\u8981\\u9ad8\\u6e29\\u6d88\\u6bd2\\uff0c\\u5bb6\\u91cc\\u7a7a\\u6c14\\u4e5f\\u8981\\u6d88\\u6bd2\\u9664\\u83cc\\u30022\\u670826\\u65e5\\uff0c\\u6d77\\u5c14\\u7a7a\\u8c03\\u884c\\u4e1a\\u9996\\u4e2a\\u53d1\\u5e03\\u4e8656\\u5ea6C\\u9664\\u83cc\\u7a7a\\u8c03\\uff0c\\u5b9e\\u73b0\\u201c\\u667a\\u6167\\u81ea\\u6e05\\u6d01\\uff0c\\u53ea\\u5439\\u5e72\\u51c0\\u98ce\\u201d\\u7684\\u6548\\u679c\\u3002\\u4ec5\\u534a\\u4e2a\\u6708\\u65f6\\u95f4\\uff0c56\\u5ea6C\\u9664\\u83cc\\u6210\\u4e3a\\u884c\\u4e1a\\u70ed\\u8bcd\\uff0c\\u5e76\\u5f15\\u53d1\\u884c\\u4e1a\\u8ddf\\u8fdb\\u3002\\r\\n\\r\\n\\u901a\\u8fc7\\u5bf9\\u6bd4\\u53d1\\u73b0\\uff0c\\u6d77\\u5c1456\\u5ea6C\\u9664\\u83cc\\u7a7a\\u8c03\\u5177\\u5907\\u72ec\\u6709\\u76843\\u5927\\u4f18\\u52bf\\uff1a\\r\\n\\r\\n1\\u3001\\u552f\\u4e00\\u4e00\\u4e2a\\u84b8\\u53d1\\u5668\\u7fc5\\u7247\\u4e0e\\u76d8\\u7ba1\\u540c\\u65f6\\u8fbe\\u523056\\u2103\\u4ee5\\u4e0a\\u9664\\u83cc\\uff0c\\u5b9e\\u6d4b\\u6700\\u9ad8\\u8d85\\u8fc760\\u2103\\uff0c\\u800c\\u884c\\u4e1a\\u53ea\\u80fd\\u505a\\u5230\\u84b8\\u53d1\\u5668\\u76d8\\u7ba1\\u768456\\u2103\\u3002\\r\\n\\r\\n2\\u3001\\u552f\\u4e00\\u4e00\\u4e2a\\u84b8\\u53d1\\u566856\\u2103\\u4ee5\\u4e0a\\u6e29\\u5ea6\\u6301\\u7eed\\u65f6\\u95f4\\u8d85\\u8fc730\\u5206\\u949f\\uff0c\\u6700\\u9ad8\\u8fbe\\u523060\\u5206\\u949f\\u3002\\u6309\\u7167\\u5b98\\u65b9\\u8bf4\\u6cd5\\uff1a\\u6e29\\u5ea6\\u8fbe\\u523056\\u2103\\u3001\\u6301\\u7eed30\\u5206\\u949f\\uff0c\\u53ef\\u4ee5\\u6709\\u6548\\u706d\\u6d3b\\u65b0\\u578b\\u51a0\\u72b6\\u75c5\\u6bd2\\u3002\\r\\n\\r\\n3\\u3001\\u552f\\u4e00\\u4e00\\u4e2a\\u62e5\\u6709\\u6d77\\u5916\\u4e13\\u5229\\u6388\\u6743\\uff0c\\u76ee\\u524d\\u9664\\u83cc\\u81ea\\u6e05\\u6d01\\u5df2\\u83b7\\u5f97\\u6b27\\u76df\\u3001\\u65e5\\u672c\\u3001\\u4fc4\\u7f57\\u65af\\u7b49\\u6d77\\u5916\\u591a\\u4e2a\\u56fd\\u5bb6\\u548c\\u5730\\u533a\\u7684\\u4e13\\u5229\\u6388\\u6743\\u3002\\r\\n\\r\\n\\u901a\\u8fc7\\u4ee5\\u4e0a3\\u5927\\u4f18\\u52bf\\uff0c\\u6d77\\u5c1456\\u5ea6C\\u9664\\u83cc\\u7a7a\\u8c03\\u8ba9\\u7528\\u6237\\u771f\\u6b63\\u4eab\\u53d7\\u5230\\u5065\\u5eb7\\u547c\\u5438\\u3002\\u57283\\u670813\\u65e519:00\\u4e0a\\u7ebf\\u768456\\u5ea6C\\u9664\\u83cc\\u7a7a\\u8c03\\u55e8\\u8d2d\\u76db\\u5178\\u4e2d\\uff0c\\u6d77\\u5c14\\u7a7a\\u8c03\\u7ebf\\u4e0a\\u4e3a\\u7528\\u6237\\u73b0\\u573a\\u6f14\\u793a56\\u5ea6C\\u300130\\u5206\\u949f\\u4ee5\\u4e0a\\u7684\\u7a7a\\u8c03\\u9664\\u83cc\\u5168\\u8fc7\\u7a0b\\u3002\",\"image_url\":\"\\/uploads\\/20200316\\/482d001b1243a9840fd6003e88392141.png\",\"click_count\":\"234\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584362658');
INSERT INTO `wgg_admin_log` VALUES ('27', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"14.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584362710');
INSERT INTO `wgg_admin_log` VALUES ('28', '1', 'admin', '/admin/web/cases/add?dialog=1', 'web 案例管理 添加', '{\"dialog\":\"1\",\"row\":{\"category_id\":\"1\",\"company_id\":\"8\",\"name\":\"\\u817e\\u8baf\\u65e0\\u5948\\u5411\\u82f9\\u679c\\u4f4e\\u5934\\uff0c\\u963f\\u91cc\\u7a81\\u7136\\u51b3\\u5b9a\\u52a9\\u63a8\\u534e\\u4e3a\\uff0c\\u5411\\u7f8e\\u5de8\\u5934\\u53d1\\u8d77\\u53cd\\u51fb\",\"keyword\":\"\\u817e\\u8baf\\u65e0\\u5948\\u5411\\u82f9\\u679c\\u4f4e\\u5934\",\"description\":\"\\u968f\\u7740\\u79fb\\u52a8\\u4e92\\u8054\\u7f51\\u7684\\u4e0d\\u65ad\\u53d1\\u5c55\\uff0c\\u6700\\u8fd1\\u8fd9\\u51e0\\u5e74\\u4e2d\\u56fd\\u7684\\u79fb\\u52a8\\u4e92\\u8054\\u7f51\\u5e02\\u573a\\u4e5f\\u53d1\\u5c55\\u5f97\\u6781\\u4e3a\\u8fc5\\u731b\\uff0c\\u5728\\u4e2d\\u56fd\\u8fd8\\u8bde\\u751f\\u4e86\\u4e0d\\u5c11\\u7684\\u79fb\\u52a8\\u4e92\\u8054\\u7f51\\u5de8\\u5934\\u516c\\u53f8\\uff0c\\u50cf\\u817e\\u8baf\\u3001\\u963f\\u91cc\\u5df4\\u5df4\\u3001\\u534e\\u4e3a\\u7b49\\u4f01\\u4e1a\\u90fd\\u662f\\u4e2d\\u56fd\\u5bb6\\u55bb\\u6237\\u6653\\u7684\\u4f01\\u4e1a\\uff0c\\u800c\\u8fd9\\u4e9b\\u5de8\\u5934\\u4f01\\u4e1a\\u7684\\u4e0d\\u65ad\\u53d1\\u5c55\\u4e5f\\u7ed9\\u6211\\u4eec\\u7684\\u751f\\u6d3b\\u5e26\\u6765\\u4e86\\u5f88\\u5927\\u7684\\u4fbf\\u5229\",\"content\":\"\\u4e0b\\u6587\\u8f6c\\u8f7d\\u81ea\\u4f5c\\u8005\\uff1a\\u5c0f\\u52c7\\u7684\\u79d1\\u6280\\u4e16\\u754c\\r\\n\\r\\n\\u70b9\\u51fb\\u5173\\u6ce8\\uff0c\\u6bcf\\u5929\\u7cbe\\u5f69\\u4e0d\\u65ad\\uff01\\r\\n\\r\\n\\u5bfc\\u8bfb\\uff1a\\u817e\\u8baf\\u65e0\\u5948\\u5411\\u82f9\\u679c\\u4f4e\\u5934\\uff0c\\u963f\\u91cc\\u7a81\\u7136\\u51b3\\u5b9a\\u52a9\\u63a8\\u534e\\u4e3a\\uff0c\\u5411\\u7f8e\\u5de8\\u5934\\u53d1\\u8d77\\u53cd\\u51fb\\uff01\\r\\n\\r\\n\\u968f\\u7740\\u79fb\\u52a8\\u4e92\\u8054\\u7f51\\u7684\\u4e0d\\u65ad\\u53d1\\u5c55\\uff0c\\u6700\\u8fd1\\u8fd9\\u51e0\\u5e74\\u4e2d\\u56fd\\u7684\\u79fb\\u52a8\\u4e92\\u8054\\u7f51\\u5e02\\u573a\\u4e5f\\u53d1\\u5c55\\u5f97\\u6781\\u4e3a\\u8fc5\\u731b\\uff0c\\u5728\\u4e2d\\u56fd\\u8fd8\\u8bde\\u751f\\u4e86\\u4e0d\\u5c11\\u7684\\u79fb\\u52a8\\u4e92\\u8054\\u7f51\\u5de8\\u5934\\u516c\\u53f8\\uff0c\\u50cf\\u817e\\u8baf\\u3001\\u963f\\u91cc\\u5df4\\u5df4\\u3001\\u534e\\u4e3a\\u7b49\\u4f01\\u4e1a\\u90fd\\u662f\\u4e2d\\u56fd\\u5bb6\\u55bb\\u6237\\u6653\\u7684\\u4f01\\u4e1a\\uff0c\\u800c\\u8fd9\\u4e9b\\u5de8\\u5934\\u4f01\\u4e1a\\u7684\\u4e0d\\u65ad\\u53d1\\u5c55\\u4e5f\\u7ed9\\u6211\\u4eec\\u7684\\u751f\\u6d3b\\u5e26\\u6765\\u4e86\\u5f88\\u5927\\u7684\\u4fbf\\u5229\\uff0c\\u540c\\u65f6\\u4e5f\\u6781\\u5927\\u5730\\u4fc3\\u8fdb\\u4e86\\u6211\\u56fd\\u7ecf\\u6d4e\\u7684\\u53d1\\u5c55\\uff1b\\u4f46\\u968f\\u7740\\u4e2d\\u56fd\\u79d1\\u6280\\u4f01\\u4e1a\\u7684\\u4e0d\\u65ad\\u53d1\\u5c55\\u548c\\u5d1b\\u8d77\\uff0c\\u4e5f\\u8ba9\\u4e0d\\u5c11\\u56fd\\u5916\\u4f01\\u4e1a\\u5f00\\u59cb\\u62c5\\u5fc3\\u8d77\\u4e2d\\u56fd\\u4f01\\u4e1a\\u7684\\u6311\\u6218\\u8d77\\u6765\\uff0c\\u5176\\u4e2d\\u5c31\\u5305\\u62ec\\u7f8e\\u56fd\\u7684\\u4e00\\u4e9b\\u79d1\\u6280\\u5de8\\u5934\\u4f01\\u4e1a\\uff01\\r\\n\\r\\n\",\"image_url\":\"\\/uploads\\/20200316\\/9e16d0ab27d6983fbd70fdd8cd37f394.png\",\"click_count\":\"234243\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584362715');
INSERT INTO `wgg_admin_log` VALUES ('29', '1', 'admin', '/admin/index/login?url=%2Fadmin', '登录', '{\"url\":\"\\/admin\",\"__token__\":\"030f7527e0aa0e93830f8b0098e563ee\",\"username\":\"admin\",\"captcha\":\"kxhu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584413301');
INSERT INTO `wgg_admin_log` VALUES ('30', '1', 'admin', '/admin/addon/install', '插件管理 安装', '{\"name\":\"simditor\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.5\",\"faversion\":\"1.0.0.20190705_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584414490');
INSERT INTO `wgg_admin_log` VALUES ('31', '1', 'admin', '/admin/addon/install', '插件管理 安装', '{\"name\":\"simditor\",\"force\":\"0\",\"uid\":\"15128\",\"token\":\"c9fc5196-b801-48d6-afc4-5357695db99c\",\"version\":\"1.0.5\",\"faversion\":\"1.0.0.20190705_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584414520');
INSERT INTO `wgg_admin_log` VALUES ('32', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584414521');
INSERT INTO `wgg_admin_log` VALUES ('33', '1', 'admin', '/admin/index/login?url=%2Fadmin%2Faddon%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/admin\\/addon?ref=addtabs\",\"__token__\":\"3f01139787c31ae1c7f5da2f645fea2c\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584414593');
INSERT INTO `wgg_admin_log` VALUES ('34', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"04.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584415727');
INSERT INTO `wgg_admin_log` VALUES ('35', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"10.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584415743');
INSERT INTO `wgg_admin_log` VALUES ('36', '1', 'admin', '/admin/web/product/add?dialog=1', 'web 产品管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u89c6\\u89c9\\u7ed3\\u7b97\\u7cfb\\u7edf\",\"logo_image\":\"\\/uploads\\/20200317\\/ef960bd3e4e3fd98424fbdec95cc3bae.png\",\"single_image\":\"\\/uploads\\/20200317\\/795dc97939a006fefa8194e31656447f.png\",\"util\":\"Ai\\u667a\\u80fd\\u7ed3\\u7b97|\\u83dc\\u54c1\\u8bc6\\u522b|\\u4eba\\u8138\\u8bc6\\u522b\\u652f\\u4ed8|\\u7cbe\\u51c6\\u5907\\u9910,\\u6709\\u91cf\\u6709\\u7ed3|\\u6570\\u636e\\u51c6\\u786e\\uff0c\\u64cd\\u4f5c\\u7b80\\u4fbf\",\"keyword\":\"Ai\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522b\",\"description\":\"Ai\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522bAi\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522b\",\"content\":\"<p>Ai\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522bAi\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522b<br><\\/p>\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584415873');
INSERT INTO `wgg_admin_log` VALUES ('37', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"05.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584415942');
INSERT INTO `wgg_admin_log` VALUES ('38', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"30.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584415954');
INSERT INTO `wgg_admin_log` VALUES ('39', '1', 'admin', '/admin/web/product/add?dialog=1', 'web 产品管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u5728\\u7ebf\\u8ba2\\u9910\\u7cfb\\u7edf\",\"logo_image\":\"\\/uploads\\/20200317\\/8d216ee6fa3c31baaa92f02f858b7727.png\",\"single_image\":\"\\/uploads\\/20200317\\/5c4f27e068b369adceb2c5f97bce2244.png\",\"util\":\"\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c|\\u8425\\u517b\\u5206\\u6790|\\u6d88\\u8d39\\u8bb0\\u5f55\\u67e5\\u8be2|\\u667a\\u80fd\\u53d6\\u9910|\\u83dc\\u54c1\\uff0c\\u83dc\\u8c31\\u7ba1\\u7406|\\u4eba\\u8138\\u6838\\u9500\\u8ba2\\u5355|\\u4eba\\u8138\\u4fe1\\u606f\\u91c7\\u96c6\",\"keyword\":\"\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c\",\"description\":\"\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c\",\"content\":\"<p>\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c<br><\\/p>\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584416074');
INSERT INTO `wgg_admin_log` VALUES ('40', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"06.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584416100');
INSERT INTO `wgg_admin_log` VALUES ('41', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"31.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584416131');
INSERT INTO `wgg_admin_log` VALUES ('42', '1', 'admin', '/admin/web/product/add?dialog=1', 'web 产品管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u65e0\\u611f\\u79f0\\u91cd\\u7cfb\\u7edf\",\"logo_image\":\"\\/uploads\\/20200317\\/42dac39557ce01c1b6acd694351aff2c.png\",\"single_image\":\"\\/uploads\\/20200317\\/5d8eb30892a5b4e0799a910c2390dcdb.png\",\"util\":\"\\u4e00\\u83dc\\u4e00\\u4ef7|\\u81ea\\u52a9\\u9009\\u53c2\\u4f53\\u9a8c|\\u4fc3\\u8fdb\\u5149\\u76d8\\u884c\\u52a8|\\u7cbe\\u7ec6\\u8fd0\\u8425\\u7ba1\\u7406|\\u964d\\u4f4e\\u4eba\\u529b\\u6210\\u672c|\\u667a\\u80fd\\u79f0\\u91cd\\u8ba1\\u7b97|\\u65e0\\u611f\\u652f\\u4ed8|\\u591a\\u7ef4\\u5ea6\\u6570\\u636e\\u8fd0\\u8425\\u5206\\u6790\",\"keyword\":\"\\u4e00\\u83dc\\u4e00\\u4ef7|\\u81ea\\u52a9\\u9009\\u53c2\\u4f53\\u9a8c|\\u4fc3\\u8fdb\\u5149\\u76d8\\u884c\\u52a8|\\u7cbe\\u7ec6\\u8fd0\\u8425\\u7ba1\\u7406|\\u964d\\u4f4e\\u4eba\\u529b\\u6210\\u672c|\\u667a\\u80fd\\u79f0\\u91cd\\u8ba1\\u7b97|\\u65e0\\u611f\\u652f\\u4ed8|\\u591a\\u7ef4\\u5ea6\\u6570\\u636e\\u8fd0\\u8425\\u5206\\u6790\",\"description\":\"\\u4e00\\u83dc\\u4e00\\u4ef7|\\u81ea\\u52a9\\u9009\\u53c2\\u4f53\\u9a8c|\\u4fc3\\u8fdb\\u5149\\u76d8\\u884c\\u52a8|\\u7cbe\\u7ec6\\u8fd0\\u8425\\u7ba1\\u7406|\\u964d\\u4f4e\\u4eba\\u529b\\u6210\\u672c|\\u667a\\u80fd\\u79f0\\u91cd\\u8ba1\\u7b97|\\u65e0\\u611f\\u652f\\u4ed8|\\u591a\\u7ef4\\u5ea6\\u6570\\u636e\\u8fd0\\u8425\\u5206\\u6790\",\"content\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584416246');
INSERT INTO `wgg_admin_log` VALUES ('43', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"07.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584416276');
INSERT INTO `wgg_admin_log` VALUES ('44', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"32.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584416283');
INSERT INTO `wgg_admin_log` VALUES ('45', '1', 'admin', '/admin/web/product/add?dialog=1', 'web 产品管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u667a\\u80fd\\u4fdd\\u6e29\\u9009\\u53c2\\u67dc\",\"logo_image\":\"\\/uploads\\/20200317\\/a537da8c3842b51f8965eacf120d7da7.png\",\"single_image\":\"\\/uploads\\/20200317\\/fbbc82da140a0337eb4010c2b6c70b3d.png\",\"util\":\"\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a\",\"keyword\":\"\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a\",\"description\":\"\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a\",\"content\":\"<p>\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a<br><\\/p>\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584416337');
INSERT INTO `wgg_admin_log` VALUES ('46', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"01.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584418307');
INSERT INTO `wgg_admin_log` VALUES ('47', '1', 'admin', '/admin/web/solution/add?dialog=1', 'web 解决方案管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u667a\\u6167\\u98df\\u5802\",\"logo_image\":\"\\/uploads\\/20200317\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"single_image\":\"\\/uploads\\/20200317\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"keyword\":\"\\u667a\\u6167\\u98df\\u5802\",\"description\":\"\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\",\"content\":\"<p>\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802<br><\\/p>\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584418333');
INSERT INTO `wgg_admin_log` VALUES ('48', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"004.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584428929');
INSERT INTO `wgg_admin_log` VALUES ('49', '1', 'admin', '/admin/web/product/edit/ids/11?dialog=1', 'web 产品管理 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u667a\\u80fd\\u4fdd\\u6e29\\u9009\\u53c2\\u67dc\",\"logo_image\":\"\\/uploads\\/20200317\\/a537da8c3842b51f8965eacf120d7da7.png\",\"single_image\":\"\\/uploads\\/20200317\\/247abaa200be7d90be94e98e35b9a372.png\",\"util\":\"\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a\",\"keyword\":\"\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a\",\"description\":\"\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a\",\"content\":\"<p>\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a<br><\\/p>\"},\"ids\":\"11\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584428934');
INSERT INTO `wgg_admin_log` VALUES ('50', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"003.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584428946');
INSERT INTO `wgg_admin_log` VALUES ('51', '1', 'admin', '/admin/web/product/edit/ids/10?dialog=1', 'web 产品管理 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u65e0\\u611f\\u79f0\\u91cd\\u7cfb\\u7edf\",\"logo_image\":\"\\/uploads\\/20200317\\/42dac39557ce01c1b6acd694351aff2c.png\",\"single_image\":\"\\/uploads\\/20200317\\/99c394998d7822eaad8f891fd38bda06.png\",\"util\":\"\\u4e00\\u83dc\\u4e00\\u4ef7|\\u81ea\\u52a9\\u9009\\u53c2\\u4f53\\u9a8c|\\u4fc3\\u8fdb\\u5149\\u76d8\\u884c\\u52a8|\\u7cbe\\u7ec6\\u8fd0\\u8425\\u7ba1\\u7406|\\u964d\\u4f4e\\u4eba\\u529b\\u6210\\u672c|\\u667a\\u80fd\\u79f0\\u91cd\\u8ba1\\u7b97|\\u65e0\\u611f\\u652f\\u4ed8|\\u591a\\u7ef4\\u5ea6\\u6570\\u636e\\u8fd0\\u8425\\u5206\\u6790\",\"keyword\":\"\\u4e00\\u83dc\\u4e00\\u4ef7|\\u81ea\\u52a9\\u9009\\u53c2\\u4f53\\u9a8c|\\u4fc3\\u8fdb\\u5149\\u76d8\\u884c\\u52a8|\\u7cbe\\u7ec6\\u8fd0\\u8425\\u7ba1\\u7406|\\u964d\\u4f4e\\u4eba\\u529b\\u6210\\u672c|\\u667a\\u80fd\\u79f0\\u91cd\\u8ba1\\u7b97|\\u65e0\\u611f\\u652f\\u4ed8|\\u591a\\u7ef4\\u5ea6\\u6570\\u636e\\u8fd0\\u8425\\u5206\\u6790\",\"description\":\"\\u4e00\\u83dc\\u4e00\\u4ef7|\\u81ea\\u52a9\\u9009\\u53c2\\u4f53\\u9a8c|\\u4fc3\\u8fdb\\u5149\\u76d8\\u884c\\u52a8|\\u7cbe\\u7ec6\\u8fd0\\u8425\\u7ba1\\u7406|\\u964d\\u4f4e\\u4eba\\u529b\\u6210\\u672c|\\u667a\\u80fd\\u79f0\\u91cd\\u8ba1\\u7b97|\\u65e0\\u611f\\u652f\\u4ed8|\\u591a\\u7ef4\\u5ea6\\u6570\\u636e\\u8fd0\\u8425\\u5206\\u6790\",\"content\":\"\"},\"ids\":\"10\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584428949');
INSERT INTO `wgg_admin_log` VALUES ('52', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"002.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584428963');
INSERT INTO `wgg_admin_log` VALUES ('53', '1', 'admin', '/admin/web/product/edit/ids/9?dialog=1', 'web 产品管理 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u5728\\u7ebf\\u8ba2\\u9910\\u7cfb\\u7edf\",\"logo_image\":\"\\/uploads\\/20200317\\/8d216ee6fa3c31baaa92f02f858b7727.png\",\"single_image\":\"\\/uploads\\/20200317\\/fb62e4ff1639d97fb26dfd602cf98d52.png\",\"util\":\"\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c|\\u8425\\u517b\\u5206\\u6790|\\u6d88\\u8d39\\u8bb0\\u5f55\\u67e5\\u8be2|\\u667a\\u80fd\\u53d6\\u9910|\\u83dc\\u54c1\\uff0c\\u83dc\\u8c31\\u7ba1\\u7406|\\u4eba\\u8138\\u6838\\u9500\\u8ba2\\u5355|\\u4eba\\u8138\\u4fe1\\u606f\\u91c7\\u96c6\",\"keyword\":\"\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c\",\"description\":\"\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c\",\"content\":\"<p>\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c<br><\\/p>\"},\"ids\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584428965');
INSERT INTO `wgg_admin_log` VALUES ('54', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"001.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584428976');
INSERT INTO `wgg_admin_log` VALUES ('55', '1', 'admin', '/admin/web/product/edit/ids/8?dialog=1', 'web 产品管理 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u89c6\\u89c9\\u7ed3\\u7b97\\u7cfb\\u7edf\",\"logo_image\":\"\\/uploads\\/20200317\\/ef960bd3e4e3fd98424fbdec95cc3bae.png\",\"single_image\":\"\\/uploads\\/20200317\\/b816eb071b961494d39232109201eb79.png\",\"util\":\"Ai\\u667a\\u80fd\\u7ed3\\u7b97|\\u83dc\\u54c1\\u8bc6\\u522b|\\u4eba\\u8138\\u8bc6\\u522b\\u652f\\u4ed8|\\u7cbe\\u51c6\\u5907\\u9910,\\u6709\\u91cf\\u6709\\u7ed3|\\u6570\\u636e\\u51c6\\u786e\\uff0c\\u64cd\\u4f5c\\u7b80\\u4fbf\",\"keyword\":\"Ai\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522b\",\"description\":\"Ai\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522bAi\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522b\",\"content\":\"<p>Ai\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522bAi\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522b<br><\\/p>\"},\"ids\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584428979');
INSERT INTO `wgg_admin_log` VALUES ('56', '1', 'admin', '/admin/web/banner/add?dialog=1', 'web banner管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"xinwein1\",\"image_url\":\"\\/uploads\\/20200316\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"group\":\"5\",\"jump_url\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584432129');
INSERT INTO `wgg_admin_log` VALUES ('57', '1', 'admin', '/admin/web/banner/add?dialog=1', 'web banner管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"anli1\",\"image_url\":\"\\/uploads\\/20200316\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"group\":\"4\",\"jump_url\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584440521');
INSERT INTO `wgg_admin_log` VALUES ('58', '1', 'admin', '/admin/index/login?url=%2Fadmin', '登录', '{\"url\":\"\\/admin\",\"__token__\":\"af3fefb14a2c47b102f1bdc4a7a28272\",\"username\":\"admin\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584499157');
INSERT INTO `wgg_admin_log` VALUES ('59', '1', 'admin', '/admin/general.config/edit', '常规管理 系统配置 编辑', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584507301');
INSERT INTO `wgg_admin_log` VALUES ('60', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"001.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584510331');
INSERT INTO `wgg_admin_log` VALUES ('61', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"001.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584511495');
INSERT INTO `wgg_admin_log` VALUES ('62', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"002.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584511500');
INSERT INTO `wgg_admin_log` VALUES ('63', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"003.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584511504');
INSERT INTO `wgg_admin_log` VALUES ('64', '1', 'admin', '/admin/web/config/add?dialog=1', 'web 网站配置管理 添加', '{\"dialog\":\"1\",\"row\":{\"company_description\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\\uff0c\\u6210\\u7acb\\u4e8e2016\\u5e744\\u6708\\uff0c\\u603b\\u90e8\\u4f4d\\u4e8e\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\uff0c\\u662f\\u4e00\\u5bb6\\u6280\\u672f\\u9a71\\u52a8\\u578b\\u516c\\u53f8\\uff0c\\u81f4\\u529b\\u4e8e\\u7528\\u56fe\\u50cf\\u8bc6\\u522b\\u7b49\\u6280\\u672f\\u53ca\\u76f8\\u5173\\u4ea7\\u54c1\\u4e3a\\u5ba2\\u6237\\u63d0\\u4f9b\\u66f4\\u4fbf\\u6377\\u4f18\\u8d28\\u7684\\u670d\\u52a1 \\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\\uff0c\\u6210\\u7acb\\u4e8e2016\\u5e744\\u6708\\uff0c\\u603b\\u90e8\\u4f4d\\u4e8e\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\uff0c\\u662f\\u4e00\\u5bb6\\u6280\\u672f\\u9a71\\u52a8\\u578b\\u516c\\u53f8\\uff0c\\u81f4\\u529b\\u4e8e\\u7528\\u56fe\\u50cf\\u8bc6\\u522b\\u7b49\\u6280\\u672f\\u53ca\\u76f8\\u5173\\u4ea7\\u54c1\\u4e3a\\u5ba2\\u6237\\u63d0\\u4f9b\\u66f4\\u4fbf\\u6377\\u4f18\\u8d28\\u7684\\u670d\\u52a1 \\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\\uff0c\\u6210\\u7acb\\u4e8e2016\\u5e744\\u6708\\uff0c\\u603b\\u90e8\\u4f4d\\u4e8e\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\uff0c\\u662f\\u4e00\\u5bb6\\u6280\\u672f\\u9a71\\u52a8\\u578b\\u516c\\u53f8\\uff0c\\u81f4\\u529b\\u4e8e\\u7528\\u56fe\\u50cf\\u8bc6\\u522b\",\"company_spirit\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"company_value_view\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"company_manage_theory\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"company_dream\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"image_url\":\"\\/uploads\\/20200318\\/b816eb071b961494d39232109201eb79.png,\\/uploads\\/20200318\\/fb62e4ff1639d97fb26dfd602cf98d52.png,\\/uploads\\/20200318\\/99c394998d7822eaad8f891fd38bda06.png\",\"contact_phone\":\"020-00000000\",\"contact_mobile\":\"18888888888\",\"contact_people\":\"\\u9648\\u5148\\u751f\",\"company_email\":\"ch@wggai.com\",\"company_address\":\"\\u5e7f\\u5dde\\u756a\\u79ba\",\"company_address_long\":\"112\",\"company_address_lat\":\"1212\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584511578');
INSERT INTO `wgg_admin_log` VALUES ('65', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"\\u89e3\\u51b3\\u65b9\\u6848.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584516485');
INSERT INTO `wgg_admin_log` VALUES ('66', '1', 'admin', '/admin/web/banner/add?dialog=1', 'web banner管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"women\",\"image_url\":\"\\/uploads\\/20200318\\/66199e6b3af7d11c73c512c15b27b94f.png\",\"group\":\"6\",\"jump_url\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584516490');
INSERT INTO `wgg_admin_log` VALUES ('67', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"logo.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584533652');
INSERT INTO `wgg_admin_log` VALUES ('68', '1', 'admin', '/admin/web/config/add?dialog=1', 'web 网站配置管理 添加', '{\"dialog\":\"1\",\"row\":{\"contact_phone\":\"020-00000000\",\"contact_mobile\":\"18888888888\",\"contact_people\":\"\\u9648\\u5148\\u751f\",\"company_email\":\"ch@wggai.com\",\"company_address\":\"\\u5e7f\\u5dde\\u756a\\u79ba\",\"company_address_long\":\"112\",\"company_address_lat\":\"1212\",\"company_logo_image\":\"\\/uploads\\/20200318\\/89ada207657d9fd1eb1a8a63ead855fd.png\",\"company_copyright\":\"\",\"company_description\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\\uff0c\\u6210\\u7acb\\u4e8e2016\\u5e744\\u6708\\uff0c\\u603b\\u90e8\\u4f4d\\u4e8e\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\uff0c\\u662f\\u4e00\\u5bb6\\u6280\\u672f\\u9a71\\u52a8\\u578b\\u516c\\u53f8\\uff0c\\u81f4\\u529b\\u4e8e\\u7528\\u56fe\\u50cf\\u8bc6\\u522b\\u7b49\\u6280\\u672f\\u53ca\\u76f8\\u5173\\u4ea7\\u54c1\\u4e3a\\u5ba2\\u6237\\u63d0\\u4f9b\\u66f4\\u4fbf\\u6377\\u4f18\\u8d28\\u7684\\u670d\\u52a1 \\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\\uff0c\\u6210\\u7acb\\u4e8e2016\\u5e744\\u6708\\uff0c\\u603b\\u90e8\\u4f4d\\u4e8e\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\uff0c\\u662f\\u4e00\\u5bb6\\u6280\\u672f\\u9a71\\u52a8\\u578b\\u516c\\u53f8\\uff0c\\u81f4\\u529b\\u4e8e\\u7528\\u56fe\\u50cf\\u8bc6\\u522b\\u7b49\\u6280\\u672f\\u53ca\\u76f8\\u5173\\u4ea7\\u54c1\\u4e3a\\u5ba2\\u6237\\u63d0\\u4f9b\\u66f4\\u4fbf\\u6377\\u4f18\\u8d28\\u7684\\u670d\\u52a1 \\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\\uff0c\\u6210\\u7acb\\u4e8e2016\\u5e744\\u6708\\uff0c\\u603b\\u90e8\\u4f4d\\u4e8e\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\uff0c\\u662f\\u4e00\\u5bb6\\u6280\\u672f\\u9a71\\u52a8\\u578b\\u516c\\u53f8\\uff0c\\u81f4\\u529b\\u4e8e\\u7528\\u56fe\\u50cf\\u8bc6\\u522b\",\"company_spirit\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"company_value_view\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"company_manage_theory\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"company_dream\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"image_url\":\"\\/uploads\\/20200318\\/b816eb071b961494d39232109201eb79.png,\\/uploads\\/20200318\\/fb62e4ff1639d97fb26dfd602cf98d52.png,\\/uploads\\/20200318\\/99c394998d7822eaad8f891fd38bda06.png\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584533686');
INSERT INTO `wgg_admin_log` VALUES ('69', '1', 'admin', '/admin/web/config/add?dialog=1', 'web 网站配置管理 添加', '{\"dialog\":\"1\",\"row\":{\"contact_phone\":\"020-00000000\",\"contact_mobile\":\"18888888888\",\"contact_people\":\"\\u9648\\u5148\\u751f\",\"company_email\":\"ch@wggai.com\",\"company_address\":\"\\u5e7f\\u5dde\\u756a\\u79ba\",\"company_address_long\":\"112\",\"company_address_lat\":\"1212\",\"company_logo_image\":\"\\/uploads\\/20200318\\/89ada207657d9fd1eb1a8a63ead855fd.png\",\"company_copyright\":\"Copyright \\u00a9 2016-2020 \\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8 \\u7248\\u6743\\u6240\\u6709 \\u7ca4ICP\\u590716092643\\u53f7 - 1\",\"company_description\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\\uff0c\\u6210\\u7acb\\u4e8e2016\\u5e744\\u6708\\uff0c\\u603b\\u90e8\\u4f4d\\u4e8e\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\uff0c\\u662f\\u4e00\\u5bb6\\u6280\\u672f\\u9a71\\u52a8\\u578b\\u516c\\u53f8\\uff0c\\u81f4\\u529b\\u4e8e\\u7528\\u56fe\\u50cf\\u8bc6\\u522b\\u7b49\\u6280\\u672f\\u53ca\\u76f8\\u5173\\u4ea7\\u54c1\\u4e3a\\u5ba2\\u6237\\u63d0\\u4f9b\\u66f4\\u4fbf\\u6377\\u4f18\\u8d28\\u7684\\u670d\\u52a1 \\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\\uff0c\\u6210\\u7acb\\u4e8e2016\\u5e744\\u6708\\uff0c\\u603b\\u90e8\\u4f4d\\u4e8e\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\uff0c\\u662f\\u4e00\\u5bb6\\u6280\\u672f\\u9a71\\u52a8\\u578b\\u516c\\u53f8\\uff0c\\u81f4\\u529b\\u4e8e\\u7528\\u56fe\\u50cf\\u8bc6\\u522b\\u7b49\\u6280\\u672f\\u53ca\\u76f8\\u5173\\u4ea7\\u54c1\\u4e3a\\u5ba2\\u6237\\u63d0\\u4f9b\\u66f4\\u4fbf\\u6377\\u4f18\\u8d28\\u7684\\u670d\\u52a1 \\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\\uff0c\\u6210\\u7acb\\u4e8e2016\\u5e744\\u6708\\uff0c\\u603b\\u90e8\\u4f4d\\u4e8e\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\uff0c\\u662f\\u4e00\\u5bb6\\u6280\\u672f\\u9a71\\u52a8\\u578b\\u516c\\u53f8\\uff0c\\u81f4\\u529b\\u4e8e\\u7528\\u56fe\\u50cf\\u8bc6\\u522b\",\"company_spirit\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"company_value_view\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"company_manage_theory\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"company_dream\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"image_url\":\"\\/uploads\\/20200318\\/b816eb071b961494d39232109201eb79.png,\\/uploads\\/20200318\\/fb62e4ff1639d97fb26dfd602cf98d52.png,\\/uploads\\/20200318\\/99c394998d7822eaad8f891fd38bda06.png\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584533717');
INSERT INTO `wgg_admin_log` VALUES ('70', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"wechat.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584533899');
INSERT INTO `wgg_admin_log` VALUES ('71', '1', 'admin', '/admin/web/config/add?dialog=1', 'web 网站配置管理 添加', '{\"dialog\":\"1\",\"row\":{\"contact_phone\":\"020-00000000\",\"contact_mobile\":\"18888888888\",\"contact_people\":\"\\u9648\\u5148\\u751f\",\"company_email\":\"ch@wggai.com\",\"company_address\":\"\\u5e7f\\u5dde\\u756a\\u79ba\",\"company_address_long\":\"112\",\"company_address_lat\":\"1212\",\"company_logo_image\":\"\\/uploads\\/20200318\\/89ada207657d9fd1eb1a8a63ead855fd.png\",\"company_copyright\":\"Copyright \\u00a9 2016-2020 \\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8 \\u7248\\u6743\\u6240\\u6709 \\u7ca4ICP\\u590716092643\\u53f7 - 1\",\"company_wechat_image\":\"\\/uploads\\/20200318\\/15aedbdbe663663564e5c68b850943f8.png\",\"company_description\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\\uff0c\\u6210\\u7acb\\u4e8e2016\\u5e744\\u6708\\uff0c\\u603b\\u90e8\\u4f4d\\u4e8e\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\uff0c\\u662f\\u4e00\\u5bb6\\u6280\\u672f\\u9a71\\u52a8\\u578b\\u516c\\u53f8\\uff0c\\u81f4\\u529b\\u4e8e\\u7528\\u56fe\\u50cf\\u8bc6\\u522b\\u7b49\\u6280\\u672f\\u53ca\\u76f8\\u5173\\u4ea7\\u54c1\\u4e3a\\u5ba2\\u6237\\u63d0\\u4f9b\\u66f4\\u4fbf\\u6377\\u4f18\\u8d28\\u7684\\u670d\\u52a1 \\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\\uff0c\\u6210\\u7acb\\u4e8e2016\\u5e744\\u6708\\uff0c\\u603b\\u90e8\\u4f4d\\u4e8e\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\uff0c\\u662f\\u4e00\\u5bb6\\u6280\\u672f\\u9a71\\u52a8\\u578b\\u516c\\u53f8\\uff0c\\u81f4\\u529b\\u4e8e\\u7528\\u56fe\\u50cf\\u8bc6\\u522b\\u7b49\\u6280\\u672f\\u53ca\\u76f8\\u5173\\u4ea7\\u54c1\\u4e3a\\u5ba2\\u6237\\u63d0\\u4f9b\\u66f4\\u4fbf\\u6377\\u4f18\\u8d28\\u7684\\u670d\\u52a1 \\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\\uff0c\\u6210\\u7acb\\u4e8e2016\\u5e744\\u6708\\uff0c\\u603b\\u90e8\\u4f4d\\u4e8e\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\uff0c\\u662f\\u4e00\\u5bb6\\u6280\\u672f\\u9a71\\u52a8\\u578b\\u516c\\u53f8\\uff0c\\u81f4\\u529b\\u4e8e\\u7528\\u56fe\\u50cf\\u8bc6\\u522b\",\"company_spirit\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"company_value_view\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"company_manage_theory\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"company_dream\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"image_url\":\"\\/uploads\\/20200318\\/b816eb071b961494d39232109201eb79.png,\\/uploads\\/20200318\\/fb62e4ff1639d97fb26dfd602cf98d52.png,\\/uploads\\/20200318\\/99c394998d7822eaad8f891fd38bda06.png\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584533902');
INSERT INTO `wgg_admin_log` VALUES ('72', '1', 'admin', '/admin/web/config/seoadd?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"seo_index_title\":\"\\u9996\\u9875title\",\"seo_index_description\":\"\\u9996\\u9875description\",\"seo_index_keyword\":\"\\u9996\\u9875keyword\",\"seo_solution_title\":\"\\u89e3\\u51b3\\u65b9\\u6848title\",\"seo_solution_description\":\"\\u89e3\\u51b3\\u65b9\\u6848description\",\"seo_solution_keyword\":\"\\u89e3\\u51b3\\u65b9\\u6848keyword\",\"seo_product_title\":\"\\u4ea7\\u54c1\\u4e2d\\u5fc3title\",\"seo_product_description\":\"\\u4ea7\\u54c1\\u4e2d\\u5fc3description\",\"seo_product_keyword\":\"\\u4ea7\\u54c1\\u4e2d\\u5fc3keyword\",\"seo_customcase_title\":\"\\u5ba2\\u6237\\u6848\\u4f8btitle\",\"seo_customcase_description\":\"\\u5ba2\\u6237\\u6848\\u4f8bdescription\",\"seo_customcase_keyword\":\"\\u5ba2\\u6237\\u6848\\u4f8bkeyword\",\"seo_news_title\":\"\\u65b0\\u95fb\\u8d44\\u8baftitle\",\"seo_news_description\":\"\\u65b0\\u95fb\\u8d44\\u8bafdescription\",\"seo_news_keyword\":\"\\u65b0\\u95fb\\u8d44\\u8bafkeyword\",\"seo_aboutus_title\":\"\\u5173\\u4e8e\\u6211\\u4eectitle\",\"seo_aboutus_description\":\"\\u5173\\u4e8e\\u6211\\u4eecdescription\",\"seo_aboutus_keyword\":\"\\u5173\\u4e8e\\u6211\\u4eeckeyword\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584537864');
INSERT INTO `wgg_admin_log` VALUES ('73', '1', 'admin', '/admin/web/config/seoadd?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"seo_index_title\":\"\\u9996\\u9875\",\"seo_index_description\":\"\\u9996\\u9875description\",\"seo_index_keyword\":\"\\u9996\\u9875keyword\",\"seo_solution_title\":\"\\u89e3\\u51b3\\u65b9\\u6848title\",\"seo_solution_description\":\"\\u89e3\\u51b3\\u65b9\\u6848description\",\"seo_solution_keyword\":\"\\u89e3\\u51b3\\u65b9\\u6848keyword\",\"seo_product_title\":\"\\u4ea7\\u54c1\\u4e2d\\u5fc3title\",\"seo_product_description\":\"\\u4ea7\\u54c1\\u4e2d\\u5fc3description\",\"seo_product_keyword\":\"\\u4ea7\\u54c1\\u4e2d\\u5fc3keyword\",\"seo_customcase_title\":\"\\u5ba2\\u6237\\u6848\\u4f8btitle\",\"seo_customcase_description\":\"\\u5ba2\\u6237\\u6848\\u4f8bdescription\",\"seo_customcase_keyword\":\"\\u5ba2\\u6237\\u6848\\u4f8bkeyword\",\"seo_news_title\":\"\\u65b0\\u95fb\\u8d44\\u8baftitle\",\"seo_news_description\":\"\\u65b0\\u95fb\\u8d44\\u8bafdescription\",\"seo_news_keyword\":\"\\u65b0\\u95fb\\u8d44\\u8bafkeyword\",\"seo_aboutus_title\":\"\\u5173\\u4e8e\\u6211\\u4eectitle\",\"seo_aboutus_description\":\"\\u5173\\u4e8e\\u6211\\u4eecdescription\",\"seo_aboutus_keyword\":\"\\u5173\\u4e8e\\u6211\\u4eeckeyword\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584537886');
INSERT INTO `wgg_admin_log` VALUES ('74', '1', 'admin', '/admin/web/product/edit/ids/11?dialog=1', 'web 产品管理 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u667a\\u80fd\\u4fdd\\u6e29\\u9009\\u53c2\\u67dc\",\"logo_image\":\"\\/uploads\\/20200317\\/a537da8c3842b51f8965eacf120d7da7.png\",\"single_image\":\"\\/uploads\\/20200317\\/247abaa200be7d90be94e98e35b9a372.png\",\"banner_image\":\"\\/uploads\\/20200316\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"util\":\"\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a\",\"keyword\":\"\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a\",\"description\":\"\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a\",\"content\":\"<p>\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a<br><\\/p>\"},\"ids\":\"11\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584586091');
INSERT INTO `wgg_admin_log` VALUES ('75', '1', 'admin', '/admin/web/product/edit/ids/10?dialog=1', 'web 产品管理 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u65e0\\u611f\\u79f0\\u91cd\\u7cfb\\u7edf\",\"logo_image\":\"\\/uploads\\/20200317\\/42dac39557ce01c1b6acd694351aff2c.png\",\"single_image\":\"\\/uploads\\/20200317\\/99c394998d7822eaad8f891fd38bda06.png\",\"banner_image\":\"\\/uploads\\/20200316\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"util\":\"\\u4e00\\u83dc\\u4e00\\u4ef7|\\u81ea\\u52a9\\u9009\\u53c2\\u4f53\\u9a8c|\\u4fc3\\u8fdb\\u5149\\u76d8\\u884c\\u52a8|\\u7cbe\\u7ec6\\u8fd0\\u8425\\u7ba1\\u7406|\\u964d\\u4f4e\\u4eba\\u529b\\u6210\\u672c|\\u667a\\u80fd\\u79f0\\u91cd\\u8ba1\\u7b97|\\u65e0\\u611f\\u652f\\u4ed8|\\u591a\\u7ef4\\u5ea6\\u6570\\u636e\\u8fd0\\u8425\\u5206\\u6790\",\"keyword\":\"\\u4e00\\u83dc\\u4e00\\u4ef7|\\u81ea\\u52a9\\u9009\\u53c2\\u4f53\\u9a8c|\\u4fc3\\u8fdb\\u5149\\u76d8\\u884c\\u52a8|\\u7cbe\\u7ec6\\u8fd0\\u8425\\u7ba1\\u7406|\\u964d\\u4f4e\\u4eba\\u529b\\u6210\\u672c|\\u667a\\u80fd\\u79f0\\u91cd\\u8ba1\\u7b97|\\u65e0\\u611f\\u652f\\u4ed8|\\u591a\\u7ef4\\u5ea6\\u6570\\u636e\\u8fd0\\u8425\\u5206\\u6790\",\"description\":\"\\u4e00\\u83dc\\u4e00\\u4ef7|\\u81ea\\u52a9\\u9009\\u53c2\\u4f53\\u9a8c|\\u4fc3\\u8fdb\\u5149\\u76d8\\u884c\\u52a8|\\u7cbe\\u7ec6\\u8fd0\\u8425\\u7ba1\\u7406|\\u964d\\u4f4e\\u4eba\\u529b\\u6210\\u672c|\\u667a\\u80fd\\u79f0\\u91cd\\u8ba1\\u7b97|\\u65e0\\u611f\\u652f\\u4ed8|\\u591a\\u7ef4\\u5ea6\\u6570\\u636e\\u8fd0\\u8425\\u5206\\u6790\",\"content\":\"<p>werwrwerew<\\/p>\"},\"ids\":\"10\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584586158');
INSERT INTO `wgg_admin_log` VALUES ('76', '1', 'admin', '/admin/web/product/edit/ids/9?dialog=1', 'web 产品管理 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u5728\\u7ebf\\u8ba2\\u9910\\u7cfb\\u7edf\",\"logo_image\":\"\\/uploads\\/20200317\\/8d216ee6fa3c31baaa92f02f858b7727.png\",\"single_image\":\"\\/uploads\\/20200317\\/fb62e4ff1639d97fb26dfd602cf98d52.png\",\"banner_image\":\"\\/uploads\\/20200316\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"util\":\"\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c|\\u8425\\u517b\\u5206\\u6790|\\u6d88\\u8d39\\u8bb0\\u5f55\\u67e5\\u8be2|\\u667a\\u80fd\\u53d6\\u9910|\\u83dc\\u54c1\\uff0c\\u83dc\\u8c31\\u7ba1\\u7406|\\u4eba\\u8138\\u6838\\u9500\\u8ba2\\u5355|\\u4eba\\u8138\\u4fe1\\u606f\\u91c7\\u96c6\",\"keyword\":\"\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c\",\"description\":\"\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c\",\"content\":\"<p>\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c<br><\\/p>\"},\"ids\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584586182');
INSERT INTO `wgg_admin_log` VALUES ('77', '1', 'admin', '/admin/web/product/edit/ids/8?dialog=1', 'web 产品管理 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u89c6\\u89c9\\u7ed3\\u7b97\\u7cfb\\u7edf\",\"logo_image\":\"\\/uploads\\/20200317\\/ef960bd3e4e3fd98424fbdec95cc3bae.png\",\"single_image\":\"\\/uploads\\/20200317\\/b816eb071b961494d39232109201eb79.png\",\"banner_image\":\"\\/uploads\\/20200316\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"util\":\"Ai\\u667a\\u80fd\\u7ed3\\u7b97|\\u83dc\\u54c1\\u8bc6\\u522b|\\u4eba\\u8138\\u8bc6\\u522b\\u652f\\u4ed8|\\u7cbe\\u51c6\\u5907\\u9910,\\u6709\\u91cf\\u6709\\u7ed3|\\u6570\\u636e\\u51c6\\u786e\\uff0c\\u64cd\\u4f5c\\u7b80\\u4fbf\",\"keyword\":\"Ai\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522b\",\"description\":\"Ai\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522bAi\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522b\",\"content\":\"<p>Ai\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522bAi\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522b<br><\\/p>\"},\"ids\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584586210');
INSERT INTO `wgg_admin_log` VALUES ('78', '1', 'admin', '/admin/web/solution/edit/ids/15?dialog=1', 'web 解决方案管理 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u81ea\\u52a9\\u9910\",\"logo_image\":\"\\/uploads\\/20200317\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"single_image\":\"\\/uploads\\/20200317\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"banner_image\":\"\\/uploads\\/20200317\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"keyword\":\"\\u81ea\\u52a9\\u9910\",\"description\":\"\\u81ea\\u52a9\\u9910\",\"content\":\"\\u81ea\\u52a9\\u9910\"},\"ids\":\"15\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584586250');
INSERT INTO `wgg_admin_log` VALUES ('79', '1', 'admin', '/admin/web/solution/edit/ids/14?dialog=1', 'web 解决方案管理 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u9884\\u5b9a\\u5957\\u53d6\\u9910\",\"logo_image\":\"\\/uploads\\/20200317\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"single_image\":\"\\/uploads\\/20200317\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"banner_image\":\"\\/uploads\\/20200317\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"keyword\":\"\\u9884\\u5b9a\\u5957\\u53d6\\u9910\",\"description\":\"\\u9884\\u5b9a\\u5957\\u53d6\\u9910\",\"content\":\"\\u9884\\u5b9a\\u5957\\u53d6\\u9910\"},\"ids\":\"14\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584586264');
INSERT INTO `wgg_admin_log` VALUES ('80', '1', 'admin', '/admin/web/solution/edit/ids/13?dialog=1', 'web 解决方案管理 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u81ea\\u9009\\u9910\",\"logo_image\":\"\\/uploads\\/20200317\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"single_image\":\"\\/uploads\\/20200317\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"banner_image\":\"\\/uploads\\/20200317\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"keyword\":\"\\u81ea\\u9009\\u9910\",\"description\":\"\\u81ea\\u9009\\u9910\",\"content\":\"\\u81ea\\u9009\\u9910\"},\"ids\":\"13\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584586277');
INSERT INTO `wgg_admin_log` VALUES ('81', '1', 'admin', '/admin/web/solution/edit/ids/12?dialog=1', 'web 解决方案管理 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u667a\\u6167\\u98df\\u5802\",\"logo_image\":\"\\/uploads\\/20200317\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"single_image\":\"\\/uploads\\/20200317\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"banner_image\":\"\\/uploads\\/20200317\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"keyword\":\"\\u667a\\u6167\\u98df\\u5802\",\"description\":\"\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\",\"content\":\"<p>\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802\\u667a\\u6167\\u98df\\u5802<br><\\/p>\"},\"ids\":\"12\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584586290');
INSERT INTO `wgg_admin_log` VALUES ('82', '1', 'admin', '/admin/web/config/add?dialog=1', 'web 网站配置管理 添加', '{\"dialog\":\"1\",\"row\":{\"contact_phone\":\"020-00000000\",\"contact_mobile\":\"18888888888\",\"contact_people\":\"\\u9648\\u5148\\u751f\",\"company_email\":\"ch@wggai.com\",\"company_address\":\"\\u5e7f\\u5dde\\u756a\\u79ba\",\"company_address_long\":\"113.35\",\"company_address_lat\":\"22.95\",\"company_logo_image\":\"\\/uploads\\/20200318\\/89ada207657d9fd1eb1a8a63ead855fd.png\",\"company_copyright\":\"Copyright \\u00a9 2016-2020 \\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8 \\u7248\\u6743\\u6240\\u6709 \\u7ca4ICP\\u590716092643\\u53f7 - 1\",\"company_wechat_image\":\"\\/uploads\\/20200318\\/15aedbdbe663663564e5c68b850943f8.png\",\"company_description\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\\uff0c\\u6210\\u7acb\\u4e8e2016\\u5e744\\u6708\\uff0c\\u603b\\u90e8\\u4f4d\\u4e8e\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\uff0c\\u662f\\u4e00\\u5bb6\\u6280\\u672f\\u9a71\\u52a8\\u578b\\u516c\\u53f8\\uff0c\\u81f4\\u529b\\u4e8e\\u7528\\u56fe\\u50cf\\u8bc6\\u522b\\u7b49\\u6280\\u672f\\u53ca\\u76f8\\u5173\\u4ea7\\u54c1\\u4e3a\\u5ba2\\u6237\\u63d0\\u4f9b\\u66f4\\u4fbf\\u6377\\u4f18\\u8d28\\u7684\\u670d\\u52a1 \\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\\uff0c\\u6210\\u7acb\\u4e8e2016\\u5e744\\u6708\\uff0c\\u603b\\u90e8\\u4f4d\\u4e8e\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\uff0c\\u662f\\u4e00\\u5bb6\\u6280\\u672f\\u9a71\\u52a8\\u578b\\u516c\\u53f8\\uff0c\\u81f4\\u529b\\u4e8e\\u7528\\u56fe\\u50cf\\u8bc6\\u522b\\u7b49\\u6280\\u672f\\u53ca\\u76f8\\u5173\\u4ea7\\u54c1\\u4e3a\\u5ba2\\u6237\\u63d0\\u4f9b\\u66f4\\u4fbf\\u6377\\u4f18\\u8d28\\u7684\\u670d\\u52a1 \\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\\uff0c\\u6210\\u7acb\\u4e8e2016\\u5e744\\u6708\\uff0c\\u603b\\u90e8\\u4f4d\\u4e8e\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\uff0c\\u662f\\u4e00\\u5bb6\\u6280\\u672f\\u9a71\\u52a8\\u578b\\u516c\\u53f8\\uff0c\\u81f4\\u529b\\u4e8e\\u7528\\u56fe\\u50cf\\u8bc6\\u522b\",\"company_spirit\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"company_value_view\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"company_manage_theory\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"company_dream\":\"\\u5e7f\\u5dde\\u5e02\\u4e94\\u5bab\\u683c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u8d23\\u4efb\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u4e94\\u5bab\\u683c\\u79d1\\u6280\\uff09\",\"image_url\":\"\\/uploads\\/20200318\\/b816eb071b961494d39232109201eb79.png,\\/uploads\\/20200318\\/fb62e4ff1639d97fb26dfd602cf98d52.png,\\/uploads\\/20200318\\/99c394998d7822eaad8f891fd38bda06.png\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584595022');
INSERT INTO `wgg_admin_log` VALUES ('83', '1', 'admin', '/admin/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"122\",\"name\":\"web\\/config\\/seoadd\",\"title\":\"seo\\u914d\\u7f6e\\u7f16\\u8f91\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584600971');
INSERT INTO `wgg_admin_log` VALUES ('84', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584600973');
INSERT INTO `wgg_admin_log` VALUES ('85', '1', 'admin', '/admin/auth/rule/edit/ids/140?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"0\",\"pid\":\"122\",\"name\":\"web\\/config\\/seoadd\",\"title\":\"seo\\u914d\\u7f6e\\u7f16\\u8f91\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"140\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584600990');
INSERT INTO `wgg_admin_log` VALUES ('86', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584600992');
INSERT INTO `wgg_admin_log` VALUES ('87', '1', 'admin', '/admin/web/product/edit/ids/11?dialog=1', 'web 产品管理 编辑', '{\"dialog\":\"1\",\"row\":{\"category_id\":\"11\",\"name\":\"\\u667a\\u80fd\\u4fdd\\u6e29\\u9009\\u53c2\\u67dc\",\"logo_image\":\"\\/uploads\\/20200317\\/a537da8c3842b51f8965eacf120d7da7.png\",\"single_image\":\"\\/uploads\\/20200317\\/247abaa200be7d90be94e98e35b9a372.png\",\"banner_image\":\"\\/uploads\\/20200316\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"util\":\"\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a\",\"keyword\":\"\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a\",\"description\":\"\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a\",\"content\":\"<p>\\u667a\\u80fd\\u53d6\\u9910\\u67dc|\\u4fdd\\u6e29\\u5907\\u9910\\u53f0|\\u4eba\\u8138\\u8bc6\\u522b\\u7ec8\\u7aef|\\u8425\\u517b\\u83dc\\u4ef7\\u6807\\u7b7e|\\u667a\\u80fd\\u6258\\u76d8\\u673a<br><\\/p>\"},\"ids\":\"11\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584608758');
INSERT INTO `wgg_admin_log` VALUES ('88', '1', 'admin', '/admin/web/product/edit/ids/10?dialog=1', 'web 产品管理 编辑', '{\"dialog\":\"1\",\"row\":{\"category_id\":\"10\",\"name\":\"\\u65e0\\u611f\\u79f0\\u91cd\\u7cfb\\u7edf\",\"logo_image\":\"\\/uploads\\/20200317\\/42dac39557ce01c1b6acd694351aff2c.png\",\"single_image\":\"\\/uploads\\/20200317\\/99c394998d7822eaad8f891fd38bda06.png\",\"banner_image\":\"\\/uploads\\/20200316\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"util\":\"\\u4e00\\u83dc\\u4e00\\u4ef7|\\u81ea\\u52a9\\u9009\\u53c2\\u4f53\\u9a8c|\\u4fc3\\u8fdb\\u5149\\u76d8\\u884c\\u52a8|\\u7cbe\\u7ec6\\u8fd0\\u8425\\u7ba1\\u7406|\\u964d\\u4f4e\\u4eba\\u529b\\u6210\\u672c|\\u667a\\u80fd\\u79f0\\u91cd\\u8ba1\\u7b97|\\u65e0\\u611f\\u652f\\u4ed8|\\u591a\\u7ef4\\u5ea6\\u6570\\u636e\\u8fd0\\u8425\\u5206\\u6790\",\"keyword\":\"\\u4e00\\u83dc\\u4e00\\u4ef7|\\u81ea\\u52a9\\u9009\\u53c2\\u4f53\\u9a8c|\\u4fc3\\u8fdb\\u5149\\u76d8\\u884c\\u52a8|\\u7cbe\\u7ec6\\u8fd0\\u8425\\u7ba1\\u7406|\\u964d\\u4f4e\\u4eba\\u529b\\u6210\\u672c|\\u667a\\u80fd\\u79f0\\u91cd\\u8ba1\\u7b97|\\u65e0\\u611f\\u652f\\u4ed8|\\u591a\\u7ef4\\u5ea6\\u6570\\u636e\\u8fd0\\u8425\\u5206\\u6790\",\"description\":\"\\u4e00\\u83dc\\u4e00\\u4ef7|\\u81ea\\u52a9\\u9009\\u53c2\\u4f53\\u9a8c|\\u4fc3\\u8fdb\\u5149\\u76d8\\u884c\\u52a8|\\u7cbe\\u7ec6\\u8fd0\\u8425\\u7ba1\\u7406|\\u964d\\u4f4e\\u4eba\\u529b\\u6210\\u672c|\\u667a\\u80fd\\u79f0\\u91cd\\u8ba1\\u7b97|\\u65e0\\u611f\\u652f\\u4ed8|\\u591a\\u7ef4\\u5ea6\\u6570\\u636e\\u8fd0\\u8425\\u5206\\u6790\",\"content\":\"<p>werwrwerew<\\/p>\"},\"ids\":\"10\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584608772');
INSERT INTO `wgg_admin_log` VALUES ('89', '1', 'admin', '/admin/web/product/edit/ids/9?dialog=1', 'web 产品管理 编辑', '{\"dialog\":\"1\",\"row\":{\"category_id\":\"9\",\"name\":\"\\u5728\\u7ebf\\u8ba2\\u9910\\u7cfb\\u7edf\",\"logo_image\":\"\\/uploads\\/20200317\\/8d216ee6fa3c31baaa92f02f858b7727.png\",\"single_image\":\"\\/uploads\\/20200317\\/fb62e4ff1639d97fb26dfd602cf98d52.png\",\"banner_image\":\"\\/uploads\\/20200316\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"util\":\"\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c|\\u8425\\u517b\\u5206\\u6790|\\u6d88\\u8d39\\u8bb0\\u5f55\\u67e5\\u8be2|\\u667a\\u80fd\\u53d6\\u9910|\\u83dc\\u54c1\\uff0c\\u83dc\\u8c31\\u7ba1\\u7406|\\u4eba\\u8138\\u6838\\u9500\\u8ba2\\u5355|\\u4eba\\u8138\\u4fe1\\u606f\\u91c7\\u96c6\",\"keyword\":\"\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c\",\"description\":\"\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c\",\"content\":\"<p>\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c\\u5fae\\u4fe1\\u9884\\u5b9a\\uff0c\\u5728\\u7ebf\\u70b9\\u9910|\\u914d\\u9001\\u7ba1\\u7406|\\u5728\\u7ebf\\u5145\\u503c<br><\\/p>\"},\"ids\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584608787');
INSERT INTO `wgg_admin_log` VALUES ('90', '1', 'admin', '/admin/web/product/edit/ids/8?dialog=1', 'web 产品管理 编辑', '{\"dialog\":\"1\",\"row\":{\"category_id\":\"8\",\"name\":\"\\u89c6\\u89c9\\u7ed3\\u7b97\\u7cfb\\u7edf\",\"logo_image\":\"\\/uploads\\/20200317\\/ef960bd3e4e3fd98424fbdec95cc3bae.png\",\"single_image\":\"\\/uploads\\/20200317\\/b816eb071b961494d39232109201eb79.png\",\"banner_image\":\"\\/uploads\\/20200316\\/65f7fe144884cd0cc2c6206320c0779a.png\",\"util\":\"Ai\\u667a\\u80fd\\u7ed3\\u7b97|\\u83dc\\u54c1\\u8bc6\\u522b|\\u4eba\\u8138\\u8bc6\\u522b\\u652f\\u4ed8|\\u7cbe\\u51c6\\u5907\\u9910,\\u6709\\u91cf\\u6709\\u7ed3|\\u6570\\u636e\\u51c6\\u786e\\uff0c\\u64cd\\u4f5c\\u7b80\\u4fbf\",\"keyword\":\"Ai\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522b\",\"description\":\"Ai\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522bAi\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522b\",\"content\":\"<p>Ai\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522bAi\\u667a\\u80fd\\u7ed3\\u7b97\\uff0c\\u83dc\\u54c1\\u8bc6\\u522b<br><\\/p>\"},\"ids\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584608807');
INSERT INTO `wgg_admin_log` VALUES ('91', '1', 'admin', '/admin/index/login?url=%2Fadmin', '登录', '{\"url\":\"\\/admin\",\"__token__\":\"4c2b5ef6cad4bd4095dc767c98562774\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1584762546');
INSERT INTO `wgg_admin_log` VALUES ('92', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"773c62787e50d8817042df50eac7fc63\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1584762712');

-- ----------------------------
-- Table structure for `wgg_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_attachment`;
CREATE TABLE `wgg_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) DEFAULT NULL COMMENT '创建日期',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int(10) DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='附件表';

-- ----------------------------
-- Records of wgg_attachment
-- ----------------------------
INSERT INTO `wgg_attachment` VALUES ('1', '1', '0', '/assets/img/qrcode.png', '150', '150', 'png', '0', '21859', 'image/png', '', '1499681848', '1499681848', '1499681848', 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');
INSERT INTO `wgg_attachment` VALUES ('2', '1', '0', '/uploads/20200316/65f7fe144884cd0cc2c6206320c0779a.png', '3999', '1459', 'png', '0', '1576714', 'image/png', '{\"name\":\"01.png\"}', '1584341573', '1584341573', '1584341573', 'local', '0dd212667bce72b99f48651fef851ef880fd22de');
INSERT INTO `wgg_attachment` VALUES ('3', '1', '0', '/uploads/20200316/48948e52986c81f574eca4d2ca76412d.png', '313', '100', 'png', '0', '29169', 'image/png', '{\"name\":\"\\u7f51\\u9875\\u8bbe\\u8ba11--\\u7f51\\u7ad9\\u9996\\u9875_160.png\"}', '1584350113', '1584350113', '1584350113', 'local', '744b998c0bc6b26ced1fe4aa2bb4fdb5c5ca8245');
INSERT INTO `wgg_attachment` VALUES ('4', '1', '0', '/uploads/20200316/c431ad8aa050a63ce9288d6fec376bae.png', '98', '92', 'png', '0', '12807', 'image/png', '{\"name\":\"company1.png\"}', '1584352264', '1584352264', '1584352264', 'local', '396d3bb267fb3a06b15a15b854e97a8b92000864');
INSERT INTO `wgg_attachment` VALUES ('5', '1', '0', '/uploads/20200316/b0ebabd0b6093132da11f8e924161e6a.jpg', '500', '333', 'jpg', '0', '23216', 'image/jpeg', '{\"name\":\"dog1.jpg\"}', '1584359271', '1584359271', '1584359271', 'local', '4386b51364e40c752a9a60c493aaef0739fc2f41');
INSERT INTO `wgg_attachment` VALUES ('6', '1', '0', '/uploads/20200316/d24704353b609f131f0881fa7b7a25c4.jpg', '500', '300', 'jpg', '0', '34185', 'image/jpeg', '{\"name\":\"dog3.jpg\"}', '1584359344', '1584359344', '1584359344', 'local', '8de4251f9fd89365af86c0d06227183f7d1161cc');
INSERT INTO `wgg_attachment` VALUES ('7', '1', '0', '/uploads/20200316/d1aad9a00d756bbb64ee250a84ff9bd4.jpg', '500', '358', 'jpg', '0', '44530', 'image/jpeg', '{\"name\":\"dog4.jpg\"}', '1584359407', '1584359407', '1584359407', 'local', 'c54a4cf69510c79a39f24db27b19b8e59f4cca13');
INSERT INTO `wgg_attachment` VALUES ('8', '1', '0', '/uploads/20200316/5ff54fa9ea5b0661de62c1746d730fe1.png', '612', '613', 'png', '0', '535516', 'image/png', '{\"name\":\"12.png\"}', '1584362550', '1584362550', '1584362550', 'local', '48e86df6b01c813d5f8482cd93e6437a7b3cabf1');
INSERT INTO `wgg_attachment` VALUES ('9', '1', '0', '/uploads/20200316/482d001b1243a9840fd6003e88392141.png', '611', '611', 'png', '0', '540743', 'image/png', '{\"name\":\"13.png\"}', '1584362654', '1584362654', '1584362654', 'local', '0b9910bc6a2d18752c6dc94162f141969cea09c8');
INSERT INTO `wgg_attachment` VALUES ('10', '1', '0', '/uploads/20200316/9e16d0ab27d6983fbd70fdd8cd37f394.png', '607', '610', 'png', '0', '572149', 'image/png', '{\"name\":\"14.png\"}', '1584362710', '1584362710', '1584362710', 'local', '22d9bab5cab01bd5b2c6cca2b624d8caa70f1e0e');
INSERT INTO `wgg_attachment` VALUES ('11', '1', '0', '/uploads/20200317/ef960bd3e4e3fd98424fbdec95cc3bae.png', '238', '260', 'png', '0', '9511', 'image/png', '{\"name\":\"04.png\"}', '1584415727', '1584415727', '1584415727', 'local', '53326c60ce988184f2972cc01da9ac6f5b0e261c');
INSERT INTO `wgg_attachment` VALUES ('12', '1', '0', '/uploads/20200317/795dc97939a006fefa8194e31656447f.png', '840', '971', 'png', '0', '250802', 'image/png', '{\"name\":\"10.png\"}', '1584415743', '1584415743', '1584415743', 'local', '7a8192a0972fd09c7cd399d341404cefd954ee5d');
INSERT INTO `wgg_attachment` VALUES ('13', '1', '0', '/uploads/20200317/8d216ee6fa3c31baaa92f02f858b7727.png', '110', '208', 'png', '0', '1367', 'image/png', '{\"name\":\"05.png\"}', '1584415942', '1584415942', '1584415942', 'local', '663d37a788e70e33562d8c0aff7a9b572c253be1');
INSERT INTO `wgg_attachment` VALUES ('14', '1', '0', '/uploads/20200317/5c4f27e068b369adceb2c5f97bce2244.png', '402', '807', 'png', '0', '153937', 'image/png', '{\"name\":\"30.png\"}', '1584415954', '1584415954', '1584415954', 'local', 'a371e470acc8f46f07ed8b5b01ecb4f9b66806dc');
INSERT INTO `wgg_attachment` VALUES ('15', '1', '0', '/uploads/20200317/42dac39557ce01c1b6acd694351aff2c.png', '244', '241', 'png', '0', '11524', 'image/png', '{\"name\":\"06.png\"}', '1584416100', '1584416100', '1584416100', 'local', 'ca58b69c320f891122409e822dc1a182281fc3b1');
INSERT INTO `wgg_attachment` VALUES ('16', '1', '0', '/uploads/20200317/5d8eb30892a5b4e0799a910c2390dcdb.png', '734', '749', 'png', '0', '230621', 'image/png', '{\"name\":\"31.png\"}', '1584416131', '1584416131', '1584416131', 'local', '478375f2acb341432ae5a2a03077e29cd036af26');
INSERT INTO `wgg_attachment` VALUES ('17', '1', '0', '/uploads/20200317/a537da8c3842b51f8965eacf120d7da7.png', '175', '243', 'png', '0', '6702', 'image/png', '{\"name\":\"07.png\"}', '1584416276', '1584416276', '1584416276', 'local', '1a3a36290e3ba6a5e78bcdc32186b85f92c7ef65');
INSERT INTO `wgg_attachment` VALUES ('18', '1', '0', '/uploads/20200317/fbbc82da140a0337eb4010c2b6c70b3d.png', '502', '843', 'png', '0', '265864', 'image/png', '{\"name\":\"32.png\"}', '1584416283', '1584416283', '1584416283', 'local', '4d62acdb59caeebbceaeb90354092d71d6cb36bf');
INSERT INTO `wgg_attachment` VALUES ('19', '1', '0', '/uploads/20200317/65f7fe144884cd0cc2c6206320c0779a.png', '3999', '1459', 'png', '0', '1576714', 'image/png', '{\"name\":\"01.png\"}', '1584418307', '1584418307', '1584418306', 'local', '0dd212667bce72b99f48651fef851ef880fd22de');
INSERT INTO `wgg_attachment` VALUES ('20', '1', '0', '/uploads/20200317/247abaa200be7d90be94e98e35b9a372.png', '1069', '1002', 'png', '0', '291762', 'image/png', '{\"name\":\"004.png\"}', '1584428929', '1584428929', '1584428929', 'local', '0ea517bc7601048ac430c39890868e842fca7259');
INSERT INTO `wgg_attachment` VALUES ('21', '1', '0', '/uploads/20200317/99c394998d7822eaad8f891fd38bda06.png', '1069', '1002', 'png', '0', '245994', 'image/png', '{\"name\":\"003.png\"}', '1584428946', '1584428946', '1584428946', 'local', 'cc10a5977afc48805574a3b8b998b26b5f74448c');
INSERT INTO `wgg_attachment` VALUES ('22', '1', '0', '/uploads/20200317/fb62e4ff1639d97fb26dfd602cf98d52.png', '1069', '1001', 'png', '0', '171192', 'image/png', '{\"name\":\"002.png\"}', '1584428962', '1584428962', '1584428962', 'local', '9492b1371db2d914d9c89994c9ee43e225147b6b');
INSERT INTO `wgg_attachment` VALUES ('23', '1', '0', '/uploads/20200317/b816eb071b961494d39232109201eb79.png', '1069', '1015', 'png', '0', '263627', 'image/png', '{\"name\":\"001.png\"}', '1584428976', '1584428976', '1584428976', 'local', '28bf9b0864c3a77a3c3533a8d1532ace23ed1781');
INSERT INTO `wgg_attachment` VALUES ('24', '1', '0', '/uploads/20200318/b816eb071b961494d39232109201eb79.png', '1069', '1015', 'png', '0', '263627', 'image/png', '{\"name\":\"001.png\"}', '1584510331', '1584510331', '1584510331', 'local', '28bf9b0864c3a77a3c3533a8d1532ace23ed1781');
INSERT INTO `wgg_attachment` VALUES ('25', '1', '0', '/uploads/20200318/fb62e4ff1639d97fb26dfd602cf98d52.png', '1069', '1001', 'png', '0', '171192', 'image/png', '{\"name\":\"002.png\"}', '1584511500', '1584511500', '1584511500', 'local', '9492b1371db2d914d9c89994c9ee43e225147b6b');
INSERT INTO `wgg_attachment` VALUES ('26', '1', '0', '/uploads/20200318/99c394998d7822eaad8f891fd38bda06.png', '1069', '1002', 'png', '0', '245994', 'image/png', '{\"name\":\"003.png\"}', '1584511504', '1584511504', '1584511504', 'local', 'cc10a5977afc48805574a3b8b998b26b5f74448c');
INSERT INTO `wgg_attachment` VALUES ('27', '1', '0', '/uploads/20200318/66199e6b3af7d11c73c512c15b27b94f.png', '4000', '1459', 'png', '0', '2080901', 'image/png', '{\"name\":\"\\u89e3\\u51b3\\u65b9\\u6848.png\"}', '1584516484', '1584516484', '1584516484', 'local', '18d382c36c76a192b3a2c4485f157e5fa72e0d89');
INSERT INTO `wgg_attachment` VALUES ('28', '1', '0', '/uploads/20200318/89ada207657d9fd1eb1a8a63ead855fd.png', '165', '45', 'png', '0', '10582', 'image/png', '{\"name\":\"logo.png\"}', '1584533652', '1584533652', '1584533652', 'local', '64ec35caf8a60710320f1d4ba76435833ab31408');
INSERT INTO `wgg_attachment` VALUES ('29', '1', '0', '/uploads/20200318/15aedbdbe663663564e5c68b850943f8.png', '203', '199', 'png', '0', '29102', 'image/png', '{\"name\":\"wechat.png\"}', '1584533899', '1584533899', '1584533899', 'local', '4ac0ac1c2fb3da0de06bd5a3aad5a197980d864b');

-- ----------------------------
-- Table structure for `wgg_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_auth_group`;
CREATE TABLE `wgg_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分组表';

-- ----------------------------
-- Records of wgg_auth_group
-- ----------------------------
INSERT INTO `wgg_auth_group` VALUES ('1', '0', 'Admin group', '*', '1490883540', '149088354', 'normal');
INSERT INTO `wgg_auth_group` VALUES ('2', '1', 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', '1490883540', '1505465692', 'normal');
INSERT INTO `wgg_auth_group` VALUES ('3', '2', 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', '1490883540', '1502205322', 'normal');
INSERT INTO `wgg_auth_group` VALUES ('4', '1', 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', '1490883540', '1502205350', 'normal');
INSERT INTO `wgg_auth_group` VALUES ('5', '2', 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', '1490883540', '1502205344', 'normal');

-- ----------------------------
-- Table structure for `wgg_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_auth_group_access`;
CREATE TABLE `wgg_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='权限分组表';

-- ----------------------------
-- Records of wgg_auth_group_access
-- ----------------------------
INSERT INTO `wgg_auth_group_access` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `wgg_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_auth_rule`;
CREATE TABLE `wgg_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';

-- ----------------------------
-- Records of wgg_auth_rule
-- ----------------------------
INSERT INTO `wgg_auth_rule` VALUES ('1', 'file', '0', 'dashboard', 'Dashboard', 'fa fa-dashboard', '', 'Dashboard tips', '1', '1497429920', '1497429920', '143', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('2', 'file', '0', 'general', 'General', 'fa fa-cogs', '', '', '1', '1497429920', '1497430169', '137', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('3', 'file', '0', 'category', 'Category', 'fa fa-leaf', '', 'Category tips', '1', '1497429920', '1497429920', '119', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('4', 'file', '0', 'addon', 'Addon', 'fa fa-rocket', '', 'Addon tips', '1', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('5', 'file', '0', 'auth', 'Auth', 'fa fa-group', '', '', '1', '1497429920', '1497430092', '99', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('6', 'file', '2', 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', '1', '1497429920', '1497430683', '60', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('7', 'file', '2', 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', '1', '1497429920', '1497430699', '53', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('8', 'file', '2', 'general/profile', 'Profile', 'fa fa-user', '', '', '1', '1497429920', '1497429920', '34', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('9', 'file', '5', 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', '1', '1497429920', '1497430320', '118', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('10', 'file', '5', 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', '1', '1497429920', '1497430307', '113', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('11', 'file', '5', 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', '1', '1497429920', '1497429920', '109', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('12', 'file', '5', 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', '1', '1497429920', '1497430581', '104', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('13', 'file', '1', 'dashboard/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '136', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('14', 'file', '1', 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '135', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('15', 'file', '1', 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '133', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('16', 'file', '1', 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '134', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('17', 'file', '1', 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '132', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('18', 'file', '6', 'general/config/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '52', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('19', 'file', '6', 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '51', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('20', 'file', '6', 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '50', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('21', 'file', '6', 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '49', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('22', 'file', '6', 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '48', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('23', 'file', '7', 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', '0', '1497429920', '1497429920', '59', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('24', 'file', '7', 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '58', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('25', 'file', '7', 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '57', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('26', 'file', '7', 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '56', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('27', 'file', '7', 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '55', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('28', 'file', '7', 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '54', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('29', 'file', '8', 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '33', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('30', 'file', '8', 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '32', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('31', 'file', '8', 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '31', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('32', 'file', '8', 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '30', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('33', 'file', '8', 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '29', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('34', 'file', '8', 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '28', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('35', 'file', '3', 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', '0', '1497429920', '1497429920', '142', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('36', 'file', '3', 'category/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '141', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('37', 'file', '3', 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '140', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('38', 'file', '3', 'category/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '139', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('39', 'file', '3', 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '138', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('40', 'file', '9', 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', '0', '1497429920', '1497429920', '117', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('41', 'file', '9', 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '116', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('42', 'file', '9', 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '115', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('43', 'file', '9', 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '114', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('44', 'file', '10', 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', '0', '1497429920', '1497429920', '112', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('45', 'file', '10', 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '111', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('46', 'file', '10', 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '110', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('47', 'file', '11', 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', '0', '1497429920', '1497429920', '108', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('48', 'file', '11', 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '107', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('49', 'file', '11', 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '106', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('50', 'file', '11', 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '105', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('51', 'file', '12', 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', '0', '1497429920', '1497429920', '103', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('52', 'file', '12', 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '102', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('53', 'file', '12', 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '101', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('54', 'file', '12', 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '100', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('55', 'file', '4', 'addon/index', 'View', 'fa fa-circle-o', '', 'Addon tips', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('56', 'file', '4', 'addon/add', 'Add', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('57', 'file', '4', 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('58', 'file', '4', 'addon/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('59', 'file', '4', 'addon/local', 'Local install', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('60', 'file', '4', 'addon/state', 'Update state', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('61', 'file', '4', 'addon/install', 'Install', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('62', 'file', '4', 'addon/uninstall', 'Uninstall', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('63', 'file', '4', 'addon/config', 'Setting', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('64', 'file', '4', 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('65', 'file', '4', 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('66', 'file', '0', 'user', 'User', 'fa fa-list', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('67', 'file', '66', 'user/user', 'User', 'fa fa-user', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('68', 'file', '67', 'user/user/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('69', 'file', '67', 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('70', 'file', '67', 'user/user/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('71', 'file', '67', 'user/user/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('72', 'file', '67', 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('73', 'file', '66', 'user/group', 'User group', 'fa fa-users', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('74', 'file', '73', 'user/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('75', 'file', '73', 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('76', 'file', '73', 'user/group/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('77', 'file', '73', 'user/group/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('78', 'file', '73', 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('79', 'file', '66', 'user/rule', 'User rule', 'fa fa-circle-o', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('80', 'file', '79', 'user/rule/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('81', 'file', '79', 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('82', 'file', '79', 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('83', 'file', '79', 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('84', 'file', '79', 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('85', 'file', '0', 'web', 'web', 'fa fa-list', '', '', '1', '1584336708', '1584336708', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('86', 'file', '85', 'web/banner', 'banner管理', 'fa fa-circle-o\r', '', '', '1', '1584336708', '1584336708', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('87', 'file', '86', 'web/banner/index', '查看', 'fa fa-circle-o', '', '', '0', '1584336709', '1584336709', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('88', 'file', '86', 'web/banner/add', '添加', 'fa fa-circle-o', '', '', '0', '1584336709', '1584336709', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('89', 'file', '86', 'web/banner/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1584336709', '1584336709', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('90', 'file', '86', 'web/banner/del', '删除', 'fa fa-circle-o', '', '', '0', '1584336709', '1584336709', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('91', 'file', '86', 'web/banner/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1584336709', '1584336709', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('92', 'file', '85', 'web/cases', '案例管理', 'fa fa-circle-o\r', '', '', '1', '1584337169', '1584337169', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('93', 'file', '92', 'web/cases/index', '查看', 'fa fa-circle-o', '', '', '0', '1584337169', '1584337169', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('94', 'file', '92', 'web/cases/add', '添加', 'fa fa-circle-o', '', '', '0', '1584337169', '1584337169', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('95', 'file', '92', 'web/cases/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1584337169', '1584337169', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('96', 'file', '92', 'web/cases/del', '删除', 'fa fa-circle-o', '', '', '0', '1584337169', '1584337169', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('97', 'file', '92', 'web/cases/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1584337169', '1584337169', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('98', 'file', '85', 'web/news', '新闻管理', 'fa fa-circle-o\r', '', '', '1', '1584337174', '1584337174', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('99', 'file', '98', 'web/news/index', '查看', 'fa fa-circle-o', '', '', '0', '1584337174', '1584337174', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('100', 'file', '98', 'web/news/add', '添加', 'fa fa-circle-o', '', '', '0', '1584337174', '1584337174', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('101', 'file', '98', 'web/news/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1584337174', '1584337174', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('102', 'file', '98', 'web/news/del', '删除', 'fa fa-circle-o', '', '', '0', '1584337174', '1584337174', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('103', 'file', '98', 'web/news/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1584337174', '1584337174', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('104', 'file', '85', 'web/company', '客户公司管理', 'fa fa-circle-o\r', '', '', '1', '1584349500', '1584349500', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('105', 'file', '104', 'web/company/index', '查看', 'fa fa-circle-o', '', '', '0', '1584349500', '1584349500', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('106', 'file', '104', 'web/company/add', '添加', 'fa fa-circle-o', '', '', '0', '1584349500', '1584349500', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('107', 'file', '104', 'web/company/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1584349500', '1584349500', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('108', 'file', '104', 'web/company/del', '删除', 'fa fa-circle-o', '', '', '0', '1584349500', '1584349500', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('109', 'file', '104', 'web/company/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1584349500', '1584349500', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('110', 'file', '85', 'web/product', '产品管理', 'fa fa-circle-o\r', '', '', '1', '1584414954', '1584414954', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('111', 'file', '110', 'web/product/index', '查看', 'fa fa-circle-o', '', '', '0', '1584414954', '1584414954', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('112', 'file', '110', 'web/product/add', '添加', 'fa fa-circle-o', '', '', '0', '1584414954', '1584414954', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('113', 'file', '110', 'web/product/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1584414954', '1584414954', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('114', 'file', '110', 'web/product/del', '删除', 'fa fa-circle-o', '', '', '0', '1584414954', '1584414954', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('115', 'file', '110', 'web/product/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1584414954', '1584414954', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('116', 'file', '85', 'web/solution', '解决方案管理', 'fa fa-circle-o\r', '', '', '1', '1584417940', '1584417940', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('117', 'file', '116', 'web/solution/index', '查看', 'fa fa-circle-o', '', '', '0', '1584417940', '1584417940', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('118', 'file', '116', 'web/solution/add', '添加', 'fa fa-circle-o', '', '', '0', '1584417940', '1584417940', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('119', 'file', '116', 'web/solution/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1584417940', '1584417940', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('120', 'file', '116', 'web/solution/del', '删除', 'fa fa-circle-o', '', '', '0', '1584417940', '1584417940', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('121', 'file', '116', 'web/solution/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1584417940', '1584417940', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('122', 'file', '85', 'web/config', '网站配置管理', 'fa fa-circle-o\r', '', '', '1', '1584507862', '1584507862', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('123', 'file', '122', 'web/config/index', '查看', 'fa fa-circle-o', '', '', '0', '1584507863', '1584507863', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('124', 'file', '122', 'web/config/add', '添加', 'fa fa-circle-o', '', '', '0', '1584507863', '1584507863', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('125', 'file', '122', 'web/config/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1584507863', '1584507863', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('126', 'file', '122', 'web/config/del', '删除', 'fa fa-circle-o', '', '', '0', '1584507863', '1584507863', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('127', 'file', '122', 'web/config/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1584507863', '1584507863', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('128', 'file', '85', 'web/message', '用户留言管理', 'fa fa-circle-o\r', '', '', '1', '1584526547', '1584526547', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('129', 'file', '128', 'web/message/index', '查看', 'fa fa-circle-o', '', '', '0', '1584526547', '1584526547', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('130', 'file', '128', 'web/message/add', '添加', 'fa fa-circle-o', '', '', '0', '1584526547', '1584526547', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('131', 'file', '128', 'web/message/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1584526547', '1584526547', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('132', 'file', '128', 'web/message/del', '删除', 'fa fa-circle-o', '', '', '0', '1584526547', '1584526547', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('133', 'file', '128', 'web/message/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1584526547', '1584526547', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('134', 'file', '85', 'web/visitlog', '访问日志管理', 'fa fa-circle-o\r', '', '', '1', '1584530026', '1584530026', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('135', 'file', '134', 'web/visitlog/index', '查看', 'fa fa-circle-o', '', '', '0', '1584530026', '1584530026', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('136', 'file', '134', 'web/visitlog/add', '添加', 'fa fa-circle-o', '', '', '0', '1584530026', '1584530026', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('137', 'file', '134', 'web/visitlog/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1584530026', '1584530026', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('138', 'file', '134', 'web/visitlog/del', '删除', 'fa fa-circle-o', '', '', '0', '1584530026', '1584530026', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('139', 'file', '134', 'web/visitlog/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1584530026', '1584530026', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('140', 'file', '122', 'web/config/seoadd', 'seo配置编辑', 'fa fa-circle-o', '', '', '0', '1584600971', '1584600990', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('141', 'file', '85', 'web/productcategory', '产品分类管理', 'fa fa-circle-o\r', '', '', '1', '1584606761', '1584606761', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('142', 'file', '141', 'web/productcategory/index', '查看', 'fa fa-circle-o', '', '', '0', '1584606761', '1584606761', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('143', 'file', '141', 'web/productcategory/add', '添加', 'fa fa-circle-o', '', '', '0', '1584606761', '1584606761', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('144', 'file', '141', 'web/productcategory/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1584606761', '1584606761', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('145', 'file', '141', 'web/productcategory/del', '删除', 'fa fa-circle-o', '', '', '0', '1584606761', '1584606761', '0', 'normal');
INSERT INTO `wgg_auth_rule` VALUES ('146', 'file', '141', 'web/productcategory/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1584606761', '1584606761', '0', 'normal');

-- ----------------------------
-- Table structure for `wgg_category`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_category`;
CREATE TABLE `wgg_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类表';

-- ----------------------------
-- Records of wgg_category
-- ----------------------------
INSERT INTO `wgg_category` VALUES ('1', '0', 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', '1495262190', '1495262190', '1', 'normal');
INSERT INTO `wgg_category` VALUES ('2', '0', 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', '1495262244', '1495262244', '2', 'normal');
INSERT INTO `wgg_category` VALUES ('3', '2', 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', '1495262288', '1495262288', '3', 'normal');
INSERT INTO `wgg_category` VALUES ('4', '2', 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', '1495262317', '1495262317', '4', 'normal');
INSERT INTO `wgg_category` VALUES ('5', '0', 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', '1495262336', '1499681850', '5', 'normal');
INSERT INTO `wgg_category` VALUES ('6', '5', 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', '1495262357', '1495262357', '6', 'normal');
INSERT INTO `wgg_category` VALUES ('7', '5', 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', '1495262391', '1495262391', '7', 'normal');
INSERT INTO `wgg_category` VALUES ('8', '6', 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', '1495262424', '1495262424', '8', 'normal');
INSERT INTO `wgg_category` VALUES ('9', '6', 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', '1495262456', '1495262456', '9', 'normal');
INSERT INTO `wgg_category` VALUES ('10', '7', 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', '1495262487', '1495262487', '10', 'normal');
INSERT INTO `wgg_category` VALUES ('11', '7', 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', '1495262515', '1495262515', '11', 'normal');
INSERT INTO `wgg_category` VALUES ('12', '0', 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', '1497015727', '1497015727', '12', 'normal');
INSERT INTO `wgg_category` VALUES ('13', '0', 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', '1497015738', '1497015738', '13', 'normal');

-- ----------------------------
-- Table structure for `wgg_config`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_config`;
CREATE TABLE `wgg_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统配置';

-- ----------------------------
-- Records of wgg_config
-- ----------------------------
INSERT INTO `wgg_config` VALUES ('1', 'name', 'basic', 'Site name', '请填写站点名称', 'string', '五宫格  官网后台', '', 'required', '');
INSERT INTO `wgg_config` VALUES ('2', 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '', '', '');
INSERT INTO `wgg_config` VALUES ('3', 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `wgg_config` VALUES ('4', 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `wgg_config` VALUES ('5', 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `wgg_config` VALUES ('6', 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `wgg_config` VALUES ('7', 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `wgg_config` VALUES ('8', 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `wgg_config` VALUES ('9', 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `wgg_config` VALUES ('10', 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `wgg_config` VALUES ('11', 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `wgg_config` VALUES ('12', 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `wgg_config` VALUES ('13', 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `wgg_config` VALUES ('14', 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `wgg_config` VALUES ('15', 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `wgg_config` VALUES ('16', 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `wgg_config` VALUES ('17', 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for `wgg_ems`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_ems`;
CREATE TABLE `wgg_ems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='邮箱验证码表';

-- ----------------------------
-- Records of wgg_ems
-- ----------------------------

-- ----------------------------
-- Table structure for `wgg_sms`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_sms`;
CREATE TABLE `wgg_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='短信验证码表';

-- ----------------------------
-- Records of wgg_sms
-- ----------------------------

-- ----------------------------
-- Table structure for `wgg_test`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_test`;
CREATE TABLE `wgg_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `json` varchar(255) DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';

-- ----------------------------
-- Records of wgg_test
-- ----------------------------
INSERT INTO `wgg_test` VALUES ('1', '0', '12', '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', '0.00', '0', '2017-07-10', '2017-07-10 18:24:45', '2017', '18:24:45', '1499682285', '1499682526', '1499682526', null, '0', '1', 'normal', '1');

-- ----------------------------
-- Table structure for `wgg_user`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_user`;
CREATE TABLE `wgg_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) NOT NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` int(10) DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) NOT NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员表';

-- ----------------------------
-- Records of wgg_user
-- ----------------------------
INSERT INTO `wgg_user` VALUES ('1', '1', 'admin', 'admin', 'c13f62012fd6a8fdf06b3452a94430e5', 'rpR6Bv', 'admin@163.com', '13888888888', '', '0', '0', '2017-04-15', '', '0.00', '0', '1', '1', '1516170492', '1516171614', '127.0.0.1', '0', '127.0.0.1', '1491461418', '0', '1516171614', '', 'normal', '');

-- ----------------------------
-- Table structure for `wgg_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_user_group`;
CREATE TABLE `wgg_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '组名',
  `rules` text COMMENT '权限节点',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员组表';

-- ----------------------------
-- Records of wgg_user_group
-- ----------------------------
INSERT INTO `wgg_user_group` VALUES ('1', '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', '1515386468', '1516168298', 'normal');

-- ----------------------------
-- Table structure for `wgg_user_money_log`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_user_money_log`;
CREATE TABLE `wgg_user_money_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更余额',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `after` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员余额变动表';

-- ----------------------------
-- Records of wgg_user_money_log
-- ----------------------------

-- ----------------------------
-- Table structure for `wgg_user_rule`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_user_rule`;
CREATE TABLE `wgg_user_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `title` varchar(50) DEFAULT '' COMMENT '标题',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员规则表';

-- ----------------------------
-- Records of wgg_user_rule
-- ----------------------------
INSERT INTO `wgg_user_rule` VALUES ('1', '0', 'index', '前台', '', '1', '1516168079', '1516168079', '1', 'normal');
INSERT INTO `wgg_user_rule` VALUES ('2', '0', 'api', 'API接口', '', '1', '1516168062', '1516168062', '2', 'normal');
INSERT INTO `wgg_user_rule` VALUES ('3', '1', 'user', '会员模块', '', '1', '1515386221', '1516168103', '12', 'normal');
INSERT INTO `wgg_user_rule` VALUES ('4', '2', 'user', '会员模块', '', '1', '1515386221', '1516168092', '11', 'normal');
INSERT INTO `wgg_user_rule` VALUES ('5', '3', 'index/user/login', '登录', '', '0', '1515386247', '1515386247', '5', 'normal');
INSERT INTO `wgg_user_rule` VALUES ('6', '3', 'index/user/register', '注册', '', '0', '1515386262', '1516015236', '7', 'normal');
INSERT INTO `wgg_user_rule` VALUES ('7', '3', 'index/user/index', '会员中心', '', '0', '1516015012', '1516015012', '9', 'normal');
INSERT INTO `wgg_user_rule` VALUES ('8', '3', 'index/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '4', 'normal');
INSERT INTO `wgg_user_rule` VALUES ('9', '4', 'api/user/login', '登录', '', '0', '1515386247', '1515386247', '6', 'normal');
INSERT INTO `wgg_user_rule` VALUES ('10', '4', 'api/user/register', '注册', '', '0', '1515386262', '1516015236', '8', 'normal');
INSERT INTO `wgg_user_rule` VALUES ('11', '4', 'api/user/index', '会员中心', '', '0', '1516015012', '1516015012', '10', 'normal');
INSERT INTO `wgg_user_rule` VALUES ('12', '4', 'api/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '3', 'normal');

-- ----------------------------
-- Table structure for `wgg_user_score_log`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_user_score_log`;
CREATE TABLE `wgg_user_score_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员积分变动表';

-- ----------------------------
-- Records of wgg_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for `wgg_user_token`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_user_token`;
CREATE TABLE `wgg_user_token` (
  `token` varchar(50) NOT NULL COMMENT 'Token',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员Token表';

-- ----------------------------
-- Records of wgg_user_token
-- ----------------------------

-- ----------------------------
-- Table structure for `wgg_version`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_version`;
CREATE TABLE `wgg_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) NOT NULL DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) NOT NULL DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) NOT NULL DEFAULT '' COMMENT '包大小',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) NOT NULL DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='版本表';

-- ----------------------------
-- Records of wgg_version
-- ----------------------------
INSERT INTO `wgg_version` VALUES ('1', '1.1.1,2', '1.2.1', '20M', '更新内容', 'https://www.fastadmin.net/download.html', '1', '1520425318', '0', '0', 'normal');

-- ----------------------------
-- Table structure for `wgg_web_banner`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_web_banner`;
CREATE TABLE `wgg_web_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) DEFAULT '' COMMENT '导航名',
  `image_url` varchar(255) DEFAULT '' COMMENT '导航链接',
  `group` varchar(50) DEFAULT '' COMMENT '所属组别【首页，详情页】',
  `jump_url` varchar(255) DEFAULT '' COMMENT '跳转地址',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='banner表';

-- ----------------------------
-- Records of wgg_web_banner
-- ----------------------------
INSERT INTO `wgg_web_banner` VALUES ('6', '首页1', '/uploads/20200316/65f7fe144884cd0cc2c6206320c0779a.png', '1', '', '1584341580', '1584341580', null);
INSERT INTO `wgg_web_banner` VALUES ('7', '首页2', '/uploads/20200316/65f7fe144884cd0cc2c6206320c0779a.png', '1', '', '1584341621', '1584341621', null);
INSERT INTO `wgg_web_banner` VALUES ('8', 'xinwein1', '/uploads/20200316/65f7fe144884cd0cc2c6206320c0779a.png', '5', '', '1584432129', '1584432129', null);
INSERT INTO `wgg_web_banner` VALUES ('9', 'anli1', '/uploads/20200316/65f7fe144884cd0cc2c6206320c0779a.png', '4', '', '1584440521', '1584440521', null);
INSERT INTO `wgg_web_banner` VALUES ('10', 'women', '/uploads/20200318/66199e6b3af7d11c73c512c15b27b94f.png', '6', '', '1584516489', '1584516489', null);

-- ----------------------------
-- Table structure for `wgg_web_cases`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_web_cases`;
CREATE TABLE `wgg_web_cases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(10) DEFAULT NULL COMMENT '公司id',
  `category_id` int(10) DEFAULT '0' COMMENT '分类id',
  `name` varchar(50) DEFAULT '' COMMENT '标题',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `content` mediumtext COMMENT '内容',
  `image_url` varchar(255) DEFAULT NULL COMMENT '图片url',
  `click_count` int(10) DEFAULT NULL COMMENT '点击次数',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='案例表';

-- ----------------------------
-- Records of wgg_web_cases
-- ----------------------------
INSERT INTO `wgg_web_cases` VALUES ('7', '8', '1', '56度C代表着安全的温度', '56度C代表着安全的温度', '56度C代表着安全的温度。非常时期，家里衣物、餐具都要高温消毒，家里空气也要消毒除菌。2月26日，海尔空调行业首个发布了56度C除菌空调，实现“智慧自清洁，只吹干净风”的效果。仅半个月时间，56度C除菌成为行业热词，并引发行业跟进。', '通过对比发现，海尔56度C除菌空调具备独有的3大优势：\r\n\r\n1、唯一一个蒸发器翅片与盘管同时达到56℃以上除菌，实测最高超过60℃，而行业只能做到蒸发器盘管的56℃。\r\n\r\n2、唯一一个蒸发器56℃以上温度持续时间超过30分钟，最高达到60分钟。按照官方说法：温度达到56℃、持续30分钟，可以有效灭活新型冠状病毒。\r\n\r\n3、唯一一个拥有海外专利授权，目前除菌自清洁已获得欧盟、日本、俄罗斯等海外多个国家和地区的专利授权。\r\n\r\n通过以上3大优势，海尔56度C除菌空调让用户真正享受到健康呼吸。在3月13日19:00上线的56度C除菌空调嗨购盛典中，海尔空调线上为用户现场演示56度C、30分钟以上的空调除菌全过程。\r\n\r\n', '/uploads/20200316/5ff54fa9ea5b0661de62c1746d730fe1.png', '234', '1584362554', '1584362554', null);
INSERT INTO `wgg_web_cases` VALUES ('8', '9', '1', '6度C代表着安全的温度。非常时期，家里衣物', '盘管同时达到56℃以上除菌，实测最高超过60℃，而行业只能做到蒸发器盘管的56℃', '通过以上3大优势，海尔56度C除菌空调让用户真正享受到健康呼吸。在3月13日19:00上线的56度C除菌空调嗨', '56度C代表着安全的温度。非常时期，家里衣物、餐具都要高温消毒，家里空气也要消毒除菌。2月26日，海尔空调行业首个发布了56度C除菌空调，实现“智慧自清洁，只吹干净风”的效果。仅半个月时间，56度C除菌成为行业热词，并引发行业跟进。\r\n\r\n通过对比发现，海尔56度C除菌空调具备独有的3大优势：\r\n\r\n1、唯一一个蒸发器翅片与盘管同时达到56℃以上除菌，实测最高超过60℃，而行业只能做到蒸发器盘管的56℃。\r\n\r\n2、唯一一个蒸发器56℃以上温度持续时间超过30分钟，最高达到60分钟。按照官方说法：温度达到56℃、持续30分钟，可以有效灭活新型冠状病毒。\r\n\r\n3、唯一一个拥有海外专利授权，目前除菌自清洁已获得欧盟、日本、俄罗斯等海外多个国家和地区的专利授权。\r\n\r\n通过以上3大优势，海尔56度C除菌空调让用户真正享受到健康呼吸。在3月13日19:00上线的56度C除菌空调嗨购盛典中，海尔空调线上为用户现场演示56度C、30分钟以上的空调除菌全过程。', '/uploads/20200316/482d001b1243a9840fd6003e88392141.png', '234', '1584362658', '1584362658', null);
INSERT INTO `wgg_web_cases` VALUES ('9', '8', '1', '腾讯无奈向苹果低头，阿里突然决定助推华为，向美巨头发起反击', '腾讯无奈向苹果低头', '随着移动互联网的不断发展，最近这几年中国的移动互联网市场也发展得极为迅猛，在中国还诞生了不少的移动互联网巨头公司，像腾讯、阿里巴巴、华为等企业都是中国家喻户晓的企业，而这些巨头企业的不断发展也给我们的生活带来了很大的便利', '下文转载自作者：小勇的科技世界\r\n\r\n点击关注，每天精彩不断！\r\n\r\n导读：腾讯无奈向苹果低头，阿里突然决定助推华为，向美巨头发起反击！\r\n\r\n随着移动互联网的不断发展，最近这几年中国的移动互联网市场也发展得极为迅猛，在中国还诞生了不少的移动互联网巨头公司，像腾讯、阿里巴巴、华为等企业都是中国家喻户晓的企业，而这些巨头企业的不断发展也给我们的生活带来了很大的便利，同时也极大地促进了我国经济的发展；但随着中国科技企业的不断发展和崛起，也让不少国外企业开始担心起中国企业的挑战起来，其中就包括美国的一些科技巨头企业！\r\n\r\n', '/uploads/20200316/9e16d0ab27d6983fbd70fdd8cd37f394.png', '234245', '1584362715', '1584598289', null);

-- ----------------------------
-- Table structure for `wgg_web_company`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_web_company`;
CREATE TABLE `wgg_web_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) DEFAULT '' COMMENT '公司名',
  `image` varchar(255) DEFAULT '' COMMENT 'logo图片',
  `jump_url` varchar(255) DEFAULT '' COMMENT '公司友链地址',
  `is_guest` tinyint(3) DEFAULT NULL COMMENT '是否客户（1是0否）',
  `is_friend` tinyint(3) DEFAULT NULL COMMENT '是否开启友链1是0否',
  `weigh` int(10) DEFAULT NULL COMMENT '权重',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='客户公司表';

-- ----------------------------
-- Records of wgg_web_company
-- ----------------------------
INSERT INTO `wgg_web_company` VALUES ('8', '百度', '/uploads/20200316/c431ad8aa050a63ce9288d6fec376bae.png', 'http://www.baidu.com', '1', '1', '8', '1584350123', '1584352282', null);
INSERT INTO `wgg_web_company` VALUES ('9', '360', '/uploads/20200316/c431ad8aa050a63ce9288d6fec376bae.png', 'http://www.baidu.com', '1', '1', '9', '1584350169', '1584352267', null);

-- ----------------------------
-- Table structure for `wgg_web_config`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_web_config`;
CREATE TABLE `wgg_web_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group` varchar(100) DEFAULT NULL COMMENT '组别',
  `config_key` varchar(100) DEFAULT '' COMMENT '配置键',
  `config_name` varchar(255) DEFAULT '' COMMENT '配置名',
  `config_value` text COMMENT '配置值',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`config_key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='网站配置表';

-- ----------------------------
-- Records of wgg_web_config
-- ----------------------------
INSERT INTO `wgg_web_config` VALUES ('100', 'seo_info', 'seo_index_title', '首页title', '首页', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('101', 'seo_info', 'seo_index_description', '首页description', '首页description', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('102', 'seo_info', 'seo_index_keyword', '首页keyword', '首页keyword', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('103', 'seo_info', 'seo_solution_title', '解决方案title', '解决方案title', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('104', 'seo_info', 'seo_solution_description', '解决方案description', '解决方案description', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('105', 'seo_info', 'seo_solution_keyword', '解决方案keyword', '解决方案keyword', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('106', 'seo_info', 'seo_product_title', '产品中心title', '产品中心title', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('107', 'seo_info', 'seo_product_description', '产品中心description', '产品中心description', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('108', 'seo_info', 'seo_product_keyword', '产品中心keyword', '产品中心keyword', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('109', 'seo_info', 'seo_customcase_title', '客户案例title', '客户案例title', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('110', 'seo_info', 'seo_customcase_description', '客户案例description', '客户案例description', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('111', 'seo_info', 'seo_customcase_keyword', '客户案例keyword', '客户案例keyword', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('112', 'seo_info', 'seo_news_title', '新闻资讯title', '新闻资讯title', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('113', 'seo_info', 'seo_news_description', '新闻资讯description', '新闻资讯description', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('114', 'seo_info', 'seo_news_keyword', '新闻资讯keyword', '新闻资讯keyword', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('115', 'seo_info', 'seo_aboutus_title', '关于我们title', '关于我们title', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('116', 'seo_info', 'seo_aboutus_description', '关于我们description', '关于我们description', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('117', 'seo_info', 'seo_aboutus_keyword', '关于我们keyword', '关于我们keyword', '1584537886', '1584537886', null);
INSERT INTO `wgg_web_config` VALUES ('118', 'company_info', 'contact_phone', '联系电话', '020-00000000', '1584595022', '1584595022', null);
INSERT INTO `wgg_web_config` VALUES ('119', 'company_info', 'contact_mobile', '联系手机', '18888888888', '1584595022', '1584595022', null);
INSERT INTO `wgg_web_config` VALUES ('120', 'company_info', 'contact_people', '联系人', '陈先生', '1584595022', '1584595022', null);
INSERT INTO `wgg_web_config` VALUES ('121', 'company_info', 'company_email', '官方邮箱', 'ch@wggai.com', '1584595022', '1584595022', null);
INSERT INTO `wgg_web_config` VALUES ('122', 'company_info', 'company_address', '公司地址', '广州番禺', '1584595022', '1584595022', null);
INSERT INTO `wgg_web_config` VALUES ('123', 'company_info', 'company_address_long', '公司地址经度', '113.35', '1584595022', '1584595022', null);
INSERT INTO `wgg_web_config` VALUES ('124', 'company_info', 'company_address_lat', '公司地址纬度', '22.95', '1584595022', '1584595022', null);
INSERT INTO `wgg_web_config` VALUES ('125', 'company_info', 'company_logo_image', '公司logo', '/uploads/20200318/89ada207657d9fd1eb1a8a63ead855fd.png', '1584595022', '1584595022', null);
INSERT INTO `wgg_web_config` VALUES ('126', 'company_info', 'company_copyright', '公司版权信息', 'Copyright © 2016-2020 广州市五宫格信息科技有限责任公司 版权所有 粤ICP备16092643号 - 1', '1584595022', '1584595022', null);
INSERT INTO `wgg_web_config` VALUES ('127', 'company_info', 'company_wechat_image', '公司二维码', '/uploads/20200318/15aedbdbe663663564e5c68b850943f8.png', '1584595022', '1584595022', null);
INSERT INTO `wgg_web_config` VALUES ('128', 'company_info', 'company_description', '公司简介', '广州市五宫格信息科技有限责任公司（以下简称五宫格科技），成立于2016年4月，总部位于广州市天河区，是一家技术驱动型公司，致力于用图像识别等技术及相关产品为客户提供更便捷优质的服务 广州市五宫格信息科技有限责任公司（以下简称五宫格科技），成立于2016年4月，总部位于广州市天河区，是一家技术驱动型公司，致力于用图像识别等技术及相关产品为客户提供更便捷优质的服务 广州市五宫格信息科技有限责任公司（以下简称五宫格科技），成立于2016年4月，总部位于广州市天河区，是一家技术驱动型公司，致力于用图像识别', '1584595022', '1584595022', null);
INSERT INTO `wgg_web_config` VALUES ('129', 'company_info', 'company_spirit', '公司精神', '广州市五宫格信息科技有限责任公司（以下简称五宫格科技）', '1584595022', '1584595022', null);
INSERT INTO `wgg_web_config` VALUES ('130', 'company_info', 'company_value_view', '核心价值观', '广州市五宫格信息科技有限责任公司（以下简称五宫格科技）', '1584595022', '1584595022', null);
INSERT INTO `wgg_web_config` VALUES ('131', 'company_info', 'company_manage_theory', '经营理念', '广州市五宫格信息科技有限责任公司（以下简称五宫格科技）', '1584595022', '1584595022', null);
INSERT INTO `wgg_web_config` VALUES ('132', 'company_info', 'company_dream', '公司愿景', '广州市五宫格信息科技有限责任公司（以下简称五宫格科技）', '1584595022', '1584595022', null);
INSERT INTO `wgg_web_config` VALUES ('133', 'company_info', 'image_url', '荣誉证书', '/uploads/20200318/b816eb071b961494d39232109201eb79.png,/uploads/20200318/fb62e4ff1639d97fb26dfd602cf98d52.png,/uploads/20200318/99c394998d7822eaad8f891fd38bda06.png', '1584595022', '1584595022', null);

-- ----------------------------
-- Table structure for `wgg_web_message`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_web_message`;
CREATE TABLE `wgg_web_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(50) DEFAULT '' COMMENT '用户名',
  `phone` varchar(30) DEFAULT '' COMMENT '电话',
  `reply_time` varchar(50) DEFAULT '' COMMENT '方便时间',
  `need` varchar(255) DEFAULT '' COMMENT '需求',
  `ip` varchar(50) DEFAULT NULL COMMENT 'ip',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户留言表';

-- ----------------------------
-- Records of wgg_web_message
-- ----------------------------
INSERT INTO `wgg_web_message` VALUES ('11', '马云', '13450290122', '9:00-12:00', '\n                        ', '127.0.0.1', '1584527770', null, null);
INSERT INTO `wgg_web_message` VALUES ('12', 'admin', '13450290122', '18:00-21:00', '\n                        ', '127.0.0.1', '1584527894', null, null);
INSERT INTO `wgg_web_message` VALUES ('13', 'sdfsd', '13450290122', '无', '\n                        ', '127.0.0.1', '1584527963', null, null);
INSERT INTO `wgg_web_message` VALUES ('14', 'werwer', '13450290122', '无', '\n                        ', '127.0.0.1', '1584528084', null, null);
INSERT INTO `wgg_web_message` VALUES ('16', '34234', '13450290122', '无', '\n                        ', '127.0.0.1', '1584528144', null, null);
INSERT INTO `wgg_web_message` VALUES ('24', 'admin', '13450290122', '无', '\n                        ', '127.0.0.1', '1584528812', null, null);
INSERT INTO `wgg_web_message` VALUES ('25', '32', '13450290122', '9:00-12:00', '\n                        ', '127.0.0.1', '1584528897', null, null);
INSERT INTO `wgg_web_message` VALUES ('26', 'we', '13450290122', '无', '\n                        ', '127.0.0.1', '1584528942', null, null);
INSERT INTO `wgg_web_message` VALUES ('27', 'rer', '13450290122', '无', '\n                        ', '127.0.0.1', '1584528965', null, null);

-- ----------------------------
-- Table structure for `wgg_web_news`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_web_news`;
CREATE TABLE `wgg_web_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category_id` int(10) DEFAULT '0' COMMENT '分类id',
  `name` varchar(50) DEFAULT '' COMMENT '标题',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `content` mediumtext COMMENT '内容',
  `image_url` varchar(255) DEFAULT NULL COMMENT '图片url',
  `click_count` int(10) DEFAULT NULL COMMENT '点击次数',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='新闻表';

-- ----------------------------
-- Records of wgg_web_news
-- ----------------------------
INSERT INTO `wgg_web_news` VALUES ('7', '1', '比尔盖茨退出微软董事会，20年共捐出538亿美元', '比尔盖茨，微软', '微软公司周五宣布，公司联合创始人兼技术顾问比尔-盖茨（Bill Gates）辞去董事会职务，将更多时间用于慈善事业，其中包括全球健康、发展、教育，以及他在应对气候变化方面越来越多的投入', '微软表示，比尔-盖茨将继续担任首席执行官萨蒂亚-纳德拉（Satya Nadella）和公司其他领导人的技术顾问。\r\n\r\n比尔-盖茨2014年卸任微软董事会主席，但他从2008年开始就将更多时间和精力投入到盖茨基金会，这是世界上最大的慈善机构之一，拥有数十亿美元资产，为抗击疾病和消除贫困的全球卫生项目提供资金。\r\n\r\n', '/uploads/20200316/b0ebabd0b6093132da11f8e924161e6a.jpg', '122', '1584359277', '1584359277', null);
INSERT INTO `wgg_web_news` VALUES ('8', '1', '腾讯无奈向苹果低头，阿里突然决定助推华为，向美巨头发起反击', '腾讯，苹果', '随着移动互联网的不断发展，最近这几年中国的移动互联网市场也发展得极为迅猛，在中国还诞生了不少的移动互联网巨头公司，像腾讯、阿里巴巴、华为等企业都是中国家喻户晓的企业，而这些巨头企业的不断发展也给我们的生活带来了很大的便利', '导读：腾讯无奈向苹果低头，阿里突然决定助推华为，向美巨头发起反击！\r\n\r\n随着移动互联网的不断发展，最近这几年中国的移动互联网市场也发展得极为迅猛，在中国还诞生了不少的移动互联网巨头公司，像腾讯、阿里巴巴、华为等企业都是中国家喻户晓的企业，而这些巨头企业的不断发展也给我们的生活带来了很大的便利，同时也极大地促进了我国经济的发展；但随着中国科技企业的不断发展和崛起，也让不少国外企业开始担心起中国企业的挑战起来，其中就包括美国的一些科技巨头企业！', '/uploads/20200316/d24704353b609f131f0881fa7b7a25c4.jpg', '234', '1584359349', '1584359349', null);
INSERT INTO `wgg_web_news` VALUES ('9', '1', '苹果跪了，iOS14提前泄露，暴露所有新品', '苹果', '不知道苹果是不是准备开线上发布会，需要提前预热的关系，居然在iOS 13.4 Beta中隐藏了许多新功能。泄漏的阀门一旦打开就关不上了，除了iOS 13.4泄了，就连6月份才发布的iOS 14也被泄露系统代码，把新功能新机型都给扒得一干二净。', '所以没收到的朋友也不用心急，估计在iOS 13.4正式版或者之后的版本就会推出，咱们还是再等等叭。\r\n\r\n小雷还是挺期待的，因为以后就不用再带多一张实体卡了，同时还能享受乘车优惠。\r\n\r\nOS Recovery：系统恢复\r\n\r\niOS 13.4中泄露的新功能可不止一个。\r\n\r\n国外有位大神还在iOS 13.4 测试版中找到一张名为“OS Recovery（系统恢复）”新功能的图片。', '/uploads/20200316/d1aad9a00d756bbb64ee250a84ff9bd4.jpg', '350', '1584359412', '1584766398', null);

-- ----------------------------
-- Table structure for `wgg_web_product`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_web_product`;
CREATE TABLE `wgg_web_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category_id` int(10) DEFAULT NULL COMMENT '产品分类',
  `name` varchar(50) DEFAULT '' COMMENT '产品名',
  `logo_image` varchar(255) DEFAULT '' COMMENT '产品logo',
  `single_image` varchar(255) DEFAULT '' COMMENT '产品单图',
  `banner_image` varchar(255) DEFAULT NULL COMMENT 'banner图',
  `util` varchar(255) DEFAULT '' COMMENT '产品功能',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) DEFAULT NULL COMMENT '产品描述',
  `content` mediumtext COMMENT '产品内容',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='产品表';

-- ----------------------------
-- Records of wgg_web_product
-- ----------------------------
INSERT INTO `wgg_web_product` VALUES ('8', '8', '视觉结算系统', '/uploads/20200317/ef960bd3e4e3fd98424fbdec95cc3bae.png', '/uploads/20200317/b816eb071b961494d39232109201eb79.png', '/uploads/20200316/65f7fe144884cd0cc2c6206320c0779a.png', 'Ai智能结算|菜品识别|人脸识别支付|精准备餐,有量有结|数据准确，操作简便', 'Ai智能结算，菜品识别', 'Ai智能结算，菜品识别Ai智能结算，菜品识别', '<p>Ai智能结算，菜品识别Ai智能结算，菜品识别<br></p>', '1584415873', '1584608807', null);
INSERT INTO `wgg_web_product` VALUES ('9', '9', '在线订餐系统', '/uploads/20200317/8d216ee6fa3c31baaa92f02f858b7727.png', '/uploads/20200317/fb62e4ff1639d97fb26dfd602cf98d52.png', '/uploads/20200316/65f7fe144884cd0cc2c6206320c0779a.png', '微信预定，在线点餐|配送管理|在线充值|营养分析|消费记录查询|智能取餐|菜品，菜谱管理|人脸核销订单|人脸信息采集', '微信预定，在线点餐|配送管理|在线充值', '微信预定，在线点餐|配送管理|在线充值', '<p>微信预定，在线点餐|配送管理|在线充值微信预定，在线点餐|配送管理|在线充值<br></p>', '1584416074', '1584608787', null);
INSERT INTO `wgg_web_product` VALUES ('10', '10', '无感称重系统', '/uploads/20200317/42dac39557ce01c1b6acd694351aff2c.png', '/uploads/20200317/99c394998d7822eaad8f891fd38bda06.png', '/uploads/20200316/65f7fe144884cd0cc2c6206320c0779a.png', '一菜一价|自助选参体验|促进光盘行动|精细运营管理|降低人力成本|智能称重计算|无感支付|多维度数据运营分析', '一菜一价|自助选参体验|促进光盘行动|精细运营管理|降低人力成本|智能称重计算|无感支付|多维度数据运营分析', '一菜一价|自助选参体验|促进光盘行动|精细运营管理|降低人力成本|智能称重计算|无感支付|多维度数据运营分析', '<p>werwrwerew</p>', '1584416246', '1584608772', null);
INSERT INTO `wgg_web_product` VALUES ('11', '11', '智能保温选参柜', '/uploads/20200317/a537da8c3842b51f8965eacf120d7da7.png', '/uploads/20200317/247abaa200be7d90be94e98e35b9a372.png', '/uploads/20200316/65f7fe144884cd0cc2c6206320c0779a.png', '智能取餐柜|保温备餐台|人脸识别终端|营养菜价标签|智能托盘机', '智能取餐柜|保温备餐台|人脸识别终端|营养菜价标签|智能托盘机', '智能取餐柜|保温备餐台|人脸识别终端|营养菜价标签|智能托盘机', '<p>智能取餐柜|保温备餐台|人脸识别终端|营养菜价标签|智能托盘机<br></p>', '1584416337', '1584608758', null);

-- ----------------------------
-- Table structure for `wgg_web_productcategory`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_web_productcategory`;
CREATE TABLE `wgg_web_productcategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) DEFAULT '' COMMENT '产品分类名',
  `logo_image` varchar(255) DEFAULT '' COMMENT 'logo',
  `single_image` varchar(255) DEFAULT '' COMMENT '单图',
  `banner_image` varchar(255) DEFAULT NULL COMMENT 'banner图',
  `util` varchar(255) DEFAULT '' COMMENT '产品功能',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='产品分类表';

-- ----------------------------
-- Records of wgg_web_productcategory
-- ----------------------------
INSERT INTO `wgg_web_productcategory` VALUES ('8', '视觉结算系统', '/uploads/20200317/ef960bd3e4e3fd98424fbdec95cc3bae.png', '/uploads/20200317/b816eb071b961494d39232109201eb79.png', '/uploads/20200316/65f7fe144884cd0cc2c6206320c0779a.png', 'Ai智能结算|菜品识别|人脸识别支付|精准备餐,有量有结|数据准确，操作简便', 'Ai智能结算，菜品识别', 'Ai智能结算，菜品识别Ai智能结算，菜品识别', '1584415873', '1584586210', null);
INSERT INTO `wgg_web_productcategory` VALUES ('9', '在线订餐系统', '/uploads/20200317/8d216ee6fa3c31baaa92f02f858b7727.png', '/uploads/20200317/fb62e4ff1639d97fb26dfd602cf98d52.png', '/uploads/20200316/65f7fe144884cd0cc2c6206320c0779a.png', '微信预定，在线点餐|配送管理|在线充值|营养分析|消费记录查询|智能取餐|菜品，菜谱管理|人脸核销订单|人脸信息采集', '微信预定，在线点餐|配送管理|在线充值', '微信预定，在线点餐|配送管理|在线充值', '1584416074', '1584586182', null);
INSERT INTO `wgg_web_productcategory` VALUES ('10', '无感称重系统', '/uploads/20200317/42dac39557ce01c1b6acd694351aff2c.png', '/uploads/20200317/99c394998d7822eaad8f891fd38bda06.png', '/uploads/20200316/65f7fe144884cd0cc2c6206320c0779a.png', '一菜一价|自助选参体验|促进光盘行动|精细运营管理|降低人力成本|智能称重计算|无感支付|多维度数据运营分析', '一菜一价|自助选参体验|促进光盘行动|精细运营管理|降低人力成本|智能称重计算|无感支付|多维度数据运营分析', '一菜一价|自助选参体验|促进光盘行动|精细运营管理|降低人力成本|智能称重计算|无感支付|多维度数据运营分析', '1584416246', '1584586158', null);
INSERT INTO `wgg_web_productcategory` VALUES ('11', '智能保温选参柜', '/uploads/20200317/a537da8c3842b51f8965eacf120d7da7.png', '/uploads/20200317/247abaa200be7d90be94e98e35b9a372.png', '/uploads/20200316/65f7fe144884cd0cc2c6206320c0779a.png', '智能取餐柜|保温备餐台|人脸识别终端|营养菜价标签|智能托盘机', '智能取餐柜|保温备餐台|人脸识别终端|营养菜价标签|智能托盘机', '智能取餐柜|保温备餐台|人脸识别终端|营养菜价标签|智能托盘机', '1584416337', '1584586091', null);

-- ----------------------------
-- Table structure for `wgg_web_solution`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_web_solution`;
CREATE TABLE `wgg_web_solution` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) DEFAULT '' COMMENT '产品名',
  `logo_image` varchar(255) DEFAULT '' COMMENT '解决方案logo',
  `single_image` varchar(255) DEFAULT '' COMMENT '单图',
  `banner_image` varchar(255) DEFAULT NULL COMMENT 'banner图',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` text COMMENT '描述',
  `content` mediumtext COMMENT '内容',
  `template` varchar(50) DEFAULT NULL COMMENT '模板名',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='解决方案表';

-- ----------------------------
-- Records of wgg_web_solution
-- ----------------------------
INSERT INTO `wgg_web_solution` VALUES ('12', '智慧食堂', '/uploads/20200317/65f7fe144884cd0cc2c6206320c0779a.png', '/uploads/20200317/65f7fe144884cd0cc2c6206320c0779a.png', '/uploads/20200317/65f7fe144884cd0cc2c6206320c0779a.png', '智慧食堂', '智慧食堂智慧食堂智慧食堂智慧食堂智慧食堂', '<p>智慧食堂智慧食堂智慧食堂智慧食堂智慧食堂智慧食堂<br></p>', '智慧食堂', '1584418333', '1584586290', null);
INSERT INTO `wgg_web_solution` VALUES ('13', '自选餐', '/uploads/20200317/65f7fe144884cd0cc2c6206320c0779a.png', '/uploads/20200317/65f7fe144884cd0cc2c6206320c0779a.png', '/uploads/20200317/65f7fe144884cd0cc2c6206320c0779a.png', '自选餐', '自选餐', '自选餐', '自选餐', '1584418333', '1584586277', null);
INSERT INTO `wgg_web_solution` VALUES ('14', '预定套取餐', '/uploads/20200317/65f7fe144884cd0cc2c6206320c0779a.png', '/uploads/20200317/65f7fe144884cd0cc2c6206320c0779a.png', '/uploads/20200317/65f7fe144884cd0cc2c6206320c0779a.png', '预定套取餐', '预定套取餐', '预定套取餐', '预定套取餐', '1584418333', '1584586264', null);
INSERT INTO `wgg_web_solution` VALUES ('15', '自助餐', '/uploads/20200317/65f7fe144884cd0cc2c6206320c0779a.png', '/uploads/20200317/65f7fe144884cd0cc2c6206320c0779a.png', '/uploads/20200317/65f7fe144884cd0cc2c6206320c0779a.png', '自助餐', '自助餐', '自助餐', '自助餐', '1584418333', '1584586250', null);

-- ----------------------------
-- Table structure for `wgg_web_visitlog`
-- ----------------------------
DROP TABLE IF EXISTS `wgg_web_visitlog`;
CREATE TABLE `wgg_web_visitlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `ip` varchar(50) DEFAULT '' COMMENT '用户ip',
  `referer` varchar(255) DEFAULT NULL COMMENT '访问来源',
  `url` varchar(50) DEFAULT '' COMMENT '访问路由',
  `full_url` varchar(255) DEFAULT '' COMMENT '全地址',
  `group` varchar(30) DEFAULT NULL COMMENT '所属模块',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=687 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='访问日志表';

-- ----------------------------
-- Records of wgg_web_visitlog
-- ----------------------------
INSERT INTO `wgg_web_visitlog` VALUES ('11', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584530653', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('12', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584531113', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('13', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/news/index/category_id/1.html', '/index/news/index/category_id/1.html', 'News', '1584531118', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('14', '127.0.0.1', 'http://local.wgg.com/index/news/index/category_id/1.html', '/index/news/detail/id/9', '/index/news/detail/id/9', 'News', '1584531122', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('15', '127.0.0.1', 'http://local.wgg.com/index/news/index/category_id/1.html', '/index/news/detail/id/9', '/index/news/detail/id/9', 'News', '1584531127', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('16', '127.0.0.1', 'http://local.wgg.com/index/news/index/category_id/1.html', '/index/news/detail/id/9', '/index/news/detail/id/9', 'News', '1584532329', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('17', '127.0.0.1', 'http://local.wgg.com/index/news/detail/id/9', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584532440', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('18', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584532446', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('19', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/index/index.html', '/index/index/index.html', 'Index', '1584532456', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('20', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/index/index.html', '/index/index/index.html', 'Index', '1584540425', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('21', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/index/index.html', '/index/index/index.html', 'Index', '1584540444', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('22', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/index/index.html', '/index/index/index.html', 'Index', '1584540480', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('23', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584540508', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('24', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584540523', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('25', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584540550', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('26', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584540726', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('27', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584540776', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('28', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584540781', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('29', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/news/index.html', '/index/news/index.html', 'News', '1584540798', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('30', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584540807', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('31', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584540878', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('32', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584540882', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('33', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584540906', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('34', '127.0.0.1', '', '/', '/', 'Index', '1584584713', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('35', '127.0.0.1', 'http://local.wgg.com/', '/index/customcase/index/category_id/1.html', '/index/customcase/index/category_id/1.html', 'Customcase', '1584584733', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('36', '127.0.0.1', 'http://local.wgg.com/index/customcase/index/category_id/1.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584584738', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('37', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/customcase/index/category_id/1.html', '/index/customcase/index/category_id/1.html', 'Customcase', '1584585067', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('38', '127.0.0.1', 'http://local.wgg.com/index/customcase/index/category_id/1.html', '/index/customcase/index', '/index/customcase/index?&pageIndex=1&eachPage=10&category_id=2', 'Customcase', '1584585135', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('39', '127.0.0.1', 'http://local.wgg.com/index/customcase/index?&pageIndex=1&eachPage=10&category_id=2', '/index/customcase/index', '/index/customcase/index?&pageIndex=1&eachPage=10&category_id=1', 'Customcase', '1584585137', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('40', '127.0.0.1', 'http://local.wgg.com/index/customcase/index?&pageIndex=1&eachPage=10&category_id=1', '/index/news/index/category_id/1.html', '/index/news/index/category_id/1.html', 'News', '1584585143', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('41', '127.0.0.1', 'http://local.wgg.com/index/news/index/category_id/1.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584585148', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('42', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584585163', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('43', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/contactus/index', '/index/contactus/index', 'Contactus', '1584586423', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('44', '127.0.0.1', 'http://local.wgg.com/index/contactus/index', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584586426', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('45', '127.0.0.1', 'http://local.wgg.com/index/contactus/index', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584591523', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('46', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/index/index.html', '/index/index/index.html', 'Index', '1584591577', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('47', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584591646', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('48', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584591904', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('49', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584591909', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('50', '127.0.0.1', 'http://local.wgg.com/index/product/detail.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584591952', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('51', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us.html', '/index/contactus/contact_us.html', 'Contactus', '1584591957', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('52', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584591971', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('53', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/news/index', '/index/news/index?&pageIndex=1&eachPage=10&category_id=1', 'News', '1584591974', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('54', '127.0.0.1', 'http://local.wgg.com/index/news/index?&pageIndex=1&eachPage=10&category_id=1', '/index/news/index', '/index/news/index?&pageIndex=1&eachPage=10', 'News', '1584591976', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('55', '127.0.0.1', 'http://local.wgg.com/index/news/index?&pageIndex=1&eachPage=10', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584591989', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('56', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584591994', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('57', '127.0.0.1', 'http://local.wgg.com/index/product/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584591998', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('58', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584592021', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('59', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584592028', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('60', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584592032', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('61', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/customcase/index/category_id/1.html', '/index/customcase/index/category_id/1.html', 'Customcase', '1584592066', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('62', '127.0.0.1', 'http://local.wgg.com/index/customcase/index/category_id/1.html', '/index/customcase/detail/id/9', '/index/customcase/detail/id/9', 'Customcase', '1584592068', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('63', '127.0.0.1', 'http://local.wgg.com/index/customcase/detail/id/9', '/index/product/detail/id/8.html', '/index/product/detail/id/8.html', 'Product', '1584592112', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('64', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584592117', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('65', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584592122', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('66', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584592125', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('67', '127.0.0.1', 'http://local.wgg.com/index/product/detail.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584593033', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('68', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584593038', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('69', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584593041', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('70', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584593043', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('71', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=15', '/index/index/index.html', '/index/index/index.html', 'Index', '1584593095', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('72', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584593154', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('73', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail/id/12.html', '/index/solution/detail/id/12.html', 'Solution', '1584593157', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('74', '127.0.0.1', 'http://local.wgg.com/index/solution/detail/id/12.html', '/index/solution/detail/id/13.html', '/index/solution/detail/id/13.html', 'Solution', '1584593159', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('75', '127.0.0.1', 'http://local.wgg.com/index/solution/detail/id/13.html', '/index/solution/detail/id/14.html', '/index/solution/detail/id/14.html', 'Solution', '1584593162', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('76', '127.0.0.1', 'http://local.wgg.com/index/solution/detail/id/14.html', '/index/solution/detail/id/15.html', '/index/solution/detail/id/15.html', 'Solution', '1584593165', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('77', '127.0.0.1', 'http://local.wgg.com/index/solution/detail/id/15.html', '/index/product/detail/id/8.html', '/index/product/detail/id/8.html', 'Product', '1584593169', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('78', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/solution/detail/id/12.html', '/index/solution/detail/id/12.html', 'Solution', '1584593173', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('79', '127.0.0.1', 'http://local.wgg.com/index/solution/detail/id/12.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584593182', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('80', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584593185', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('81', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=12', 'Solution', '1584593187', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('82', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/product/detail/id/8.html', '/index/product/detail/id/8.html', 'Product', '1584593210', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('83', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/solution/detail/id/12.html', '/index/solution/detail/id/12.html', 'Solution', '1584593213', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('84', '127.0.0.1', 'http://local.wgg.com/index/solution/detail/id/12.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584593221', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('85', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584593225', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('86', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584593316', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('87', '127.0.0.1', 'http://local.wgg.com/index/product/detail.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584593320', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('88', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584593322', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('89', '127.0.0.1', 'http://local.wgg.com/index/product/detail.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584593373', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('90', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584593380', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('91', '127.0.0.1', 'http://local.wgg.com/index/product/detail.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584595072', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('92', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584595075', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('93', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584595085', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('94', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584595147', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('95', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584595165', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('96', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584595283', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('97', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584595308', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('98', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/contactus/index', '/index/contactus/index', 'Contactus', '1584595557', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('99', '127.0.0.1', 'http://local.wgg.com/index/contactus/index', '/index/news/index.html', '/index/news/index.html', 'News', '1584595563', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('100', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584595569', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('101', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584595572', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('102', '127.0.0.1', 'http://local.wgg.com/index/product/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584595576', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('103', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584595586', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('104', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584595591', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('105', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584595602', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('106', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584595608', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('107', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584595611', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('108', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584596073', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('109', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584596126', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('110', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584596155', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('111', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584596219', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('112', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584596567', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('113', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584596679', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('114', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584596827', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('115', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584596974', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('116', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584597526', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('117', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584597643', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('118', '127.0.0.1', 'http://local.wgg.com/index/product/detail.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584597647', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('119', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584597652', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('120', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584597690', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('121', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584597734', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('122', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584597859', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('123', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584597888', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('124', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584597902', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('125', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584597910', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('126', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584598025', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('127', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584598130', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('128', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584598140', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('129', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584598221', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('130', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail/id/12.html', '/index/solution/detail/id/12.html', 'Solution', '1584598254', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('131', '127.0.0.1', 'http://local.wgg.com/index/solution/detail/id/12.html', '/index/product/detail/id/8.html', '/index/product/detail/id/8.html', 'Product', '1584598258', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('132', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/customcase/index/category_id/1.html', '/index/customcase/index/category_id/1.html', 'Customcase', '1584598264', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('133', '127.0.0.1', 'http://local.wgg.com/index/customcase/index/category_id/1.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584598268', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('134', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584598272', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('135', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/solution/detail/id/12.html', '/index/solution/detail/id/12.html', 'Solution', '1584598278', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('136', '127.0.0.1', 'http://local.wgg.com/index/solution/detail/id/12.html', '/index/product/detail/id/8.html', '/index/product/detail/id/8.html', 'Product', '1584598280', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('137', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/solution/detail/id/12.html', '/index/solution/detail/id/12.html', 'Solution', '1584598284', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('138', '127.0.0.1', 'http://local.wgg.com/index/solution/detail/id/12.html', '/index/customcase/index/category_id/1.html', '/index/customcase/index/category_id/1.html', 'Customcase', '1584598287', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('139', '127.0.0.1', 'http://local.wgg.com/index/customcase/index/category_id/1.html', '/index/customcase/detail/id/9', '/index/customcase/detail/id/9', 'Customcase', '1584598289', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('140', '127.0.0.1', 'http://local.wgg.com/index/customcase/detail/id/9', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584598297', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('141', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584598352', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('142', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/contactus/index', '/index/contactus/index', 'Contactus', '1584598363', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('143', '127.0.0.1', 'http://local.wgg.com/index/contactus/index', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584598367', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('144', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584598369', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('145', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584598454', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('146', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584598495', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('147', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/product/detail', '/index/product/detail', 'Product', '1584598498', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('148', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/customcase/index', '/index/customcase/index', 'Customcase', '1584598505', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('149', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail/id/12.html', '/index/solution/detail/id/12.html', 'Solution', '1584599084', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('150', '127.0.0.1', 'http://local.wgg.com/index/solution/detail/id/12.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584599138', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('151', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail/id/12.html', '/index/solution/detail/id/12.html', 'Solution', '1584599190', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('152', '127.0.0.1', 'http://local.wgg.com/index/solution/detail/id/12.html', '/index/customcase/index/category_id/1.html', '/index/customcase/index/category_id/1.html', 'Customcase', '1584599194', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('153', '127.0.0.1', 'http://local.wgg.com/index/customcase/index/category_id/1.html', '/index/news/index/category_id/1.html', '/index/news/index/category_id/1.html', 'News', '1584599198', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('154', '127.0.0.1', 'http://local.wgg.com/index/news/index/category_id/1.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584599202', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('155', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584599207', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('156', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/contactus/do_message', '/index/contactus/do_message', 'Contactus', '1584599222', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('157', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/news/index.html', '/index/news/index.html', 'News', '1584599250', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('158', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584599257', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('159', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584599260', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('160', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/detail.html', '/index/product/detail.html', 'Product', '1584599549', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('161', '127.0.0.1', 'http://local.wgg.com/index/product/detail.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584599552', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('162', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584599555', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('163', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584599558', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('164', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584599565', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('165', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584599577', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('166', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584599580', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('167', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584599584', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('168', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584599587', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('169', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584601776', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('170', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584604696', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('171', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584604704', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('172', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/product/detail/id/8.html', '/index/product/detail/id/8.html', 'Product', '1584610783', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('173', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/product/detail/id/8.html', '/index/product/detail/id/8.html', 'Product', '1584610843', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('174', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584610845', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('175', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584610889', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('176', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584611521', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('177', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584611561', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('178', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584611687', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('179', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584611707', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('180', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584611802', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('181', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584611854', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('182', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584611894', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('183', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584611914', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('184', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584611942', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('185', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584611980', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('186', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584611998', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('187', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584612015', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('188', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584612028', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('189', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584612041', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('190', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584612054', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('191', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584612061', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('192', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584612070', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('193', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584612083', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('194', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584612096', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('195', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584612109', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('196', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584612128', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('197', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584612199', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('198', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584612218', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('199', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584612227', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('200', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584612381', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('201', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584612438', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('202', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index/id/8.html', '/index/product/product_category_index', '/index/product/product_category_index?&id=9', 'Product', '1584612540', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('203', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/product/product_category_index', '/index/product/product_category_index?&id=8', 'Product', '1584612546', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('204', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=8', '/index/product/product_category_index', '/index/product/product_category_index?&id=10', 'Product', '1584612557', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('205', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=10', '/index/product/product_category_index', '/index/product/product_category_index?&id=11', 'Product', '1584612565', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('206', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=11', '/index/product/product_category_index', '/index/product/product_category_index?&id=8', 'Product', '1584612568', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('207', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=11', '/index/product/product_category_index', '/index/product/product_category_index?&id=8', 'Product', '1584612625', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('208', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=11', '/index/product/product_category_index', '/index/product/product_category_index?&id=8', 'Product', '1584613285', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('209', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=8', '/index/product/product_category_index', '/index/product/product_category_index?&id=9', 'Product', '1584613331', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('210', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/product/product_category_index', '/index/product/product_category_index?&id=10', 'Product', '1584613335', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('211', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=10', '/index/product/product_category_index', '/index/product/product_category_index?&id=9', 'Product', '1584613408', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('212', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/product/product_category_index', '/index/product/product_category_index?&id=11', 'Product', '1584613411', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('213', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=11', '/index/product/product_category_index', '/index/product/product_category_index?&id=8', 'Product', '1584613420', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('214', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=8', '/index/product/product_category_index', '/index/product/product_category_index?&id=9', 'Product', '1584613424', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('215', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=8', '/index/product/product_category_index', '/index/product/product_category_index?&id=9', 'Product', '1584613486', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('216', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=8', '/index/product/product_category_index', '/index/product/product_category_index?&id=9', 'Product', '1584613499', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('217', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/product/detail/id/9.html', '/index/product/detail/id/9.html', 'Product', '1584614679', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('218', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/product/detail/id/9.html', '/index/product/detail/id/9.html', 'Product', '1584614705', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('219', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/product/detail/id/9.html', '/index/product/detail/id/9.html', 'Product', '1584614754', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('220', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/product/detail/id/9.html', '/index/product/detail/id/9.html', 'Product', '1584614826', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('221', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/product/detail/id/9.html', '/index/product/detail/id/9.html', 'Product', '1584614865', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('222', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/9.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584614867', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('223', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index/id/8.html', '/index/product/detail/id/8.html', '/index/product/detail/id/8.html', 'Product', '1584614872', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('224', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index/id/8.html', '/index/product/detail/id/8.html', '/index/product/detail/id/8.html', 'Product', '1584614902', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('225', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index/id/8.html', '/index/product/detail/id/8.html', '/index/product/detail/id/8.html', 'Product', '1584614935', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('226', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index/id/8.html', '/index/product/detail/id/8.html', '/index/product/detail/id/8.html', 'Product', '1584614960', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('227', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/8.html', '/index/product/product_category_index/id/9.html', '/index/product/product_category_index/id/9.html', 'Product', '1584614975', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('228', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index/id/9.html', '/index/product/detail/id/9.html', '/index/product/detail/id/9.html', 'Product', '1584614978', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('229', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/9.html', '/index/product/product_category_index/id/9.html', '/index/product/product_category_index/id/9.html', 'Product', '1584614990', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('230', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index/id/9.html', '/index/product/detail/id/9.html', '/index/product/detail/id/9.html', 'Product', '1584614993', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('231', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/9.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584614995', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('232', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/product/product_category_index', '/index/product/product_category_index?&id=9', 'Product', '1584615000', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('233', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/product/product_category_index', '/index/product/product_category_index?&id=10', 'Product', '1584615002', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('234', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=10', '/index/product/detail/id/10.html', '/index/product/detail/id/10.html', 'Product', '1584615007', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('235', '127.0.0.1', 'http://local.wgg.com/index/product/detail/id/10.html', '/index/product/product_category_index/id/8.html', '/index/product/product_category_index/id/8.html', 'Product', '1584615020', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('236', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index/id/8.html', '/index/product/product_category_index', '/index/product/product_category_index?&id=9', 'Product', '1584615048', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('237', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/product/product_category_index', '/index/product/product_category_index?&id=10', 'Product', '1584615050', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('238', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=10', '/index/product/product_category_index', '/index/product/product_category_index?&id=11', 'Product', '1584615053', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('239', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=11', '/index/customcase/index/category_id/3.html', '/index/customcase/index/category_id/3.html', 'Customcase', '1584615062', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('240', '127.0.0.1', 'http://local.wgg.com/index/customcase/index/category_id/3.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584615064', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('241', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584615070', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('242', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584615961', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('243', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584615974', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('244', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584616115', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('245', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584616156', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('246', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584616222', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('247', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584616272', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('248', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/customcase/index/category_id/1.html', '/index/customcase/index/category_id/1.html', 'Customcase', '1584616280', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('249', '127.0.0.1', 'http://local.wgg.com/index/customcase/index/category_id/1.html', '/index/news/index/category_id/1.html', '/index/news/index/category_id/1.html', 'News', '1584616284', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('250', '127.0.0.1', 'http://local.wgg.com/index/news/index/category_id/1.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584616288', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('251', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584616291', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('252', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/index/index.html', '/index/index/index.html', 'Index', '1584616298', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('253', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/contactus/index', '/index/contactus/index', 'Contactus', '1584616318', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('254', '127.0.0.1', 'http://local.wgg.com/index/contactus/index', '/index/index/index.html', '/index/index/index.html', 'Index', '1584616326', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('255', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584616340', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('256', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/product/product_category_index', '/index/product/product_category_index?&id=9', 'Product', '1584616353', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('257', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/product/product_category_index', '/index/product/product_category_index?&id=10', 'Product', '1584616356', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('258', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=10', '/index/product/product_category_index', '/index/product/product_category_index?&id=11', 'Product', '1584616359', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('259', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=11', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584616515', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('260', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=11', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584616572', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('261', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584616605', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('262', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584616635', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('263', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584616647', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('264', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584616650', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('265', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584616665', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('266', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584616697', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('267', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584616723', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('268', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584616736', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('269', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584616882', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('270', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584616887', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('271', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584616894', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('272', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584616910', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('273', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584616915', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('274', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584616929', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('275', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584616934', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('276', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584616957', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('277', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584616964', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('278', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584617108', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('279', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584617112', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('280', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584617115', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('281', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584617119', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('282', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584617124', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('283', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584617130', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('284', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584618981', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('285', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584618987', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('286', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584618990', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('287', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584618994', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('288', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584619017', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('289', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/index/index.html', '/index/index/index.html', 'Index', '1584619053', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('290', '127.0.0.1', '', '/', '/', 'Index', '1584668499', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('291', '127.0.0.1', '', '/', '/', 'Index', '1584669056', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('292', '127.0.0.1', '', '/', '/', 'Index', '1584669134', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('293', '127.0.0.1', '', '/', '/', 'Index', '1584669166', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('294', '127.0.0.1', '', '/', '/', 'Index', '1584669173', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('295', '127.0.0.1', '', '/', '/', 'Index', '1584669193', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('296', '127.0.0.1', '', '/', '/', 'Index', '1584669199', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('297', '127.0.0.1', '', '/', '/', 'Index', '1584669219', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('298', '127.0.0.1', '', '/', '/', 'Index', '1584669725', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('299', '127.0.0.1', '', '/', '/', 'Index', '1584670039', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('300', '127.0.0.1', '', '/', '/', 'Index', '1584670078', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('301', '127.0.0.1', '', '/', '/', 'Index', '1584670178', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('302', '127.0.0.1', '', '/', '/', 'Index', '1584670211', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('303', '127.0.0.1', '', '/', '/', 'Index', '1584670217', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('304', '127.0.0.1', '', '/', '/', 'Index', '1584670229', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('305', '127.0.0.1', '', '/', '/', 'Index', '1584670243', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('306', '127.0.0.1', '', '/', '/', 'Index', '1584670252', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('307', '127.0.0.1', '', '/', '/', 'Index', '1584670327', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('308', '127.0.0.1', '', '/', '/', 'Index', '1584670335', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('309', '127.0.0.1', '', '/', '/', 'Index', '1584670390', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('310', '127.0.0.1', '', '/', '/', 'Index', '1584670404', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('311', '127.0.0.1', '', '/', '/', 'Index', '1584670447', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('312', '127.0.0.1', 'http://local.wgg.com/', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584670521', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('313', '127.0.0.1', 'http://local.wgg.com/', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584670526', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('314', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/product/product_category_index', '/index/product/product_category_index?&id=9', 'Product', '1584670531', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('315', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/product/product_category_index', '/index/product/product_category_index?&id=10', 'Product', '1584670533', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('316', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=10', '/index/product/product_category_index', '/index/product/product_category_index?&id=11', 'Product', '1584670537', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('317', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=11', '/index/product/product_category_index', '/index/product/product_category_index?&id=8', 'Product', '1584670544', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('318', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=8', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584670556', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('319', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584670563', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('320', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584670576', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('321', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584670579', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('322', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/news/index.html', '/index/news/index.html', 'News', '1584670632', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('323', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584670634', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('324', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584670637', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('325', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584670640', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('326', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584670654', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('327', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584670657', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('328', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584670659', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('329', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584671967', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('330', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584671997', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('331', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584672000', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('332', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584672006', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('333', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584672012', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('334', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584672034', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('335', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584672052', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('336', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584672124', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('337', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584672192', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('338', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584673904', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('339', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584673948', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('340', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584673961', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('341', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674033', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('342', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674149', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('343', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674193', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('344', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674293', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('345', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674307', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('346', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674310', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('347', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674325', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('348', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674356', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('349', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674372', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('350', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674449', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('351', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674458', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('352', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674490', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('353', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674510', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('354', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674568', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('355', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674621', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('356', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674729', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('357', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584674756', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('358', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675335', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('359', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675353', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('360', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675362', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('361', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675393', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('362', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675426', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('363', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675461', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('364', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675501', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('365', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675510', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('366', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675519', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('367', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675531', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('368', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675546', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('369', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675572', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('370', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675585', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('371', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675594', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('372', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675614', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('373', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675779', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('374', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675788', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('375', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675802', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('376', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675807', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('377', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584675824', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('378', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584676540', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('379', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/product/detail/id/8.html', '/index/product/detail/id/8.html', 'Product', '1584676546', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('380', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/product/product_category_index', '/index/product/product_category_index?&id=9', 'Product', '1584676557', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('381', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/product/detail/id/9.html', '/index/product/detail/id/9.html', 'Product', '1584676561', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('382', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679010', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('383', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679037', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('384', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679052', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('385', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679097', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('386', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679110', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('387', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679122', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('388', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679749', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('389', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679786', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('390', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679815', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('391', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679839', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('392', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679868', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('393', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679913', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('394', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679966', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('395', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679981', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('396', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679990', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('397', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584679997', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('398', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584680021', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('399', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584680048', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('400', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584680059', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('401', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584680086', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('402', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584680116', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('403', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584680225', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('404', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584680244', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('405', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584680395', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('406', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584682652', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('407', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584683835', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('408', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584683883', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('409', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584683909', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('410', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584683957', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('411', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584683965', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('412', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584684043', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('413', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584684137', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('414', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584684242', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('415', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584684276', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('416', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index?&id=9', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584684307', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('417', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584684644', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('418', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584684658', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('419', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584684665', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('420', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584684674', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('421', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584684680', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('422', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685260', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('423', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685320', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('424', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685376', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('425', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685450', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('426', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685466', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('427', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685522', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('428', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685566', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('429', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685608', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('430', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685668', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('431', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685681', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('432', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685733', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('433', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685841', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('434', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685860', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('435', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685896', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('436', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685922', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('437', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584685961', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('438', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584686310', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('439', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584686401', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('440', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584686425', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('441', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584686439', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('442', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584686975', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('443', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584687056', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('444', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584687429', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('445', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584687663', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('446', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584687886', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('447', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584687907', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('448', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584687918', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('449', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584687969', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('450', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584687997', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('451', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584688020', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('452', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584688881', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('453', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584689473', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('454', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584689502', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('455', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584689515', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('456', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584689903', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('457', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584689918', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('458', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584689925', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('459', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584689970', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('460', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584690006', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('461', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584690016', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('462', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584690234', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('463', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584690339', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('464', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584690344', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('465', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584690787', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('466', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584690818', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('467', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584690836', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('468', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584690867', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('469', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584690875', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('470', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584690902', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('471', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584690908', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('472', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584690952', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('473', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584690975', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('474', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584691145', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('475', '127.0.0.1', '', '/index/solution/detail', '/index/solution/detail?&id=12', 'Solution', '1584691158', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('476', '127.0.0.1', '', '/index/solution/detail', '/index/solution/detail?&id=12', 'Solution', '1584691464', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('477', '127.0.0.1', '', '/index/solution/detail', '/index/solution/detail?&id=12', 'Solution', '1584691488', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('478', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584691532', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('479', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=12', 'Solution', '1584691534', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('480', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584693671', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('481', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584693683', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('482', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/news/index.html', '/index/news/index.html', 'News', '1584693690', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('483', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/news/index', '/index/news/index?&pageIndex=1&eachPage=10&category_id=1', 'News', '1584693695', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('484', '127.0.0.1', 'http://local.wgg.com/index/news/index?&pageIndex=1&eachPage=10&category_id=1', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584693699', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('485', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584693706', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('486', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/product/detail/id/8.html', '/index/product/detail/id/8.html', 'Product', '1584693713', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('487', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584693719', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('488', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584693724', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('489', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/news/detail/id/9', '/index/news/detail/id/9', 'News', '1584693733', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('490', '127.0.0.1', 'http://local.wgg.com/index/news/detail/id/9', '/index/index/index.html', '/index/index/index.html', 'Index', '1584694426', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('491', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584694428', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('492', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584694673', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('493', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584696858', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('494', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584696901', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('495', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584696913', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('496', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584696934', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('497', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584696955', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('498', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584697136', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('499', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584697156', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('500', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584697241', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('501', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584697265', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('502', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584697290', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('503', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584697350', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('504', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584697431', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('505', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584697470', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('506', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584697490', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('507', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584697507', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('508', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584697526', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('509', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584697649', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('510', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584697695', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('511', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584697868', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('512', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584698333', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('513', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584698363', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('514', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584698396', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('515', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584698416', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('516', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584698433', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('517', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584698452', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('518', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584698470', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('519', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584698867', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('520', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584698960', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('521', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584698993', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('522', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=12', 'Solution', '1584698996', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('523', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=12', 'Solution', '1584699148', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('524', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584699295', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('525', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584700735', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('526', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584700738', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('527', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584700791', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('528', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584700853', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('529', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584700875', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('530', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584700905', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('531', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584700953', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('532', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584700999', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('533', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584701028', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('534', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584701056', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('535', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584701070', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('536', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584701091', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('537', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584701115', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('538', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584701123', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('539', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584701339', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('540', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584701426', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('541', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584701483', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('542', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584701520', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('543', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584701526', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('544', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584702611', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('545', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584702639', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('546', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=12', 'Solution', '1584702648', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('547', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584704540', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('548', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584704739', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('549', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584704768', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('550', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584704795', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('551', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584704818', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('552', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584704834', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('553', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584704976', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('554', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705018', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('555', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705521', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('556', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705543', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('557', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705552', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('558', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705563', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('559', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705588', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('560', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705615', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('561', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705654', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('562', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705694', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('563', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705748', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('564', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705764', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('565', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705809', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('566', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705819', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('567', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705829', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('568', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705847', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('569', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705854', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('570', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705867', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('571', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705906', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('572', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705919', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('573', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705940', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('574', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584705986', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('575', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584706014', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('576', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584706127', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('577', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584706159', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('578', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584706170', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('579', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584706215', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('580', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/customcase/index/category_id/1.html', '/index/customcase/index/category_id/1.html', 'Customcase', '1584706246', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('581', '127.0.0.1', 'http://local.wgg.com/index/customcase/index/category_id/1.html', '/index/customcase/index/category_id/2.html', '/index/customcase/index/category_id/2.html', 'Customcase', '1584706250', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('582', '127.0.0.1', 'http://local.wgg.com/index/customcase/index/category_id/2.html', '/index/customcase/index/category_id/1.html', '/index/customcase/index/category_id/1.html', 'Customcase', '1584706254', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('583', '127.0.0.1', 'http://local.wgg.com/index/customcase/index/category_id/1.html', '/index/solution/detail/id/12.html', '/index/solution/detail/id/12.html', 'Solution', '1584706256', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('584', '127.0.0.1', 'http://local.wgg.com/index/solution/detail/id/12.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584706260', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('585', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584706267', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('586', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584706508', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('587', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584706613', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('588', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584706657', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('589', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584706671', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('590', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584706771', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('591', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=15', '/index/solution/detail', '/index/solution/detail?&id=12', 'Solution', '1584706775', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('592', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/index/index.html', '/index/index/index.html', 'Index', '1584711131', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('593', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584711139', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('594', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584711148', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('595', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584711153', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('596', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584711157', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('597', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584711163', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('598', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584711166', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('599', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584711196', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('600', '127.0.0.1', '', '/', '/', 'Index', '1584760338', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('601', '127.0.0.1', 'http://local.wgg.com/', '/index/solution/detail/id/12.html', '/index/solution/detail/id/12.html', 'Solution', '1584760345', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('602', '127.0.0.1', 'http://local.wgg.com/index/solution/detail/id/12.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584760349', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('603', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584760353', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('604', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584760357', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('605', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584760361', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('606', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584760374', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('607', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/news/index.html', '/index/news/index.html', 'News', '1584760656', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('608', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584760663', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('609', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584760673', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('610', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584760679', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('611', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584760719', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('612', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584760748', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('613', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584760773', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('614', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584761660', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('615', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584763579', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('616', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584763660', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('617', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584763671', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('618', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584763707', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('619', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584763803', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('620', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584763934', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('621', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584763948', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('622', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584763966', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('623', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=15', '/index/index/index.html', '/index/index/index.html', 'Index', '1584764480', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('624', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584764502', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('625', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584764517', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('626', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584764522', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('627', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584764529', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('628', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584764533', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('629', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584764945', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('630', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584764965', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('631', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584764974', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('632', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584765082', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('633', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=15', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584765102', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('634', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=15', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584765231', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('635', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=15', '/index/solution/detail', '/index/solution/detail?&id=12', 'Solution', '1584765238', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('636', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=12', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584765245', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('637', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584765251', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('638', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584765257', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('639', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=15', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584765268', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('640', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584765273', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('641', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584765379', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('642', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584765419', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('643', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584765427', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('644', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584765492', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('645', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584765525', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('646', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584765580', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('647', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584765662', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('648', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584765760', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('649', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584765928', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('650', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584765986', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('651', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584765999', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('652', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584766031', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('653', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584766109', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('654', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584766111', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('655', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584766113', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('656', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584766125', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('657', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584766127', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('658', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584766134', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('659', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584766137', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('660', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584766139', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('661', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584766141', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('662', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584766145', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('663', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584766148', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('664', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/index/index.html', '/index/index/index.html', 'Index', '1584766151', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('665', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584766188', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('666', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/product/product_category_index.html', '/index/product/product_category_index.html', 'Product', '1584766191', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('667', '127.0.0.1', 'http://local.wgg.com/index/product/product_category_index.html', '/index/customcase/index.html', '/index/customcase/index.html', 'Customcase', '1584766196', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('668', '127.0.0.1', 'http://local.wgg.com/index/customcase/index.html', '/index/news/index.html', '/index/news/index.html', 'News', '1584766199', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('669', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/news/index', '/index/news/index?&pageIndex=1&eachPage=10&category_id=1', 'News', '1584766203', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('670', '127.0.0.1', 'http://local.wgg.com/index/news/index?&pageIndex=1&eachPage=10&category_id=1', '/index/news/index', '/index/news/index?&pageIndex=1&eachPage=10&category_id=2', 'News', '1584766205', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('671', '127.0.0.1', 'http://local.wgg.com/index/news/index?&pageIndex=1&eachPage=10&category_id=2', '/index/news/index', '/index/news/index?&pageIndex=1&eachPage=10&category_id=3', 'News', '1584766208', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('672', '127.0.0.1', 'http://local.wgg.com/index/news/index?&pageIndex=1&eachPage=10&category_id=3', '/index/news/index', '/index/news/index?&pageIndex=1&eachPage=10', 'News', '1584766211', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('673', '127.0.0.1', 'http://local.wgg.com/index/news/index?&pageIndex=1&eachPage=10', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584766215', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('674', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584766219', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('675', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/index/index.html', '/index/index/index.html', 'Index', '1584766346', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('676', '127.0.0.1', 'http://local.wgg.com/index/index/index.html', '/index/solution/detail.html', '/index/solution/detail.html', 'Solution', '1584766359', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('677', '127.0.0.1', 'http://local.wgg.com/index/solution/detail.html', '/index/solution/detail', '/index/solution/detail?&id=13', 'Solution', '1584766365', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('678', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=13', '/index/solution/detail', '/index/solution/detail?&id=14', 'Solution', '1584766374', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('679', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=14', '/index/solution/detail', '/index/solution/detail?&id=15', 'Solution', '1584766383', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('680', '127.0.0.1', 'http://local.wgg.com/index/solution/detail?&id=15', '/index/news/index.html', '/index/news/index.html', 'News', '1584766393', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('681', '127.0.0.1', 'http://local.wgg.com/index/news/index.html', '/index/news/index', '/index/news/index?&pageIndex=1&eachPage=10&category_id=1', 'News', '1584766395', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('682', '127.0.0.1', 'http://local.wgg.com/index/news/index?&pageIndex=1&eachPage=10&category_id=1', '/index/news/detail/id/9', '/index/news/detail/id/9', 'News', '1584766398', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('683', '127.0.0.1', 'http://local.wgg.com/index/news/detail/id/9', '/index/contactus/index.html', '/index/contactus/index.html', 'Contactus', '1584766405', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('684', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584766409', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('685', '127.0.0.1', 'http://local.wgg.com/index/contactus/index.html', '/index/contactus/contact_us', '/index/contactus/contact_us', 'Contactus', '1584766417', null, null);
INSERT INTO `wgg_web_visitlog` VALUES ('686', '127.0.0.1', 'http://local.wgg.com/index/contactus/contact_us', '/index/index/index.html', '/index/index/index.html', 'Index', '1584766444', null, null);
