/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.81.122
 Source Server Type    : MySQL
 Source Server Version : 50640
 Source Host           : 192.168.81.122:3306
 Source Schema         : cloud

 Target Server Type    : MySQL
 Target Server Version : 50640
 File Encoding         : 65001

 Date: 13/10/2018 15:07:47
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
INSERT INTO `own_code` VALUES (2, '1', '网络异常，请稍后重试！', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (3, '2', '信息不存在', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (4, '3', '失败', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (5, '4', '不合法的鉴权', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (6, '40001', '请求缺少请求参数', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (7, '40002', '签名错误', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (8, '40003', '重复数据', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (9, '40004', '原密码错误', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (10, '40005', '邮件鉴权码错误', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (11, '40006', '用户名或密码错误', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (12, '40007', '功能暂未开放', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (13, '40008', '用户不存在该权限', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (14, '40009', '未扫码预登录中', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (15, '40010', '未选择扫码登录,请打开PC端二维码登录操作', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (16, '40011', '用户名不存在', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (17, '40012', 'PC端正在登录，请稍等....', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (18, '40013', '请重新发送该请求', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (19, '40014', '您未与账号管理，请使用密码登录扫码绑定', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (20, '40015', '填写的时间与其他数据时间重叠', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (21, '40017', '该账号已被封停，请联系管理员', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (22, '40018', '选择的部门存在关联人员，请先删除人员信息', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (23, '40023', '验证码错误或失效', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (24, '40024', '请重新发送验证码信息', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (25, '40027', '部门存在对应成员', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (26, '40028', '部门下存在子部门', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (27, '40031', '重复手机号，请修改手机号', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (28, '40034', '已存在本手机号', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (29, '40035', '关联失败', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (30, '50000', '已发送至您手机，请注意查收！', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (31, '50001', '发送失败', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (32, '50003', '验证码错误或失效', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (33, '50004', '验证码校验成功', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (34, '50005', '注册失败', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (35, '50006', '注册成功', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (36, '50007', 'Token获取异常', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (37, '50008', '临时Token获取成功', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (38, '50009', '登录失败,请重试', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (39, '50010', '登录成功', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (40, '50011', '用户名不存在或密码错误', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (41, '50012', '请重新登录', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (42, '50013', '无法重复投票', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (43, '50014', '账号未激活，请耐心等待', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (44, '50002', '发送过于频繁，稍后重试！', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (45, '50015', '今日发送验证码已超过限制', NULL, NULL, NULL, NULL);
INSERT INTO `own_code` VALUES (46, '50016', 'IP属于黑名单，已禁用', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
