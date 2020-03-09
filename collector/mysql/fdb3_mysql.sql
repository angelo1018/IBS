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

 Date: 09/03/2020 17:08:51
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
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$180000$tRmV8vhihD13$SzPVJXl8+pP6nMMlKF3wW1+n+VG2m9X185xO+6D67aU=', '2020-03-09 08:27:36.995047', 1, 'root', '', '', 'root@qq.com', 1, 1, '2020-03-09 01:57:24.202969');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$180000$rNq3ywsRRmN0$aI0ZBND1bX/qIfurHmJPRGD9Naohv+t4ry2fVaU7nsc=', '2020-03-09 08:30:01.936620', 0, 'fuqihao', '', '', '', 1, 1, '2020-03-09 08:21:00.000000');
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
COMMIT;

-- ----------------------------
-- Table structure for collector_accounttype
-- ----------------------------
DROP TABLE IF EXISTS `collector_accounttype`;
CREATE TABLE `collector_accounttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collector_accounttype
-- ----------------------------
BEGIN;
INSERT INTO `collector_accounttype` VALUES (1, '资产');
INSERT INTO `collector_accounttype` VALUES (2, '负债');
INSERT INTO `collector_accounttype` VALUES (3, '费用');
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
COMMIT;

-- ----------------------------
-- Table structure for collector_currency
-- ----------------------------
DROP TABLE IF EXISTS `collector_currency`;
CREATE TABLE `collector_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currencyname` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collector_currency
-- ----------------------------
BEGIN;
INSERT INTO `collector_currency` VALUES (2, 'CNY');
INSERT INTO `collector_currency` VALUES (3, 'USD');
INSERT INTO `collector_currency` VALUES (4, 'EUD');
INSERT INTO `collector_currency` VALUES (5, 'CNY');
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
  KEY `collector_currencyra_aftercur_id_57338d30_fk_collector` (`aftercur_id`),
  KEY `collector_currencyra_originalcur_id_bd047033_fk_collector` (`originalcur_id`),
  CONSTRAINT `collector_currencyra_aftercur_id_57338d30_fk_collector` FOREIGN KEY (`aftercur_id`) REFERENCES `collector_currency` (`id`),
  CONSTRAINT `collector_currencyra_originalcur_id_bd047033_fk_collector` FOREIGN KEY (`originalcur_id`) REFERENCES `collector_currency` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collector_currencyrate
-- ----------------------------
BEGIN;
INSERT INTO `collector_currencyrate` VALUES (1, 6.6, 6.7, '2020-03-09', 2, 3);
INSERT INTO `collector_currencyrate` VALUES (2, 6.5, 6.65, '2020-02-29', 2, 3);
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
INSERT INTO `collector_version` VALUES ('2020-03-09 03:05:08.437923', '2020-02-09', 1, 'V1102-2020-02-09 03:05:01.930269/17', NULL, '1102');
INSERT INTO `collector_version` VALUES ('2020-03-09 07:22:34.338777', '2020-02-09', 1, 'V1105-2020-02-09/41', NULL, '1105');
INSERT INTO `collector_version` VALUES ('2020-03-09 06:51:54.064827', '2020-02-09', 1, 'V1105-2020-02-09/60', NULL, '1105');
INSERT INTO `collector_version` VALUES ('2020-03-09 03:32:06.044755', '2020-02-09', 1, 'V1106-2020-02-09/44', NULL, '1106');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `django_session` VALUES ('jfj1gg5bn8knir0picgpo89dcofdp119', 'ZTdiMzMwNGI2YTQ0ZWQ5ODM5NGIwZjJjODFiZmQ0OGQ3ZmViZTllZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3Y2FlZDk4YmIwNTNhYjBmYzFiYjViOWFiNDlhMjg0ZWU1ZGIxYjNhIn0=', '2020-03-23 02:01:27.189913');
COMMIT;

-- ----------------------------
-- View structure for mysqlview
-- ----------------------------
DROP VIEW IF EXISTS `mysqlview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mysqlview` AS select `collector_actualdata`.`id` AS `id`,`collector_account`.`accountname` AS `accountname`,`collector_actualdata`.`amount` AS `amount`,`collector_company`.`companyname` AS `companyname`,`collector_version`.`accountdate` AS `accountdate`,`collector_version`.`versionname` AS `versionname`,`collector_version`.`vaild` AS `vaild`,`collector_accounttype_alias1`.`typename` AS `typename`,`collector_currency`.`currencyname` AS `currencyname` from (((((`collector_account` join `collector_actualdata` on((`collector_account`.`accountid` = `collector_actualdata`.`accountid_id`))) join `collector_version` on((`collector_actualdata`.`version_id` = `collector_version`.`versionname`))) join `collector_company` on((`collector_version`.`companycode_id` = `collector_company`.`companycode`))) join `collector_accounttype` `collector_accounttype_alias1` on((`collector_accounttype_alias1`.`id` = `collector_account`.`accounttypeid_id`))) join `collector_currency` on((`collector_company`.`currency_id` = `collector_currency`.`id`))) order by `collector_actualdata`.`id`;

SET FOREIGN_KEY_CHECKS = 1;
