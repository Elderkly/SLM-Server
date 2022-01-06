/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : slm

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 06/01/2022 21:59:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `bookID` int NOT NULL AUTO_INCREMENT COMMENT '书id',
  `bookName` varchar(100) NOT NULL COMMENT '书名',
  `bookCounts` int NOT NULL COMMENT '数量',
  `detail` varchar(200) NOT NULL COMMENT '描述',
  KEY `bookID` (`bookID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of books
-- ----------------------------
BEGIN;
INSERT INTO `books` VALUES (1, 'Java', 1, '从入门到放弃');
INSERT INTO `books` VALUES (2, 'MySQL', 10, '从删库到跑路');
INSERT INTO `books` VALUES (3, 'Linux', 5, '从进门到进牢');
INSERT INTO `books` VALUES (4, '12', 22, '1');
COMMIT;

-- ----------------------------
-- Table structure for canteen
-- ----------------------------
DROP TABLE IF EXISTS `canteen`;
CREATE TABLE `canteen` (
  `canteenID` int NOT NULL AUTO_INCREMENT COMMENT '饭堂ID',
  `canteenName` varchar(100) NOT NULL COMMENT '饭堂名称',
  `schoolID` int NOT NULL COMMENT '学校ID',
  PRIMARY KEY (`canteenID`),
  KEY `canteenID` (`canteenID`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of canteen
-- ----------------------------
BEGIN;
INSERT INTO `canteen` VALUES (17, '100', 15);
INSERT INTO `canteen` VALUES (21, '3', 15);
INSERT INTO `canteen` VALUES (52, '1', 16);
INSERT INTO `canteen` VALUES (53, '2', 16);
INSERT INTO `canteen` VALUES (54, '111', 16);
INSERT INTO `canteen` VALUES (55, '2222', 16);
INSERT INTO `canteen` VALUES (56, '1', 17);
INSERT INTO `canteen` VALUES (57, '2', 17);
INSERT INTO `canteen` VALUES (58, '1', 18);
INSERT INTO `canteen` VALUES (59, '2', 18);
INSERT INTO `canteen` VALUES (60, '1', 19);
INSERT INTO `canteen` VALUES (61, '2', 19);
INSERT INTO `canteen` VALUES (62, '1', 20);
INSERT INTO `canteen` VALUES (63, '12', 20);
INSERT INTO `canteen` VALUES (64, '1', 21);
INSERT INTO `canteen` VALUES (65, '2', 21);
INSERT INTO `canteen` VALUES (123, '123', 999);
INSERT INTO `canteen` VALUES (124, '1', 22);
INSERT INTO `canteen` VALUES (125, '2', 22);
INSERT INTO `canteen` VALUES (126, '1', 22);
INSERT INTO `canteen` VALUES (128, '12', 22);
INSERT INTO `canteen` VALUES (129, '1', 23);
INSERT INTO `canteen` VALUES (130, '2', 23);
INSERT INTO `canteen` VALUES (131, '123', 23);
INSERT INTO `canteen` VALUES (133, '456', 23);
INSERT INTO `canteen` VALUES (134, '一饭堂', 24);
INSERT INTO `canteen` VALUES (135, '二饭堂', 24);
COMMIT;

-- ----------------------------
-- Table structure for canteen_menu_record
-- ----------------------------
DROP TABLE IF EXISTS `canteen_menu_record`;
CREATE TABLE `canteen_menu_record` (
  `recordID` int NOT NULL AUTO_INCREMENT,
  `canteenID` int NOT NULL COMMENT '饭堂ID',
  `canteenName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '饭堂名称',
  `menuID` int NOT NULL,
  `menuName` varchar(255) DEFAULT NULL,
  `schoolID` int NOT NULL,
  `calorie` int DEFAULT NULL,
  `menuType` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`recordID`),
  KEY `recordID` (`recordID`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of canteen_menu_record
-- ----------------------------
BEGIN;
INSERT INTO `canteen_menu_record` VALUES (1, 17, '100', 1, '123', 15, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (2, 17, '100', 9, '自选快餐123', 15, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (3, 17, '100', 12, '1', 15, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (4, 0, '122', 9, '自选快餐123', 16, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (5, 0, '122', 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (6, 23, '100', 1, '123', 15, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (7, 24, '123', 9, '自选快餐123', 16, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (8, 23, '123', 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (9, 25, '3333', 12, '1', 16, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (10, 28, '55', 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (11, 28, '11', 9, '自选快餐123', 16, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (12, 27, '11', 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (13, 30, '222', 9, '自选快餐123', 16, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (14, 32, '456', 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (15, 31, '456', 9, '自选快餐123', 16, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (16, 30, '123', 9, '自选快餐123', 16, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (17, 34, NULL, 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (18, 34, '33', 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (19, 33, '33', 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (20, 33, '33', 9, '自选快餐123', 16, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (21, 36, '44', 9, '自选快餐123', 16, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (22, 36, '11', 9, '自选快餐123', 16, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (23, 38, '11', 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (24, 40, '22', 13, '2', 16, 10, '早餐', '');
INSERT INTO `canteen_menu_record` VALUES (25, 40, '11', 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (26, 46, '12', 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (27, 46, '43', 9, '自选快餐123', 16, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (28, 44, '12', 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (29, 48, '32', 9, '自选快餐123', 16, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (30, 50, '123', 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (31, 50, '456', 9, '自选快餐123', 16, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (32, 52, '1', 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (33, 52, '2', 12, '1', 16, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (34, 22, '1', 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (35, 23, '2', 9, '自选快餐123', 16, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (36, 54, '1', 1, '123', 16, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (37, 55, '2222', 9, '自选快餐123', 16, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (38, 56, '2', 12, '1', 17, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (39, 57, '1', 1, '123', 17, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (40, 56, '1', 9, '自选快餐123', 17, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (41, 56, '1', 12, '1', 17, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (42, 57, '2', 1, '123', 17, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (43, 56, '1', 9, '自选快餐123', 17, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (44, 58, '1', 1, '123', 18, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (45, 59, '2', 13, '2', 18, 10, '早餐', '');
INSERT INTO `canteen_menu_record` VALUES (46, 58, '1', 9, '自选快餐123', 18, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (47, 58, '1', 12, '1', 18, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (48, 60, '1', 9, '自选快餐123', 19, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (49, 61, '1', 12, '1', 19, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (50, 62, '2', 12, '1', 19, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (51, 63, '2', 9, '自选快餐123', 19, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (52, 62, '1', 9, '自选快餐123', 20, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (53, 63, '1', 13, '2', 20, 10, '早餐', '');
INSERT INTO `canteen_menu_record` VALUES (54, 64, '12', 1, '123', 20, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (55, 65, '12', 1, '123', 20, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (56, 64, '1', 1, '123', 21, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (57, 64, '1', 12, '1', 21, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (58, 65, '2', 12, '1', 21, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (59, 65, '2', 9, '自选快餐123', 21, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (60, 124, '1', 1, '123', 22, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (61, 124, '1', 9, '自选快餐123', 22, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (62, 125, '2', 12, '1', 22, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (63, 125, '2', 12, '1', 22, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (64, 125, '2', 1, '123', 22, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (65, 126, '1', 1, '123', 22, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (66, 128, '12', 12, '1', 22, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (67, 129, '1', 1, '123', 23, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (68, 129, '1', 12, '1', 23, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (69, 130, '2', 12, '1', 23, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (70, 130, '2', 1, '123', 23, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (71, 131, '123', 1, '123', 23, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (72, 133, '456', 1, '123', 23, 500, '早餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (73, 133, '456', 12, '1', 23, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (74, 133, '2333', 9, '自选快餐123', 23, 200, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/7/1/mid_photo_url_big_photo_url_384c8d0b21e67c08aca5b12d3b3dc5db.jpg');
INSERT INTO `canteen_menu_record` VALUES (76, 135, '二饭堂', 12, '1', 24, 50, '早餐，午餐', '');
INSERT INTO `canteen_menu_record` VALUES (77, 134, '一饭堂', 23, '滑蛋饭', 24, 500, '午餐，晚餐', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2961657401,1164883760&fm=26&gp=0.jpg');
INSERT INTO `canteen_menu_record` VALUES (78, 134, '一饭堂', 26, '面包', 24, 70, '早餐，午餐，晚餐', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=101133576,3711215589&fm=26&gp=0.jpg');
INSERT INTO `canteen_menu_record` VALUES (79, 134, '一饭堂', 25, '豆浆', 24, 40, '早餐', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3769494409,3733323280&fm=26&gp=0.jpg');
INSERT INTO `canteen_menu_record` VALUES (80, 134, '一饭堂', 24, '炒粉', 24, 300, '午餐，晚餐', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2514257278,1983004782&fm=26&gp=0.jpg');
INSERT INTO `canteen_menu_record` VALUES (81, 135, '二饭堂', 28, '五谷渔粉', 24, 500, '午餐，晚餐', 'https://dss2.bdstatic.com/8_V1bjqh_Q23odCf/pacific/1890680911.jpg');
INSERT INTO `canteen_menu_record` VALUES (82, 134, '一饭堂', 16, '饭团', 24, 300, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2009/6/8/233779_1244417068.jpg');
COMMIT;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menuID` int NOT NULL AUTO_INCREMENT COMMENT '菜品ID',
  `menuName` varchar(255) DEFAULT NULL,
  `calorie` int DEFAULT NULL COMMENT '卡路里',
  `menuType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用餐时段',
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`menuID`),
  KEY `menuID` (`menuID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of menu
-- ----------------------------
BEGIN;
INSERT INTO `menu` VALUES (14, '鸡扒饭', 300, '午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2019/10/22/small_photo_url_d2c211aa1095413deb3c66e8c87b02e3.jpg');
INSERT INTO `menu` VALUES (15, '猪扒饭', 350, '午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2019/10/24/mid_photo_url_9f7d749dd4258702dcfd9c92e559cc2b.jpg');
INSERT INTO `menu` VALUES (16, '饭团', 300, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2009/6/8/233779_1244417068.jpg');
INSERT INTO `menu` VALUES (17, '自选', 350, '午餐，晚餐', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2677880910,1493871802&fm=26&gp=0.jpg');
INSERT INTO `menu` VALUES (18, '牛肉面', 500, '午餐，晚餐', 'https://dss1.baidu.com/6OZ1bjeh1BF3odCf/it/u=993060097,2988233591&fm=77&src=1002');
INSERT INTO `menu` VALUES (19, '肠粉', 250, '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2020/6/18/mid_photo_url_big_photo_url_2acab521dd41bab14a88ca2b7d1456a3.jpg');
INSERT INTO `menu` VALUES (20, '麻辣烫', 500, '午餐，晚餐', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1823187537,2774119337&fm=26&gp=0.jpg');
INSERT INTO `menu` VALUES (21, '汉堡', 300, '午餐，晚餐', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2020975917,2772806341&fm=26&gp=0.jpg');
INSERT INTO `menu` VALUES (22, '鸡肉卷', 250, '午餐，晚餐', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2283213005,2383240891&fm=26&gp=0.jpg');
INSERT INTO `menu` VALUES (23, '滑蛋饭', 500, '午餐，晚餐', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2961657401,1164883760&fm=26&gp=0.jpg');
INSERT INTO `menu` VALUES (24, '炒粉', 300, '午餐，晚餐', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2514257278,1983004782&fm=26&gp=0.jpg');
INSERT INTO `menu` VALUES (25, '豆浆', 40, '早餐', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3769494409,3733323280&fm=26&gp=0.jpg');
INSERT INTO `menu` VALUES (26, '面包', 70, '早餐，午餐，晚餐', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=101133576,3711215589&fm=26&gp=0.jpg');
INSERT INTO `menu` VALUES (27, '肉夹馍', 200, '早餐', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2330134987,1353679590&fm=26&gp=0.jpg');
INSERT INTO `menu` VALUES (28, '五谷渔粉', 500, '午餐，晚餐', 'https://dss2.bdstatic.com/8_V1bjqh_Q23odCf/pacific/1890680911.jpg');
COMMIT;

-- ----------------------------
-- Table structure for random_record
-- ----------------------------
DROP TABLE IF EXISTS `random_record`;
CREATE TABLE `random_record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menuID` int NOT NULL,
  `schoolID` int NOT NULL,
  `userID` int NOT NULL,
  `menuName` varchar(255) DEFAULT NULL,
  `menuType` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `calorie` int DEFAULT NULL,
  `schoolName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `recordTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `canteenID` int NOT NULL,
  `canteenName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of random_record
-- ----------------------------
BEGIN;
INSERT INTO `random_record` VALUES (4, 23, 24, 4, '滑蛋饭', '午餐，晚餐', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2961657401,1164883760&fm=26&gp=0.jpg', 500, '广东科技学院松山湖校区', '1641448700314', 134, '一饭堂');
INSERT INTO `random_record` VALUES (5, 24, 24, 4, '炒粉', '午餐，晚餐', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2514257278,1983004782&fm=26&gp=0.jpg', 300, '广东科技学院松山湖校区', '1641448723812', 134, '一饭堂');
INSERT INTO `random_record` VALUES (6, 26, 24, 4, '面包', '早餐，午餐，晚餐', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=101133576,3711215589&fm=26&gp=0.jpg', 70, '广东科技学院松山湖校区', '1641448741707', 134, '一饭堂');
INSERT INTO `random_record` VALUES (7, 24, 24, 4, '炒粉', '午餐，晚餐', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2514257278,1983004782&fm=26&gp=0.jpg', 300, '广东科技学院松山湖校区', '1641448760040', 134, '一饭堂');
INSERT INTO `random_record` VALUES (8, 23, 24, 4, '滑蛋饭', '午餐，晚餐', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2961657401,1164883760&fm=26&gp=0.jpg', 500, '广东科技学院松山湖校区', '1641448770986', 134, '一饭堂');
INSERT INTO `random_record` VALUES (9, 16, 24, 4, '饭团', '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2009/6/8/233779_1244417068.jpg', 300, '广东科技学院松山湖校区', '1641449009354', 134, '一饭堂');
INSERT INTO `random_record` VALUES (10, 23, 24, 4, '滑蛋饭', '午餐，晚餐', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2961657401,1164883760&fm=26&gp=0.jpg', 500, '广东科技学院松山湖校区', '1641449024068', 134, '一饭堂');
INSERT INTO `random_record` VALUES (11, 16, 24, 4, '饭团', '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2009/6/8/233779_1244417068.jpg', 300, '广东科技学院松山湖校区', '1641449139804', 134, '一饭堂');
INSERT INTO `random_record` VALUES (12, 23, 24, 4, '滑蛋饭', '午餐，晚餐', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2961657401,1164883760&fm=26&gp=0.jpg', 500, '广东科技学院松山湖校区', '1641449154419', 134, '一饭堂');
INSERT INTO `random_record` VALUES (13, 23, 24, 4, '滑蛋饭', '午餐，晚餐', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2961657401,1164883760&fm=26&gp=0.jpg', 500, '广东科技学院松山湖校区', '1641449155781', 134, '一饭堂');
INSERT INTO `random_record` VALUES (14, 23, 24, 4, '滑蛋饭', '午餐，晚餐', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2961657401,1164883760&fm=26&gp=0.jpg', 500, '广东科技学院松山湖校区', '1641449157265', 134, '一饭堂');
INSERT INTO `random_record` VALUES (15, 26, 24, 4, '面包', '早餐，午餐，晚餐', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=101133576,3711215589&fm=26&gp=0.jpg', 70, '广东科技学院松山湖校区', '1641449158822', 134, '一饭堂');
INSERT INTO `random_record` VALUES (16, 16, 24, 4, '饭团', '早餐，午餐，晚餐', 'http://s2.boohee.cn/house/upload_food/2009/6/8/233779_1244417068.jpg', 300, '广东科技学院松山湖校区', '1641449160708', 134, '一饭堂');
INSERT INTO `random_record` VALUES (19, 26, 24, 6, '面包', '早餐，午餐，晚餐', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=101133576,3711215589&fm=26&gp=0.jpg', 70, '广东科技学院松山湖校区', '1641474698115', 134, '一饭堂');
COMMIT;

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `schoolID` int NOT NULL AUTO_INCREMENT COMMENT '学校id',
  `schoolName` varchar(100) NOT NULL COMMENT '学校名称',
  `canteenCount` int NOT NULL COMMENT '饭堂数量',
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`schoolID`),
  KEY `schoolID` (`schoolID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of school
-- ----------------------------
BEGIN;
INSERT INTO `school` VALUES (1, '广东科技学院南城校区', 0, 'https://dss1.baidu.com/70cFfyinKgQFm2e88IuM_a/forum/pic/item/a1ec08fa513d2697445f3b255afbb2fb4316d83d.jpg');
INSERT INTO `school` VALUES (15, '学校123', 2, 'https://dss1.baidu.com/70cFfyinKgQFm2e88IuM_a/forum/pic/item/a1ec08fa513d2697445f3b255afbb2fb4316d83d.jpg');
INSERT INTO `school` VALUES (24, '广东科技学院松山湖校区', 2, 'https://dss1.baidu.com/70cFfyinKgQFm2e88IuM_a/forum/pic/item/a1ec08fa513d2697445f3b255afbb2fb4316d83d.jpg');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `isAdmin` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `height` int(10) unsigned zerofill DEFAULT NULL,
  `weight` int(10) unsigned zerofill DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (6, 'P', '0', NULL, 'oMBtN5MA7sl2xHGRKTwSQOCvR4VM', 0000000170, 0000000060, 20);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
