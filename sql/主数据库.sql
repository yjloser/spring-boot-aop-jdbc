/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.81.122
 Source Server Type    : MySQL
 Source Server Version : 50640
 Source Host           : 192.168.81.122:3306
 Source Schema         : zjsz

 Target Server Type    : MySQL
 Target Server Version : 50640
 File Encoding         : 65001

 Date: 13/10/2018 15:08:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for own_code
-- ----------------------------
DROP TABLE IF EXISTS `own_code`;
CREATE TABLE `own_code`  (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `C_MSG` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXTEND1` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXTEND2` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXTEND3` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXTEND4` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`C_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '全局编码' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of own_code
-- ----------------------------
INSERT INTO `own_code` VALUES (1, '0', '请求成功', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (2, '155444', '信息不存在', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
