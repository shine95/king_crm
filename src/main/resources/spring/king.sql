/*
 Navicat Premium Data Transfer

 Source Server         : root@localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : king

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 13/11/2018 16:37:43
*/

-- SET NAMES utf8mb4;
-- SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for db_adver
-- ----------------------------
DROP TABLE IF EXISTS `db_adver`;
CREATE TABLE `db_adver`  (
  `id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '广告名称',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '广告跳转地址',
  `img_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '图片连接',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注说明',
  `modifier` int(11) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `creater_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `system_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Android' COMMENT '版本操作系统',
  `click_count` int(11) NULL DEFAULT NULL COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_time`(`start_time`, `end_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '广告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_adver
-- ----------------------------
INSERT INTO `db_adver` VALUES ('1', '快来贷', '2018-10-05 02:50:46', '2018-12-05 02:50:54', 'www.baidu.com', 'www.baidu.com', '1', 1, NULL, 1, NULL, 'Android', 5);
INSERT INTO `db_adver` VALUES ('377420f3529b46f8beeb2581c69ef215', '好享贷', '2018-11-05 00:00:00', '2018-11-07 00:00:00', 'www.baidu.com', 'www.baidu.com', 'haoxiangdai', 1, NULL, 1, NULL, 'Android', 2);

-- ----------------------------
-- Table structure for db_adver_copy
-- ----------------------------
DROP TABLE IF EXISTS `db_adver_copy`;
CREATE TABLE `db_adver_copy`  (
  `id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '广告名称',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '广告跳转地址',
  `img_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '图片连接',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注说明',
  `modifier` int(11) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `creater_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `system_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Android' COMMENT '版本操作系统',
  `click_count` int(11) NULL DEFAULT NULL COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_time`(`start_time`, `end_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '广告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_adver_copy
-- ----------------------------
INSERT INTO `db_adver_copy` VALUES ('1', '快来贷', '2018-10-05 02:50:46', '2018-12-05 02:50:54', 'www.baidu.com', 'www.baidu.com', '1', 1, NULL, 1, '2018-11-07 11:26:49', '1', 4);
INSERT INTO `db_adver_copy` VALUES ('377420f3529b46f8beeb2581c69ef215', '好享贷', '2018-11-05 00:00:00', '2018-11-07 00:00:00', 'www.baidu.com', 'www.baidu.com', 'haoxiangdai', 1, NULL, 1, '2018-11-05 10:56:57', '1', 1);

-- ----------------------------
-- Table structure for db_bank
-- ----------------------------
DROP TABLE IF EXISTS `db_bank`;
CREATE TABLE `db_bank`  (
  `bank_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '银行id',
  `bank_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行名字',
  `bank_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接',
  `info` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `click_number` int(11) NULL DEFAULT NULL COMMENT '点击次数',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `logo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'LOGO',
  `app_id` int(11) NULL DEFAULT NULL COMMENT '产品id',
  `backage_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '包id',
  PRIMARY KEY (`bank_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '银行表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_bank
-- ----------------------------
INSERT INTO `db_bank` VALUES ('7d5e3b6ed9e54ce2bca961bad92e6d69', '中国建设', 'www.baidu.com', '建设', 4, '2018-11-05 14:39:18', 'www.baidu.com', 1, '1');

-- ----------------------------
-- Table structure for db_banner
-- ----------------------------
DROP TABLE IF EXISTS `db_banner`;
CREATE TABLE `db_banner`  (
  `id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `img` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `status` int(11) NULL DEFAULT NULL COMMENT '是否启用0禁用1启用',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '固定banner\n' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_banner
-- ----------------------------
INSERT INTO `db_banner` VALUES ('1', 'www.baidu.com', 'www.baidu.com', 1, '2018-11-07 07:47:51');
INSERT INTO `db_banner` VALUES ('8b8d30596b634eae953471ad3b2c1c3c', 'www.baidu.com', 'www.baidu.com', 2, '2018-11-07 19:51:00');

-- ----------------------------
-- Table structure for db_card
-- ----------------------------
DROP TABLE IF EXISTS `db_card`;
CREATE TABLE `db_card`  (
  `id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一标识',
  `card_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `img` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接',
  `status` int(11) NULL DEFAULT 1 COMMENT '状态0禁用1启用',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `click_number` int(11) NULL DEFAULT 1 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_card
-- ----------------------------
INSERT INTO `db_card` VALUES ('00dd142e01c2405baa2ffe7aaf36f188', '光大信用卡', '光大银行', 'www.baidu.com', 'www.baidu.com', 1, '2018-11-07 10:39:48', 2);

-- ----------------------------
-- Table structure for db_clicks_record
-- ----------------------------
DROP TABLE IF EXISTS `db_clicks_record`;
CREATE TABLE `db_clicks_record`  (
  `id` int(128) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `source_channel` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '渠道来源',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '点击统计\r\n' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_clicks_record
-- ----------------------------
INSERT INTO `db_clicks_record` VALUES (1, 17, 'jie', '2018-11-10 10:00:51', '111');

-- ----------------------------
-- Table structure for db_fhdb
-- ----------------------------
DROP TABLE IF EXISTS `db_fhdb`;
CREATE TABLE `db_fhdb`  (
  `FHDB_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户',
  `BACKUP_TIME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备份时间',
  `TABLENAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `SQLPATH` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存储位置',
  `TYPE` int(1) NOT NULL COMMENT '类型',
  `DBSIZE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件大小',
  `BZ` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHDB_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for db_immediately_record
-- ----------------------------
DROP TABLE IF EXISTS `db_immediately_record`;
CREATE TABLE `db_immediately_record`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方名称',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '状态0已完成1未完成',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方链接',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for db_loan_daily_detail
-- ----------------------------
DROP TABLE IF EXISTS `db_loan_daily_detail`;
CREATE TABLE `db_loan_daily_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_amount` decimal(10, 0) NULL DEFAULT NULL COMMENT '借款金额',
  `order_create_date` datetime(0) NULL DEFAULT NULL COMMENT '借款日期',
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工单编号',
  `order_pay_date` datetime(0) NULL DEFAULT NULL,
  `source` int(11) NULL DEFAULT NULL COMMENT '渠道ID',
  `preorder_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '渠道方用户ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `third_channel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL COMMENT '状态（0成功1失败）',
  `first_cat` int(11) NULL DEFAULT NULL COMMENT '第一次查看\n',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_loan_daily_detail
-- ----------------------------
INSERT INTO `db_loan_daily_detail` VALUES (1, 30000, '2018-11-10 04:33:42', '10561562', '2018-11-16 04:33:50', 65, '09283ac867274ce5', '2018-11-10 04:34:55', 'dfsdf', 2, 0);

-- ----------------------------
-- Table structure for db_loan_daily_master
-- ----------------------------
DROP TABLE IF EXISTS `db_loan_daily_master`;
CREATE TABLE `db_loan_daily_master`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `source` int(11) NULL DEFAULT NULL COMMENT '渠道',
  `register` int(11) NULL DEFAULT NULL COMMENT '注册数',
  `realname` int(11) NULL DEFAULT NULL COMMENT '实名数',
  `operator` int(11) NULL DEFAULT NULL COMMENT '运营商成功数',
  `bind_card` int(11) NULL DEFAULT NULL COMMENT '绑卡成功数',
  `order_count` int(11) NULL DEFAULT NULL COMMENT '工单提单数',
  `order_principal` decimal(8, 2) NULL DEFAULT NULL COMMENT '工单提单金额',
  `pay_count` int(11) NULL DEFAULT NULL COMMENT '工单放款单数',
  `pay_principal` int(11) NULL DEFAULT NULL COMMENT '工单放款金额',
  `creater_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for db_loantype
-- ----------------------------
DROP TABLE IF EXISTS `db_loantype`;
CREATE TABLE `db_loantype`  (
  `id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '贷款名称',
  `modifier` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '修改人',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for db_message
-- ----------------------------
DROP TABLE IF EXISTS `db_message`;
CREATE TABLE `db_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识	',
  `user_id` int(11) NOT NULL COMMENT '用户标识',
  `content` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息内容',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` int(3) NOT NULL COMMENT '状态（0已查看1未查看）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '消息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_message
-- ----------------------------
INSERT INTO `db_message` VALUES (1, 17, '你有一笔钱未归还', '2018-11-07 11:08:34', 0);
INSERT INTO `db_message` VALUES (2, 17, '你还有一笔钱未还', '2018-11-01 08:38:43', 0);

-- ----------------------------
-- Table structure for db_package
-- ----------------------------
DROP TABLE IF EXISTS `db_package`;
CREATE TABLE `db_package`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '包名不允许重复',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注说明',
  `modefier` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp(0) NOT NULL COMMENT '修改时间',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `status` int(11) NULL DEFAULT 1 COMMENT '状态0禁用1启用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `db_package_name_uindex`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '类包' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_package
-- ---------------------------

-- ----------------------------
-- Table structure for db_product
-- ----------------------------
DROP TABLE IF EXISTS `db_product`;
CREATE TABLE `db_product`  (
  `product_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品名称',
  `product_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品链接',
  `product_img` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品图',
  `product_type` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `click_number` int(11) NULL DEFAULT 1 COMMENT '点击次数',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `package_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '包id',
  `date_rate` decimal(3, 2) NULL DEFAULT 1.00 COMMENT '日利率',
  `succ_rate` decimal(3, 2) NULL DEFAULT 1.00 COMMENT '成功率',
  `status` int(11) NULL DEFAULT 1 COMMENT '上下架状态0下架1上架',
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_product
-- ----------------------------
INSERT INTO `db_product` VALUES ('0fb4f090971d41b18c23938a367843ea', '乐乐贷', 'www.baidu.com', 'www.baidu.com', '学生贷', NULL, '2018-11-07 18:29:01', '1', 1.00, 1.00, 1);
INSERT INTO `db_product` VALUES ('2131bca34eda4fa3b3178e574ab599fd', '佳人贷', 'www.baidu.com', 'www.baidu.com', '消费贷', 1, '2018-11-07 18:13:45', '1', 1.00, 1.00, 1);
INSERT INTO `db_product` VALUES ('2298cb01ef1a425caa72e2410d4a758b', '明日贷', 'www.baidu.com', 'www.baidu.com', '会员贷', 1, '2018-11-07 18:18:02', '1', 1.00, 1.00, 1);
INSERT INTO `db_product` VALUES ('4e06f56d82024029a009caf1c7d72039', '爱上贷', 'www.baidu.com', 'www.baidu.com', 'O2O', 1, '2018-11-07 18:00:43', '1', 1.00, 1.00, 1);
INSERT INTO `db_product` VALUES ('55bf62dd0c1048d8929df82979e4b032', '小米贷', 'www.baidu.com', 'http://dadsr23.com', '消费贷', 1, '2018-11-06 19:52:27', '1', 1.00, 1.00, 1);
INSERT INTO `db_product` VALUES ('5668c384c0ea4444860da5f9f18c3d74', '你我贷', 'www.baidu.com', 'http://localhost:8080', '现金贷', 123, '2018-11-03 14:32:34', '1', 1.00, 1.00, 1);
INSERT INTO `db_product` VALUES ('603e20eeecdc430fbef449a8c2a88174', '舒马岱', 'www.baidu.com', 'www.baidu.com', '消费贷', 3, '2018-11-06 19:50:37', '1', 1.00, 1.00, 1);
INSERT INTO `db_product` VALUES ('d61044d293804b6ca5837c5ff6d33a17', '侯乐贷', 'www.baidu.com', 'w', '消费贷', NULL, '2018-11-07 18:53:00', '1', 1.00, 1.00, 1);

-- ----------------------------
-- Table structure for db_record
-- ----------------------------
DROP TABLE IF EXISTS `db_record`;
CREATE TABLE `db_record`  (
  `id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `record_status` int(11) NOT NULL COMMENT '类型0未还款1已还款',
  `product_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品标识',
  `money_num` decimal(10, 0) NULL DEFAULT NULL COMMENT '还款金额',
  `time_count` int(11) NULL DEFAULT NULL COMMENT '期数',
  `record_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '还款时间',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '还款记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_record
-- ----------------------------
INSERT INTO `db_record` VALUES ('1', 0, '你我贷', 1200, 15, '2018-11-07 20:56:30', '2018-11-05 16:41:31', 7);
INSERT INTO `db_record` VALUES ('97077f31bdd547159fc25db1efe6d7ed', 123, '12', 31, 12, '2018-11-07 20:56:30', '2018-11-07 20:56:03', 123);

-- ----------------------------
-- Table structure for db_timingbackup
-- ----------------------------
DROP TABLE IF EXISTS `db_timingbackup`;
CREATE TABLE `db_timingbackup`  (
  `TIMINGBACKUP_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOBNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `CREATE_TIME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `TABLENAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `STATUS` int(1) NOT NULL COMMENT '类型',
  `FHTIME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间规则',
  `TIMEEXPLAIN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则说明',
  `BZ` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TIMINGBACKUP_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_timingbackup
-- ----------------------------
INSERT INTO `db_timingbackup` VALUES ('311e06c34a5e4518a86d5d30799f9b55', 'sys_app_user_515762', '2016-04-11 17:04:55', 'sys_app_user', 2, '1/2 * * ? * *', '每个月的 每周 每天 每小时执行一次', '备份任务');
INSERT INTO `db_timingbackup` VALUES ('bc4a788bc2ec40bdb1b7730131c26d42', 'sys_app_user_359515', '2016-04-12 17:24:05', 'sys_app_user', 2, '1/3 * * ? * *', '每个月的 每周 每天 每小时执行一次', 'ssss');

-- ----------------------------
-- Table structure for db_user
-- ----------------------------
DROP TABLE IF EXISTS `db_user`;
CREATE TABLE `db_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户唯一标识',
  `user_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `loan_amount` int(11) NULL DEFAULT NULL COMMENT '贷款金额1-30万',
  `loan_term` int(11) NULL DEFAULT 12 COMMENT '贷款期限3-60个月',
  `user_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `id_card` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `curlture` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文化程度',
  `purpose` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '贷款用途0日常消费1教育2旅游3装修4其他',
  `work` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职业0无固定职业1上班族2个体户3企业主',
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在地',
  `house` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房子0没有1有',
  `car` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆0没有1有',
  `credit_card` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '信用卡0否1有',
  `accumulation_fund` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公积金0没有1有',
  `wechat_loan` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微粒贷0没有1有',
  `insurance` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保险0没有1有',
  `social_security` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '社保0没有1有',
  `system_type` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '127.0.0.1' COMMENT 'IP地址',
  `channel` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '签名',
  `preorder_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对外唯一表\n',
  `card_quota` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '信用卡额度',
  `overdue` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '逾期情况',
  `month_income` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '月收入',
  `work_term` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作年限',
  `get_type` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收入方式',
  `business_license` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '营业执照',
  `business_life` int(11) NULL DEFAULT NULL COMMENT '经营年限',
  `year_stream` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年收入',
  `house_property` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房产估值',
  `car_property` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆估值',
  `safe_property` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保险估值',
  `province` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `area` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区',
  `wechat_property` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微粒贷额度',
  `wechat_loan_img` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微粒贷截图',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_user
-- ----------------------------
INSERT INTO `db_user` VALUES (1, '18510644644', 1200, 12, '何庆强', '500224119911111111', '1', '-1', '-1', '重庆市财富中心A座11-8', '1', '1', '1', '1', '1', '1', '1', '1', '2018-11-05 15:58:08', '127.0.0.1', '123123', '1324567812454', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `db_user` VALUES (2, '13710784642', 1200, 12, '张三', '520101021915510131', '1', '-1', '1', '北京', '1', '1', '1', '1', '1', '1', '1', '1', '2018-11-05 16:02:41', '127.0.0.1', '123', '216541223456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `db_user` VALUES (9, '185106464644', 1, 1, '王五', '100000199010101011', '1', '1', '1', '北京', '0', '1', '1', '1', '1', '1', '1', 'Android', '2018-11-06 19:31:33', '127.0.0.1', '123', 'd345f11c85eb4687', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `db_user` VALUES (13, '18510644641', 123, 12, '123', '1000001990101010101', '1', '1', '1', '重庆市财富中心A座11-8', '1', '1', '1', '1', '1', '1', '1', '123', '2018-11-06 20:51:10', '127.0.0.1', '123', '3c96265f087e4dc8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `db_user` VALUES (15, '17725098656', 12000, 12, '安', '502154632136546544', '141', '1', '1', '重庆市财富中心A座11-8', '1', '1', '1', '1', '1', '1', '1', 'Android', '2018-11-06 20:54:13', '127.0.0.1', '安其拉', '09283ac867274ceb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `db_user` VALUES (16, '18223826253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Android', '2018-11-07 14:03:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `db_user` VALUES (17, '13647694061', 4000, 11, 'hrt', '1000001990101010101', '1', '1', '1', '北京', '1', '1', '1', '1', '1', '0', '1', 'Android', '2018-11-07 15:19:44', '127.0.0.1', 'fdscdf', 'dfgbfd42hh', '1', '1', NULL, '1', '1', NULL, NULL, NULL, '1', '1', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `db_user` VALUES (18, '18682587305', 73700, 12, '张三丰', '51138119680517354x', '1', '3', '2', '重庆市市辖区渝中区', '3', '1', '1', '0', NULL, '3', '0', NULL, '2018-11-10 00:31:48', '127.0.0.1', NULL, '09283ac867274ce5', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, '3', '重庆市', '市辖区', '渝中区', NULL, NULL);

-- ----------------------------
-- Table structure for db_user_record
-- ----------------------------
DROP TABLE IF EXISTS `db_user_record`;
CREATE TABLE `db_user_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话号码',
  `user_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `app_id` int(11) NULL DEFAULT NULL COMMENT '应用ID',
  `system_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作系统',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_user_record
-- ----------------------------
INSERT INTO `db_user_record` VALUES (27, '17725098656', '172.17.100.15', '2018-11-06 19:57:23', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (28, '17725098656', '192.168.0.84', '2018-11-06 20:44:34', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (29, '17725098656', '192.168.0.84', '2018-11-06 20:49:30', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (30, '17725098656', '192.168.0.84', '2018-11-06 20:57:02', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (31, '17725098656', '192.168.0.84', '2018-11-06 21:01:47', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (32, '17725098656', '192.168.0.84', '2018-11-06 21:04:37', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (33, '18223826253', '172.17.100.15', '2018-11-07 14:03:33', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (34, '18223826253', '172.17.100.15', '2018-11-07 14:34:22', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (35, '18223826253', '172.17.100.15', '2018-11-07 15:07:54', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (36, '18223826253', '172.17.100.15', '2018-11-07 15:08:12', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (37, '18223826253', '172.17.100.15', '2018-11-07 15:09:39', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (38, '18223826253', '172.17.100.15', '2018-11-07 15:11:42', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (39, '13647694061', '172.17.100.15', '2018-11-07 15:19:43', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (40, '13647694061', '172.17.100.15', '2018-11-07 15:20:29', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (41, '13647694061', '172.17.100.15', '2018-11-07 15:20:35', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (42, '13647694061', '172.17.100.15', '2018-11-07 15:22:41', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (43, '13647694061', '172.17.100.15', '2018-11-07 15:25:27', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (44, '13647694061', '172.17.100.15', '2018-11-07 16:06:17', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (45, '13647694061', '172.17.100.15', '2018-11-07 16:14:06', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (46, '13647694061', '172.17.100.15', '2018-11-07 16:29:38', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (47, '13647694061', '172.17.100.15', '2018-11-07 16:33:48', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (48, '13647694061', '172.17.100.15', '2018-11-07 16:38:37', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (49, '18223826253', '172.17.100.15', '2018-11-07 16:46:45', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (50, '13647694061', '192.168.1.120', '2018-11-07 20:36:26', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (51, '13647694061', '172.17.100.15', '2018-11-08 09:31:09', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (52, '13647694061', '172.17.100.15', '2018-11-08 10:54:18', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (53, '13647694061', '172.17.100.15', '2018-11-08 10:55:19', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (54, '13647694061', '172.17.100.15', '2018-11-08 14:19:37', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (55, '18682587305', '172.17.100.15', '2018-11-09 21:48:48', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (56, '18682587305', '172.17.100.15', '2018-11-09 21:51:56', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (57, '13647694061', '172.17.100.15', '2018-11-10 04:57:50', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (58, '13647694061', '172.17.100.15', '2018-11-10 05:03:33', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (59, '13647694061', '172.17.100.15', '2018-11-10 05:14:23', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (60, '18682587305', '172.17.100.15', '2018-11-10 05:23:45', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (61, '13647694061', '172.17.100.15', '2018-11-10 07:41:42', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (62, '13647694061', '192.168.1.100', '2018-11-10 07:51:13', NULL, 'Android');
INSERT INTO `db_user_record` VALUES (63, '18682587305', '192.168.1.100', '2018-11-10 07:53:34', NULL, 'Android');

-- ----------------------------
-- Table structure for sys_app_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_user`;
CREATE TABLE `sys_app_user`  (
  `USER_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RIGHTS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ROLE_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_LOGIN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IP` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BZ` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PHONE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SFID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `START_TIME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `END_TIME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `YEARS` int(10) NULL DEFAULT NULL,
  `NUMBER` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EMAIL` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_app_user
-- ----------------------------
INSERT INTO `sys_app_user` VALUES ('1e89e6504be349a68c025976b3ecc1d1', 'a1', '698d51a19d8a121ce581499d7b701668', '会员甲', '', '115b386ff04f4352b060dffcd2b5d1da', '', '', '1', '121', '1212', '1212', '2015-12-02', '2015-12-25', 2, '111', '313596790@qq.com');

-- ----------------------------
-- Table structure for sys_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `sys_blacklist`;
CREATE TABLE `sys_blacklist`  (
  `BLACKLIST_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IP` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP',
  `BZ` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CTIME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`BLACKLIST_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_codeeditor
-- ----------------------------
DROP TABLE IF EXISTS `sys_codeeditor`;
CREATE TABLE `sys_codeeditor`  (
  `CODEEDITOR_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TYPE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `FTLNMAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `CTIME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `CODECONTENT` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '代码',
  PRIMARY KEY (`CODEEDITOR_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_codeeditor
-- ----------------------------
INSERT INTO `sys_codeeditor` VALUES ('18c459804cb8467db7b49d141f94b833', 'createHtml', 'indexTemplate', '2017-07-03 02:09:34', '<!DOCTYPE html>\n<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en\"> <![endif]-->\n<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en\"> <![endif]-->\n<!--[if IE 8 ]><html class=\"ie ie8\" lang=\"en\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!-->\n<html lang=\"en\">\n<!--<![endif]-->\n<head>\n<meta charset=\"utf-8\">\n<title>${TITLE}</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta name=\"viewport\"\n	content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n<!-- CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_1/css/style.css\">\n<link rel=\"stylesheet\" type=\"text/css\"\n	href=\"fh_static_1/css/settings.css\" media=\"screen\" />\n<!-- JS -->\n<script src=\"fh_static_1/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n<!-- jQuery -->\n<script src=\"fh_static_1/js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n<!-- jQuery easing -->\n<script src=\"fh_static_1/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n<!-- Modernizr -->\n<script src=\"fh_static_1/js/jquery-ui-1.10.1.custom.min.js\"\n	type=\"text/javascript\"></script>\n<!-- tabs, toggles, accordion -->\n<script src=\"fh_static_1/js/custom.js\" type=\"text/javascript\"></script>\n<!-- jQuery initialization -->\n<!-- Responsive Menu -->\n<script src=\"fh_static_1/js/jquery.meanmenu.js\"></script>\n<script>\n	jQuery(document).ready(function() {\n		jQuery(\'header nav\').meanmenu();\n	});\n</script>\n<!-- Revolution Slider -->\n<script src=\"fh_static_1/js/jquery.themepunch.plugins.min.js\"></script>\n<script src=\"fh_static_1/js/jquery.themepunch.revolution.min.js\"></script>\n<script src=\"fh_static_1/js/revolution-slider-options.js\"></script>\n<!-- Prety photo -->\n<script src=\"fh_static_1/js/jquery.prettyPhoto.js\"></script>\n<script>\n	$(document).ready(function() {\n		$(\"a[data-gal^=\'prettyPhoto\']\").prettyPhoto();\n	});\n</script>\n<!-- Tooltip -->\n<script src=\"fh_static_1/js/tooltip.js\"></script>\n<!-- Flexisel -->\n<script type=\"text/javascript\" src=\"fh_static_1/js/jquery.flexisel.js\"></script>\n<!-- Favicons  -->\n<link rel=\"shortcut icon\" href=\"fh_static_1/images/favicon.ico\">\n<link rel=\"apple-touch-icon\" href=\"fh_static_1/images/apple-touch-icon.png\">\n<link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"fh_static_1/images/apple-touch-icon-72x72.png\">\n<link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"fh_static_1/images/apple-touch-icon-114x114.png\">\n</head>\n<body>\n\n	<!-- header 包含导航菜单 -->\n	<#include \"headerTemplate.ftl\"> \n	<!-- header 包含导航菜单 -->\n\n	<!-- REVOLUTION SLIDER -->\n	<div class=\"fullwidthbanner-container top-shadow\">\n		<div class=\"fullwidthbanner\">\n			<ul>\n				<#list fieldList1 as var>\n					<li data-transition=\"boxfade\" data-slotamount=\"${var_index+1+1}\" data-masterspeed=\"300\">\n						<img src=\"${var[1]}\" alt=\"${var[0]}\">\n					</li>\n				</#list>\n			</ul>\n		</div>\n	</div>\n	<!-- END REVOLUTION SLIDER  -->\n	<div class=\"copyrights\">\n	</div>\n	<div class=\"container\">\n\n		<div class=\"sixteen columns welcome\">\n			<h3>\n				${TITLE1}\n				<br />\n				${TITLE2}\n			</h3>\n		</div>\n\n		<div class=\"separator\"></div>\n\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL1}\">\n					<i class=\"fa fa-desktop colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL1}\" class=\"dark-link\">${CPTITLE1}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT1}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL2}\">\n					<i class=\"fa fa-html5 colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL2}\" class=\"dark-link\">${CPTITLE2}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT2}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL3}\">\n					<i class=\"fa fa-css3 colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL3}\" class=\"dark-link\">${CPTITLE3}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT3}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL4}\">\n					<i class=\"fa fa-magic colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL4}\" class=\"dark-link\">${CPTITLE4}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT4}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n\n		<div class=\"clearfix\"></div>\n\n		<div class=\"separator\"></div>\n\n		<div class=\"sixteen columns\">\n			<h4 class=\"headline\">项目案例 ></h4>\n		</div>\n\n		<#list fieldList2 as var>\n		<div class=\"four columns identity\">\n			<div class=\"work\">\n				<a href=\"${var[1]}\" data-gal=\"prettyPhoto\" class=\"work-image\">\n					<img src=\"${var[1]}\" alt=\"${var[0]}\">\n					<div class=\"link-overlay fa fa-search\"></div>\n				</a>\n				<a href=\"${var[2]}\" class=\"work-name\">${var[0]}</a>\n				<div class=\"tags\">${var[3]}</div>\n			</div>\n		</div>\n		</#list>\n\n		<div class=\"clearfix\"></div>\n\n		<!-- begin promobox -->\n		<div class=\"sixteen columns\">\n			<div class=\"promo-box clearfix\">\n				<div class=\"text\">\n					<h3>${CONTENT1}</h3>\n					<p>${CONTENT2}</p>\n				</div>\n				<a class=\"btn big colored\" href=\"${TOURL}\" target=\"_blank\">\n					<i class=\"fa fa-hand-o-right\"></i>了解更多</a>\n			</div>\n		</div>\n		<!-- end promobox -->\n\n		<div class=\"separator\"></div>\n\n		<!-- Our Clients  -->\n		<div class=\"sixteen columns clients\">\n			<h4 class=\"headline\">合作伙伴 ></h4>\n\n			<!-- Start brand carousel -->\n			<ul id=\"flexiselDemo2\">\n			<#list fieldList3 as var>\n				<li onclick=\"window.location.href=\'${var[2]}\'\"><img src=\"${var[1]}\" alt=\"${var[0]}\" /></li>\n			</#list>	\n			</ul>\n			<div class=\"clearout\"></div>\n			<!-- End brand carousel -->\n		</div>\n\n	</div>\n	<!-- container -->\n	\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n\n	<script type=\"text/javascript\">\n		$(window).load(function() {\n		\n			$(\"#index\").addClass(\"current_page_item\");\n		\n			$(\"#flexiselDemo2\").flexisel({\n				visibleItems : 5,\n				animationSpeed : 1000,\n				autoPlay : true,\n				autoPlaySpeed : 3000,\n				pauseOnHover : true,\n				enableResponsiveBreakpoints : true,\n				responsiveBreakpoints : {\n					portrait : {\n						changePoint : 480,\n						visibleItems : 1\n					},\n					landscape : {\n						changePoint : 640,\n						visibleItems : 2\n					},\n					tablet : {\n						changePoint : 768,\n						visibleItems : 3\n					}\n				}\n			});\n\n		});\n	</script>\n	<!-- End Document  -->\n</body>\n</html>\n');

-- ----------------------------
-- Table structure for sys_createcode
-- ----------------------------
DROP TABLE IF EXISTS `sys_createcode`;
CREATE TABLE `sys_createcode`  (
  `CREATECODE_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PACKAGENAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '包名',
  `OBJECTNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类名',
  `TABLENAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `FIELDLIST` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性集',
  `CREATETIME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `TITLE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `FHTYPE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CREATECODE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_createcode
-- ----------------------------
INSERT INTO `sys_createcode` VALUES ('1f31658ecbbe4393aa21143464099331', 'web', 'Aboutus', 'web_,fh,ABOUTUS', 'CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,3000,fh,0Q313596790', '2017-01-07 02:28:38', '关于我们', 'single');
INSERT INTO `sys_createcode` VALUES ('2796a020c8b5432db96b350bfa925484', 'web', 'Leavemsg', 'web_,fh,LEAVEMSG', 'NAME,fh,String,fh,姓名,fh,是,fh,无,fh,10,fh,0Q313596790EMAIL,fh,String,fh,邮箱,fh,是,fh,无,fh,50,fh,0Q313596790ADDRESS,fh,String,fh,地址,fh,是,fh,无,fh,50,fh,0Q313596790LCONTENT,fh,String,fh,内容,fh,是,fh,无,fh,2000,fh,0Q313596790CTIME,fh,Date,fh,提交时间,fh,否,fh,无,fh,32,fh,0Q313596790', '2017-01-04 03:46:20', '访客留言', 'single');
INSERT INTO `sys_createcode` VALUES ('3da8e8bd757c44148d89931a54d29c88', 'system', 'UserPhoto', 'SYS_,fh,USERPHOTO', 'USERNAME,fh,String,fh,用户名,fh,否,fh,无,fh,30,fh,0Q313596790PHOTO0,fh,String,fh,原图,fh,否,fh,无,fh,100,fh,0Q313596790PHOTO1,fh,String,fh,头像1,fh,否,fh,无,fh,100,fh,0Q313596790PHOTO2,fh,String,fh,头像2,fh,否,fh,无,fh,100,fh,0Q313596790PHOTO3,fh,String,fh,头像3,fh,否,fh,无,fh,100,fh,0Q313596790', '2016-06-05 17:54:25', '用户头像', 'single');
INSERT INTO `sys_createcode` VALUES ('3ee004016c984c08903317b6434024ff', 'web', 'OurBusiness', 'web_,fh,OURBUSINESS', 'TITLE1,fh,String,fh,介绍上,fh,是,fh,无,fh,255,fh,0Q313596790TITLE2,fh,String,fh,介绍下,fh,是,fh,无,fh,255,fh,0Q313596790CONTENT1,fh,String,fh,内容上,fh,是,fh,无,fh,255,fh,0Q313596790CONTENT2,fh,String,fh,内容上,fh,是,fh,无,fh,255,fh,0Q313596790TOURL,fh,String,fh,内容链接,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-01-03 02:08:49', '网站信息', 'single');
INSERT INTO `sys_createcode` VALUES ('463aaa745cd948a1b7dea8ae60d27402', 'web', 'Contactus', 'web_,fh,CONTACTUS', 'CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,3000,fh,0Q313596790', '2017-01-04 03:01:12', '联系我们', 'single');
INSERT INTO `sys_createcode` VALUES ('52279e8d804e4108b4bd26dbc59f4573', 'web', 'Corporatephilosophy', 'web_,fh,CORPORATEPHILOSOPHY', 'TITLE,fh,String,fh,标题,fh,是,fh,无,fh,50,fh,0Q313596790CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,50,fh,0Q313596790TOURL,fh,String,fh,内容链接,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-01-04 00:32:22', '公司理念', 'single');
INSERT INTO `sys_createcode` VALUES ('551f4b4d25de41418c3ba459499f9b46', 'web', 'News', 'web_,fh,NEWS', 'TITLE,fh,String,fh,标题,fh,是,fh,无,fh,50,fh,0Q313596790CTIME,fh,Date,fh,发表时间,fh,否,fh,无,fh,32,fh,0Q313596790STEMFROM,fh,String,fh,来源,fh,是,fh,无,fh,100,fh,0Q313596790IMAGE,fh,String,fh,图片,fh,是,fh,无,fh,100,fh,0Q313596790SHORTCONTENT,fh,String,fh,简述,fh,是,fh,无,fh,300,fh,0Q313596790CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,5000,fh,0Q313596790', '2017-01-08 01:17:04', '新闻动态', 'single');
INSERT INTO `sys_createcode` VALUES ('bd09981a1f0840e28517335c4b44ee29', 'web', 'Cooperation', 'web_,fh,COOPERATION', 'CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,3000,fh,0Q313596790', '2017-01-07 03:06:10', '合作共赢', 'single');
INSERT INTO `sys_createcode` VALUES ('d618b9e1bffd467baa3acf774c01df52', 'system', 'Statistics', 'SYS_,fh,STATISTICS', 'IP,fh,String,fh,IP,fh,否,fh,无,fh,20,fh,0Q313596790AREA,fh,String,fh,地区,fh,否,fh,无,fh,255,fh,0Q313596790OPERATOR,fh,String,fh,运营商,fh,否,fh,无,fh,10,fh,0Q313596790CDATE,fh,Date,fh,日期,fh,否,fh,无,fh,32,fh,0Q313596790CTIME,fh,Date,fh,时间,fh,否,fh,无,fh,32,fh,0Q313596790', '2017-06-27 01:47:28', '访问统计', 'single');
INSERT INTO `sys_createcode` VALUES ('daab367879994caebb1474b553a037ed', 'system', 'Blacklist', 'SYS_,fh,BLACKLIST', 'IP,fh,String,fh,IP,fh,是,fh,无,fh,20,fh,0Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255,fh,0Q313596790CTIME,fh,Date,fh,时间,fh,否,fh,无,fh,32,fh,0Q313596790', '2017-06-27 18:27:37', '访客IP黑名单', 'single');

-- ----------------------------
-- Table structure for sys_dictionaries
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionaries`;
CREATE TABLE `sys_dictionaries`  (
  `DICTIONARIES_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `NAME_EN` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文',
  `BIANMA` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `ORDER_BY` int(11) NOT NULL COMMENT '排序',
  `PARENT_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级ID',
  `BZ` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `TBSNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排查表',
  PRIMARY KEY (`DICTIONARIES_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
INSERT INTO `sys_dictionaries` VALUES ('0193ffbfae1e49e0b7810546cada316a', '济南', 'JiNan', '0030301', 1, '10f46a521ea0471f8d71ee75ac3b5f3a', '济南', '');
INSERT INTO `sys_dictionaries` VALUES ('096e4ec8986149d994b09e604504e38d', '黄浦区', 'huangpu', '0030201', 1, 'f1ea30ddef1340609c35c88fb2919bee', '黄埔', '');
INSERT INTO `sys_dictionaries` VALUES ('10f46a521ea0471f8d71ee75ac3b5f3a', '山东', 'ShanDong', '00303', 3, 'be4a8c5182c744d28282a5345783a77f', '山东省', '');
INSERT INTO `sys_dictionaries` VALUES ('12a62a3e5bed44bba0412b7e6b733c93', '北京', 'beijing', '00301', 1, 'be4a8c5182c744d28282a5345783a77f', '北京', '');
INSERT INTO `sys_dictionaries` VALUES ('507fa87a49104c7c8cdb52fdb297da12', '宣武区', 'xuanwuqu', '0030101', 1, '12a62a3e5bed44bba0412b7e6b733c93', '宣武区', '');
INSERT INTO `sys_dictionaries` VALUES ('66f1ff79b13947da98525aff7380ef50', '高新区', 'gaoxinqu', '003030101', 1, '0193ffbfae1e49e0b7810546cada316a', '高新区', '');
INSERT INTO `sys_dictionaries` VALUES ('8994f5995f474e2dba6cfbcdfe5ea07a', '语文', 'yuwen', '00201', 1, 'fce20eb06d7b4b4d8f200eda623f725c', '语文', '');
INSERT INTO `sys_dictionaries` VALUES ('8ea7c44af25f48b993a14f791c8d689f', '分类', 'fenlei', '001', 1, '0', '分类', '');
INSERT INTO `sys_dictionaries` VALUES ('be4a8c5182c744d28282a5345783a77f', '地区', 'diqu', '003', 3, '0', '地区', '');
INSERT INTO `sys_dictionaries` VALUES ('d428594b0494476aa7338d9061e23ae3', '红色', 'red', '00101', 1, '8ea7c44af25f48b993a14f791c8d689f', '红色', '');
INSERT INTO `sys_dictionaries` VALUES ('de9afadfbed0428fa343704d6acce2c4', '绿色', 'green', '00102', 2, '8ea7c44af25f48b993a14f791c8d689f', '绿色', '');
INSERT INTO `sys_dictionaries` VALUES ('f1ea30ddef1340609c35c88fb2919bee', '上海', 'shanghai', '00302', 2, 'be4a8c5182c744d28282a5345783a77f', '上海', '');
INSERT INTO `sys_dictionaries` VALUES ('fce20eb06d7b4b4d8f200eda623f725c', '课程', 'kecheng', '002', 2, '0', '课程', '');

-- ----------------------------
-- Table structure for sys_fhbutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_fhbutton`;
CREATE TABLE `sys_fhbutton`  (
  `FHBUTTON_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `QX_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `BZ` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHBUTTON_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_fhbutton
-- ----------------------------
INSERT INTO `sys_fhbutton` VALUES ('3542adfbda73410c976e185ffe50ad06', '导出EXCEL', 'toExcel', '导出EXCEL');
INSERT INTO `sys_fhbutton` VALUES ('46992ea280ba4b72b29dedb0d4bc0106', '发邮件', 'email', '发送电子邮件');
INSERT INTO `sys_fhbutton` VALUES ('4efa162fce8340f0bd2dcd3b11d327ec', '导入EXCEL', 'FromExcel', '导入EXCEL到系统用户');
INSERT INTO `sys_fhbutton` VALUES ('cc51b694d5344d28a9aa13c84b7166cd', '发短信', 'sms', '发送短信');

-- ----------------------------
-- Table structure for sys_fhlog
-- ----------------------------
DROP TABLE IF EXISTS `sys_fhlog`;
CREATE TABLE `sys_fhlog`  (
  `FHLOG_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `USERNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `CZTIME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作时间',
  `CONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '事件',
  PRIMARY KEY (`FHLOG_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_fhlog
-- ----------------------------
INSERT INTO `sys_fhlog` VALUES ('0009e626823b42d5bb01647106537d44', 'admin', '2018-11-10 09:34:41', '新增菜单类包管理');
INSERT INTO `sys_fhlog` VALUES ('001670356c6d4fdca703dad3b10390a9', 'admin', '2018-06-28 11:42:13', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('0403d8bb160f45d48ee5af6f8c39e494', 'admin', '2018-11-10 09:35:52', '新增菜单产品管理');
INSERT INTO `sys_fhlog` VALUES ('052b3eb006f3441289eabc4bad2b42fc', 'admin', '2018-11-10 10:09:54', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('093a1a54c6834fcfa614d3905da2209c', 'admin', '2018-10-10 00:26:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0a5ba161c2cd4333bf4d41c2a9168cca', 'admin', '2018-11-10 09:31:05', '修改菜单模版管理');
INSERT INTO `sys_fhlog` VALUES ('0b55c48626f746c780127d1d491794c4', 'admin', '2018-06-22 19:31:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0d3b133233c84120a949a1f30ab1fadc', 'admin', '2018-06-23 17:52:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('13e22cff797c470cb9f57bc6b61be013', 'admin', '2018-11-10 10:52:42', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('18d4d84db59640288d1c720711f625e7', 'admin', '2018-06-28 11:39:26', '新增菜单合作共赢');
INSERT INTO `sys_fhlog` VALUES ('1cc89b047fe142a5bfc03083a84cd81b', 'admin', '2018-11-10 09:35:33', '新增菜单点击统计');
INSERT INTO `sys_fhlog` VALUES ('20eeede9226743a482a62f20b9208966', 'admin', '2018-11-10 09:31:41', '修改菜单新闻动态');
INSERT INTO `sys_fhlog` VALUES ('2e03bfe960f249eeb0e11a7d963278d0', 'admin', '2018-11-10 09:31:47', '修改菜单访客留言');
INSERT INTO `sys_fhlog` VALUES ('2e3b5f172c9143f58fc1a4ed3d3185a9', 'admin', '2018-06-28 11:41:28', '新增菜单页头');
INSERT INTO `sys_fhlog` VALUES ('30107d08a67243b4860c207ba5fe4c3f', 'admin', '2018-11-10 09:31:36', '修改菜单产品案例');
INSERT INTO `sys_fhlog` VALUES ('32b3f8be48e24dfba72652782e5bf1c2', 'admin', '2018-11-10 09:36:57', '新增菜单启动广告');
INSERT INTO `sys_fhlog` VALUES ('32f92fd451d74247b9ee341987fe3794', 'admin', '2018-06-28 11:38:58', '新增菜单产品案例');
INSERT INTO `sys_fhlog` VALUES ('33d4afdd88f3455aa756ec5d8778bce7', 'admin', '2018-11-10 10:05:46', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('3b24526e4e54439ba778d0630bc2c771', 'admin', '2018-11-10 10:11:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3d5486e2ea944c419075c348a1eddb7c', 'admin', '2018-11-10 10:02:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('44a1a225b27c4e949b757706ac304b59', 'admin', '2018-06-28 11:40:27', '新增菜单新闻详情');
INSERT INTO `sys_fhlog` VALUES ('44c8d9e10c1e45729745668e571cd049', 'admin', '2018-11-10 09:30:59', '新增菜单还款记录');
INSERT INTO `sys_fhlog` VALUES ('48c28ee3cf15484e9513eafddcb5da9d', 'admin', '2018-11-10 10:01:42', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('50d6c72bf0aa4a6495c907709d2f2c10', 'admin', '2018-11-10 09:53:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('582d8bb722aa4dfb9dd5f56548fec25c', 'admin', '2018-11-10 10:57:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5974823da0e54136b56c2c86d9af75e0', 'admin', '2018-06-28 11:42:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5d19e3d920814a60b47f677e0b75c795', 'admin', '2018-11-10 10:06:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('634710ee9b7e4e6c86abf50aa7394a93', 'admin', '2018-06-28 11:37:48', '新增菜单首页');
INSERT INTO `sys_fhlog` VALUES ('669f4a0b946743898ce1308698884a7d', 'admin', '2018-10-10 02:11:10', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('6716015a1f4a41f2bce1f9d8d1e43e41', 'admin', '2018-06-23 01:24:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('673685e3c19949378c87c2088b4c0a7c', 'admin', '2018-06-28 11:38:44', '修改菜单关于我们');
INSERT INTO `sys_fhlog` VALUES ('678f98879fd84a8eadbac86f4d67aecc', 'admin', '2018-11-10 09:38:01', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('738ed9cf535f43fc9bab93ebc456f3b7', 'admin', '2018-11-10 09:31:44', '修改菜单联系我们');
INSERT INTO `sys_fhlog` VALUES ('7714d7107a2a44fda9a24908c461eddb', 'admin', '2018-07-05 15:16:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('777b0d8bf3d54bcab5785bff5f1e8b53', 'admin', '2018-11-10 10:30:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7864958f06bb435f8821ee7f96eaf743', 'admin', '2018-10-10 02:10:28', '修改菜单模版六');
INSERT INTO `sys_fhlog` VALUES ('7b550d7708e34e08bac3a4352783fc5c', 'admin', '2018-11-10 09:38:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7ec51e00e383484391d6b0b40785a1cb', 'admin', '2018-10-10 02:10:05', '修改菜单模版六');
INSERT INTO `sys_fhlog` VALUES ('8104ac6813ff466295ebd8c81124b1f7', 'admin', '2018-11-10 09:31:29', '修改菜单关于我们');
INSERT INTO `sys_fhlog` VALUES ('8b53faaba4cc4e789680ad28f80eb97d', 'admin', '2018-10-09 15:58:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8d0d30da26dd4751a0fd0e502429996f', 'admin', '2018-11-10 09:34:04', '新增菜单合作银行');
INSERT INTO `sys_fhlog` VALUES ('91c6b199484d4c70920a376e9295816f', 'admin', '2018-10-09 01:40:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9427dd051dfa44688d01a1987b7b40e0', 'admin', '2018-10-09 01:02:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9462904a8a23421da249cba64c6e0760', 'admin', '2018-07-27 15:37:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('99e3c9f2bac7410db4ddc359498cb8c1', 'admin', '2018-10-09 17:55:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9dc8e268703040e9b2134aef41e7bd58', 'admin', '2018-06-28 11:40:56', '新增菜单联系我们');
INSERT INTO `sys_fhlog` VALUES ('9df176fddcdf48dfb3df75640cc4b478', 'admin', '2018-06-28 11:36:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a353460d3e3e470d9985cafd24b3b5e5', 'admin', '2018-03-09 14:58:20', '退出');
INSERT INTO `sys_fhlog` VALUES ('a5dea6e692c04adbb25470b4829c95bf', 'admin', '2018-11-10 09:34:58', '新增菜单消息列表');
INSERT INTO `sys_fhlog` VALUES ('a75fcca6f20a489e9d0b3209bda83cfa', 'admin', '2018-06-22 23:02:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('aa55f2b9354d4d2da25e2f1195c5c48a', 'admin', '2018-10-10 02:11:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ae763e30515549b58a3bf8f390e4c52c', 'admin', '2018-06-22 17:09:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b39fcbdb6dc44e1e97c85682af3d02d9', 'admin', '2018-06-28 11:42:15', '退出');
INSERT INTO `sys_fhlog` VALUES ('b5929a829fc04d9babae6dbe69f9cca1', 'admin', '2018-11-10 09:31:24', '修改菜单业务管理');
INSERT INTO `sys_fhlog` VALUES ('b631d75d33114ecdb80205162f43d763', 'admin', '2018-10-10 02:10:45', '新增菜单单页');
INSERT INTO `sys_fhlog` VALUES ('baf1d0119f5642c295ff103779bb744b', 'admin', '2018-06-28 11:38:21', '新增菜单关于我们');
INSERT INTO `sys_fhlog` VALUES ('bc0967e3f5d04635a96609d20e2d1cb7', 'admin', '2018-11-10 10:00:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bf487b6b148c4a34b9ceceb612f4d7df', 'admin', '2018-11-10 09:31:33', '修改菜单关于我们');
INSERT INTO `sys_fhlog` VALUES ('bf495abc50944d8e82bc697b90c20b88', 'admin', '2018-11-10 09:31:39', '修改菜单合作共赢');
INSERT INTO `sys_fhlog` VALUES ('c5b1b7d4667246378caf1ddbbe094412', 'admin', '2018-11-10 09:33:46', '新增菜单合作用卡');
INSERT INTO `sys_fhlog` VALUES ('c62317f04a6e47509c00f45eb4270bd7', 'admin', '2018-11-10 09:30:10', '修改菜单系统用户');
INSERT INTO `sys_fhlog` VALUES ('ca4d7ec828bf49e89b78a570f495f958', 'admin', '2018-10-10 02:09:16', '新增菜单模版六');
INSERT INTO `sys_fhlog` VALUES ('caad06e0c8d44dbc85c9d4a3c3ee5513', 'admin', '2018-06-22 17:39:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d1337385c34947c1ab1d1ef9ca18b837', 'admin', '2018-11-10 09:30:30', '新增菜单贷款用户');
INSERT INTO `sys_fhlog` VALUES ('d8b00f14fdf145799d79b3bdc52edc79', 'admin', '2018-06-28 11:41:57', '新增菜单页尾');
INSERT INTO `sys_fhlog` VALUES ('df11d2ddc41e42999f5d35bd7f768606', 'admin', '2018-07-27 15:44:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e026d38b510545e395ec0416587e6b55', 'admin', '2018-10-10 02:11:15', '退出');
INSERT INTO `sys_fhlog` VALUES ('e7860c269adb465d90e3ab0f411b23d5', 'admin', '2018-06-28 11:36:54', '修改菜单模版五');
INSERT INTO `sys_fhlog` VALUES ('ebc826af4ef3401383ac891002f25d89', 'admin', '2018-11-10 09:28:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ec7af90f10e042789e7e1f9871b5f456', 'admin', '2018-06-22 22:53:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f11588762a0048b6add8f0eadef72600', 'admin', '2018-06-28 11:39:57', '新增菜单新闻动态');
INSERT INTO `sys_fhlog` VALUES ('f8ad1058f5d64ac4bece2835f1830a54', 'admin', '2018-06-28 11:36:48', '新增菜单模版五');

-- ----------------------------
-- Table structure for sys_loginimg
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginimg`;
CREATE TABLE `sys_loginimg`  (
  `LOGINIMG_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `FILEPATH` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `TYPE` int(2) NOT NULL COMMENT '状态',
  `FORDER` int(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`LOGINIMG_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MENU_URL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PARENT_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MENU_ORDER` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MENU_ICON` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MENU_TYPE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MENU_STATE` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', '#', '0', '1', 'menu-icon fa fa-desktop blue', '2', 1);
INSERT INTO `sys_menu` VALUES (2, '权限管理', '#', '1', '1', 'menu-icon fa fa-lock black', '1', 1);
INSERT INTO `sys_menu` VALUES (3, '日志管理', 'fhlog/list.do', '1', '6', 'menu-icon fa fa-book blue', '1', 1);
INSERT INTO `sys_menu` VALUES (6, '资源管理', '#', '0', '5', 'menu-icon fa fa-credit-card green', '2', 1);
INSERT INTO `sys_menu` VALUES (7, '图片管理', '#', '6', '1', 'menu-icon fa fa-folder-o pink', '2', 1);
INSERT INTO `sys_menu` VALUES (8, '性能监控', 'druid/index.html', '9', '8', 'menu-icon fa fa-tachometer red', '1', 1);
INSERT INTO `sys_menu` VALUES (9, '系统工具', '#', '0', '3', 'menu-icon fa fa-cog black', '2', 1);
INSERT INTO `sys_menu` VALUES (22, '一级菜单', '#', '0', '10', 'menu-icon fa fa-fire orange', '1', 1);
INSERT INTO `sys_menu` VALUES (23, '二级菜单', '#', '22', '1', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (24, '三级菜单', '#', '23', '1', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (30, '四级菜单', '#', '24', '1', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (31, '五级菜单1', '#', '30', '1', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (32, '五级菜单2', '#', '30', '2', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (33, '六级菜单', '#', '31', '1', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (34, '六级菜单2', 'login_default.do', '31', '2', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (35, '四级菜单2', 'login_default.do', '24', '2', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (36, '角色(基础权限)', 'role.do', '2', '1', 'menu-icon fa fa-key orange', '1', 1);
INSERT INTO `sys_menu` VALUES (37, '按钮权限', 'buttonrights/list.do', '2', '2', 'menu-icon fa fa-key green', '1', 1);
INSERT INTO `sys_menu` VALUES (38, '菜单管理', 'menu/listAllMenu.do', '1', '3', 'menu-icon fa fa-folder-open-o brown', '1', 1);
INSERT INTO `sys_menu` VALUES (39, '按钮管理', 'fhbutton/list.do', '1', '2', 'menu-icon fa fa-download orange', '1', 1);
INSERT INTO `sys_menu` VALUES (40, '用户管理', '#', '0', '2', 'menu-icon fa fa-users blue', '2', 1);
INSERT INTO `sys_menu` VALUES (41, '系统用户', 'user/listUsers.do', '40', '1', 'menu-icon fa fa-users green', '1', 1);
INSERT INTO `sys_menu` VALUES (42, '会员管理', 'happuser/listUsers.do', '40', '2', 'menu-icon fa fa-users orange', '1', 1);
INSERT INTO `sys_menu` VALUES (43, '数据字典', 'dictionaries/listAllDict.do?DICTIONARIES_ID=0', '1', '4', 'menu-icon fa fa-book purple', '1', 1);
INSERT INTO `sys_menu` VALUES (44, '代码生成器', '#', '9', '0', 'menu-icon fa fa-cogs brown', '1', 1);
INSERT INTO `sys_menu` VALUES (45, '七级菜单1', '#', '33', '1', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (46, '七级菜单2', '#', '33', '2', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (47, '八级菜单', 'login_default.do', '45', '1', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (51, '图片列表', 'pictures/list.do', '7', '1', 'menu-icon fa fa-folder-open-o green', '1', 1);
INSERT INTO `sys_menu` VALUES (52, '图片爬虫', 'pictures/goImageCrawler.do', '7', '2', 'menu-icon fa fa-cloud-download green', '1', 1);
INSERT INTO `sys_menu` VALUES (53, '表单构建器', 'tool/goFormbuilder.do', '9', '1', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (54, '数据库管理', '#', '0', '9', 'menu-icon fa fa-hdd-o blue', '2', 1);
INSERT INTO `sys_menu` VALUES (55, '数据库备份', 'brdb/listAllTable.do', '54', '1', 'menu-icon fa fa-cloud-upload blue', '1', 1);
INSERT INTO `sys_menu` VALUES (56, '数据库还原', 'brdb/list.do', '54', '3', 'menu-icon fa fa-cloud-download blue', '1', 1);
INSERT INTO `sys_menu` VALUES (57, '备份定时器', 'timingbackup/list.do', '54', '2', 'menu-icon fa fa-tachometer blue', '1', 1);
INSERT INTO `sys_menu` VALUES (58, 'SQL编辑器', 'sqledit/view.do', '54', '4', 'menu-icon fa fa-pencil-square-o blue', '1', 1);
INSERT INTO `sys_menu` VALUES (61, '反向生成', 'recreateCode/list.do', '44', '2', 'menu-icon fa fa-cogs blue', '1', 1);
INSERT INTO `sys_menu` VALUES (62, '正向生成', 'createCode/list.do', '44', '1', 'menu-icon fa fa-cogs green', '1', 1);
INSERT INTO `sys_menu` VALUES (67, '首页管理', '#', '0', '11', 'menu-icon fa fa-globe green', '2', 1);
INSERT INTO `sys_menu` VALUES (68, '网站信息', 'information/list.do', '67', '1', 'menu-icon fa fa-book blue', '1', 1);
INSERT INTO `sys_menu` VALUES (69, '轮播图片', 'image/list.do?TYPE=1', '67', '2', 'menu-icon fa fa-camera-retro green', '1', 1);
INSERT INTO `sys_menu` VALUES (70, '项目案例', 'image/list.do?TYPE=2', '67', '3', 'menu-icon fa fa-camera-retro blue', '1', 1);
INSERT INTO `sys_menu` VALUES (71, '合作伙伴', 'image/list.do?TYPE=3', '67', '4', 'menu-icon fa fa-camera-retro purple', '1', 1);
INSERT INTO `sys_menu` VALUES (72, '技术团队', 'image/list.do?TYPE=4', '67', '5', 'menu-icon fa fa-camera-retro orange', '1', 1);
INSERT INTO `sys_menu` VALUES (73, '业务说明', 'ourbusiness/list.do', '67', '1', 'menu-icon fa fa-book green', '1', 1);
INSERT INTO `sys_menu` VALUES (74, '公司理念', 'corporatephilosophy/list.do', '67', '1', 'menu-icon fa fa-book purple', '1', 1);
INSERT INTO `sys_menu` VALUES (75, '联系我们', 'contactus/list.do', '80', '5', 'menu-icon fa fa-home green', '1', 0);
INSERT INTO `sys_menu` VALUES (76, '访客留言', 'leavemsg/list.do', '80', '6', 'menu-icon fa fa-bookmark blue', '1', 0);
INSERT INTO `sys_menu` VALUES (77, '关于我们', 'aboutus/list.do', '80', '1', 'menu-icon fa fa-home purple', '1', 0);
INSERT INTO `sys_menu` VALUES (78, '合作共赢', 'cooperation/list.do', '80', '3', 'menu-icon fa fa-fire green', '1', 0);
INSERT INTO `sys_menu` VALUES (79, '产品案例', 'image/list.do?TYPE=5', '80', '2', 'menu-icon fa fa-camera-retro orange', '1', 0);
INSERT INTO `sys_menu` VALUES (80, '业务管理', '#', '0', '12', 'menu-icon fa fa-book blue', '2', 1);
INSERT INTO `sys_menu` VALUES (81, '新闻动态', 'news/list.do', '80', '4', 'menu-icon fa fa-pencil-square-o red', '1', 0);
INSERT INTO `sys_menu` VALUES (82, '模版管理', '#', '0', '13', 'menu-icon fa fa-folder-open orange', '2', 1);
INSERT INTO `sys_menu` VALUES (83, '模版一', '#', '82', '1', 'menu-icon fa fa-folder-open-o blue', '1', 1);
INSERT INTO `sys_menu` VALUES (84, '模版二', '#', '82', '2', 'menu-icon fa fa-folder-open-o green', '1', 1);
INSERT INTO `sys_menu` VALUES (85, '模版三', '#', '82', '3', 'menu-icon fa fa-folder-open-o purple', '1', 1);
INSERT INTO `sys_menu` VALUES (86, '首页', 'codeeditor/goEdit.do?type=createHtml&ftl=indexTemplate', '83', '1', 'menu-icon fa fa-folder red', '1', 1);
INSERT INTO `sys_menu` VALUES (87, '关于我们', 'codeeditor/goEdit.do?type=createHtml&ftl=aboutusTemplate', '83', '2', 'menu-icon fa fa-folder green', '1', 1);
INSERT INTO `sys_menu` VALUES (88, '产品案例', 'codeeditor/goEdit.do?type=createHtml&ftl=productTemplate', '83', '3', 'menu-icon fa fa-folder orange', '1', 1);
INSERT INTO `sys_menu` VALUES (89, '合作共赢', 'codeeditor/goEdit.do?type=createHtml&ftl=cooperationTemplate', '83', '4', 'menu-icon fa fa-folder purple', '1', 1);
INSERT INTO `sys_menu` VALUES (90, '新闻动态', 'codeeditor/goEdit.do?type=createHtml&ftl=newsTemplate', '83', '5', 'menu-icon fa fa-folder pink', '1', 1);
INSERT INTO `sys_menu` VALUES (91, '联系我们', 'codeeditor/goEdit.do?type=createHtml&ftl=contactusTemplate', '83', '7', 'menu-icon fa fa-folder grey', '1', 1);
INSERT INTO `sys_menu` VALUES (92, '新闻详情', 'codeeditor/goEdit.do?type=createHtml&ftl=newsdetailTemplate', '83', '6', 'menu-icon fa fa-folder blue', '1', 1);
INSERT INTO `sys_menu` VALUES (93, '页头', 'codeeditor/goEdit.do?type=createHtml&ftl=headerTemplate', '83', '8', 'menu-icon fa fa-folder brown', '1', 1);
INSERT INTO `sys_menu` VALUES (94, '页尾', 'codeeditor/goEdit.do?type=createHtml&ftl=footerTemplate', '83', '9', 'menu-icon fa fa-folder purple', '1', 1);
INSERT INTO `sys_menu` VALUES (95, '首页', 'codeeditor/goEdit.do?type=createHtml2&ftl=indexTemplate', '84', '1', 'menu-icon fa fa-folder red', '1', 1);
INSERT INTO `sys_menu` VALUES (96, '关于我们', 'codeeditor/goEdit.do?type=createHtml2&ftl=aboutusTemplate', '84', '2', 'menu-icon fa fa-folder green', '1', 1);
INSERT INTO `sys_menu` VALUES (97, '产品案例', 'codeeditor/goEdit.do?type=createHtml2&ftl=productTemplate', '84', '3', 'menu-icon fa fa-folder orange', '1', 1);
INSERT INTO `sys_menu` VALUES (98, '合作共赢', 'codeeditor/goEdit.do?type=createHtml2&ftl=cooperationTemplate', '84', '4', 'menu-icon fa fa-folder purple', '1', 1);
INSERT INTO `sys_menu` VALUES (99, '新闻动态', 'codeeditor/goEdit.do?type=createHtml2&ftl=newsTemplate', '84', '5', 'menu-icon fa fa-folder pink', '1', 1);
INSERT INTO `sys_menu` VALUES (100, '联系我们', 'codeeditor/goEdit.do?type=createHtml2&ftl=contactusTemplate', '84', '7', 'menu-icon fa fa-folder grey', '1', 1);
INSERT INTO `sys_menu` VALUES (101, '新闻详情', 'codeeditor/goEdit.do?type=createHtml2&ftl=newsdetailTemplate', '84', '6', 'menu-icon fa fa-folder blue', '1', 1);
INSERT INTO `sys_menu` VALUES (102, '页头', 'codeeditor/goEdit.do?type=createHtml2&ftl=headerTemplate', '84', '8', 'menu-icon fa fa-folder brown', '1', 1);
INSERT INTO `sys_menu` VALUES (103, '页尾', 'codeeditor/goEdit.do?type=createHtml2&ftl=footerTemplate', '84', '9', 'menu-icon fa fa-folder purple', '1', 1);
INSERT INTO `sys_menu` VALUES (104, '首页', 'codeeditor/goEdit.do?type=createHtml3&ftl=indexTemplate', '85', '1', 'menu-icon fa fa-folder red', '1', 1);
INSERT INTO `sys_menu` VALUES (105, '关于我们', 'codeeditor/goEdit.do?type=createHtml3&ftl=aboutusTemplate', '85', '2', 'menu-icon fa fa-folder green', '1', 1);
INSERT INTO `sys_menu` VALUES (106, '产品案例', 'codeeditor/goEdit.do?type=createHtml3&ftl=productTemplate', '85', '3', 'menu-icon fa fa-folder orange', '1', 1);
INSERT INTO `sys_menu` VALUES (107, '合作共赢', 'codeeditor/goEdit.do?type=createHtml3&ftl=cooperationTemplate', '85', '4', 'menu-icon fa fa-folder purple', '1', 1);
INSERT INTO `sys_menu` VALUES (108, '新闻动态', 'codeeditor/goEdit.do?type=createHtml3&ftl=newsTemplate', '85', '5', 'menu-icon fa fa-folder pink', '1', 1);
INSERT INTO `sys_menu` VALUES (109, '联系我们', 'codeeditor/goEdit.do?type=createHtml3&ftl=contactusTemplate', '85', '7', 'menu-icon fa fa-folder grey', '1', 1);
INSERT INTO `sys_menu` VALUES (110, '新闻详情', 'codeeditor/goEdit.do?type=createHtml3&ftl=newsdetailTemplate', '85', '6', 'menu-icon fa fa-folder blue', '1', 1);
INSERT INTO `sys_menu` VALUES (111, '页头', 'codeeditor/goEdit.do?type=createHtml3&ftl=headerTemplate', '85', '8', 'menu-icon fa fa-folder brown', '1', 1);
INSERT INTO `sys_menu` VALUES (112, '页尾', 'codeeditor/goEdit.do?type=createHtml3&ftl=footerTemplate', '85', '9', 'menu-icon fa fa-folder purple', '1', 1);
INSERT INTO `sys_menu` VALUES (113, '访问记录', 'statistics/grlist.do', '1', '7', 'menu-icon fa fa-globe orange', '1', 1);
INSERT INTO `sys_menu` VALUES (114, 'IP黑名单', 'blacklist/list.do', '1', '8', 'menu-icon fa fa-adjust black', '1', 1);
INSERT INTO `sys_menu` VALUES (115, '流量统计', 'chartsstatistics/pvcharts.do', '1', '9', 'menu-icon fa fa-bar-chart-o green', '1', 1);
INSERT INTO `sys_menu` VALUES (116, '模版四', '#', '82', '4', 'menu-icon fa fa-folder-open-o pink', '1', 1);
INSERT INTO `sys_menu` VALUES (117, '首页', 'codeeditor/goEdit.do?type=createHtml4&ftl=indexTemplate', '116', '1', 'menu-icon fa fa-folder red', '1', 1);
INSERT INTO `sys_menu` VALUES (118, '关于我们', 'codeeditor/goEdit.do?type=createHtml4&ftl=aboutusTemplate', '116', '2', 'menu-icon fa fa-folder green', '1', 1);
INSERT INTO `sys_menu` VALUES (119, '产品案例', 'codeeditor/goEdit.do?type=createHtml4&ftl=productTemplate', '116', '3', 'menu-icon fa fa-folder orange', '1', 1);
INSERT INTO `sys_menu` VALUES (120, '合作共赢', 'codeeditor/goEdit.do?type=createHtml4&ftl=cooperationTemplate', '116', '4', 'menu-icon fa fa-folder purple', '1', 1);
INSERT INTO `sys_menu` VALUES (121, '新闻动态', 'codeeditor/goEdit.do?type=createHtml4&ftl=newsTemplate', '116', '5', 'menu-icon fa fa-folder pink', '1', 1);
INSERT INTO `sys_menu` VALUES (122, '新闻详情', 'codeeditor/goEdit.do?type=createHtml4&ftl=newsdetailTemplate', '116', '6', 'menu-icon fa fa-folder blue', '1', 1);
INSERT INTO `sys_menu` VALUES (123, '联系我们', 'codeeditor/goEdit.do?type=createHtml4&ftl=contactusTemplate', '116', '7', 'menu-icon fa fa-folder grey', '1', 1);
INSERT INTO `sys_menu` VALUES (124, '页头', 'codeeditor/goEdit.do?type=createHtml4&ftl=headerTemplate', '116', '8', 'menu-icon fa fa-folder brown', '1', 1);
INSERT INTO `sys_menu` VALUES (125, '尾页', 'codeeditor/goEdit.do?type=createHtml4&ftl=footerTemplate', '116', '9', 'menu-icon fa fa-folder orange', '1', 1);
INSERT INTO `sys_menu` VALUES (126, '模版五', '#', '82', '5', 'menu-icon fa fa-folder-open-o orange', '1', 1);
INSERT INTO `sys_menu` VALUES (127, '首页', 'codeeditor/goEdit.do?type=createHtml5&ftl=indexTemplate', '126', '1', 'menu-icon fa fa-folder red', '1', 1);
INSERT INTO `sys_menu` VALUES (128, '关于我们', 'codeeditor/goEdit.do?type=createHtml5&ftl=aboutusTemplate', '126', '2', 'menu-icon fa fa-folder green', '1', 1);
INSERT INTO `sys_menu` VALUES (129, '产品案例', 'codeeditor/goEdit.do?type=createHtml5&ftl=productTemplate', '126', '3', 'menu-icon fa fa-folder orange', '1', 1);
INSERT INTO `sys_menu` VALUES (130, '合作共赢', 'codeeditor/goEdit.do?type=createHtml5&ftl=cooperationTemplate', '126', '4', 'menu-icon fa fa-folder purple', '1', 1);
INSERT INTO `sys_menu` VALUES (131, '新闻动态', 'codeeditor/goEdit.do?type=createHtml5&ftl=newsTemplate', '126', '5', 'menu-icon fa fa-folder pink', '1', 1);
INSERT INTO `sys_menu` VALUES (132, '新闻详情', 'codeeditor/goEdit.do?type=createHtml5&ftl=newsdetailTemplate', '126', '6', 'menu-icon fa fa-folder blue', '1', 1);
INSERT INTO `sys_menu` VALUES (133, '联系我们', 'codeeditor/goEdit.do?type=createHtml5&ftl=contactusTemplate', '126', '7', 'menu-icon fa fa-folder grey', '1', 1);
INSERT INTO `sys_menu` VALUES (134, '页头', 'codeeditor/goEdit.do?type=createHtml5&ftl=headerTemplate', '126', '8', 'menu-icon fa fa-folder brown', '1', 1);
INSERT INTO `sys_menu` VALUES (135, '页尾', 'codeeditor/goEdit.do?type=createHtml5&ftl=footerTemplate', '126', '9', 'menu-icon fa fa-folder black', '1', 1);
INSERT INTO `sys_menu` VALUES (136, '模版六', '#', '82', '6', 'menu-icon fa fa-folder-open-o blue', '1', 1);
INSERT INTO `sys_menu` VALUES (137, '单页', 'codeeditor/goEdit.do?type=createHtml6&ftl=indexTemplate', '136', '1', 'menu-icon fa fa-folder green', '1', 1);
INSERT INTO `sys_menu` VALUES (138, '贷款用户', 'loanuser/list.do', '40', '3', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (139, '还款记录', 'record/list.do', '40', '4', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (140, '合作用卡', 'card/list.do', '80', '7', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (141, '合作银行', 'bank/list.do', '80', '8', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (142, '类包管理', 'package/list.do', '80', '9', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (143, '消息列表', 'message/list.do', '80', '10', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (144, '点击统计', 'count/list.do', '80', '11', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (145, '产品管理', 'product/list.do', '80', '12', 'menu-icon fa fa-leaf black', '1', 1);
INSERT INTO `sys_menu` VALUES (146, '启动广告', 'adver/list.do', '80', '13', 'menu-icon fa fa-leaf black', '1', 1);

-- ----------------------------
-- Table structure for sys_records
-- ----------------------------
DROP TABLE IF EXISTS `sys_records`;
CREATE TABLE `sys_records`  (
  `id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识	\n',
  `user_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户标识',
  `app_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '版本标识',
  `system_type` int(11) NOT NULL COMMENT '操作系统',
  `package_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '包名',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '浏览时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `ROLE_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ROLE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RIGHTS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PARENT_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ADD_QX` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DEL_QX` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EDIT_QX` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CHA_QX` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理组', '178057512506825506449326114878479690467640270', '0', '1', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('115b386ff04f4352b060dffcd2b5d1da', '中级会员', '', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('1b67fc82ce89457a8347ae53e43a347e', '初级会员', '', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('2', '会员组', '', '0', '0', '0', '0', '1');
INSERT INTO `sys_role` VALUES ('3', '注册用户', '', '1', '', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('3264c8e83d0248bb9e3ea6195b4c0216', '一级管理员', '147573389638682795998', '1', '36892925196425486294', '36892925196425486294', '36892925196425486294', '36892925196425486294');
INSERT INTO `sys_role` VALUES ('46294b31a71c4600801724a6eb06bb26', '职位组', '', '0', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('5466347ac07044cb8d82990ec7f3a90e', '主管', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('68f8e4a39efe47c7bb869e9d15ab925d', '二级管理员', '73786413343844589510', '1', '0', '0', '2251798773489606', '0');
INSERT INTO `sys_role` VALUES ('856849f422774ad390a4e564054d8cc8', '经理', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('8b70a7e67f2841e7aaba8a4d92e5ff6f', '高级会员', '', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('c21cecf84048434b93383182b1d98cba', '组长', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('d449195cd8e7491080688c58e11452eb', '总监', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('de9de2f006e145a29d52dfadda295353', '三级管理员', '73786413343844589510', '1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for sys_role_fhbutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_fhbutton`;
CREATE TABLE `sys_role_fhbutton`  (
  `RB_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ROLE_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BUTTON_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`RB_ID`) USING BTREE,
  INDEX `角色表外键`(`ROLE_ID`) USING BTREE,
  INDEX `fbutton`(`BUTTON_ID`) USING BTREE,
  CONSTRAINT `sys_role_fhbutton_ibfk_1` FOREIGN KEY (`BUTTON_ID`) REFERENCES `sys_fhbutton` (`FHBUTTON_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sys_role_fhbutton_ibfk_2` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`ROLE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_fhbutton
-- ----------------------------
INSERT INTO `sys_role_fhbutton` VALUES ('1743733f366240c693c4295b527d1b0e', 'de9de2f006e145a29d52dfadda295353', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('469ffb4848ad49c389867d99560a4698', 'de9de2f006e145a29d52dfadda295353', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('4ee1e2bc03a64ef1bc578fcf2e2ea2c1', '68f8e4a39efe47c7bb869e9d15ab925d', '3542adfbda73410c976e185ffe50ad06');
INSERT INTO `sys_role_fhbutton` VALUES ('5669c8754b4d4e368365ed5065f9fc10', '3264c8e83d0248bb9e3ea6195b4c0216', '3542adfbda73410c976e185ffe50ad06');
INSERT INTO `sys_role_fhbutton` VALUES ('74203935bfa34ce3b9b80e81f2a2bcfe', '68f8e4a39efe47c7bb869e9d15ab925d', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('81d31bc5bf02490a85ce496b6755ef26', '3', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('8231c216fb514b4188e4162e629c6237', '3264c8e83d0248bb9e3ea6195b4c0216', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('88f66a65ee1642bea7979e0e1050ac5f', '3', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('8e478e8615ee455e95671ba05a29e457', 'de9de2f006e145a29d52dfadda295353', '3542adfbda73410c976e185ffe50ad06');
INSERT INTO `sys_role_fhbutton` VALUES ('d80abc961d594f75b65e90d5b7437aa9', '3', 'cc51b694d5344d28a9aa13c84b7166cd');
INSERT INTO `sys_role_fhbutton` VALUES ('f0329033d0914faf8ea6e9ff252cc5e6', '68f8e4a39efe47c7bb869e9d15ab925d', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('f627982cc9d4479dbc03af726dc6ac58', 'de9de2f006e145a29d52dfadda295353', 'cc51b694d5344d28a9aa13c84b7166cd');
INSERT INTO `sys_role_fhbutton` VALUES ('f919c1f620634bdaa353a9f63194a2e0', '3', '3542adfbda73410c976e185ffe50ad06');

-- ----------------------------
-- Table structure for sys_statistics
-- ----------------------------
DROP TABLE IF EXISTS `sys_statistics`;
CREATE TABLE `sys_statistics`  (
  `STATISTICS_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IP` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP',
  `AREA` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区',
  `OPERATOR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运营商',
  `CDATE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `CTIME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `REGION` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`STATISTICS_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_statistics
-- ----------------------------
INSERT INTO `sys_statistics` VALUES ('8fb772126ec2465fad2480eb39bdb121', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2018-10-10', '2018-10-10 01:21:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('cb68a1fad2234320b9984f2b5a79c119', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2018-10-10', '2018-10-10 01:25:07', 'XX');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `USER_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RIGHTS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ROLE_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_LOGIN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IP` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BZ` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SKIN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EMAIL` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NUMBER` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PHONE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'de41b7fb99201d8334c23c014db35ecd92df81bc', 'FH', '1133671055321055258374707980945218933803269864762743594642571294', '1', '2018-11-10 10:57:34', '127.0.0.1', '0', 'admin', 'skin-1', 'QQ313596790@main.com', '001', '18788888888');
INSERT INTO `sys_user` VALUES ('eded77bdf35347249b2bacfa181c869d', 'w1', 'c46e5c325e9edfbf213d5d82018ba3c522eabbea', '1212', '', '68f8e4a39efe47c7bb869e9d15ab925d', '', '', '0', '111', 'no-skin', '313596790@qq.com', '112', '13566625555');

-- ----------------------------
-- Table structure for sys_userphoto
-- ----------------------------
DROP TABLE IF EXISTS `sys_userphoto`;
CREATE TABLE `sys_userphoto`  (
  `USERPHOTO_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `USERNAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `PHOTO0` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原图',
  `PHOTO1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像1',
  `PHOTO2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像2',
  `PHOTO3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像3',
  PRIMARY KEY (`USERPHOTO_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_pictures
-- ----------------------------
DROP TABLE IF EXISTS `tb_pictures`;
CREATE TABLE `tb_pictures`  (
  `PICTURES_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TITLE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `PATH` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `CREATETIME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `MASTER_ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属于',
  `BZ` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PICTURES_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_pictures
-- ----------------------------
INSERT INTO `tb_pictures` VALUES ('d2aa4c1e4c1a41a693bbf4241c52cb06', '图片', 'dca46d3c291e4c7385c0789bc0a3381f.png', '20171215/dca46d3c291e4c7385c0789bc0a3381f.png', '2017-12-15 19:14:32', '1', '图片管理处上传');

-- ----------------------------
-- Table structure for web_aboutus
-- ----------------------------
DROP TABLE IF EXISTS `web_aboutus`;
CREATE TABLE `web_aboutus`  (
  `ABOUTUS_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CONTENT` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  PRIMARY KEY (`ABOUTUS_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_aboutus
-- ----------------------------
INSERT INTO `web_aboutus` VALUES ('1', '<p style=\"padding: 0px 0px 1em;margin-top: 0;margin-bottom: 0;line-height: 27px;font-size: 12px;color: rgb(90, 90, 90);font-family: 宋体;white-space: normal;text-indent: 32px;background-color: rgb(255, 255, 255)\"><span style=\"line-height: 26.6667px;\"><embed type=\"application/x-shockwave-flash\" class=\"edui-faked-video\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://player.youku.com/player.php/sid/XMjk1Nzc0MjYxNg==/v.swf\" width=\"300\" height=\"180\" style=\"float: left\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" allowfullscreen=\"true\"/></span></p><p style=\"padding: 0px 0px 1em;margin-top: 0;margin-bottom: 0;line-height: 27px;font-size: 12px;color: rgb(90, 90, 90);font-family: 宋体;white-space: normal;text-indent: 32px;background-color: rgb(255, 255, 255)\"><span style=\"line-height: 26.6667px;\">中冶置业集团有限公司（以下简称中冶置业集团）是中冶集团独资的大型国有房地产开发企业，也是中冶集团房地产业务的核心企业，拥有房地产开发、物业管理两项一级资质。</span><br/></p><p style=\"padding: 0px 0px 1em;margin-top: 0;margin-bottom: 0;line-height: 22px;font-size: 12px;color: rgb(90, 90, 90);font-family: 宋体;white-space: normal;text-indent: 32px;background-color: rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"line-height: 26.6667px\">&nbsp; &nbsp; 2005年，作为国务院国资委首批16家房地产央企之一，中冶置业集团由此掀开了创新提升、做强做优的新篇章。公司全力打造以项目开发能力、资本整合能力、产业整合能力为基础的核心竞争力，坚持走精品化、专业化、品牌化的发展路径，全面布局三大经济圈热点城市，开创了统一品牌与区域化经营相结合的发展新纪元。2012年以来，中冶置业集团加快转型发展脚步，着力提升发展质量，不断推进“3+6”区域布局战略和“3+1”区域深耕战略，以“京津冀、长三角、珠三角”为中心，深耕北京、天津、上海、南京、广州、深圳、珠海等重点城市，积极向中原经济区、长江中游城市群等热点地区拓展，获取石家庄、郑州、保定、青岛等地优质项目，巩固西安、烟台、包头等已进入地区，形成区域协同发展的良好态势,通过五年的发展变革，中冶置业集团成功跻身中国房地产百强企业行列，荣获房地产百强企业第48位、百强盈利能力第8位、中国地产公司品牌价值10强、中国绿色地产开发企业30强、中国物业服务特色企业、中国物业服务专业化运营领先品牌等荣誉。</span></span><br/><span style=\"font-size:12px\"><span style=\"line-height: 26.6667px\">&nbsp; &nbsp; 中冶置业集团巩固以中高端住宅开发为主，商业地产、物业管理为辅的“一主两翼”的业务体系，倾力打造以“中冶·德贤公馆”、“中冶·锦绣华府”、“中冶·逸璟龙湾”为代表的中高端地产、以“中冶·盛世国际广场”命名的商业地产及中冶物业三张新名片，与清华大学、北京大学、SOM、KPF、华为等国内外知名机构建立战略合作关系，成为国际“金钥匙”物业联盟成员，实现了企业品牌向高端领域的华丽蜕变。我们联合全球行业优质资源，发挥产业整合优势，积极开拓文旅地产、康养地产、教育地产等新领域，实现从“一主两翼”到“一主N翼”的延伸拓展。我们以科技创新为依托，以人文精神为内涵，实施绿色科技地产战略，研发更加节能环保、自然舒适的人性化产品，将高品质和人文精神的元素源源不断地注入到我们开发的每一类产品中，致力于为客户缔造美好舒适的生活工作环境<br/></span></span><span style=\"font-size:12px\"><span style=\"line-height: 26.6667px\">&nbsp; &nbsp; 面向未来，中冶置业集团将秉承中冶集团“一天也不耽误，一天也不懈怠”朴实厚重的中冶精神，坚持以市场需求为导向，以创新创意为动力，大力提升质量效益，全力推进改革创新，履行国有资产保值增值责任和企业社会责任，以“品质地产”与“责任地产”为目标，为打造国内领先的房地产开发企业不懈努力！</span></span></p><p><br/></p>');

-- ----------------------------
-- Table structure for web_contactus
-- ----------------------------
DROP TABLE IF EXISTS `web_contactus`;
CREATE TABLE `web_contactus`  (
  `CONTACTUS_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CONTENT` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `DIMENSION` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LONGITUDE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PZOOM` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CONTACTUS_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_contactus
-- ----------------------------
INSERT INTO `web_contactus` VALUES ('1', '<p>全国免费资讯热线：400-000-0000</p><p>邮箱：service@aaa.com</p><p>网址：http://www.aaaa.com</p><p>地址 ：山东省济南市历城区</p>', '39.923432', '116.403485', '15');

-- ----------------------------
-- Table structure for web_cooperation
-- ----------------------------
DROP TABLE IF EXISTS `web_cooperation`;
CREATE TABLE `web_cooperation`  (
  `COOPERATION_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CONTENT` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  PRIMARY KEY (`COOPERATION_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_cooperation
-- ----------------------------
INSERT INTO `web_cooperation` VALUES ('1', '<h1 style=\"padding: 0px; margin: 0px 0px 15px; font-size: 24px; font-weight: normal; line-height: 40px; text-align: center; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\">合作方式</h1><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: &#39;microsoft yahei&#39;, arial, tahoma, sans-serif; color: rgb(119, 119, 119); font-size: 12px; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;&nbsp;&nbsp;&nbsp;为了快速响应客户各种个性化需求，我们提供弹性的ODM/OEM合作模式，可为客户提供设计文件、软件映像文件、软件源代码、相关文档及PCB、PCBA、整机等。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><strong style=\"background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">主要合作方式:</span></strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><strong style=\"background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;1</span><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">、完全研发项目：</span></strong><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">根据客户产品方案书或具体功能要求，选择CPU平台，进行软（系统级别）、硬件开发，制作样机，或针对客户原有产品进行软、硬件升级，样机制作，同时您还将得到专业的、技术人员培训、辅导服务以及终身技术维护，我们提供所有产品资料。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;</span><strong style=\"background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">2</span><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">、研发及生产项目：</span></strong><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">根据客户需求，定制研发客户规格产品，样机确认后批量生产，以最终整机交付客户。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><strong style=\"background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;3</span><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">．标准产品销售：</span></strong><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">客户可以选购我们一系列的标准产品，直接下单采购，不需额外付任何研发费及模具费。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; white-space: normal; text-align: center; line-height: 21px; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; background-repeat: no-repeat;\"><br style=\"background-repeat: no-repeat;\"/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; white-space: normal; text-align: center; line-height: 21px; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; background-repeat: no-repeat;\"><img title=\"clip_image002.png\" border=\"0\" hspace=\"0\" src=\"http://info.emdoor.com/ueditor1.2.5/asp/upload/2014092858921669.png\" width=\"650\" height=\"236\" style=\"border: none; width: 650px; height: 236px; background-repeat: no-repeat;\"/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; white-space: normal; text-align: center; line-height: 21px; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; background-repeat: no-repeat;\"><br style=\"background-repeat: no-repeat;\"/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; white-space: normal; line-height: 21px; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">针对ODM方式，我们可以提供完整系统（包括硬件PCBA和操作系统及驱动程序），也可提供部分保证客户二次开发所必需的文件、线路图纸等，供客户灵活选择，以期让客户以最低廉的成本获得最具性价比的方案。</span></p><p><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\"><br/></span></p><p><br/></p>');

-- ----------------------------
-- Table structure for web_corporatephilosophy
-- ----------------------------
DROP TABLE IF EXISTS `web_corporatephilosophy`;
CREATE TABLE `web_corporatephilosophy`  (
  `CORPORATEPHILOSOPHY_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TITLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `CONTENT` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `TOURL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容链接',
  PRIMARY KEY (`CORPORATEPHILOSOPHY_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_corporatephilosophy
-- ----------------------------
INSERT INTO `web_corporatephilosophy` VALUES ('1', '解决方案', '无论您是什么行业,都能满足您的需求.', 'http://127.0.0.1/FH-WEB');
INSERT INTO `web_corporatephilosophy` VALUES ('2', '安全保障', '安全稳定的架构设计,构建稳固防盾.', 'http://127.0.0.1/FH-WEB/');
INSERT INTO `web_corporatephilosophy` VALUES ('3', '服务团队', '资深专家为您提供满意的私人服务.', 'http://127.0.0.1/FH-WEB');
INSERT INTO `web_corporatephilosophy` VALUES ('4', '核心服务', '为您提供全面的软件定制服务.', 'http://127.0.0.1/FH-WEB/');

-- ----------------------------
-- Table structure for web_image
-- ----------------------------
DROP TABLE IF EXISTS `web_image`;
CREATE TABLE `web_image`  (
  `IMAGE_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TITLE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `IMGURL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `TOURL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接',
  `TYPE` int(2) NOT NULL COMMENT '类型',
  `FORDER` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序',
  `BZ` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`IMAGE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_image
-- ----------------------------
INSERT INTO `web_image` VALUES ('0d252569b3174a3390b293b31e82e3b5', '技术团队', 'http://wx1.sinaimg.cn/large/005B44p8ly1fw2jbb3ok9j305k05ka9y.jpg', '', 4, '2', '2');
INSERT INTO `web_image` VALUES ('1193528722af455581e783d268a14dab', '技术团队', 'http://wx4.sinaimg.cn/large/005B44p8ly1fw2jbbogtcj305k05k74h.jpg', '', 4, '3', '3');
INSERT INTO `web_image` VALUES ('208440f6879c49189feb695d7a48fa03', '轮播图4', 'http://wx1.sinaimg.cn/large/005spsLRly1frp5g6d06ij30le0axn0j.jpg', '', 1, '4', '轮播图4');
INSERT INTO `web_image` VALUES ('26cf3e9ed7dd410b87ddb69c25970069', '产品案例6', 'http://wx3.sinaimg.cn/large/005spsLRly1frp5ph4hy9j30jg0czqal.jpg', '', 5, '6', '产品案例bz6');
INSERT INTO `web_image` VALUES ('32c90dfb3fae4b8ea75122d657369bfd', '合作伙伴', 'http://wx4.sinaimg.cn/large/005spsLRly1frp5uwiomsj303401wdfp.jpg', '', 3, '4', '合作伙伴备注');
INSERT INTO `web_image` VALUES ('339d0beaf2124c5fbba37ed48ca2cab1', '案例', 'http://wx1.sinaimg.cn/large/005spsLRly1frp65ugxedj307i05dt9h.jpg', '', 2, '4', '案例');
INSERT INTO `web_image` VALUES ('35972aeb6bb44b85abc18aed2728d431', '案例', 'http://wx4.sinaimg.cn/large/005spsLRly1frp65rpyymj307i05cdgb.jpg', '', 2, '7', '案例');
INSERT INTO `web_image` VALUES ('49585afbceb54bb7832df02363325ca8', '产品案例5', 'http://wx3.sinaimg.cn/large/005spsLRly1frp5phloopj30jg0czn35.jpg', '', 5, '5', '产品案例bz5');
INSERT INTO `web_image` VALUES ('52faef5a86fc494a93555413ad4cd4db', '轮播图1', 'http://wx2.sinaimg.cn/large/005spsLRly1frp5g8joqej30le0axn0y.jpg', '', 1, '1', '播图1');
INSERT INTO `web_image` VALUES ('5b9f58ba65d14cfa9ea766bf7582528f', '产品案例4', 'http://wx1.sinaimg.cn/large/005spsLRly1frp5pi0pnrj30jg0czgsr.jpg', '', 5, '4', '产品案例bz4');
INSERT INTO `web_image` VALUES ('72c20b7895af4abba2d18b640e4a576a', '案例', 'http://wx1.sinaimg.cn/large/005spsLRly1frp65rda05j307i05cjrs.jpg', '', 2, '8', '案例');
INSERT INTO `web_image` VALUES ('740e706d44bd419990fa2aef2adc1f27', '产品案例7', 'http://wx1.sinaimg.cn/large/005spsLRly1frp5pge6gkj30jg0cz7bk.jpg', '', 5, '7', '产品案例bz7');
INSERT INTO `web_image` VALUES ('7bc6cea7f41f4ff3bd666f18028e4b08', '案例', 'http://wx1.sinaimg.cn/large/005spsLRly1frp65vcd1qj307i05cgmm.jpg', 'http://www.baidu.com', 2, '1', '案例');
INSERT INTO `web_image` VALUES ('7cdab770e4874b4490e3013bc54f0cf4', '产品案例2', 'http://wx2.sinaimg.cn/large/005spsLRly1frp5pjd23sj30jg0czgqi.jpg', '', 5, '2', '产品案例bz2');
INSERT INTO `web_image` VALUES ('7f88637876184343beef8943f19d0190', '技术团队', 'http://wx3.sinaimg.cn/large/005B44p8ly1fw2jbbcqfdj305k05ka9y.jpg', '', 4, '4', '4');
INSERT INTO `web_image` VALUES ('868d142966ee496ebdaa7cceb34c736d', '产品案例8', 'http://wx2.sinaimg.cn/large/005spsLRly1frp5pjd23sj30jg0czgqi.jpg', '', 5, '8', '产品案例bz8');
INSERT INTO `web_image` VALUES ('86b38827cfb342e1920b4182037a28ed', '合作伙伴', 'http://wx4.sinaimg.cn/large/005spsLRly1frp5uy2og8j303w01w742.jpg', '', 3, '1', '合作伙伴备注');
INSERT INTO `web_image` VALUES ('9070aef4cf724ce3b861adcc669d3275', '轮播图5', 'http://wx3.sinaimg.cn/large/005spsLRly1frp5g5wqmqj30le0axdj7.jpg', '', 1, '5', '轮播图5');
INSERT INTO `web_image` VALUES ('90b9679b9f33490e855ebf96d9b9774c', '案例', 'http://wx4.sinaimg.cn/large/005spsLRly1frp65tvvhej307i05c3yw.jpg', '', 2, '3', '案例');
INSERT INTO `web_image` VALUES ('997cdd02137542d881d4209c8404abb0', '轮播图3', 'http://wx4.sinaimg.cn/large/005spsLRly1frp5g722vsj30le0axjwt.jpg', '', 1, '3', '轮播图3');
INSERT INTO `web_image` VALUES ('9c77e3f3f6a8490a9c0f667b705f50ea', '案例', 'http://wx4.sinaimg.cn/large/005spsLRly1frp65v0ibnj307i05cq3i.jpg', '', 2, '2', '案例');
INSERT INTO `web_image` VALUES ('a9b9e43575e54e0993977ae629b2fbf5', '产品案例1', 'http://wx2.sinaimg.cn/large/005spsLRly1frp5pjslfij30jg0czn40.jpg', 'http://www.baidu.com', 5, '1', '产品案例bz');
INSERT INTO `web_image` VALUES ('cb6b4f98ae98476792d1678770499801', '案例', 'http://wx1.sinaimg.cn/large/005spsLRly1frp65tainpj307i05cdg0.jpg', '', 2, '5', '5');
INSERT INTO `web_image` VALUES ('d5fdedf1b9524adc8f47eaa4eecc041d', '产品案例3', 'http://wx4.sinaimg.cn/large/005spsLRly1frp5pivstrj30jg0czaix.jpg', '', 5, '3', '产品案例bz3');
INSERT INTO `web_image` VALUES ('d7f3e47deb9d40a9a86f7779804b645f', '合作伙伴', 'http://wx1.sinaimg.cn/large/005spsLRly1frp5ux0oj0j303401wa9y.jpg', '', 3, '3', '合作伙伴备注');
INSERT INTO `web_image` VALUES ('d89785e23b2549ebb778f4a417d46939', '产品案例9', 'http://wx2.sinaimg.cn/large/005spsLRly1frp5pjslfij30jg0czn40.jpg', '', 5, '9', '产品案例bz9');
INSERT INTO `web_image` VALUES ('e1e1275dc4d948d8ac6f859740d93af0', '技术团队', 'http://wx3.sinaimg.cn/large/005B44p8ly1fw2jbapjc9j305k05k3yg.jpg', '', 4, '1', '1');
INSERT INTO `web_image` VALUES ('e4a2a102f7e3466fb26cebdb11737404', '轮播图2', 'http://wx4.sinaimg.cn/large/005spsLRly1frp5g7ud99j30le0axgpc.jpg', '', 1, '2', '轮播图2');
INSERT INTO `web_image` VALUES ('eb683edddba3448491b4502cd7bd09cf', '合作伙伴', 'http://wx4.sinaimg.cn/large/005spsLRly1frp5uxif0qj303w01wglf.jpg', '', 3, '2', '合作伙伴备注');
INSERT INTO `web_image` VALUES ('fa66b273bf2847a4969b8d3f6a667fe9', '案例', 'http://wx4.sinaimg.cn/large/005spsLRly1frp65shfhuj307i05ct92.jpg', '', 2, '6', '6');

-- ----------------------------
-- Table structure for web_information
-- ----------------------------
DROP TABLE IF EXISTS `web_information`;
CREATE TABLE `web_information`  (
  `INFORMATION_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网站名称',
  `TITLE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `KEYWORDS` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关键词',
  `DESCRIPTION` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `LOGO` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'logo',
  `TEL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `EMAIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `QQ` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ',
  `FAX` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传真',
  `WEBURL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '官网',
  `ADDRESS` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `COPYRIGHT` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '版权',
  `TECHNOLOGY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '技术支持',
  `BEIAN` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备案',
  `ABOUTUS1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ABOUTUS2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NEW1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NEW2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`INFORMATION_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_information
-- ----------------------------
INSERT INTO `web_information` VALUES ('1', 'FH 网站模版', 'FH 网站模版', 'FH admin WEB', 'FH admin WEB', 'https://img.alicdn.com/imgextra/i1/332189337/TB2B08ba5j_F1JjSZFCXXc5eFXa_!!332189337.png', '0531-01215786', '313596790@qq.com', '313596790', '313596790', 'http://www.abcdef.com', '山东省济南市高新区', '©2017 fhadmin', '山东济南信息科技', '京-00000001', '为华语乐坛流行女歌手周笔畅演唱的歌曲。由李焯雄作词，梁翘柏作曲', '2015年作为出道第十年发表的首支EP单曲，周笔畅用这首 《关于我们》为十年证明', '国家发展改革委会同财政部印发《关于不动产登记收费标准等有关问题的通知》', '济南大明湖风景名胜区收费开放区域于2017年1月1日起对社会免费开放。');

-- ----------------------------
-- Table structure for web_leavemsg
-- ----------------------------
DROP TABLE IF EXISTS `web_leavemsg`;
CREATE TABLE `web_leavemsg`  (
  `LEAVEMSG_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `EMAIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `ADDRESS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `LCONTENT` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `CTIME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`LEAVEMSG_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_news
-- ----------------------------
DROP TABLE IF EXISTS `web_news`;
CREATE TABLE `web_news`  (
  `NEWS_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TITLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `CTIME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发表时间',
  `STEMFROM` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源',
  `IMAGE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `SHORTCONTENT` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简述',
  `CONTENT` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `HIDE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WEIGHT` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`NEWS_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_news
-- ----------------------------
INSERT INTO `web_news` VALUES ('2fa0b30b869740789079e9c8b3f656e8', '新闻标题', '2017-01-08 01:48:43', 'fhadmin', 'http://wx2.sinaimg.cn/large/005spsLRly1frp60hvywdj30bo088ad4.jpg', '美国情报机构发言人2016年10月曾称，俄罗斯黑客应对美国选举系统的网络攻击负责，因此宣布对俄实施制裁。此后，中情局通过媒体指责俄罗斯闯入民主党服务器，以帮助特朗普，使其在11月8日选举中获胜。但美国政府从未提出任何俄罗斯参与黑客攻击以影响总统选举结果的证据。\"\"\"', '<p class=\"detailPic\" style=\"margin: 0px auto 10px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><img alt=\"2016年美国大选以来，美国一直指责俄罗斯“用黑客行为干扰了美国大选”。\" src=\"http://p0.ifengimg.com/cmpp/2017/01/09/09/646af998-3028-4b60-af15-92cee999f2a8_size78_w500_h250.jpg\" style=\"border: 0px; vertical-align: bottom; display: block; margin: 0px auto; max-width: 100%; height: auto;\"/></p><p class=\"picIntro\" style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; font-family: 楷体_gb2312, 楷体; color: rgb(43, 43, 43); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">2016年美国大选以来，美国一直指责俄罗斯“用黑客行为干扰了美国大选”。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">原标题：原标题：特朗普改口 首次承认俄罗斯黑客曾干扰美国大选</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">国际在线专稿：据路透社1月9日报道，当地时间1月8日，美国候任总统特朗普团队首次承认，俄罗斯黑客曾经入侵并干扰美国大选，并表示将采取应对措施。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">特朗普新任命的白宫办公厅主任赖因斯·普里巴斯表示，特朗普相信俄罗斯曾经干扰美国大选期间的民主党大会。但是，普里巴斯并未指出，特朗普是否认为普京曾经指使这一行为。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">“特朗普接受此案是俄罗斯团队所为的事实，”·普里巴斯在“周日福克斯新闻”节目上表示。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>这是特朗普团队首次承认，俄罗斯黑客曾经干扰美国大选。特朗普此前一直拒绝“俄罗斯黑客干扰美国大选”或是“俄罗斯黑客帮助特朗普赢得总统宝座”的类似言论。</strong></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">随着1月20日的就职典礼日益临近，特朗普来自共和党内部的压力也越来越大，许多人认为，这位候任总统应该与美国情报部门更好的沟通与合作，并认可来自后者的最新线索。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">上周，美国情报部门发表报告指出，普京“导演了一个包括网络攻击在内的复杂的计划”，来干扰民主党的竞选进程。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>【早前新闻】</strong></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>特朗普发言人：未发现俄罗斯试图影响美国大选的证据</strong></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">【环球网报道记者朱佩】美国情报机构发言人2016年10月曾称，俄罗斯黑客应对美国选举系统的网络攻击负责，因此宣布对俄实施制裁。此后，中情局通过媒体指责俄罗斯闯入民主党服务器，以帮助特朗普，使其在11月8日选举中获胜。但美国政府从未提出任何俄罗斯参与黑客攻击以影响总统选举结果的证据。俄罗斯坚决否认这些指控，并表示，作为回应将采取“对等措施”。 日前， 美国候任总统特朗普发言人肖恩•斯派塞表示，美国没有发现俄罗斯试图影响美国大选的证据。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">据俄新社1月3日消息， 斯派塞在福克斯新闻网的直播节目中表示：“主要媒体倾向宣传俄罗斯曾对选举实施影响的消息。但没有任何俄罗斯真正影响选举的证据。”</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">他指出，“计算机网络是否被侵入——这完全是另一个事情”，和俄罗斯是否参与其中没有关系。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">此外，他还强调称，“计算机攻击是不正确的行为”。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">特朗普1月1日表示，希望获得美国情报部门有关网络袭击的消息，以便评估离任政府制裁措施的合理性。特朗普发言人曾表示，认为俄罗斯好像同网络袭击有关，就实施反俄新制裁，对该政策的合理性有些怀疑。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">奥巴马政府去年12月29日以“干涉选举”和“对美驻俄外交官施压”为由对9家俄机构、公司和个人实施了制裁，其中包括俄军总参谋部情报总局以及联邦安全局。此外，美方还将35名俄驻美外交官宣布为不受欢迎的人。对此，俄总统普京表示，莫斯科不会遣返美国外交官作为对华盛顿的行为的回应。<span class=\"ifengLogo\"><a href=\"http://www.ifeng.com/\" target=\"_blank\" style=\"text-decoration: none; color: rgb(0, 66, 118); font-weight: bold;\"><img src=\"http://p2.ifengimg.com/a/2016/0810/204c433878d5cf9size1_w16_h16.png\" style=\"border: 0px; vertical-align: top; display: inline; margin: 0px; max-width: 100%; height: auto; padding-top: 3px;\"/></a></span></p><p><br/></p>', 'no', 21);
INSERT INTO `web_news` VALUES ('a28b54c614d142f9bb0cd6ac3f90f67d', 'iiii', '2017-10-21 15:23:21', 'iii', 'http://wx3.sinaimg.cn/large/005spsLRly1frp60h3ds8j30bo088whx.jpg', 'iii', '<p>iii</p>', 'no', 6);
INSERT INTO `web_news` VALUES ('b5739322b529419f958b92684a38aac3', 'ddd', '2017-10-21 15:22:47', 'ddd', 'http://wx2.sinaimg.cn/large/005spsLRly1frp60hvywdj30bo088ad4.jpg', 'ddd', '<p>dddd</p>', 'no', 1);
INSERT INTO `web_news` VALUES ('d3b7cd0ff0044038be260ad81a879be1', 'ww', '2017-12-11 10:51:33', 'www', 'http://wx2.sinaimg.cn/large/005spsLRly1frp60hvywdj30bo088ad4.jpg', 'www', '<p><img src=\"/FH-WEB3/plugins/ueditor/jsp/upload1/20171211/29211512960687460.png\" title=\"QQ截图20171207030605.png\"/></p>', 'no', 1);
INSERT INTO `web_news` VALUES ('eba04dd7092449bda6f925ab272756f0', '全国铁路今日调整列车运行图 增开多趟旅游专列', '2017-01-09 13:48:18', '新华网', 'http://wx2.sinaimg.cn/large/005spsLRly1frp60i867bj30bo0880w4.jpg', '美国情报机构发言人2016年10月曾称，俄罗斯黑客应对美国选举系统的网络攻击负责，因此宣布对俄实施制裁。此后，中情局通过媒体指责俄罗斯闯入民主党服务器，以帮助特朗普，使其在11月8日选举中获胜。但美国政府从未提出任何俄罗斯参与黑客攻击以影响总统选举结果的证据。\"\"\"\"', '<p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">中新网北京4月16日电（记者 张尼）今日零时起，全国铁路将实行新的列车运行图，调整后较调整前增开动车组列车25.5对，至此，全国铁路开行旅客列车总数达3615对。不少旅游专列的开通更将大大方便游客出行。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(51, 102, 153); text-decoration: none;\"><img src=\"http://upload.cankaoxiaoxi.com/temp/2017/0416/1492296892669.jpg\" style=\"vertical-align: top; border-width: 0px; margin: 0px auto; max-width: 600px;\"/></a></p><p style=\"margin-top: -10px; margin-bottom: 0px; padding: 0px; line-height: 12px; text-align: center; text-indent: 2em; font-size: 12px; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(255, 0, 0); text-decoration: none;\">点击图片进入下一页</a></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 22px; margin-bottom: 10px; font-size: 12px;\">资料图 中新社记者 刘冉阳 摄</span></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>增开动车组列车25.5对 客流饱满线路运力将扩大</strong></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">此次调图，铁路部门共增开动车组列车25.5对，并安排37对现有动车组列车重联或大编组运行。调整后，全国铁路开行旅客列车总数达3615对，沪昆高铁、杭深线、南广、贵广、宁蓉、京广等客流饱满线路的运力将得到扩大。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">铁路部门还主动对接市场需求，挖掘高铁运输能力，对动卧列车开行方案进行了优化，增开部分白天动卧列车，中长途旅客的旅行体验或将得到改善。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">另外，全国还新增了多条动车线路。调图后，将首次新增昆明至合肥、福州、珠海、衡阳等动车。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">新增开的昆明至合肥G1398次列车，运行时间将由普速列车的34小时压缩至11小时50分；昆明至福州G1696次列车将由普速列车的37小时43分压缩至11小时28分。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">从郑州站将始发3趟至北京的直达高铁。郑州东站至广州南站的G545次变更到站至珠海，这也是郑州至珠海首次通行高铁，从郑州东站乘高铁至珠海仅需7小时26分。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(51, 102, 153); text-decoration: none;\"><img src=\"http://upload.cankaoxiaoxi.com/temp/2017/0416/1492296892634.jpg\" style=\"vertical-align: top; border-width: 0px; margin: 0px auto; max-width: 600px;\"/></a></p><p style=\"margin-top: -10px; margin-bottom: 0px; padding: 0px; line-height: 12px; text-align: center; text-indent: 2em; font-size: 12px; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(255, 0, 0); text-decoration: none;\">点击图片进入下一页</a></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 22px; margin-bottom: 10px; font-size: 12px;\">资料图：站台上准备乘车的乘客 中新社记者 刘冉阳 摄</span></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>多条路线运行时间压缩 昆明至北京用时不到11小时</strong></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">除了运力增加，部分旅客列车旅行速度也得到了提高。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">例如，由昆明南始发至北京西的G404次高铁列车，运行时间压缩了2小时30分，实现单程10小时43分。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">昆明至武昌的K110次旅客列车，全程运行时间调图前为29小时16分，调图后为27小时01分，压缩2小时15分钟。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">成都至福州K390/1次旅行时间压缩5小时49分钟；杭州至成都K1271/4次旅行时间压缩4小时8分钟。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">另据济南铁路局介绍，青岛北至温州K1052/49K1050/1次、深圳至青岛T398/5次、青岛至南昌K344/1次也优化了列车运行区段。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">其中，青岛北至郑州K1634/5次列车在济南铁路局管内运行压缩1小时04分钟；青岛至曹县5022/3次旅行时间压缩48分钟。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(51, 102, 153); text-decoration: none;\"><img src=\"http://upload.cankaoxiaoxi.com/temp/2017/0416/1492296892847.jpg\" style=\"vertical-align: top; border-width: 0px; margin: 0px auto; max-width: 600px;\"/></a></p><p style=\"margin-top: -10px; margin-bottom: 0px; padding: 0px; line-height: 12px; text-align: center; text-indent: 2em; font-size: 12px; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(255, 0, 0); text-decoration: none;\">点击图片进入下一页</a></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 22px; margin-bottom: 10px; font-size: 12px;\">资料图：安徽黄山风景区 李金刚 摄</span></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>增开多趟旅游专列 上海至黄山每天开行2对高铁</strong></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">此次调图，多地还增开了旅游专列，方便游客出行。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">云桂铁路沿线旅游资源丰富，此次调图，昆明铁路局增开了5对昆明至富宁的临时动车组。届时，每天往返昆明与富宁间的动车组将达到10对。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">上海铁路局将上海虹桥至萍乡北G1367/G1368次列车，运行区段改为上海虹桥至黄山北，车次改为G1519/8 G1517/20次。这样，上海至黄山每天开行高铁由原先的1对增加为2对，且虹桥站发车时间安排在8：42和18：07，最快4小时即可到黄山北站，更方便旅客出门游玩。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">武安、涉县、黎城等拥有诸多著名旅游景点的脱贫攻坚区域，在此次调图中也迎来好消息。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">北京铁路局将天津-涉县4481/2次原老式“绿皮车”升级为空调列车，并增加黎城和潞城作为停靠站；将石家庄北-阳泉4465/6次、阳泉-临西4464/14462/3次更换为空调列车；将铁路通勤列车6433次，增加西大庙站办理客运业务，方便沿线旅客出行。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">此外，北京铁路局还将开行畅游京津冀旅游专列15列。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(51, 102, 153); text-decoration: none;\"><img src=\"http://upload.cankaoxiaoxi.com/temp/2017/0416/1492296892723.jpg\" style=\"vertical-align: top; border-width: 0px; margin: 0px auto; max-width: 600px;\"/></a></p><p style=\"margin-top: -10px; margin-bottom: 0px; padding: 0px; line-height: 12px; text-align: center; text-indent: 2em; font-size: 12px; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(255, 0, 0); text-decoration: none;\">点击图片进入下一页</a></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 22px; margin-bottom: 10px; font-size: 12px;\">资料图：北京西站 中新网记者 金硕 摄</span></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>优化区域交通：京津冀环形列车服务进一步提升</strong></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">京津冀区域环形列车服务在此次调整中也将得到进一步优化。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">记者了解到，为助力京津冀协同发展，满足区域内人民群众“早进京津石 当晚可回家”工作、生活半小时、一小时交通圈出行需求，去年“5.15”调图，北京铁路局首次开行京津冀环形列车，近一年来让266.6万人享受到乘坐火车出行带来便利。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">在此基础上，此次新图调整进一步对区域内的旅客列车进行了优化。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">调图后，北京铁路局将环形列车中承德-石家庄K7754/1次列车由晚间改为白天运行，调整后列车从承德站7时49分始发，经停北京东站，满足了承德地区上午进京旅客的出行需求。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">为缓解天津市与滨海新区间交通运输压力，北京铁路局对经停塘沽站的列车进行了优化。在3月份增加10列经停列车的基础上，4月调图再增普速旅客列车2列，使经停塘沽站的旅客列车达到32列，其中，高铁15列、普速17列。（完）</p><p><br/></p>', 'no', 22);
INSERT INTO `web_news` VALUES ('f999d0c302f2419c9bf778ba6a979fff', 'ttt', '2017-10-21 15:23:06', 'tt', 'http://wx1.sinaimg.cn/large/005spsLRly1frp60gql8dj30bo088di4.jpg', 'ttt', '<p>tt</p>', 'no', 2);

-- ----------------------------
-- Table structure for web_ourbusiness
-- ----------------------------
DROP TABLE IF EXISTS `web_ourbusiness`;
CREATE TABLE `web_ourbusiness`  (
  `OURBUSINESS_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TITLE1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '介绍上',
  `TITLE2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '介绍下',
  `CONTENT1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容上',
  `CONTENT2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容上',
  `TOURL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容链接',
  `OTHER1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OTHER2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IMG1` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IMG2` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `M3_TITLE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `M3_CONTENT1` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `M3_CONTENT2` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `M3_CONTENT3` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IMG3` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IMG4` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`OURBUSINESS_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_ourbusiness
-- ----------------------------
INSERT INTO `web_ourbusiness` VALUES ('1', '哈喽,we are FH WEB', '我们创建网站和品牌标识', '我们相信  在质量设计', '任何创意项目都是独一无二的<br /> 具有适当的质量', 'http://www.fhadmin.org/', '被带领与<br />  & 伟大的人', '我们与前瞻性的客户创建<br /> 令人惊奇的事情带来积极的结果', 'http://wx4.sinaimg.cn/large/005spsLRly1frp6bl6psfj305b08cwev.jpg', 'http://wx3.sinaimg.cn/large/005spsLRly1frp6bkcbc3j30d20d20w5.jpg', '我们的客户说什么', '乱数假文悲哀坐特，consectetur adipiscing精英。所dapibus NEC ornare SED狮子座直径。SED科莫多nibh安特facilisis必比登悲哀feugiat在SED dapibus利奥NEC所ornare直径。', '乱数假文悲哀坐特，consectetur adipiscing精英。所dapibus NEC ornare SED狮子座直径。SED科莫多nibh安特facilisis必比登悲哀feugiat在SED dapibus利奥NEC所ornare直径。', '乱数假文悲哀坐特，consectetur adipiscing精英。所dapibus NEC ornare SED狮子座直径。SED科莫多nibh安特facilisis必比登悲哀feugiat在SED dapibus利奥NEC所ornare直径。', 'http://wx4.sinaimg.cn/large/005B44p8ly1fskd08hojwj30dc0hsq3q.jpg', 'http://wx4.sinaimg.cn/large/005B44p8ly1fskd08vbx5j30dc0hsabi.jpg');

SET FOREIGN_KEY_CHECKS = 1;
