/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : hnlzglxt

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-11-16 13:23:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for abroad_regist
-- ----------------------------
DROP TABLE IF EXISTS `abroad_regist`;
CREATE TABLE `abroad_regist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `countries_visited` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '出访国家',
  `back_time` datetime DEFAULT NULL COMMENT '归国时间',
  `going_abroad_time` datetime DEFAULT NULL COMMENT '出国时间',
  `mission` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '出访任务',
  `passport_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '护照或通行证号码',
  `group_units` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '组团单位',
  `document_symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '批件文号',
  `cost` varchar(255) NOT NULL DEFAULT '' COMMENT '费用情况',
  `activities` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '到达境外主要城市及活动',
  `remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '备注',
  `filling_time` date NOT NULL COMMENT '填表时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `abroad_regist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='领导干部出国情况登记表';

-- ----------------------------
-- Records of abroad_regist
-- ----------------------------

-- ----------------------------
-- Table structure for basic_info
-- ----------------------------
DROP TABLE IF EXISTS `basic_info`;
CREATE TABLE `basic_info` (
  `idcard` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '身份证',
  `user_id` int(11) unsigned NOT NULL COMMENT '所属用户id',
  `full_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '性别',
  `born_date` datetime DEFAULT NULL COMMENT '出生日期',
  `former_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '曾用名',
  `nationality` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '民族',
  `micile_of_origin　` varchar(50) NOT NULL DEFAULT '' COMMENT '籍贯',
  `photo` text COMMENT '照片路径',
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
INSERT INTO `basic_info` VALUES ('410426195801012222', '4', '杜甫', '男', '1958-01-01 00:00:00', '无', '汉', '河南省郑州市', null, '已婚', '博士', '党员', '1983-10-01 00:00:00', '1980-02-01 00:00:00', '郑州大学', '学校', '纪委', '厅级', '教授', '监督', '5年', '河南省郑州市金水区', '450000', '无', '2018-09-30 00:00:00');
INSERT INTO `basic_info` VALUES ('410426198708075555', '5', '刘昊天', '男', '1987-08-07 00:00:00', '无', '回', '河南省郑州市', null, '已婚', '博士', '党员', '2007-08-26 00:00:00', '2009-09-01 00:00:00', '郑州大学', '学校', '校长', '厅级', '院士', '教学管理', '10年', '河南省郑州市中原区', '450000', '无', '2018-09-05 20:48:00');
INSERT INTO `basic_info` VALUES ('410498196902031234', '7', '陈晨', '女', '1969-02-03 00:00:00', '无', '维吾尔族', '新疆维吾尔自治区', null, '已婚', '硕士', '党员', '1990-03-06 00:00:00', '1998-03-02 00:00:00', '郑州大学', '学校', '院长', '处级', '教授', '管理', '17年', '河南省郑州市二七区', '450000', '无', '2018-04-11 21:03:07');
INSERT INTO `basic_info` VALUES ('410725197708086543', '6', '赵凤云', '女', '1977-08-08 00:00:00', '无', '满', '河南省郑州市', null, '已婚', '硕士', '党员', '2000-03-04 00:00:00', '2001-05-06 00:00:00', '郑州大学', '学校', '院长', '处级', '教授', '教学', '15年', '河南省郑州市高新区', '450000', '无', '2018-08-15 20:54:47');
INSERT INTO `basic_info` VALUES ('410725198008084421', '8', '苏贞昌', '女', '1980-08-08 00:00:00', '无', '汉族', '河南省信阳市', null, '未婚', '博士', '党员', '2001-05-15 00:00:00', '2000-10-15 00:00:00', '郑州大学', '学校', '纪委', '处级', '教授', '教学', '20年', '河南省郑州市高新区', '450000', '无', '2018-05-05 00:00:00');

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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `f_id` int(11) unsigned NOT NULL COMMENT '所属家属id',
  `enterprise_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '企业名称',
  `enterprise_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '企业地址',
  `scope_of_business` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '经营范围',
  `business_registration_authority` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '企业登记注册机关',
  `business_enterprise_form` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '经商办企业形式',
  PRIMARY KEY (`id`),
  KEY `f_id` (`f_id`),
  CONSTRAINT `f_employment_of_foreign_companies_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `family_members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='在外商独资企业或中外企业任职情况';

-- ----------------------------
-- Records of f_employment_of_foreign_companies
-- ----------------------------

-- ----------------------------
-- Table structure for f_house_property
-- ----------------------------
DROP TABLE IF EXISTS `f_house_property`;
CREATE TABLE `f_house_property` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `f_id` int(11) unsigned NOT NULL COMMENT '所属家属id',
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
-- Table structure for honest_report
-- ----------------------------
DROP TABLE IF EXISTS `honest_report`;
CREATE TABLE `honest_report` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `year` int(11) NOT NULL COMMENT '述廉报告年份',
  `content` text COMMENT '报告内容',
  `filling_time` date NOT NULL COMMENT '填表时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `honest_report_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='领导干部述责述廉报告';

-- ----------------------------
-- Records of honest_report
-- ----------------------------

-- ----------------------------
-- Table structure for leave_handover
-- ----------------------------
DROP TABLE IF EXISTS `leave_handover`;
CREATE TABLE `leave_handover` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `last_unit_job` text COMMENT '调离前单位及职务',
  `new_unit_job` text COMMENT '新任职单位及职务',
  `leave_time` datetime DEFAULT NULL COMMENT '调离时间',
  `return_file_information` text COMMENT '个人借用保管使用的文件资料交还情况',
  `return_public_car` text COMMENT '公款配置的车辆通讯工具等公物交还情况',
  `office_space_vacate` text COMMENT '办公用房腾退情况',
  `public_debt` text COMMENT '公款清欠情况',
  `transfer_wage_relationship_time` datetime DEFAULT NULL COMMENT '转办党政组织工资关系时间',
  `others` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '其他需要交接的情况',
  `last_unit_opinion` text COMMENT '原工作单位意见',
  `filling_time` date NOT NULL COMMENT '填表时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `leave_handover_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='干部离职交接廉洁自律情况登记表';

-- ----------------------------
-- Records of leave_handover
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
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` int(11) unsigned NOT NULL COMMENT '机构编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '机构名称',
  `p_id` int(11) unsigned DEFAULT NULL COMMENT '上级机构',
  PRIMARY KEY (`id`),
  KEY `f_id` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构级别记录表';

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('10459', '郑州大学', null);
INSERT INTO `organization` VALUES ('10459001', '郑州大学信息工程学院', '10459');
INSERT INTO `organization` VALUES ('10459002', '郑州大学外语学院', '10459');

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
  `process_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '处理类型',
  `transfer_to_ judiciary` varchar(50) NOT NULL DEFAULT '' COMMENT '是否移交司法机关',
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
-- Table structure for regist_commitments
-- ----------------------------
DROP TABLE IF EXISTS `regist_commitments`;
CREATE TABLE `regist_commitments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `affair` text COMMENT '承诺事项',
  `content` text COMMENT '承诺内容',
  `status_practice` text COMMENT '践诺情况',
  `check_opinion` text COMMENT '党组织审核意见',
  `remarks` text COMMENT '备注',
  `filling_time` date NOT NULL COMMENT '填表时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `regist_commitments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='领导干部廉政承诺情况等级表';

-- ----------------------------
-- Records of regist_commitments
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` smallint(5) unsigned NOT NULL COMMENT '角色id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '角色名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('0', '超级管理员');
INSERT INTO `role` VALUES ('1', '管理员');
INSERT INTO `role` VALUES ('2', '纪委');
INSERT INTO `role` VALUES ('3', '被监管对象');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `account` varchar(20) NOT NULL DEFAULT '' COMMENT '账号',
  `password` varchar(40) NOT NULL DEFAULT '' COMMENT '密码',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `organization_id` int(11) unsigned DEFAULT NULL COMMENT '所属机构id',
  `role` smallint(5) NOT NULL COMMENT '用户角色',
  PRIMARY KEY (`id`),
  KEY `user_ibfk_1` (`organization_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '2018-11-03 10:55:43', '10459', '0');
INSERT INTO `user` VALUES ('2', 'sys', 'sys', '2018-11-03 10:55:46', '10459', '0');
INSERT INTO `user` VALUES ('3', '20180001', '000000', '2018-11-14 22:27:18', '10459', '1');
INSERT INTO `user` VALUES ('4', '20180002', '000000', '2018-11-14 22:29:25', '10459', '2');
INSERT INTO `user` VALUES ('5', '20180003', '000000', '2018-11-14 22:29:29', '10459', '3');
INSERT INTO `user` VALUES ('6', '20180004', '000000', '2018-11-14 22:29:31', '10459001', '3');
INSERT INTO `user` VALUES ('7', '20180005', '000000', '2018-11-14 22:29:32', '10459002', '3');
INSERT INTO `user` VALUES ('8', '20180006', '000000', '2018-11-14 22:29:27', '10459001', '2');

-- ----------------------------
-- Table structure for u_house_property
-- ----------------------------
DROP TABLE IF EXISTS `u_house_property`;
CREATE TABLE `u_house_property` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='领导干部房产';

-- ----------------------------
-- Records of u_house_property
-- ----------------------------

-- ----------------------------
-- Table structure for wedding_funeral
-- ----------------------------
DROP TABLE IF EXISTS `wedding_funeral`;
CREATE TABLE `wedding_funeral` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `reason` text COMMENT '操办事由',
  `time_place` text COMMENT '办理的具体时间地点',
  `scope_and_number` text COMMENT '邀请人员范围及人数',
  `promise` text COMMENT '本人承诺',
  `opinion` text COMMENT '备案意见',
  `filling_time` date NOT NULL COMMENT '填表时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `wedding_funeral_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='领导干部操办婚丧喜庆事宜报告表';

-- ----------------------------
-- Records of wedding_funeral
-- ----------------------------
