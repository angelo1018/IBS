/*
 Navicat Premium Data Transfer

 Source Server         : 测试服务器
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : fdb3

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 10/03/2020 17:47:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
INSERT INTO `auth_group` VALUES (1, '基础资料维护组');
COMMIT;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN;
INSERT INTO `auth_group_permissions` VALUES (1, 1, 25);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 26);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 27);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 28);
INSERT INTO `auth_group_permissions` VALUES (5, 1, 29);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 30);
INSERT INTO `auth_group_permissions` VALUES (7, 1, 31);
INSERT INTO `auth_group_permissions` VALUES (8, 1, 32);
INSERT INTO `auth_group_permissions` VALUES (9, 1, 33);
INSERT INTO `auth_group_permissions` VALUES (10, 1, 34);
INSERT INTO `auth_group_permissions` VALUES (11, 1, 35);
INSERT INTO `auth_group_permissions` VALUES (12, 1, 36);
INSERT INTO `auth_group_permissions` VALUES (13, 1, 40);
INSERT INTO `auth_group_permissions` VALUES (14, 1, 44);
INSERT INTO `auth_group_permissions` VALUES (15, 1, 49);
INSERT INTO `auth_group_permissions` VALUES (16, 1, 50);
INSERT INTO `auth_group_permissions` VALUES (17, 1, 51);
INSERT INTO `auth_group_permissions` VALUES (18, 1, 52);
INSERT INTO `auth_group_permissions` VALUES (19, 1, 53);
INSERT INTO `auth_group_permissions` VALUES (20, 1, 54);
INSERT INTO `auth_group_permissions` VALUES (21, 1, 55);
INSERT INTO `auth_group_permissions` VALUES (22, 1, 56);
INSERT INTO `auth_group_permissions` VALUES (23, 1, 60);
INSERT INTO `auth_group_permissions` VALUES (24, 1, 64);
COMMIT;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add account type', 7, 'add_accounttype');
INSERT INTO `auth_permission` VALUES (26, 'Can change account type', 7, 'change_accounttype');
INSERT INTO `auth_permission` VALUES (27, 'Can delete account type', 7, 'delete_accounttype');
INSERT INTO `auth_permission` VALUES (28, 'Can view account type', 7, 'view_accounttype');
INSERT INTO `auth_permission` VALUES (29, 'Can add company', 8, 'add_company');
INSERT INTO `auth_permission` VALUES (30, 'Can change company', 8, 'change_company');
INSERT INTO `auth_permission` VALUES (31, 'Can delete company', 8, 'delete_company');
INSERT INTO `auth_permission` VALUES (32, 'Can view company', 8, 'view_company');
INSERT INTO `auth_permission` VALUES (33, 'Can add currency', 9, 'add_currency');
INSERT INTO `auth_permission` VALUES (34, 'Can change currency', 9, 'change_currency');
INSERT INTO `auth_permission` VALUES (35, 'Can delete currency', 9, 'delete_currency');
INSERT INTO `auth_permission` VALUES (36, 'Can view currency', 9, 'view_currency');
INSERT INTO `auth_permission` VALUES (37, 'Can add mysql view', 10, 'add_mysqlview');
INSERT INTO `auth_permission` VALUES (38, 'Can change mysql view', 10, 'change_mysqlview');
INSERT INTO `auth_permission` VALUES (39, 'Can delete mysql view', 10, 'delete_mysqlview');
INSERT INTO `auth_permission` VALUES (40, 'Can view mysql view', 10, 'view_mysqlview');
INSERT INTO `auth_permission` VALUES (41, 'Can add version', 11, 'add_version');
INSERT INTO `auth_permission` VALUES (42, 'Can change version', 11, 'change_version');
INSERT INTO `auth_permission` VALUES (43, 'Can delete version', 11, 'delete_version');
INSERT INTO `auth_permission` VALUES (44, 'Can view version', 11, 'view_version');
INSERT INTO `auth_permission` VALUES (45, 'Can add user', 12, 'add_user');
INSERT INTO `auth_permission` VALUES (46, 'Can change user', 12, 'change_user');
INSERT INTO `auth_permission` VALUES (47, 'Can delete user', 12, 'delete_user');
INSERT INTO `auth_permission` VALUES (48, 'Can view user', 12, 'view_user');
INSERT INTO `auth_permission` VALUES (49, 'Can add currency rate', 13, 'add_currencyrate');
INSERT INTO `auth_permission` VALUES (50, 'Can change currency rate', 13, 'change_currencyrate');
INSERT INTO `auth_permission` VALUES (51, 'Can delete currency rate', 13, 'delete_currencyrate');
INSERT INTO `auth_permission` VALUES (52, 'Can view currency rate', 13, 'view_currencyrate');
INSERT INTO `auth_permission` VALUES (53, 'Can add account', 14, 'add_account');
INSERT INTO `auth_permission` VALUES (54, 'Can change account', 14, 'change_account');
INSERT INTO `auth_permission` VALUES (55, 'Can delete account', 14, 'delete_account');
INSERT INTO `auth_permission` VALUES (56, 'Can view account', 14, 'view_account');
INSERT INTO `auth_permission` VALUES (57, 'Can add budget data', 15, 'add_budgetdata');
INSERT INTO `auth_permission` VALUES (58, 'Can change budget data', 15, 'change_budgetdata');
INSERT INTO `auth_permission` VALUES (59, 'Can delete budget data', 15, 'delete_budgetdata');
INSERT INTO `auth_permission` VALUES (60, 'Can view budget data', 15, 'view_budgetdata');
INSERT INTO `auth_permission` VALUES (61, 'Can add actual data', 16, 'add_actualdata');
INSERT INTO `auth_permission` VALUES (62, 'Can change actual data', 16, 'change_actualdata');
INSERT INTO `auth_permission` VALUES (63, 'Can delete actual data', 16, 'delete_actualdata');
INSERT INTO `auth_permission` VALUES (64, 'Can view actual data', 16, 'view_actualdata');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$180000$tRmV8vhihD13$SzPVJXl8+pP6nMMlKF3wW1+n+VG2m9X185xO+6D67aU=', '2020-03-09 10:04:20.028715', 1, 'root', '', '', 'root@qq.com', 1, 1, '2020-03-09 01:57:24.202969');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$180000$rNq3ywsRRmN0$aI0ZBND1bX/qIfurHmJPRGD9Naohv+t4ry2fVaU7nsc=', '2020-03-10 06:08:35.190336', 0, 'fuqihao', '', '', '', 1, 1, '2020-03-09 08:21:00.000000');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$180000$uQzvxhgWpmzV$FozNn/llG21x8kwf4UMimeqlZFOdan+9jBjb12HnhlU=', NULL, 0, 'zhangqiguo', '', '', '', 1, 1, '2020-03-09 08:29:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
BEGIN;
INSERT INTO `auth_user_groups` VALUES (1, 2, 1);
INSERT INTO `auth_user_groups` VALUES (2, 3, 1);
COMMIT;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for collector_account
-- ----------------------------
DROP TABLE IF EXISTS `collector_account`;
CREATE TABLE `collector_account` (
  `accountid` varchar(64) NOT NULL,
  `accountname` varchar(128) NOT NULL,
  `parentaccount` tinyint(1) NOT NULL,
  `accounttypeid_id` int(11) NOT NULL,
  PRIMARY KEY (`accountid`),
  KEY `collector_account_accounttypeid_id_24183c4c_fk_collector` (`accounttypeid_id`),
  CONSTRAINT `collector_account_accounttypeid_id_24183c4c_fk_collector` FOREIGN KEY (`accounttypeid_id`) REFERENCES `collector_accounttype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collector_account
-- ----------------------------
BEGIN;
INSERT INTO `collector_account` VALUES ('1001', '现金', 0, 1);
INSERT INTO `collector_account` VALUES ('2001', '应付账款', 0, 2);
INSERT INTO `collector_account` VALUES ('3001', '销售费用', 0, 3);
INSERT INTO `collector_account` VALUES ('3002', '销售成本', 0, 3);
INSERT INTO `collector_account` VALUES ('3003', '管理费用', 0, 3);
INSERT INTO `collector_account` VALUES ('GBEBIT', '息税前利润（EBIT）', 1, 7);
INSERT INTO `collector_account` VALUES ('GBRJEBIT', '人均EBIT', 0, 7);
INSERT INTO `collector_account` VALUES ('GBRS', '人数（花名册口径）', 0, 9);
INSERT INTO `collector_account` VALUES ('GBTSSR', '退税收入', 0, 4);
INSERT INTO `collector_account` VALUES ('GBYF', '运费', 0, 3);
INSERT INTO `collector_account` VALUES ('GBZJYTX', '折旧与摊销', 0, 10);
INSERT INTO `collector_account` VALUES ('PL010101', '利润总额', 1, 7);
INSERT INTO `collector_account` VALUES ('PL01010101', '营业利润', 1, 7);
INSERT INTO `collector_account` VALUES ('PL0101010101', '营业收入', 1, 4);
INSERT INTO `collector_account` VALUES ('PL010101010101', '主营业务收入', 0, 4);
INSERT INTO `collector_account` VALUES ('PL010101010102', '其他业务收入', 0, 4);
INSERT INTO `collector_account` VALUES ('PL010101010201', '主营业务成本', 0, 3);
INSERT INTO `collector_account` VALUES ('PL010101010202', '其他业务成本', 0, 3);
INSERT INTO `collector_account` VALUES ('PL0101010103', '税金及附加', 0, 3);
INSERT INTO `collector_account` VALUES ('PL0101010104', '销售费用', 0, 3);
INSERT INTO `collector_account` VALUES ('PL0101010105', '管理费用', 0, 3);
INSERT INTO `collector_account` VALUES ('PL0101010106', '财务费用', 0, 3);
INSERT INTO `collector_account` VALUES ('PL0101010107', '资产减值损失', 0, 3);
INSERT INTO `collector_account` VALUES ('PL0101010108', '公允价值变动收益', 0, 6);
INSERT INTO `collector_account` VALUES ('PL0101010109', '投资收益', 0, 6);
INSERT INTO `collector_account` VALUES ('PL0101010110', '资产处置收益', 0, 6);
INSERT INTO `collector_account` VALUES ('PL0101010111', '其他收益', 0, 6);
INSERT INTO `collector_account` VALUES ('PL0101010112', '研发费用', 0, 3);
INSERT INTO `collector_account` VALUES ('PL01010102', '营业外收入', 0, 4);
INSERT INTO `collector_account` VALUES ('PL01010103', '营业外支出', 0, 3);
COMMIT;

-- ----------------------------
-- Table structure for collector_accounttype
-- ----------------------------
DROP TABLE IF EXISTS `collector_accounttype`;
CREATE TABLE `collector_accounttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collector_accounttype
-- ----------------------------
BEGIN;
INSERT INTO `collector_accounttype` VALUES (1, '资产');
INSERT INTO `collector_accounttype` VALUES (2, '负债');
INSERT INTO `collector_accounttype` VALUES (3, '费用');
INSERT INTO `collector_accounttype` VALUES (4, '收入');
INSERT INTO `collector_accounttype` VALUES (6, '损益');
INSERT INTO `collector_accounttype` VALUES (7, '利润');
INSERT INTO `collector_accounttype` VALUES (8, '产销量');
INSERT INTO `collector_accounttype` VALUES (9, '人数');
INSERT INTO `collector_accounttype` VALUES (10, '折摊');
COMMIT;

-- ----------------------------
-- Table structure for collector_actualdata
-- ----------------------------
DROP TABLE IF EXISTS `collector_actualdata`;
CREATE TABLE `collector_actualdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `accountid_id` varchar(64) NOT NULL,
  `version_id` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `collector_actualdata_version_id_accountid_id_59a2e689_uniq` (`version_id`,`accountid_id`),
  KEY `collector_actualdata_accountid_id_c74b82aa_fk_collector` (`accountid_id`),
  CONSTRAINT `collector_actualdata_accountid_id_c74b82aa_fk_collector` FOREIGN KEY (`accountid_id`) REFERENCES `collector_account` (`accountid`),
  CONSTRAINT `collector_actualdata_version_id_7a940474_fk_collector` FOREIGN KEY (`version_id`) REFERENCES `collector_version` (`versionname`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collector_actualdata
-- ----------------------------
BEGIN;
INSERT INTO `collector_actualdata` VALUES (1, 100356.6789, '3001', 'V1101-2020-02-09/25');
INSERT INTO `collector_actualdata` VALUES (2, 230976.56, '3002', 'V1101-2020-02-09/25');
INSERT INTO `collector_actualdata` VALUES (3, 1204590.09, '3003', 'V1101-2020-02-09/25');
INSERT INTO `collector_actualdata` VALUES (4, 100234.56, '3001', 'V1106-2020-02-09/44');
INSERT INTO `collector_actualdata` VALUES (5, 212334.45, '3002', 'V1106-2020-02-09/44');
INSERT INTO `collector_actualdata` VALUES (6, 100, '3003', 'V1106-2020-02-09/44');
COMMIT;

-- ----------------------------
-- Table structure for collector_budgetdata
-- ----------------------------
DROP TABLE IF EXISTS `collector_budgetdata`;
CREATE TABLE `collector_budgetdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `accountid_id` varchar(64) NOT NULL,
  `version_id` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `collector_budgetdata_version_id_accountid_id_79f652ba_uniq` (`version_id`,`accountid_id`),
  KEY `collector_budgetdata_accountid_id_e621d156_fk_collector` (`accountid_id`),
  CONSTRAINT `collector_budgetdata_accountid_id_e621d156_fk_collector` FOREIGN KEY (`accountid_id`) REFERENCES `collector_account` (`accountid`),
  CONSTRAINT `collector_budgetdata_version_id_30c85146_fk_collector` FOREIGN KEY (`version_id`) REFERENCES `collector_version` (`versionname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for collector_company
-- ----------------------------
DROP TABLE IF EXISTS `collector_company`;
CREATE TABLE `collector_company` (
  `companycode` varchar(64) NOT NULL,
  `companyname` varchar(64) NOT NULL,
  `parentcompany` tinyint(1) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`companycode`),
  KEY `collector_company_currency_id_5cf9971e_fk_collector_currency_id` (`currency_id`),
  CONSTRAINT `collector_company_currency_id_5cf9971e_fk_collector_currency_id` FOREIGN KEY (`currency_id`) REFERENCES `collector_currency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collector_company
-- ----------------------------
BEGIN;
INSERT INTO `collector_company` VALUES ('1101', '山鹰国际马鞍山', 1, 2);
INSERT INTO `collector_company` VALUES ('1102', '浙江山鹰', 1, 2);
INSERT INTO `collector_company` VALUES ('1103', '造纸事业部', 1, 2);
INSERT INTO `collector_company` VALUES ('1104', '山鹰国际上海分公司', 0, 2);
INSERT INTO `collector_company` VALUES ('1105', '欧洲事业部', 1, 4);
INSERT INTO `collector_company` VALUES ('1106', '北美事业部', 1, 3);
INSERT INTO `collector_company` VALUES ('2100', '包装事业部', 1, 2);
INSERT INTO `collector_company` VALUES ('E1100', '山鹰国际控股股份公司（母公司）', 1, 2);
INSERT INTO `collector_company` VALUES ('E1110', '浙江山鹰纸业有限公司（母公司）', 0, 2);
INSERT INTO `collector_company` VALUES ('E1120', '山鹰纸业销售有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E1130', '马鞍山市天福纸箱纸品有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E1140', '山鹰国际控股股份公司上海分公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E1150', '山鹰华中纸业有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E1160', '山鹰纸业（重庆）有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E1170', '山鹰纸业（福建）有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E1180', '山鹰纸业（湖北）有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E1190', '福建省联盛纸业有限责任公司（母公司）', 0, 2);
INSERT INTO `collector_company` VALUES ('E1200', '吉安集团有限公司上海分公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E1210', '山鹰纸业（吉林）有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E1220', '山鹰纸业（广东）有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E1960', 'Global Win Wickliffe LLC', 0, 3);
INSERT INTO `collector_company` VALUES ('E1970', 'Phoenix Paper Wickliffe LLC', 0, 3);
INSERT INTO `collector_company` VALUES ('E2110', '合肥祥恒包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2120', '武汉祥恒包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2130', '合肥华东包装有限公司（母公司）', 0, 2);
INSERT INTO `collector_company` VALUES ('E2140', '合肥华东包装有限公司武汉分公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2150', '合肥华东包装有限公司芜湖分公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2160', '祥恒（莆田）包装有限公司（母公司）', 0, 2);
INSERT INTO `collector_company` VALUES ('E2170', '祥恒（厦门）包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2180', '祥恒（天津）包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2190', '四川祥恒包装制品有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2200', '浙江祥恒包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2210', '祥恒（嘉善）包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2220', '苏州山鹰纸业纸品有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2230', '祥恒（杭州）包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2240', '马鞍山祥恒包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2250', '扬州祥恒包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2260', '祥恒（常州）包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2270', '祥恒创意包装有限公司（母公司）', 0, 2);
INSERT INTO `collector_company` VALUES ('E2280', '青岛恒广泰包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2290', '烟台恒广泰包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2300', '祥恒（中山）包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2310', '无锡新祥恒包装科技有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2320', '中印科技股份有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2330', '陕西祥恒包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2340', '南昌祥恒包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2350', '中祥检测科技有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2360', '中山中健环保包装股份有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2370', '中山市山健包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2380', '广西南宁中健包装有限公司（母公司）', 0, 2);
INSERT INTO `collector_company` VALUES ('E2390', '南宁胜奕兴业包装有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E2900', '恒健（香港）包装有限公司', 0, 7);
INSERT INTO `collector_company` VALUES ('E2910', '祥恒创意（香港）包装有限公司', 0, 7);
INSERT INTO `collector_company` VALUES ('E3110', '马鞍山市蓝天废旧物资回收有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E3120', '上海山鹰供应链管理有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E3130', '福建省莆田市阳光纸业有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E3140', '福建环宇纸业有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E3150', '嘉兴环宇商务服务有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E3160', '马鞍山环宇再生资源科技有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E3170', '嘉兴环宇再生资源科技有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E3190', '浙江泰兴纸业有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E3200', '漳州宇盛纸业有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E3210', '宇盛（上海）再生资源开发有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E3220', '浙江山鹰供应链管理有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E3230', '荆州联宇再生资源有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E3800', 'Container Transport Oldenburger BV(Consolidation)', 0, 3);
INSERT INTO `collector_company` VALUES ('E3900', '环宇集团国际控股有限公司（母公司）', 1, 3);
INSERT INTO `collector_company` VALUES ('E3910', 'Cycle Link (U.S.A) Inc.', 0, 3);
INSERT INTO `collector_company` VALUES ('E3920', 'Cycle Link Austrlia PTY Ltd', 0, 3);
INSERT INTO `collector_company` VALUES ('E3930', 'Cycle Link (UK) Limited', 0, 3);
INSERT INTO `collector_company` VALUES ('E3940', 'Cycle Link Co.,Ltd.-JPN', 0, 3);
INSERT INTO `collector_company` VALUES ('E3950', 'Cycle Link (Europe) B.V.', 0, 3);
INSERT INTO `collector_company` VALUES ('E4110', '浙江中远发仓储服务有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E4120', '马鞍山天顺港口有限责任公司（母公司）', 0, 2);
INSERT INTO `collector_company` VALUES ('E4130', '马鞍山天顺力达集装箱服务有限责任公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E4140', '马鞍山天顺船务代理有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E5110', '山鹰（上海）融资租赁有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E5130', '谊来（莆田）珠宝工业有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E5200', '山鹰投资管理有限公司（母公司）', 0, 2);
INSERT INTO `collector_company` VALUES ('E5210', '深圳前海山鹰原力基金管理有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E5220', '深圳前海山鹰新时代投资管理有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E5230', '马鞍山市雄鹰新兴产业投资基金（有限合伙）', 0, 2);
INSERT INTO `collector_company` VALUES ('E5240', '安徽省鹰隼恒富一期新兴产业基金（有限合伙）', 0, 2);
INSERT INTO `collector_company` VALUES ('E5250', '安徽省鹰隼恒富二期新兴产业基金（有限合伙）', 0, 2);
INSERT INTO `collector_company` VALUES ('E5260', '深圳前海山鹰新时代新兴产业发展基金合伙企业（有限合伙）', 0, 2);
INSERT INTO `collector_company` VALUES ('E5270', '深圳前海山鹰新时代新兴产业二号发展基金合伙企业（有限合伙）', 0, 2);
INSERT INTO `collector_company` VALUES ('E5280', '云印技术（深圳）有限公司', 1, 2);
INSERT INTO `collector_company` VALUES ('E5290', '深圳市云印电子商务有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E5300', '宁波市云印微供电子商务有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E5310', '深圳市云印商业保理有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E5320', '厦门包印通科技有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E5900', 'Global win co.,ltd（母公司）', 0, 3);
INSERT INTO `collector_company` VALUES ('E5910', 'Global win capital corporation', 0, 3);
INSERT INTO `collector_company` VALUES ('E6120', '爱拓环保能源（浙江）有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E6130', '山鹰（上海）企业管理咨询有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E6140', '嘉兴路通报关有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('E6150', '宁波环深垃圾分类服务有限公司', 0, 2);
INSERT INTO `collector_company` VALUES ('ENP', 'SUTRIV Holding AB（合并）', 1, 6);
COMMIT;

-- ----------------------------
-- Table structure for collector_currency
-- ----------------------------
DROP TABLE IF EXISTS `collector_currency`;
CREATE TABLE `collector_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currencyname` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `collector_currency_currencyname_f2b6b606_uniq` (`currencyname`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collector_currency
-- ----------------------------
BEGIN;
INSERT INTO `collector_currency` VALUES (2, 'CNY');
INSERT INTO `collector_currency` VALUES (4, 'EUD');
INSERT INTO `collector_currency` VALUES (7, 'HKD');
INSERT INTO `collector_currency` VALUES (6, 'SEK');
INSERT INTO `collector_currency` VALUES (3, 'USD');
COMMIT;

-- ----------------------------
-- Table structure for collector_currencyrate
-- ----------------------------
DROP TABLE IF EXISTS `collector_currencyrate`;
CREATE TABLE `collector_currencyrate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periodrate` double NOT NULL,
  `pointrate` double NOT NULL,
  `currencydate` date NOT NULL,
  `aftercur_id` int(11) NOT NULL,
  `originalcur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collector_currencyra_originalcur_id_bd047033_fk_collector` (`originalcur_id`),
  KEY `collector_currencyra_aftercur_id_57338d30_fk_collector` (`aftercur_id`),
  CONSTRAINT `collector_currencyra_aftercur_id_57338d30_fk_collector` FOREIGN KEY (`aftercur_id`) REFERENCES `collector_currency` (`id`),
  CONSTRAINT `collector_currencyra_originalcur_id_bd047033_fk_collector` FOREIGN KEY (`originalcur_id`) REFERENCES `collector_currency` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collector_currencyrate
-- ----------------------------
BEGIN;
INSERT INTO `collector_currencyrate` VALUES (1, 6.6, 6.7, '2020-03-09', 2, 3);
INSERT INTO `collector_currencyrate` VALUES (2, 6.5, 6.65, '2020-02-29', 2, 3);
INSERT INTO `collector_currencyrate` VALUES (3, 0.74, 0.74, '2020-03-09', 2, 6);
INSERT INTO `collector_currencyrate` VALUES (4, 0.8933, 0.8933, '2020-03-10', 2, 7);
COMMIT;

-- ----------------------------
-- Table structure for collector_user
-- ----------------------------
DROP TABLE IF EXISTS `collector_user`;
CREATE TABLE `collector_user` (
  `username` varchar(64) NOT NULL,
  `password` varchar(256) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `companycode_id` varchar(64) NOT NULL,
  PRIMARY KEY (`userid`),
  KEY `collector_user_companycode_id_a4dfd8a1_fk_collector` (`companycode_id`),
  CONSTRAINT `collector_user_companycode_id_a4dfd8a1_fk_collector` FOREIGN KEY (`companycode_id`) REFERENCES `collector_company` (`companycode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for collector_version
-- ----------------------------
DROP TABLE IF EXISTS `collector_version`;
CREATE TABLE `collector_version` (
  `submittdate` datetime(6) NOT NULL,
  `accountdate` date NOT NULL,
  `actualorbudget` tinyint(1) NOT NULL,
  `versionname` varchar(64) NOT NULL,
  `vaild` tinyint(1) DEFAULT NULL,
  `companycode_id` varchar(64) NOT NULL,
  PRIMARY KEY (`versionname`),
  KEY `collector_version_companycode_id_84126c26_fk_collector` (`companycode_id`),
  CONSTRAINT `collector_version_companycode_id_84126c26_fk_collector` FOREIGN KEY (`companycode_id`) REFERENCES `collector_company` (`companycode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collector_version
-- ----------------------------
BEGIN;
INSERT INTO `collector_version` VALUES ('2020-03-09 03:13:44.247948', '2020-02-09', 1, 'V1101-2020-02-09/25', NULL, '1101');
INSERT INTO `collector_version` VALUES ('2020-03-09 07:22:34.338777', '2020-02-09', 1, 'V1105-2020-02-09/41', NULL, '1105');
INSERT INTO `collector_version` VALUES ('2020-03-09 06:51:54.064827', '2020-02-09', 1, 'V1105-2020-02-09/60', NULL, '1105');
INSERT INTO `collector_version` VALUES ('2020-03-09 03:32:06.044755', '2020-02-09', 1, 'V1106-2020-02-09/44', NULL, '1106');
INSERT INTO `collector_version` VALUES ('2020-03-10 08:49:57.291991', '2019-03-10', 1, 'VE5310-2019-03-10/63', NULL, 'E5310');
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES (1, '2020-03-09 02:07:20.232637', '1', 'Currency object (1)', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (2, '2020-03-09 02:12:03.612425', '2', 'Currency object (2)', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (3, '2020-03-09 02:12:09.340029', '3', 'Currency object (3)', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (4, '2020-03-09 02:12:20.737413', '4', 'Currency object (4)', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (5, '2020-03-09 02:16:23.862189', '1104', '山鹰国际上海分公司 - 1104', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (6, '2020-03-09 02:17:00.720962', '1101', '山鹰国际马鞍山 - 1101', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (7, '2020-03-09 02:17:18.982172', '1102', '浙江山鹰 - 1102', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (8, '2020-03-09 02:17:28.914277', '1103', '造纸事业部 - 1103', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (9, '2020-03-09 02:17:42.365220', '1105', '欧洲事业部 - 1105', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (10, '2020-03-09 02:17:54.875240', '1106', '北美事业部 - 1106', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (11, '2020-03-09 02:20:11.555242', '1', '资产', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (12, '2020-03-09 02:20:20.358519', '2', '负债', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (13, '2020-03-09 02:20:24.428059', '3', '费用', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (14, '2020-03-09 02:20:48.624690', '1001', '现金', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (15, '2020-03-09 02:20:59.152624', '2001', '应付账款', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (16, '2020-03-09 02:21:14.055269', '3001', '销售费用', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (17, '2020-03-09 02:21:30.919446', '3002', '销售成本', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (18, '2020-03-09 02:21:45.584114', '3003', '管理费用', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (19, '2020-03-09 02:45:40.745285', '1', 'collector.CurrencyRate.None/collector.CurrencyRate.None', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (20, '2020-03-09 02:46:04.010106', '2', 'collector.CurrencyRate.None/collector.CurrencyRate.None', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (21, '2020-03-09 03:16:22.434169', '1', 'V1101-2020-02-09/25-销售费用: 100356.6789', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (22, '2020-03-09 03:16:37.568922', '2', 'V1101-2020-02-09/25-销售成本: 230976.56', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (23, '2020-03-09 03:16:54.163513', '3', 'V1101-2020-02-09/25-管理费用: 1204590.09', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (24, '2020-03-09 06:40:15.635727', '4', 'V1106-2020-02-09/44-销售费用: 100234.56', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (25, '2020-03-09 06:41:15.908448', '5', 'V1106-2020-02-09/44-销售成本: 212334.45', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (26, '2020-03-09 06:41:30.019054', '6', 'V1106-2020-02-09/44-管理费用: 1000000.56', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (27, '2020-03-09 07:36:47.919252', '6', 'V1106-2020-02-09/44-管理费用: 100.0', 2, '[{\"changed\": {\"fields\": [\"\\u5b9e\\u9645\\u6570\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (28, '2020-03-09 08:19:47.179198', '1', '基础资料维护组', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (29, '2020-03-09 08:21:00.687623', '2', 'fuqihao', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (30, '2020-03-09 08:21:36.351777', '2', 'fuqihao', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (31, '2020-03-09 08:29:06.927167', '3', 'zhangqiguo', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (32, '2020-03-09 08:29:23.061823', '3', 'zhangqiguo', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (33, '2020-03-09 08:32:29.120062', '5', 'CNY', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (34, '2020-03-09 08:33:22.803716', '5', 'CNY', 2, '[]', 9, 2);
INSERT INTO `django_admin_log` VALUES (35, '2020-03-09 09:22:37.293890', '4', '收入', 1, '[{\"added\": {}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (36, '2020-03-09 09:22:42.196353', '5', '成本', 1, '[{\"added\": {}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (37, '2020-03-09 09:22:54.498167', '6', '损益', 1, '[{\"added\": {}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (38, '2020-03-09 09:22:59.262711', '7', '利润', 1, '[{\"added\": {}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (39, '2020-03-09 09:23:07.800043', '8', '产销量', 1, '[{\"added\": {}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (40, '2020-03-09 09:23:12.785673', '9', '人数', 1, '[{\"added\": {}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (41, '2020-03-09 09:25:26.854638', '6', 'SEK', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (42, '2020-03-09 09:28:19.069882', '3', 'SEK/CNY', 1, '[{\"added\": {}}]', 13, 2);
INSERT INTO `django_admin_log` VALUES (43, '2020-03-09 09:40:55.904172', 'PL0101010101', '营业收入', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (44, '2020-03-09 09:43:33.949301', 'PL010101010101', '主营业务收入', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (45, '2020-03-09 09:43:54.204048', 'PL010101010102', '其他业务收入', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (46, '2020-03-09 09:44:57.757410', 'PL010101010201', '主营业务成本', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (47, '2020-03-09 09:45:31.366770', 'PL010101010202', '其他业务成本', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (48, '2020-03-09 09:46:23.040696', 'PL0101010103', '税金及附加', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (49, '2020-03-09 09:46:28.827610', 'PL0101010103', '税金及附加', 2, '[]', 14, 2);
INSERT INTO `django_admin_log` VALUES (50, '2020-03-09 09:46:57.096501', 'PL0101010104', '销售费用', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (51, '2020-03-09 09:47:31.680229', 'PL0101010105', '管理费用', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (52, '2020-03-09 09:47:55.800882', 'PL0101010112', '研发费用', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (53, '2020-03-09 09:48:26.983295', 'PL0101010107', '资产减值损失', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (54, '2020-03-09 09:49:01.602554', 'PL0101010108', '公允价值变动收益', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (55, '2020-03-09 09:49:36.411014', 'PL0101010109', '投资收益', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (56, '2020-03-09 09:49:57.906675', 'PL0101010110', '资产处置收益', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (57, '2020-03-09 09:50:21.004846', 'PL0101010111', '其他收益', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (58, '2020-03-09 09:50:47.823466', 'PL01010101', '营业利润', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (59, '2020-03-09 09:51:27.441394', 'PL01010102', '营业外收入', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (60, '2020-03-09 09:52:07.909629', 'PL01010103', '营业外支出', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (61, '2020-03-09 09:52:51.883567', 'PL010101', '息税前利润（EBIT）', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (62, '2020-03-09 09:53:38.626518', 'PL0101010106', '财务费用', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (63, '2020-03-09 09:54:47.242909', 'PL010101', '息税前利润（EBIT）', 3, '', 14, 2);
INSERT INTO `django_admin_log` VALUES (64, '2020-03-09 09:55:06.796311', 'PL010101', '利润总额', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (65, '2020-03-10 01:40:21.387628', '10', '折摊', 1, '[{\"added\": {}}]', 7, 2);
INSERT INTO `django_admin_log` VALUES (66, '2020-03-10 01:41:00.168810', 'BGYF', '运费', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (67, '2020-03-10 01:41:29.734700', 'BGTSSR', '退税收入', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (68, '2020-03-10 01:42:12.277216', 'GBEBIT', '息税前利润（EBIT）', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (69, '2020-03-10 01:43:01.117305', 'GBYF', '运费', 2, '[{\"changed\": {\"fields\": [\"\\u79d1\\u76ee\\u7f16\\u7801\"]}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (70, '2020-03-10 01:43:18.556425', 'GBYF', '运费', 2, '[{\"changed\": {\"fields\": [\"\\u79d1\\u76ee\\u7f16\\u7801\"]}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (71, '2020-03-10 01:43:56.165572', 'GBYF', '运费', 2, '[{\"changed\": {\"fields\": [\"\\u79d1\\u76ee\\u7f16\\u7801\"]}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (72, '2020-03-10 01:44:47.548865', 'BGYF', '运费', 3, '', 14, 2);
INSERT INTO `django_admin_log` VALUES (73, '2020-03-10 01:44:47.552391', 'BGTSSR', '退税收入', 3, '', 14, 2);
INSERT INTO `django_admin_log` VALUES (74, '2020-03-10 01:45:25.215590', 'GBTSSR', '退税收入', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (75, '2020-03-10 01:46:06.545499', 'GBZJYTX', '折旧与摊销', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (76, '2020-03-10 01:46:37.696873', 'GBRS', '人数（花名册口径）', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (77, '2020-03-10 01:47:02.504264', 'GBRJEBIT', '人均EBIT', 1, '[{\"added\": {}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (78, '2020-03-10 02:03:27.322041', 'E1100', '山鹰国际控股股份公司（母公司） - E1100', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (79, '2020-03-10 02:04:09.099024', 'E1110', '浙江山鹰纸业有限公司（母公司） - E1110', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (80, '2020-03-10 02:04:30.906285', 'E1120', '山鹰纸业销售有限公司 - E1120', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (81, '2020-03-10 02:04:48.502829', 'E1130', '马鞍山市天福纸箱纸品有限公司 - E1130', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (82, '2020-03-10 02:05:03.708006', 'E1140', '山鹰国际控股股份公司上海分公司 - E1140', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (83, '2020-03-10 02:05:44.637319', 'E1150', '山鹰华中纸业有限公司 - E1150', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (84, '2020-03-10 02:13:44.043972', 'E1160', '山鹰纸业（重庆）有限公司 - E1160', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (85, '2020-03-10 02:14:01.054644', 'E1170', '山鹰纸业（福建）有限公司 - E1170', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (86, '2020-03-10 02:14:33.654445', 'E1180', '山鹰纸业（湖北）有限公司 - E1180', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (87, '2020-03-10 02:14:53.816754', 'E1190', '福建省联盛纸业有限责任公司（母公司） - E1190', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (88, '2020-03-10 02:15:12.045011', 'E1200', '吉安集团有限公司上海分公司 - E1200', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (89, '2020-03-10 02:15:27.752744', 'E1210', '山鹰纸业（吉林）有限公司 - E1210', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (90, '2020-03-10 02:15:52.899698', 'E1220', '山鹰纸业（广东）有限公司 - E1220', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (91, '2020-03-10 02:16:22.085545', 'E1960', 'Global Win Wickliffe LLC - E1960', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (92, '2020-03-10 02:16:50.635201', 'E1970', 'Phoenix Paper Wickliffe LLC - E1970', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (93, '2020-03-10 02:20:41.648415', 'E2110', '合肥祥恒包装有限公司 - E2110', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (94, '2020-03-10 02:20:58.865890', 'E2120', '武汉祥恒包装有限公司 - E2120', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (95, '2020-03-10 02:24:01.054697', 'E2130', '合肥华东包装有限公司（母公司） - E2130', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (96, '2020-03-10 02:24:25.312959', 'E2140', '合肥华东包装有限公司武汉分公司 - E2140', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (97, '2020-03-10 02:24:53.574100', 'E2150', '合肥华东包装有限公司芜湖分公司 - E2150', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (98, '2020-03-10 02:25:35.983532', 'E2160', '祥恒（莆田）包装有限公司（母公司） - E2160', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (99, '2020-03-10 02:25:57.335802', 'E2170', '祥恒（厦门）包装有限公司 - E2170', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (100, '2020-03-10 02:26:19.241638', '2180', '祥恒（天津）包装有限公司 - 2180', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (101, '2020-03-10 02:26:39.581188', 'E2190', '四川祥恒包装制品有限公司 - E2190', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (102, '2020-03-10 02:26:56.451799', 'E2200', '浙江祥恒包装有限公司 - E2200', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (103, '2020-03-10 02:27:13.824818', 'E2210', '祥恒（嘉善）包装有限公司 - E2210', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (104, '2020-03-10 02:27:35.015447', 'E2220', '苏州山鹰纸业纸品有限公司 - E2220', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (105, '2020-03-10 02:31:15.428217', 'E2230', '祥恒（杭州）包装有限公司 - E2230', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (106, '2020-03-10 02:31:31.716711', 'E2240', '马鞍山祥恒包装有限公司 - E2240', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (107, '2020-03-10 02:31:54.843014', 'E2250', '扬州祥恒包装有限公司 - E2250', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (108, '2020-03-10 02:32:12.151211', 'E2260', '祥恒（常州）包装有限公司 - E2260', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (109, '2020-03-10 02:32:29.019538', 'E2270', '祥恒创意包装有限公司（母公司） - E2270', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (110, '2020-03-10 02:32:49.225949', 'E2280', '青岛恒广泰包装有限公司 - E2280', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (111, '2020-03-10 02:33:04.119673', 'E2290', '烟台恒广泰包装有限公司 - E2290', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (112, '2020-03-10 02:41:18.346368', 'E2300', '祥恒（中山）包装有限公司 - E2300', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (113, '2020-03-10 02:41:40.905741', 'E2310', '无锡新祥恒包装科技有限公司 - E2310', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (114, '2020-03-10 02:42:02.414082', 'E2320', '中印科技股份有限公司 - E2320', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (115, '2020-03-10 02:42:34.188905', 'E2330', '陕西祥恒包装有限公司 - E2330', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (116, '2020-03-10 02:42:56.151575', 'E2340', '南昌祥恒包装有限公司 - E2340', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (117, '2020-03-10 02:43:12.600074', 'E2350', '中祥检测科技有限公司 - E2350', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (118, '2020-03-10 02:43:29.535653', 'E2360', '中山中健环保包装股份有限公司 - E2360', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (119, '2020-03-10 02:43:44.505855', 'E2370', '中山市山健包装有限公司 - E2370', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (120, '2020-03-10 02:44:07.741918', 'E2380', '广西南宁中健包装有限公司（母公司） - E2380', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (121, '2020-03-10 02:44:24.173694', 'E2390', '南宁胜奕兴业包装有限公司 - E2390', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (122, '2020-03-10 02:45:14.250512', '7', 'HKD', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (123, '2020-03-10 02:46:30.954186', '4', 'HKD/CNY', 1, '[{\"added\": {}}]', 13, 2);
INSERT INTO `django_admin_log` VALUES (124, '2020-03-10 02:52:11.912778', 'E2900', '恒健（香港）包装有限公司 - E2900', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (125, '2020-03-10 02:53:03.961482', 'E2910', '祥恒创意（香港）包装有限公司 - E2910', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (126, '2020-03-10 02:55:21.749357', 'E3110', '马鞍山市蓝天废旧物资回收有限公司 - E3110', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (127, '2020-03-10 02:55:57.524657', 'E3120', '上海山鹰供应链管理有限公司 - E3120', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (128, '2020-03-10 02:56:35.839929', 'E3130', '福建省莆田市阳光纸业有限公司 - E3130', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (129, '2020-03-10 02:56:50.795727', 'E3140', '福建环宇纸业有限公司 - E3140', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (130, '2020-03-10 02:57:06.137618', 'E3150', '嘉兴环宇商务服务有限公司 - E3150', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (131, '2020-03-10 02:57:58.105332', 'E3160', '马鞍山环宇再生资源科技有限公司 - E3160', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (132, '2020-03-10 02:58:33.648003', 'E3170', '嘉兴环宇再生资源科技有限公司 - E3170', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (133, '2020-03-10 02:58:57.971570', 'E3190', '浙江泰兴纸业有限公司 - E3190', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (134, '2020-03-10 02:59:16.665548', 'E3200', '漳州宇盛纸业有限公司 - E3200', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (135, '2020-03-10 02:59:33.040172', 'E3210', '宇盛（上海）再生资源开发有限公司 - E3210', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (136, '2020-03-10 02:59:49.315562', 'E3220', '浙江山鹰供应链管理有限公司 - E3220', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (137, '2020-03-10 03:00:08.367543', 'E3230', '荆州联宇再生资源有限公司 - E3230', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (138, '2020-03-10 03:03:38.791760', 'E3800', 'Container Transport Oldenburger BV(Consolidation) - E3800', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (139, '2020-03-10 03:04:00.604658', 'E3900', '环宇集团国际控股有限公司（母公司） - E3900', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (140, '2020-03-10 03:04:34.858205', 'E3910', 'Cycle Link (U.S.A) Inc. - E3910', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (141, '2020-03-10 03:04:51.144269', 'E3920', 'Cycle Link Austrlia PTY Ltd - E3920', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (142, '2020-03-10 03:05:05.759826', 'E3930', 'Cycle Link (UK) Limited - E3930', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (143, '2020-03-10 03:05:32.460764', 'E3940', 'Cycle Link Co.,Ltd.-JPN - E3940', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (144, '2020-03-10 03:05:49.836775', 'E3950', 'Cycle Link (Europe) B.V. - E3950', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (145, '2020-03-10 03:07:41.340736', 'E4110', '浙江中远发仓储服务有限公司 - E4110', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (146, '2020-03-10 03:07:57.930038', 'E4120', '马鞍山天顺港口有限责任公司（母公司） - E4120', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (147, '2020-03-10 03:08:16.587076', 'E4130', '马鞍山天顺力达集装箱服务有限责任公司 - E4130', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (148, '2020-03-10 03:08:36.321812', 'E4140', '马鞍山天顺船务代理有限公司 - E4140', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (149, '2020-03-10 03:08:55.830116', 'E5110', '山鹰（上海）融资租赁有限公司 - E5110', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (150, '2020-03-10 03:09:14.415246', 'E5130', '谊来（莆田）珠宝工业有限公司 - E5130', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (151, '2020-03-10 03:09:30.049059', 'E5200', '山鹰投资管理有限公司（母公司） - E5200', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (152, '2020-03-10 03:09:50.017305', 'E5210', '深圳前海山鹰原力基金管理有限公司 - E5210', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (153, '2020-03-10 03:10:20.340760', 'E5220', '深圳前海山鹰新时代投资管理有限公司 - E5220', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (154, '2020-03-10 03:10:35.251890', 'E5230', '马鞍山市雄鹰新兴产业投资基金（有限合伙） - E5230', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (155, '2020-03-10 03:10:55.028839', 'E5240', '安徽省鹰隼恒富一期新兴产业基金（有限合伙） - E5240', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (156, '2020-03-10 03:11:13.457999', 'E5250', '安徽省鹰隼恒富二期新兴产业基金（有限合伙） - E5250', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (157, '2020-03-10 03:11:30.112024', 'E5260', '深圳前海山鹰新时代新兴产业发展基金合伙企业（有限合伙） - E5260', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (158, '2020-03-10 03:11:48.787590', 'E5270', '深圳前海山鹰新时代新兴产业二号发展基金合伙企业（有限合伙） - E5270', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (159, '2020-03-10 03:12:08.931831', 'E5280', '云印技术（深圳）有限公司 - E5280', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (160, '2020-03-10 03:12:32.977267', 'E5290', '深圳市云印电子商务有限公司 - E5290', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (161, '2020-03-10 03:12:46.695124', 'E5300', '宁波市云印微供电子商务有限公司 - E5300', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (162, '2020-03-10 03:13:04.050633', 'E5310', '深圳市云印商业保理有限公司 - E5310', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (163, '2020-03-10 03:13:17.429182', 'E5320', '厦门包印通科技有限公司 - E5320', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (164, '2020-03-10 03:13:36.152318', 'E5900', 'Global win co.,ltd（母公司） - E5900', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (165, '2020-03-10 03:14:00.879435', 'E5910', 'Global win capital corporation - E5910', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (166, '2020-03-10 03:14:20.406554', 'E6120', '爱拓环保能源（浙江）有限公司 - E6120', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (167, '2020-03-10 03:14:40.529388', 'E6130', '山鹰（上海）企业管理咨询有限公司 - E6130', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (168, '2020-03-10 03:14:57.370263', 'E6140', '嘉兴路通报关有限公司 - E6140', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (169, '2020-03-10 03:15:14.799302', 'E6150', '宁波环深垃圾分类服务有限公司 - E6150', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (170, '2020-03-10 03:15:45.738261', 'ENP', 'SUTRIV Holding AB（合并） - ENP', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (171, '2020-03-10 03:16:30.658371', '2100', '包装事业部 - 2100', 1, '[{\"added\": {}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (172, '2020-03-10 03:17:29.971873', 'E2180', '祥恒（天津）包装有限公司 - E2180', 2, '[{\"changed\": {\"fields\": [\"\\u516c\\u53f8\\u7f16\\u7801\"]}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (173, '2020-03-10 03:17:47.430304', '2180', '祥恒（天津）包装有限公司 - 2180', 3, '', 8, 2);
INSERT INTO `django_admin_log` VALUES (174, '2020-03-10 06:39:32.584206', 'PL010101010202', '其他业务成本', 2, '[{\"changed\": {\"fields\": [\"\\u79d1\\u76ee\\u7c7b\\u522b\"]}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (175, '2020-03-10 06:39:32.587588', 'PL010101010201', '主营业务成本', 2, '[{\"changed\": {\"fields\": [\"\\u79d1\\u76ee\\u7c7b\\u522b\"]}}]', 14, 2);
INSERT INTO `django_admin_log` VALUES (176, '2020-03-10 06:40:16.640561', '5', '成本', 3, '', 7, 2);
INSERT INTO `django_admin_log` VALUES (177, '2020-03-10 06:48:44.146459', 'E5280', '云印技术（深圳）有限公司 - E5280', 2, '[{\"changed\": {\"fields\": [\"\\u7236\\u7ea7\\u516c\\u53f8\"]}}]', 8, 2);
INSERT INTO `django_admin_log` VALUES (178, '2020-03-10 09:19:07.511111', 'V1102-2020-02-09 03:05:01.930269/17', 'V1102-2020-02-09 03:05:01.930269/17', 3, '', 11, 1);
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (14, 'collector', 'account');
INSERT INTO `django_content_type` VALUES (7, 'collector', 'accounttype');
INSERT INTO `django_content_type` VALUES (16, 'collector', 'actualdata');
INSERT INTO `django_content_type` VALUES (15, 'collector', 'budgetdata');
INSERT INTO `django_content_type` VALUES (8, 'collector', 'company');
INSERT INTO `django_content_type` VALUES (9, 'collector', 'currency');
INSERT INTO `django_content_type` VALUES (13, 'collector', 'currencyrate');
INSERT INTO `django_content_type` VALUES (10, 'collector', 'mysqlview');
INSERT INTO `django_content_type` VALUES (12, 'collector', 'user');
INSERT INTO `django_content_type` VALUES (11, 'collector', 'version');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-03-09 01:55:39.767607');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-03-09 01:55:39.867750');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-03-09 01:55:40.099388');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-03-09 01:55:40.159790');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-09 01:55:40.170424');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-03-09 01:55:40.230309');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-03-09 01:55:40.265237');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-03-09 01:55:40.290519');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-03-09 01:55:40.301981');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-03-09 01:55:40.335377');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-03-09 01:55:40.338090');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-09 01:55:40.348631');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-03-09 01:55:40.386048');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-09 01:55:40.423521');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-03-09 01:55:40.443956');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-03-09 01:55:40.455276');
INSERT INTO `django_migrations` VALUES (17, 'collector', '0001_initial', '2020-03-09 01:55:40.603795');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2020-03-09 01:55:40.825079');
INSERT INTO `django_migrations` VALUES (19, 'collector', '0002_company_currency', '2020-03-09 01:56:11.085348');
INSERT INTO `django_migrations` VALUES (20, 'collector', '0003_auto_20200309_0200', '2020-03-09 02:00:41.036734');
INSERT INTO `django_migrations` VALUES (21, 'collector', '0004_auto_20200309_0211', '2020-03-09 02:11:23.996098');
INSERT INTO `django_migrations` VALUES (22, 'collector', '0005_auto_20200310_1737', '2020-03-10 09:38:08.880289');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('4a32nukbxnucclsvurtqg303yzv8ve51', 'YzljZjkxN2I1MTQyNzJkZGVjOGIzZGVkYjkwN2I5OGQyMTg2ZTBiYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZmQ4MjI1MjNmMTc5MTlmZmUxNzU3OWNjOGRkNDEzOGQ5MjYyYjQwIn0=', '2020-03-23 08:30:01.938601');
INSERT INTO `django_session` VALUES ('4khn7lc4vgavdyzdp6b60g2qbae5ie1b', 'YzljZjkxN2I1MTQyNzJkZGVjOGIzZGVkYjkwN2I5OGQyMTg2ZTBiYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZmQ4MjI1MjNmMTc5MTlmZmUxNzU3OWNjOGRkNDEzOGQ5MjYyYjQwIn0=', '2020-03-23 09:16:56.423558');
INSERT INTO `django_session` VALUES ('jfj1gg5bn8knir0picgpo89dcofdp119', 'ZTdiMzMwNGI2YTQ0ZWQ5ODM5NGIwZjJjODFiZmQ0OGQ3ZmViZTllZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3Y2FlZDk4YmIwNTNhYjBmYzFiYjViOWFiNDlhMjg0ZWU1ZGIxYjNhIn0=', '2020-03-23 02:01:27.189913');
INSERT INTO `django_session` VALUES ('lqwti1u7sj0pnhd854pxxt37rtgd9xdb', 'YzljZjkxN2I1MTQyNzJkZGVjOGIzZGVkYjkwN2I5OGQyMTg2ZTBiYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZmQ4MjI1MjNmMTc5MTlmZmUxNzU3OWNjOGRkNDEzOGQ5MjYyYjQwIn0=', '2020-03-24 06:08:35.192752');
INSERT INTO `django_session` VALUES ('xaycl5ga05sxf2gxzyye5gg1e8nbebjc', 'ZTdiMzMwNGI2YTQ0ZWQ5ODM5NGIwZjJjODFiZmQ0OGQ3ZmViZTllZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3Y2FlZDk4YmIwNTNhYjBmYzFiYjViOWFiNDlhMjg0ZWU1ZGIxYjNhIn0=', '2020-03-23 10:04:20.030902');
INSERT INTO `django_session` VALUES ('z252m51h305p81cfr3fzsj6xynvx7b3n', 'ZTdiMzMwNGI2YTQ0ZWQ5ODM5NGIwZjJjODFiZmQ0OGQ3ZmViZTllZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3Y2FlZDk4YmIwNTNhYjBmYzFiYjViOWFiNDlhMjg0ZWU1ZGIxYjNhIn0=', '2020-03-23 10:01:37.516711');
COMMIT;

-- ----------------------------
-- View structure for mysqlview
-- ----------------------------
DROP VIEW IF EXISTS `mysqlview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mysqlview` AS select `collector_actualdata`.`id` AS `id`,`collector_account`.`accountname` AS `accountname`,`collector_actualdata`.`amount` AS `amount`,`collector_company`.`companyname` AS `companyname`,`collector_version`.`accountdate` AS `accountdate`,`collector_version`.`versionname` AS `versionname`,`collector_version`.`vaild` AS `vaild`,`collector_accounttype_alias1`.`typename` AS `typename`,`collector_currency`.`currencyname` AS `currencyname` from (((((`collector_account` join `collector_actualdata` on((`collector_account`.`accountid` = `collector_actualdata`.`accountid_id`))) join `collector_version` on((`collector_actualdata`.`version_id` = `collector_version`.`versionname`))) join `collector_company` on((`collector_version`.`companycode_id` = `collector_company`.`companycode`))) join `collector_accounttype` `collector_accounttype_alias1` on((`collector_accounttype_alias1`.`id` = `collector_account`.`accounttypeid_id`))) join `collector_currency` on((`collector_company`.`currency_id` = `collector_currency`.`id`))) order by `collector_actualdata`.`id`;

SET FOREIGN_KEY_CHECKS = 1;
