/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : dormitory

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 25/12/2021 22:54:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for d_admin
-- ----------------------------
DROP TABLE IF EXISTS `d_admin`;
CREATE TABLE `d_admin`  (
  `a_id` int(0) NOT NULL,
  `a_username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `a_password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `a_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a_power` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a_describe` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `idd` int(0) NULL DEFAULT 10,
  PRIMARY KEY (`a_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of d_admin
-- ----------------------------
INSERT INTO `d_admin` VALUES (1, '张杰', 'F59BD65F7EDAFB087A81D4DCA06C4910', '张杰', '12345678912', '1101', '学生', 1101);
INSERT INTO `d_admin` VALUES (2, 'jj', 'E10ADC3949BA59ABBE56E057F20F883E', '尖尖', '13650265342', '1', '管理员', NULL);
INSERT INTO `d_admin` VALUES (3, 'ls', 'E10ADC3949BA59ABBE56E057F20F883E', '李四', '15053621235', '1', '管理员', NULL);
INSERT INTO `d_admin` VALUES (5, 'zw', 'E10ADC3949BA59ABBE56E057F20F883E', '张伟', '18850362541', '1', '管理员', NULL);
INSERT INTO `d_admin` VALUES (6, 'zh', 'E10ADC3949BA59ABBE56E057F20F883E', '赵红', '19950366452', '1', '管理员', NULL);
INSERT INTO `d_admin` VALUES (7, 'wy', 'E10ADC3949BA59ABBE56E057F20F883E', '王颖', '13665244655', '1', '管理员', NULL);
INSERT INTO `d_admin` VALUES (8, 'gx', 'E10ADC3949BA59ABBE56E057F20F883E', '郭欣', '13865244532', '2101', '学生', NULL);
INSERT INTO `d_admin` VALUES (9, 'zw', 'E10ADC3949BA59ABBE56E057F20F883E', '张伟', '15625487692', '1101', '学生', NULL);
INSERT INTO `d_admin` VALUES (10, 'zjj', 'E10ADC3949BA59ABBE56E057F20F883E', '张嘉佳', '13650362546', '4102', '学生', NULL);
INSERT INTO `d_admin` VALUES (11, 'wh', 'E10ADC3949BA59ABBE56E057F20F883E', '王浩', '15059751234', '1101', '学生', NULL);
INSERT INTO `d_admin` VALUES (12, 'hzz', 'E10ADC3949BA59ABBE56E057F20F883E', '黄珍珍', '15059248921', '2101', '学生', NULL);
INSERT INTO `d_admin` VALUES (13, 'xw', 'E10ADC3949BA59ABBE56E057F20F883E', '许文', '13850312542', '2101', '学生', NULL);

-- ----------------------------
-- Table structure for d_class
-- ----------------------------
DROP TABLE IF EXISTS `d_class`;
CREATE TABLE `d_class`  (
  `c_id` int(0) NOT NULL AUTO_INCREMENT,
  `c_classid` int(0) NOT NULL,
  `c_classname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c_counsellor` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of d_class
-- ----------------------------
INSERT INTO `d_class` VALUES (1, 1001, '计科', '陈欣');
INSERT INTO `d_class` VALUES (2, 1002, '应化', '许燕');
INSERT INTO `d_class` VALUES (3, 1003, '土木', '李玉');
INSERT INTO `d_class` VALUES (4, 1004, '历史', '曾林宇');
INSERT INTO `d_class` VALUES (5, 1005, '数统', '张西');
INSERT INTO `d_class` VALUES (6, 1006, '园林', '赵七彩');
INSERT INTO `d_class` VALUES (7, 1007, '物信', '周宇航');
INSERT INTO `d_class` VALUES (8, 1008, '土木', '王琪');
INSERT INTO `d_class` VALUES (9, 1009, '软工', '陈丽');
INSERT INTO `d_class` VALUES (10, 1010, '金融', '吴钦');
INSERT INTO `d_class` VALUES (11, 1011, '语文', '张清');
INSERT INTO `d_class` VALUES (12, 1012, '化学', '张生');

-- ----------------------------
-- Table structure for d_dormgrade
-- ----------------------------
DROP TABLE IF EXISTS `d_dormgrade`;
CREATE TABLE `d_dormgrade`  (
  `g_id` int(0) NOT NULL AUTO_INCREMENT,
  `d_id` int(0) NOT NULL,
  `d_dormbuilding` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `d_grade` int(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NOT NULL,
  PRIMARY KEY (`g_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of d_dormgrade
-- ----------------------------
INSERT INTO `d_dormgrade` VALUES (1, 1101, '1号楼', 8, '2021-12-08 19:47:38', '2021-12-15 17:10:33');
INSERT INTO `d_dormgrade` VALUES (2, 1102, '1号楼', 10, '2021-12-12 18:15:06', '2021-12-15 17:10:44');
INSERT INTO `d_dormgrade` VALUES (3, 1201, '1号楼', 8, '2021-12-12 18:16:24', '2021-12-15 17:10:58');
INSERT INTO `d_dormgrade` VALUES (4, 1202, '1号楼', 9, '2021-12-12 18:17:12', '2021-12-15 17:11:12');
INSERT INTO `d_dormgrade` VALUES (5, 2101, '2号楼', 10, '2021-12-15 17:11:28', '2021-12-15 17:11:28');
INSERT INTO `d_dormgrade` VALUES (6, 2202, '2号楼', 9, '2021-12-15 17:11:45', '2021-12-15 17:11:45');
INSERT INTO `d_dormgrade` VALUES (7, 2102, '2号楼', 10, '2021-12-15 17:12:06', '2021-12-15 17:12:29');

-- ----------------------------
-- Table structure for d_dormitoryinfo
-- ----------------------------
DROP TABLE IF EXISTS `d_dormitoryinfo`;
CREATE TABLE `d_dormitoryinfo`  (
  `d_id` int(0) NOT NULL AUTO_INCREMENT,
  `s_dormitoryid` int(0) NOT NULL,
  `d_dormbuilding` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `d_bedtotal` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `d_bed` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`d_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of d_dormitoryinfo
-- ----------------------------
INSERT INTO `d_dormitoryinfo` VALUES (1, 3101, '3号楼', '6', '3', '黄珍珍');
INSERT INTO `d_dormitoryinfo` VALUES (2, 3102, '3号楼', '6', '6', '黄珍珍');
INSERT INTO `d_dormitoryinfo` VALUES (3, 3201, '3号楼', '6', '6', '黄珍珍');
INSERT INTO `d_dormitoryinfo` VALUES (4, 3202, '3号楼', '6', '5', '黄珍珍');
INSERT INTO `d_dormitoryinfo` VALUES (5, 2101, '2号楼', '6', '6', '张三');
INSERT INTO `d_dormitoryinfo` VALUES (6, 2102, '2号楼', '6', '4', '张三');
INSERT INTO `d_dormitoryinfo` VALUES (7, 2202, '2号楼', '6', '6', '张三');
INSERT INTO `d_dormitoryinfo` VALUES (8, 2201, '2号楼', '6', '5', '张三');
INSERT INTO `d_dormitoryinfo` VALUES (9, 1201, '1号楼', '6', '6', '薛磊磊');
INSERT INTO `d_dormitoryinfo` VALUES (10, 1202, '1号楼', '6', '4', '薛磊磊');
INSERT INTO `d_dormitoryinfo` VALUES (11, 1101, '1号楼', '6', '5', '薛磊磊');
INSERT INTO `d_dormitoryinfo` VALUES (12, 1102, '1号楼', '6', '6', '薛磊磊');
INSERT INTO `d_dormitoryinfo` VALUES (13, 4101, '4号楼', '6', '6', '李四');
INSERT INTO `d_dormitoryinfo` VALUES (14, 4102, '4号楼', '6', '3', '李四');
INSERT INTO `d_dormitoryinfo` VALUES (15, 4201, '4号楼', '6', '6', '李四');
INSERT INTO `d_dormitoryinfo` VALUES (16, 5101, '5号楼', '6', '5', '王皓');
INSERT INTO `d_dormitoryinfo` VALUES (17, 5102, '5号楼', '6', '6', '王皓');
INSERT INTO `d_dormitoryinfo` VALUES (18, 5201, '5号楼', '6', '3', '王皓');
INSERT INTO `d_dormitoryinfo` VALUES (19, 5202, '5号楼', '6', '6', '王皓');
INSERT INTO `d_dormitoryinfo` VALUES (20, 6201, '6号楼', '6', '5', '赵红');
INSERT INTO `d_dormitoryinfo` VALUES (21, 6202, '6号楼', '6', '6', '赵红');
INSERT INTO `d_dormitoryinfo` VALUES (22, 4202, '4号楼', '6', '6', '李四');
INSERT INTO `d_dormitoryinfo` VALUES (23, 6101, '6号楼', '6', '6', '赵红');
INSERT INTO `d_dormitoryinfo` VALUES (24, 6102, '6号楼', '6', '5', '赵红');

-- ----------------------------
-- Table structure for d_dormrepair
-- ----------------------------
DROP TABLE IF EXISTS `d_dormrepair`;
CREATE TABLE `d_dormrepair`  (
  `r_id` int(0) NOT NULL AUTO_INCREMENT,
  `d_id` int(0) NOT NULL,
  `d_dormbuilding` int(0) NOT NULL,
  `r_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of d_dormrepair
-- ----------------------------
INSERT INTO `d_dormrepair` VALUES (2, 5102, 5, '刘曲', '淋浴头坏了', '2021-12-16 16:45:18', '2021-12-16 16:45:18');
INSERT INTO `d_dormrepair` VALUES (3, 2101, 2, '程凯', '衣柜门掉了', '2021-12-16 17:13:47', '2021-12-16 17:13:47');
INSERT INTO `d_dormrepair` VALUES (4, 2101, 2, '张章', '热水器坏了', '2021-12-16 17:18:36', '2021-12-18 11:47:55');
INSERT INTO `d_dormrepair` VALUES (5, 6102, 6, '江河', '水龙头', '2021-12-16 18:01:26', '2021-12-16 18:01:26');
INSERT INTO `d_dormrepair` VALUES (6, 6202, 6, '张章', '灯不亮了', '2021-12-16 18:02:18', '2021-12-16 18:02:18');
INSERT INTO `d_dormrepair` VALUES (7, 4201, 4, '李琪', '水龙头漏水', '2021-12-16 18:02:55', '2021-12-16 18:02:55');
INSERT INTO `d_dormrepair` VALUES (8, 5201, 5, '李琪', '水龙头漏水', '2021-12-16 18:03:36', '2021-12-16 18:03:36');
INSERT INTO `d_dormrepair` VALUES (9, 1201, 1, '江海', '热水器坏了', '2021-12-16 18:04:05', '2021-12-16 18:04:05');
INSERT INTO `d_dormrepair` VALUES (10, 2202, 2, '张章', '水龙头漏水', '2021-12-16 18:04:33', '2021-12-16 18:04:33');
INSERT INTO `d_dormrepair` VALUES (11, 2201, 2, '李庆', '灯坏了', '2021-12-16 18:05:05', '2021-12-16 18:05:05');
INSERT INTO `d_dormrepair` VALUES (16, 1, 1, 'zz', '嘟嘟', '2021-12-20 14:12:44', '2021-12-20 14:12:44');
INSERT INTO `d_dormrepair` VALUES (20, 1101, 1, '江海', '水龙头坏了', '2021-12-20 14:17:44', '2021-12-20 14:17:44');
INSERT INTO `d_dormrepair` VALUES (21, 2101, 2, '黄珍珍', '电灯不亮了', '2021-12-21 18:07:21', '2021-12-21 18:07:21');

-- ----------------------------
-- Table structure for d_message
-- ----------------------------
DROP TABLE IF EXISTS `d_message`;
CREATE TABLE `d_message`  (
  `m_id` int(0) NOT NULL AUTO_INCREMENT,
  `m_message` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of d_message
-- ----------------------------
INSERT INTO `d_message` VALUES (1, NULL, '2021-12-25 22:31:11');
INSERT INTO `d_message` VALUES (2, '234566234566543245', '2021-12-25 22:33:06');
INSERT INTO `d_message` VALUES (3, '无染色的任天堂与，阿瑟的人头晕了，；。下次，；下次VG，；下次VGU币和今年快没吃vubhjnkmxtcyvubinom带头人衣哦', '2021-12-25 22:42:41');
INSERT INTO `d_message` VALUES (4, '是大法官寒假快乐', '2021-12-25 22:51:03');

-- ----------------------------
-- Table structure for d_stgrade
-- ----------------------------
DROP TABLE IF EXISTS `d_stgrade`;
CREATE TABLE `d_stgrade`  (
  `g_id` int(0) NOT NULL AUTO_INCREMENT,
  `s_studentid` int(0) NOT NULL,
  `s_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `s_grade` int(0) NULL DEFAULT NULL,
  `s_classid` int(0) NULL DEFAULT NULL,
  `s_dormitoryid` int(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`g_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of d_stgrade
-- ----------------------------
INSERT INTO `d_stgrade` VALUES (2, 1810010002, '许文', 10, 1001, 2101, '2021-12-15 17:15:52', '2021-12-15 17:15:52');

-- ----------------------------
-- Table structure for d_student
-- ----------------------------
DROP TABLE IF EXISTS `d_student`;
CREATE TABLE `d_student`  (
  `s_id` int(0) NOT NULL AUTO_INCREMENT,
  `s_studentid` int(0) NOT NULL,
  `s_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `s_sex` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `s_age` int(0) NULL DEFAULT NULL,
  `s_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `s_classid` int(0) NOT NULL,
  `s_classname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `s_dormitoryid` int(0) NOT NULL,
  PRIMARY KEY (`s_id`, `s_classid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of d_student
-- ----------------------------
INSERT INTO `d_student` VALUES (1, 1810010001, '张杰', '男', 23, '13512568714', 1001, '计科1', 1102);
INSERT INTO `d_student` VALUES (3, 1810010002, '许文', '女', 21, '13850312542', 1001, '计科', 2101);
INSERT INTO `d_student` VALUES (4, 1810010003, '王浩', '男', 22, '15059751234', 1001, '计科', 1101);
INSERT INTO `d_student` VALUES (5, 1810010004, '张伟', '男', 22, '15625487692', 1001, '计科', 1101);
INSERT INTO `d_student` VALUES (6, 1810010005, '郭欣', '女', 21, '13865244532', 1001, '计科', 2101);
INSERT INTO `d_student` VALUES (7, 1810020001, '曹原', '男', 20, '138138138', 1002, '应化', 1102);
INSERT INTO `d_student` VALUES (8, 1810030001, '赵跃', '男', 21, '138138138', 1003, '土木', 3101);
INSERT INTO `d_student` VALUES (9, 1810030002, '孙畅', '男', 21, '138138138', 1003, '土木', 3101);
INSERT INTO `d_student` VALUES (10, 1810030003, '周帆', '男', 21, '138138138', 1003, '土木', 3101);
INSERT INTO `d_student` VALUES (11, 1810050001, '天宇', '男', 21, '138138138', 1005, '数统', 5102);
INSERT INTO `d_student` VALUES (12, 1810050002, '张嘉佳', '女', 20, '138138138', 1005, '数统', 4102);
INSERT INTO `d_student` VALUES (13, 1810100001, '陈昊', '男', 21, '138138138', 1010, '金融', 5101);
INSERT INTO `d_student` VALUES (14, 1810010013, '黄珍珍', '男', 22, '1234567894', 1001, '计科', 2101);
INSERT INTO `d_student` VALUES (15, 123456, '测试', '男', 22, '123453456781', 1001, '计算', 3201);
INSERT INTO `d_student` VALUES (16, 2345678, '车上', '男', 22, '123456789098', 1234, '刘', 3201);
INSERT INTO `d_student` VALUES (17, 12345672, '车是', '男', 12, '12345678908', 123456, '缠绕体', 3101);
INSERT INTO `d_student` VALUES (18, 12243, '2423435', '男', 22, '123456789099', 12345, '234567', 3101);
INSERT INTO `d_student` VALUES (19, 34567, 'rtyu', '男', 33, '123456789099', 34567, '34567', 3101);
INSERT INTO `d_student` VALUES (23, 12345, '123456', '男', 1234, '123456', 23456, '123456', 3102);
INSERT INTO `d_student` VALUES (24, 12345, '12345', '男', 12345, '12345', 12345, '12345', 3102);

-- ----------------------------
-- Table structure for d_visitor
-- ----------------------------
DROP TABLE IF EXISTS `d_visitor`;
CREATE TABLE `d_visitor`  (
  `v_id` int(0) NOT NULL AUTO_INCREMENT,
  `v_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v_dormitoryid` int(0) NULL DEFAULT NULL,
  `v_dormbuilding` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`v_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of d_visitor
-- ----------------------------
INSERT INTO `d_visitor` VALUES (1, '郑杰', '138138138', 1101, '1号楼', '2021-12-05 13:26:13');
INSERT INTO `d_visitor` VALUES (2, '李博', '138138138', 1102, '1号楼', '2021-12-05 19:36:23');
INSERT INTO `d_visitor` VALUES (3, '张盈盈', '138138138', 2101, '2号楼', '2021-12-05 19:37:11');
INSERT INTO `d_visitor` VALUES (4, '王涛', '138138138', 3102, '3号楼', '2021-12-05 19:37:46');
INSERT INTO `d_visitor` VALUES (5, '胡浩', '138138138', 3101, '3号楼', '2021-12-05 19:38:27');
INSERT INTO `d_visitor` VALUES (6, '陈昊', '138138138', 5201, '5号楼', '2021-12-05 19:39:03');
INSERT INTO `d_visitor` VALUES (7, '刘军', '138138138', 5102, '5号楼', '2021-12-05 19:39:42');
INSERT INTO `d_visitor` VALUES (8, '李涓', '138138138', 6102, '6号楼', '2021-12-05 19:46:38');
INSERT INTO `d_visitor` VALUES (9, '陈然', '123123123', 6201, '6号楼', '2021-12-05 16:59:06');
INSERT INTO `d_visitor` VALUES (10, '尖尖', '12345678912', 1101, '1号楼', '2021-12-16 16:41:34');

SET FOREIGN_KEY_CHECKS = 1;
