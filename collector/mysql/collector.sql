/*
 Navicat Premium Data Transfer

 Source Server         : Linux_mysql
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : 10.16.21.155:3306
 Source Schema         : collector

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 18/03/2020 18:56:20
*/
use collector_test;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
INSERT INTO `auth_group` VALUES (1, 'admin');
COMMIT;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN;
INSERT INTO `auth_group_permissions` VALUES (1, 1, 29);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 30);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 31);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 32);
INSERT INTO `auth_group_permissions` VALUES (5, 1, 33);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 34);
INSERT INTO `auth_group_permissions` VALUES (7, 1, 35);
INSERT INTO `auth_group_permissions` VALUES (8, 1, 36);
INSERT INTO `auth_group_permissions` VALUES (9, 1, 37);
INSERT INTO `auth_group_permissions` VALUES (10, 1, 38);
INSERT INTO `auth_group_permissions` VALUES (11, 1, 39);
INSERT INTO `auth_group_permissions` VALUES (12, 1, 40);
INSERT INTO `auth_group_permissions` VALUES (13, 1, 41);
INSERT INTO `auth_group_permissions` VALUES (14, 1, 42);
INSERT INTO `auth_group_permissions` VALUES (15, 1, 43);
INSERT INTO `auth_group_permissions` VALUES (16, 1, 44);
INSERT INTO `auth_group_permissions` VALUES (17, 1, 48);
INSERT INTO `auth_group_permissions` VALUES (18, 1, 53);
INSERT INTO `auth_group_permissions` VALUES (19, 1, 54);
INSERT INTO `auth_group_permissions` VALUES (20, 1, 55);
INSERT INTO `auth_group_permissions` VALUES (21, 1, 56);
INSERT INTO `auth_group_permissions` VALUES (22, 1, 57);
INSERT INTO `auth_group_permissions` VALUES (23, 1, 58);
INSERT INTO `auth_group_permissions` VALUES (24, 1, 59);
INSERT INTO `auth_group_permissions` VALUES (25, 1, 60);
INSERT INTO `auth_group_permissions` VALUES (26, 1, 64);
INSERT INTO `auth_group_permissions` VALUES (27, 1, 68);
COMMIT;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `auth_permission` VALUES (25, 'Can add mysql view', 7, 'add_mysqlview');
INSERT INTO `auth_permission` VALUES (26, 'Can change mysql view', 7, 'change_mysqlview');
INSERT INTO `auth_permission` VALUES (27, 'Can delete mysql view', 7, 'delete_mysqlview');
INSERT INTO `auth_permission` VALUES (28, 'Can view mysql view', 7, 'view_mysqlview');
INSERT INTO `auth_permission` VALUES (29, 'Can add account type', 8, 'add_accounttype');
INSERT INTO `auth_permission` VALUES (30, 'Can change account type', 8, 'change_accounttype');
INSERT INTO `auth_permission` VALUES (31, 'Can delete account type', 8, 'delete_accounttype');
INSERT INTO `auth_permission` VALUES (32, 'Can view account type', 8, 'view_accounttype');
INSERT INTO `auth_permission` VALUES (33, 'Can add business unit', 9, 'add_businessunit');
INSERT INTO `auth_permission` VALUES (34, 'Can change business unit', 9, 'change_businessunit');
INSERT INTO `auth_permission` VALUES (35, 'Can delete business unit', 9, 'delete_businessunit');
INSERT INTO `auth_permission` VALUES (36, 'Can view business unit', 9, 'view_businessunit');
INSERT INTO `auth_permission` VALUES (37, 'Can add company', 10, 'add_company');
INSERT INTO `auth_permission` VALUES (38, 'Can change company', 10, 'change_company');
INSERT INTO `auth_permission` VALUES (39, 'Can delete company', 10, 'delete_company');
INSERT INTO `auth_permission` VALUES (40, 'Can view company', 10, 'view_company');
INSERT INTO `auth_permission` VALUES (41, 'Can add currency', 11, 'add_currency');
INSERT INTO `auth_permission` VALUES (42, 'Can change currency', 11, 'change_currency');
INSERT INTO `auth_permission` VALUES (43, 'Can delete currency', 11, 'delete_currency');
INSERT INTO `auth_permission` VALUES (44, 'Can view currency', 11, 'view_currency');
INSERT INTO `auth_permission` VALUES (45, 'Can add version', 12, 'add_version');
INSERT INTO `auth_permission` VALUES (46, 'Can change version', 12, 'change_version');
INSERT INTO `auth_permission` VALUES (47, 'Can delete version', 12, 'delete_version');
INSERT INTO `auth_permission` VALUES (48, 'Can view version', 12, 'view_version');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add currency rate', 14, 'add_currencyrate');
INSERT INTO `auth_permission` VALUES (54, 'Can change currency rate', 14, 'change_currencyrate');
INSERT INTO `auth_permission` VALUES (55, 'Can delete currency rate', 14, 'delete_currencyrate');
INSERT INTO `auth_permission` VALUES (56, 'Can view currency rate', 14, 'view_currencyrate');
INSERT INTO `auth_permission` VALUES (57, 'Can add account', 15, 'add_account');
INSERT INTO `auth_permission` VALUES (58, 'Can change account', 15, 'change_account');
INSERT INTO `auth_permission` VALUES (59, 'Can delete account', 15, 'delete_account');
INSERT INTO `auth_permission` VALUES (60, 'Can view account', 15, 'view_account');
INSERT INTO `auth_permission` VALUES (61, 'Can add budget data', 16, 'add_budgetdata');
INSERT INTO `auth_permission` VALUES (62, 'Can change budget data', 16, 'change_budgetdata');
INSERT INTO `auth_permission` VALUES (63, 'Can delete budget data', 16, 'delete_budgetdata');
INSERT INTO `auth_permission` VALUES (64, 'Can view budget data', 16, 'view_budgetdata');
INSERT INTO `auth_permission` VALUES (65, 'Can add actual data', 17, 'add_actualdata');
INSERT INTO `auth_permission` VALUES (66, 'Can change actual data', 17, 'change_actualdata');
INSERT INTO `auth_permission` VALUES (67, 'Can delete actual data', 17, 'delete_actualdata');
INSERT INTO `auth_permission` VALUES (68, 'Can view actual data', 17, 'view_actualdata');
INSERT INTO `auth_permission` VALUES (69, 'Can add ytd data', 18, 'add_ytddata');
INSERT INTO `auth_permission` VALUES (70, 'Can change ytd data', 18, 'change_ytddata');
INSERT INTO `auth_permission` VALUES (71, 'Can delete ytd data', 18, 'delete_ytddata');
INSERT INTO `auth_permission` VALUES (72, 'Can view ytd data', 18, 'view_ytddata');
INSERT INTO `auth_permission` VALUES (73, 'Can add account bg', 15, 'add_accountbg');
INSERT INTO `auth_permission` VALUES (74, 'Can change account bg', 15, 'change_accountbg');
INSERT INTO `auth_permission` VALUES (75, 'Can delete account bg', 15, 'delete_accountbg');
INSERT INTO `auth_permission` VALUES (76, 'Can view account bg', 15, 'view_accountbg');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$180000$kt0J3nNMHRni$ncZDueHcIqvSjkpUWv+8eIMyIU8Rn0uQwCerW8KFYmY=', NULL, 1, 'r', '', '', 'root@qq.com', 1, 1, '2020-03-14 10:05:41.040477');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$180000$KORqA9R9iBJ9$BroHsrqtC2Y1pRLYsPUU817fgEpozd8HglEhRG33fNM=', '2020-03-14 10:16:15.937977', 1, 'server', '', '', 'server@qq.com', 1, 1, '2020-03-14 10:09:44.469581');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$180000$YEkizK0MfTF2$AOp0xAWnfe+r6z/BeaHZIyZXBI/sFJ/yZ35/33ocs4A=', '2020-03-16 08:16:30.274784', 1, 'root', '', '', 'root@qq.com', 1, 1, '2020-03-14 10:18:25.615407');
INSERT INTO `auth_user` VALUES (4, 'pbkdf2_sha256$180000$QArRFU4CAZ1G$WYHdQnytzERYQHW4bxd+fzOstuLJOGgyf8xsYC0bh6Y=', '2020-03-16 07:20:37.742977', 0, 'fuqihao', '', '', '', 1, 1, '2020-03-16 06:48:00.000000');
INSERT INTO `auth_user` VALUES (5, 'pbkdf2_sha256$180000$9Y7qlBoabk1f$gaYRFfHJnuplqSZDWQkROAxtL57ZX7CfLOvRUhtwNeE=', NULL, 0, 'zhengrongrong', '', '', '', 1, 1, '2020-03-17 08:19:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
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
INSERT INTO `auth_user_groups` VALUES (1, 4, 1);
INSERT INTO `auth_user_groups` VALUES (2, 5, 1);
COMMIT;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for collector_accountbg
-- ----------------------------
DROP TABLE IF EXISTS `collector_accountbg`;
CREATE TABLE `collector_accountbg` (
  `accountid` varchar(64) NOT NULL,
  `accountname` varchar(128) NOT NULL,
  `parentaccount` tinyint(1) NOT NULL,
  `isvalid` tinyint(1) NOT NULL DEFAULT '0',
  `accounttypeid_id` int NOT NULL,
  `displayname` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`accountid`),
  KEY `collector_account_accounttypeid_id_24183c4c_fk_collector` (`accounttypeid_id`),
  CONSTRAINT `collector_account_accounttypeid_id_24183c4c_fk_collector` FOREIGN KEY (`accounttypeid_id`) REFERENCES `collector_accounttype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collector_accountbg
-- ----------------------------
BEGIN;
INSERT INTO `collector_accountbg` VALUES ('GBCL', '产量', 0, 0, 8, '产量');
INSERT INTO `collector_accountbg` VALUES ('GBEBIT', '息税前利润（EBIT）', 1, 0, 7, '三、息税前利润（EBIT）');
INSERT INTO `collector_accountbg` VALUES ('GBEBITDA', 'EBITDA', 1, 0, 7, '五、EBITDA');
INSERT INTO `collector_accountbg` VALUES ('GBRJEBIT', '人均EBIT', 0, 0, 7, '人均EBIT');
INSERT INTO `collector_accountbg` VALUES ('GBRS', '人数（花名册口径）', 0, 0, 9, '人数（花名册口径）');
INSERT INTO `collector_accountbg` VALUES ('GBTSSR', '退税收入', 0, 0, 4, '其中：退税收入');
INSERT INTO `collector_accountbg` VALUES ('GBXL', '销量', 0, 0, 8, '销量');
INSERT INTO `collector_accountbg` VALUES ('GBYF', '运费', 0, 0, 3, '其中：运费');
INSERT INTO `collector_accountbg` VALUES ('GBZJYTX', '折旧与摊销', 0, 0, 10, '折旧与摊销');
INSERT INTO `collector_accountbg` VALUES ('PL010101', '利润总额', 1, 0, 7, '四、利润总额（亏损总额以“-”号填列）');
INSERT INTO `collector_accountbg` VALUES ('PL01010101', '营业利润', 1, 0, 7, '二、营业利润（亏损以“-”号填列）');
INSERT INTO `collector_accountbg` VALUES ('PL0101010101', '营业收入', 1, 0, 4, '一：营业收入');
INSERT INTO `collector_accountbg` VALUES ('PL010101010101', '主营业务收入', 0, 0, 4, '主营业务收入');
INSERT INTO `collector_accountbg` VALUES ('PL010101010102', '其他业务收入', 0, 0, 4, '其他业务收入');
INSERT INTO `collector_accountbg` VALUES ('PL010101010201', '主营业务成本', 0, 0, 3, '减：主营业务成本');
INSERT INTO `collector_accountbg` VALUES ('PL010101010202', '其他业务成本', 0, 0, 3, '其他业务成本');
INSERT INTO `collector_accountbg` VALUES ('PL0101010103', '税金及附加', 0, 0, 3, '税金及附加');
INSERT INTO `collector_accountbg` VALUES ('PL0101010104', '销售费用', 0, 0, 3, '销售费用');
INSERT INTO `collector_accountbg` VALUES ('PL0101010105', '管理费用', 0, 0, 3, '管理费用');
INSERT INTO `collector_accountbg` VALUES ('PL0101010106', '财务费用', 0, 0, 3, '财务费用');
INSERT INTO `collector_accountbg` VALUES ('PL0101010107', '资产减值损失', 0, 0, 3, '资产减值损失');
INSERT INTO `collector_accountbg` VALUES ('PL0101010108', '公允价值变动收益', 0, 0, 6, '加：公允价值变动收益（损失以“-”号填列）');
INSERT INTO `collector_accountbg` VALUES ('PL0101010109', '投资收益', 0, 0, 6, '投资收益（损失以“-”号填列）');
INSERT INTO `collector_accountbg` VALUES ('PL0101010110', '资产处置收益', 0, 0, 6, '资产处置收益（损失以“-”号填列）');
INSERT INTO `collector_accountbg` VALUES ('PL0101010111', '其他收益', 0, 0, 6, '其他收益（损失以“-”号填列）');
INSERT INTO `collector_accountbg` VALUES ('PL0101010112', '研发费用', 0, 0, 3, '研发费用');
INSERT INTO `collector_accountbg` VALUES ('PL01010102', '营业外收入', 0, 0, 4, '加：营业外收入');
INSERT INTO `collector_accountbg` VALUES ('PL01010103', '营业外支出', 0, 0, 3, '减：营业外支出');
COMMIT;

-- ----------------------------
-- Table structure for collector_accounttype
-- ----------------------------
DROP TABLE IF EXISTS `collector_accounttype`;
CREATE TABLE `collector_accounttype` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `accountid_id` varchar(64) NOT NULL,
  `version_id` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `collector_actualdata_version_id_accountid_id_59a2e689_uniq` (`version_id`,`accountid_id`),
  KEY `collector_actualdata_accountid_id_c74b82aa_fk_collector` (`accountid_id`),
  CONSTRAINT `collector_actualdata_accountid_id_c74b82aa_fk_collector` FOREIGN KEY (`accountid_id`) REFERENCES `collector_accountbg` (`accountid`),
  CONSTRAINT `collector_actualdata_version_id_7a940474_fk_collector` FOREIGN KEY (`version_id`) REFERENCES `collector_version` (`versionname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for collector_budgetdata
-- ----------------------------
DROP TABLE IF EXISTS `collector_budgetdata`;
CREATE TABLE `collector_budgetdata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  `accountid_id` varchar(64) NOT NULL,
  `version_id` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `collector_budgetdata_version_id_accountid_id_79f652ba_uniq` (`version_id`,`accountid_id`),
  KEY `collector_budgetdata_accountid_id_e621d156_fk_collector` (`accountid_id`),
  CONSTRAINT `collector_budgetdata_accountid_id_e621d156_fk_collector` FOREIGN KEY (`accountid_id`) REFERENCES `collector_accountbg` (`accountid`),
  CONSTRAINT `collector_budgetdata_version_id_30c85146_fk_collector` FOREIGN KEY (`version_id`) REFERENCES `collector_version` (`versionname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for collector_businessunit
-- ----------------------------
DROP TABLE IF EXISTS `collector_businessunit`;
CREATE TABLE `collector_businessunit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `buname` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `buname` (`buname`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collector_businessunit
-- ----------------------------
BEGIN;
INSERT INTO `collector_businessunit` VALUES (9, '云印');
INSERT INTO `collector_businessunit` VALUES (8, '其他');
INSERT INTO `collector_businessunit` VALUES (2, '包装');
INSERT INTO `collector_businessunit` VALUES (3, '北美');
INSERT INTO `collector_businessunit` VALUES (7, '欧洲');
INSERT INTO `collector_businessunit` VALUES (6, '环宇国际');
INSERT INTO `collector_businessunit` VALUES (4, '筹建');
INSERT INTO `collector_businessunit` VALUES (1, '造纸');
INSERT INTO `collector_businessunit` VALUES (5, '非考核主体');
COMMIT;

-- ----------------------------
-- Table structure for collector_company
-- ----------------------------
DROP TABLE IF EXISTS `collector_company`;
CREATE TABLE `collector_company` (
  `companycode` varchar(64) NOT NULL,
  `companyname` varchar(64) NOT NULL,
  `parentcompany` tinyint(1) NOT NULL,
  `isvalid` tinyint(1) NOT NULL DEFAULT '0',
  `bu_id` int NOT NULL DEFAULT '2',
  `currency_id` int NOT NULL,
  PRIMARY KEY (`companycode`),
  KEY `collector_company_bu_id_777ca3ae_fk_collector_businessunit_id` (`bu_id`),
  KEY `collector_company_currency_id_5cf9971e_fk_collector_currency_id` (`currency_id`),
  CONSTRAINT `collector_company_bu_id_777ca3ae_fk_collector_businessunit_id` FOREIGN KEY (`bu_id`) REFERENCES `collector_businessunit` (`id`),
  CONSTRAINT `collector_company_currency_id_5cf9971e_fk_collector_currency_id` FOREIGN KEY (`currency_id`) REFERENCES `collector_currency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collector_company
-- ----------------------------
BEGIN;
INSERT INTO `collector_company` VALUES ('BU1100', '造纸事业部', 1, 1, 2, 2);
INSERT INTO `collector_company` VALUES ('BU1960', '北美事业部', 1, 1, 2, 3);
INSERT INTO `collector_company` VALUES ('BU2100', '包装事业部', 1, 1, 2, 2);
INSERT INTO `collector_company` VALUES ('E1100', '山鹰国际控股股份公司（母公司）', 1, 1, 1, 2);
INSERT INTO `collector_company` VALUES ('E1110', '浙江山鹰纸业有限公司（母公司）', 0, 1, 1, 2);
INSERT INTO `collector_company` VALUES ('E1120', '山鹰纸业销售有限公司', 0, 0, 1, 2);
INSERT INTO `collector_company` VALUES ('E1130', '马鞍山市天福纸箱纸品有限公司', 0, 0, 1, 2);
INSERT INTO `collector_company` VALUES ('E1140', '山鹰国际控股股份公司上海分公司', 0, 1, 8, 2);
INSERT INTO `collector_company` VALUES ('E1150', '山鹰华中纸业有限公司', 0, 1, 1, 2);
INSERT INTO `collector_company` VALUES ('E1160', '山鹰纸业（重庆）有限公司', 0, 0, 5, 2);
INSERT INTO `collector_company` VALUES ('E1170', '山鹰纸业（福建）有限公司', 0, 0, 5, 2);
INSERT INTO `collector_company` VALUES ('E1180', '山鹰纸业（湖北）有限公司', 0, 0, 5, 2);
INSERT INTO `collector_company` VALUES ('E1190', '福建省联盛纸业有限责任公司（母公司）', 0, 1, 1, 2);
INSERT INTO `collector_company` VALUES ('E1200', '吉安集团有限公司上海分公司', 0, 1, 8, 2);
INSERT INTO `collector_company` VALUES ('E1210', '山鹰纸业（吉林）有限公司', 0, 1, 4, 2);
INSERT INTO `collector_company` VALUES ('E1220', '山鹰纸业（广东）有限公司', 0, 1, 1, 2);
INSERT INTO `collector_company` VALUES ('E1960', 'Global Win Wickliffe LLC', 0, 0, 3, 3);
INSERT INTO `collector_company` VALUES ('E1970', 'Phoenix Paper Wickliffe LLC', 0, 0, 3, 3);
INSERT INTO `collector_company` VALUES ('E2110', '合肥祥恒包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2120', '武汉祥恒包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2130', '合肥华东包装有限公司（母公司）', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2140', '合肥华东包装有限公司武汉分公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2150', '合肥华东包装有限公司芜湖分公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2160', '祥恒（莆田）包装有限公司（母公司）', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2170', '祥恒（厦门）包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2180', '祥恒（天津）包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2190', '四川祥恒包装制品有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2200', '浙江祥恒包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2210', '祥恒（嘉善）包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2220', '苏州山鹰纸业纸品有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2230', '祥恒（杭州）包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2240', '马鞍山祥恒包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2250', '扬州祥恒包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2260', '祥恒（常州）包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2270', '祥恒创意包装有限公司（母公司）', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2280', '青岛恒广泰包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2290', '烟台恒广泰包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2300', '祥恒（中山）包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2310', '无锡新祥恒包装科技有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2320', '中印科技股份有限公司', 0, 0, 5, 2);
INSERT INTO `collector_company` VALUES ('E2330', '陕西祥恒包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2340', '南昌祥恒包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2350', '中祥检测科技有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2360', '中山中健环保包装股份有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2370', '中山市山健包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2380', '广西南宁中健包装有限公司（母公司）', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2390', '南宁胜奕兴业包装有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E2900', '恒健（香港）包装有限公司', 0, 0, 5, 7);
INSERT INTO `collector_company` VALUES ('E2910', '祥恒创意（香港）包装有限公司', 0, 0, 5, 7);
INSERT INTO `collector_company` VALUES ('E3110', '马鞍山市蓝天废旧物资回收有限公司', 0, 0, 1, 2);
INSERT INTO `collector_company` VALUES ('E3120', '上海山鹰供应链管理有限公司', 0, 1, 8, 2);
INSERT INTO `collector_company` VALUES ('E3130', '福建省莆田市阳光纸业有限公司', 0, 0, 1, 2);
INSERT INTO `collector_company` VALUES ('E3140', '福建环宇纸业有限公司', 0, 0, 5, 2);
INSERT INTO `collector_company` VALUES ('E3150', '嘉兴环宇商务服务有限公司', 0, 0, 6, 2);
INSERT INTO `collector_company` VALUES ('E3160', '马鞍山环宇再生资源科技有限公司', 0, 1, 1, 2);
INSERT INTO `collector_company` VALUES ('E3170', '嘉兴环宇再生资源科技有限公司', 0, 0, 6, 2);
INSERT INTO `collector_company` VALUES ('E3190', '浙江泰兴纸业有限公司', 0, 0, 1, 2);
INSERT INTO `collector_company` VALUES ('E3200', '漳州宇盛纸业有限公司', 0, 0, 1, 2);
INSERT INTO `collector_company` VALUES ('E3210', '宇盛（上海）再生资源开发有限公司', 0, 0, 1, 2);
INSERT INTO `collector_company` VALUES ('E3220', '浙江山鹰供应链管理有限公司', 0, 0, 5, 2);
INSERT INTO `collector_company` VALUES ('E3230', '荆州联宇再生资源有限公司', 0, 0, 5, 2);
INSERT INTO `collector_company` VALUES ('E3800', 'Container Transport Oldenburger BV(Consolidation)', 0, 0, 6, 3);
INSERT INTO `collector_company` VALUES ('E3900', '环宇集团国际控股有限公司（母公司）', 1, 0, 6, 3);
INSERT INTO `collector_company` VALUES ('E3910', 'Cycle Link (U.S.A) Inc.', 0, 0, 6, 3);
INSERT INTO `collector_company` VALUES ('E3920', 'Cycle Link Austrlia PTY Ltd', 0, 0, 6, 3);
INSERT INTO `collector_company` VALUES ('E3930', 'Cycle Link (UK) Limited', 0, 0, 6, 3);
INSERT INTO `collector_company` VALUES ('E3940', 'Cycle Link Co.,Ltd.-JPN', 0, 0, 6, 3);
INSERT INTO `collector_company` VALUES ('E3950', 'Cycle Link (Europe) B.V.', 0, 0, 6, 3);
INSERT INTO `collector_company` VALUES ('E4110', '浙江中远发仓储服务有限公司', 0, 0, 2, 2);
INSERT INTO `collector_company` VALUES ('E4120', '马鞍山天顺港口有限责任公司（母公司）', 0, 1, 8, 2);
INSERT INTO `collector_company` VALUES ('E4130', '马鞍山天顺力达集装箱服务有限责任公司', 0, 0, 8, 2);
INSERT INTO `collector_company` VALUES ('E4140', '马鞍山天顺船务代理有限公司', 0, 0, 8, 2);
INSERT INTO `collector_company` VALUES ('E5110', '山鹰（上海）融资租赁有限公司', 0, 1, 8, 2);
INSERT INTO `collector_company` VALUES ('E5130', '谊来（莆田）珠宝工业有限公司', 0, 0, 5, 2);
INSERT INTO `collector_company` VALUES ('E5200', '山鹰投资管理有限公司（母公司）', 0, 1, 8, 2);
INSERT INTO `collector_company` VALUES ('E5210', '深圳前海山鹰原力基金管理有限公司', 0, 0, 5, 2);
INSERT INTO `collector_company` VALUES ('E5220', '深圳前海山鹰新时代投资管理有限公司', 0, 0, 8, 2);
INSERT INTO `collector_company` VALUES ('E5230', '马鞍山市雄鹰新兴产业投资基金（有限合伙）', 0, 0, 8, 2);
INSERT INTO `collector_company` VALUES ('E5240', '安徽省鹰隼恒富一期新兴产业基金（有限合伙）', 0, 0, 8, 2);
INSERT INTO `collector_company` VALUES ('E5250', '安徽省鹰隼恒富二期新兴产业基金（有限合伙）', 0, 0, 8, 2);
INSERT INTO `collector_company` VALUES ('E5260', '深圳前海山鹰新时代新兴产业发展基金合伙企业（有限合伙）', 0, 0, 8, 2);
INSERT INTO `collector_company` VALUES ('E5270', '深圳前海山鹰新时代新兴产业二号发展基金合伙企业（有限合伙）', 0, 0, 8, 2);
INSERT INTO `collector_company` VALUES ('E5280', '云印技术（深圳）有限公司', 1, 1, 9, 2);
INSERT INTO `collector_company` VALUES ('E5290', '深圳市云印电子商务有限公司', 0, 0, 9, 2);
INSERT INTO `collector_company` VALUES ('E5300', '宁波市云印微供电子商务有限公司', 0, 0, 9, 2);
INSERT INTO `collector_company` VALUES ('E5310', '深圳市云印商业保理有限公司', 0, 0, 9, 2);
INSERT INTO `collector_company` VALUES ('E5320', '厦门包印通科技有限公司', 0, 0, 5, 2);
INSERT INTO `collector_company` VALUES ('E5900', 'Global win co.,ltd（母公司）', 0, 0, 5, 3);
INSERT INTO `collector_company` VALUES ('E5910', 'Global win capital corporation', 0, 0, 3, 3);
INSERT INTO `collector_company` VALUES ('E6120', '爱拓环保能源（浙江）有限公司', 0, 1, 4, 2);
INSERT INTO `collector_company` VALUES ('E6130', '山鹰（上海）企业管理咨询有限公司', 0, 1, 8, 2);
INSERT INTO `collector_company` VALUES ('E6140', '嘉兴路通报关有限公司', 0, 0, 1, 2);
INSERT INTO `collector_company` VALUES ('E6150', '宁波环深垃圾分类服务有限公司', 0, 0, 1, 2);
INSERT INTO `collector_company` VALUES ('ENP', 'SUTRIV Holding AB（合并）', 1, 1, 7, 6);
COMMIT;

-- ----------------------------
-- Table structure for collector_currency
-- ----------------------------
DROP TABLE IF EXISTS `collector_currency`;
CREATE TABLE `collector_currency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `currencyname` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currencyname` (`currencyname`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collector_currency
-- ----------------------------
BEGIN;
INSERT INTO `collector_currency` VALUES (2, 'CNY');
INSERT INTO `collector_currency` VALUES (7, 'HKD');
INSERT INTO `collector_currency` VALUES (6, 'SEK');
INSERT INTO `collector_currency` VALUES (3, 'USD');
COMMIT;

-- ----------------------------
-- Table structure for collector_currencyrate
-- ----------------------------
DROP TABLE IF EXISTS `collector_currencyrate`;
CREATE TABLE `collector_currencyrate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `periodrate` double NOT NULL,
  `pointrate` double NOT NULL,
  `currencydate` date NOT NULL,
  `aftercur_id` int NOT NULL,
  `originalcur_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collector_currencyra_aftercur_id_57338d30_fk_collector` (`aftercur_id`),
  KEY `collector_currencyra_originalcur_id_bd047033_fk_collector` (`originalcur_id`),
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
-- Table structure for collector_ytddata
-- ----------------------------
DROP TABLE IF EXISTS `collector_ytddata`;
CREATE TABLE `collector_ytddata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ytdactual` double NOT NULL,
  `ytdbudget` double NOT NULL,
  `version_id` varchar(64) NOT NULL,
  `ytdaccount_id` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collector_ytddata_version_id_da0d3544_fk_collector` (`version_id`),
  KEY `collector_ytddata_ytdaccount_id_7a3249a4_fk_collector` (`ytdaccount_id`),
  CONSTRAINT `collector_ytddata_version_id_da0d3544_fk_collector` FOREIGN KEY (`version_id`) REFERENCES `collector_version` (`versionname`),
  CONSTRAINT `collector_ytddata_ytdaccount_id_7a3249a4_fk_collector` FOREIGN KEY (`ytdaccount_id`) REFERENCES `collector_accountbg` (`accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES (1, '2020-03-16 03:23:37.700716', 'PL01010102', '营业外收入', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 2);
INSERT INTO `django_admin_log` VALUES (2, '2020-03-16 05:02:19.946011', '3', '北美事业部', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (3, '2020-03-16 05:08:04.619488', '4', '筹建', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (4, '2020-03-16 05:08:12.806282', '5', '非考核主体', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (5, '2020-03-16 05:08:35.710387', '6', '环宇国际', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (6, '2020-03-16 05:08:46.748877', '7', '欧洲事业部', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (7, '2020-03-16 05:08:58.620213', '8', '其他', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (8, '2020-03-16 05:09:06.606968', '9', '云印', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (9, '2020-03-16 05:10:09.382108', 'ENP', 'SUTRIV Holding AB（合并） - ENP', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (10, '2020-03-16 05:14:26.579193', 'E6150', '宁波环深垃圾分类服务有限公司 - E6150', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (11, '2020-03-16 05:14:32.285767', 'E6150', '宁波环深垃圾分类服务有限公司 - E6150', 2, '[]', 10, 3);
INSERT INTO `django_admin_log` VALUES (12, '2020-03-16 05:15:07.597711', 'E6140', '嘉兴路通报关有限公司 - E6140', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (13, '2020-03-16 05:15:25.650908', 'E6130', '山鹰（上海）企业管理咨询有限公司 - E6130', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (14, '2020-03-16 05:15:53.026870', 'E6120', '爱拓环保能源（浙江）有限公司 - E6120', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (15, '2020-03-16 05:16:03.349294', 'E5910', 'Global win capital corporation - E5910', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (16, '2020-03-16 05:16:18.094996', 'E5900', 'Global win co.,ltd（母公司） - E5900', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (17, '2020-03-16 05:16:28.228683', 'E5320', '厦门包印通科技有限公司 - E5320', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (18, '2020-03-16 05:19:12.017228', 'E5310', '深圳市云印商业保理有限公司 - E5310', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (19, '2020-03-16 05:19:21.826735', 'E5300', '宁波市云印微供电子商务有限公司 - E5300', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (20, '2020-03-16 05:19:40.876594', '7', '欧洲', 2, '[{\"changed\": {\"fields\": [\"\\u4e8b\\u4e1a\\u90e8\"]}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (21, '2020-03-16 05:19:55.872167', '3', '北美', 2, '[{\"changed\": {\"fields\": [\"\\u4e8b\\u4e1a\\u90e8\"]}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (22, '2020-03-16 05:20:03.093332', '2', '包装', 2, '[{\"changed\": {\"fields\": [\"\\u4e8b\\u4e1a\\u90e8\"]}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (23, '2020-03-16 05:20:10.167031', '1', '造纸', 2, '[{\"changed\": {\"fields\": [\"\\u4e8b\\u4e1a\\u90e8\"]}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (24, '2020-03-16 05:20:55.349781', 'E5280', '云印技术（深圳）有限公司 - E5280', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (25, '2020-03-16 05:21:12.329866', 'E5290', '深圳市云印电子商务有限公司 - E5290', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (26, '2020-03-16 05:21:28.411137', 'E5270', '深圳前海山鹰新时代新兴产业二号发展基金合伙企业（有限合伙） - E5270', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (27, '2020-03-16 05:21:42.574469', 'E5260', '深圳前海山鹰新时代新兴产业发展基金合伙企业（有限合伙） - E5260', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (28, '2020-03-16 05:21:51.578146', 'E5250', '安徽省鹰隼恒富二期新兴产业基金（有限合伙） - E5250', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (29, '2020-03-16 05:22:01.337132', 'E5240', '安徽省鹰隼恒富一期新兴产业基金（有限合伙） - E5240', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (30, '2020-03-16 05:22:10.749115', 'E5230', '马鞍山市雄鹰新兴产业投资基金（有限合伙） - E5230', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (31, '2020-03-16 05:22:22.577767', 'E5220', '深圳前海山鹰新时代投资管理有限公司 - E5220', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (32, '2020-03-16 05:22:53.767125', 'E5210', '深圳前海山鹰原力基金管理有限公司 - E5210', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (33, '2020-03-16 05:23:11.291858', 'E5200', '山鹰投资管理有限公司（母公司） - E5200', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (34, '2020-03-16 05:23:26.228712', 'E5130', '谊来（莆田）珠宝工业有限公司 - E5130', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (35, '2020-03-16 05:23:46.580025', 'E5110', '山鹰（上海）融资租赁有限公司 - E5110', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (36, '2020-03-16 05:23:59.259067', 'E4140', '马鞍山天顺船务代理有限公司 - E4140', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (37, '2020-03-16 05:24:09.820515', 'E4130', '马鞍山天顺力达集装箱服务有限责任公司 - E4130', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (38, '2020-03-16 05:28:54.072935', 'E4120', '马鞍山天顺港口有限责任公司（母公司） - E4120', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (39, '2020-03-16 05:29:28.357529', 'E3950', 'Cycle Link (Europe) B.V. - E3950', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (40, '2020-03-16 05:29:36.683709', 'E3940', 'Cycle Link Co.,Ltd.-JPN - E3940', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (41, '2020-03-16 05:29:46.438984', 'E3930', 'Cycle Link (UK) Limited - E3930', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (42, '2020-03-16 05:29:59.266854', 'E3920', 'Cycle Link Austrlia PTY Ltd - E3920', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (43, '2020-03-16 05:30:26.383174', 'E3910', 'Cycle Link (U.S.A) Inc. - E3910', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (44, '2020-03-16 05:30:46.755507', 'E3900', '环宇集团国际控股有限公司（母公司） - E3900', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (45, '2020-03-16 05:30:55.496901', 'E3800', 'Container Transport Oldenburger BV(Consolidation) - E3800', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (46, '2020-03-16 05:31:18.861090', 'E3230', '荆州联宇再生资源有限公司 - E3230', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (47, '2020-03-16 05:31:36.622025', 'E3220', '浙江山鹰供应链管理有限公司 - E3220', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (48, '2020-03-16 05:31:51.787312', 'E3210', '宇盛（上海）再生资源开发有限公司 - E3210', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (49, '2020-03-16 05:32:32.418294', 'E3200', '漳州宇盛纸业有限公司 - E3200', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (50, '2020-03-16 05:32:47.132823', 'E3190', '浙江泰兴纸业有限公司 - E3190', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (51, '2020-03-16 05:32:58.680720', 'E3170', '嘉兴环宇再生资源科技有限公司 - E3170', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (52, '2020-03-16 05:34:51.258365', 'E3160', '马鞍山环宇再生资源科技有限公司 - E3160', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (53, '2020-03-16 05:35:04.026353', 'E3150', '嘉兴环宇商务服务有限公司 - E3150', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (54, '2020-03-16 05:35:21.670516', 'E3140', '福建环宇纸业有限公司 - E3140', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (55, '2020-03-16 05:35:39.203367', 'E3130', '福建省莆田市阳光纸业有限公司 - E3130', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (56, '2020-03-16 05:35:54.587992', 'E3120', '上海山鹰供应链管理有限公司 - E3120', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (57, '2020-03-16 05:36:04.841977', 'E3110', '马鞍山市蓝天废旧物资回收有限公司 - E3110', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (58, '2020-03-16 05:36:19.426939', 'E2910', '祥恒创意（香港）包装有限公司 - E2910', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (59, '2020-03-16 05:36:31.886588', 'E2900', '恒健（香港）包装有限公司 - E2900', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (60, '2020-03-16 05:40:14.636338', 'E2320', '中印科技股份有限公司 - E2320', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (61, '2020-03-16 05:40:35.634556', 'E1970', 'Phoenix Paper Wickliffe LLC - E1970', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (62, '2020-03-16 05:40:50.528649', 'E1960', 'Global Win Wickliffe LLC - E1960', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (63, '2020-03-16 05:41:03.109852', 'E1220', '山鹰纸业（广东）有限公司 - E1220', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (64, '2020-03-16 05:41:21.201369', 'E1210', '山鹰纸业（吉林）有限公司 - E1210', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (65, '2020-03-16 05:41:33.523800', 'E1200', '吉安集团有限公司上海分公司 - E1200', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (66, '2020-03-16 05:41:49.481138', 'E1190', '福建省联盛纸业有限责任公司（母公司） - E1190', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (67, '2020-03-16 06:47:29.761160', '1', 'admin', 1, '[{\"added\": {}}]', 3, 3);
INSERT INTO `django_admin_log` VALUES (68, '2020-03-16 06:48:12.087827', '4', 'fuqihao', 1, '[{\"added\": {}}]', 4, 3);
INSERT INTO `django_admin_log` VALUES (69, '2020-03-16 06:50:16.558689', '4', 'fuqihao', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 3);
INSERT INTO `django_admin_log` VALUES (70, '2020-03-16 06:50:52.652994', '4', 'fuqihao', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 3);
INSERT INTO `django_admin_log` VALUES (71, '2020-03-16 07:21:34.337481', 'E1180', '山鹰纸业（湖北）有限公司 - E1180', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (72, '2020-03-16 07:21:55.284857', 'E1170', '山鹰纸业（福建）有限公司 - E1170', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (73, '2020-03-16 07:22:04.534759', 'E1160', '山鹰纸业（重庆）有限公司 - E1160', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (74, '2020-03-16 07:22:19.534586', 'E1150', '山鹰华中纸业有限公司 - E1150', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (75, '2020-03-16 07:22:32.067502', 'E1140', '山鹰国际控股股份公司上海分公司 - E1140', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (76, '2020-03-16 07:22:50.428995', 'E1100', '山鹰国际控股股份公司（母公司） - E1100', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (77, '2020-03-16 07:22:57.960175', 'E1110', '浙江山鹰纸业有限公司（母公司） - E1110', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (78, '2020-03-16 07:23:05.991356', 'E1120', '山鹰纸业销售有限公司 - E1120', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (79, '2020-03-16 07:23:15.961478', 'E1130', '马鞍山市天福纸箱纸品有限公司 - E1130', 2, '[{\"changed\": {\"fields\": [\"Bu\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (80, '2020-03-16 07:25:11.809586', 'PL010101010201', '主营业务成本', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (81, '2020-03-16 07:25:35.549879', 'PL0101010101', '营业收入', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (82, '2020-03-16 07:26:05.285694', 'GBYF', '运费', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (83, '2020-03-16 07:26:27.758271', 'PL0101010108', '公允价值变动收益', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (84, '2020-03-16 07:26:56.965035', 'PL0101010109', '投资收益', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (85, '2020-03-16 07:27:09.434800', 'PL0101010110', '资产处置收益', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (86, '2020-03-16 07:27:19.264924', 'PL0101010111', '其他收益', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (87, '2020-03-16 07:27:37.066994', 'PL01010101', '营业利润', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (88, '2020-03-16 07:28:08.029109', 'PL01010102', '营业外收入', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (89, '2020-03-16 07:28:42.101099', 'GBTSSR', '退税收入', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (90, '2020-03-16 07:28:52.415630', 'PL01010103', '营业外支出', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (91, '2020-03-16 07:29:08.071848', 'GBEBIT', '息税前利润（EBIT）', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (92, '2020-03-16 07:29:23.243659', 'PL010101', '利润总额', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (93, '2020-03-16 07:29:38.120117', 'GBEBITDA', 'EBITDA', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (94, '2020-03-16 07:31:33.445988', 'PL0101010112', '研发费用', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (95, '2020-03-16 07:32:00.543752', 'PL0101010107', '资产减值损失', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (96, '2020-03-16 07:32:08.184769', 'PL0101010106', '财务费用', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (97, '2020-03-16 07:32:15.856618', 'PL0101010105', '管理费用', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (98, '2020-03-16 07:32:26.874503', 'PL0101010104', '销售费用', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (99, '2020-03-16 07:32:33.626218', 'PL0101010103', '税金及附加', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (100, '2020-03-16 07:32:40.971337', 'PL010101010202', '其他业务成本', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (101, '2020-03-16 07:32:45.191153', 'PL010101010201', '主营业务成本', 2, '[]', 15, 4);
INSERT INTO `django_admin_log` VALUES (102, '2020-03-16 07:32:59.275406', 'PL010101010102', '其他业务收入', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (103, '2020-03-16 07:33:59.798478', 'GBTSSR', '退税收入', 2, '[]', 15, 4);
INSERT INTO `django_admin_log` VALUES (104, '2020-03-16 07:36:08.355183', 'PL010101010101', '主营业务收入', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (105, '2020-03-16 07:36:26.276983', 'GBZJYTX', '折旧与摊销', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (106, '2020-03-16 07:36:39.704958', 'GBXL', '销量', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (107, '2020-03-16 07:36:49.314301', 'GBRS', '人数（花名册口径）', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (108, '2020-03-16 07:36:57.580467', 'GBRJEBIT', '人均EBIT', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (109, '2020-03-16 07:37:11.666225', 'GBCL', '产量', 2, '[{\"changed\": {\"fields\": [\"\\u663e\\u793a\\u540d\\u79f0\"]}}]', 15, 4);
INSERT INTO `django_admin_log` VALUES (110, '2020-03-17 08:19:14.041741', '5', 'zhengrongrong', 1, '[{\"added\": {}}]', 4, 3);
INSERT INTO `django_admin_log` VALUES (111, '2020-03-17 08:19:29.105859', '5', 'zhengrongrong', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 3);
INSERT INTO `django_admin_log` VALUES (112, '2020-03-17 08:26:58.089997', 'E1100', '山鹰国际控股股份公司（母公司） - E1100', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (113, '2020-03-17 08:27:06.562020', 'E1110', '浙江山鹰纸业有限公司（母公司） - E1110', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (114, '2020-03-17 08:27:29.054346', 'E1190', '福建省联盛纸业有限责任公司（母公司） - E1190', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (115, '2020-03-17 08:27:45.087202', 'E1220', '山鹰纸业（广东）有限公司 - E1220', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (116, '2020-03-17 08:28:52.544396', 'E1150', '山鹰华中纸业有限公司 - E1150', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (117, '2020-03-17 08:38:04.930529', 'E3160', '马鞍山环宇再生资源科技有限公司 - E3160', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (118, '2020-03-17 08:40:09.023851', 'E3160', '马鞍山环宇再生资源科技有限公司 - E3160', 2, '[]', 10, 4);
INSERT INTO `django_admin_log` VALUES (119, '2020-03-17 08:40:19.012121', 'BU2100', '包装事业部 - BU2100', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (120, '2020-03-17 08:40:27.030372', 'BU1960', '北美事业部 - BU1960', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (121, '2020-03-17 08:40:33.764723', 'BU1100', '造纸事业部 - BU1100', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (122, '2020-03-17 08:41:16.544242', 'ENP', 'SUTRIV Holding AB（合并） - ENP', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (123, '2020-03-17 08:42:54.425935', 'E5280', '云印技术（深圳）有限公司 - E5280', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (124, '2020-03-17 08:44:00.394986', 'E6120', '爱拓环保能源（浙江）有限公司 - E6120', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (125, '2020-03-17 08:44:14.862294', 'E1210', '山鹰纸业（吉林）有限公司 - E1210', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (126, '2020-03-17 08:44:48.932665', 'E6130', '山鹰（上海）企业管理咨询有限公司 - E6130', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (127, '2020-03-17 08:45:02.408422', 'E5200', '山鹰投资管理有限公司（母公司） - E5200', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (128, '2020-03-17 08:45:08.611527', 'E5110', '山鹰（上海）融资租赁有限公司 - E5110', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (129, '2020-03-17 08:45:28.690678', 'E4120', '马鞍山天顺港口有限责任公司（母公司） - E4120', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (130, '2020-03-17 08:45:38.112498', 'E3120', '上海山鹰供应链管理有限公司 - E3120', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (131, '2020-03-17 08:45:50.433750', 'E1200', '吉安集团有限公司上海分公司 - E1200', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (132, '2020-03-17 08:45:58.124311', 'E1140', '山鹰国际控股股份公司上海分公司 - E1140', 2, '[{\"changed\": {\"fields\": [\"\\u6709\\u6548\\u6807\\u8bb0\"]}}]', 10, 4);
INSERT INTO `django_admin_log` VALUES (133, '2020-03-17 10:28:21.953653', 'VE2230-2020-03-17/72', 'VE2230-2020-03-17/72', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (134, '2020-03-17 10:28:22.063030', 'VE2140-2020-03-17/58', 'VE2140-2020-03-17/58', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (135, '2020-03-17 10:28:22.063030', 'VE2130-2020-03-17/48', 'VE2130-2020-03-17/48', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (136, '2020-03-17 10:28:22.078655', 'VE1970-2020-02-17/59', 'VE1970-2020-02-17/59', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (137, '2020-03-17 10:28:22.078655', 'VE1960-2020-02-17/62', 'VE1960-2020-02-17/62', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (138, '2020-03-17 10:28:22.094274', 'VE1180-2020-03-17/72', 'VE1180-2020-03-17/72', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (139, '2020-03-17 10:28:22.094274', 'VE1180-2020-02-17/75', 'VE1180-2020-02-17/75', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (140, '2020-03-17 10:28:22.109895', 'VE1160-2020-03-17/74', 'VE1160-2020-03-17/74', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (141, '2020-03-17 10:28:22.109895', 'VE1160-2020-03-17/59', 'VE1160-2020-03-17/59', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (142, '2020-03-17 10:28:22.109895', 'VE1160-2020-03-17/58', 'VE1160-2020-03-17/58', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (143, '2020-03-17 10:28:22.109895', 'VE1120-2020-03-17/37', 'VE1120-2020-03-17/37', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (144, '2020-03-17 10:28:22.125521', 'VE1110-2020-03-17/43', 'VE1110-2020-03-17/43', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (145, '2020-03-17 10:28:22.125521', 'VBU2100-2020-03-16/30', 'VBU2100-2020-03-16/30', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (146, '2020-03-17 10:28:22.141142', 'VBU1100-2020-03-14/43', 'VBU1100-2020-03-14/43', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (147, '2020-03-17 10:28:22.141142', 'VBU1100-2019-03-14/59', 'VBU1100-2019-03-14/59', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (148, '2020-03-17 10:28:22.156765', 'VBU1100-2019-03-14/40', 'VBU1100-2019-03-14/40', 3, '', 12, 3);
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (15, 'collector', 'accountbg');
INSERT INTO `django_content_type` VALUES (8, 'collector', 'accounttype');
INSERT INTO `django_content_type` VALUES (17, 'collector', 'actualdata');
INSERT INTO `django_content_type` VALUES (16, 'collector', 'budgetdata');
INSERT INTO `django_content_type` VALUES (9, 'collector', 'businessunit');
INSERT INTO `django_content_type` VALUES (10, 'collector', 'company');
INSERT INTO `django_content_type` VALUES (11, 'collector', 'currency');
INSERT INTO `django_content_type` VALUES (14, 'collector', 'currencyrate');
INSERT INTO `django_content_type` VALUES (7, 'collector', 'mysqlview');
INSERT INTO `django_content_type` VALUES (13, 'collector', 'user');
INSERT INTO `django_content_type` VALUES (12, 'collector', 'version');
INSERT INTO `django_content_type` VALUES (18, 'collector', 'ytddata');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-03-13 11:17:35.732781');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-03-13 11:17:36.829602');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-03-13 11:17:38.860096');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-03-13 11:17:39.259091');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-13 11:17:39.294588');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-03-13 11:17:39.715522');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-03-13 11:17:39.931368');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-03-13 11:17:40.104663');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-03-13 11:17:40.141850');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-03-13 11:17:40.326381');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-03-13 11:17:40.351576');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-13 11:17:40.385031');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-03-13 11:17:40.597708');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-13 11:17:40.788033');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-03-13 11:17:40.855557');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-03-13 11:17:40.918037');
INSERT INTO `django_migrations` VALUES (17, 'collector', '0001_initial', '2020-03-13 11:17:42.390431');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2020-03-13 11:17:44.311902');
INSERT INTO `django_migrations` VALUES (19, 'collector', '0002_auto_20200314_1730', '2020-03-14 09:30:30.012817');
INSERT INTO `django_migrations` VALUES (20, 'collector', '0003_auto_20200314_1735', '2020-03-14 09:35:32.688376');
INSERT INTO `django_migrations` VALUES (21, 'collector', '0004_account_displayname', '2020-03-14 09:53:30.551565');
INSERT INTO `django_migrations` VALUES (22, 'collector', '0005_auto_20200317_1716', '2020-03-17 09:17:17.723418');
INSERT INTO `django_migrations` VALUES (23, 'collector', '0006_auto_20200318_0943', '2020-03-18 01:43:40.693154');
INSERT INTO `django_migrations` VALUES (24, 'collector', '0007_ytddata_ytdaccount', '2020-03-18 02:16:14.986868');
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
INSERT INTO `django_session` VALUES ('1xf7ua44h2jw288tfpewyggbl14rxjy7', 'NDA2NmUyMGIxNmFiNzg4OWZjN2M1NmFmZmRkNmNiM2I2NWFkNGQxMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZTFhMjkyZDlkMmFiNjM2ZGQxY2IyM2RmMjYwYTQ2MTc2Y2QzMjI2In0=', '2020-03-28 10:10:28.154702');
INSERT INTO `django_session` VALUES ('2j5mv127r00zc6n3drqso2e94eiwva0o', 'NTRjY2RmODAzZDFiMjgxNzMzMzQxZTM2N2M0ODg4YTg0M2NiYWE2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZmY2MDRjOTg2YzJmYjkyYjU0MDZlNGRhYTU4ZDhhZWY3YjA2ZWE4In0=', '2020-03-30 04:40:49.784040');
INSERT INTO `django_session` VALUES ('5p0sdpcgb1botm77su11gvvvk0w1ll67', 'NTRjY2RmODAzZDFiMjgxNzMzMzQxZTM2N2M0ODg4YTg0M2NiYWE2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZmY2MDRjOTg2YzJmYjkyYjU0MDZlNGRhYTU4ZDhhZWY3YjA2ZWE4In0=', '2020-03-30 06:42:39.287198');
INSERT INTO `django_session` VALUES ('f0iaoujz62iawfvonpn16aqzyyj7lcdv', 'NzRhNTIwODI0Y2JiNjJjZGI4NWM4MGNmOWRjMWIxMTBiMjUxYzRjOTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDAyNDFhYzE1YjVjZWMwZmIwMjVkMDNkMWQ5ZDJlOGFmYmE1Y2ZkIn0=', '2020-03-30 06:51:03.199872');
INSERT INTO `django_session` VALUES ('gjf9murdx7kfxr1fcxj6emuj3dj7ol9v', 'NDA2NmUyMGIxNmFiNzg4OWZjN2M1NmFmZmRkNmNiM2I2NWFkNGQxMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZTFhMjkyZDlkMmFiNjM2ZGQxY2IyM2RmMjYwYTQ2MTc2Y2QzMjI2In0=', '2020-03-28 10:16:16.000482');
INSERT INTO `django_session` VALUES ('ibn6z4gwe5fstynmtcosatmahvs8u43v', 'NTRjY2RmODAzZDFiMjgxNzMzMzQxZTM2N2M0ODg4YTg0M2NiYWE2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZmY2MDRjOTg2YzJmYjkyYjU0MDZlNGRhYTU4ZDhhZWY3YjA2ZWE4In0=', '2020-03-30 03:32:02.654411');
INSERT INTO `django_session` VALUES ('mf1kq8uo2silfzj2bc44c1xj216slnuz', 'NzRhNTIwODI0Y2JiNjJjZGI4NWM4MGNmOWRjMWIxMTBiMjUxYzRjOTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDAyNDFhYzE1YjVjZWMwZmIwMjVkMDNkMWQ5ZDJlOGFmYmE1Y2ZkIn0=', '2020-03-30 07:20:37.805476');
INSERT INTO `django_session` VALUES ('ncwlf53jh4dli32z49yt6ota8m24ylq8', 'NTRjY2RmODAzZDFiMjgxNzMzMzQxZTM2N2M0ODg4YTg0M2NiYWE2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZmY2MDRjOTg2YzJmYjkyYjU0MDZlNGRhYTU4ZDhhZWY3YjA2ZWE4In0=', '2020-03-30 08:16:30.352909');
INSERT INTO `django_session` VALUES ('tvvg0su11k19sww0wznh91hx7yrafokc', 'NTRjY2RmODAzZDFiMjgxNzMzMzQxZTM2N2M0ODg4YTg0M2NiYWE2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZmY2MDRjOTg2YzJmYjkyYjU0MDZlNGRhYTU4ZDhhZWY3YjA2ZWE4In0=', '2020-03-30 06:27:54.527614');
INSERT INTO `django_session` VALUES ('wvzan76z7hyzclo3e8rwq40gf5fnvp4p', 'NTRjY2RmODAzZDFiMjgxNzMzMzQxZTM2N2M0ODg4YTg0M2NiYWE2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZmY2MDRjOTg2YzJmYjkyYjU0MDZlNGRhYTU4ZDhhZWY3YjA2ZWE4In0=', '2020-03-30 07:28:29.501907');
COMMIT;

-- ----------------------------
-- View structure for mysqlview
-- ----------------------------
DROP VIEW IF EXISTS `mysqlview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `mysqlview` AS select `collector_actualdata`.`id` AS `id`,`collector_accountbg`.`accountname` AS `accountname`,`collector_actualdata`.`amount` AS `amount`,`collector_company`.`companyname` AS `companyname`,`collector_version`.`accountdate` AS `accountdate`,`collector_version`.`versionname` AS `versionname`,`collector_version`.`vaild` AS `vaild`,`collector_accounttype_alias1`.`typename` AS `typename`,`collector_currency`.`currencyname` AS `currencyname`,`collector_company`.`companycode` AS `companycode`,`collector_businessunit`.`buname` AS `buname`,`collector_version`.`submittdate` AS `submittdate`,`collector_ytddata_alias1`.`ytdactual` AS `ytdactual`,`collector_ytddata_alias1`.`ytdbudget` AS `ytdbudget` from (((((((`collector_accountbg` join `collector_actualdata` on((`collector_accountbg`.`accountid` = `collector_actualdata`.`accountid_id`))) join `collector_version` on((`collector_actualdata`.`version_id` = `collector_version`.`versionname`))) join `collector_company` on((`collector_version`.`companycode_id` = `collector_company`.`companycode`))) join `collector_currency` on((`collector_company`.`currency_id` = `collector_currency`.`id`))) join `collector_businessunit` on((`collector_company`.`bu_id` = `collector_businessunit`.`id`))) join `collector_ytddata` `collector_ytddata_alias1` on(((`collector_actualdata`.`version_id` = `collector_ytddata_alias1`.`version_id`) and (`collector_ytddata_alias1`.`ytdaccount_id` = `collector_accountbg`.`accountid`)))) join `collector_accounttype` `collector_accounttype_alias1`) order by `collector_actualdata`.`id`;

SET FOREIGN_KEY_CHECKS = 1;
