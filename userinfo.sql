/*
 Navicat Premium Data Transfer

 Source Server         : shuatiweb
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : userinfo

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 14/12/2023 14:03:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for test_info
-- ----------------------------
DROP TABLE IF EXISTS `test_info`;
CREATE TABLE `test_info`  (
  `paper_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date` date NOT NULL,
  `listening` double NULL DEFAULT NULL,
  `reading` double NULL DEFAULT NULL,
  PRIMARY KEY (`paper_id`, `date`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_info
-- ----------------------------
INSERT INTO `test_info` VALUES (20230601, 1002, '2023-03-23', 75.75, 66.08);
INSERT INTO `test_info` VALUES (20230601, 1002, '2023-11-02', 61.57, 88.22);
INSERT INTO `test_info` VALUES (20230601, 1001, '2023-12-14', 4, 3.3333333333333335);
INSERT INTO `test_info` VALUES (20230602, 1001, '2023-01-03', 65.85, 60.69);
INSERT INTO `test_info` VALUES (20230602, 1002, '2023-01-07', 51.93, 65.59);
INSERT INTO `test_info` VALUES (20230602, 1001, '2023-01-20', 57.98, 64.77);
INSERT INTO `test_info` VALUES (20230602, 1002, '2023-03-04', 93.2, 90.91);
INSERT INTO `test_info` VALUES (20230602, 1002, '2023-05-24', 50.64, 67.92);
INSERT INTO `test_info` VALUES (20230602, 1002, '2023-06-03', 60.3, 86.42);
INSERT INTO `test_info` VALUES (20230602, 1001, '2023-06-11', 97, 76.24);
INSERT INTO `test_info` VALUES (20230602, 1002, '2023-06-30', 65.75, 80.58);
INSERT INTO `test_info` VALUES (20230602, 1001, '2023-10-11', 94.7, 63.72);
INSERT INTO `test_info` VALUES (20230602, 1002, '2023-12-06', 84.28, 79.1);
INSERT INTO `test_info` VALUES (20230603, 1001, '2023-01-11', 82.71, 97.01);
INSERT INTO `test_info` VALUES (20230603, 1001, '2023-01-15', 55.83, 74.59);
INSERT INTO `test_info` VALUES (20230603, 1001, '2023-03-08', 63.69, 77.98);
INSERT INTO `test_info` VALUES (20230603, 1001, '2023-03-15', 51.26, 95.9);
INSERT INTO `test_info` VALUES (20230603, 1001, '2023-03-26', 99.19, 95.41);
INSERT INTO `test_info` VALUES (20230603, 1001, '2023-06-01', 74.18, 60.13);
INSERT INTO `test_info` VALUES (20230603, 1001, '2023-07-02', 79.61, 81.42);
INSERT INTO `test_info` VALUES (20230603, 1001, '2023-10-19', 71, 77.07);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `online` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (123, '严云熙', '男', '大4', '11099');
INSERT INTO `user_info` VALUES (1001, '蔡睿', '男', '大4', '11470');
INSERT INTO `user_info` VALUES (1002, '阎璐', '女', '大1', '11663');
INSERT INTO `user_info` VALUES (1003, '唐安琪', '女', '大4', '12674');
INSERT INTO `user_info` VALUES (1006, '薛子韬', '男', '大3', '12757');
INSERT INTO `user_info` VALUES (1010, '曹璐', '女', '大2', '11102');
INSERT INTO `user_info` VALUES (1011, '赵秀英', '女', '大1', '5336');
INSERT INTO `user_info` VALUES (1015, '孔子异', '男', '大3', '12845');
INSERT INTO `user_info` VALUES (1022, '沈詩涵', '女', '大2', '1526');
INSERT INTO `user_info` VALUES (1024, '周杰宏', '男', '大3', '9374');
INSERT INTO `user_info` VALUES (1025, '李岚', '女', '大4', '5594');
INSERT INTO `user_info` VALUES (1026, '苏致远', '男', '大4', '3477');
INSERT INTO `user_info` VALUES (1027, '唐嘉伦', '男', '大1', '9137');
INSERT INTO `user_info` VALUES (1028, '戴子韬', '男', '大2', '4137');
INSERT INTO `user_info` VALUES (1030, '陆云熙', '男', '大1', '9136');
INSERT INTO `user_info` VALUES (1036, '崔子韬', '男', '大2', '10932');
INSERT INTO `user_info` VALUES (1038, '熊璐', '女', '大1', '4999');
INSERT INTO `user_info` VALUES (1039, '贾子韬', '男', '大4', '12987');
INSERT INTO `user_info` VALUES (1040, '董嘉伦', '男', '大2', '6191');
INSERT INTO `user_info` VALUES (1043, '廖嘉伦', '男', '大2', '10758');
INSERT INTO `user_info` VALUES (1044, '田岚', '女', '大1', '13445');
INSERT INTO `user_info` VALUES (1047, '严璐', '女', '大3', '5206');
INSERT INTO `user_info` VALUES (1048, '魏子韬', '男', '大2', '6696');
INSERT INTO `user_info` VALUES (1049, '杨致远', '男', '大4', '2765');
INSERT INTO `user_info` VALUES (1050, '彭子韬', '男', '大1', '12292');
INSERT INTO `user_info` VALUES (1051, '莫致远', '男', '大3', '6770');
INSERT INTO `user_info` VALUES (1052, '吕云熙', '男', '大4', '13348');
INSERT INTO `user_info` VALUES (1055, '贺岚', '女', '大4', '13972');
INSERT INTO `user_info` VALUES (1060, '唐安琪', '女', '大4', '6994');
INSERT INTO `user_info` VALUES (1063, '方睿', '男', '大4', '10077');
INSERT INTO `user_info` VALUES (1065, '孙詩涵', '女', '大1', '4481');
INSERT INTO `user_info` VALUES (1066, '余致远', '男', '大1', '2793');
INSERT INTO `user_info` VALUES (1068, '贺晓明', '男', '大3', '8946');
INSERT INTO `user_info` VALUES (1070, '戴岚', '女', '大3', '11554');
INSERT INTO `user_info` VALUES (1071, '史云熙', '男', '大4', '8763');
INSERT INTO `user_info` VALUES (1075, '范子异', '男', '大1', '10537');
INSERT INTO `user_info` VALUES (1076, '贾云熙', '男', '大2', '12672');
INSERT INTO `user_info` VALUES (1084, '邱杰宏', '男', '大4', '7202');
INSERT INTO `user_info` VALUES (1085, '萧震南', '男', '大1', '2297');
INSERT INTO `user_info` VALUES (1089, '邹睿', '男', '大2', '428');
INSERT INTO `user_info` VALUES (1090, '高睿', '男', '大4', '11308');
INSERT INTO `user_info` VALUES (1091, '林睿', '男', '大2', '11238');
INSERT INTO `user_info` VALUES (1092, '姚宇宁', '男', '大2', '12627');
INSERT INTO `user_info` VALUES (1093, '韩璐', '女', '大3', '12705');
INSERT INTO `user_info` VALUES (1094, '汪睿', '男', '大3', '11747');
INSERT INTO `user_info` VALUES (1096, '郭安琪', '女', '大4', '9479');
INSERT INTO `user_info` VALUES (1098, '朱嘉伦', '男', '大3', '2433');
INSERT INTO `user_info` VALUES (1099, '汤嘉伦', '男', '大2', '12536');
INSERT INTO `user_info` VALUES (1100, '周震南', '男', '大2', '8933');
INSERT INTO `user_info` VALUES (1200, '龙睿', '男', '大3', '7287');
INSERT INTO `user_info` VALUES (1202, '吕子异', '男', '大4', '1242');
INSERT INTO `user_info` VALUES (1203, '余致远', '男', '大4', '11084');
INSERT INTO `user_info` VALUES (1205, '黄宇宁', '男', '大4', '3114');
INSERT INTO `user_info` VALUES (1206, '侯秀英', '女', '大1', '5626');
INSERT INTO `user_info` VALUES (1207, '朱晓明', '男', '大4', '4284');
INSERT INTO `user_info` VALUES (1209, '邱震南', '男', '大1', '9330');
INSERT INTO `user_info` VALUES (1210, '夏震南', '男', '大1', '4014');
INSERT INTO `user_info` VALUES (1214, '卢子异', '男', '大4', '7654');
INSERT INTO `user_info` VALUES (1216, '谢致远', '男', '大3', '11297');
INSERT INTO `user_info` VALUES (1218, '何子异', '男', '大4', '2947');
INSERT INTO `user_info` VALUES (1219, '邵安琪', '女', '大2', '1826');
INSERT INTO `user_info` VALUES (1220, '朱宇宁', '男', '大4', '9551');
INSERT INTO `user_info` VALUES (1221, '邹嘉伦', '男', '大2', '12898');
INSERT INTO `user_info` VALUES (1222, '黎子韬', '男', '大4', '7614');
INSERT INTO `user_info` VALUES (1224, '于岚', '女', '大2', '4049');
INSERT INTO `user_info` VALUES (1229, '郝秀英', '女', '大2', '5041');
INSERT INTO `user_info` VALUES (1230, '于子韬', '男', '大1', '5920');
INSERT INTO `user_info` VALUES (1232, '邵睿', '男', '大2', '7963');
INSERT INTO `user_info` VALUES (1233, '石岚', '女', '大2', '3449');
INSERT INTO `user_info` VALUES (1235, '向致远', '男', '大3', '1436');
INSERT INTO `user_info` VALUES (1237, '贾杰宏', '男', '大1', '4056');
INSERT INTO `user_info` VALUES (1241, '田岚', '女', '大2', '5635');
INSERT INTO `user_info` VALUES (1245, '汪宇宁', '男', '大1', '8657');
INSERT INTO `user_info` VALUES (1246, '蔡岚', '女', '大2', '13799');
INSERT INTO `user_info` VALUES (1247, '何杰宏', '男', '大1', '7877');
INSERT INTO `user_info` VALUES (1248, '曾璐', '女', '大2', '12812');
INSERT INTO `user_info` VALUES (1250, '谢詩涵', '女', '大2', '13108');
INSERT INTO `user_info` VALUES (1252, '莫嘉伦', '男', '大2', '1565');
INSERT INTO `user_info` VALUES (1253, '沈晓明', '男', '大3', '1345');
INSERT INTO `user_info` VALUES (1254, '冯子异', '男', '大1', '10110');
INSERT INTO `user_info` VALUES (1256, '熊璐', '女', '大1', '5628');
INSERT INTO `user_info` VALUES (1258, '郑秀英', '女', '大3', '8842');
INSERT INTO `user_info` VALUES (1259, '魏璐', '女', '大1', '9837');
INSERT INTO `user_info` VALUES (1261, '唐宇宁', '男', '大3', '6369');
INSERT INTO `user_info` VALUES (1262, '崔子韬', '男', '大2', '11008');
INSERT INTO `user_info` VALUES (1268, '金杰宏', '男', '大3', '11742');
INSERT INTO `user_info` VALUES (1269, '贾安琪', '女', '大1', '3394');
INSERT INTO `user_info` VALUES (1270, '李云熙', '男', '大4', '2306');
INSERT INTO `user_info` VALUES (1271, '龙致远', '男', '大1', '6400');
INSERT INTO `user_info` VALUES (1273, '尹睿', '男', '大4', '11553');
INSERT INTO `user_info` VALUES (1277, '程詩涵', '女', '大1', '11052');
INSERT INTO `user_info` VALUES (1279, '雷岚', '女', '大3', '10239');
INSERT INTO `user_info` VALUES (1281, '熊安琪', '女', '大1', '2457');
INSERT INTO `user_info` VALUES (1282, '侯安琪', '女', '大3', '4436');
INSERT INTO `user_info` VALUES (1284, '卢秀英', '女', '大3', '3802');
INSERT INTO `user_info` VALUES (1287, '马宇宁', '男', '大1', '13338');
INSERT INTO `user_info` VALUES (1290, '严秀英', '女', '大1', '7145');
INSERT INTO `user_info` VALUES (1291, '江詩涵', '女', '大2', '13120');
INSERT INTO `user_info` VALUES (1292, '沈秀英', '女', '大1', '1783');
INSERT INTO `user_info` VALUES (1294, '严岚', '女', '大3', '7675');
INSERT INTO `user_info` VALUES (12345, '微软天域剑魂', '男', 'Sophomore', '0');
INSERT INTO `user_info` VALUES (23456789, '发热管法国v', '女', 'Sophomore', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (123, '123');
INSERT INTO `users` VALUES (456, '8963');
INSERT INTO `users` VALUES (723, '723723');
INSERT INTO `users` VALUES (1001, '723723');
INSERT INTO `users` VALUES (1002, 'uoSTwluxit');
INSERT INTO `users` VALUES (1003, 'bIckoChgrO');
INSERT INTO `users` VALUES (1004, 'BzP4ZnEFRN');
INSERT INTO `users` VALUES (1005, 'qJF5jGO8el');
INSERT INTO `users` VALUES (1006, 'FbH6THVxXe');
INSERT INTO `users` VALUES (1007, 'jfyJ3rjpcb');
INSERT INTO `users` VALUES (1008, 'tRWTPlulmd');
INSERT INTO `users` VALUES (1009, 'HOQ3cvaz9L');
INSERT INTO `users` VALUES (1010, 'N4x0kmUPOy');
INSERT INTO `users` VALUES (1011, 'xQqkI9f1Tg');
INSERT INTO `users` VALUES (1012, 'OZWofja1Fg');
INSERT INTO `users` VALUES (1013, 'y2z1uJtaX8');
INSERT INTO `users` VALUES (1014, 'Pbyy4FlbrQ');
INSERT INTO `users` VALUES (1015, 'irsU1HavB8');
INSERT INTO `users` VALUES (1016, 'JWvBLKCquF');
INSERT INTO `users` VALUES (1017, 'wcHgheq4ZJ');
INSERT INTO `users` VALUES (1018, 'zHOEmpmywB');
INSERT INTO `users` VALUES (1019, 'R7VGm60fu7');
INSERT INTO `users` VALUES (1020, 'K7k2HHsWvx');
INSERT INTO `users` VALUES (1021, 'aR6PJhjIpS');
INSERT INTO `users` VALUES (1022, 'QMmTPTqdkQ');
INSERT INTO `users` VALUES (1023, '0VyRJOUpBA');
INSERT INTO `users` VALUES (1024, 's1tqqmHtIE');
INSERT INTO `users` VALUES (1025, '6SQGD0189J');
INSERT INTO `users` VALUES (1026, 'DkD3k7pbXj');
INSERT INTO `users` VALUES (1027, 'w6aP7grocv');
INSERT INTO `users` VALUES (1028, 'JNxUXP5LYZ');
INSERT INTO `users` VALUES (1029, '5bljtVs6cB');
INSERT INTO `users` VALUES (1030, 'x1hS9HmvIJ');
INSERT INTO `users` VALUES (1031, 'UoNsVikMtB');
INSERT INTO `users` VALUES (1032, 'X7CXkQzSjX');
INSERT INTO `users` VALUES (1033, 'A0smYEoVAt');
INSERT INTO `users` VALUES (1034, 'uRIJRpbnbQ');
INSERT INTO `users` VALUES (1035, 'utH4f7IbW3');
INSERT INTO `users` VALUES (1036, 'eFU6whHcC0');
INSERT INTO `users` VALUES (1037, 'f3Sn8ogH1M');
INSERT INTO `users` VALUES (1038, 'pOYAeMC6kU');
INSERT INTO `users` VALUES (1039, 'NBDrDKFW8F');
INSERT INTO `users` VALUES (1040, 'BUBM83kEGV');
INSERT INTO `users` VALUES (1041, 'xp0NCTw6Vo');
INSERT INTO `users` VALUES (1042, '5LQMTSSYbc');
INSERT INTO `users` VALUES (1043, 'zjSFSHQToh');
INSERT INTO `users` VALUES (1044, 'YrU64DQRKO');
INSERT INTO `users` VALUES (1045, 'A1HwYkwDva');
INSERT INTO `users` VALUES (1046, 'xkjaF9kWZx');
INSERT INTO `users` VALUES (1047, 'Y3wvUoobXz');
INSERT INTO `users` VALUES (1048, 'F9YgwUEiAn');
INSERT INTO `users` VALUES (1049, 'klgwXh1Isg');
INSERT INTO `users` VALUES (1050, 'p7SoostenB');
INSERT INTO `users` VALUES (1051, '7OL3KujYqU');
INSERT INTO `users` VALUES (1052, 'MsVdTYn4Vw');
INSERT INTO `users` VALUES (1053, 'CKPYm9szcS');
INSERT INTO `users` VALUES (1054, 'w1FIbB8td6');
INSERT INTO `users` VALUES (1055, 'QlzVvML5Au');
INSERT INTO `users` VALUES (1056, 'wwFq7gipLP');
INSERT INTO `users` VALUES (1057, 'QLdGCo4FNO');
INSERT INTO `users` VALUES (1058, 't8smkmFnmN');
INSERT INTO `users` VALUES (1059, '592kfUFoxy');
INSERT INTO `users` VALUES (1060, 'EdYb1ieEHl');
INSERT INTO `users` VALUES (1061, 'zlKf2mCb6b');
INSERT INTO `users` VALUES (1062, 'FjKr4kzePo');
INSERT INTO `users` VALUES (1063, 'sAVD8qsNdV');
INSERT INTO `users` VALUES (1064, '6L0UnCpMZx');
INSERT INTO `users` VALUES (1065, 'PllEOrXv1u');
INSERT INTO `users` VALUES (1066, 'DlGv9JIzDW');
INSERT INTO `users` VALUES (1067, 'd2vml56Aio');
INSERT INTO `users` VALUES (1068, 'sRbKlzUnJ3');
INSERT INTO `users` VALUES (1069, 'hzyQXEg8hA');
INSERT INTO `users` VALUES (1070, 'HcsiscFr8T');
INSERT INTO `users` VALUES (1071, 'qJnB7eNSz8');
INSERT INTO `users` VALUES (1072, 'PUxs9k2eEt');
INSERT INTO `users` VALUES (1073, 'mcdV5EPzyL');
INSERT INTO `users` VALUES (1074, 'YzvZJYFKnb');
INSERT INTO `users` VALUES (1075, 'y0yB0zQOo7');
INSERT INTO `users` VALUES (1076, 'F6VZLuUJLm');
INSERT INTO `users` VALUES (1077, 'MBXkcPQ7yp');
INSERT INTO `users` VALUES (1078, 'QQ9DFGL7fa');
INSERT INTO `users` VALUES (1079, 'IBSvlh9AUx');
INSERT INTO `users` VALUES (1080, 'hw4xmBGkzW');
INSERT INTO `users` VALUES (1081, 'oGJ7MN1ISO');
INSERT INTO `users` VALUES (1082, 'PPwfOsKtQC');
INSERT INTO `users` VALUES (1083, 'sGIoiKVvjA');
INSERT INTO `users` VALUES (1084, 'sYUOHRVZSS');
INSERT INTO `users` VALUES (1085, 'KrUBRbNwFa');
INSERT INTO `users` VALUES (1086, '0DkUDmQYhR');
INSERT INTO `users` VALUES (1087, 'EiAx83IhW9');
INSERT INTO `users` VALUES (1088, 'Dcn8lgufc5');
INSERT INTO `users` VALUES (1089, '1OPoktLybR');
INSERT INTO `users` VALUES (1090, 'Bl5clIanXh');
INSERT INTO `users` VALUES (1091, 'aZudtGRXZr');
INSERT INTO `users` VALUES (1092, '6PT94U15ev');
INSERT INTO `users` VALUES (1093, 'msstQE9gVE');
INSERT INTO `users` VALUES (1094, 'R1061Gzb4b');
INSERT INTO `users` VALUES (1095, 'YkEFBQBiWf');
INSERT INTO `users` VALUES (1096, 'HrRnnZTgu5');
INSERT INTO `users` VALUES (1097, 'sps1Cx7aTD');
INSERT INTO `users` VALUES (1098, 'daT53098OI');
INSERT INTO `users` VALUES (1099, 'ZqtGhJqWHC');
INSERT INTO `users` VALUES (1100, 'Q0YoCbRxJU');
INSERT INTO `users` VALUES (1101, 'YMYWpBXSSZ');
INSERT INTO `users` VALUES (1200, 'o1bdKOzZeY');
INSERT INTO `users` VALUES (1201, 'pxgiNhZMYl');
INSERT INTO `users` VALUES (1202, 'z7dRefVNfE');
INSERT INTO `users` VALUES (1203, 'T3W68RZEWh');
INSERT INTO `users` VALUES (1204, 'Xp5Nzn9YVw');
INSERT INTO `users` VALUES (1205, 'louCzPl0m7');
INSERT INTO `users` VALUES (1206, 'AvxUEulc2C');
INSERT INTO `users` VALUES (1207, '0Galb1DESR');
INSERT INTO `users` VALUES (1208, 'gOPC4Osf8u');
INSERT INTO `users` VALUES (1209, 'NbJD8cZbx1');
INSERT INTO `users` VALUES (1210, '1iMjS65uAB');
INSERT INTO `users` VALUES (1211, 'H2ocXXKmLd');
INSERT INTO `users` VALUES (1212, '7HuFPxh8uX');
INSERT INTO `users` VALUES (1213, 'dplKVB4mXr');
INSERT INTO `users` VALUES (1214, 'FzfKxQtNxl');
INSERT INTO `users` VALUES (1215, 'aLhZNZns6d');
INSERT INTO `users` VALUES (1216, 'FVq5uQsqTi');
INSERT INTO `users` VALUES (1217, 'diSiUdsyqa');
INSERT INTO `users` VALUES (1218, '6EJBrLqKIN');
INSERT INTO `users` VALUES (1219, 'Yz8JSNLUC8');
INSERT INTO `users` VALUES (1220, 'DrI9QbPBNv');
INSERT INTO `users` VALUES (1221, 'zizWPaMtyt');
INSERT INTO `users` VALUES (1222, '738ERW0srU');
INSERT INTO `users` VALUES (1223, 'cejZVMfv2X');
INSERT INTO `users` VALUES (1224, 'wVfOCxtoM8');
INSERT INTO `users` VALUES (1225, '5zLD8eVrk5');
INSERT INTO `users` VALUES (1226, 'wxH02HO5q2');
INSERT INTO `users` VALUES (1227, 'eA7A55vU6K');
INSERT INTO `users` VALUES (1228, 'f6vkQK5UkL');
INSERT INTO `users` VALUES (1229, 'EbiTGV7GLa');
INSERT INTO `users` VALUES (1230, 'qNj3tKugaK');
INSERT INTO `users` VALUES (1231, '4dbXOHtTla');
INSERT INTO `users` VALUES (1232, 'Ei7wdmUoRn');
INSERT INTO `users` VALUES (1233, '7a8FxF18TW');
INSERT INTO `users` VALUES (1234, 'IrhhG3GlIG');
INSERT INTO `users` VALUES (1235, 'qLgLDcfSFu');
INSERT INTO `users` VALUES (1236, '7xssipaiVN');
INSERT INTO `users` VALUES (1237, 'cZENbeqN1L');
INSERT INTO `users` VALUES (1238, 'ISMaGOorcS');
INSERT INTO `users` VALUES (1239, 'XMbh0WSHjt');
INSERT INTO `users` VALUES (1240, '18U6QIAhEH');
INSERT INTO `users` VALUES (1241, 'JyQFlcA4cS');
INSERT INTO `users` VALUES (1242, 'jYdh7dIWrg');
INSERT INTO `users` VALUES (1243, 'Sjv3IpIefG');
INSERT INTO `users` VALUES (1244, 'bfhTYnduLA');
INSERT INTO `users` VALUES (1245, 'X45gDKsDq2');
INSERT INTO `users` VALUES (1246, 'j3WmRCIJJu');
INSERT INTO `users` VALUES (1247, 'C6Ie9zbHTr');
INSERT INTO `users` VALUES (1248, '6euP1BzVj9');
INSERT INTO `users` VALUES (1249, 'R71KJGHlsX');
INSERT INTO `users` VALUES (1250, '5jmbPADM94');
INSERT INTO `users` VALUES (1251, 'bIsL0mMIeb');
INSERT INTO `users` VALUES (1252, 'L95KTWlqEo');
INSERT INTO `users` VALUES (1253, 'wuKajNfiEC');
INSERT INTO `users` VALUES (1254, 'gTEFN7j9yy');
INSERT INTO `users` VALUES (1255, 'TSqwCrCH9e');
INSERT INTO `users` VALUES (1256, 'BoXxLDvOrW');
INSERT INTO `users` VALUES (1257, '29Ykv79zCP');
INSERT INTO `users` VALUES (1258, 'AKWVjwj5ZB');
INSERT INTO `users` VALUES (1259, 'aweA7JzF4O');
INSERT INTO `users` VALUES (1260, 'MBnJ7FdVzn');
INSERT INTO `users` VALUES (1261, 'swpXOXfCCO');
INSERT INTO `users` VALUES (1262, '4uhb6ubcHS');
INSERT INTO `users` VALUES (1263, '3TSVcnPIL9');
INSERT INTO `users` VALUES (1264, 'cKhRZv1Kho');
INSERT INTO `users` VALUES (1265, 'eSb9CDgasp');
INSERT INTO `users` VALUES (1266, 'JejIyHrqdE');
INSERT INTO `users` VALUES (1267, 'BpDiQM42MH');
INSERT INTO `users` VALUES (1268, '55lYUgDT4F');
INSERT INTO `users` VALUES (1269, 'Weyp35BVvc');
INSERT INTO `users` VALUES (1270, '1WSXxshHwR');
INSERT INTO `users` VALUES (1271, 'kZTdtwNCX6');
INSERT INTO `users` VALUES (1272, 'MgynNY58Gd');
INSERT INTO `users` VALUES (1273, 'Yt6Hz6ntsJ');
INSERT INTO `users` VALUES (1274, 'nOBZ150EZh');
INSERT INTO `users` VALUES (1275, 'T3MS5S9Vsc');
INSERT INTO `users` VALUES (1276, 'E7HkAmgKX3');
INSERT INTO `users` VALUES (1277, 'awuAc57EKk');
INSERT INTO `users` VALUES (1278, 'ANyP7eKp6G');
INSERT INTO `users` VALUES (1279, 'sKizAUpfKl');
INSERT INTO `users` VALUES (1280, '0pokgNJQ6N');
INSERT INTO `users` VALUES (1281, 's1NZn7V2gr');
INSERT INTO `users` VALUES (1282, 'xHemM0X4Kl');
INSERT INTO `users` VALUES (1283, '4D12GM3VbP');
INSERT INTO `users` VALUES (1284, 'OnNAxtcknj');
INSERT INTO `users` VALUES (1285, 'eyhYElZjTt');
INSERT INTO `users` VALUES (1286, 'g075C0tOIY');
INSERT INTO `users` VALUES (1287, 'VoWcdOJ1sR');
INSERT INTO `users` VALUES (1288, 'PooFkHIxfB');
INSERT INTO `users` VALUES (1289, 'rnqFdywt0m');
INSERT INTO `users` VALUES (1290, 'j8XKbCziGk');
INSERT INTO `users` VALUES (1291, 'xoZxGGyGrT');
INSERT INTO `users` VALUES (1292, 'RODb09JF7p');
INSERT INTO `users` VALUES (1293, 'fHjUxJINv3');
INSERT INTO `users` VALUES (1294, 'k8vCghuwWj');
INSERT INTO `users` VALUES (1295, 'spOiALjzJi');
INSERT INTO `users` VALUES (1296, 'KUw19NoY3w');
INSERT INTO `users` VALUES (1297, '28tbafIdT2');
INSERT INTO `users` VALUES (1298, 'XiUmlDmVbk');
INSERT INTO `users` VALUES (1299, 'CFMKwOzRYX');
INSERT INTO `users` VALUES (12345, 'asdfghj');
INSERT INTO `users` VALUES (123456, 'cedfc');
INSERT INTO `users` VALUES (23456789, 'sdfghj');

SET FOREIGN_KEY_CHECKS = 1;
