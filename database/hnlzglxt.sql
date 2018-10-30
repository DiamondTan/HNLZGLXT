/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : hnlzglxt

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-10-30 21:07:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for access
-- ----------------------------
DROP TABLE IF EXISTS `access`;
CREATE TABLE `access` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '权限名',
  `path` varchar(50) NOT NULL DEFAULT '' COMMENT '权限路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of access
-- ----------------------------
INSERT INTO `access` VALUES ('1', '创建账户', '');
INSERT INTO `access` VALUES ('2', '查询信息', '');
INSERT INTO `access` VALUES ('3', '提交档案', '');
INSERT INTO `access` VALUES ('4', '修改档案', '');

-- ----------------------------
-- Table structure for basic_info
-- ----------------------------
DROP TABLE IF EXISTS `basic_info`;
CREATE TABLE `basic_info` (
  `idcard` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '身份证',
  `user_id` int(11) unsigned NOT NULL COMMENT '所属用户id',
  `full_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` char(1) NOT NULL DEFAULT '' COMMENT '性别',
  `born_date` datetime DEFAULT NULL COMMENT '出生日期',
  `former_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '曾用名',
  `nationality` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '民族',
  `micile_of_origin　` varchar(50) NOT NULL DEFAULT '' COMMENT '籍贯',
  `marital_status` char(2) NOT NULL DEFAULT '' COMMENT '婚姻状况',
  `educational_degree` varchar(20) NOT NULL DEFAULT '' COMMENT '文化程度',
  `political_status` varchar(20) NOT NULL DEFAULT '' COMMENT '政治面貌',
  `party_time` datetime DEFAULT NULL COMMENT '入党时间',
  `starting_time` datetime DEFAULT NULL COMMENT '参加工作时间',
  `work_unit` varchar(50) NOT NULL DEFAULT '' COMMENT '工作单位',
  `unit_type` varchar(20) NOT NULL DEFAULT '' COMMENT '单位性质',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '职务',
  `level` char(10) NOT NULL DEFAULT '' COMMENT '级别',
  `professional_title` char(10) NOT NULL DEFAULT '' COMMENT '职称',
  `division_work` varchar(20) NOT NULL DEFAULT '' COMMENT '分管工作',
  `serving_time` varchar(10) NOT NULL DEFAULT '' COMMENT '任现职时间',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '住址',
  `postal_code` int(6) NOT NULL DEFAULT '0' COMMENT '邮编',
  `reward_and_punish` text COMMENT '获奖情况',
  `filling_date` datetime DEFAULT NULL COMMENT '填表时间',
  PRIMARY KEY (`idcard`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `basic_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='领导干部基本信息表';

-- ----------------------------
-- Records of basic_info
-- ----------------------------
INSERT INTO `basic_info` VALUES ('410426195801012222', '4', '杜甫', '男', '1958-01-01 00:00:00', '无', '汉', '河南省郑州市', '已婚', '博士', '党员', '1983-10-01 00:00:00', '1980-02-01 00:00:00', '郑州大学', '学校', '纪委', '厅级', '教授', '监督', '5年', '河南省郑州市金水区', '450000', '无', '2018-09-30 00:00:00');
INSERT INTO `basic_info` VALUES ('410426198708075555', '5', '刘昊天', '男', '1987-08-07 00:00:00', '无', '回', '河南省郑州市', '已婚', '博士', '党员', '2007-08-26 00:00:00', '2009-09-01 00:00:00', '郑州大学', '学校', '校长', '厅级', '院士', '教学管理', '10年', '河南省郑州市中原区', '450000', '无', '2018-09-05 20:48:00');
INSERT INTO `basic_info` VALUES ('410426198801011111', '3', '李白', '男', '1988-01-01 00:00:00', '无', '汉', '河南省郑州市', '未婚', '本科', '党员', '2010-01-01 00:00:00', '2008-02-02 00:00:00', '郑州大学', '学校', '教导主任', '副厅级', '工程师', '教务', '10年', '河南省郑州市高新区', '450000', '无', '2018-10-30 00:00:00');
INSERT INTO `basic_info` VALUES ('410498196902031234', '7', '陈晨', '女', '1969-02-03 00:00:00', '无', '维吾尔族', '新疆维吾尔自治区', '已婚', '硕士', '党员', '1990-03-06 00:00:00', '1998-03-02 00:00:00', '郑州大学', '学校', '院长', '处级', '教授', '管理', '17年', '河南省郑州市二七区', '450000', '无', '2018-04-11 21:03:07');
INSERT INTO `basic_info` VALUES ('410725197708086543', '6', '赵凤云', '女', '1977-08-08 00:00:00', '无', '满', '河南省郑州市', '已婚', '硕士', '党员', '2000-03-04 00:00:00', '2001-05-06 00:00:00', '郑州大学', '学校', '院长', '处级', '教授', '教学', '15年', '河南省郑州市高新区', '450000', '无', '2018-08-15 20:54:47');

-- ----------------------------
-- Table structure for family_members
-- ----------------------------
DROP TABLE IF EXISTS `family_members`;
CREATE TABLE `family_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(11) unsigned NOT NULL COMMENT '所属用户id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `relationship` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '与本人关系',
  `born_date` datetime DEFAULT NULL COMMENT '出生年月',
  `political_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '政治面貌',
  `work_unit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '工作单位',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '职务',
  `remarks` text COMMENT '备注',
  `filling_date` date DEFAULT NULL COMMENT '填表时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `family_members_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家属基本信息表';

-- ----------------------------
-- Records of family_members
-- ----------------------------

-- ----------------------------
-- Table structure for f_employment_of_foreign_companies
-- ----------------------------
DROP TABLE IF EXISTS `f_employment_of_foreign_companies`;
CREATE TABLE `f_employment_of_foreign_companies` (
  `id` int(11) NOT NULL COMMENT '编号',
  `f_id` int(11) unsigned NOT NULL COMMENT '所属家属id',
  `enterprise_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '企业名称',
  `enterprise_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '企业地址',
  `scope_of_business` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '经营范围',
  `business_registration_authority` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '企业登记注册机关',
  `business_enterprise_form` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '经商办企业形式',
  PRIMARY KEY (`id`),
  KEY `f_id` (`f_id`),
  CONSTRAINT `f_employment_of_foreign_companies_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `family_members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在外商独资企业或中外企业任职情况';

-- ----------------------------
-- Records of f_employment_of_foreign_companies
-- ----------------------------

-- ----------------------------
-- Table structure for f_house_property
-- ----------------------------
DROP TABLE IF EXISTS `f_house_property`;
CREATE TABLE `f_house_property` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `f_id` int(11) unsigned NOT NULL COMMENT '所属家属id',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '房屋地址',
  `owner_of_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '产权人或产权办理情况',
  `building_area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '建筑面积',
  `buy_time` datetime DEFAULT NULL COMMENT '购买时间',
  `buy_price` decimal(10,0) NOT NULL COMMENT '购买总价',
  `remarks` text COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `f_id` (`f_id`),
  CONSTRAINT `f_house_property_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `family_members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家属房产信息表';

-- ----------------------------
-- Records of f_house_property
-- ----------------------------

-- ----------------------------
-- Table structure for f_personal_business
-- ----------------------------
DROP TABLE IF EXISTS `f_personal_business`;
CREATE TABLE `f_personal_business` (
  `id` int(11) NOT NULL,
  `f_id` int(11) unsigned NOT NULL,
  `enterprise_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '企业名称',
  `enterprise_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '企业地址',
  `scope_of_business` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '经营范围',
  `business_registration_authority` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '企业登记注册机关',
  `business_enterprise_form` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '经商办企业形式',
  PRIMARY KEY (`id`),
  KEY `f_id` (`f_id`),
  CONSTRAINT `f_personal_business_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `family_members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人经营办企业情况';

-- ----------------------------
-- Records of f_personal_business
-- ----------------------------

-- ----------------------------
-- Table structure for main_incumbency
-- ----------------------------
DROP TABLE IF EXISTS `main_incumbency`;
CREATE TABLE `main_incumbency` (
  `id` int(11) NOT NULL COMMENT '编号',
  `user_id` int(11) unsigned NOT NULL COMMENT '所属用户id',
  `Start_Time` datetime DEFAULT NULL COMMENT '起始时间',
  `End_Time` datetime DEFAULT NULL COMMENT '终止时间',
  `Work_Unit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '所在单位',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '担任职务',
  PRIMARY KEY (`id`),
  KEY `main_incumbency_ibfk_1` (`user_id`),
  CONSTRAINT `main_incumbency_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主要任职情况';

-- ----------------------------
-- Records of main_incumbency
-- ----------------------------

-- ----------------------------
-- Table structure for punishment
-- ----------------------------
DROP TABLE IF EXISTS `punishment`;
CREATE TABLE `punishment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(11) unsigned NOT NULL COMMENT '所属用户id',
  `main_error` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '主要错误事实',
  `processing_basis` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '处理依据',
  `investigation_unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '查处单位',
  `process_way` text COMMENT '处理方式',
  `process_time` datetime NOT NULL COMMENT '处理时间',
  `process_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '处理类型',
  `transfer_to_ judiciary` tinyint(4) NOT NULL COMMENT '是否移交司法机关',
  `circulate_criticism` text COMMENT '通报情况',
  `handover_time` datetime NOT NULL COMMENT '移交时间',
  `approver` varchar(10) NOT NULL DEFAULT '' COMMENT '审批人',
  `written_by` varchar(10) NOT NULL DEFAULT '' COMMENT '填表人',
  `remarks` text COMMENT '备注',
  `filling_time` datetime NOT NULL COMMENT '填表日期',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `punishment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='受组织处理和党政纪处分情况登记表';

-- ----------------------------
-- Records of punishment
-- ----------------------------

-- ----------------------------
-- Table structure for rank
-- ----------------------------
DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank` (
  `num` smallint(2) NOT NULL DEFAULT '1' COMMENT '等级位次',
  `name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '等级名称',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='等级表';

-- ----------------------------
-- Records of rank
-- ----------------------------
INSERT INTO `rank` VALUES ('0', '超级管理员');
INSERT INTO `rank` VALUES ('1', '一级');
INSERT INTO `rank` VALUES ('2', '二级');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` smallint(5) unsigned NOT NULL COMMENT '角色id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '角色名',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '父角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('0', '超级管理员', '0');
INSERT INTO `role` VALUES ('1', '管理员', '0');
INSERT INTO `role` VALUES ('2', '纪委', '0');
INSERT INTO `role` VALUES ('3', '被监管对象', '0');

-- ----------------------------
-- Table structure for role_access
-- ----------------------------
DROP TABLE IF EXISTS `role_access`;
CREATE TABLE `role_access` (
  `role_id` smallint(5) unsigned NOT NULL COMMENT '角色id',
  `access_id` smallint(5) unsigned NOT NULL COMMENT '权限id',
  PRIMARY KEY (`role_id`,`access_id`),
  KEY `access_id` (`access_id`),
  CONSTRAINT `role_access_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_access_ibfk_2` FOREIGN KEY (`access_id`) REFERENCES `access` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of role_access
-- ----------------------------
INSERT INTO `role_access` VALUES ('0', '1');
INSERT INTO `role_access` VALUES ('1', '1');
INSERT INTO `role_access` VALUES ('0', '2');
INSERT INTO `role_access` VALUES ('1', '2');
INSERT INTO `role_access` VALUES ('2', '2');
INSERT INTO `role_access` VALUES ('3', '2');
INSERT INTO `role_access` VALUES ('0', '3');
INSERT INTO `role_access` VALUES ('1', '3');
INSERT INTO `role_access` VALUES ('2', '3');
INSERT INTO `role_access` VALUES ('3', '3');
INSERT INTO `role_access` VALUES ('0', '4');
INSERT INTO `role_access` VALUES ('2', '4');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `account` varchar(20) NOT NULL DEFAULT '' COMMENT '账号',
  `password` varchar(40) NOT NULL DEFAULT '' COMMENT '密码',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `rank_id` smallint(2) unsigned NOT NULL DEFAULT '1' COMMENT '等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '2018-10-30 19:43:20', '0');
INSERT INTO `user` VALUES ('2', 'sys', 'sys', '2018-10-30 19:52:19', '0');
INSERT INTO `user` VALUES ('3', '20180001', '000000', '2018-10-30 19:56:19', '2');
INSERT INTO `user` VALUES ('4', '20180002', '000000', '2018-10-30 19:52:16', '2');
INSERT INTO `user` VALUES ('5', '20180003', '000000', '2018-10-30 19:52:14', '2');
INSERT INTO `user` VALUES ('6', '20180004', '000000', '2018-10-30 19:49:52', '1');
INSERT INTO `user` VALUES ('7', '20180005', '000000', '2018-10-30 19:49:56', '1');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` int(11) unsigned NOT NULL COMMENT '用户主键',
  `role_id` smallint(5) unsigned NOT NULL COMMENT '角色id',
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('3', '1');
INSERT INTO `user_role` VALUES ('4', '2');
INSERT INTO `user_role` VALUES ('5', '3');
INSERT INTO `user_role` VALUES ('6', '3');
INSERT INTO `user_role` VALUES ('7', '3');

-- ----------------------------
-- Table structure for u_house_property
-- ----------------------------
DROP TABLE IF EXISTS `u_house_property`;
CREATE TABLE `u_house_property` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL COMMENT '所属用户id',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '房屋地址',
  `owner` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '产权人或产权办理情况',
  `floorage` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '建筑面积',
  `buy_time` datetime DEFAULT NULL COMMENT '购买时间',
  `buy_price` decimal(10,2) DEFAULT NULL COMMENT '购买总价',
  `remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `u_house_property_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='领导干部房产';

-- ----------------------------
-- Records of u_house_property
-- ----------------------------
