/*
Navicat MySQL Data Transfer

Source Server         : luozc
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : mall

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-05-07 15:03:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `aId` int(10) NOT NULL AUTO_INCREMENT,
  `uId` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `name` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`aId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '3', '陕西省西安市长安区西安邮电大学', '罗增昌', '18792867055');
INSERT INTO `address` VALUES ('2', '3', '河北省石家庄市长安区不知道地区', '罗增昌', '546666');
INSERT INTO `address` VALUES ('3', '5', '陕西省西安市长安区西安邮电大学', '罗增昌', '18792867055');
INSERT INTO `address` VALUES ('4', '6', '陕西省西安市长安区西安邮电大学', '罗增昌', '18792867055');
INSERT INTO `address` VALUES ('5', '6', '北京市北京市海淀区未名视通', '罗增昌', '18792867055');
INSERT INTO `address` VALUES ('7', '3', '内蒙古自治区呼和浩特市新城区天涯海角', '罗增昌', '1234569870');
INSERT INTO `address` VALUES ('8', '3', '内蒙古自治区呼和浩特市新城区猜不到地区', '罗增昌', '18792867055');

-- ----------------------------
-- Table structure for ad_table
-- ----------------------------
DROP TABLE IF EXISTS `ad_table`;
CREATE TABLE `ad_table` (
  `ad_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ad_text` varchar(255) NOT NULL,
  `ad_href` varchar(255) NOT NULL,
  `ad_img` varchar(255) NOT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ad_table
-- ----------------------------
INSERT INTO `ad_table` VALUES ('2', 'w3cSchool', 'http://www.w3school.com.cn/jsref/jsref_setTime.asp', '03534fc388bee2a53d314fcf2215b262.jpg');
INSERT INTO `ad_table` VALUES ('5', 'react', 'https://webpack.bootcss.com/', '0aa53d6e91637c5a7c50caff63c89462.png');
INSERT INTO `ad_table` VALUES ('6', '西安邮电大学', 'http://www.xiyou.edu.cn/', '5402fe41e3b4cd3acaa2ce2e4465fbd8.png');
INSERT INTO `ad_table` VALUES ('8', 'vue', 'https://cn.vuejs.org/', '9f03cb5b9e3f6d2bcdbf273c04600b37.png');

-- ----------------------------
-- Table structure for book_table
-- ----------------------------
DROP TABLE IF EXISTS `book_table`;
CREATE TABLE `book_table` (
  `book_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `book_name` varchar(32) NOT NULL,
  `book_author` varchar(20) NOT NULL,
  `sort` varchar(32) NOT NULL,
  `price` char(10) NOT NULL,
  `publish` varchar(50) NOT NULL,
  `publish_date` varchar(32) NOT NULL,
  `current_num` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `summary` text NOT NULL,
  `image_src` varchar(100) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_table
-- ----------------------------
INSERT INTO `book_table` VALUES ('29', '1', '软件工程', '软件工程', '计算机', '11', '机械工业出版社', '1496841081510', '2', '1', '最好的软件工程书', 'ce4ca4aeb71c20ed8af439dcc9afb79e.jpg');
INSERT INTO `book_table` VALUES ('47', '26', '电子琴经典名歌名曲135首', '其他作者', '音乐类', '4', '北京体育大学出版社', '1496841681110', '1', '1', '为广大业余电子琴爱好者收集改编了135首大众耳熟能详的知名歌曲乐曲，并归类为四个部分便于查用', '2bd4121ad32c5e705805eace3fc05cd9.jpg');
INSERT INTO `book_table` VALUES ('48', '26', '读者意林青年文摘', '读者意林青年文摘', '杂志/期刊', '5', '北京体育大学出版社', '1496841681210', '2', '2', '读者意林青年文摘', '00ad7189151c9e26fb3974ef98574871.jpg');
INSERT INTO `book_table` VALUES ('49', '26', '青葱岁月', '青葱岁月', '杂志/期刊', '7', '青年出版社', '1436841681310', '1', '1', '青葱岁月', 'e4f8b1db925c470c218c9fbc4358520e.jpg');
INSERT INTO `book_table` VALUES ('50', '23', '兵王之王', '七品', '军事类', '10', '中国文联出版社', '1496841681410', '4', '4', '兵王之王1.驱逐出境+2.黄金猎手+3血狐出击 兵王之王全3册 七品/著', 'bd2275b407e03de6c72c50b99c61e41a.jpg');
INSERT INTO `book_table` VALUES ('52', '23', '计算机网络（第6版）', '谢喜仁', '计算机', '10', '人民邮电出版社', '1496841681520', '1', '1', '大三计算机网络指定书籍', 'b472c0ea3f981e0ba774249bd6987df4.jpg');
INSERT INTO `book_table` VALUES ('53', '26', '计算机操作系统', '汤小丹', '计算机', '12', '西安电子科技大学出版社', '1496841681530', '2', '2', '计算机操作系统 高等学校教材 计算机考研教材', '586804b0cdaeb20baf8c717628b8c914.jpg');
INSERT INTO `book_table` VALUES ('56', '23', '围城', '张三', '文学类', '4.5', '文学出版社', '1496841684510', '1', '1', '围城  保存完好', '76517bf74cb055d81573eb79f3ceba4e.jpg');
INSERT INTO `book_table` VALUES ('57', '23', '太空百科全书', '李四', '科普', '4.5', '科学出版社', '1496841681610', '2', '2', '带你走进神秘太空', '804aff66441501d472ed59d63025642a.jpg');
INSERT INTO `book_table` VALUES ('58', '23', '工程测量系列 建筑工程测量', '王五', '建筑', '8.8', '建筑出版社', '1496441681510', '1', '1', '工程测量系列 建筑工程测量基础入门教程', 'c9abd273a074422d71da8fc8230e0bcb.jpg');
INSERT INTO `book_table` VALUES ('60', '1', '中医诊断学', '于文轩', '医学', '22', '医学出板社', '1496841967746', '1', '1', '中医诊断学附赠相关知识点视频', '9cdd61d444d9cef0733023f63bec3757.jpg');
INSERT INTO `book_table` VALUES ('64', '1', 'SQL', 'SQL', '计算机', '12', '人民邮电出版社', '1496981765184', '1', '1', 'SQL 结构化  ', '482c9d8fb74f32f7b2712362e820b7ca.png');
INSERT INTO `book_table` VALUES ('65', '1', 'SQL 注入攻击', '张三', '计算机', '23', '电子工业出版社', '1496981849271', '1', '1', '电子工业出版社   SQL 注入攻击', 'dc832027b58980ebad6dbd0f6f8b8efd.png');
INSERT INTO `book_table` VALUES ('66', '26', '追风筝的人', '胡塞尼', '文学类', '16', '上海人民出版社', '1497015638355', '1', '1', '中文小说畅销文艺正版书籍 两千万读者口耳相传 快乐大本营 高圆圆力荐 情感读物', 'bc32eb647fbea4ffeeda7364d2ed7852.png');
INSERT INTO `book_table` VALUES ('67', '26', '摆渡人', '克莱儿麦克福尔', '文学类', '12', ' 百花洲文艺出版社', '1497015772739', '1', '1', '荣获多项图书大奖 人性救赎之作 心灵治愈系小说 外国文学读物 励志丛书', '2471ed3523017024c5d63ed73f8caa2e.png');
INSERT INTO `book_table` VALUES ('68', '26', '黑石之墓', '克莱儿麦克福尔', '文学类', '11.5', '九州出版社', '1497015851584', '1', '1', ' 国内畅销百万册 令千万读者灵魂震颤的小说', 'fe719da9f5dcf2bef320c1ddde832ae6.png');
INSERT INTO `book_table` VALUES ('69', '26', '鬼谷子', '鬼谷子', '军事类', '12', '北方文艺', '1497015955389', '1', '1', '为人处世商战绝学 王诩捭阖策原文译文注释 畅销成功励志心理学书籍', 'd531aedb065f5084129b7e518734f612.png');
INSERT INTO `book_table` VALUES ('70', '26', '中华上下五千年', '中华上下五千年', '其他', '7.5', '中国华侨出版社', '1497016057936', '1', '1', '正版无删减全白话文史记中国通史世界畅销青少年版成人版学生版图书课外阅读书中国历史书籍', '167e76064294d9962e6974ddfe54d58a.png');
INSERT INTO `book_table` VALUES ('71', '26', '鸟哥的Linux私房菜', '鸟哥', '计算机', '12', '人民邮电', '1497016145079', '1', '1', '鸟哥的Linux私房菜 基础学习篇(第三版)', '6ef7e6499c2e2ed9eba32f7ef12ec038.png');
INSERT INTO `book_table` VALUES ('72', '26', '现代操作系统', '(荷)塔嫩鲍姆|译者:陈向群//马洪兵', '计算机', '11.9', '机械工业出版社', '1497016249258', '1', '1', '原书第3版/计算机操作系统/计算机基础书籍/计算机网络/编程教程', 'f9333ca384247c4bde6b570a6c2107fb.png');
INSERT INTO `book_table` VALUES ('73', '26', 'Android开发艺术探索', ' 任玉刚', '计算机', '8.9', ' 电子工业出版社', '1497016334582', '1', '1', 'Android开发教程书籍 Android从入门到精通 正版畅销书籍', 'a51c005dbc5d38ba28dab0e6dd88a09c.png');
INSERT INTO `book_table` VALUES ('74', '26', '21天学通C语言(第7版)', 'Bradley Jones', '计算机', '13', '人民邮电出版社', '1497016405198', '1', '1', '础入门 编程书 c语言经典教程 c语言教材 程序员 计算机 图书 IT 编程入门', '06bcf4b937a5a1510d466ff1257300d6.png');
INSERT INTO `book_table` VALUES ('75', '26', '时间简史', '白虹', '科普', '19.8', ' 中国华侨出版社', '1497016523434', '11', '11', '彩图解说霍金版时间简史 宇宙知识科技丛书 科普读物文学畅销书籍 科学探秘世界公认的量子力学 自然科学总', 'ea468da603307a7a1b7c8f2625dd783b.png');
INSERT INTO `book_table` VALUES ('76', '26', '图说天下终极预言', '图说天下终极预言', '科普', '12', '北京联合出版公司', '1497016619579', '1', '1', '自然百科悬疑书籍 青少年中学生科普读物 正版畅销书籍 图文彩色版 正版', 'b2bf1547ea08574eae1b2c181094ba23.png');
INSERT INTO `book_table` VALUES ('77', '1', '本草纲目', '本草纲目', '医学', '13', '江苏凤凰科学技术出版社', '1497016853146', '1', '1', '中医药四大名著厚本 黄帝内经中医基础理论保健养生中草药中医书籍\n', 'f5262285f4f76a6be0ed16d695d646e3.png');
INSERT INTO `book_table` VALUES ('78', '1', '读者', '读者', '杂志/期刊', '3', '文艺出版社', '1497017027858', '2', '2', '江苏凤凰科读者2017年10本打包1/2/3-5/11/12期+2016年16/23/24期读者杂志非合订本青少年文学文摘作文素材过期刊学技术出版社', 'e5f539898c36561a76cee038c9436280.png');
INSERT INTO `book_table` VALUES ('79', '1', ' 国富论', '亚当斯密', '经济类', '4.5', '中华书局', '1497017182057', '1', '1', '经济学原理通识基础资本论 微观宏观经济学理论 畅销金融书籍 投资理财教程', '9bd4738ae1a12ddcd3555d1f86b97140.png');
INSERT INTO `book_table` VALUES ('80', '1', '计算机组成原理 ', '唐朔飞', '计算机', '6.5', ' 高等教育出版社', '1497017453715', '1', '1', '全新正版 计算机组成原理', '0a9aa177fd00fda42077479272c49737.png');
INSERT INTO `book_table` VALUES ('81', '1', '计算机组成原理', '白中英 ', '计算机', '5', '科学出版社 ', '1497017514920', '1', '1', '白中英 计算机组成原理教程 国家优秀教材特等奖 考研指定教材', '2a140a67e1abde194e9835bca5ea1edb.png');
INSERT INTO `book_table` VALUES ('82', '1', '计算机组成原理考研复习指导', '王道', '计算机', '10', '高等教育出版社', '1497017616838', '1', '1', '2018年计算机组成原理考研复习指导/王道考研系列/计算机考研/王道计算机考研系列2018/计算机考研教材教程辅导书', '454835941e76d9f65eb10969c59dfadd.png');
INSERT INTO `book_table` VALUES ('83', '1', '数据结构(C语言版) ', '严蔚敏 ', '计算机', '5', '清华大学出版社', '1497017716120', '2', '2', '清华大学计算机系列教材 学习数据结构及其算法的c程序设计参考 媲美于王道数据结构', '05d321f4ce5c7452317cc6f616ff6fde.png');
INSERT INTO `book_table` VALUES ('84', '1', '据结构C++语言版 ', ' 邓俊辉', '计算机', '6', '清华大学出版社', '1497017798444', '1', '1', '第三版第3版计算机系列教材c语言程序设计 计算机考研教材C语言入门教材 可搭数据结构习题解析', 'aa18db1d5673fc3cb6e068fe12cfcc06.png');
INSERT INTO `book_table` VALUES ('85', '1', '计算机算法设计与分析(第4版) ', '王晓东', '计算机', '7.5', '电子工业出版社', '1497017855404', '2', '2', '计算机专业教材教辅算法与数据结构程序语言与软件开发新华书店正版畅销图书', '6b7e9a1581e2ffb2cd4dbc546c2fe355.png');
INSERT INTO `book_table` VALUES ('86', '1', '正版现货数据结构(第二版)', '严蔚敏', '计算机', '9', '清华大学出版社', '1497017927011', '1', '1', '计算机系列教材研究生本科专科教材严蔚敏清华大学出版社程序开发C语言经典教材', 'c5638b0270ace52bca87c7663cefd86a.png');
INSERT INTO `book_table` VALUES ('87', '23', '计算机网络（第6版）', ' 谢希仁', '计算机', '7', '电子工业出版社', '1497018189407', '2', '2', '该书自1994年在电子工业出版社出版以来，已分别出了6次修订版。', '08064670d49953a2bb068eff5b9995f1.png');
INSERT INTO `book_table` VALUES ('88', '23', '计算机网络(第5版) ', '谢希仁', '计算机', '8', ' 电子工业出版社', '1497018400604', '1', '1', '', 'baef24d9852994c53a9909ad24e2337f.png');
INSERT INTO `book_table` VALUES ('89', '23', '网络规划设计师教程', '网络规划设计师教程', '计算机', '7.5', '新华书店', '1497018489680', '1', '1', '全国计算机技术与软件专业技术资格(水平)考试指定用书)  ', '9f36bd6e15ffdec64e4d443a6932dc17.png');
INSERT INTO `book_table` VALUES ('90', '23', '计算机网络教程(第二版)', '溪利亚、苏莹、蔡芳', '计算机', '6.5', '清华大学出版社', '1497018672298', '1', '1', ' 习网络基础知识 网络构建方法 网络应用技术 高等学校计算机应用规划教材', 'df7e927dd1cf3cc6cb5d8321171ff848.png');
INSERT INTO `book_table` VALUES ('91', '1', 'React', '于文轩', '计算机', '21', '西邮出版社', '1497260580722', '1', '1', 'React基础教程', 'a5c9f37bdf49bcee282dc052bfdc7e86.png');
INSERT INTO `book_table` VALUES ('92', '1', 'Vue.js 前端开发', '陈陆扬', '计算机', '22', '人民邮电出版社', '1497367154254', '1', '1', 'vue.js教程书籍 Vue.js权威指南 源码程序 app web前端开发app实战', '19e75ce40253ae6f64192c32a2d58238.png');
INSERT INTO `book_table` VALUES ('93', '23', 'Vue.js权威指南', ' 无', '计算机', '15', '人民邮电出版社', '1497368061385', '1', '1', ' 畅销书籍 计算机 正版', '9ad470b8d31a4c6c1d5e3fad44bdf60f.png');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cartId` int(10) NOT NULL AUTO_INCREMENT,
  `uId` int(10) NOT NULL,
  `gId` int(10) NOT NULL,
  `num` int(10) NOT NULL,
  `checkAttr` varchar(50) NOT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('23', '5', '2', '1', '红色');
INSERT INTO `cart` VALUES ('26', '5', '12', '4', 'X');
INSERT INTO `cart` VALUES ('52', '7', '10', '1', '银色');
INSERT INTO `cart` VALUES ('64', '6', '7', '1', 'X');
INSERT INTO `cart` VALUES ('71', '3', '10', '1', '银色');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cName` varchar(64) NOT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '手机数码');
INSERT INTO `category` VALUES ('2', '男装');
INSERT INTO `category` VALUES ('3', '女装');
INSERT INTO `category` VALUES ('4', '生鲜');
INSERT INTO `category` VALUES ('5', '百货');
INSERT INTO `category` VALUES ('6', '运动户外');
INSERT INTO `category` VALUES ('7', '家电');
INSERT INTO `category` VALUES ('8', '鲜花服务');
INSERT INTO `category` VALUES ('9', '图书乐器');
INSERT INTO `category` VALUES ('10', '家具家纺');
INSERT INTO `category` VALUES ('11', '食品');
INSERT INTO `category` VALUES ('13', '鞋靴');
INSERT INTO `category` VALUES ('14', '箱包');
INSERT INTO `category` VALUES ('15', '配饰');
INSERT INTO `category` VALUES ('16', '游戏动漫');
INSERT INTO `category` VALUES ('17', '母婴');
INSERT INTO `category` VALUES ('18', '美妆');

-- ----------------------------
-- Table structure for collect_table
-- ----------------------------
DROP TABLE IF EXISTS `collect_table`;
CREATE TABLE `collect_table` (
  `collect_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  PRIMARY KEY (`collect_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect_table
-- ----------------------------
INSERT INTO `collect_table` VALUES ('13', '1', '86', '正版现货数据结构(第二版)');
INSERT INTO `collect_table` VALUES ('17', '1', '53', '计算机操作系统');
INSERT INTO `collect_table` VALUES ('20', '23', '92', 'Vue.js 前端开发');
INSERT INTO `collect_table` VALUES ('22', '23', '90', '计算机网络教程(第二版)');
INSERT INTO `collect_table` VALUES ('24', '23', '91', 'React');
INSERT INTO `collect_table` VALUES ('25', '1', '87', '计算机网络（第6版）');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `uId` int(11) NOT NULL AUTO_INCREMENT,
  `nickName` varchar(50) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `reg_time` varchar(64) NOT NULL,
  `payPass` varchar(100) NOT NULL,
  PRIMARY KEY (`uId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('3', 'luozc', '111', '698d51a19d8a121ce581499d7b701668', '1523353079664', '96e79218965eb72c92a549dd5a330112');
INSERT INTO `customer` VALUES ('6', '就是任性', '222', 'bcbe3365e6ac95ea2c0343a2395834dd', '1524498179193', 'e3ceb5881a0a1fdaad01296d7554868d');
INSERT INTO `customer` VALUES ('7', 'Tom', '369', '0c74b7f78409a4022a2c4c5a5ca3ee19', '1525256504902', '*');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gId` int(10) NOT NULL AUTO_INCREMENT,
  `scId` int(10) NOT NULL,
  `gName` varchar(200) NOT NULL,
  `gPrice` varchar(10) NOT NULL,
  `gSum` varchar(10) NOT NULL,
  `gTime` varchar(64) NOT NULL,
  `gPic` varchar(64) NOT NULL,
  `sale` varchar(10) NOT NULL DEFAULT '0',
  `attr` varchar(100) NOT NULL,
  PRIMARY KEY (`gId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '5', 'Xiaomi/小米 小米6全网通4G 亮蓝亮黑陶瓷黑', '2299', '100', '1523288475736', '6588c6551f3f96db47f260788d55a88c.jpg', '1', '黑色#银色');
INSERT INTO `goods` VALUES ('2', '5', 'Xiaomi/小米 红米Note 4X全网通智能手机', '773', '90', '1523292661767', '6fc99a5bcfa14a25faa4d1ca3ffadd13.jpg', '7', '红色#青绿色');
INSERT INTO `goods` VALUES ('3', '5', '荣耀畅玩7C 全网通标配版 3GB+32GB（极光蓝）', '899', '20', '1523535052268', '912c7f81d8aa5b9be69647e757faf1df.jpg', '0', '黑色#白色');
INSERT INTO `goods` VALUES ('4', '8', '森马中袖衬衫男2018夏季新款潮流男装小清新格纹衬衣', '179', '20', '1523550273716', '3c4a43829eb6aa2efedbde8be5249223.jpg', '0', 'M#X#XL#XXL');
INSERT INTO `goods` VALUES ('5', '7', '男士短袖T恤休闲运动套装韩版短裤沙滩裤潮流2018新款上衣服半袖', '89', '100', '1523721867992', '534b5324aa8843ebe4d3eb7635dd20b3.jpg', '0', 'M#X#XL#XXL');
INSERT INTO `goods` VALUES ('6', '7', '男士短袖T恤休闲运动套装韩版短裤沙滩裤潮流2018新款上衣服半袖', '89', '100', '1523723460667', '26f27349ad718c7feb673d4d010a59fc.jpg', '0', 'M#X#XL#XXL');
INSERT INTO `goods` VALUES ('7', '7', '夏季港风迷彩短袖t恤男连帽大码五分袖潮流男装上衣服青少年半袖', '68', '100', '1523725949422', 'b87c8c99af882f858a1f94eda2c0b9eb.jpg', '0', 'M#X#XL#XXL');
INSERT INTO `goods` VALUES ('8', '7', '森马短袖t恤男2018夏装新款男士圆领半袖体恤小清新条纹青年衣服', '59.9', '100', '1523728583298', 'ddda1580c95a01ff08fcc4775ae0efe6.jpg', '2', 'M#X#XL#XXL');
INSERT INTO `goods` VALUES ('9', '5', '华为 畅享8e', '1099', '200', '1523731237796', '54c55a145a16752fd9d97215de6bac74.jpg', '1', '黑色#银色');
INSERT INTO `goods` VALUES ('10', '5', '华为 荣耀畅玩4', '336', '200', '1523731486759', '95f87b59874dab4e9c330212d7b49578.jpg', '0', '黑色#银色');
INSERT INTO `goods` VALUES ('11', '8', '森马2018新款简约潮流格纹方领帅气纯棉男士衬衫', '99', '100', '1523786013868', 'd4aee9ecb3e3ca25ab109fdc0e1268f7.jpg', '6', 'M#X#XL#XXL');
INSERT INTO `goods` VALUES ('12', '8', '森马韩版简约方领字母印花男衬衫', '129', '50', '1523786113410', '5ec7cd8ae6330445803fe671dbab36b1.jpg', '1', 'M#X#XL#XXL');
INSERT INTO `goods` VALUES ('13', '7', '2018男士时尚短袖T恤', '67', '200', '1524118667928', '13c815ae8ce48c3be9f5e258ba22e69c.jpg', '5', 'M#X#XL#XXL');
INSERT INTO `goods` VALUES ('14', '10', 'ins超火的半袖T恤女短袖2018新款夏季韩版学生宽松怪味少女上衣服', '49.8', '100', '1525367716495', 'f4b4ec85f4290c865ca45ea1058cfa1f.png', '1', 'M#L#XL');

-- ----------------------------
-- Table structure for goods_collect
-- ----------------------------
DROP TABLE IF EXISTS `goods_collect`;
CREATE TABLE `goods_collect` (
  `collectId` int(11) NOT NULL AUTO_INCREMENT,
  `uId` int(11) NOT NULL,
  `gId` int(11) NOT NULL,
  PRIMARY KEY (`collectId`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_collect
-- ----------------------------
INSERT INTO `goods_collect` VALUES ('33', '3', '6');
INSERT INTO `goods_collect` VALUES ('48', '5', '6');
INSERT INTO `goods_collect` VALUES ('55', '6', '9');
INSERT INTO `goods_collect` VALUES ('56', '6', '13');
INSERT INTO `goods_collect` VALUES ('59', '7', '10');
INSERT INTO `goods_collect` VALUES ('67', '3', '13');
INSERT INTO `goods_collect` VALUES ('70', '3', '2');
INSERT INTO `goods_collect` VALUES ('74', '3', '9');
INSERT INTO `goods_collect` VALUES ('76', '3', '7');

-- ----------------------------
-- Table structure for leavemessage_table
-- ----------------------------
DROP TABLE IF EXISTS `leavemessage_table`;
CREATE TABLE `leavemessage_table` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gId` int(11) NOT NULL,
  `uId` varchar(64) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leavemessage_table
-- ----------------------------

-- ----------------------------
-- Table structure for news_table
-- ----------------------------
DROP TABLE IF EXISTS `news_table`;
CREATE TABLE `news_table` (
  `news_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL,
  `news_con` tinytext NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_table
-- ----------------------------
INSERT INTO `news_table` VALUES ('8', '开张大吉', '商场开业 大吉大利', 'all', '1525592352492');
INSERT INTO `news_table` VALUES ('9', '会员福利', '恭喜您成功晋升为黄金会员，享受更多优惠！！！', '111', '1525598737802');

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(64) NOT NULL COMMENT '订单Id',
  `goods_id` int(11) NOT NULL,
  `goods_num` int(11) NOT NULL,
  `goods_price` varchar(64) NOT NULL,
  `goods_attr` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_goods
-- ----------------------------
INSERT INTO `order_goods` VALUES ('35', '1525532273840', '2', '1', '773', '青绿色');
INSERT INTO `order_goods` VALUES ('36', '1525532352223', '2', '1', '773', '青绿色');
INSERT INTO `order_goods` VALUES ('37', '1525533461289', '11', '1', '99', 'XL');
INSERT INTO `order_goods` VALUES ('38', '1525533551927', '9', '1', '1099', '银色');
INSERT INTO `order_goods` VALUES ('39', '1525534563188', '1', '1', '2299', '银色');
INSERT INTO `order_goods` VALUES ('40', '1525625280074', '14', '1', '49.8', 'M');
INSERT INTO `order_goods` VALUES ('41', '1525625280074', '2', '1', '773', '青绿色');

-- ----------------------------
-- Table structure for order_table
-- ----------------------------
DROP TABLE IF EXISTS `order_table`;
CREATE TABLE `order_table` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(64) NOT NULL,
  `uId` int(10) NOT NULL,
  `pay_price` varchar(64) NOT NULL,
  `ship_number` varchar(64) NOT NULL,
  `aId` int(10) DEFAULT NULL,
  `is_ship` int(11) NOT NULL DEFAULT '0',
  `is_receipt` int(11) NOT NULL DEFAULT '0',
  `is_evaluate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_table
-- ----------------------------
INSERT INTO `order_table` VALUES ('23', '1525532352223', '3', '773', '0', '1', '0', '0', '0');
INSERT INTO `order_table` VALUES ('24', '1525533461289', '3', '99', '888819096464236054', '2', '0', '1', '0');
INSERT INTO `order_table` VALUES ('25', '1525533551927', '3', '1099', '888819096464236054', '7', '1', '1', '0');
INSERT INTO `order_table` VALUES ('26', '1525534563188', '3', '2299', '3807050924005', '1', '1', '1', '0');
INSERT INTO `order_table` VALUES ('27', '1525625280074', '3', '822.8', '0', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sessions
-- ----------------------------

-- ----------------------------
-- Table structure for shop_table
-- ----------------------------
DROP TABLE IF EXISTS `shop_table`;
CREATE TABLE `shop_table` (
  `shop_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) NOT NULL,
  `shop_password` varchar(255) NOT NULL,
  `shop_cardImg` varchar(255) NOT NULL,
  `flag` varchar(255) NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_table
-- ----------------------------
INSERT INTO `shop_table` VALUES ('1', '111@qq.com', '698d51a19d8a121ce581499d7b701668', '06bcf4b937a5a1510d466ff1257300d6.png', '1');
INSERT INTO `shop_table` VALUES ('23', '222@qq.com', 'bcbe3365e6ac95ea2c0343a2395834dd', '06bcf4b937a5a1510d466ff1257300d6.png', '1');
INSERT INTO `shop_table` VALUES ('26', '18792867055@163.com', '698d51a19d8a121ce581499d7b701668', '06bcf4b937a5a1510d466ff1257300d6.png', '1');
INSERT INTO `shop_table` VALUES ('30', '333@qq.com', '310dcbbf4cce62f762a2aaa148d556bd', '8971fb72ada8c2a07b15b78449c5ea0c.png', '1');

-- ----------------------------
-- Table structure for subcategory
-- ----------------------------
DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE `subcategory` (
  `scId` int(10) NOT NULL AUTO_INCREMENT,
  `cId` int(10) NOT NULL,
  `scName` varchar(64) NOT NULL,
  `subCategoryImg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`scId`),
  KEY `cId` (`cId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subcategory
-- ----------------------------
INSERT INTO `subcategory` VALUES ('4', '1', '手机贴膜', 'edb84d09dc81e0307c5443d2736de0f8.jpeg');
INSERT INTO `subcategory` VALUES ('5', '1', '手机', '6215ab642d069291ec1033dc2158b396.jpeg');
INSERT INTO `subcategory` VALUES ('6', '1', '移动电源', '3b073ce3f1ba2eb3e4bc892796c8d1fc.jpeg');
INSERT INTO `subcategory` VALUES ('7', '2', 'T恤', 'e6f552a56995563236369312021c3d6a.jpeg');
INSERT INTO `subcategory` VALUES ('8', '2', '衬衣', '1954b5120d006facca09a62761233cdc.jpg');
INSERT INTO `subcategory` VALUES ('9', '2', '牛仔裤', '89d622389e176fa559ba3995521f21a9.jpg');
INSERT INTO `subcategory` VALUES ('10', '3', 'T恤', '3de785ed59b3a92fe99c01a6e5b91c17.jpg');
INSERT INTO `subcategory` VALUES ('11', '3', '短外套', 'b7e0702a9260831c68b1015cbc4f8115.jpg');
INSERT INTO `subcategory` VALUES ('12', '3', '衬衫', 'dce9adc2e39910566346aac0e8cf88b5.jpg');
INSERT INTO `subcategory` VALUES ('13', '3', '卫衣', 'b55562b64328da4ce3f39412bef9711e.jpg');
INSERT INTO `subcategory` VALUES ('14', '4', '水果礼盒', 'a74f7289fe897c14df49738105d192d7.jpg');
INSERT INTO `subcategory` VALUES ('15', '4', '芒果', '700c55d939741f32af45d659f030dd6b.jpg');
INSERT INTO `subcategory` VALUES ('16', '5', '收纳箱', '222447a8812822e9e1839e61f9e7a64a.jpg');
INSERT INTO `subcategory` VALUES ('17', '5', '碗', 'a28093c8785dfb97dcd372b0943d1261.jpg');
INSERT INTO `subcategory` VALUES ('18', '1', '手机保护', '6c2e49c2bbb1d95f5961e4d2e18297bd.jpg');
INSERT INTO `subcategory` VALUES ('19', '1', '笔记本', '37d750a3b6e8e0f6f251cf7e9d03e497.jpg');
INSERT INTO `subcategory` VALUES ('20', '2', '西服', 'e319e6d0177929fb94bd1fa8d422f072.jpg');

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(32) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_table
-- ----------------------------
INSERT INTO `user_table` VALUES ('1', '111@qq.com', '698d51a19d8a121ce581499d7b701668', 'user');
INSERT INTO `user_table` VALUES ('21', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');
INSERT INTO `user_table` VALUES ('23', '222@qq.com', 'bcbe3365e6ac95ea2c0343a2395834dd', 'user');
INSERT INTO `user_table` VALUES ('26', '18792867055@163.com', '698d51a19d8a121ce581499d7b701668', 'user');
INSERT INTO `user_table` VALUES ('28', '123', '202cb962ac59075b964b07152d234b70', 'user');
INSERT INTO `user_table` VALUES ('29', '222222', '698d51a19d8a121ce581499d7b701668', 'user');
INSERT INTO `user_table` VALUES ('30', '986752571@qq.com', 'b97202e2f2f72bed25319390b4e0a4ba', 'user');
INSERT INTO `user_table` VALUES ('31', '1212@qq.com', '698d51a19d8a121ce581499d7b701668', 'user');
