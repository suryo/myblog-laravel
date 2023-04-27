/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : db_spmi

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 28/04/2023 01:03:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for berkas
-- ----------------------------
DROP TABLE IF EXISTS `berkas`;
CREATE TABLE `berkas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `element_id` bigint NOT NULL DEFAULT 0,
  `prodi_id` bigint NULL DEFAULT 0,
  `l1_id` int NOT NULL DEFAULT 0,
  `l2_id` int NULL DEFAULT 0,
  `l3_id` int NULL DEFAULT 0,
  `l4_id` int NULL DEFAULT 0,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dec` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `score` decimal(3, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of berkas
-- ----------------------------
INSERT INTO `berkas` VALUES (1, 1, 1, 1, 0, 0, 0, 'Berkas Kondisi Ekternal Kampus 2021', '1935ec931db77356897d54059464170a.pdf', '<p>Disusun Oleh</p>\r\n\r\n<ul>\r\n	<li>RICKY MARTIN GINTING</li>\r\n</ul>', 3.00);
INSERT INTO `berkas` VALUES (2, 2, 1, 2, 0, 0, 0, 'Profil', 'acd181fe226ec54051c7e13385b2d37e.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (3, 3, 1, 3, 3, 0, 0, 'Visi Misi', 'acd181fe226ec54051c7e13385b2d37e.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (4, 4, 1, 3, 3, 0, 0, 'Mekanisme', 'a9d28dc9dfe44fa69a1e5ccb97defd4c.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (5, 5, 1, 3, 3, 0, 0, 'Strategi', 'fff71920ef115b2072ba519386c95b31.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (6, 8, 1, 4, 4, 3, 0, 'UPPS', '237a7029c300eca8f1f07032bcb25882.pdf', NULL, 2.00);
INSERT INTO `berkas` VALUES (7, 10, 1, 4, 5, 0, 0, 'UPPS Indikator', '2c387f7b6fb106e8e11d54442d1fd093.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (8, 11, 1, 4, 6, 0, 0, 'Analisa', '00a7b43a991db01234e69f2e9e67cc31.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (9, 12, 1, 4, 7, 0, 0, 'UPPS SPMI', '406e3ad08bc6773d98f88f4da5c8380f.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (10, 13, 1, 4, 8, 0, 0, 'UPPS Aspek', 'e87ce0d5aa4c4a7d37d903fb4d18b997.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (11, 30, 1, 6, 10, 9, 0, 'UPPS DTPS', 'acd181fe226ec54051c7e13385b2d37e.pdf', NULL, 2.00);
INSERT INTO `berkas` VALUES (12, 35, 1, 7, 11, 11, 0, 'PERSENTASI REALISASI', 'acd181fe226ec54051c7e13385b2d37e.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (13, 36, 1, 7, 11, 11, 0, 'Dana dapat menjamin keberlangsungan operasional tridharma dan sebagian kecil pengembanga', 'acd181fe226ec54051c7e13385b2d37e.pdf', NULL, 2.00);
INSERT INTO `berkas` VALUES (14, 36, 1, 7, 11, 11, 0, 'operasional tridharma serta pengembangan 3 tahun terakhir', 'acd181fe226ec54051c7e13385b2d37e.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (15, 37, 1, 7, 11, 12, 0, 'Upps Akademik', 'acd181fe226ec54051c7e13385b2d37e.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (16, 39, 1, 8, 12, 14, 0, 'Proses Pembelajaran', 'acd181fe226ec54051c7e13385b2d37e.pdf', NULL, 1.00);
INSERT INTO `berkas` VALUES (17, 43, 1, 8, 12, 17, 0, 'Bukti Sahih', 'acd181fe226ec54051c7e13385b2d37e.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (18, 46, 1, 8, 12, 20, 0, 'Kegiatan Ilmiah', 'a9d28dc9dfe44fa69a1e5ccb97defd4c.pdf', NULL, 2.00);
INSERT INTO `berkas` VALUES (19, 48, 1, 9, 13, 22, 0, 'UPPS Memenuhi unsur 1,2 dan 3', '337437d02e1dbe9c405d435a587e94a5.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (20, 50, 1, 10, 14, 24, 0, 'Pkm dosen dan mahasiswa', '1ac305b9f5b9496babdc63ae9f1ee78a.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (21, 52, 1, 11, 15, 26, 0, 'Analisa memenuhi 3 aspek', '53199fca192cde8d5675c35abc665aef.pdf', NULL, 4.00);
INSERT INTO `berkas` VALUES (22, 66, 1, 12, 16, 0, 0, '2021', '53199fca192cde8d5675c35abc665aef.pdf', NULL, 2.00);
INSERT INTO `berkas` VALUES (23, 66, 1, 12, 16, 0, 0, '2022', 'efee108ea869aa9f24608740e355d8f8.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (24, 67, 1, 12, 17, 0, 0, 'SWOT 2021', '337437d02e1dbe9c405d435a587e94a5.pdf', NULL, 2.00);
INSERT INTO `berkas` VALUES (25, 67, 1, 12, 17, 0, 0, 'SWOT 2022', 'ebd35afc446407e75f7a90d94d243efb.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (26, 68, 1, 12, 18, 0, 0, 'UPPS Swot', 'e87ce0d5aa4c4a7d37d903fb4d18b997.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (27, 69, 1, 12, 19, 0, 0, 'Kebijakan dan Upaya', '38f849a8a1485f77483db5f609c07672.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (28, 7, 1, 4, 4, 2, 0, 'Komitmen dan Kapabilitas UPPS', 'acd181fe226ec54051c7e13385b2d37e.pdf', NULL, 2.67);
INSERT INTO `berkas` VALUES (29, 345, 6, 24, 38, 0, 0, 'Program Keberlanjutan MI 2022', 'ec86a48a672f1693baf8027f031400f9.pdf', '<p>Program Keberlanjutan MI 2022</p>', 4.00);
INSERT INTO `berkas` VALUES (30, 139, 3, 1, 0, 0, 0, 'Kondisi Eksternal TIF 2022', 'c3253cf17c9dea24ebb0ac1b2420c713.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (31, 140, 3, 2, 0, 0, 0, 'Profil Unit Pengelola Program Studi TIF', 'fff71920ef115b2072ba519386c95b31.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (32, 141, 3, 3, 3, 0, 0, 'Indikator Kinerja Utama TIF', '63c8c70144046bc9176626ccfbcb6989.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (33, 142, 3, 3, 3, 0, 0, 'Demo', '587f1dfa80d3fa7f18f30bc66e5a47f6.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (34, 143, 3, 3, 3, 0, 0, 'Demo Dokument', '53199fca192cde8d5675c35abc665aef.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (35, 146, 3, 4, 4, 3, 0, 'Surat', '81e9c59976144bb0e85f355e38474661.pdf', NULL, 2.00);
INSERT INTO `berkas` VALUES (36, 148, 3, 4, 5, 0, 0, 'Revisi', 'a09d5a137119948520a11d1bbaede264.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (37, 149, 3, 4, 6, 0, 0, 'Dokument Analisa TIF', '1d75333dfe2331daa8da502dcb33fe97.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (38, 150, 3, 4, 7, 0, 0, 'Sertifikat TIF', 'e5fcbae6828b4f1e0247c6203c486399.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (39, 151, 3, 4, 8, 0, 0, 'TIF', 'b13915cd5ae2b27587e518629ceb8d91.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (40, 168, 3, 6, 10, 9, 0, 'UPPS TIF', '9361d73b904f702974d57e83844fbe04.pdf', NULL, 2.00);
INSERT INTO `berkas` VALUES (41, 173, 3, 7, 11, 11, 0, 'Keuangan TIF', 'e5fcbae6828b4f1e0247c6203c486399.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (42, 174, 3, 7, 11, 11, 0, 'Dana TIF-1', 'a9d28dc9dfe44fa69a1e5ccb97defd4c.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (43, 174, 3, 7, 11, 11, 0, 'Dana TIF-2', 'f13fe4f38dda8fd441a1820a36a36480.pdf', NULL, 2.00);
INSERT INTO `berkas` VALUES (44, 175, 3, 7, 11, 12, 0, 'Saran TIF 2022', 'e75d19313aae883b5636ad892a23c177.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (45, 177, 3, 8, 12, 14, 0, 'Karakteristik Proses Pembelajaran TIF', '817f35677d84f7c6c5d539f280415d32.pdf', NULL, 1.00);
INSERT INTO `berkas` VALUES (46, 181, 3, 8, 12, 17, 0, 'Monitoring TIF', '10dea00eae9c7a806a7eda381c64ce7a.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (47, 184, 3, 8, 12, 20, 0, 'Suasana Akademik', 'a9d28dc9dfe44fa69a1e5ccb97defd4c.pdf', NULL, 2.00);
INSERT INTO `berkas` VALUES (48, 186, 3, 9, 13, 22, 0, 'UPPS 2022 TIF', '82ab001003363bbba88b9223eb8ea630.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (49, 188, 3, 10, 14, 24, 0, 'PKM TIF', '8ad03a2f0b6bd43d0caf2672cff4a415.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (50, 190, 3, 11, 15, 26, 0, 'Luaran TIF', 'cb6aca79e58bf43f400552fe4cc78489.pdf', NULL, 4.00);
INSERT INTO `berkas` VALUES (51, 204, 3, 12, 16, 0, 0, 'Karakteristik Proses Pembelajaran -1', 'f323fe00768d71199edc5c1f1cf65277.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (52, 204, 3, 12, 16, 0, 0, 'Karakteristik Proses Pembelajaran -2', 'fb5aec798eb1a020c057d456dd8890e8.pdf', NULL, 2.00);
INSERT INTO `berkas` VALUES (53, 205, 3, 12, 17, 0, 0, 'Analisis SWOT atau Analisis Lain yang Relevan -1', '38f849a8a1485f77483db5f609c07672.pdf', NULL, 2.00);
INSERT INTO `berkas` VALUES (54, 205, 3, 12, 17, 0, 0, 'Analisis SWOT atau Analisis Lain yang Relevan -2', 'fa0260d30793d4178d2c2ff5ce4c932e.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (55, 206, 3, 12, 18, 0, 0, 'Program Pengembangan', '1935ec931db77356897d54059464170a.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (56, 207, 3, 12, 19, 0, 0, 'Program Keberlanjutan', '1935ec931db77356897d54059464170a.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (57, 208, 4, 1, 0, 0, 0, 'DOKUMENT DUMMY FOR LPM SMART SISTEM', '17a8730fdf99ce37bac210c3a7c01ca0.pdf', '<p><strong>DOKUMENT DUMMY FOR LPM SMART SISTEM</strong></p>\r\n\r\n<p><strong>DOKUMENT DUMMY FOR LPM SMART SISTEM</strong></p>\r\n\r\n<p><strong>DOKUMENT DUMMY FOR LPM SMART SISTEM</strong></p>\r\n\r\n<p><strong>DOKUMENT DUMMY FOR LPM SMART SISTEM</strong></p>', 4.00);
INSERT INTO `berkas` VALUES (58, 209, 4, 2, 0, 0, 0, 'Profil Unit Pengelola Program Studi BD', '17a8730fdf99ce37bac210c3a7c01ca0.pdf', NULL, 2.00);
INSERT INTO `berkas` VALUES (59, 210, 4, 3, 3, 0, 0, 'Indikator Kinerja Utama BD', '17a8730fdf99ce37bac210c3a7c01ca0.pdf', NULL, 4.00);
INSERT INTO `berkas` VALUES (60, 213, 4, 4, 4, 1, 0, 'Sistem Tata Pamong - BD', '17a8730fdf99ce37bac210c3a7c01ca0.pdf', NULL, 4.00);
INSERT INTO `berkas` VALUES (61, 212, 4, 3, 3, 0, 0, 'Indikator Kinerja Utama BD -2', '17a8730fdf99ce37bac210c3a7c01ca0.pdf', NULL, 4.00);
INSERT INTO `berkas` VALUES (62, 215, 4, 4, 4, 3, 0, 'Kerjasama', '17a8730fdf99ce37bac210c3a7c01ca0.pdf', NULL, 3.00);
INSERT INTO `berkas` VALUES (63, 227, 4, 6, 10, 7, 0, 'Profil Dosen', '17a8730fdf99ce37bac210c3a7c01ca0.pdf', NULL, 4.00);
INSERT INTO `berkas` VALUES (64, 237, 4, 6, 10, 9, 0, 'Pengembangan Dosen BD', '17a8730fdf99ce37bac210c3a7c01ca0.pdf', NULL, 4.00);
INSERT INTO `berkas` VALUES (65, 242, 4, 7, 11, 11, 0, 'Keuangan BD', '17a8730fdf99ce37bac210c3a7c01ca0.pdf', NULL, 1.00);
INSERT INTO `berkas` VALUES (66, 75, 2, 4, 4, 1, 0, 'Sistem Tata Pamong - RPL', '17a8730fdf99ce37bac210c3a7c01ca0.pdf', NULL, 3.99);
INSERT INTO `berkas` VALUES (67, 77, 2, 4, 4, 3, 0, 'Kerjasama - RPL', '17a8730fdf99ce37bac210c3a7c01ca0.pdf', NULL, 4.00);
INSERT INTO `berkas` VALUES (68, 80, 2, 4, 6, 0, 0, 'Evaluasi Capaian Kinerja', '17a8730fdf99ce37bac210c3a7c01ca0.pdf', NULL, 4.00);
INSERT INTO `berkas` VALUES (69, 82, 2, 4, 8, 0, 0, 'Kepuasan pemangku kepentingan', '17a8730fdf99ce37bac210c3a7c01ca0.pdf', NULL, 4.00);
INSERT INTO `berkas` VALUES (70, 346, 5, 25, 0, 0, 0, 'Kondisi Eksternal RKJ', '17a8730fdf99ce37bac210c3a7c01ca0.pdf', '<p>dec</p>', 4.00);

-- ----------------------------
-- Table structure for elements
-- ----------------------------
DROP TABLE IF EXISTS `elements`;
CREATE TABLE `elements`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `prodi_id` bigint NOT NULL DEFAULT 0,
  `l1_id` int NOT NULL DEFAULT 0,
  `l2_id` int NULL DEFAULT 0,
  `l3_id` int NULL DEFAULT 0,
  `l4_id` int NULL DEFAULT 0,
  `bobot` decimal(3, 2) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `indikator_id` bigint UNSIGNED NULL DEFAULT NULL,
  `score_berkas` decimal(3, 2) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `score_hitung` decimal(4, 2) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `count_berkas` bigint NULL DEFAULT NULL,
  `min_akreditasi` decimal(3, 2) UNSIGNED ZEROFILL NULL DEFAULT 0.00,
  `status_akreditasi` enum('F','Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'F',
  `min_unggul` decimal(3, 2) UNSIGNED NULL DEFAULT 0.00,
  `status_unggul` enum('F','Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'F',
  `min_baik` decimal(3, 2) UNSIGNED NULL DEFAULT 0.00,
  `status_baik` enum('F','Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'F',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 415 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of elements
-- ----------------------------
INSERT INTO `elements` VALUES (1, 1, 1, 0, 0, 0, 1.00, 1, 3.00, 03.00, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (2, 1, 2, 0, 0, 0, 1.00, 2, 3.00, 03.00, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (3, 1, 3, 3, 0, 0, 0.51, 3, 3.00, 01.53, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (4, 1, 3, 3, 0, 0, 1.02, 4, 3.00, 03.07, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (5, 1, 3, 3, 0, 0, 1.53, 5, 3.00, 04.60, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (6, 1, 4, 4, 1, 0, 0.34, 6, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (7, 1, 4, 4, 2, 0, 0.34, 7, 2.67, 00.91, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (8, 1, 4, 4, 3, 0, 0.68, 8, 2.00, 01.36, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (9, 1, 4, 4, 3, 0, 0.34, 9, 4.00, 01.36, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (10, 1, 4, 5, 0, 0, 0.68, 10, 3.00, 02.04, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (11, 1, 4, 6, 0, 0, 1.02, 11, 3.00, 03.07, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (12, 1, 4, 7, 0, 0, 1.36, 12, 3.00, 04.09, 1, 2.00, 'Y', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (13, 1, 4, 8, 0, 0, 1.36, 13, 3.00, 04.09, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (14, 1, 5, 9, 4, 0, 4.60, 14, 1.60, 07.36, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (15, 1, 5, 9, 5, 0, 3.07, 15, 2.00, 06.13, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (16, 1, 5, 9, 6, 0, 1.53, 16, 1.67, 02.56, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (17, 1, 6, 10, 7, 0, 0.74, 17, 4.00, 02.97, 0, 2.00, 'Y', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (18, 1, 6, 10, 7, 0, 0.99, 18, 2.00, 01.98, 0, 0.00, 'F', 3.50, 'N', 3.00, 'N');
INSERT INTO `elements` VALUES (19, 1, 6, 10, 7, 0, 0.50, 19, 2.57, 01.27, 0, 0.00, 'F', 3.50, 'N', 3.00, 'N');
INSERT INTO `elements` VALUES (20, 1, 6, 10, 7, 0, 0.50, 20, 0.51, 00.25, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (21, 1, 6, 10, 7, 0, 0.99, 21, 4.00, 03.96, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (22, 1, 6, 10, 7, 0, 0.25, 22, 4.00, 00.99, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (23, 1, 6, 10, 7, 0, 0.50, 23, 4.00, 01.98, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (24, 1, 6, 10, 8, 0, 0.81, 24, 4.00, 03.24, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (25, 1, 6, 10, 8, 0, 0.81, 25, 4.00, 03.24, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (26, 1, 6, 10, 8, 0, 0.41, 26, 2.00, 00.81, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (27, 1, 6, 10, 8, 0, 0.81, 27, 4.00, 03.24, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (28, 1, 6, 10, 8, 0, 0.81, 28, 4.00, 03.24, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (29, 1, 6, 10, 8, 0, 0.81, 29, 2.33, 01.89, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (30, 1, 6, 10, 9, 0, 2.23, 30, 2.00, 04.46, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (31, 1, 6, 10, 10, 0, 1.12, 31, 2.42, 02.69, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (32, 1, 7, 11, 11, 0, 0.77, 32, 2.32, 01.78, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (33, 1, 7, 11, 11, 0, 0.77, 33, 4.00, 03.07, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (34, 1, 7, 11, 11, 0, 0.38, 34, 4.00, 01.53, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (35, 1, 7, 11, 11, 0, 0.38, 35, 3.00, 01.15, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (36, 1, 7, 11, 11, 0, 0.77, 36, 2.50, 01.92, 2, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (37, 1, 7, 11, 12, 0, 3.07, 37, 3.00, 09.20, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (38, 1, 8, 12, 13, 0, 2.51, 38, 2.60, 06.52, 0, 2.00, 'Y', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (39, 1, 8, 12, 14, 0, 0.84, 39, 1.00, 00.84, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (40, 1, 8, 12, 15, 0, 1.67, 40, 3.00, 05.02, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (41, 1, 8, 12, 16, 0, 1.12, 41, 3.00, 03.35, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (42, 1, 8, 12, 16, 0, 0.56, 42, 3.43, 01.91, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (43, 1, 8, 12, 17, 0, 2.51, 43, 3.00, 07.53, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (44, 1, 8, 12, 18, 0, 1.67, 44, 2.00, 03.35, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (45, 1, 8, 12, 19, 0, 1.67, 45, 4.00, 06.69, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (46, 1, 8, 12, 20, 0, 2.51, 46, 2.00, 05.02, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (47, 1, 8, 12, 21, 0, 3.35, 47, 3.33, 11.15, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (48, 1, 9, 13, 22, 0, 1.53, 48, 3.00, 04.60, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (49, 1, 9, 13, 23, 0, 3.07, 49, 4.00, 12.28, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (50, 1, 10, 14, 24, 0, 0.51, 50, 3.00, 01.54, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (51, 1, 10, 14, 25, 0, 1.02, 51, 4.00, 04.09, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (52, 1, 11, 15, 26, 0, 1.92, 52, 4.00, 07.68, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (53, 1, 11, 15, 26, 0, 1.92, 53, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (54, 1, 11, 15, 26, 0, 2.88, 54, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (55, 1, 11, 15, 26, 0, 0.96, 55, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (56, 1, 11, 15, 26, 0, 1.92, 56, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (57, 1, 11, 15, 26, 0, 1.92, 57, 1.00, 01.93, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (58, 1, 11, 15, 26, 0, 1.92, 58, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (59, 1, 11, 15, 26, 0, 2.88, 59, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (60, 1, 11, 15, 26, 0, 2.88, 60, 0.00, 00.00, 0, 0.00, 'F', 3.50, 'N', 3.00, 'N');
INSERT INTO `elements` VALUES (61, 1, 11, 15, 26, 0, 1.92, 61, 0.00, 00.00, 0, 0.00, 'F', 3.50, 'N', 3.00, 'N');
INSERT INTO `elements` VALUES (62, 1, 11, 15, 26, 0, 1.92, 62, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (63, 1, 11, 15, 26, 0, 3.83, 63, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (64, 1, 11, 15, 27, 0, 2.88, 64, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (65, 1, 11, 15, 27, 0, 0.96, 65, 4.00, 03.83, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (66, 1, 12, 16, 0, 0, 1.50, 66, 2.50, 03.75, 2, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (67, 1, 12, 17, 0, 0, 2.00, 67, 2.50, 05.00, 2, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (68, 1, 12, 18, 0, 0, 1.50, 68, 3.00, 04.50, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (69, 1, 12, 19, 0, 0, 1.00, 69, 3.00, 03.00, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (70, 2, 1, 0, 0, 0, 1.00, 1, 4.00, 04.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (71, 2, 2, 0, 0, 0, 1.00, 2, 4.00, 04.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (72, 2, 3, 3, 0, 0, 0.51, 3, 3.00, 01.53, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (73, 2, 3, 3, 0, 0, 1.02, 4, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (74, 2, 3, 3, 0, 0, 1.53, 5, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (75, 2, 4, 4, 1, 0, 0.34, 6, 3.99, 01.36, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (76, 2, 4, 4, 2, 0, 0.34, 7, 4.00, 01.36, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (77, 2, 4, 4, 3, 0, 0.68, 8, 4.00, 02.72, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (78, 2, 4, 4, 3, 0, 0.34, 9, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (79, 2, 4, 5, 0, 0, 0.68, 10, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (80, 2, 4, 6, 0, 0, 1.02, 11, 4.00, 04.08, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (81, 2, 4, 7, 0, 0, 1.36, 12, 4.00, 05.44, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (82, 2, 4, 8, 0, 0, 1.36, 13, 4.00, 05.44, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (83, 2, 5, 9, 4, 0, 4.60, 14, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (84, 2, 5, 9, 5, 0, 3.07, 15, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (85, 2, 5, 9, 6, 0, 1.53, 16, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (86, 2, 6, 10, 7, 0, 0.74, 17, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (87, 2, 6, 10, 7, 0, 0.99, 18, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (88, 2, 6, 10, 7, 0, 0.50, 19, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (89, 2, 6, 10, 7, 0, 0.50, 20, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (90, 2, 6, 10, 7, 0, 0.99, 21, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (91, 2, 6, 10, 7, 0, 0.25, 22, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (92, 2, 6, 10, 7, 0, 0.50, 23, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (93, 2, 6, 10, 8, 0, 0.81, 24, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (94, 2, 6, 10, 8, 0, 0.81, 25, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (95, 2, 6, 10, 8, 0, 0.41, 26, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (96, 2, 6, 10, 8, 0, 0.81, 27, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (97, 2, 6, 10, 8, 0, 0.81, 28, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (98, 2, 6, 10, 8, 0, 0.81, 29, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (99, 2, 6, 10, 9, 0, 2.23, 30, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (100, 2, 6, 10, 10, 0, 1.12, 31, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (101, 2, 7, 11, 11, 0, 0.77, 32, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (102, 2, 7, 11, 11, 0, 0.77, 33, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (103, 2, 7, 11, 11, 0, 0.38, 34, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (104, 2, 7, 11, 11, 0, 0.38, 35, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (105, 2, 7, 11, 11, 0, 0.77, 36, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (106, 2, 7, 11, 12, 0, 3.07, 37, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (107, 2, 8, 12, 13, 0, 2.51, 38, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (108, 2, 8, 12, 14, 0, 0.84, 39, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (109, 2, 8, 12, 15, 0, 1.67, 40, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (110, 2, 8, 12, 16, 0, 1.12, 41, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (111, 2, 8, 12, 16, 0, 0.56, 42, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (112, 2, 8, 12, 17, 0, 2.51, 43, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (113, 2, 8, 12, 18, 0, 1.67, 44, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (114, 2, 8, 12, 19, 0, 1.67, 45, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (115, 2, 8, 12, 20, 0, 2.51, 46, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (116, 2, 8, 12, 21, 0, 3.35, 47, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (117, 2, 9, 13, 22, 0, 1.53, 48, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (118, 2, 9, 13, 23, 0, 3.07, 49, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (119, 2, 10, 14, 24, 0, 0.51, 50, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (120, 2, 10, 14, 25, 0, 1.02, 51, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (121, 2, 11, 15, 26, 0, 1.92, 52, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (122, 2, 11, 15, 26, 0, 1.92, 53, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (123, 2, 11, 15, 26, 0, 2.88, 54, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (124, 2, 11, 15, 26, 0, 0.96, 55, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (125, 2, 11, 15, 26, 0, 1.92, 56, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (126, 2, 11, 15, 26, 0, 1.92, 57, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (127, 2, 11, 15, 26, 0, 1.92, 58, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (128, 2, 11, 15, 26, 0, 2.88, 59, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (129, 2, 11, 15, 26, 0, 2.88, 60, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (130, 2, 11, 15, 26, 0, 1.92, 61, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (131, 2, 11, 15, 26, 0, 1.92, 62, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (132, 2, 11, 15, 26, 0, 3.83, 63, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (133, 2, 11, 15, 27, 0, 2.88, 64, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (134, 2, 11, 15, 27, 0, 0.96, 65, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (135, 2, 12, 16, 0, 0, 1.50, 66, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (136, 2, 12, 17, 0, 0, 2.00, 67, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (137, 2, 12, 18, 0, 0, 1.50, 68, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (138, 2, 12, 19, 0, 0, 1.00, 69, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (139, 3, 1, 0, 0, 0, 1.00, 1, 3.00, 03.00, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (140, 3, 2, 0, 0, 0, 1.00, 2, 3.00, 03.00, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (141, 3, 3, 3, 0, 0, 0.51, 3, 3.00, 01.53, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (142, 3, 3, 3, 0, 0, 1.02, 4, 3.00, 03.06, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (143, 3, 3, 3, 0, 0, 1.53, 5, 3.00, 04.59, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (144, 3, 4, 4, 1, 0, 0.34, 6, 3.67, 01.25, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (145, 3, 4, 4, 2, 0, 0.34, 7, 2.67, 00.91, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (146, 3, 4, 4, 3, 0, 0.68, 8, 2.00, 01.36, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (147, 3, 4, 4, 3, 0, 0.34, 9, 4.00, 01.36, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (148, 3, 4, 5, 0, 0, 0.68, 10, 3.00, 02.04, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (149, 3, 4, 6, 0, 0, 1.02, 11, 3.00, 03.06, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (150, 3, 4, 7, 0, 0, 1.36, 12, 3.00, 04.08, 1, 2.00, 'Y', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (151, 3, 4, 8, 0, 0, 1.36, 13, 3.00, 04.08, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (152, 3, 5, 9, 4, 0, 4.60, 14, 1.60, 07.36, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (153, 3, 5, 9, 5, 0, 3.07, 15, 2.00, 06.14, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (154, 3, 5, 9, 6, 0, 1.53, 16, 1.67, 02.56, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (155, 3, 6, 10, 7, 0, 0.74, 17, 4.00, 02.96, 0, 2.00, 'Y', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (156, 3, 6, 10, 7, 0, 0.99, 18, 2.00, 01.98, 0, 0.00, 'F', 3.50, 'N', 3.00, 'N');
INSERT INTO `elements` VALUES (157, 3, 6, 10, 7, 0, 0.50, 19, 2.57, 01.29, 0, 0.00, 'F', 3.50, 'N', 3.00, 'N');
INSERT INTO `elements` VALUES (158, 3, 6, 10, 7, 0, 0.50, 20, 0.51, 00.26, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (159, 3, 6, 10, 7, 0, 0.99, 21, 4.00, 03.96, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (160, 3, 6, 10, 7, 0, 0.25, 22, 4.00, 01.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (161, 3, 6, 10, 7, 0, 0.50, 23, 4.00, 02.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (162, 3, 6, 10, 8, 0, 0.81, 24, 4.00, 03.24, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (163, 3, 6, 10, 8, 0, 0.81, 25, 4.00, 03.24, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (164, 3, 6, 10, 8, 0, 0.41, 26, 2.00, 00.82, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (165, 3, 6, 10, 8, 0, 0.81, 27, 4.00, 03.24, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (166, 3, 6, 10, 8, 0, 0.81, 28, 4.00, 03.24, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (167, 3, 6, 10, 8, 0, 0.81, 29, 2.33, 01.89, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (168, 3, 6, 10, 9, 0, 2.23, 30, 2.00, 04.46, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (169, 3, 6, 10, 10, 0, 1.12, 31, 2.42, 02.71, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (170, 3, 7, 11, 11, 0, 0.77, 32, 2.32, 01.79, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (171, 3, 7, 11, 11, 0, 0.77, 33, 4.00, 03.08, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (172, 3, 7, 11, 11, 0, 0.38, 34, 4.00, 01.52, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (173, 3, 7, 11, 11, 0, 0.38, 35, 3.00, 01.14, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (174, 3, 7, 11, 11, 0, 0.77, 36, 2.50, 01.93, 2, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (175, 3, 7, 11, 12, 0, 3.07, 37, 3.00, 09.21, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (176, 3, 8, 12, 13, 0, 2.51, 38, 2.60, 06.53, 0, 2.00, 'Y', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (177, 3, 8, 12, 14, 0, 0.84, 39, 1.00, 00.84, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (178, 3, 8, 12, 15, 0, 1.67, 40, 3.00, 05.01, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (179, 3, 8, 12, 16, 0, 1.12, 41, 3.00, 03.36, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (180, 3, 8, 12, 16, 0, 0.56, 42, 3.43, 01.92, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (181, 3, 8, 12, 17, 0, 2.51, 43, 3.00, 07.53, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (182, 3, 8, 12, 18, 0, 1.67, 44, 2.00, 03.34, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (183, 3, 8, 12, 19, 0, 1.67, 45, 4.00, 06.68, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (184, 3, 8, 12, 20, 0, 2.51, 46, 2.00, 05.02, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (185, 3, 8, 12, 21, 0, 3.35, 47, 3.33, 11.16, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (186, 3, 9, 13, 22, 0, 1.53, 48, 3.00, 04.59, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (187, 3, 9, 13, 23, 0, 3.07, 49, 4.00, 12.28, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (188, 3, 10, 14, 24, 0, 0.51, 50, 3.00, 01.53, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (189, 3, 10, 14, 25, 0, 1.02, 51, 4.00, 04.08, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (190, 3, 11, 15, 26, 0, 1.92, 52, 4.00, 07.68, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (191, 3, 11, 15, 26, 0, 1.92, 53, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (192, 3, 11, 15, 26, 0, 2.88, 54, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (193, 3, 11, 15, 26, 0, 0.96, 55, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (194, 3, 11, 15, 26, 0, 1.92, 56, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (195, 3, 11, 15, 26, 0, 1.92, 57, 1.00, 01.92, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (196, 3, 11, 15, 26, 0, 1.92, 58, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (197, 3, 11, 15, 26, 0, 2.88, 59, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (198, 3, 11, 15, 26, 0, 2.88, 60, 0.00, 00.00, 0, 0.00, 'F', 3.50, 'N', 3.00, 'N');
INSERT INTO `elements` VALUES (199, 3, 11, 15, 26, 0, 1.92, 61, 0.00, 00.00, 0, 0.00, 'F', 3.50, 'N', 3.00, 'N');
INSERT INTO `elements` VALUES (200, 3, 11, 15, 26, 0, 1.92, 62, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (201, 3, 11, 15, 26, 0, 3.83, 63, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (202, 3, 11, 15, 27, 0, 2.88, 64, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (203, 3, 11, 15, 27, 0, 0.96, 65, 4.00, 03.84, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (204, 3, 12, 16, 0, 0, 1.50, 66, 2.50, 03.75, 2, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (205, 3, 12, 17, 0, 0, 2.00, 67, 2.50, 05.00, 2, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (206, 3, 12, 18, 0, 0, 1.50, 68, 3.00, 04.50, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (207, 3, 12, 19, 0, 0, 1.00, 69, 3.00, 03.00, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (208, 4, 1, 0, 0, 0, 1.00, 1, 4.00, 04.00, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (209, 4, 2, 0, 0, 0, 1.00, 2, 2.00, 02.00, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (210, 4, 3, 3, 0, 0, 0.51, 3, 4.00, 02.04, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (211, 4, 3, 3, 0, 0, 1.02, 4, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (212, 4, 3, 3, 0, 0, 1.53, 5, 4.00, 06.12, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (213, 4, 4, 4, 1, 0, 0.34, 6, 3.90, 01.33, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (214, 4, 4, 4, 2, 0, 0.34, 7, 4.00, 01.36, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (215, 4, 4, 4, 3, 0, 0.68, 8, 3.00, 02.04, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (216, 4, 4, 4, 3, 0, 0.34, 9, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (217, 4, 4, 5, 0, 0, 0.68, 10, 2.00, 01.36, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (218, 4, 4, 6, 0, 0, 1.02, 11, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (219, 4, 4, 7, 0, 0, 1.36, 12, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (220, 4, 4, 8, 0, 0, 1.36, 13, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (221, 4, 5, 9, 4, 0, 4.60, 14, 4.00, 18.40, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (222, 4, 5, 9, 5, 0, 3.07, 15, 2.96, 09.09, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (223, 4, 5, 9, 6, 0, 1.53, 16, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (224, 4, 6, 10, 7, 0, 0.74, 17, 3.89, 02.88, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (225, 4, 6, 10, 7, 0, 0.99, 18, 4.00, 03.96, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (226, 4, 6, 10, 7, 0, 0.50, 19, 3.65, 01.83, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (227, 4, 6, 10, 7, 0, 0.50, 20, 4.00, 02.00, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (228, 4, 6, 10, 7, 0, 0.99, 21, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (229, 4, 6, 10, 7, 0, 0.25, 22, 2.50, 00.63, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (230, 4, 6, 10, 7, 0, 0.50, 23, 3.99, 02.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (231, 4, 6, 10, 8, 0, 0.81, 24, 4.00, 03.24, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (232, 4, 6, 10, 8, 0, 0.81, 25, 3.97, 03.22, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (233, 4, 6, 10, 8, 0, 0.41, 26, 3.50, 01.44, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (234, 4, 6, 10, 8, 0, 0.81, 27, 4.00, 03.24, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (235, 4, 6, 10, 8, 0, 0.81, 28, 3.80, 03.08, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (236, 4, 6, 10, 8, 0, 0.81, 29, 4.00, 03.24, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (237, 4, 6, 10, 9, 0, 2.23, 30, 4.00, 08.92, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (238, 4, 6, 10, 10, 0, 1.12, 31, 2.00, 02.24, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (239, 4, 7, 11, 11, 0, 0.77, 32, 3.89, 03.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (240, 4, 7, 11, 11, 0, 0.77, 33, 3.90, 03.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (241, 4, 7, 11, 11, 0, 0.38, 34, 4.00, 01.52, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (242, 4, 7, 11, 11, 0, 0.38, 35, 1.00, 00.38, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (243, 4, 7, 11, 11, 0, 0.77, 36, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (244, 4, 7, 11, 12, 0, 3.07, 37, 4.00, 12.28, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (245, 4, 8, 12, 13, 0, 2.51, 38, 2.90, 07.28, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (246, 4, 8, 12, 14, 0, 0.84, 39, 3.00, 02.52, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (247, 4, 8, 12, 15, 0, 1.67, 40, 3.95, 06.60, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (248, 4, 8, 12, 16, 0, 1.12, 41, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (249, 4, 8, 12, 16, 0, 0.56, 42, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (250, 4, 8, 12, 17, 0, 2.51, 43, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (251, 4, 8, 12, 18, 0, 1.67, 44, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (252, 4, 8, 12, 19, 0, 1.67, 45, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (253, 4, 8, 12, 20, 0, 2.51, 46, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (254, 4, 8, 12, 21, 0, 3.35, 47, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (255, 4, 9, 13, 22, 0, 1.53, 48, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (256, 4, 9, 13, 23, 0, 3.07, 49, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (257, 4, 10, 14, 24, 0, 0.51, 50, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (258, 4, 10, 14, 25, 0, 1.02, 51, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (259, 4, 11, 15, 26, 0, 1.92, 52, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (260, 4, 11, 15, 26, 0, 1.92, 53, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (261, 4, 11, 15, 26, 0, 2.88, 54, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (262, 4, 11, 15, 26, 0, 0.96, 55, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (263, 4, 11, 15, 26, 0, 1.92, 56, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (264, 4, 11, 15, 26, 0, 1.92, 57, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (265, 4, 11, 15, 26, 0, 1.92, 58, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (266, 4, 11, 15, 26, 0, 2.88, 59, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (267, 4, 11, 15, 26, 0, 2.88, 60, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (268, 4, 11, 15, 26, 0, 1.92, 61, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (269, 4, 11, 15, 26, 0, 1.92, 62, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (270, 4, 11, 15, 26, 0, 3.83, 63, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (271, 4, 11, 15, 27, 0, 2.88, 64, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (272, 4, 11, 15, 27, 0, 0.96, 65, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (273, 4, 12, 16, 0, 0, 1.50, 66, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (274, 4, 12, 17, 0, 0, 2.00, 67, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (275, 4, 12, 18, 0, 0, 1.50, 68, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (276, 4, 12, 19, 0, 0, 1.00, 69, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (277, 6, 13, 0, 0, 0, 1.00, 71, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (278, 6, 14, 0, 0, 0, 1.00, 72, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (279, 6, 15, 22, 0, 0, 0.51, 73, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (280, 6, 15, 22, 0, 0, 1.02, 74, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (281, 6, 15, 22, 0, 0, 1.53, 75, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (282, 6, 16, 23, 28, 0, 0.34, 76, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (283, 6, 16, 23, 29, 0, 0.34, 77, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (284, 6, 16, 23, 30, 0, 0.68, 78, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (285, 6, 16, 23, 30, 0, 0.34, 79, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (286, 6, 16, 24, 0, 0, 0.68, 80, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (287, 6, 16, 25, 0, 0, 1.02, 81, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (288, 6, 16, 26, 0, 0, 1.36, 82, 0.00, 00.00, 0, 2.00, 'N', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (289, 6, 16, 27, 0, 0, 1.36, 83, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (290, 6, 17, 28, 31, 0, 4.60, 84, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (291, 6, 17, 28, 32, 0, 3.07, 85, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (292, 6, 17, 28, 33, 0, 1.53, 86, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (293, 6, 18, 29, 34, 0, 0.74, 87, 0.00, 00.00, 0, 2.00, 'N', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (294, 6, 18, 29, 34, 0, 0.99, 88, 0.00, 00.00, 0, 0.00, 'F', 3.50, 'N', 3.00, 'N');
INSERT INTO `elements` VALUES (295, 6, 18, 29, 34, 0, 0.50, 89, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (296, 6, 18, 29, 34, 0, 0.50, 90, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (297, 6, 18, 29, 34, 0, 0.99, 91, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (298, 6, 18, 29, 34, 0, 0.25, 92, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (299, 6, 18, 29, 34, 0, 0.50, 93, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (300, 6, 18, 29, 35, 0, 0.81, 94, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (301, 6, 18, 29, 35, 0, 0.81, 95, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (302, 6, 18, 29, 35, 0, 0.41, 96, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (303, 6, 18, 29, 35, 0, 0.81, 97, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (304, 6, 18, 29, 35, 0, 0.81, 98, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (305, 6, 18, 29, 35, 0, 0.81, 99, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (306, 6, 18, 29, 36, 0, 2.23, 100, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (307, 6, 18, 29, 37, 0, 1.12, 101, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (308, 6, 19, 30, 38, 0, 0.77, 102, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (309, 6, 19, 30, 38, 0, 0.77, 103, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (310, 6, 19, 30, 38, 0, 0.38, 104, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (311, 6, 19, 30, 38, 0, 0.38, 105, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (312, 6, 19, 30, 38, 0, 0.77, 106, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (313, 6, 19, 30, 39, 0, 3.07, 107, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (314, 6, 20, 31, 40, 0, 2.51, 108, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (315, 6, 20, 31, 41, 0, 0.84, 109, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (316, 6, 20, 31, 42, 0, 1.67, 110, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (317, 6, 20, 31, 43, 0, 1.12, 111, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (318, 6, 20, 31, 43, 0, 0.56, 112, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (319, 6, 20, 31, 44, 0, 2.51, 113, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (320, 6, 20, 31, 45, 0, 1.67, 114, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (321, 6, 20, 31, 46, 0, 1.67, 115, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (322, 6, 20, 31, 47, 0, 2.51, 116, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (323, 6, 20, 31, 48, 0, 3.35, 117, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (324, 6, 21, 32, 49, 0, 1.53, 118, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (325, 6, 21, 32, 50, 0, 3.07, 119, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (326, 6, 22, 33, 51, 0, 0.51, 120, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (327, 6, 22, 33, 52, 0, 1.02, 121, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (328, 6, 23, 34, 53, 0, 1.92, 122, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (329, 6, 23, 34, 53, 0, 1.92, 123, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (330, 6, 23, 34, 53, 0, 2.88, 124, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (331, 6, 23, 34, 53, 0, 0.96, 125, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (332, 6, 23, 34, 53, 0, 1.92, 126, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (333, 6, 23, 34, 53, 0, 1.92, 127, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (334, 6, 23, 34, 53, 0, 1.92, 128, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (335, 6, 23, 34, 53, 0, 2.88, 129, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (336, 6, 23, 34, 53, 0, 2.88, 130, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (337, 6, 23, 34, 53, 0, 1.92, 131, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (338, 6, 23, 34, 53, 0, 1.92, 132, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (339, 6, 23, 34, 53, 0, 3.83, 133, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (340, 6, 23, 34, 54, 0, 2.88, 134, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (341, 6, 23, 34, 54, 0, 0.96, 135, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (342, 6, 24, 35, 0, 0, 1.50, 136, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (343, 6, 24, 36, 0, 0, 2.00, 137, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (344, 6, 24, 37, 0, 0, 1.50, 138, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (345, 6, 24, 38, 0, 0, 1.00, 139, 4.00, 04.00, 1, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (346, 5, 25, 0, 0, 0, 1.00, 141, 4.00, 04.00, 1, 3.00, 'Y', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (347, 5, 26, 0, 0, 0, 1.00, 142, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (348, 5, 27, 41, 0, 0, 0.51, 143, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (349, 5, 27, 41, 0, 0, 1.02, 144, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (350, 5, 27, 41, 0, 0, 1.53, 145, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (351, 5, 28, 42, 55, 0, 0.34, 146, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (352, 5, 28, 42, 56, 0, 0.34, 147, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (353, 5, 28, 42, 57, 0, 0.68, 148, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (354, 5, 28, 42, 57, 0, 0.34, 149, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (355, 5, 28, 43, 0, 0, 0.68, 150, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (356, 5, 28, 44, 0, 0, 1.02, 151, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (357, 5, 28, 45, 0, 0, 1.36, 152, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (358, 5, 28, 46, 0, 0, 1.36, 153, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (359, 5, 29, 47, 58, 0, 4.60, 154, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (360, 5, 29, 47, 59, 0, 3.07, 155, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (361, 5, 29, 47, 60, 0, 1.53, 156, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (362, 5, 30, 48, 61, 0, 0.74, 157, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (363, 5, 30, 48, 61, 0, 0.99, 158, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (364, 5, 30, 48, 61, 0, 0.50, 159, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (365, 5, 30, 48, 61, 0, 0.50, 160, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (366, 5, 30, 48, 61, 0, 0.99, 161, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (367, 5, 30, 48, 61, 0, 0.25, 162, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (368, 5, 30, 48, 61, 0, 0.50, 163, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (369, 5, 30, 48, 62, 0, 0.81, 164, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (370, 5, 30, 48, 62, 0, 0.81, 165, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (371, 5, 30, 48, 62, 0, 0.41, 166, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (372, 5, 30, 48, 62, 0, 0.81, 167, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (373, 5, 30, 48, 62, 0, 0.81, 168, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (374, 5, 30, 48, 62, 0, 0.81, 169, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (375, 5, 30, 48, 63, 0, 2.23, 170, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (376, 5, 30, 48, 64, 0, 1.12, 171, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (377, 5, 31, 49, 65, 0, 0.77, 172, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (378, 5, 31, 49, 65, 0, 0.77, 173, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (379, 5, 31, 49, 65, 0, 0.38, 174, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (380, 5, 31, 49, 65, 0, 0.38, 175, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (381, 5, 31, 49, 65, 0, 0.77, 176, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (382, 5, 31, 49, 66, 0, 3.07, 177, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (383, 5, 32, 50, 67, 0, 2.51, 178, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (384, 5, 32, 50, 68, 0, 0.84, 179, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (385, 5, 32, 50, 69, 0, 1.67, 180, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (386, 5, 32, 50, 70, 0, 1.12, 181, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (387, 5, 32, 50, 70, 0, 0.56, 182, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (388, 5, 32, 50, 71, 0, 2.51, 183, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (389, 5, 32, 50, 72, 0, 1.67, 184, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (390, 5, 32, 50, 73, 0, 1.67, 185, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (391, 5, 32, 50, 74, 0, 2.51, 186, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (392, 5, 32, 50, 75, 0, 3.35, 187, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (393, 5, 33, 51, 76, 0, 1.53, 188, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (394, 5, 33, 51, 77, 0, 3.07, 189, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (395, 5, 34, 52, 78, 0, 0.51, 190, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (396, 5, 34, 52, 79, 0, 1.02, 191, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (397, 5, 35, 53, 80, 0, 1.92, 192, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (398, 5, 35, 53, 80, 0, 1.92, 193, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (399, 5, 35, 53, 80, 0, 2.88, 194, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (400, 5, 35, 53, 80, 0, 0.96, 195, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (401, 5, 35, 53, 80, 0, 1.92, 196, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (402, 5, 35, 53, 80, 0, 1.92, 197, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (403, 5, 35, 53, 80, 0, 1.92, 198, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (404, 5, 35, 53, 80, 0, 2.88, 199, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (405, 5, 35, 53, 80, 0, 2.88, 200, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (406, 5, 35, 53, 80, 0, 1.92, 201, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (407, 5, 35, 53, 80, 0, 1.92, 202, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (408, 5, 35, 53, 80, 0, 3.83, 203, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (409, 5, 35, 53, 81, 0, 2.88, 204, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (410, 5, 35, 53, 81, 0, 0.96, 205, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (411, 5, 36, 54, 0, 0, 1.50, 206, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (412, 5, 36, 55, 0, 0, 2.00, 207, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (413, 5, 36, 56, 0, 0, 1.50, 208, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');
INSERT INTO `elements` VALUES (414, 5, 36, 57, 0, 0, 1.00, 209, 0.00, 00.00, 0, 0.00, 'F', 0.00, 'F', 0.00, 'F');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for indikators
-- ----------------------------
DROP TABLE IF EXISTS `indikators`;
CREATE TABLE `indikators`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `dec` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang_id` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 210 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of indikators
-- ----------------------------
INSERT INTO `indikators` VALUES (1, '<p>Konsistensi dengan hasil analisis SWOT dan/atau analisis lain serta rencana pengembangan ke depan.</p>', 2);
INSERT INTO `indikators` VALUES (2, '<p>Keserbacakupan informasi dalam profil dan konsistensi antara profil dengan data dan informasi yang disampaikan pada masing-masing kriteria, serta menunjukkan iklim yang kondusif untuk pengembangan dan reputasi sebagai rujukan di bidang keilmuannya.</p>', 2);
INSERT INTO `indikators` VALUES (3, '<p>Kesesuaian Visi, Misi, Tujuan dan Strategi (VMTS) Unit Pengelola Program Studi (UPPS) terhadap VMTS Perguruan Tinggi (PT) dan visi keilmuan Program Studi (PS) yang dikelolanya.</p>', 2);
INSERT INTO `indikators` VALUES (4, '<p>Mekanisme dan keterlibatan pemangku kepentingan dalam penyusunan VMTS UPPS.</p>', 2);
INSERT INTO `indikators` VALUES (5, '<p>Strategi pencapaian tujuan disusun berdasarkan analisis yang sistematis, serta pada pelaksanaannya dilakukan pemantauan dan evaluasi yang ditindak lanjuti.&nbsp;</p>', 2);
INSERT INTO `indikators` VALUES (6, '<p>A. Kelengkapan struktur organisasi dan keefektifan penyelenggaraan organisasi.</p>\r\n<p>B. Perwujudan good governance dan pemenuhan lima pilar sistem tata pamong, yang mencakup:</p>\r\n\r\n<ol>\r\n	<li>Kredibel,</li>\r\n	<li>Transparan,</li>\r\n	<li>Akuntabel,</li>\r\n	<li>Bertanggung jawab,</li>\r\n	<li>Adil.</li>\r\n</ol>\r\n<p>Skor = (A + (2 x B)) / 3</p>', 2);
INSERT INTO `indikators` VALUES (7, '<p>A. Komitmen pimpinan UPPS.</p>\r\n<p>B. Kapabilitas pimpinan UPPS, mencakup aspek:</p>\r\n\r\n<ol>\r\n	<li>perencanaan,</li>\r\n	<li>pengorganisasian,</li>\r\n	<li>penempatan personel,</li>\r\n	<li>pelaksanaan,</li>\r\n	<li>pengendalian dan pengawasan, dan</li>\r\n	<li>pelaporan yang menjadi dasar tindak lanjut.&nbsp;</li>\r\n</ol>\r\n<p>Skor = (A + (2 x B)) / 3</p>', 2);
INSERT INTO `indikators` VALUES (8, '<p>Mutu, manfaat, kepuasan dan keberlanjutan kerjasama pendidikan, penelitian dan PkM yang relevan dengan program studi. UPPS memiliki bukti yang sahih terkait kerjasama yang ada telah memenuhi 3 aspek berikut:</p>\r\n\r\n<ol>\r\n	<li>memberikan manfaat bagi program studi dalam pemenuhan proses pembelajaran, penelitian, PkM.</li>\r\n	<li>memberikan peningkatan kinerja tridharma dan fasilitas pendukung program studi.</li>\r\n	<li>memberikan kepuasan kepada mitra industri dan mitra kerjasama lainnya, serta menjamin keberlanjutan kerjasama dan hasilnya.</li>\r\n</ol>', 2);
INSERT INTO `indikators` VALUES (9, '<p>A. Kerjasama perguruan tinggi di bidang pendidikan, penelitian dan PkM dalam 3 tahun terakhir.</p>\r\n<p>B. Kerjasama tingkat internasional, nasional, wilayah/lokal yang relevan dengan program studi dan dikelola oleh UPPS dalam 3 tahun terakhir.\r\nTabel 1 LKPS</p>', 2);
INSERT INTO `indikators` VALUES (10, '<p>Pelampauan SN-DIKTI (indikator kinerja tambahan) yang ditetapkan oleh UPPS pada tiap kriteria.</p>', 2);
INSERT INTO `indikators` VALUES (11, '<p>Analisis keberhasilan dan/atau ketidakberhasilan pencapaian kinerja yang telah ditetapkan institusi yang memenuhi 2 aspek sebagai berikut:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>capaian kinerja harus diukur dengan metoda yang tepat, dan hasilnya dianalisis serta dievaluasi, dan</li>\r\n	<li>analisis terhadap capaian kinerja mencakup identifikasi akar masalah, faktor pendukung keberhasilan dan faktor penghambat ketercapaian standar, dan deskripsi singkat tindak lanjut yang akan dilakukan.</li>\r\n</ol>', 2);
INSERT INTO `indikators` VALUES (12, '<p>Keterlaksanaan Sistem Penjaminan Mutu Internal (akademik dan nonakademik) yang dibuktikan dengan keberadaan 5 aspek:</p>\r\n\r\n<ol>\r\n	<li>dokumen legal pembentukan unsur pelaksana penjaminan mutu.</li>\r\n	<li>ketersediaan dokumen mutu: kebijakan SPMI, manual SPMI, standar SPMI, dan formulir SPMI.</li>\r\n	<li>terlaksananya siklus penjaminan mutu (siklus PPEPP).</li>\r\n	<li>bukti sahih efektivitas pelaksanaan penjaminan mutu.</li>\r\n	<li>memiliki external benchmarking dalam peningkatan mutu.</li>\r\n</ol>', 2);
INSERT INTO `indikators` VALUES (13, '<p>Pengukuran kepuasan layanan manajemen terhadap para pemangku kepentingan: mahasiswa, dosen, tenaga kependidikan, lulusan, pengguna dan mitra yang memenuhi aspek-aspek berikut:</p>\r\n\r\n<ol>\r\n	<li>menggunakan instrumen kepuasan yang sahih, andal, mudah digunakan,</li>\r\n	<li>dilaksanakan secara berkala, serta datanya terekam secara komprehensif,&nbsp;</li>\r\n	<li>dianalisis dengan metode yang tepat serta bermanfaat untuk pengambilan keputusan,</li>\r\n	<li>tingkat kepuasan dan umpan balik ditindaklanjuti untuk perbaikan dan peningkatan mutu luaran secara berkala dan tersistem,</li>\r\n	<li>dilakukan review terhadap pelaksanaan pengukuran kepuasan dosen dan mahasiswa, serta</li>\r\n	<li>hasilnya dipublikasikan dan mudah diakses oleh dosen dan mahasiswa.</li>\r\n</ol>', 2);
INSERT INTO `indikators` VALUES (14, '<p>Metoda rekrutmen dan keketatan seleksi.<br />\r\nTabel 2.a LKPS</p>', 2);
INSERT INTO `indikators` VALUES (15, '<p>A. Peningkatan animo calon mahasiswa.<br />\r\nTabel 2.a LKPS</p>', 2);
INSERT INTO `indikators` VALUES (16, '<p>A. Ketersediaan layanan kemahasiswaan di bidang:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>penalaran, minat dan bakat,</li>\r\n	<li>kesejahteraan (bimbingan dan konseling, layanan beasiswa, dan layanan kesehatan), dan</li>\r\n	<li>bimbingan karir dan kewirausahaan.</li>\r\n</ol>\r\n\r\n<p>B. Akses dan mutu layanan kemahasiswaan.</p>\r\n\r\n<p>Skor = (A + (2 x B)) / 3</p>', 2);
INSERT INTO `indikators` VALUES (17, '<p>Kecukupan jumlah DTPS.<br />\r\nTabel 3.a.1) LKPS</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>', 2);
INSERT INTO `indikators` VALUES (18, '<p>Kualifikasi akademik DTPS.<br />\r\nTabel 3.a.1) LKPS</p>\r\n\r\n<p>NDS3 = Jumlah DTPS yang berpendidikan tertinggi Doktor/Doktor Terapan/Subspesialis.</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>\r\n\r\n<p>PDS3 = (NDS3 / NDTPS) x 100%</p>', 2);
INSERT INTO `indikators` VALUES (19, '<p>Jabatan akademik DTPS.<br />\r\nTabel 3.a.1) LKPS</p>\r\n\r\n<p>NDGB = Jumlah DTPS yang memiliki jabatan akademik Guru Besar.</p>\r\n\r\n<p>NDLK = Jumlah DTPS yang memiliki jabatan akademik Lektor Kepala.</p>\r\n\r\n<p>PGBLKL = ((NDGB + NDLK + NDL) / NDTPS) x 100%</p>', 2);
INSERT INTO `indikators` VALUES (20, '<p>Rasio jumlah mahasiswa program studi terhadap jumlah DTPS.<br />\r\nTabel 2.a LKPS dan Tabel 3.a.1) LKPS</p>\r\n\r\n<p>NM = Jumlah mahasiswa pada saat TS.</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>\r\n\r\n<p>RMD = NM / NDTPS</p>', 2);
INSERT INTO `indikators` VALUES (21, '<p>Penugasan DTPS sebagai pembimbing utama tugas akhir mahasiswa.<br />\r\nTabel 3.a.2) LKPS&nbsp;</p>\r\n\r\n<p>RDPUPS = Rata-rata jumlah mahasiswa yang dibimbing pada PS yang diakreditasi</p>\r\n\r\n<p>RDPUL = Rata-rata jumlah mahasiswa yang dibimbing pada PS lain di PT</p>\r\n\r\n<p>RDPU = (RDUPS + RDPUL) / 2</p>', 2);
INSERT INTO `indikators` VALUES (22, '<p>Ekuivalensi Waktu Mengajar Penuh DTPS.<br />\r\nTabel 3.a.3) LKPS</p>\r\n\r\n<p>EWMPDT = Rata-rata EWMP DT per semester pada saat TS.</p>\r\n\r\n<p>EWMPDTPS = Rata-rata EWMP DTPS per semester pada saat TS.</p>\r\n\r\n<p>EWMP = EWMPDTPS</p>', 2);
INSERT INTO `indikators` VALUES (23, '<p>Dosen tidak tetap.<br />\r\nTabel 3.a.4) LKPS</p>\r\n\r\n<p>NDTT = Jumlah dosen tidak tetap yang ditugaskan sebagai pengampu mata kuliah di program studi yang diakreditasi.</p>\r\n\r\n<p>NDT = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah di program studi yang diakreditasi.</p>\r\n\r\n<p>PDTT = (NDTT / (NDTT + NDT)) x 100%</p>', 2);
INSERT INTO `indikators` VALUES (24, '<p>Pengakuan/rekognisi atas kepakaran/prestasi/kinerja DTPS.<br />\r\nPengakuan/rekognisi atas kepakaran/prestasi/kinerja DTPS dapat berupa:</p>\r\n\r\n<ol>\r\n	<li>menjadi staf ahli/tenaga ahli/narasumber di lembaga tingkat wilayah/nasional/ internasional pada bidang yang sesuai dengan bidang program studi.</li>\r\n	<li>menjadi visiting lecturer atau visiting scholar di program studi/perguruan tinggi terakreditasi A/Unggul atau program studi/perguruan tinggi internasional bereputasi.</li>\r\n	<li>menjadi invited speaker pada pertemuan ilmiah tingkat wilayah/nasional/ internasional.</li>\r\n	<li>menjadi editor atau mitra bestari pada jurnal nasional terakreditasi/jurnal internasional bereputasi di bidang yang sesuai dengan bidang program studi.</li>\r\n</ol>\r\n\r\n<p>Tabel 3.b.1) LKPS</p>\r\n\r\n<p>NRD = Jumlah pengakuan atas prestasi/kinerja DTPS yang relevan dengan bidang keahlian dalam 3 tahun terakhir.</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>\r\n\r\n<p>RRD = NRD / NDTPS&nbsp;</p>', 2);
INSERT INTO `indikators` VALUES (25, '<p>Kegiatan penelitian DTPS yang relevan dengan bidang program studi dalam 3 tahun terakhir.<br />\r\nTabel 3.b.2) LKPS</p>\r\n\r\n<p>NI = Jumlah penelitian dengan sumber pembiayaan luar negeri dalam 3 tahun terakhir.</p>\r\n\r\n<p>NN = Jumlah penelitian dengan sumber pembiayaan dalam negeri dalam 3 tahun terakhir.</p>\r\n\r\n<p>NL = Jumlah penelitian dengan sumber pembiayaan PT/mandiri dalam 3 tahun terakhir.</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>\r\n\r\n<p>RI = NI / 3 / NDTPS</p>\r\n\r\n<p>RN = NN / 3 / NDTPS</p>\r\n\r\n<p>RL = NL / 3 / NDTPS</p>', 2);
INSERT INTO `indikators` VALUES (26, '<p>Kegiatan PkM DTPS yang relevan dengan bidang program studi dalam 3 tahun terakhir.</p>', 2);
INSERT INTO `indikators` VALUES (27, '<p>Publikasi ilmiah dengan tema yang relevan dengan bidang program studi yang dihasilkan DTPS dalam 3 tahun terakhir.<br />\r\nTabel 3.b.4) LKPS</p>', 2);
INSERT INTO `indikators` VALUES (28, '<p>Artikel karya ilmiah DTPS yang disitasi dalam 3 tahun terakhir.<br />\r\nTabel 3.b.5) LKPS</p>\r\n\r\n<p>NAS = Jumlah judul artikel yang disitasi.</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>\r\n\r\n<p>RS = NAS / NDTPS</p>', 2);
INSERT INTO `indikators` VALUES (29, '<p>Luaran penelitian dan PkM yang dihasilkan DTPS dalam 3 tahun terakhir.<br />\r\nTabel 3.b.7) LKPS</p>', 2);
INSERT INTO `indikators` VALUES (30, '<p>Upaya pengembangan dosen.<br />\r\nCatatan: Jika Skor rata-rata butir Profil Dosen &ge; 3,5 , maka Skor = 4.</p>', 2);
INSERT INTO `indikators` VALUES (31, '<p>A. Kualifikasi dan kecukupan tenaga kependidikan berdasarkan jenis pekerjaannya (administrasi, pustakawan, teknisi, dll.)<br />\r\nCatatan: Penilaian kecukupan tidak hanya ditentukan oleh jumlah tenaga kependidikan, namun keberadaan dan pemanfaatan teknologi informasi dan komputer dalam proses administrasi dapat dijadikan pertimbangan untuk menilai efektifitas pekerjaan dan kebutuhan akan tenaga kependidikan.</p>\r\n\r\n<p>B. Akses dan mutu layanan kemahasiswaan.</p>\r\n\r\n<p>Skor = (A + (2 x B)) / 3</p>', 2);
INSERT INTO `indikators` VALUES (32, '<p>Biaya operasional pendidikan.<br />\r\nTabel 4 LKPS</p>\r\n\r\n<p>BOP = Biaya operasional pendidikan dalam 3 tahun terakhir.</p>\r\n\r\n<p>NM = Jumlah mahasiswa aktif pada saat TS.</p>\r\n\r\n<p>DOP = Rata-rata dana operasional pendidikan/mahasiswa/ tahun dalam 3 tahun terakhir = BOP / 3 / NM</p>', 2);
INSERT INTO `indikators` VALUES (33, '<p>Dana penelitian DTPS.<br />\r\nTabel 4 LKPS</p>', 2);
INSERT INTO `indikators` VALUES (34, '<p>Dana pengabdian kepada masyarakat DTPS.<br />\r\nTabel 4 LKPS</p>', 2);
INSERT INTO `indikators` VALUES (35, '<p>Realisasi investasi (SDM, sarana dan prasarana) yang mendukung penyelenggaraan tridharma.<br />\r\nCatatan: Jika Skor rata-rata butir tentang Profil Dosen, Sarana, dan Prasarana &ge; 3,5 , maka Skor butir ini = 4.</p>', 2);
INSERT INTO `indikators` VALUES (36, '<p>Kecukupan dana untuk menjamin pencapaian capaian pembelajaran.</p>', 2);
INSERT INTO `indikators` VALUES (37, '<p>Kecukupan, aksesibilitas dan mutu sarana dan prasarana untuk menjamin pencapaian capaian pembelajaran dan meningkatkan suasana akademik.</p>', 2);
INSERT INTO `indikators` VALUES (38, '<p>A. Keterlibatan pemangku kepentingan dalam proses evaluasi dan pemutakhiran kurikulum.</p>\r\n\r\n<p>B. Kesesuaian capaian pembelajaran dengan profil lulusan dan jenjang KKNI/SKKNI.</p>\r\n\r\n<p>C. Ketepatan struktur kurikulum dalam pembentukan capaian pembelajaran.</p>\r\n\r\n<p>Skor = (A + (2 x B) + (2 x C)) / 5</p>', 2);
INSERT INTO `indikators` VALUES (39, '<p>Pemenuhan karakteristik proses pembelajaran, yang terdiri atas sifat:</p>\r\n\r\n<ol>\r\n	<li>interaktif,</li>\r\n	<li>holistik,</li>\r\n	<li>integratif,</li>\r\n	<li>saintifik,</li>\r\n	<li>kontekstual,</li>\r\n	<li>tematik,</li>\r\n	<li>efektif,</li>\r\n	<li>kolaboratif, dan</li>\r\n	<li>berpusat pada mahasiswa.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>', 2);
INSERT INTO `indikators` VALUES (40, '<p>A. Ketersediaan dan kelengkapan dokumen rencana pembelajaran semester (RPS)&nbsp;</p>\r\n\r\n<p>B. Kedalaman dan keluasan RPS sesuai dengan capaian pembelajaran lulusan.</p>\r\n\r\n<p>Skor = (A + (2 x B)) / 3</p>', 2);
INSERT INTO `indikators` VALUES (41, '<p>A. Bentuk interaksi antara dosen, mahasiswa dan sumber belajar</p>\r\n\r\n<p>B. Pemantauan kesesuaian proses terhadap rencana pembelajaran</p>\r\n\r\n<p>C. Proses pembelajaran yang terkait dengan penelitian harus mengacu SN Dikti Penelitian: 1) hasil penelitian: harus memenuhi pengembangan IPTEKS, meningkatkan kesejahteraan masyarakat, dan daya saing bangsa. 2) isi penelitian: memenuhi kedalaman dan keluasan materi penelitian sesuai capaian pembelajaran. 3) proses penelitian: mencakup perencanaan, pelaksanaan, dan pelaporan. 4) penilaian penelitian memenuhi unsur edukatif, obyektif, akuntabel, dan transparan.</p>\r\n\r\n<p>D. Proses pembelajaran yang terkait dengan PkM harus mengacu SN Dikti PkM: 1) hasil PkM: harus memenuhi pengembangan IPTEKS, meningkatkan kesejahteraan masyarakat, dan daya saing bangsa. 2) isi PkM: memenuhi kedalaman dan keluasan materi PkM sesuai capaian pembelajaran. 3) proses PkM: &nbsp;mencakup perencanaan, pelaksanaan, dan pelaporan. 4) penilaian PkM memenuhi unsur edukatif, obyektif, akuntabel, dan transparan.</p>\r\n\r\n<p>E. Kesesuaian metode pembelajaran dengan capaian pembelajaran. Contoh: RBE (research based education), IBE (industry based education), teaching factory/teaching industry, dll.</p>\r\n\r\n<p>Skor = (A + (2 x B) + (2 x C) + (2 x D) + (2 x E)) / 9</p>', 2);
INSERT INTO `indikators` VALUES (42, '<p>Pembelajaran yang dilaksanakan dalam bentuk praktikum, praktik studio, praktik bengkel, atau praktik lapangan.<br />\r\nTabel 5.a LKPS</p>\r\n\r\n<p>JP = Jam pembelajaran praktikum, praktik studio, praktik bengkel, atau praktik lapangan (termasuk KKN)</p>\r\n\r\n<p>JB = Jam pembelajaran total selama masa pendidikan.</p>\r\n\r\n<p>PJP = (JP / JB) x 100%</p>', 2);
INSERT INTO `indikators` VALUES (43, '<p>Monitoring dan evaluasi pelaksanaan proses pembelajaran mencakup karakteristik, perencanaan, pelaksanaan, proses pembelajaran dan beban belajar mahasiswa untuk memperoleh capaian pembelajaran lulusan.</p>', 2);
INSERT INTO `indikators` VALUES (44, '<p>A. Mutu pelaksanaan penilaian pembelajaran (proses dan hasil belajar mahasiswa) untuk mengukur ketercapaian capaian pembelajaran berdasarkan prinsip penilaian yang mencakup: 1) edukatif, 2) otentik, 3) objektif, 4) akuntabel, dan 5) transparan, yang dilakukan secara terintegrasi.</p>\r\n\r\n<p>B. Pelaksanaan penilaian terdiri atas teknik dan instrumen penilaian.&nbsp;<br />\r\nTeknik penilaian terdiri dari: 1) observasi, 2) partisipasi, 3) unjuk kerja, 4) test tertulis, 5) test lisan, dan 6) angket.<br />\r\nInstrumen penilaian terdiri dari: 1) penilaian proses dalam bentuk rubrik, dan/ atau; 2) penilaian hasil dalam bentuk portofolio, atau 3) karya disain.</p>\r\n\r\n<p>C. Pelaksanaan penilaian memuat unsur-unsur sebagai berikut: 1) mempunyai kontrak rencana penilaian, 2) melaksanakan penilaian sesuai kontrak atau kesepakatan, 3) memberikan umpan balik dan memberi kesempatan untuk mempertanyakan hasil kepada mahasiswa, 4) mempunyai dokumentasi penilaian proses dan hasil belajar mahasiswa, 5) mempunyai prosedur yang mencakup tahap perencanaan, kegiatan pemberian tugas atau soal, observasi kinerja, pengembalian hasil observasi, dan pemberian nilai akhir, 6) pelaporan penilaian berupa kualifikasi keberhasilan mahasiswa dalam menempuh suatu mata kuliah dalam bentuk huruf dan angka, 7) mempunyai bukti-bukti rencana dan telah melakukan proses perbaikan berdasar hasil monev penilaian.</p>\r\n\r\n<p>Skor = (A + (2 x B) + (2 x C)) / 5</p>', 2);
INSERT INTO `indikators` VALUES (45, '<p>Integrasi kegiatan penelitian dan PkM dalam pembelajaran oleh DTPS dalam 3 tahun terakhir.<br />\r\nTabel 5.b LKPS</p>\r\n\r\n<p>MK = Jumlah mata kuliah yang dikembangkan berdasarkan hasil penelitian/PkM DTPS dalam 3 tahun terakhir.</p>', 2);
INSERT INTO `indikators` VALUES (46, '<p>Keterlaksanaan dan keberkalaan program dan kegiatan diluar kegiatan pembelajaran terstruktur untuk meningkatkan suasana akademik.<br />\r\nContoh: kegiatan himpunan mahasiswa, kuliah umum/studium generale, seminar ilmiah, bedah buku.</p>', 2);
INSERT INTO `indikators` VALUES (47, '<p>A. Tingkat kepuasan mahasiswa terhadap proses pendidikan.<br />\r\nTabel 5.c LKPS<br />\r\nAspek yang diukur: 1) Keandalan (reliability): kemampuan dosen, tenaga kependidikan, dan pengelola dalam memberikan pelayanan; 2) Daya tanggap (responsiveness): kemauan dari dosen, tenaga kependidikan, dan pengelola dalam membantu mahasiswa dan memberikan jasa dengan cepat; 3) Kepastian (assurance): kemampuan dosen, tenaga kependidikan, dan pengelola untuk memberi keyakinan kepada mahasiswa bahwa pelayanan yang diberikan telah sesuai dengan ketentuan; 4) Empati (empathy): kesediaan/kepedulian dosen, tenaga kependidikan, dan pengelola untuk memberi perhatian kepada mahasiswa; dan 5) Tangible: penilaian mahasiswa terhadap kecukupan, aksesibitas, kualitas sarana dan prasarana.</p>\r\n\r\n<p>B. Analisis dan tindak lanjut dari hasil pengukuran kepuasan mahasiswa.</p>\r\n\r\n<p>Skor = (A + (2 x B)) / 3</p>', 2);
INSERT INTO `indikators` VALUES (48, '<p>Relevansi penelitian pada UPPS mencakup unsur-unsur sebagai berikut:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>memiliki peta jalan yang memayungi tema penelitian dosen dan mahasiswa,</li>\r\n	<li>dosen dan mahasiswa melaksanakan penelitian sesuai dengan agenda penelitian dosen yang merujuk kepada peta jalan penelitian.&nbsp;</li>\r\n	<li>melakukan evaluasi kesesuaian penelitian dosen dan mahasiswa dengan peta jalan, dan&nbsp;</li>\r\n	<li>menggunakan hasil evaluasi untuk perbaikan relevansi penelitian dan pengembangan keilmuan program studi.</li>\r\n</ol>', 2);
INSERT INTO `indikators` VALUES (49, '<p>Penelitian DTPS yang dalam pelaksanaannya melibatkan mahasiswa program studi dalam 3 tahun terakhir.<br />\r\nTabel 6.a LKPS</p>\r\n\r\n<p>NPM = Jumlah judul penelitian DTPS yang dalam pelaksanaannya melibatkan mahasiswa program studi dalam 3 tahun terakhir.</p>\r\n\r\n<p>NPD = Jumlah judul penelitian DTPS dalam 3 tahun terakhir.&nbsp;</p>\r\n\r\n<p>PPDM = (NPM / NPkMD) x 100%&nbsp;</p>', 2);
INSERT INTO `indikators` VALUES (50, '<p>Relevansi PkM pada UPPS mencakup unsur-unsur sebagai berikut:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>memiliki peta jalan yang memayungi tema PkM dosen dan mahasiswa serta hilirisasi/penerapan keilmuan program studi,&nbsp;</li>\r\n	<li>dosen dan mahasiswa melaksanakan PkM sesuai dengan peta jalan PkM.&nbsp;</li>\r\n	<li>melakukan evaluasi kesesuaian PkM dosen dan mahasiswa dengan peta jalan, dan&nbsp;</li>\r\n	<li>menggunakan hasil evaluasi untuk perbaikan relevansi PkM dan pengembangan keilmuan program studi.</li>\r\n</ol>', 2);
INSERT INTO `indikators` VALUES (51, '<p>PkM DTPS yang dalam pelaksanaannya melibatkan mahasiswa program studi dalam 3 tahun terakhir.<br />\r\nTabel 7 LKPS</p>\r\n\r\n<p>NPkMM = Jumlah judul PkM DTPS yang dalam pelaksanaannya melibatkan mahasiswa program studi dalam 3 tahun terakhir.</p>\r\n\r\n<p>NPkMD = Jumlah judul PkM DTPS dalam 3 tahun terakhir.&nbsp;</p>\r\n\r\n<p>PPkMDM = (NPkMM / NPkMD) x 100%&nbsp;</p>', 2);
INSERT INTO `indikators` VALUES (52, '<p>Analisis pemenuhan capaian pembelajaran lulusan (CPL) yang diukur dengan metoda yang sahih dan relevan, mencakup aspek:</p>\r\n\r\n<ol>\r\n	<li>keserbacakupan,&nbsp;</li>\r\n	<li>kedalaman, dan&nbsp;</li>\r\n	<li>kebermanfaatan analisis yang ditunjukkan dengan peningkatan CPL dari waktu ke waktu dalam 3 tahun terakhir.</li>\r\n</ol>', 2);
INSERT INTO `indikators` VALUES (53, '<p>IPK lulusan.<br />\r\nTabel 8.a LKPS</p>\r\n\r\n<p>RIPK = Rata-rata IPK lulusan dalam 3 tahun terakhir.</p>', 2);
INSERT INTO `indikators` VALUES (54, '<p>Prestasi mahasiswa di bidang akademik dalam 3 tahun terakhir.<br />\r\nTabel 8.b.1) LKP</p>\r\n\r\n<p>RW = NW / NM</p>', 2);
INSERT INTO `indikators` VALUES (55, '<p>Prestasi mahasiswa di bidang nonakademik dalam 3 tahun terakhir.<br />\r\nTabel 8.b.2) LKPS</p>\r\n\r\n<p>RW = NW / NM</p>', 2);
INSERT INTO `indikators` VALUES (56, '<p>Masa studi.<br />\r\nTabel 8.c LKPS</p>', 2);
INSERT INTO `indikators` VALUES (57, '<p>Kelulusan tepat waktu.<br />\r\nTabel 8.c LKPS</p>', 2);
INSERT INTO `indikators` VALUES (58, '<p>Keberhasilan studi.<br />\r\nTabel 8.c LKPS</p>', 2);
INSERT INTO `indikators` VALUES (59, '<p>Pelaksanaan tracer study yang mencakup 5 aspek sebagai berikut:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>pelaksanaan tracer study terkoordinasi di tingkat PT,</li>\r\n	<li>kegiatan tracer study dilakukan secara reguler setiap tahun dan terdokumentasi,</li>\r\n	<li>isi kuesioner mencakup seluruh pertanyaan inti tracer study DIKTI.</li>\r\n	<li>ditargetkan pada seluruh populasi (lulusan TS-4 s.d. TS-2),</li>\r\n	<li>hasilnya disosialisasikan dan digunakan untuk pengembangan kurikulum dan pembelajaran.&nbsp;</li>\r\n</ol>', 2);
INSERT INTO `indikators` VALUES (60, '<p>Waktu tunggu.<br />\r\nTabel 8.d.1) LKPS</p>', 2);
INSERT INTO `indikators` VALUES (61, '<p>Kesesuaian bidang kerja.&nbsp;<br />\r\nTabel 8.d.2) LKPS</p>', 2);
INSERT INTO `indikators` VALUES (62, '<p>Tingkat dan ukuran tempat kerja lulusan.<br />\r\nTabel 8.e.1) LKPS</p>', 2);
INSERT INTO `indikators` VALUES (63, '<p>Tingkat kepuasan pengguna lulusan.<br />\r\nTabel 8.e.2) LKPS</p>', 2);
INSERT INTO `indikators` VALUES (64, '<p>Publikasi ilmiah mahasiswa, yang dihasilkan secara mandiri atau bersama DTPS, dengan judul yang relevan dengan bidang program studi dalam 3 tahun terakhir.<br />\r\nTabel 8.f.1) LKPS</p>', 2);
INSERT INTO `indikators` VALUES (65, '<p>Luaran penelitian dan PkM yang dihasilkan mahasiswa, baik secara mandiri atau bersama DTPS dalam 3 tahun terakhir.<br />\r\nTabel 8.f.4) LKPS</p>', 2);
INSERT INTO `indikators` VALUES (66, '<p>Keserbacakupan (kelengkapan, keluasan, dan kedalaman), ketepatan, ketajaman, dan kesesuaian analisis capaian kinerja serta konsistensi dengan setiap kriteria.</p>', 2);
INSERT INTO `indikators` VALUES (67, '<p>Ketepatan analisis SWOT atau analisis yang relevan di dalam mengembangkan strategi.</p>', 2);
INSERT INTO `indikators` VALUES (68, '<p>Ketepatan di dalam menetapkan prioritas program pengembangan.</p>', 2);
INSERT INTO `indikators` VALUES (69, '<p>UPPS memiliki kebijakan, ketersediaan sumberdaya, kemampuan melaksanakan, dan kerealistikan program.</p>', 2);
INSERT INTO `indikators` VALUES (71, '<p>Konsistensi dengan hasil analisis SWOT dan/atau analisis lain serta rencana pengembangan ke depan.</p>', 1);
INSERT INTO `indikators` VALUES (72, '<p>Keserbacakupan informasi dalam profil dan konsistensi antara profil dengan data dan informasi yang disampaikan pada masing-masing kriteria, serta menunjukkan iklim yang kondusif untuk pengembangan dan reputasi sebagai rujukan di bidang keilmuannya.</p>', 1);
INSERT INTO `indikators` VALUES (73, '<p>Kesesuaian Visi, Misi, Tujuan dan Strategi (VMTS) Unit Pengelola Program Studi (UPPS) terhadap VMTS Perguruan Tinggi (PT) dan visi keilmuan Program Studi (PS) yang dikelolanya.</p>', 1);
INSERT INTO `indikators` VALUES (74, '<p>Mekanisme dan keterlibatan pemangku kepentingan dalam penyusunan VMTS UPPS.</p>', 1);
INSERT INTO `indikators` VALUES (75, '<p>Strategi pencapaian tujuan disusun berdasarkan analisis yang sistematis, serta pada pelaksanaannya dilakukan pemantauan dan evaluasi yang ditindak lanjuti.&nbsp;</p>', 1);
INSERT INTO `indikators` VALUES (76, '<p>A. Kelengkapan struktur organisasi dan keefektifan penyelenggaraan organisasi.</p>\r\n<p>B. Perwujudan good governance dan pemenuhan lima pilar sistem tata pamong, yang mencakup:</p>\r\n\r\n<ol>\r\n	<li>Kredibel,</li>\r\n	<li>Transparan,</li>\r\n	<li>Akuntabel,</li>\r\n	<li>Bertanggung jawab,</li>\r\n	<li>Adil.</li>\r\n</ol>\r\n<p>Skor = (A + (2 x B)) / 3</p>', 1);
INSERT INTO `indikators` VALUES (77, '<p>A. Komitmen pimpinan UPPS.</p>\r\n<p>B. Kapabilitas pimpinan UPPS, mencakup aspek:</p>\r\n\r\n<ol>\r\n	<li>perencanaan,</li>\r\n	<li>pengorganisasian,</li>\r\n	<li>penempatan personel,</li>\r\n	<li>pelaksanaan,</li>\r\n	<li>pengendalian dan pengawasan, dan</li>\r\n	<li>pelaporan yang menjadi dasar tindak lanjut.&nbsp;</li>\r\n</ol>\r\n<p>Skor = (A + (2 x B)) / 3</p>', 1);
INSERT INTO `indikators` VALUES (78, '<p>Mutu, manfaat, kepuasan dan keberlanjutan kerjasama pendidikan, penelitian dan PkM yang relevan dengan program studi. UPPS memiliki bukti yang sahih terkait kerjasama yang ada telah memenuhi 3 aspek berikut:</p>\r\n\r\n<ol>\r\n	<li>memberikan manfaat bagi program studi dalam pemenuhan proses pembelajaran, penelitian, PkM.</li>\r\n	<li>memberikan peningkatan kinerja tridharma dan fasilitas pendukung program studi.</li>\r\n	<li>memberikan kepuasan kepada mitra industri dan mitra kerjasama lainnya, serta menjamin keberlanjutan kerjasama dan hasilnya.</li>\r\n</ol>', 1);
INSERT INTO `indikators` VALUES (79, '<p>A. Kerjasama perguruan tinggi di bidang pendidikan, penelitian dan PkM dalam 3 tahun terakhir.</p>\r\n<p>B. Kerjasama tingkat internasional, nasional, wilayah/lokal yang relevan dengan program studi dan dikelola oleh UPPS dalam 3 tahun terakhir.\r\nTabel 1 LKPS</p>', 1);
INSERT INTO `indikators` VALUES (80, '<p>Pelampauan SN-DIKTI (indikator kinerja tambahan) yang ditetapkan oleh UPPS pada tiap kriteria.</p>', 1);
INSERT INTO `indikators` VALUES (81, '<p>Analisis keberhasilan dan/atau ketidakberhasilan pencapaian kinerja yang telah ditetapkan institusi yang memenuhi 2 aspek sebagai berikut:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>capaian kinerja harus diukur dengan metoda yang tepat, dan hasilnya dianalisis serta dievaluasi, dan</li>\r\n	<li>analisis terhadap capaian kinerja mencakup identifikasi akar masalah, faktor pendukung keberhasilan dan faktor penghambat ketercapaian standar, dan deskripsi singkat tindak lanjut yang akan dilakukan.</li>\r\n</ol>', 1);
INSERT INTO `indikators` VALUES (82, '<p>Keterlaksanaan Sistem Penjaminan Mutu Internal (akademik dan nonakademik) yang dibuktikan dengan keberadaan 5 aspek:</p>\r\n\r\n<ol>\r\n	<li>dokumen legal pembentukan unsur pelaksana penjaminan mutu.</li>\r\n	<li>ketersediaan dokumen mutu: kebijakan SPMI, manual SPMI, standar SPMI, dan formulir SPMI.</li>\r\n	<li>terlaksananya siklus penjaminan mutu (siklus PPEPP).</li>\r\n	<li>bukti sahih efektivitas pelaksanaan penjaminan mutu.</li>\r\n	<li>memiliki external benchmarking dalam peningkatan mutu.</li>\r\n</ol>', 1);
INSERT INTO `indikators` VALUES (83, '<p>Pengukuran kepuasan layanan manajemen terhadap para pemangku kepentingan: mahasiswa, dosen, tenaga kependidikan, lulusan, pengguna dan mitra yang memenuhi aspek-aspek berikut:</p>\r\n\r\n<ol>\r\n	<li>menggunakan instrumen kepuasan yang sahih, andal, mudah digunakan,</li>\r\n	<li>dilaksanakan secara berkala, serta datanya terekam secara komprehensif,&nbsp;</li>\r\n	<li>dianalisis dengan metode yang tepat serta bermanfaat untuk pengambilan keputusan,</li>\r\n	<li>tingkat kepuasan dan umpan balik ditindaklanjuti untuk perbaikan dan peningkatan mutu luaran secara berkala dan tersistem,</li>\r\n	<li>dilakukan review terhadap pelaksanaan pengukuran kepuasan dosen dan mahasiswa, serta</li>\r\n	<li>hasilnya dipublikasikan dan mudah diakses oleh dosen dan mahasiswa.</li>\r\n</ol>', 1);
INSERT INTO `indikators` VALUES (84, '<p>Metoda rekrutmen dan keketatan seleksi.<br />\r\nTabel 2.a LKPS</p>', 1);
INSERT INTO `indikators` VALUES (85, '<p>A. Peningkatan animo calon mahasiswa.<br />\r\nTabel 2.a LKPS</p>', 1);
INSERT INTO `indikators` VALUES (86, '<p>A. Ketersediaan layanan kemahasiswaan di bidang:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>penalaran, minat dan bakat,</li>\r\n	<li>kesejahteraan (bimbingan dan konseling, layanan beasiswa, dan layanan kesehatan), dan</li>\r\n	<li>bimbingan karir dan kewirausahaan.</li>\r\n</ol>\r\n\r\n<p>B. Akses dan mutu layanan kemahasiswaan.</p>\r\n\r\n<p>Skor = (A + (2 x B)) / 3</p>', 1);
INSERT INTO `indikators` VALUES (87, '<p>Kecukupan jumlah DTPS.<br />\r\nTabel 3.a.1) LKPS</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>', 1);
INSERT INTO `indikators` VALUES (88, '<p>Kualifikasi akademik DTPS.<br />\r\nTabel 3.a.1) LKPS</p>\r\n\r\n<p>NDS3 = Jumlah DTPS yang berpendidikan tertinggi Doktor/Doktor Terapan/Subspesialis.</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>\r\n\r\n<p>PDS3 = (NDS3 / NDTPS) x 100%</p>', 1);
INSERT INTO `indikators` VALUES (89, '<p>Jabatan akademik DTPS.<br />\r\nTabel 3.a.1) LKPS</p>\r\n\r\n<p>NDGB = Jumlah DTPS yang memiliki jabatan akademik Guru Besar.</p>\r\n\r\n<p>NDLK = Jumlah DTPS yang memiliki jabatan akademik Lektor Kepala.</p>\r\n\r\n<p>PGBLKL = ((NDGB + NDLK + NDL) / NDTPS) x 100%</p>', 1);
INSERT INTO `indikators` VALUES (90, '<p>Rasio jumlah mahasiswa program studi terhadap jumlah DTPS.<br />\r\nTabel 2.a LKPS dan Tabel 3.a.1) LKPS</p>\r\n\r\n<p>NM = Jumlah mahasiswa pada saat TS.</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>\r\n\r\n<p>RMD = NM / NDTPS</p>', 1);
INSERT INTO `indikators` VALUES (91, '<p>Penugasan DTPS sebagai pembimbing utama tugas akhir mahasiswa.<br />\r\nTabel 3.a.2) LKPS&nbsp;</p>\r\n\r\n<p>RDPUPS = Rata-rata jumlah mahasiswa yang dibimbing pada PS yang diakreditasi</p>\r\n\r\n<p>RDPUL = Rata-rata jumlah mahasiswa yang dibimbing pada PS lain di PT</p>\r\n\r\n<p>RDPU = (RDUPS + RDPUL) / 2</p>', 1);
INSERT INTO `indikators` VALUES (92, '<p>Ekuivalensi Waktu Mengajar Penuh DTPS.<br />\r\nTabel 3.a.3) LKPS</p>\r\n\r\n<p>EWMPDT = Rata-rata EWMP DT per semester pada saat TS.</p>\r\n\r\n<p>EWMPDTPS = Rata-rata EWMP DTPS per semester pada saat TS.</p>\r\n\r\n<p>EWMP = EWMPDTPS</p>', 1);
INSERT INTO `indikators` VALUES (93, '<p>Dosen tidak tetap.<br />\r\nTabel 3.a.4) LKPS</p>\r\n\r\n<p>NDTT = Jumlah dosen tidak tetap yang ditugaskan sebagai pengampu mata kuliah di program studi yang diakreditasi.</p>\r\n\r\n<p>NDT = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah di program studi yang diakreditasi.</p>\r\n\r\n<p>PDTT = (NDTT / (NDTT + NDT)) x 100%</p>', 1);
INSERT INTO `indikators` VALUES (94, '<p>Pengakuan/rekognisi atas kepakaran/prestasi/kinerja DTPS.<br />\r\nPengakuan/rekognisi atas kepakaran/prestasi/kinerja DTPS dapat berupa:</p>\r\n\r\n<ol>\r\n	<li>menjadi staf ahli/tenaga ahli/narasumber di lembaga tingkat wilayah/nasional/ internasional pada bidang yang sesuai dengan bidang program studi.</li>\r\n	<li>menjadi visiting lecturer atau visiting scholar di program studi/perguruan tinggi terakreditasi A/Unggul atau program studi/perguruan tinggi internasional bereputasi.</li>\r\n	<li>menjadi invited speaker pada pertemuan ilmiah tingkat wilayah/nasional/ internasional.</li>\r\n	<li>menjadi editor atau mitra bestari pada jurnal nasional terakreditasi/jurnal internasional bereputasi di bidang yang sesuai dengan bidang program studi.</li>\r\n</ol>\r\n\r\n<p>Tabel 3.b.1) LKPS</p>\r\n\r\n<p>NRD = Jumlah pengakuan atas prestasi/kinerja DTPS yang relevan dengan bidang keahlian dalam 3 tahun terakhir.</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>\r\n\r\n<p>RRD = NRD / NDTPS&nbsp;</p>', 1);
INSERT INTO `indikators` VALUES (95, '<p>Kegiatan penelitian DTPS yang relevan dengan bidang program studi dalam 3 tahun terakhir.<br />\r\nTabel 3.b.2) LKPS</p>\r\n\r\n<p>NI = Jumlah penelitian dengan sumber pembiayaan luar negeri dalam 3 tahun terakhir.</p>\r\n\r\n<p>NN = Jumlah penelitian dengan sumber pembiayaan dalam negeri dalam 3 tahun terakhir.</p>\r\n\r\n<p>NL = Jumlah penelitian dengan sumber pembiayaan PT/mandiri dalam 3 tahun terakhir.</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>\r\n\r\n<p>RI = NI / 3 / NDTPS</p>\r\n\r\n<p>RN = NN / 3 / NDTPS</p>\r\n\r\n<p>RL = NL / 3 / NDTPS</p>', 1);
INSERT INTO `indikators` VALUES (96, '<p>Kegiatan PkM DTPS yang relevan dengan bidang program studi dalam 3 tahun terakhir.</p>', 1);
INSERT INTO `indikators` VALUES (97, '<p>Publikasi ilmiah dengan tema yang relevan dengan bidang program studi yang dihasilkan DTPS dalam 3 tahun terakhir.<br />\r\nTabel 3.b.4) LKPS</p>', 1);
INSERT INTO `indikators` VALUES (98, '<p>Artikel karya ilmiah DTPS yang disitasi dalam 3 tahun terakhir.<br />\r\nTabel 3.b.5) LKPS</p>\r\n\r\n<p>NAS = Jumlah judul artikel yang disitasi.</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>\r\n\r\n<p>RS = NAS / NDTPS</p>', 1);
INSERT INTO `indikators` VALUES (99, '<p>Luaran penelitian dan PkM yang dihasilkan DTPS dalam 3 tahun terakhir.<br />\r\nTabel 3.b.7) LKPS</p>', 1);
INSERT INTO `indikators` VALUES (100, '<p>Upaya pengembangan dosen.<br />\r\nCatatan: Jika Skor rata-rata butir Profil Dosen &ge; 3,5 , maka Skor = 4.</p>', 1);
INSERT INTO `indikators` VALUES (101, '<p>A. Kualifikasi dan kecukupan tenaga kependidikan berdasarkan jenis pekerjaannya (administrasi, pustakawan, teknisi, dll.)<br />\r\nCatatan: Penilaian kecukupan tidak hanya ditentukan oleh jumlah tenaga kependidikan, namun keberadaan dan pemanfaatan teknologi informasi dan komputer dalam proses administrasi dapat dijadikan pertimbangan untuk menilai efektifitas pekerjaan dan kebutuhan akan tenaga kependidikan.</p>\r\n\r\n<p>B. Akses dan mutu layanan kemahasiswaan.</p>\r\n\r\n<p>Skor = (A + (2 x B)) / 3</p>', 1);
INSERT INTO `indikators` VALUES (102, '<p>Biaya operasional pendidikan.<br />\r\nTabel 4 LKPS</p>\r\n\r\n<p>BOP = Biaya operasional pendidikan dalam 3 tahun terakhir.</p>\r\n\r\n<p>NM = Jumlah mahasiswa aktif pada saat TS.</p>\r\n\r\n<p>DOP = Rata-rata dana operasional pendidikan/mahasiswa/ tahun dalam 3 tahun terakhir = BOP / 3 / NM</p>', 1);
INSERT INTO `indikators` VALUES (103, '<p>Dana penelitian DTPS.<br />\r\nTabel 4 LKPS</p>', 1);
INSERT INTO `indikators` VALUES (104, '<p>Dana pengabdian kepada masyarakat DTPS.<br />\r\nTabel 4 LKPS</p>', 1);
INSERT INTO `indikators` VALUES (105, '<p>Realisasi investasi (SDM, sarana dan prasarana) yang mendukung penyelenggaraan tridharma.<br />\r\nCatatan: Jika Skor rata-rata butir tentang Profil Dosen, Sarana, dan Prasarana &ge; 3,5 , maka Skor butir ini = 4.</p>', 1);
INSERT INTO `indikators` VALUES (106, '<p>Kecukupan dana untuk menjamin pencapaian capaian pembelajaran.</p>', 1);
INSERT INTO `indikators` VALUES (107, '<p>Kecukupan, aksesibilitas dan mutu sarana dan prasarana untuk menjamin pencapaian capaian pembelajaran dan meningkatkan suasana akademik.</p>', 1);
INSERT INTO `indikators` VALUES (108, '<p>A. Keterlibatan pemangku kepentingan dalam proses evaluasi dan pemutakhiran kurikulum.</p>\r\n\r\n<p>B. Kesesuaian capaian pembelajaran dengan profil lulusan dan jenjang KKNI/SKKNI.</p>\r\n\r\n<p>C. Ketepatan struktur kurikulum dalam pembentukan capaian pembelajaran.</p>\r\n\r\n<p>Skor = (A + (2 x B) + (2 x C)) / 5</p>', 1);
INSERT INTO `indikators` VALUES (109, '<p>Pemenuhan karakteristik proses pembelajaran, yang terdiri atas sifat:</p>\r\n\r\n<ol>\r\n	<li>interaktif,</li>\r\n	<li>holistik,</li>\r\n	<li>integratif,</li>\r\n	<li>saintifik,</li>\r\n	<li>kontekstual,</li>\r\n	<li>tematik,</li>\r\n	<li>efektif,</li>\r\n	<li>kolaboratif, dan</li>\r\n	<li>berpusat pada mahasiswa.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>', 1);
INSERT INTO `indikators` VALUES (110, '<p>A. Ketersediaan dan kelengkapan dokumen rencana pembelajaran semester (RPS)&nbsp;</p>\r\n\r\n<p>B. Kedalaman dan keluasan RPS sesuai dengan capaian pembelajaran lulusan.</p>\r\n\r\n<p>Skor = (A + (2 x B)) / 3</p>', 1);
INSERT INTO `indikators` VALUES (111, '<p>A. Bentuk interaksi antara dosen, mahasiswa dan sumber belajar</p>\r\n\r\n<p>B. Pemantauan kesesuaian proses terhadap rencana pembelajaran</p>\r\n\r\n<p>C. Proses pembelajaran yang terkait dengan penelitian harus mengacu SN Dikti Penelitian: 1) hasil penelitian: harus memenuhi pengembangan IPTEKS, meningkatkan kesejahteraan masyarakat, dan daya saing bangsa. 2) isi penelitian: memenuhi kedalaman dan keluasan materi penelitian sesuai capaian pembelajaran. 3) proses penelitian: mencakup perencanaan, pelaksanaan, dan pelaporan. 4) penilaian penelitian memenuhi unsur edukatif, obyektif, akuntabel, dan transparan.</p>\r\n\r\n<p>D. Proses pembelajaran yang terkait dengan PkM harus mengacu SN Dikti PkM: 1) hasil PkM: harus memenuhi pengembangan IPTEKS, meningkatkan kesejahteraan masyarakat, dan daya saing bangsa. 2) isi PkM: memenuhi kedalaman dan keluasan materi PkM sesuai capaian pembelajaran. 3) proses PkM: &nbsp;mencakup perencanaan, pelaksanaan, dan pelaporan. 4) penilaian PkM memenuhi unsur edukatif, obyektif, akuntabel, dan transparan.</p>\r\n\r\n<p>E. Kesesuaian metode pembelajaran dengan capaian pembelajaran. Contoh: RBE (research based education), IBE (industry based education), teaching factory/teaching industry, dll.</p>\r\n\r\n<p>Skor = (A + (2 x B) + (2 x C) + (2 x D) + (2 x E)) / 9</p>', 1);
INSERT INTO `indikators` VALUES (112, '<p>Pembelajaran yang dilaksanakan dalam bentuk praktikum, praktik studio, praktik bengkel, atau praktik lapangan.<br />\r\nTabel 5.a LKPS</p>\r\n\r\n<p>JP = Jam pembelajaran praktikum, praktik studio, praktik bengkel, atau praktik lapangan (termasuk KKN)</p>\r\n\r\n<p>JB = Jam pembelajaran total selama masa pendidikan.</p>\r\n\r\n<p>PJP = (JP / JB) x 100%</p>', 1);
INSERT INTO `indikators` VALUES (113, '<p>Monitoring dan evaluasi pelaksanaan proses pembelajaran mencakup karakteristik, perencanaan, pelaksanaan, proses pembelajaran dan beban belajar mahasiswa untuk memperoleh capaian pembelajaran lulusan.</p>', 1);
INSERT INTO `indikators` VALUES (114, '<p>A. Mutu pelaksanaan penilaian pembelajaran (proses dan hasil belajar mahasiswa) untuk mengukur ketercapaian capaian pembelajaran berdasarkan prinsip penilaian yang mencakup: 1) edukatif, 2) otentik, 3) objektif, 4) akuntabel, dan 5) transparan, yang dilakukan secara terintegrasi.</p>\r\n\r\n<p>B. Pelaksanaan penilaian terdiri atas teknik dan instrumen penilaian.&nbsp;<br />\r\nTeknik penilaian terdiri dari: 1) observasi, 2) partisipasi, 3) unjuk kerja, 4) test tertulis, 5) test lisan, dan 6) angket.<br />\r\nInstrumen penilaian terdiri dari: 1) penilaian proses dalam bentuk rubrik, dan/ atau; 2) penilaian hasil dalam bentuk portofolio, atau 3) karya disain.</p>\r\n\r\n<p>C. Pelaksanaan penilaian memuat unsur-unsur sebagai berikut: 1) mempunyai kontrak rencana penilaian, 2) melaksanakan penilaian sesuai kontrak atau kesepakatan, 3) memberikan umpan balik dan memberi kesempatan untuk mempertanyakan hasil kepada mahasiswa, 4) mempunyai dokumentasi penilaian proses dan hasil belajar mahasiswa, 5) mempunyai prosedur yang mencakup tahap perencanaan, kegiatan pemberian tugas atau soal, observasi kinerja, pengembalian hasil observasi, dan pemberian nilai akhir, 6) pelaporan penilaian berupa kualifikasi keberhasilan mahasiswa dalam menempuh suatu mata kuliah dalam bentuk huruf dan angka, 7) mempunyai bukti-bukti rencana dan telah melakukan proses perbaikan berdasar hasil monev penilaian.</p>\r\n\r\n<p>Skor = (A + (2 x B) + (2 x C)) / 5</p>', 1);
INSERT INTO `indikators` VALUES (115, '<p>Integrasi kegiatan penelitian dan PkM dalam pembelajaran oleh DTPS dalam 3 tahun terakhir.<br />\r\nTabel 5.b LKPS</p>\r\n\r\n<p>MK = Jumlah mata kuliah yang dikembangkan berdasarkan hasil penelitian/PkM DTPS dalam 3 tahun terakhir.</p>', 1);
INSERT INTO `indikators` VALUES (116, '<p>Keterlaksanaan dan keberkalaan program dan kegiatan diluar kegiatan pembelajaran terstruktur untuk meningkatkan suasana akademik.<br />\r\nContoh: kegiatan himpunan mahasiswa, kuliah umum/studium generale, seminar ilmiah, bedah buku.</p>', 1);
INSERT INTO `indikators` VALUES (117, '<p>A. Tingkat kepuasan mahasiswa terhadap proses pendidikan.<br />\r\nTabel 5.c LKPS<br />\r\nAspek yang diukur: 1) Keandalan (reliability): kemampuan dosen, tenaga kependidikan, dan pengelola dalam memberikan pelayanan; 2) Daya tanggap (responsiveness): kemauan dari dosen, tenaga kependidikan, dan pengelola dalam membantu mahasiswa dan memberikan jasa dengan cepat; 3) Kepastian (assurance): kemampuan dosen, tenaga kependidikan, dan pengelola untuk memberi keyakinan kepada mahasiswa bahwa pelayanan yang diberikan telah sesuai dengan ketentuan; 4) Empati (empathy): kesediaan/kepedulian dosen, tenaga kependidikan, dan pengelola untuk memberi perhatian kepada mahasiswa; dan 5) Tangible: penilaian mahasiswa terhadap kecukupan, aksesibitas, kualitas sarana dan prasarana.</p>\r\n\r\n<p>B. Analisis dan tindak lanjut dari hasil pengukuran kepuasan mahasiswa.</p>\r\n\r\n<p>Skor = (A + (2 x B)) / 3</p>', 1);
INSERT INTO `indikators` VALUES (118, '<p>Relevansi penelitian pada UPPS mencakup unsur-unsur sebagai berikut:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>memiliki peta jalan yang memayungi tema penelitian dosen dan mahasiswa,</li>\r\n	<li>dosen dan mahasiswa melaksanakan penelitian sesuai dengan agenda penelitian dosen yang merujuk kepada peta jalan penelitian.&nbsp;</li>\r\n	<li>melakukan evaluasi kesesuaian penelitian dosen dan mahasiswa dengan peta jalan, dan&nbsp;</li>\r\n	<li>menggunakan hasil evaluasi untuk perbaikan relevansi penelitian dan pengembangan keilmuan program studi.</li>\r\n</ol>', 1);
INSERT INTO `indikators` VALUES (119, '<p>Penelitian DTPS yang dalam pelaksanaannya melibatkan mahasiswa program studi dalam 3 tahun terakhir.<br />\r\nTabel 6.a LKPS</p>\r\n\r\n<p>NPM = Jumlah judul penelitian DTPS yang dalam pelaksanaannya melibatkan mahasiswa program studi dalam 3 tahun terakhir.</p>\r\n\r\n<p>NPD = Jumlah judul penelitian DTPS dalam 3 tahun terakhir.&nbsp;</p>\r\n\r\n<p>PPDM = (NPM / NPkMD) x 100%&nbsp;</p>', 1);
INSERT INTO `indikators` VALUES (120, '<p>Relevansi PkM pada UPPS mencakup unsur-unsur sebagai berikut:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>memiliki peta jalan yang memayungi tema PkM dosen dan mahasiswa serta hilirisasi/penerapan keilmuan program studi,&nbsp;</li>\r\n	<li>dosen dan mahasiswa melaksanakan PkM sesuai dengan peta jalan PkM.&nbsp;</li>\r\n	<li>melakukan evaluasi kesesuaian PkM dosen dan mahasiswa dengan peta jalan, dan&nbsp;</li>\r\n	<li>menggunakan hasil evaluasi untuk perbaikan relevansi PkM dan pengembangan keilmuan program studi.</li>\r\n</ol>', 1);
INSERT INTO `indikators` VALUES (121, '<p>PkM DTPS yang dalam pelaksanaannya melibatkan mahasiswa program studi dalam 3 tahun terakhir.<br />\r\nTabel 7 LKPS</p>\r\n\r\n<p>NPkMM = Jumlah judul PkM DTPS yang dalam pelaksanaannya melibatkan mahasiswa program studi dalam 3 tahun terakhir.</p>\r\n\r\n<p>NPkMD = Jumlah judul PkM DTPS dalam 3 tahun terakhir.&nbsp;</p>\r\n\r\n<p>PPkMDM = (NPkMM / NPkMD) x 100%&nbsp;</p>', 1);
INSERT INTO `indikators` VALUES (122, '<p>Analisis pemenuhan capaian pembelajaran lulusan (CPL) yang diukur dengan metoda yang sahih dan relevan, mencakup aspek:</p>\r\n\r\n<ol>\r\n	<li>keserbacakupan,&nbsp;</li>\r\n	<li>kedalaman, dan&nbsp;</li>\r\n	<li>kebermanfaatan analisis yang ditunjukkan dengan peningkatan CPL dari waktu ke waktu dalam 3 tahun terakhir.</li>\r\n</ol>', 1);
INSERT INTO `indikators` VALUES (123, '<p>IPK lulusan.<br />\r\nTabel 8.a LKPS</p>\r\n\r\n<p>RIPK = Rata-rata IPK lulusan dalam 3 tahun terakhir.</p>', 1);
INSERT INTO `indikators` VALUES (124, '<p>Prestasi mahasiswa di bidang akademik dalam 3 tahun terakhir.<br />\r\nTabel 8.b.1) LKP</p>\r\n\r\n<p>RW = NW / NM</p>', 1);
INSERT INTO `indikators` VALUES (125, '<p>Prestasi mahasiswa di bidang nonakademik dalam 3 tahun terakhir.<br />\r\nTabel 8.b.2) LKPS</p>\r\n\r\n<p>RW = NW / NM</p>', 1);
INSERT INTO `indikators` VALUES (126, '<p>Masa studi.<br />\r\nTabel 8.c LKPS</p>', 1);
INSERT INTO `indikators` VALUES (127, '<p>Kelulusan tepat waktu.<br />\r\nTabel 8.c LKPS</p>', 1);
INSERT INTO `indikators` VALUES (128, '<p>Keberhasilan studi.<br />\r\nTabel 8.c LKPS</p>', 1);
INSERT INTO `indikators` VALUES (129, '<p>Pelaksanaan tracer study yang mencakup 5 aspek sebagai berikut:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>pelaksanaan tracer study terkoordinasi di tingkat PT,</li>\r\n	<li>kegiatan tracer study dilakukan secara reguler setiap tahun dan terdokumentasi,</li>\r\n	<li>isi kuesioner mencakup seluruh pertanyaan inti tracer study DIKTI.</li>\r\n	<li>ditargetkan pada seluruh populasi (lulusan TS-4 s.d. TS-2),</li>\r\n	<li>hasilnya disosialisasikan dan digunakan untuk pengembangan kurikulum dan pembelajaran.&nbsp;</li>\r\n</ol>', 1);
INSERT INTO `indikators` VALUES (130, '<p>Waktu tunggu.<br />\r\nTabel 8.d.1) LKPS</p>', 1);
INSERT INTO `indikators` VALUES (131, '<p>Kesesuaian bidang kerja.&nbsp;<br />\r\nTabel 8.d.2) LKPS</p>', 1);
INSERT INTO `indikators` VALUES (132, '<p>Tingkat dan ukuran tempat kerja lulusan.<br />\r\nTabel 8.e.1) LKPS</p>', 1);
INSERT INTO `indikators` VALUES (133, '<p>Tingkat kepuasan pengguna lulusan.<br />\r\nTabel 8.e.2) LKPS</p>', 1);
INSERT INTO `indikators` VALUES (134, '<p>Publikasi ilmiah mahasiswa, yang dihasilkan secara mandiri atau bersama DTPS, dengan judul yang relevan dengan bidang program studi dalam 3 tahun terakhir.<br />\r\nTabel 8.f.1) LKPS</p>', 1);
INSERT INTO `indikators` VALUES (135, '<p>Luaran penelitian dan PkM yang dihasilkan mahasiswa, baik secara mandiri atau bersama DTPS dalam 3 tahun terakhir.<br />\r\nTabel 8.f.4) LKPS</p>', 1);
INSERT INTO `indikators` VALUES (136, '<p>Keserbacakupan (kelengkapan, keluasan, dan kedalaman), ketepatan, ketajaman, dan kesesuaian analisis capaian kinerja serta konsistensi dengan setiap kriteria.</p>', 1);
INSERT INTO `indikators` VALUES (137, '<p>Ketepatan analisis SWOT atau analisis yang relevan di dalam mengembangkan strategi.</p>', 1);
INSERT INTO `indikators` VALUES (138, '<p>Ketepatan di dalam menetapkan prioritas program pengembangan.</p>', 1);
INSERT INTO `indikators` VALUES (139, '<p>UPPS memiliki kebijakan, ketersediaan sumberdaya, kemampuan melaksanakan, dan kerealistikan program.</p>', 1);
INSERT INTO `indikators` VALUES (141, '<p>Konsistensi dengan hasil analisis SWOT dan/atau analisis lain serta rencana pengembangan ke depan.</p>', 3);
INSERT INTO `indikators` VALUES (142, '<p>Keserbacakupan informasi dalam profil dan konsistensi antara profil dengan data dan informasi yang disampaikan pada masing-masing kriteria, serta menunjukkan iklim yang kondusif untuk pengembangan dan reputasi sebagai rujukan di bidang keilmuannya.</p>', 3);
INSERT INTO `indikators` VALUES (143, '<p>Kesesuaian Visi, Misi, Tujuan dan Strategi (VMTS) Unit Pengelola Program Studi (UPPS) terhadap VMTS Perguruan Tinggi (PT) dan visi keilmuan Program Studi (PS) yang dikelolanya.</p>', 3);
INSERT INTO `indikators` VALUES (144, '<p>Mekanisme dan keterlibatan pemangku kepentingan dalam penyusunan VMTS UPPS.</p>', 3);
INSERT INTO `indikators` VALUES (145, '<p>Strategi pencapaian tujuan disusun berdasarkan analisis yang sistematis, serta pada pelaksanaannya dilakukan pemantauan dan evaluasi yang ditindak lanjuti.&nbsp;</p>', 3);
INSERT INTO `indikators` VALUES (146, '<p>A. Kelengkapan struktur organisasi dan keefektifan penyelenggaraan organisasi.</p>\r\n<p>B. Perwujudan good governance dan pemenuhan lima pilar sistem tata pamong, yang mencakup:</p>\r\n\r\n<ol>\r\n	<li>Kredibel,</li>\r\n	<li>Transparan,</li>\r\n	<li>Akuntabel,</li>\r\n	<li>Bertanggung jawab,</li>\r\n	<li>Adil.</li>\r\n</ol>\r\n<p>Skor = (A + (2 x B)) / 3</p>', 3);
INSERT INTO `indikators` VALUES (147, '<p>A. Komitmen pimpinan UPPS.</p>\r\n<p>B. Kapabilitas pimpinan UPPS, mencakup aspek:</p>\r\n\r\n<ol>\r\n	<li>perencanaan,</li>\r\n	<li>pengorganisasian,</li>\r\n	<li>penempatan personel,</li>\r\n	<li>pelaksanaan,</li>\r\n	<li>pengendalian dan pengawasan, dan</li>\r\n	<li>pelaporan yang menjadi dasar tindak lanjut.&nbsp;</li>\r\n</ol>\r\n<p>Skor = (A + (2 x B)) / 3</p>', 3);
INSERT INTO `indikators` VALUES (148, '<p>Mutu, manfaat, kepuasan dan keberlanjutan kerjasama pendidikan, penelitian dan PkM yang relevan dengan program studi. UPPS memiliki bukti yang sahih terkait kerjasama yang ada telah memenuhi 3 aspek berikut:</p>\r\n\r\n<ol>\r\n	<li>memberikan manfaat bagi program studi dalam pemenuhan proses pembelajaran, penelitian, PkM.</li>\r\n	<li>memberikan peningkatan kinerja tridharma dan fasilitas pendukung program studi.</li>\r\n	<li>memberikan kepuasan kepada mitra industri dan mitra kerjasama lainnya, serta menjamin keberlanjutan kerjasama dan hasilnya.</li>\r\n</ol>', 3);
INSERT INTO `indikators` VALUES (149, '<p>A. Kerjasama perguruan tinggi di bidang pendidikan, penelitian dan PkM dalam 3 tahun terakhir.</p>\r\n<p>B. Kerjasama tingkat internasional, nasional, wilayah/lokal yang relevan dengan program studi dan dikelola oleh UPPS dalam 3 tahun terakhir.\r\nTabel 1 LKPS</p>', 3);
INSERT INTO `indikators` VALUES (150, '<p>Pelampauan SN-DIKTI (indikator kinerja tambahan) yang ditetapkan oleh UPPS pada tiap kriteria.</p>', 3);
INSERT INTO `indikators` VALUES (151, '<p>Analisis keberhasilan dan/atau ketidakberhasilan pencapaian kinerja yang telah ditetapkan institusi yang memenuhi 2 aspek sebagai berikut:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>capaian kinerja harus diukur dengan metoda yang tepat, dan hasilnya dianalisis serta dievaluasi, dan</li>\r\n	<li>analisis terhadap capaian kinerja mencakup identifikasi akar masalah, faktor pendukung keberhasilan dan faktor penghambat ketercapaian standar, dan deskripsi singkat tindak lanjut yang akan dilakukan.</li>\r\n</ol>', 3);
INSERT INTO `indikators` VALUES (152, '<p>Keterlaksanaan Sistem Penjaminan Mutu Internal (akademik dan nonakademik) yang dibuktikan dengan keberadaan 5 aspek:</p>\r\n\r\n<ol>\r\n	<li>dokumen legal pembentukan unsur pelaksana penjaminan mutu.</li>\r\n	<li>ketersediaan dokumen mutu: kebijakan SPMI, manual SPMI, standar SPMI, dan formulir SPMI.</li>\r\n	<li>terlaksananya siklus penjaminan mutu (siklus PPEPP).</li>\r\n	<li>bukti sahih efektivitas pelaksanaan penjaminan mutu.</li>\r\n	<li>memiliki external benchmarking dalam peningkatan mutu.</li>\r\n</ol>', 3);
INSERT INTO `indikators` VALUES (153, '<p>Pengukuran kepuasan layanan manajemen terhadap para pemangku kepentingan: mahasiswa, dosen, tenaga kependidikan, lulusan, pengguna dan mitra yang memenuhi aspek-aspek berikut:</p>\r\n\r\n<ol>\r\n	<li>menggunakan instrumen kepuasan yang sahih, andal, mudah digunakan,</li>\r\n	<li>dilaksanakan secara berkala, serta datanya terekam secara komprehensif,&nbsp;</li>\r\n	<li>dianalisis dengan metode yang tepat serta bermanfaat untuk pengambilan keputusan,</li>\r\n	<li>tingkat kepuasan dan umpan balik ditindaklanjuti untuk perbaikan dan peningkatan mutu luaran secara berkala dan tersistem,</li>\r\n	<li>dilakukan review terhadap pelaksanaan pengukuran kepuasan dosen dan mahasiswa, serta</li>\r\n	<li>hasilnya dipublikasikan dan mudah diakses oleh dosen dan mahasiswa.</li>\r\n</ol>', 3);
INSERT INTO `indikators` VALUES (154, '<p>Metoda rekrutmen dan keketatan seleksi.<br />\r\nTabel 2.a LKPS</p>', 3);
INSERT INTO `indikators` VALUES (155, '<p>A. Peningkatan animo calon mahasiswa.<br />\r\nTabel 2.a LKPS</p>', 3);
INSERT INTO `indikators` VALUES (156, '<p>A. Ketersediaan layanan kemahasiswaan di bidang:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>penalaran, minat dan bakat,</li>\r\n	<li>kesejahteraan (bimbingan dan konseling, layanan beasiswa, dan layanan kesehatan), dan</li>\r\n	<li>bimbingan karir dan kewirausahaan.</li>\r\n</ol>\r\n\r\n<p>B. Akses dan mutu layanan kemahasiswaan.</p>\r\n\r\n<p>Skor = (A + (2 x B)) / 3</p>', 3);
INSERT INTO `indikators` VALUES (157, '<p>Kecukupan jumlah DTPS.<br />\r\nTabel 3.a.1) LKPS</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>', 3);
INSERT INTO `indikators` VALUES (158, '<p>Kualifikasi akademik DTPS.<br />\r\nTabel 3.a.1) LKPS</p>\r\n\r\n<p>NDS3 = Jumlah DTPS yang berpendidikan tertinggi Doktor/Doktor Terapan/Subspesialis.</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>\r\n\r\n<p>PDS3 = (NDS3 / NDTPS) x 100%</p>', 3);
INSERT INTO `indikators` VALUES (159, '<p>Jabatan akademik DTPS.<br />\r\nTabel 3.a.1) LKPS</p>\r\n\r\n<p>NDGB = Jumlah DTPS yang memiliki jabatan akademik Guru Besar.</p>\r\n\r\n<p>NDLK = Jumlah DTPS yang memiliki jabatan akademik Lektor Kepala.</p>\r\n\r\n<p>PGBLKL = ((NDGB + NDLK + NDL) / NDTPS) x 100%</p>', 3);
INSERT INTO `indikators` VALUES (160, '<p>Rasio jumlah mahasiswa program studi terhadap jumlah DTPS.<br />\r\nTabel 2.a LKPS dan Tabel 3.a.1) LKPS</p>\r\n\r\n<p>NM = Jumlah mahasiswa pada saat TS.</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>\r\n\r\n<p>RMD = NM / NDTPS</p>', 3);
INSERT INTO `indikators` VALUES (161, '<p>Penugasan DTPS sebagai pembimbing utama tugas akhir mahasiswa.<br />\r\nTabel 3.a.2) LKPS&nbsp;</p>\r\n\r\n<p>RDPUPS = Rata-rata jumlah mahasiswa yang dibimbing pada PS yang diakreditasi</p>\r\n\r\n<p>RDPUL = Rata-rata jumlah mahasiswa yang dibimbing pada PS lain di PT</p>\r\n\r\n<p>RDPU = (RDUPS + RDPUL) / 2</p>', 3);
INSERT INTO `indikators` VALUES (162, '<p>Ekuivalensi Waktu Mengajar Penuh DTPS.<br />\r\nTabel 3.a.3) LKPS</p>\r\n\r\n<p>EWMPDT = Rata-rata EWMP DT per semester pada saat TS.</p>\r\n\r\n<p>EWMPDTPS = Rata-rata EWMP DTPS per semester pada saat TS.</p>\r\n\r\n<p>EWMP = EWMPDTPS</p>', 3);
INSERT INTO `indikators` VALUES (163, '<p>Dosen tidak tetap.<br />\r\nTabel 3.a.4) LKPS</p>\r\n\r\n<p>NDTT = Jumlah dosen tidak tetap yang ditugaskan sebagai pengampu mata kuliah di program studi yang diakreditasi.</p>\r\n\r\n<p>NDT = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah di program studi yang diakreditasi.</p>\r\n\r\n<p>PDTT = (NDTT / (NDTT + NDT)) x 100%</p>', 3);
INSERT INTO `indikators` VALUES (164, '<p>Pengakuan/rekognisi atas kepakaran/prestasi/kinerja DTPS.<br />\r\nPengakuan/rekognisi atas kepakaran/prestasi/kinerja DTPS dapat berupa:</p>\r\n\r\n<ol>\r\n	<li>menjadi staf ahli/tenaga ahli/narasumber di lembaga tingkat wilayah/nasional/ internasional pada bidang yang sesuai dengan bidang program studi.</li>\r\n	<li>menjadi visiting lecturer atau visiting scholar di program studi/perguruan tinggi terakreditasi A/Unggul atau program studi/perguruan tinggi internasional bereputasi.</li>\r\n	<li>menjadi invited speaker pada pertemuan ilmiah tingkat wilayah/nasional/ internasional.</li>\r\n	<li>menjadi editor atau mitra bestari pada jurnal nasional terakreditasi/jurnal internasional bereputasi di bidang yang sesuai dengan bidang program studi.</li>\r\n</ol>\r\n\r\n<p>Tabel 3.b.1) LKPS</p>\r\n\r\n<p>NRD = Jumlah pengakuan atas prestasi/kinerja DTPS yang relevan dengan bidang keahlian dalam 3 tahun terakhir.</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>\r\n\r\n<p>RRD = NRD / NDTPS&nbsp;</p>', 3);
INSERT INTO `indikators` VALUES (165, '<p>Kegiatan penelitian DTPS yang relevan dengan bidang program studi dalam 3 tahun terakhir.<br />\r\nTabel 3.b.2) LKPS</p>\r\n\r\n<p>NI = Jumlah penelitian dengan sumber pembiayaan luar negeri dalam 3 tahun terakhir.</p>\r\n\r\n<p>NN = Jumlah penelitian dengan sumber pembiayaan dalam negeri dalam 3 tahun terakhir.</p>\r\n\r\n<p>NL = Jumlah penelitian dengan sumber pembiayaan PT/mandiri dalam 3 tahun terakhir.</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>\r\n\r\n<p>RI = NI / 3 / NDTPS</p>\r\n\r\n<p>RN = NN / 3 / NDTPS</p>\r\n\r\n<p>RL = NL / 3 / NDTPS</p>', 3);
INSERT INTO `indikators` VALUES (166, '<p>Kegiatan PkM DTPS yang relevan dengan bidang program studi dalam 3 tahun terakhir.</p>', 3);
INSERT INTO `indikators` VALUES (167, '<p>Publikasi ilmiah dengan tema yang relevan dengan bidang program studi yang dihasilkan DTPS dalam 3 tahun terakhir.<br />\r\nTabel 3.b.4) LKPS</p>', 3);
INSERT INTO `indikators` VALUES (168, '<p>Artikel karya ilmiah DTPS yang disitasi dalam 3 tahun terakhir.<br />\r\nTabel 3.b.5) LKPS</p>\r\n\r\n<p>NAS = Jumlah judul artikel yang disitasi.</p>\r\n\r\n<p>NDTPS = Jumlah dosen tetap yang ditugaskan sebagai pengampu mata kuliah dengan bidang keahlian yang sesuai dengan kompetensi inti program studi yang diakreditasi.</p>\r\n\r\n<p>RS = NAS / NDTPS</p>', 3);
INSERT INTO `indikators` VALUES (169, '<p>Luaran penelitian dan PkM yang dihasilkan DTPS dalam 3 tahun terakhir.<br />\r\nTabel 3.b.7) LKPS</p>', 3);
INSERT INTO `indikators` VALUES (170, '<p>Upaya pengembangan dosen.<br />\r\nCatatan: Jika Skor rata-rata butir Profil Dosen &ge; 3,5 , maka Skor = 4.</p>', 3);
INSERT INTO `indikators` VALUES (171, '<p>A. Kualifikasi dan kecukupan tenaga kependidikan berdasarkan jenis pekerjaannya (administrasi, pustakawan, teknisi, dll.)<br />\r\nCatatan: Penilaian kecukupan tidak hanya ditentukan oleh jumlah tenaga kependidikan, namun keberadaan dan pemanfaatan teknologi informasi dan komputer dalam proses administrasi dapat dijadikan pertimbangan untuk menilai efektifitas pekerjaan dan kebutuhan akan tenaga kependidikan.</p>\r\n\r\n<p>B. Akses dan mutu layanan kemahasiswaan.</p>\r\n\r\n<p>Skor = (A + (2 x B)) / 3</p>', 3);
INSERT INTO `indikators` VALUES (172, '<p>Biaya operasional pendidikan.<br />\r\nTabel 4 LKPS</p>\r\n\r\n<p>BOP = Biaya operasional pendidikan dalam 3 tahun terakhir.</p>\r\n\r\n<p>NM = Jumlah mahasiswa aktif pada saat TS.</p>\r\n\r\n<p>DOP = Rata-rata dana operasional pendidikan/mahasiswa/ tahun dalam 3 tahun terakhir = BOP / 3 / NM</p>', 3);
INSERT INTO `indikators` VALUES (173, '<p>Dana penelitian DTPS.<br />\r\nTabel 4 LKPS</p>', 3);
INSERT INTO `indikators` VALUES (174, '<p>Dana pengabdian kepada masyarakat DTPS.<br />\r\nTabel 4 LKPS</p>', 3);
INSERT INTO `indikators` VALUES (175, '<p>Realisasi investasi (SDM, sarana dan prasarana) yang mendukung penyelenggaraan tridharma.<br />\r\nCatatan: Jika Skor rata-rata butir tentang Profil Dosen, Sarana, dan Prasarana &ge; 3,5 , maka Skor butir ini = 4.</p>', 3);
INSERT INTO `indikators` VALUES (176, '<p>Kecukupan dana untuk menjamin pencapaian capaian pembelajaran.</p>', 3);
INSERT INTO `indikators` VALUES (177, '<p>Kecukupan, aksesibilitas dan mutu sarana dan prasarana untuk menjamin pencapaian capaian pembelajaran dan meningkatkan suasana akademik.</p>', 3);
INSERT INTO `indikators` VALUES (178, '<p>A. Keterlibatan pemangku kepentingan dalam proses evaluasi dan pemutakhiran kurikulum.</p>\r\n\r\n<p>B. Kesesuaian capaian pembelajaran dengan profil lulusan dan jenjang KKNI/SKKNI.</p>\r\n\r\n<p>C. Ketepatan struktur kurikulum dalam pembentukan capaian pembelajaran.</p>\r\n\r\n<p>Skor = (A + (2 x B) + (2 x C)) / 5</p>', 3);
INSERT INTO `indikators` VALUES (179, '<p>Pemenuhan karakteristik proses pembelajaran, yang terdiri atas sifat:</p>\r\n\r\n<ol>\r\n	<li>interaktif,</li>\r\n	<li>holistik,</li>\r\n	<li>integratif,</li>\r\n	<li>saintifik,</li>\r\n	<li>kontekstual,</li>\r\n	<li>tematik,</li>\r\n	<li>efektif,</li>\r\n	<li>kolaboratif, dan</li>\r\n	<li>berpusat pada mahasiswa.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>', 3);
INSERT INTO `indikators` VALUES (180, '<p>A. Ketersediaan dan kelengkapan dokumen rencana pembelajaran semester (RPS)&nbsp;</p>\r\n\r\n<p>B. Kedalaman dan keluasan RPS sesuai dengan capaian pembelajaran lulusan.</p>\r\n\r\n<p>Skor = (A + (2 x B)) / 3</p>', 3);
INSERT INTO `indikators` VALUES (181, '<p>A. Bentuk interaksi antara dosen, mahasiswa dan sumber belajar</p>\r\n\r\n<p>B. Pemantauan kesesuaian proses terhadap rencana pembelajaran</p>\r\n\r\n<p>C. Proses pembelajaran yang terkait dengan penelitian harus mengacu SN Dikti Penelitian: 1) hasil penelitian: harus memenuhi pengembangan IPTEKS, meningkatkan kesejahteraan masyarakat, dan daya saing bangsa. 2) isi penelitian: memenuhi kedalaman dan keluasan materi penelitian sesuai capaian pembelajaran. 3) proses penelitian: mencakup perencanaan, pelaksanaan, dan pelaporan. 4) penilaian penelitian memenuhi unsur edukatif, obyektif, akuntabel, dan transparan.</p>\r\n\r\n<p>D. Proses pembelajaran yang terkait dengan PkM harus mengacu SN Dikti PkM: 1) hasil PkM: harus memenuhi pengembangan IPTEKS, meningkatkan kesejahteraan masyarakat, dan daya saing bangsa. 2) isi PkM: memenuhi kedalaman dan keluasan materi PkM sesuai capaian pembelajaran. 3) proses PkM: &nbsp;mencakup perencanaan, pelaksanaan, dan pelaporan. 4) penilaian PkM memenuhi unsur edukatif, obyektif, akuntabel, dan transparan.</p>\r\n\r\n<p>E. Kesesuaian metode pembelajaran dengan capaian pembelajaran. Contoh: RBE (research based education), IBE (industry based education), teaching factory/teaching industry, dll.</p>\r\n\r\n<p>Skor = (A + (2 x B) + (2 x C) + (2 x D) + (2 x E)) / 9</p>', 3);
INSERT INTO `indikators` VALUES (182, '<p>Pembelajaran yang dilaksanakan dalam bentuk praktikum, praktik studio, praktik bengkel, atau praktik lapangan.<br />\r\nTabel 5.a LKPS</p>\r\n\r\n<p>JP = Jam pembelajaran praktikum, praktik studio, praktik bengkel, atau praktik lapangan (termasuk KKN)</p>\r\n\r\n<p>JB = Jam pembelajaran total selama masa pendidikan.</p>\r\n\r\n<p>PJP = (JP / JB) x 100%</p>', 3);
INSERT INTO `indikators` VALUES (183, '<p>Monitoring dan evaluasi pelaksanaan proses pembelajaran mencakup karakteristik, perencanaan, pelaksanaan, proses pembelajaran dan beban belajar mahasiswa untuk memperoleh capaian pembelajaran lulusan.</p>', 3);
INSERT INTO `indikators` VALUES (184, '<p>A. Mutu pelaksanaan penilaian pembelajaran (proses dan hasil belajar mahasiswa) untuk mengukur ketercapaian capaian pembelajaran berdasarkan prinsip penilaian yang mencakup: 1) edukatif, 2) otentik, 3) objektif, 4) akuntabel, dan 5) transparan, yang dilakukan secara terintegrasi.</p>\r\n\r\n<p>B. Pelaksanaan penilaian terdiri atas teknik dan instrumen penilaian.&nbsp;<br />\r\nTeknik penilaian terdiri dari: 1) observasi, 2) partisipasi, 3) unjuk kerja, 4) test tertulis, 5) test lisan, dan 6) angket.<br />\r\nInstrumen penilaian terdiri dari: 1) penilaian proses dalam bentuk rubrik, dan/ atau; 2) penilaian hasil dalam bentuk portofolio, atau 3) karya disain.</p>\r\n\r\n<p>C. Pelaksanaan penilaian memuat unsur-unsur sebagai berikut: 1) mempunyai kontrak rencana penilaian, 2) melaksanakan penilaian sesuai kontrak atau kesepakatan, 3) memberikan umpan balik dan memberi kesempatan untuk mempertanyakan hasil kepada mahasiswa, 4) mempunyai dokumentasi penilaian proses dan hasil belajar mahasiswa, 5) mempunyai prosedur yang mencakup tahap perencanaan, kegiatan pemberian tugas atau soal, observasi kinerja, pengembalian hasil observasi, dan pemberian nilai akhir, 6) pelaporan penilaian berupa kualifikasi keberhasilan mahasiswa dalam menempuh suatu mata kuliah dalam bentuk huruf dan angka, 7) mempunyai bukti-bukti rencana dan telah melakukan proses perbaikan berdasar hasil monev penilaian.</p>\r\n\r\n<p>Skor = (A + (2 x B) + (2 x C)) / 5</p>', 3);
INSERT INTO `indikators` VALUES (185, '<p>Integrasi kegiatan penelitian dan PkM dalam pembelajaran oleh DTPS dalam 3 tahun terakhir.<br />\r\nTabel 5.b LKPS</p>\r\n\r\n<p>MK = Jumlah mata kuliah yang dikembangkan berdasarkan hasil penelitian/PkM DTPS dalam 3 tahun terakhir.</p>', 3);
INSERT INTO `indikators` VALUES (186, '<p>Keterlaksanaan dan keberkalaan program dan kegiatan diluar kegiatan pembelajaran terstruktur untuk meningkatkan suasana akademik.<br />\r\nContoh: kegiatan himpunan mahasiswa, kuliah umum/studium generale, seminar ilmiah, bedah buku.</p>', 3);
INSERT INTO `indikators` VALUES (187, '<p>A. Tingkat kepuasan mahasiswa terhadap proses pendidikan.<br />\r\nTabel 5.c LKPS<br />\r\nAspek yang diukur: 1) Keandalan (reliability): kemampuan dosen, tenaga kependidikan, dan pengelola dalam memberikan pelayanan; 2) Daya tanggap (responsiveness): kemauan dari dosen, tenaga kependidikan, dan pengelola dalam membantu mahasiswa dan memberikan jasa dengan cepat; 3) Kepastian (assurance): kemampuan dosen, tenaga kependidikan, dan pengelola untuk memberi keyakinan kepada mahasiswa bahwa pelayanan yang diberikan telah sesuai dengan ketentuan; 4) Empati (empathy): kesediaan/kepedulian dosen, tenaga kependidikan, dan pengelola untuk memberi perhatian kepada mahasiswa; dan 5) Tangible: penilaian mahasiswa terhadap kecukupan, aksesibitas, kualitas sarana dan prasarana.</p>\r\n\r\n<p>B. Analisis dan tindak lanjut dari hasil pengukuran kepuasan mahasiswa.</p>\r\n\r\n<p>Skor = (A + (2 x B)) / 3</p>', 3);
INSERT INTO `indikators` VALUES (188, '<p>Relevansi penelitian pada UPPS mencakup unsur-unsur sebagai berikut:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>memiliki peta jalan yang memayungi tema penelitian dosen dan mahasiswa,</li>\r\n	<li>dosen dan mahasiswa melaksanakan penelitian sesuai dengan agenda penelitian dosen yang merujuk kepada peta jalan penelitian.&nbsp;</li>\r\n	<li>melakukan evaluasi kesesuaian penelitian dosen dan mahasiswa dengan peta jalan, dan&nbsp;</li>\r\n	<li>menggunakan hasil evaluasi untuk perbaikan relevansi penelitian dan pengembangan keilmuan program studi.</li>\r\n</ol>', 3);
INSERT INTO `indikators` VALUES (189, '<p>Penelitian DTPS yang dalam pelaksanaannya melibatkan mahasiswa program studi dalam 3 tahun terakhir.<br />\r\nTabel 6.a LKPS</p>\r\n\r\n<p>NPM = Jumlah judul penelitian DTPS yang dalam pelaksanaannya melibatkan mahasiswa program studi dalam 3 tahun terakhir.</p>\r\n\r\n<p>NPD = Jumlah judul penelitian DTPS dalam 3 tahun terakhir.&nbsp;</p>\r\n\r\n<p>PPDM = (NPM / NPkMD) x 100%&nbsp;</p>', 3);
INSERT INTO `indikators` VALUES (190, '<p>Relevansi PkM pada UPPS mencakup unsur-unsur sebagai berikut:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>memiliki peta jalan yang memayungi tema PkM dosen dan mahasiswa serta hilirisasi/penerapan keilmuan program studi,&nbsp;</li>\r\n	<li>dosen dan mahasiswa melaksanakan PkM sesuai dengan peta jalan PkM.&nbsp;</li>\r\n	<li>melakukan evaluasi kesesuaian PkM dosen dan mahasiswa dengan peta jalan, dan&nbsp;</li>\r\n	<li>menggunakan hasil evaluasi untuk perbaikan relevansi PkM dan pengembangan keilmuan program studi.</li>\r\n</ol>', 3);
INSERT INTO `indikators` VALUES (191, '<p>PkM DTPS yang dalam pelaksanaannya melibatkan mahasiswa program studi dalam 3 tahun terakhir.<br />\r\nTabel 7 LKPS</p>\r\n\r\n<p>NPkMM = Jumlah judul PkM DTPS yang dalam pelaksanaannya melibatkan mahasiswa program studi dalam 3 tahun terakhir.</p>\r\n\r\n<p>NPkMD = Jumlah judul PkM DTPS dalam 3 tahun terakhir.&nbsp;</p>\r\n\r\n<p>PPkMDM = (NPkMM / NPkMD) x 100%&nbsp;</p>', 3);
INSERT INTO `indikators` VALUES (192, '<p>Analisis pemenuhan capaian pembelajaran lulusan (CPL) yang diukur dengan metoda yang sahih dan relevan, mencakup aspek:</p>\r\n\r\n<ol>\r\n	<li>keserbacakupan,&nbsp;</li>\r\n	<li>kedalaman, dan&nbsp;</li>\r\n	<li>kebermanfaatan analisis yang ditunjukkan dengan peningkatan CPL dari waktu ke waktu dalam 3 tahun terakhir.</li>\r\n</ol>', 3);
INSERT INTO `indikators` VALUES (193, '<p>IPK lulusan.<br />\r\nTabel 8.a LKPS</p>\r\n\r\n<p>RIPK = Rata-rata IPK lulusan dalam 3 tahun terakhir.</p>', 3);
INSERT INTO `indikators` VALUES (194, '<p>Prestasi mahasiswa di bidang akademik dalam 3 tahun terakhir.<br />\r\nTabel 8.b.1) LKP</p>\r\n\r\n<p>RW = NW / NM</p>', 3);
INSERT INTO `indikators` VALUES (195, '<p>Prestasi mahasiswa di bidang nonakademik dalam 3 tahun terakhir.<br />\r\nTabel 8.b.2) LKPS</p>\r\n\r\n<p>RW = NW / NM</p>', 3);
INSERT INTO `indikators` VALUES (196, '<p>Masa studi.<br />\r\nTabel 8.c LKPS</p>', 3);
INSERT INTO `indikators` VALUES (197, '<p>Kelulusan tepat waktu.<br />\r\nTabel 8.c LKPS</p>', 3);
INSERT INTO `indikators` VALUES (198, '<p>Keberhasilan studi.<br />\r\nTabel 8.c LKPS</p>', 3);
INSERT INTO `indikators` VALUES (199, '<p>Pelaksanaan tracer study yang mencakup 5 aspek sebagai berikut:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>pelaksanaan tracer study terkoordinasi di tingkat PT,</li>\r\n	<li>kegiatan tracer study dilakukan secara reguler setiap tahun dan terdokumentasi,</li>\r\n	<li>isi kuesioner mencakup seluruh pertanyaan inti tracer study DIKTI.</li>\r\n	<li>ditargetkan pada seluruh populasi (lulusan TS-4 s.d. TS-2),</li>\r\n	<li>hasilnya disosialisasikan dan digunakan untuk pengembangan kurikulum dan pembelajaran.&nbsp;</li>\r\n</ol>', 3);
INSERT INTO `indikators` VALUES (200, '<p>Waktu tunggu.<br />\r\nTabel 8.d.1) LKPS</p>', 3);
INSERT INTO `indikators` VALUES (201, '<p>Kesesuaian bidang kerja.&nbsp;<br />\r\nTabel 8.d.2) LKPS</p>', 3);
INSERT INTO `indikators` VALUES (202, '<p>Tingkat dan ukuran tempat kerja lulusan.<br />\r\nTabel 8.e.1) LKPS</p>', 3);
INSERT INTO `indikators` VALUES (203, '<p>Tingkat kepuasan pengguna lulusan.<br />\r\nTabel 8.e.2) LKPS</p>', 3);
INSERT INTO `indikators` VALUES (204, '<p>Publikasi ilmiah mahasiswa, yang dihasilkan secara mandiri atau bersama DTPS, dengan judul yang relevan dengan bidang program studi dalam 3 tahun terakhir.<br />\r\nTabel 8.f.1) LKPS</p>', 3);
INSERT INTO `indikators` VALUES (205, '<p>Luaran penelitian dan PkM yang dihasilkan mahasiswa, baik secara mandiri atau bersama DTPS dalam 3 tahun terakhir.<br />\r\nTabel 8.f.4) LKPS</p>', 3);
INSERT INTO `indikators` VALUES (206, '<p>Keserbacakupan (kelengkapan, keluasan, dan kedalaman), ketepatan, ketajaman, dan kesesuaian analisis capaian kinerja serta konsistensi dengan setiap kriteria.</p>', 3);
INSERT INTO `indikators` VALUES (207, '<p>Ketepatan analisis SWOT atau analisis yang relevan di dalam mengembangkan strategi.</p>', 3);
INSERT INTO `indikators` VALUES (208, '<p>Ketepatan di dalam menetapkan prioritas program pengembangan.</p>', 3);
INSERT INTO `indikators` VALUES (209, '<p>UPPS memiliki kebijakan, ketersediaan sumberdaya, kemampuan melaksanakan, dan kerealistikan program.</p>', 3);

-- ----------------------------
-- Table structure for jenjangs
-- ----------------------------
DROP TABLE IF EXISTS `jenjangs`;
CREATE TABLE `jenjangs`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jenjangs
-- ----------------------------
INSERT INTO `jenjangs` VALUES (0, '0', 'NULL');
INSERT INTO `jenjangs` VALUES (1, 'Diploma Tiga', 'D3');
INSERT INTO `jenjangs` VALUES (2, 'Strata Satu', 'S1');
INSERT INTO `jenjangs` VALUES (3, 'Diploma Empat', 'D4');

-- ----------------------------
-- Table structure for l1_s
-- ----------------------------
DROP TABLE IF EXISTS `l1_s`;
CREATE TABLE `l1_s`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `jenjang_id` bigint NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of l1_s
-- ----------------------------
INSERT INTO `l1_s` VALUES (0, NULL, 0, '2022-02-13 11:24:38', '2022-02-13 11:24:39');
INSERT INTO `l1_s` VALUES (1, 'A. Kondisi Eksternal', 2, '2022-02-12 04:47:56', '2022-02-12 04:47:56');
INSERT INTO `l1_s` VALUES (2, 'B. Profil Unit Pengelola Program Studi', 2, '2022-02-12 04:48:12', '2022-02-12 04:48:12');
INSERT INTO `l1_s` VALUES (3, 'C.1. Visi, Misi, Tujuan dan Strategi', 2, '2022-02-12 04:48:28', '2022-02-12 04:48:28');
INSERT INTO `l1_s` VALUES (4, 'C.2. Tata Pamong, Tata Kelola dan Kerjasama', 2, '2022-02-12 04:48:45', '2022-02-12 04:48:45');
INSERT INTO `l1_s` VALUES (5, 'C.3. Mahasiswa', 2, '2022-02-12 04:49:03', '2022-02-12 04:49:03');
INSERT INTO `l1_s` VALUES (6, 'C.4. Sumber Daya Manusia', 2, '2022-02-12 04:49:17', '2022-02-12 04:49:17');
INSERT INTO `l1_s` VALUES (7, 'C.5. Keuangan, Sarana dan Prasarana', 2, '2022-02-12 04:49:38', '2022-02-12 04:49:38');
INSERT INTO `l1_s` VALUES (8, 'C.6. Pendidikan', 2, '2022-02-12 04:49:53', '2022-02-12 04:49:53');
INSERT INTO `l1_s` VALUES (9, 'C.7. Penelitian', 2, '2022-02-12 04:50:08', '2022-02-12 04:50:08');
INSERT INTO `l1_s` VALUES (10, 'C.8. Pengabdian kepada Masyarakat', 2, '2022-02-12 04:50:27', '2022-02-12 04:50:27');
INSERT INTO `l1_s` VALUES (11, 'C.9. Luaran dan Capaian Tridharma', 2, '2022-02-12 04:50:44', '2022-02-12 04:50:44');
INSERT INTO `l1_s` VALUES (12, 'D. Analisis dan Penetapan Program Pengembangan', 2, '2022-02-12 04:51:04', '2022-02-12 04:51:04');
INSERT INTO `l1_s` VALUES (13, 'A. Kondisi Eksternal', 1, '2022-02-12 04:47:56', '2022-02-12 04:47:56');
INSERT INTO `l1_s` VALUES (14, 'B. Profil Unit Pengelola Program Studi', 1, '2022-02-12 04:48:12', '2022-02-12 04:48:12');
INSERT INTO `l1_s` VALUES (15, 'C.1. Visi, Misi, Tujuan dan Strategi', 1, '2022-02-12 04:48:28', '2022-02-12 04:48:28');
INSERT INTO `l1_s` VALUES (16, 'C.2. Tata Pamong, Tata Kelola dan Kerjasama', 1, '2022-02-12 04:48:45', '2022-02-12 04:48:45');
INSERT INTO `l1_s` VALUES (17, 'C.3. Mahasiswa', 1, '2022-02-12 04:49:03', '2022-02-12 04:49:03');
INSERT INTO `l1_s` VALUES (18, 'C.4. Sumber Daya Manusia', 1, '2022-02-12 04:49:17', '2022-02-12 04:49:17');
INSERT INTO `l1_s` VALUES (19, 'C.5. Keuangan, Sarana dan Prasarana', 1, '2022-02-12 04:49:38', '2022-02-12 04:49:38');
INSERT INTO `l1_s` VALUES (20, 'C.6. Pendidikan', 1, '2022-02-12 04:49:53', '2022-02-12 04:49:53');
INSERT INTO `l1_s` VALUES (21, 'C.7. Penelitian', 1, '2022-02-12 04:50:08', '2022-02-12 04:50:08');
INSERT INTO `l1_s` VALUES (22, 'C.8. Pengabdian kepada Masyarakat', 1, '2022-02-12 04:50:27', '2022-02-12 04:50:27');
INSERT INTO `l1_s` VALUES (23, 'C.9. Luaran dan Capaian Tridharma', 1, '2022-02-12 04:50:44', '2022-02-12 04:50:44');
INSERT INTO `l1_s` VALUES (24, 'D. Analisis dan Penetapan Program Pengembangan', 1, '2022-02-12 04:51:04', '2022-02-12 04:51:04');
INSERT INTO `l1_s` VALUES (25, 'A. Kondisi Eksternal', 3, '2022-02-12 04:47:56', '2022-02-12 04:47:56');
INSERT INTO `l1_s` VALUES (26, 'B. Profil Unit Pengelola Program Studi', 3, '2022-02-12 04:48:12', '2022-02-12 04:48:12');
INSERT INTO `l1_s` VALUES (27, 'C.1. Visi, Misi, Tujuan dan Strategi', 3, '2022-02-12 04:48:28', '2022-02-12 04:48:28');
INSERT INTO `l1_s` VALUES (28, 'C.2. Tata Pamong, Tata Kelola dan Kerjasama', 3, '2022-02-12 04:48:45', '2022-02-12 04:48:45');
INSERT INTO `l1_s` VALUES (29, 'C.3. Mahasiswa', 3, '2022-02-12 04:49:03', '2022-02-12 04:49:03');
INSERT INTO `l1_s` VALUES (30, 'C.4. Sumber Daya Manusia', 3, '2022-02-12 04:49:17', '2022-02-12 04:49:17');
INSERT INTO `l1_s` VALUES (31, 'C.5. Keuangan, Sarana dan Prasarana', 3, '2022-02-12 04:49:38', '2022-02-12 04:49:38');
INSERT INTO `l1_s` VALUES (32, 'C.6. Pendidikan', 3, '2022-02-12 04:49:53', '2022-02-12 04:49:53');
INSERT INTO `l1_s` VALUES (33, 'C.7. Penelitian', 3, '2022-02-12 04:50:08', '2022-02-12 04:50:08');
INSERT INTO `l1_s` VALUES (34, 'C.8. Pengabdian kepada Masyarakat', 3, '2022-02-12 04:50:27', '2022-02-12 04:50:27');
INSERT INTO `l1_s` VALUES (35, 'C.9. Luaran dan Capaian Tridharma', 3, '2022-02-12 04:50:44', '2022-02-12 04:50:44');
INSERT INTO `l1_s` VALUES (36, 'D. Analisis dan Penetapan Program Pengembangan', 3, '2022-02-12 04:51:04', '2022-02-12 04:51:04');

-- ----------------------------
-- Table structure for l2_s
-- ----------------------------
DROP TABLE IF EXISTS `l2_s`;
CREATE TABLE `l2_s`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `l1_id` int NULL DEFAULT 0,
  `jenjang_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of l2_s
-- ----------------------------
INSERT INTO `l2_s` VALUES (0, NULL, 0, 0, '2022-02-13 11:21:37', '2022-02-13 11:21:38');
INSERT INTO `l2_s` VALUES (1, 'A.1', 1, 2, '2022-02-13 05:26:21', '2022-05-23 03:10:52');
INSERT INTO `l2_s` VALUES (2, 'B.1', 2, 2, '2022-02-19 02:46:21', '2022-02-19 02:46:21');
INSERT INTO `l2_s` VALUES (3, 'C.1.4. Indikator Kinerja Utama', 3, 2, '2022-02-19 02:50:50', '2022-02-19 02:50:50');
INSERT INTO `l2_s` VALUES (4, 'C.2.4. Indikator Kinerja Utama', 4, 2, '2022-02-19 02:51:31', '2022-02-19 02:51:31');
INSERT INTO `l2_s` VALUES (5, 'C.2.5 Indikator Kinerja Tambahan', 4, 2, '2022-02-24 03:54:33', '2022-02-24 03:54:33');
INSERT INTO `l2_s` VALUES (6, 'C.2.6 Evaluasi Capaian Kinerja', 4, 2, '2022-02-24 03:55:13', '2022-02-24 03:55:13');
INSERT INTO `l2_s` VALUES (7, 'C.2.7 Penjaminan Mutu', 4, 2, '2022-02-24 03:55:57', '2022-02-24 03:55:57');
INSERT INTO `l2_s` VALUES (8, 'C.2.8 Kepuasan pemangku kepentingan', 4, 2, '2022-02-24 03:56:39', '2022-02-24 03:56:39');
INSERT INTO `l2_s` VALUES (9, 'C.3.4 Indikator Kinerja Utama', 5, 2, '2022-02-24 03:57:55', '2022-02-24 03:57:55');
INSERT INTO `l2_s` VALUES (10, 'C.4.4 Indikator Kinerja Utama', 6, 2, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (11, 'C.5.4 Indikator Kinerja Utama', 7, 2, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (12, 'C.6.4 Indikator Kinerja Utama', 8, 2, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (13, 'C.7.4 Indikator Kinerja Utama', 9, 2, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (14, 'C.8.4 Indikator Kinerja Utama', 10, 2, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (15, 'C.9.4 Indikator Kinerja Utama', 11, 2, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (16, 'D.1 Analisis dan Capaian Kinerja', 12, 2, '2022-02-24 07:19:17', '2022-02-24 07:19:17');
INSERT INTO `l2_s` VALUES (17, 'D.2 Analisis SWOT atau Analisis  Lain yang Relevan', 12, 2, '2022-02-24 07:19:48', '2022-02-24 07:19:48');
INSERT INTO `l2_s` VALUES (18, 'D.3 Program Pengembangan', 12, 2, '2022-02-24 07:20:15', '2022-02-24 07:20:15');
INSERT INTO `l2_s` VALUES (19, 'D.4 Program Keberlanjutan', 12, 2, '2022-02-24 07:20:46', '2022-02-24 07:20:46');
INSERT INTO `l2_s` VALUES (20, 'A.1', 13, 1, '2022-02-13 05:26:21', '2022-05-23 03:10:52');
INSERT INTO `l2_s` VALUES (21, 'B.1', 14, 1, '2022-02-19 02:46:21', '2022-02-19 02:46:21');
INSERT INTO `l2_s` VALUES (22, 'C.1.4. Indikator Kinerja Utama', 15, 1, '2022-02-19 02:50:50', '2022-02-19 02:50:50');
INSERT INTO `l2_s` VALUES (23, 'C.2.4. Indikator Kinerja Utama', 16, 1, '2022-02-19 02:51:31', '2022-02-19 02:51:31');
INSERT INTO `l2_s` VALUES (24, 'C.2.5 Indikator Kinerja Tambahan', 16, 1, '2022-02-24 03:54:33', '2022-02-24 03:54:33');
INSERT INTO `l2_s` VALUES (25, 'C.2.6 Evaluasi Capaian Kinerja', 16, 1, '2022-02-24 03:55:13', '2022-02-24 03:55:13');
INSERT INTO `l2_s` VALUES (26, 'C.2.7 Penjaminan Mutu', 16, 1, '2022-02-24 03:55:57', '2022-02-24 03:55:57');
INSERT INTO `l2_s` VALUES (27, 'C.2.8 Kepuasan pemangku kepentingan', 16, 1, '2022-02-24 03:56:39', '2022-02-24 03:56:39');
INSERT INTO `l2_s` VALUES (28, 'C.3.4 Indikator Kinerja Utama', 17, 1, '2022-02-24 03:57:55', '2022-02-24 03:57:55');
INSERT INTO `l2_s` VALUES (29, 'C.4.4 Indikator Kinerja Utama', 18, 1, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (30, 'C.5.4 Indikator Kinerja Utama', 19, 1, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (31, 'C.6.4 Indikator Kinerja Utama', 20, 1, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (32, 'C.7.4 Indikator Kinerja Utama', 21, 1, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (33, 'C.8.4 Indikator Kinerja Utama', 22, 1, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (34, 'C.9.4 Indikator Kinerja Utama', 23, 1, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (35, 'D.1 Analisis dan Capaian Kinerja', 24, 1, '2022-02-24 07:19:17', '2022-02-24 07:19:17');
INSERT INTO `l2_s` VALUES (36, 'D.2 Analisis SWOT atau Analisis  Lain yang Relevan', 24, 1, '2022-02-24 07:19:48', '2022-02-24 07:19:48');
INSERT INTO `l2_s` VALUES (37, 'D.3 Program Pengembangan', 24, 1, '2022-02-24 07:20:15', '2022-02-24 07:20:15');
INSERT INTO `l2_s` VALUES (38, 'D.4 Program Keberlanjutan', 24, 1, '2022-02-24 07:20:46', '2022-02-24 07:20:46');
INSERT INTO `l2_s` VALUES (39, 'A.1', 25, 3, '2022-02-13 05:26:21', '2022-05-23 03:10:52');
INSERT INTO `l2_s` VALUES (40, 'B.1', 26, 3, '2022-02-19 02:46:21', '2022-02-19 02:46:21');
INSERT INTO `l2_s` VALUES (41, 'C.1.4. Indikator Kinerja Utama', 27, 3, '2022-02-19 02:50:50', '2022-02-19 02:50:50');
INSERT INTO `l2_s` VALUES (42, 'C.2.4. Indikator Kinerja Utama', 28, 3, '2022-02-19 02:51:31', '2022-02-19 02:51:31');
INSERT INTO `l2_s` VALUES (43, 'C.2.5 Indikator Kinerja Tambahan', 28, 3, '2022-02-24 03:54:33', '2022-02-24 03:54:33');
INSERT INTO `l2_s` VALUES (44, 'C.2.6 Evaluasi Capaian Kinerja', 28, 3, '2022-02-24 03:55:13', '2022-02-24 03:55:13');
INSERT INTO `l2_s` VALUES (45, 'C.2.7 Penjaminan Mutu', 28, 3, '2022-02-24 03:55:57', '2022-02-24 03:55:57');
INSERT INTO `l2_s` VALUES (46, 'C.2.8 Kepuasan pemangku kepentingan', 28, 3, '2022-02-24 03:56:39', '2022-02-24 03:56:39');
INSERT INTO `l2_s` VALUES (47, 'C.3.4 Indikator Kinerja Utama', 29, 3, '2022-02-24 03:57:55', '2022-02-24 03:57:55');
INSERT INTO `l2_s` VALUES (48, 'C.4.4 Indikator Kinerja Utama', 30, 3, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (49, 'C.5.4 Indikator Kinerja Utama', 31, 3, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (50, 'C.6.4 Indikator Kinerja Utama', 32, 3, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (51, 'C.7.4 Indikator Kinerja Utama', 33, 3, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (52, 'C.8.4 Indikator Kinerja Utama', 34, 3, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (53, 'C.9.4 Indikator Kinerja Utama', 35, 3, '2022-02-24 10:58:27', '2022-02-24 10:58:29');
INSERT INTO `l2_s` VALUES (54, 'D.1 Analisis dan Capaian Kinerja', 36, 3, '2022-02-24 07:19:17', '2022-02-24 07:19:17');
INSERT INTO `l2_s` VALUES (55, 'D.2 Analisis SWOT atau Analisis  Lain yang Relevan', 36, 3, '2022-02-24 07:19:48', '2022-02-24 07:19:48');
INSERT INTO `l2_s` VALUES (56, 'D.3 Program Pengembangan', 36, 3, '2022-02-24 07:20:15', '2022-02-24 07:20:15');
INSERT INTO `l2_s` VALUES (57, 'D.4 Program Keberlanjutan', 36, 3, '2022-02-24 07:20:46', '2022-02-24 07:20:46');

-- ----------------------------
-- Table structure for l3_s
-- ----------------------------
DROP TABLE IF EXISTS `l3_s`;
CREATE TABLE `l3_s`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `l2_id` int NOT NULL DEFAULT 0,
  `jenjang_id` bigint NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of l3_s
-- ----------------------------
INSERT INTO `l3_s` VALUES (0, NULL, 0, 0, '2022-02-24 11:03:57', '2022-02-24 11:03:57');
INSERT INTO `l3_s` VALUES (1, 'C.2.4.a) Sistem Tata Pamong', 4, 2, '2022-02-24 04:09:38', '2022-02-24 04:09:38');
INSERT INTO `l3_s` VALUES (2, 'C.2.4.b) Kepemimpinan dan Kemampuan Manajerial', 4, 2, '2022-02-24 04:09:38', '2022-02-24 04:09:38');
INSERT INTO `l3_s` VALUES (3, 'C.2.4.c) Kerjasama', 4, 2, '2022-02-24 04:09:38', '2022-02-24 04:09:38');
INSERT INTO `l3_s` VALUES (4, 'C.3.4.a) Kualitas Input Mahasiswa', 9, 2, '2022-02-24 04:18:08', '2022-02-24 04:18:08');
INSERT INTO `l3_s` VALUES (5, 'C.3.4.b) Daya Tarik Program Studi', 9, 2, '2022-02-24 04:18:43', '2022-02-24 04:18:43');
INSERT INTO `l3_s` VALUES (6, 'C.3.4.c) Layanan Kemahasiswaan', 9, 2, '2022-02-24 04:19:20', '2022-02-24 04:19:20');
INSERT INTO `l3_s` VALUES (7, 'C.4.4.a) Profil Dosen', 10, 2, '2022-02-24 04:44:13', '2022-02-24 04:44:13');
INSERT INTO `l3_s` VALUES (8, 'C.4.4.b) Kinerja Dosen', 10, 2, '2022-02-24 05:36:47', '2022-02-24 05:36:47');
INSERT INTO `l3_s` VALUES (9, 'C.4.4.c) Pengembangan Dosen', 10, 2, '2022-02-24 05:37:47', '2022-02-24 05:37:47');
INSERT INTO `l3_s` VALUES (10, 'C.4.4.d) Tenaga Kependidikan', 10, 2, '2022-02-24 05:38:27', '2022-02-24 05:38:27');
INSERT INTO `l3_s` VALUES (11, 'C.5.4.a) Keuangan', 11, 2, '2022-02-24 05:39:19', '2022-02-24 05:39:19');
INSERT INTO `l3_s` VALUES (12, 'C.5.4.b) Sarana dan Prasarana', 11, 2, '2022-02-24 05:40:05', '2022-02-24 05:40:05');
INSERT INTO `l3_s` VALUES (13, 'C.6.4.a) Kurikulum', 12, 2, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (14, 'C.6.4.b) Karakteristik Proses Pembelajaran', 12, 2, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (15, 'C.6.4.c) Rencana Proses Pembelajaran', 12, 2, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (16, 'C.6.4.d) Pelaksanaan Proses Pembelajaran', 12, 2, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (17, 'C.6.4.e) Monitoring dan Evaluasi Proses Pembelajaran\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 12, 2, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (18, 'C.6.4.f) Penilaian Pembelajaran\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 12, 2, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (19, 'C.6.4.g) Integrasi kegiatan penelitian dan PkM dalam pembelajaran\r\n\r\n\r\n', 12, 2, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (20, 'C.6.4.h) Suasana Akademik\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 12, 2, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (21, 'C.6.4.i) Kepuasan Mahasiswa\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 12, 2, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (22, 'C.7.4.a) Relevansi Penelitian', 13, 2, '2022-02-24 07:10:07', '2022-02-24 07:10:07');
INSERT INTO `l3_s` VALUES (23, 'C.7.4.b) Penelitian Dosen dan Mahasiswa', 13, 2, '2022-02-24 07:11:06', '2022-02-24 07:11:06');
INSERT INTO `l3_s` VALUES (24, 'C.8.4.a) Relevansi PkM', 14, 2, '2022-02-24 07:13:42', '2022-02-24 07:13:42');
INSERT INTO `l3_s` VALUES (25, 'C.8.4.b) PkM Dosen dan Mahasiswa', 14, 2, '2022-02-24 07:14:40', '2022-02-24 07:14:40');
INSERT INTO `l3_s` VALUES (26, 'C.9.4.a) Luaran Dharma Pendidikan', 15, 2, '2022-02-24 07:16:09', '2022-02-24 07:16:09');
INSERT INTO `l3_s` VALUES (27, 'C.9.4.b) Luaran Dharma Penelitian dan PkM', 15, 2, '2022-02-24 07:18:10', '2022-02-24 07:18:10');
INSERT INTO `l3_s` VALUES (28, 'C.2.4.a) Sistem Tata Pamong', 23, 1, '2022-02-24 04:09:38', '2022-02-24 04:09:38');
INSERT INTO `l3_s` VALUES (29, 'C.2.4.b) Kepemimpinan dan Kemampuan Manajerial', 23, 1, '2022-02-24 04:09:38', '2022-02-24 04:09:38');
INSERT INTO `l3_s` VALUES (30, 'C.2.4.c) Kerjasama', 23, 1, '2022-02-24 04:09:38', '2022-02-24 04:09:38');
INSERT INTO `l3_s` VALUES (31, 'C.3.4.a) Kualitas Input Mahasiswa', 28, 1, '2022-02-24 04:18:08', '2022-02-24 04:18:08');
INSERT INTO `l3_s` VALUES (32, 'C.3.4.b) Daya Tarik Program Studi', 28, 1, '2022-02-24 04:18:43', '2022-02-24 04:18:43');
INSERT INTO `l3_s` VALUES (33, 'C.3.4.c) Layanan Kemahasiswaan', 28, 1, '2022-02-24 04:19:20', '2022-02-24 04:19:20');
INSERT INTO `l3_s` VALUES (34, 'C.4.4.a) Profil Dosen', 29, 1, '2022-02-24 04:44:13', '2022-02-24 04:44:13');
INSERT INTO `l3_s` VALUES (35, 'C.4.4.b) Kinerja Dosen', 29, 1, '2022-02-24 05:36:47', '2022-02-24 05:36:47');
INSERT INTO `l3_s` VALUES (36, 'C.4.4.c) Pengembangan Dosen', 29, 1, '2022-02-24 05:37:47', '2022-02-24 05:37:47');
INSERT INTO `l3_s` VALUES (37, 'C.4.4.d) Tenaga Kependidikan', 29, 1, '2022-02-24 05:38:27', '2022-02-24 05:38:27');
INSERT INTO `l3_s` VALUES (38, 'C.5.4.a) Keuangan', 30, 1, '2022-02-24 05:39:19', '2022-02-24 05:39:19');
INSERT INTO `l3_s` VALUES (39, 'C.5.4.b) Sarana dan Prasarana', 30, 1, '2022-02-24 05:40:05', '2022-02-24 05:40:05');
INSERT INTO `l3_s` VALUES (40, 'C.6.4.a) Kurikulum', 31, 1, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (41, 'C.6.4.b) Karakteristik Proses Pembelajaran', 31, 1, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (42, 'C.6.4.c) Rencana Proses Pembelajaran', 31, 1, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (43, 'C.6.4.d) Pelaksanaan Proses Pembelajaran', 31, 1, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (44, 'C.6.4.e) Monitoring dan Evaluasi Proses Pembelajaran\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 31, 1, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (45, 'C.6.4.f) Penilaian Pembelajaran\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 31, 1, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (46, 'C.6.4.g) Integrasi kegiatan penelitian dan PkM dalam pembelajaran\r\n\r\n\r\n', 31, 1, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (47, 'C.6.4.h) Suasana Akademik\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 31, 1, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (48, 'C.6.4.i) Kepuasan Mahasiswa\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 31, 1, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (49, 'C.7.4.a) Relevansi Penelitian', 32, 1, '2022-02-24 07:10:07', '2022-02-24 07:10:07');
INSERT INTO `l3_s` VALUES (50, 'C.7.4.b) Penelitian Dosen dan Mahasiswa', 32, 1, '2022-02-24 07:11:06', '2022-02-24 07:11:06');
INSERT INTO `l3_s` VALUES (51, 'C.8.4.a) Relevansi PkM', 33, 1, '2022-02-24 07:13:42', '2022-02-24 07:13:42');
INSERT INTO `l3_s` VALUES (52, 'C.8.4.b) PkM Dosen dan Mahasiswa', 33, 1, '2022-02-24 07:14:40', '2022-02-24 07:14:40');
INSERT INTO `l3_s` VALUES (53, 'C.9.4.a) Luaran Dharma Pendidikan', 34, 1, '2022-02-24 07:16:09', '2022-02-24 07:16:09');
INSERT INTO `l3_s` VALUES (54, 'C.9.4.b) Luaran Dharma Penelitian dan PkM', 34, 1, '2022-02-24 07:18:10', '2022-02-24 07:18:10');
INSERT INTO `l3_s` VALUES (55, 'C.2.4.a) Sistem Tata Pamong', 42, 3, '2022-02-24 04:09:38', '2022-05-28 08:17:45');
INSERT INTO `l3_s` VALUES (56, 'C.2.4.b) Kepemimpinan dan Kemampuan Manajerial', 42, 3, '2022-02-24 04:09:38', '2022-02-24 04:09:38');
INSERT INTO `l3_s` VALUES (57, 'C.2.4.c) Kerjasama', 42, 3, '2022-02-24 04:09:38', '2022-02-24 04:09:38');
INSERT INTO `l3_s` VALUES (58, 'C.3.4.a) Kualitas Input Mahasiswa', 47, 3, '2022-02-24 04:18:08', '2022-02-24 04:18:08');
INSERT INTO `l3_s` VALUES (59, 'C.3.4.b) Daya Tarik Program Studi', 47, 3, '2022-02-24 04:18:43', '2022-02-24 04:18:43');
INSERT INTO `l3_s` VALUES (60, 'C.3.4.c) Layanan Kemahasiswaan', 47, 3, '2022-02-24 04:19:20', '2022-02-24 04:19:20');
INSERT INTO `l3_s` VALUES (61, 'C.4.4.a) Profil Dosen', 48, 3, '2022-02-24 04:44:13', '2022-02-24 04:44:13');
INSERT INTO `l3_s` VALUES (62, 'C.4.4.b) Kinerja Dosen', 48, 3, '2022-02-24 05:36:47', '2022-02-24 05:36:47');
INSERT INTO `l3_s` VALUES (63, 'C.4.4.c) Pengembangan Dosen', 48, 3, '2022-02-24 05:37:47', '2022-02-24 05:37:47');
INSERT INTO `l3_s` VALUES (64, 'C.4.4.d) Tenaga Kependidikan', 48, 3, '2022-02-24 05:38:27', '2022-02-24 05:38:27');
INSERT INTO `l3_s` VALUES (65, 'C.5.4.a) Keuangan', 49, 3, '2022-02-24 05:39:19', '2022-02-24 05:39:19');
INSERT INTO `l3_s` VALUES (66, 'C.5.4.b) Sarana dan Prasarana', 49, 3, '2022-02-24 05:40:05', '2022-02-24 05:40:05');
INSERT INTO `l3_s` VALUES (67, 'C.6.4.a) Kurikulum', 50, 3, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (68, 'C.6.4.b) Karakteristik Proses Pembelajaran', 50, 3, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (69, 'C.6.4.c) Rencana Proses Pembelajaran', 50, 3, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (70, 'C.6.4.d) Pelaksanaan Proses Pembelajaran', 50, 3, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (71, 'C.6.4.e) Monitoring dan Evaluasi Proses Pembelajaran\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 50, 3, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (72, 'C.6.4.f) Penilaian Pembelajaran\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 50, 3, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (73, 'C.6.4.g) Integrasi kegiatan penelitian dan PkM dalam pembelajaran\r\n\r\n\r\n', 50, 3, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (74, 'C.6.4.h) Suasana Akademik\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 50, 3, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (75, 'C.6.4.i) Kepuasan Mahasiswa\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 50, 3, '2022-02-24 05:41:21', '2022-02-24 05:41:21');
INSERT INTO `l3_s` VALUES (76, 'C.7.4.a) Relevansi Penelitian', 51, 3, '2022-02-24 07:10:07', '2022-02-24 07:10:07');
INSERT INTO `l3_s` VALUES (77, 'C.7.4.b) Penelitian Dosen dan Mahasiswa', 51, 3, '2022-02-24 07:11:06', '2022-02-24 07:11:06');
INSERT INTO `l3_s` VALUES (78, 'C.8.4.a) Relevansi PkM', 52, 3, '2022-02-24 07:13:42', '2022-02-24 07:13:42');
INSERT INTO `l3_s` VALUES (79, 'C.8.4.b) PkM Dosen dan Mahasiswa', 52, 3, '2022-02-24 07:14:40', '2022-02-24 07:14:40');
INSERT INTO `l3_s` VALUES (80, 'C.9.4.a) Luaran Dharma Pendidikan', 53, 3, '2022-02-24 07:16:09', '2022-02-24 07:16:09');
INSERT INTO `l3_s` VALUES (81, 'C.9.4.b) Luaran Dharma Penelitian dan PkM', 53, 3, '2022-02-24 07:18:10', '2022-02-24 07:18:10');

-- ----------------------------
-- Table structure for l4_s
-- ----------------------------
DROP TABLE IF EXISTS `l4_s`;
CREATE TABLE `l4_s`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `l3_id` int NOT NULL DEFAULT 0,
  `jenjang_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of l4_s
-- ----------------------------
INSERT INTO `l4_s` VALUES (0, NULL, 0, 0, '2022-02-13 11:25:42', '2022-02-13 11:25:44');
INSERT INTO `l4_s` VALUES (1, 'A.1.1.1', 1, 2, '2022-02-13 05:58:18', '2022-02-13 05:58:18');
INSERT INTO `l4_s` VALUES (2, 'A.1.1.1', 28, 1, '2022-02-13 05:58:18', '2022-02-13 05:58:18');
INSERT INTO `l4_s` VALUES (3, 'A.1.1.1', 55, 3, '2022-02-13 05:58:18', '2022-02-13 05:58:18');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (3, '2021_10_06_025948_create_l1_s_table', 1);
INSERT INTO `migrations` VALUES (4, '2021_10_06_030000_create_l2_s_table', 1);
INSERT INTO `migrations` VALUES (5, '2021_10_06_043246_create_l3_s_table', 1);
INSERT INTO `migrations` VALUES (6, '2021_10_06_043257_create_l4_s_table', 1);
INSERT INTO `migrations` VALUES (7, '2022_01_18_080946_indikator', 1);
INSERT INTO `migrations` VALUES (8, '2022_01_18_081208_element', 1);
INSERT INTO `migrations` VALUES (9, '2022_01_18_082755_score', 1);
INSERT INTO `migrations` VALUES (10, '2022_01_18_083934_files', 1);
INSERT INTO `migrations` VALUES (11, '2022_01_18_090648_prodi', 1);
INSERT INTO `migrations` VALUES (12, '2022_01_18_091253_create_jenjangs_table', 1);

-- ----------------------------
-- Table structure for prodis
-- ----------------------------
DROP TABLE IF EXISTS `prodis`;
CREATE TABLE `prodis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prodis
-- ----------------------------
INSERT INTO `prodis` VALUES (1, 'Teknik Mesin', 'TM', '2');
INSERT INTO `prodis` VALUES (2, 'Agribisnis', 'AGRI', '2');
INSERT INTO `prodis` VALUES (3, 'Teknik Industri', 'TI', '2');
INSERT INTO `prodis` VALUES (4, 'Teknik Informatika', 'TIF', '2');
INSERT INTO `prodis` VALUES (5, 'Sastra Ingris', 'SIng', '2');
INSERT INTO `prodis` VALUES (6, 'Ilmu Hukum', 'IH', '2');

-- ----------------------------
-- Table structure for scores
-- ----------------------------
DROP TABLE IF EXISTS `scores`;
CREATE TABLE `scores`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(3, 2) NOT NULL DEFAULT 0.00,
  `indikator_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 301 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scores
-- ----------------------------
INSERT INTO `scores` VALUES (1, '<p>Unit Pengelola Program Studi (UPPS) mampu:</p>\r\n\r\n<ol>\r\n	<li>mengidentifikasi kondisi lingkungan dan industri yang relevan secara komprehensif dan strategis,</li>\r\n	<li>menetapkan posisi relatif program studi terhadap lingkungannya,</li>\r\n	<li>menggunakan hasil identifikasi dan posisi yang ditetapkan untuk melakukan analisis (SWOT/metoda analisis lain yang relevan) untuk pengembangan program studi, dan</li>\r\n	<li>merumuskan strategi pengembangan program studi yang berkesesuaian untuk menghasilkan program-program pengembangan alternatif yang tepat.</li>\r\n</ol>', 4.00, 1);
INSERT INTO `scores` VALUES (2, '<p>Unit Pengelola Program Studi (UPPS) mampu:</p>\r\n\r\n<ol>\r\n	<li>mengidentifikasi kondisi lingkungan dan industri yang relevan secara komprehensif,</li>\r\n	<li>menetapkan posisi relatif program studi terhadap lingkungannya, dan&nbsp;</li>\r\n	<li>menggunakan hasil identifikasi dan posisi yang ditetapkan untuk melakukan analisis (SWOT/metoda analisis lain yang relevan) untuk pengembangan program studi.</li>\r\n</ol>', 3.00, 1);
INSERT INTO `scores` VALUES (3, '<p>Unit Pengelola Program Studi (UPPS) mampu:</p>\r\n\r\n<ol>\r\n	<li>mengidentifikasi kondisi lingkungan dan industri yang relevan, dan</li>\r\n	<li>menetapkan posisi relatif program studi terhadap lingkungannya.</li>\r\n</ol>', 2.00, 1);
INSERT INTO `scores` VALUES (4, '<p>Unit Pengelola Program Studi (UPPS) kurang mampu:</p>\r\n\r\n<ol>\r\n	<li>mengidentifikasi kondisi lingkungan dan industri yang relevan, dan</li>\r\n	<li>menetapkan posisi relatif program studi terhadap lingkungannya.</li>\r\n</ol>', 1.00, 1);
INSERT INTO `scores` VALUES (5, '<p>Profil UPPS:&nbsp;<br />\r\n1) menunjukkan keserbacakupan informasi yang jelas dan konsisten dengan data dan informasi yang disampaikan pada masing-masing kriteria,<br />\r\n2) menggambarkan keselarasan dengan substansi keilmuan program studi.&nbsp;<br />\r\n3) menunjukkan iklim yang kondusif untuk pengembangan keilmuan program studi.<br />\r\n4) menunjukkan reputasi sebagai rujukan di bidang keilmuannya.</p>', 4.00, 2);
INSERT INTO `scores` VALUES (6, '<p>Profil UPPS:<br />\r\n1) menunjukkan keserbacakupan informasi yang jelas dan konsisten dengan data dan informasi yang disampaikan pada masing-masing kriteria,<br />\r\n2) menggambarkan keselarasan dengan substansi keilmuan program studi.&nbsp;<br />\r\n3) menunjukkan iklim yang kondusif untuk pengembangan keilmuan program studi.</p>', 3.00, 2);
INSERT INTO `scores` VALUES (7, '<p>Profil UPPS:<br />\r\n1) menunjukkan keserbacakupan informasi yang jelas dengan data dan informasi yang disampaikan pada masing-masing kriteria,<br />\r\n2) menggambarkan keselarasan dengan substansi keilmuan program studi.&nbsp;</p>', 2.00, 2);
INSERT INTO `scores` VALUES (8, '<p>Profil UPPS:<br />\r\n1) kurang menunjukkan keserbacakupan informasi yang jelas dengan data dan informasi yang disampaikan pada masing-masing kriteria,<br />\r\n2) kurang menggambarkan keselarasan dengan substansi keilmuan program studi.&nbsp;</p>', 1.00, 2);
INSERT INTO `scores` VALUES (9, '<p>UPPS memiliki:<br />\r\n1) visi yang mencerminkan visi perguruan tinggi dan memayungi visi keilmuan terkait keunikan program studi serta didukung data konsistensi implementasinya,<br />\r\n2) misi, tujuan, dan strategi yang searah dan bersinerji dengan misi, tujuan, dan strategi perguruan tinggi serta mendukung pengembangan program studi dengan data konsistensi implementasinya.</p>', 4.00, 3);
INSERT INTO `scores` VALUES (10, '<p>UPPS memiliki:<br />\r\n1) visi yang mencerminkan visi perguruan tinggi dan memayungi visi keilmuan terkait keunikan program studi,<br />\r\n2) misi, tujuan, dan strategi yang searah dan bersinerji dengan misi, tujuan, dan strategi perguruan tinggi serta mendukung pengembangan program studi.</p>', 3.00, 3);
INSERT INTO `scores` VALUES (11, '<p>UPPS memiliki:&nbsp;<br />\r\n1) visi yang mencerminkan visi perguruan tinggi dan memayungi visi keilmuan terkait program studi,<br />\r\n2) misi, tujuan, dan strategi yang searah dengan misi, tujuan, dan strategi perguruan tinggi serta mendukung pengembangan program studi.</p>', 2.00, 3);
INSERT INTO `scores` VALUES (12, '<p>UPPS memiliki:<br />\r\n1) visi yang mencerminkan visi perguruan tinggi namun tidak memayungi visi keilmuan terkait program studi,<br />\r\n2) misi, tujuan, dan strategi kurang searah dengan misi, tujuan sasaran, dan strategi perguruan tinggi serta kurang mendukung pengembangan program studi.</p>', 1.00, 3);
INSERT INTO `scores` VALUES (13, '<p>Ada mekanisme dalam penyusunan dan penetapan visi, misi, tujuan dan strategi yang terdokumentasi serta ada keterlibatan semua pemangku kepentingan internal (dosen, mahasiswa dan tenaga kependidikan) dan eksternal (lulusan, pengguna lulusan dan pakar/mitra/organisasi profesi/pemerintah).</p>', 4.00, 4);
INSERT INTO `scores` VALUES (14, '<p>Ada mekanisme dalam penyusunan dan penetapan visi, misi, tujuan dan strategi yang terdokumentasi serta ada keterlibatan pemangku kepentingan internal (dosen, mahasiswa dan tenaga kependidikan) dan pemangku kepentingan eksternal (lulusan dan pengguna lulusan).&nbsp;</p>', 3.00, 4);
INSERT INTO `scores` VALUES (15, '<p>Ada mekanisme dalam penyusunan dan penetapan visi, misi, tujuan dan strategi yang terdokumentasi serta ada keterlibatan pemangku kepentingan internal (dosen dan mahasiswa) dan pemangku kepentingan eksternal (lulusan).</p>', 2.00, 4);
INSERT INTO `scores` VALUES (16, '<p>Ada mekanisme dalam penyusunan dan penetapan visi, misi, tujuan dan strategi yang terdokumentasi namun tidak melibatkan pemangku kepentingan.</p>', 1.00, 4);
INSERT INTO `scores` VALUES (17, '<p>Strategi efektif untuk mencapai tujuan dan disusun berdasarkan analisis yang sistematis dengan menggunakan metoda yang relevan dan terdokumentasi serta pada pelaksanaannya dilakukan pemantauan dan evaluasi dan ditindaklanjuti.</p>', 4.00, 5);
INSERT INTO `scores` VALUES (18, '<p>Strategi efektif untuk mencapai tujuan dan disusun berdasarkan analisis yang sistematis dengan menggunakan metoda yang relevan dan terdokumentasi serta pada pelaksanaannya dilakukan pemantauan dan evaluasi.</p>', 3.00, 5);
INSERT INTO `scores` VALUES (19, '<p>Strategi untuk mencapai tujuan dan disusun berdasarkan analisis yang sistematis dengan menggunakan metoda yang relevan serta terdokumentasi namun belum terbukti efektifitasnya.</p>', 2.00, 5);
INSERT INTO `scores` VALUES (20, '<p>Strategi untuk mencapai tujuan disusun berdasarkan analisis yang kurang sistematis serta tidak menggunakan metoda yang relevan.</p>', 1.00, 5);
INSERT INTO `scores` VALUES (21, '<p>UPPS memiliki bukti yang sahih terkait kerjasama yang ada telah memenuhi 3 aspek.</p>', 4.00, 8);
INSERT INTO `scores` VALUES (22, '<p>UPPS memiliki bukti yang sahih terkait kerjasama yang ada telah memenuhi aspek 1 dan 2.</p>', 3.00, 8);
INSERT INTO `scores` VALUES (23, '<p>UPPS memiliki bukti yang sahih terkait kerjasama yang ada telah memenuhi aspek 1.</p>', 2.00, 8);
INSERT INTO `scores` VALUES (24, '<p>UPPS tidak memiliki bukti pelaksanaan kerjasama.</p>', 1.00, 8);
INSERT INTO `scores` VALUES (25, '<p>UPPS menetapkan indikator kinerja tambahan berdasarkan standar pendidikan tinggi yang ditetapkan perguruan tinggi. Indikator kinerja tambahan mencakup seluruh kriteria serta menunjukkan daya saing UPPS dan program studi di tingkat inernasional. Data indikator kinerja tambahan telah diukur, dimonitor, dikaji, dan dianalisis untuk perbaikan berkelanjutan.</p>', 4.00, 10);
INSERT INTO `scores` VALUES (26, '<p>UPPS menetapkan indikator kinerja tambahan berdasarkan standar pendidikan tinggi yang ditetapkan perguruan tinggi. Indikator kinerja tambahan mencakup sebagian kriteria serta menunjukkan daya saing UPPS dan program studi di tingkat nasional. Data indikator kinerja tambahan telah diukur, dimonitor, dikaji, dan dianalisis untuk perbaikan berkelanjutan.</p>', 3.00, 10);
INSERT INTO `scores` VALUES (27, '<p>UPPS tidak menetapkan indikator kinerja tambahan.</p>', 2.00, 10);
INSERT INTO `scores` VALUES (28, '<p>Tidak ada Skor kurang dari 2.</p>', 1.00, 10);
INSERT INTO `scores` VALUES (29, '<p>Analisis pencapaian kinerja UPPS di tiap kriteria memenuhi 2 aspek, dilaksanakan setiap tahun dan hasilnya dipublikasikan kepada para pemangku kepentingan.</p>', 4.00, 11);
INSERT INTO `scores` VALUES (30, '<p>Analisis pencapaian kinerja UPPS di tiap kriteria memenuhi 2 aspek dan dilaksanakan setiap tahun.</p>', 3.00, 11);
INSERT INTO `scores` VALUES (31, '<p>Analisis pencapaian kinerja UPPS di tiap kriteria memenuhi 2 aspek.&nbsp;</p>', 2.00, 11);
INSERT INTO `scores` VALUES (32, '<p>UPPS memiliki laporan pencapaian kinerja namun belum dianalisis dan dievaluasi.&nbsp;</p>', 1.00, 11);
INSERT INTO `scores` VALUES (33, '<p>UPPS telah melaksanakan SPMI yang memenuhi 5 aspek.</p>', 4.00, 12);
INSERT INTO `scores` VALUES (34, '<p>UPPS telah melaksanakan SPMI yang memenuhi aspek nomor 1 sampai dengan 4.&nbsp;</p>', 3.00, 12);
INSERT INTO `scores` VALUES (35, '<p>UPPS telah melaksanakan SPMI yang memenuhi aspek nomor 1 sampai dengan 3.</p>', 2.00, 12);
INSERT INTO `scores` VALUES (36, '<p>UPPS telah melaksanakan SPMI yang memenuhi aspek nomor 1 dan 2, serta siklus kegiatan SPMI baru dilaksanakan pada tahapan penetapan standar dan pelaksanaan standar pendidikan tinggi.</p>', 1.00, 12);
INSERT INTO `scores` VALUES (37, '<p>UPPS melakukan pengukuran kepuasan kepada seluruh pemangku kepentingan terhadap layanan manajemen yang memenuhi seluruh aspek.</p>', 4.00, 13);
INSERT INTO `scores` VALUES (38, '<p>UPPS melakukan pengukuran kepuasan kepada seluruh pemangku kepentingan terhadap layanan manajemen yang memenuhi aspek 1 s.d 4 dan salah satu dari aspek 5 atau aspek 6.</p>', 3.00, 13);
INSERT INTO `scores` VALUES (39, '<p>UPPS melakukan pengukuran kepuasan kepada seluruh pemangku kepentingan terhadap layanan manajemen yang memenuhi aspek 1 s.d 4.</p>', 2.00, 13);
INSERT INTO `scores` VALUES (40, '<p>UPPS melakukan pengukuran kepuasan kepada sebagian pemangku kepentingan terhadap layanan manajemen yang memenuhi aspek 1 s.d. 4.</p>', 1.00, 13);
INSERT INTO `scores` VALUES (41, '<p>UPPS merencanakan dan mengembangkan DTPS mengikuti rencana pengembangan SDM di perguruan tinggi (Renstra PT) secara konsisten.</p>', 4.00, 30);
INSERT INTO `scores` VALUES (42, '<p>UPPS merencanakan dan mengembangkan DTPS mengikuti rencana pengembangan SDM di perguruan tinggi (Renstra PT).</p>', 3.00, 30);
INSERT INTO `scores` VALUES (43, '<p>UPPS mengembangkan DTPS mengikuti rencana pengembangan SDM di perguruan tinggi (Renstra PT).</p>', 2.00, 30);
INSERT INTO `scores` VALUES (44, '<p>UPPS mengembangkan DTPS tidak mengikuti atau tidak sesuai dengan rencana pengembangan SDM di perguruan tinggi (Renstra PT).</p>', 1.00, 30);
INSERT INTO `scores` VALUES (45, '<p>Persentase realisasi dana untuk investasi SDM serta Sarana dan Prasarana telah sesuai dengan perencanaan investasi serta melebihi standar pembelajaran, penelitian dan PkM untuk mendukung terciptanya suasana akademik yang sehat dan kondusif.</p>', 4.00, 35);
INSERT INTO `scores` VALUES (46, '<p>Persentase realisasi dana untuk investasi SDM serta Sarana dan Prasarana telah sesuai dengan perencanaan investasi serta melebihi standar pembelajaran, penelitian dan PkM.</p>', 3.00, 35);
INSERT INTO `scores` VALUES (47, '<p>Persentase realisasi dana untuk investasi SDM serta Sarana dan Prasarana telah sesuai dengan perencanaan investasi serta memenuhi standar pembelajaran, penelitian dan PkM.</p>', 2.00, 35);
INSERT INTO `scores` VALUES (48, '<p>Persentase realisasi dana untuk investasi SDM serta Sarana dan Prasarana kurang sesuai dengan perencanaan investasi.</p>', 1.00, 35);
INSERT INTO `scores` VALUES (49, '<p>Dana dapat menjamin keberlangsungan operasional tridharma, pengembangan 3 tahun terakhir serta memiliki kecukupan dana untuk rencana pengembangan 3 tahun ke depan yang didukung oleh sumber pendanaan yang realistis.</p>', 4.00, 36);
INSERT INTO `scores` VALUES (50, '<p>Dana dapat menjamin keberlangsungan operasional tridharma serta pengembangan 3 tahun terakhir.</p>', 3.00, 36);
INSERT INTO `scores` VALUES (51, '<p>Dana dapat menjamin keberlangsungan operasional tridharma dan sebagian kecil pengembangan.</p>', 2.00, 36);
INSERT INTO `scores` VALUES (52, '<p>Dana &nbsp;dapat menjamin keberlangsungan operasional dan tidak ada untuk pengembangan.</p>', 1.00, 36);
INSERT INTO `scores` VALUES (53, '<p>UPPS menyediakan sarana dan prasarana yang mutakhir serta aksesibiltas yang cukup untuk menjamin pencapaian capaian pembelajaran dan meningkatkan suasana akademik.</p>', 4.00, 37);
INSERT INTO `scores` VALUES (54, '<p>UPPS menyediakan sarana dan prasarana serta aksesibiltas yang cukup untuk menjamin pencapaian capaian pembelajaran dan meningkatkan suasana akademik.</p>', 3.00, 37);
INSERT INTO `scores` VALUES (55, '<p>UPPS menyediakan sarana dan prasarana serta aksesibiltas yang cukup untuk menjamin pencapaian capaian pembelajaran.</p>', 2.00, 37);
INSERT INTO `scores` VALUES (56, '<p>UPPS menyediakan sarana dan prasarana serta aksesibiltas yang tidak cukup untuk menjamin pencapaian</p>', 1.00, 37);
INSERT INTO `scores` VALUES (57, '<p>Terpenuhinya karakteristik proses pembelajaran program studi yang mencakup seluruh sifat, dan telah menghasilkan profil lulusan yang sesuai dengan capaian pembelajaran.&nbsp;</p>', 4.00, 39);
INSERT INTO `scores` VALUES (58, '<p>Terpenuhinya karakteristik proses pembelajaran program studi yang berpusat pada mahasiswa, dan telah menghasilkan profil lulusan yang sesuai dengan capaian pembelajaran.&nbsp;</p>', 3.00, 39);
INSERT INTO `scores` VALUES (59, '<p>Karakteristik proses pembelajaran program studi berpusat pada mahasiswa yang diterapkan pada minimal 50% matakuliah.</p>', 2.00, 39);
INSERT INTO `scores` VALUES (60, '<p>Karakteristik proses pembelajaran program studi belum berpusat pada mahasiswa.</p>', 1.00, 39);
INSERT INTO `scores` VALUES (61, '<p>UPPS memiliki bukti sahih tentang sistem dan pelaksanaan monitoring dan evaluasi proses pembelajaran mencakup karakteristik, perencanaan, pelaksanaan, proses pembelajaran dan beban belajar mahasiswa yang dilaksanakan secara konsisten dan ditindak lanjuti.</p>', 4.00, 43);
INSERT INTO `scores` VALUES (62, '<p>UPPS memiliki bukti sahih tentang sistem dan pelaksanaan monitoring dan evaluasi proses pembelajaran mencakup karakteristik, perencanaan, pelaksanaan, proses pembelajaran dan beban belajar mahasiswa yang dilaksanakan secara konsisten.</p>', 3.00, 43);
INSERT INTO `scores` VALUES (63, '<p>UPPS memiliki bukti sahih tentang sistem dan pelaksanaan monitoring dan evaluasi proses pembelajaran mencakup karakteristik, perencanaan, pelaksanaan, proses pembelajaran dan beban belajar mahasiswa.</p>', 2.00, 43);
INSERT INTO `scores` VALUES (64, '<p>UPPS telah melaksanakan monitoring dan evaluasi proses pembelajaran mencakup karakteristik, perencanaan, pelaksanaan, proses pembelajaran dan beban belajar mahasiswa namun tidak semua didukung bukti sahih.</p>', 1.00, 43);
INSERT INTO `scores` VALUES (65, '<p>Kegiatan ilmiah yang terjadwal dilaksanakan setiap bulan.</p>', 4.00, 46);
INSERT INTO `scores` VALUES (66, '<p>Kegiatan ilmiah yang terjadwal dilaksanakan dua s.d tiga bulan sekali.</p>', 3.00, 46);
INSERT INTO `scores` VALUES (67, '<p>Kegiatan ilmiah yang terjadwal dilaksanakan empat s.d. enam bulan sekali.</p>', 2.00, 46);
INSERT INTO `scores` VALUES (68, '<p>Kegiatan ilmiah yang terjadwal dilaksanakan lebih dari enam bulan sekali.</p>', 1.00, 46);
INSERT INTO `scores` VALUES (69, '<p>UPPS memenuhi 4 unsur relevansi penelitian dosen dan mahasiswa.</p>', 4.00, 48);
INSERT INTO `scores` VALUES (70, '<p>UPPS memenuhi &nbsp;unsur 1, 2, dan 3 relevansi penelitian dosen dan mahasiswa.</p>', 3.00, 48);
INSERT INTO `scores` VALUES (71, '<p>UPPS memenuhi &nbsp;unsur 1, dan 2 relevansi penelitian dosen dan mahasiswa.</p>', 2.00, 48);
INSERT INTO `scores` VALUES (72, '<p>UPPS memenuhi &nbsp;unsur pertama namun penelitian dosen dan mahasiswa tidak sesuai dengan peta jalan.</p>', 1.00, 48);
INSERT INTO `scores` VALUES (73, '<p>UPPS memenuhi 4 unsur relevansi PkM dosen dan mahasiswa.</p>', 4.00, 50);
INSERT INTO `scores` VALUES (74, '<p>UPPS memenuhi &nbsp;unsur 1, 2, dan 3 relevansi PkM dosen dan mahasiswa.</p>', 3.00, 50);
INSERT INTO `scores` VALUES (75, '<p>UPPS memenuhi &nbsp;unsur 1, dan 2 relevansi PkM dosen dan mahasiswa.</p>', 2.00, 50);
INSERT INTO `scores` VALUES (76, '<p>UPPS memenuhi &nbsp;unsur pertama namun PkM dosen dan mahasiswa tidak sesuai dengan peta jalan.</p>', 1.00, 50);
INSERT INTO `scores` VALUES (77, '<p>Analisis capaian pembelajaran lulusan memenuhi 3 aspek.&nbsp;</p>', 4.00, 52);
INSERT INTO `scores` VALUES (78, '<p>Analisis capaian pembelajaran lulusan memenuhi 2 aspek.&nbsp;</p>', 3.00, 52);
INSERT INTO `scores` VALUES (79, '<p>Analisis capaian pembelajaran lulusan memenuhi 1 aspek.&nbsp;</p>', 2.00, 52);
INSERT INTO `scores` VALUES (80, '<p>Analisis capaian pembelajaran lulusan tidak memenuhi ketiga aspek.&nbsp;</p>', 1.00, 52);
INSERT INTO `scores` VALUES (81, '<p>Tracer study yang dilakukan UPPS telah mencakup 5 aspek.</p>', 4.00, 59);
INSERT INTO `scores` VALUES (82, '<p>Tracer study yang dilakukan UPPS telah mencakup 4 aspek.</p>', 3.00, 59);
INSERT INTO `scores` VALUES (83, '<p>Tracer study yang dilakukan UPPS telah mencakup 3 aspek.</p>', 2.00, 59);
INSERT INTO `scores` VALUES (84, '<p>Tracer study yang dilakukan UPPS telah mencakup 2 aspek.</p>', 1.00, 59);
INSERT INTO `scores` VALUES (85, '<p>UPPS telah melakukan analisis capaian kinerja yang:&nbsp;<br />\r\n1) analisisnya didukung oleh data/informasi yang relevan (merujuk pada pencapaian standar mutu perguruan tinggi) dan berkualitas (andal dan memadai) yang didukung oleh keberadaan pangkalan data institusi yang terintegrasi.<br />\r\n2) konsisten dengan seluruh kriteria yang diuraikan sebelumnya,&nbsp;<br />\r\n3) analisisnya dilakukan secara komprehensif, tepat, dan tajam untuk mengidentifikasi akar masalah di &nbsp;UPPS.<br />\r\n4) hasilnya dipublikasikan kepada para pemangku kepentingan internal dan eksternal serta mudah diakses.</p>', 4.00, 66);
INSERT INTO `scores` VALUES (86, '<p>UPPS telah melakukan analisis capaian kinerja yang:&nbsp;<br />\r\n1) analisisnya didukung oleh data/informasi yang relevan (merujuk pada pencapaian standar mutu perguruan tinggi) dan berkualitas (andal dan memadai) yang didukung oleh keberadaan pangkalan data institusi yang belum terintegrasi.<br />\r\n2) konsisten dengan sebagian besar (7 s.d. 8) kriteria yang diuraikan sebelumnya,&nbsp;<br />\r\n3) analisisnya dilakukan secara komprehensif dan tepat untuk mengidentifikasi akar masalah di UPPS.<br />\r\n4) hasilnya dipublikasikan kepada para pemangku kepentingan internal serta mudah diakses.</p>', 3.00, 66);
INSERT INTO `scores` VALUES (87, '<p>UPPS telah melakukan analisis capaian kinerja yang:&nbsp;<br />\r\n1) analisisnya didukung oleh data/informasi yang relevan (merujuk pada pencapaian standar mutu perguruan tinggi) dan berkualitas (andal dan memadai).<br />\r\n2) konsisten dengan sebagian (5 s.d. 6) kriteria yang diuraikan sebelumnya,&nbsp;<br />\r\n3) analisisnya dilakukan secara komprehensif untuk mengidentifikasi akar masalah di UPPS.<br />\r\n4) hasilnya dipublikasikan kepada para pemangku kepentingan internal.</p>', 2.00, 66);
INSERT INTO `scores` VALUES (88, '<p>UPPS telah melakukan analisis capaian kinerja yang:&nbsp;<br />\r\n1) analisisnya tidak sepenuhnya didukung oleh data/informasi yang relevan (merujuk pada pencapaian standar mutu perguruan tinggi) dan berkualitas (andal dan memadai).<br />\r\n2) konsisten dengan sebagian kecil (kurang dari 5) kriteria yang diuraikan sebelumnya,&nbsp;<br />\r\n3) analisisnya dilakukan tidak secara komprehensif untuk mengidentifikasi akar masalah di UPPS.<br />\r\n4) hasilnya tidak dipublikasikan.</p>', 1.00, 66);
INSERT INTO `scores` VALUES (89, '<p>UPPS melakukan analisis SWOT atau analisis lain yang relevan, serta memenuhi aspek-aspek sebagai berikut:<br />\r\n1) melakukan identifikasi kekuatan atau faktor pendorong, kelemahan atau faktor penghambat, peluang dan ancaman yang dihadapi UPPS dilakukan secara tepat,<br />\r\n2) memiliki keterkaitan dengan hasil analisis capaian kinerja,<br />\r\n3) merumuskan strategi pengembangan UPPS yang berkesesuaian, dan<br />\r\n4) menghasilkan program-program pengembangan alternatif yang tepat.</p>', 4.00, 67);
INSERT INTO `scores` VALUES (90, '<p>UPPS melakukan analisis SWOT atau analisis lain yang relevan, serta memenuhi aspek-aspek sebagai berikut:<br />\r\n1) melakukan identifikasi kekuatan atau faktor pendorong, kelemahan atau faktor penghambat, peluang dan ancaman yang dihadapi UPPS dilakukan secara tepat,<br />\r\n2) memiliki keterkaitan dengan hasil analisis capaian kinerja, dan<br />\r\n3) merumuskan strategi pengembangan UPPS yang berkesesuaian.</p>', 3.00, 67);
INSERT INTO `scores` VALUES (91, '<p>UPPS melakukan analisis SWOT atau analisis lain yang relevan, serta memenuhi aspek-aspek sebagai berikut:<br />\r\n1) melakukan identifikasi kekuatan atau faktor pendorong, kelemahan atau faktor penghambat, peluang dan ancaman yang dihadapi UPPS dilakukan secara tepat, dan&nbsp;<br />\r\n2) memiliki keterkaitan dengan hasil analisis capaian kinerja.</p>', 2.00, 67);
INSERT INTO `scores` VALUES (92, '<p>UPPS melakukan analisis SWOT atau analisis lain yang memenuhi aspek-aspek sebagai berikut:<br />\r\n1) melakukan identifikasi kekuatan atau faktor pendorong, kelemahan atau faktor penghambat, peluang dan ancaman yang dihadapi UPPS, dan<br />\r\n2) memiliki keterkaitan dengan hasil analisis capaian kinerja, namun tidak terstruktur dan tidak sistematis.</p>', 1.00, 67);
INSERT INTO `scores` VALUES (93, '<p>UPPS menetapkan prioritas program pengembangan berdasarkan hasil analisis SWOT atau analisis lainnya yang mempertimbangkan secara komprehensif:<br />\r\n1) kapasitas UPPS,<br />\r\n2) kebutuhan UPPS dan PS di masa depan,<br />\r\n3) rencana strategis UPPS yang berlaku,<br />\r\n4) aspirasi dari pemangku kepentingan internal dan eksternal, dan<br />\r\n5) program yang menjamin keberlanjutan.</p>', 4.00, 68);
INSERT INTO `scores` VALUES (94, '<p>UPPS menetapkan prioritas program pengembangan berdasarkan hasil analisis SWOT atau analisis lainnya yang mempertimbangkan secara komprehensif:<br />\r\n1) kapasitas UPPS,<br />\r\n2) kebutuhan UPPS dan PS di masa depan,<br />\r\n3) rencana strategis UPPS yang berlaku, dan<br />\r\n4) aspirasi dari pemangku kepentingan internal.</p>', 3.00, 68);
INSERT INTO `scores` VALUES (95, '<p>UPPS menetapkan prioritas program pengembangan berdasarkan hasil analisis SWOT atau analisis lainnya yang mempertimbangkan secara komprehensif:<br />\r\n1) kapasitas UPPS,<br />\r\n2) kebutuhan UPPS dan PS di masa depan, dan<br />\r\n3) rencana strategis UPPS yang berlaku.</p>', 2.00, 68);
INSERT INTO `scores` VALUES (96, '<p>UPPS menetapkan prioritas program pengembangan namun belum mempertimbangan secara komprehensif:<br />\r\n1) kapasitas UPPS,<br />\r\n2) kebutuhan UPPS dan PS, dan<br />\r\n3) rencana strategis UPPS yang berlaku.</p>', 1.00, 68);
INSERT INTO `scores` VALUES (97, '<p>UPPS memiliki kebijakan dan upaya yang diturunkan ke dalam berbagai peraturan untuk menjamin keberlanjutan program yang mencakup:<br />\r\n1) alokasi sumber daya,&nbsp;<br />\r\n2) kemampuan melaksanakan,<br />\r\n3) rencana penjaminan mutu yang berkelanjutan, dan&nbsp;<br />\r\n4) keberadaan dukungan stakeholders eksternal.</p>', 4.00, 69);
INSERT INTO `scores` VALUES (98, '<p>UPPS memiliki kebijakan dan upaya yang diturunkan ke dalam berbagai peraturan untuk menjamin keberlanjutan program yang mencakup:<br />\r\n1) alokasi sumber daya,&nbsp;<br />\r\n2) kemampuan melaksanakan, dan<br />\r\n3) rencana penjaminan mutu yang berkelanjutan.</p>', 3.00, 69);
INSERT INTO `scores` VALUES (99, '<p>UPPS memiliki kebijakan dan upaya untuk menjamin keberlanjutan program yang mencakup:<br />\r\n1) alokasi sumber daya,&nbsp;<br />\r\n2) kemampuan melaksanakan, dan<br />\r\n3) rencana penjaminan mutu yang berkelanjutan.</p>', 2.00, 69);
INSERT INTO `scores` VALUES (100, '<p>UPPS memiliki kebijakan dan upaya namun belum cukup untuk menjamin keberlanjutan program.</p>', 1.00, 69);
INSERT INTO `scores` VALUES (101, '<p>Unit Pengelola Program Studi (UPPS) mampu:</p>\r\n\r\n<ol>\r\n	<li>mengidentifikasi kondisi lingkungan dan industri yang relevan secara komprehensif dan strategis,</li>\r\n	<li>menetapkan posisi relatif program studi terhadap lingkungannya,</li>\r\n	<li>menggunakan hasil identifikasi dan posisi yang ditetapkan untuk melakukan analisis (SWOT/metoda analisis lain yang relevan) untuk pengembangan program studi, dan</li>\r\n	<li>merumuskan strategi pengembangan program studi yang berkesesuaian untuk menghasilkan program-program pengembangan alternatif yang tepat.</li>\r\n</ol>', 4.00, 71);
INSERT INTO `scores` VALUES (102, '<p>Unit Pengelola Program Studi (UPPS) mampu:</p>\r\n\r\n<ol>\r\n	<li>mengidentifikasi kondisi lingkungan dan industri yang relevan secara komprehensif,</li>\r\n	<li>menetapkan posisi relatif program studi terhadap lingkungannya, dan&nbsp;</li>\r\n	<li>menggunakan hasil identifikasi dan posisi yang ditetapkan untuk melakukan analisis (SWOT/metoda analisis lain yang relevan) untuk pengembangan program studi.</li>\r\n</ol>', 3.00, 71);
INSERT INTO `scores` VALUES (103, '<p>Unit Pengelola Program Studi (UPPS) mampu:</p>\r\n\r\n<ol>\r\n	<li>mengidentifikasi kondisi lingkungan dan industri yang relevan, dan</li>\r\n	<li>menetapkan posisi relatif program studi terhadap lingkungannya.</li>\r\n</ol>', 2.00, 71);
INSERT INTO `scores` VALUES (104, '<p>Unit Pengelola Program Studi (UPPS) kurang mampu :</p>\r\n\r\n<ol>\r\n	<li>mengidentifikasi kondisi lingkungan dan industri yang relevan, dan</li>\r\n	<li>menetapkan posisi relatif program studi terhadap lingkungannya.</li>\r\n</ol>', 1.00, 71);
INSERT INTO `scores` VALUES (105, '<p>Profil UPPS:&nbsp;<br />\r\n1) menunjukkan keserbacakupan informasi yang jelas dan konsisten dengan data dan informasi yang disampaikan pada masing-masing kriteria,<br />\r\n2) menggambarkan keselarasan dengan substansi keilmuan program studi.&nbsp;<br />\r\n3) menunjukkan iklim yang kondusif untuk pengembangan keilmuan program studi.<br />\r\n4) menunjukkan reputasi sebagai rujukan di bidang keilmuannya.</p>', 4.00, 72);
INSERT INTO `scores` VALUES (106, '<p>Profil UPPS:<br />\r\n1) menunjukkan keserbacakupan informasi yang jelas dan konsisten dengan data dan informasi yang disampaikan pada masing-masing kriteria,<br />\r\n2) menggambarkan keselarasan dengan substansi keilmuan program studi.&nbsp;<br />\r\n3) menunjukkan iklim yang kondusif untuk pengembangan keilmuan program studi.</p>', 3.00, 72);
INSERT INTO `scores` VALUES (107, '<p>Profil UPPS:<br />\r\n1) menunjukkan keserbacakupan informasi yang jelas dengan data dan informasi yang disampaikan pada masing-masing kriteria,<br />\r\n2) menggambarkan keselarasan dengan substansi keilmuan program studi.&nbsp;</p>', 2.00, 72);
INSERT INTO `scores` VALUES (108, '<p>Profil UPPS:<br />\r\n1) kurang menunjukkan keserbacakupan informasi yang jelas dengan data dan informasi yang disampaikan pada masing-masing kriteria,<br />\r\n2) kurang menggambarkan keselarasan dengan substansi keilmuan program studi.&nbsp;</p>', 1.00, 72);
INSERT INTO `scores` VALUES (109, '<p>UPPS memiliki:<br />\r\n1) visi yang mencerminkan visi perguruan tinggi dan memayungi visi keilmuan terkait keunikan program studi serta didukung data konsistensi implementasinya,<br />\r\n2) misi, tujuan, dan strategi yang searah dan bersinerji dengan misi, tujuan, dan strategi perguruan tinggi serta mendukung pengembangan program studi dengan data konsistensi implementasinya.</p>', 4.00, 73);
INSERT INTO `scores` VALUES (110, '<p>UPPS memiliki:<br />\r\n1) visi yang mencerminkan visi perguruan tinggi dan memayungi visi keilmuan terkait keunikan program studi,<br />\r\n2) misi, tujuan, dan strategi yang searah dan bersinerji dengan misi, tujuan, dan strategi perguruan tinggi serta mendukung pengembangan program studi.</p>', 3.00, 73);
INSERT INTO `scores` VALUES (111, '<p>UPPS memiliki:&nbsp;<br />\r\n1) visi yang mencerminkan visi perguruan tinggi dan memayungi visi keilmuan terkait program studi,<br />\r\n2) misi, tujuan, dan strategi yang searah dengan misi, tujuan, dan strategi perguruan tinggi serta mendukung pengembangan program studi.</p>', 2.00, 73);
INSERT INTO `scores` VALUES (112, '<p>UPPS memiliki:<br />\r\n1) visi yang mencerminkan visi perguruan tinggi namun tidak memayungi visi keilmuan terkait program studi,<br />\r\n2) misi, tujuan, dan strategi kurang searah dengan misi, tujuan sasaran, dan strategi perguruan tinggi serta kurang mendukung pengembangan program studi.</p>', 1.00, 73);
INSERT INTO `scores` VALUES (113, '<p>Ada mekanisme dalam penyusunan dan penetapan visi, misi, tujuan dan strategi yang terdokumentasi serta ada keterlibatan semua pemangku kepentingan internal (dosen, mahasiswa dan tenaga kependidikan) dan eksternal (lulusan, pengguna lulusan dan pakar/mitra/organisasi profesi/pemerintah).</p>', 4.00, 74);
INSERT INTO `scores` VALUES (114, '<p>Ada mekanisme dalam penyusunan dan penetapan visi, misi, tujuan dan strategi yang terdokumentasi serta ada keterlibatan pemangku kepentingan internal (dosen, mahasiswa dan tenaga kependidikan) dan pemangku kepentingan eksternal (lulusan dan pengguna lulusan).&nbsp;</p>', 3.00, 74);
INSERT INTO `scores` VALUES (115, '<p>Ada mekanisme dalam penyusunan dan penetapan visi, misi, tujuan dan strategi yang terdokumentasi serta ada keterlibatan pemangku kepentingan internal (dosen dan mahasiswa) dan pemangku kepentingan eksternal (lulusan).</p>', 2.00, 74);
INSERT INTO `scores` VALUES (116, '<p>Ada mekanisme dalam penyusunan dan penetapan visi, misi, tujuan dan strategi yang terdokumentasi namun tidak melibatkan pemangku kepentingan.</p>', 1.00, 74);
INSERT INTO `scores` VALUES (117, '<p>Strategi efektif untuk mencapai tujuan dan disusun berdasarkan analisis yang sistematis dengan menggunakan metoda yang relevan dan terdokumentasi serta pada pelaksanaannya dilakukan pemantauan dan evaluasi dan ditindaklanjuti.</p>', 4.00, 75);
INSERT INTO `scores` VALUES (118, '<p>Strategi efektif untuk mencapai tujuan dan disusun berdasarkan analisis yang sistematis dengan menggunakan metoda yang relevan dan terdokumentasi serta pada pelaksanaannya dilakukan pemantauan dan evaluasi.</p>', 3.00, 75);
INSERT INTO `scores` VALUES (119, '<p>Strategi untuk mencapai tujuan dan disusun berdasarkan analisis yang sistematis dengan menggunakan metoda yang relevan serta terdokumentasi namun belum terbukti efektifitasnya.</p>', 2.00, 75);
INSERT INTO `scores` VALUES (120, '<p>Strategi untuk mencapai tujuan disusun berdasarkan analisis yang kurang sistematis serta tidak menggunakan metoda yang relevan.</p>', 1.00, 75);
INSERT INTO `scores` VALUES (121, '<p>UPPS memiliki bukti yang sahih terkait kerjasama yang ada telah memenuhi 3 aspek.</p>', 4.00, 78);
INSERT INTO `scores` VALUES (122, '<p>UPPS memiliki bukti yang sahih terkait kerjasama yang ada telah memenuhi aspek 1 dan 2.</p>', 3.00, 78);
INSERT INTO `scores` VALUES (123, '<p>UPPS memiliki bukti yang sahih terkait kerjasama yang ada telah memenuhi aspek 1.</p>', 2.00, 78);
INSERT INTO `scores` VALUES (124, '<p>UPPS tidak memiliki bukti pelaksanaan kerjasama.</p>', 1.00, 78);
INSERT INTO `scores` VALUES (125, '<p>UPPS menetapkan indikator kinerja tambahan berdasarkan standar pendidikan tinggi yang ditetapkan perguruan tinggi. Indikator kinerja tambahan mencakup seluruh kriteria serta menunjukkan daya saing UPPS dan program studi di tingkat inernasional. Data indikator kinerja tambahan telah diukur, dimonitor, dikaji, dan dianalisis untuk perbaikan berkelanjutan.</p>', 4.00, 80);
INSERT INTO `scores` VALUES (126, '<p>UPPS menetapkan indikator kinerja tambahan berdasarkan standar pendidikan tinggi yang ditetapkan perguruan tinggi. Indikator kinerja tambahan mencakup sebagian kriteria serta menunjukkan daya saing UPPS dan program studi di tingkat nasional. Data indikator kinerja tambahan telah diukur, dimonitor, dikaji, dan dianalisis untuk perbaikan berkelanjutan.</p>', 3.00, 80);
INSERT INTO `scores` VALUES (127, '<p>UPPS tidak menetapkan indikator kinerja tambahan.</p>', 2.00, 80);
INSERT INTO `scores` VALUES (128, '<p>Tidak ada Skor kurang dari 2.</p>', 1.00, 80);
INSERT INTO `scores` VALUES (129, '<p>Analisis pencapaian kinerja UPPS di tiap kriteria memenuhi 2 aspek, dilaksanakan setiap tahun dan hasilnya dipublikasikan kepada para pemangku kepentingan.</p>', 4.00, 81);
INSERT INTO `scores` VALUES (130, '<p>Analisis pencapaian kinerja UPPS di tiap kriteria memenuhi 2 aspek dan dilaksanakan setiap tahun.</p>', 3.00, 81);
INSERT INTO `scores` VALUES (131, '<p>Analisis pencapaian kinerja UPPS di tiap kriteria memenuhi 2 aspek.&nbsp;</p>', 2.00, 81);
INSERT INTO `scores` VALUES (132, '<p>UPPS memiliki laporan pencapaian kinerja namun belum dianalisis dan dievaluasi.&nbsp;</p>', 1.00, 81);
INSERT INTO `scores` VALUES (133, '<p>UPPS telah melaksanakan SPMI yang memenuhi 5 aspek.</p>', 4.00, 82);
INSERT INTO `scores` VALUES (134, '<p>UPPS telah melaksanakan SPMI yang memenuhi aspek nomor 1 sampai dengan 4.&nbsp;</p>', 3.00, 82);
INSERT INTO `scores` VALUES (135, '<p>UPPS telah melaksanakan SPMI yang memenuhi aspek nomor 1 sampai dengan 3.</p>', 2.00, 82);
INSERT INTO `scores` VALUES (136, '<p>UPPS telah melaksanakan SPMI yang memenuhi aspek nomor 1 dan 2, serta siklus kegiatan SPMI baru dilaksanakan pada tahapan penetapan standar dan pelaksanaan standar pendidikan tinggi.</p>', 1.00, 82);
INSERT INTO `scores` VALUES (137, '<p>UPPS melakukan pengukuran kepuasan kepada seluruh pemangku kepentingan terhadap layanan manajemen yang memenuhi seluruh aspek.</p>', 4.00, 83);
INSERT INTO `scores` VALUES (138, '<p>UPPS melakukan pengukuran kepuasan kepada seluruh pemangku kepentingan terhadap layanan manajemen yang memenuhi aspek 1 s.d 4 dan salah satu dari aspek 5 atau aspek 6.</p>', 3.00, 83);
INSERT INTO `scores` VALUES (139, '<p>UPPS melakukan pengukuran kepuasan kepada seluruh pemangku kepentingan terhadap layanan manajemen yang memenuhi aspek 1 s.d 4.</p>', 2.00, 83);
INSERT INTO `scores` VALUES (140, '<p>UPPS melakukan pengukuran kepuasan kepada sebagian pemangku kepentingan terhadap layanan manajemen yang memenuhi aspek 1 s.d. 4.</p>', 1.00, 83);
INSERT INTO `scores` VALUES (141, '<p>UPPS merencanakan dan mengembangkan DTPS mengikuti rencana pengembangan SDM di perguruan tinggi (Renstra PT) secara konsisten.</p>', 4.00, 100);
INSERT INTO `scores` VALUES (142, '<p>UPPS merencanakan dan mengembangkan DTPS mengikuti rencana pengembangan SDM di perguruan tinggi (Renstra PT).</p>', 3.00, 100);
INSERT INTO `scores` VALUES (143, '<p>UPPS mengembangkan DTPS mengikuti rencana pengembangan SDM di perguruan tinggi (Renstra PT).</p>', 2.00, 100);
INSERT INTO `scores` VALUES (144, '<p>UPPS mengembangkan DTPS tidak mengikuti atau tidak sesuai dengan rencana pengembangan SDM di perguruan tinggi (Renstra PT).</p>', 1.00, 100);
INSERT INTO `scores` VALUES (145, '<p>Persentase realisasi dana untuk investasi SDM serta Sarana dan Prasarana telah sesuai dengan perencanaan investasi serta melebihi standar pembelajaran, penelitian dan PkM untuk mendukung terciptanya suasana akademik yang sehat dan kondusif.</p>', 4.00, 105);
INSERT INTO `scores` VALUES (146, '<p>Persentase realisasi dana untuk investasi SDM serta Sarana dan Prasarana telah sesuai dengan perencanaan investasi serta melebihi standar pembelajaran, penelitian dan PkM.</p>', 3.00, 105);
INSERT INTO `scores` VALUES (147, '<p>Persentase realisasi dana untuk investasi SDM serta Sarana dan Prasarana telah sesuai dengan perencanaan investasi serta memenuhi standar pembelajaran, penelitian dan PkM.</p>', 2.00, 105);
INSERT INTO `scores` VALUES (148, '<p>Persentase realisasi dana untuk investasi SDM serta Sarana dan Prasarana kurang sesuai dengan perencanaan investasi.</p>', 1.00, 105);
INSERT INTO `scores` VALUES (149, '<p>Dana dapat menjamin keberlangsungan operasional tridharma, pengembangan 3 tahun terakhir serta memiliki kecukupan dana untuk rencana pengembangan 3 tahun ke depan yang didukung oleh sumber pendanaan yang realistis.</p>', 4.00, 106);
INSERT INTO `scores` VALUES (150, '<p>Dana dapat menjamin keberlangsungan operasional tridharma serta pengembangan 3 tahun terakhir.</p>', 3.00, 106);
INSERT INTO `scores` VALUES (151, '<p>Dana dapat menjamin keberlangsungan operasional tridharma dan sebagian kecil pengembangan.</p>', 2.00, 106);
INSERT INTO `scores` VALUES (152, '<p>Dana &nbsp;dapat menjamin keberlangsungan operasional dan tidak ada untuk pengembangan.</p>', 1.00, 106);
INSERT INTO `scores` VALUES (153, '<p>UPPS menyediakan sarana dan prasarana yang mutakhir serta aksesibiltas yang cukup untuk menjamin pencapaian capaian pembelajaran dan meningkatkan suasana akademik.</p>', 4.00, 107);
INSERT INTO `scores` VALUES (154, '<p>UPPS menyediakan sarana dan prasarana serta aksesibiltas yang cukup untuk menjamin pencapaian capaian pembelajaran dan meningkatkan suasana akademik.</p>', 3.00, 107);
INSERT INTO `scores` VALUES (155, '<p>UPPS menyediakan sarana dan prasarana serta aksesibiltas yang cukup untuk menjamin pencapaian capaian pembelajaran.</p>', 2.00, 107);
INSERT INTO `scores` VALUES (156, '<p>UPPS menyediakan sarana dan prasarana serta aksesibiltas yang tidak cukup untuk menjamin pencapaian</p>', 1.00, 107);
INSERT INTO `scores` VALUES (157, '<p>Terpenuhinya karakteristik proses pembelajaran program studi yang mencakup seluruh sifat, dan telah menghasilkan profil lulusan yang sesuai dengan capaian pembelajaran.&nbsp;</p>', 4.00, 109);
INSERT INTO `scores` VALUES (158, '<p>Terpenuhinya karakteristik proses pembelajaran program studi yang berpusat pada mahasiswa, dan telah menghasilkan profil lulusan yang sesuai dengan capaian pembelajaran.&nbsp;</p>', 3.00, 109);
INSERT INTO `scores` VALUES (159, '<p>Karakteristik proses pembelajaran program studi berpusat pada mahasiswa yang diterapkan pada minimal 50% matakuliah.</p>', 2.00, 109);
INSERT INTO `scores` VALUES (160, '<p>Karakteristik proses pembelajaran program studi belum berpusat pada mahasiswa.</p>', 1.00, 109);
INSERT INTO `scores` VALUES (161, '<p>UPPS memiliki bukti sahih tentang sistem dan pelaksanaan monitoring dan evaluasi proses pembelajaran mencakup karakteristik, perencanaan, pelaksanaan, proses pembelajaran dan beban belajar mahasiswa yang dilaksanakan secara konsisten dan ditindak lanjuti.</p>', 4.00, 113);
INSERT INTO `scores` VALUES (162, '<p>UPPS memiliki bukti sahih tentang sistem dan pelaksanaan monitoring dan evaluasi proses pembelajaran mencakup karakteristik, perencanaan, pelaksanaan, proses pembelajaran dan beban belajar mahasiswa yang dilaksanakan secara konsisten.</p>', 3.00, 113);
INSERT INTO `scores` VALUES (163, '<p>UPPS memiliki bukti sahih tentang sistem dan pelaksanaan monitoring dan evaluasi proses pembelajaran mencakup karakteristik, perencanaan, pelaksanaan, proses pembelajaran dan beban belajar mahasiswa.</p>', 2.00, 113);
INSERT INTO `scores` VALUES (164, '<p>UPPS telah melaksanakan monitoring dan evaluasi proses pembelajaran mencakup karakteristik, perencanaan, pelaksanaan, proses pembelajaran dan beban belajar mahasiswa namun tidak semua didukung bukti sahih.</p>', 1.00, 113);
INSERT INTO `scores` VALUES (165, '<p>Kegiatan ilmiah yang terjadwal dilaksanakan setiap bulan.</p>', 4.00, 116);
INSERT INTO `scores` VALUES (166, '<p>Kegiatan ilmiah yang terjadwal dilaksanakan dua s.d tiga bulan sekali.</p>', 3.00, 116);
INSERT INTO `scores` VALUES (167, '<p>Kegiatan ilmiah yang terjadwal dilaksanakan empat s.d. enam bulan sekali.</p>', 2.00, 116);
INSERT INTO `scores` VALUES (168, '<p>Kegiatan ilmiah yang terjadwal dilaksanakan lebih dari enam bulan sekali.</p>', 1.00, 116);
INSERT INTO `scores` VALUES (169, '<p>UPPS memenuhi 4 unsur relevansi penelitian dosen dan mahasiswa.</p>', 4.00, 118);
INSERT INTO `scores` VALUES (170, '<p>UPPS memenuhi &nbsp;unsur 1, 2, dan 3 relevansi penelitian dosen dan mahasiswa.</p>', 3.00, 118);
INSERT INTO `scores` VALUES (171, '<p>UPPS memenuhi &nbsp;unsur 1, dan 2 relevansi penelitian dosen dan mahasiswa.</p>', 2.00, 118);
INSERT INTO `scores` VALUES (172, '<p>UPPS memenuhi &nbsp;unsur pertama namun penelitian dosen dan mahasiswa tidak sesuai dengan peta jalan.</p>', 1.00, 118);
INSERT INTO `scores` VALUES (173, '<p>UPPS memenuhi 4 unsur relevansi PkM dosen dan mahasiswa.</p>', 4.00, 120);
INSERT INTO `scores` VALUES (174, '<p>UPPS memenuhi &nbsp;unsur 1, 2, dan 3 relevansi PkM dosen dan mahasiswa.</p>', 3.00, 120);
INSERT INTO `scores` VALUES (175, '<p>UPPS memenuhi &nbsp;unsur 1, dan 2 relevansi PkM dosen dan mahasiswa.</p>', 2.00, 120);
INSERT INTO `scores` VALUES (176, '<p>UPPS memenuhi &nbsp;unsur pertama namun PkM dosen dan mahasiswa tidak sesuai dengan peta jalan.</p>', 1.00, 120);
INSERT INTO `scores` VALUES (177, '<p>Analisis capaian pembelajaran lulusan memenuhi 3 aspek.&nbsp;</p>', 4.00, 122);
INSERT INTO `scores` VALUES (178, '<p>Analisis capaian pembelajaran lulusan memenuhi 2 aspek.&nbsp;</p>', 3.00, 122);
INSERT INTO `scores` VALUES (179, '<p>Analisis capaian pembelajaran lulusan memenuhi 1 aspek.&nbsp;</p>', 2.00, 122);
INSERT INTO `scores` VALUES (180, '<p>Analisis capaian pembelajaran lulusan tidak memenuhi ketiga aspek.&nbsp;</p>', 1.00, 122);
INSERT INTO `scores` VALUES (181, '<p>Tracer study yang dilakukan UPPS telah mencakup 5 aspek.</p>', 4.00, 129);
INSERT INTO `scores` VALUES (182, '<p>Tracer study yang dilakukan UPPS telah mencakup 4 aspek.</p>', 3.00, 129);
INSERT INTO `scores` VALUES (183, '<p>Tracer study yang dilakukan UPPS telah mencakup 3 aspek.</p>', 2.00, 129);
INSERT INTO `scores` VALUES (184, '<p>Tracer study yang dilakukan UPPS telah mencakup 2 aspek.</p>', 1.00, 129);
INSERT INTO `scores` VALUES (185, '<p>UPPS telah melakukan analisis capaian kinerja yang:&nbsp;<br />\r\n1) analisisnya didukung oleh data/informasi yang relevan (merujuk pada pencapaian standar mutu perguruan tinggi) dan berkualitas (andal dan memadai) yang didukung oleh keberadaan pangkalan data institusi yang terintegrasi.<br />\r\n2) konsisten dengan seluruh kriteria yang diuraikan sebelumnya,&nbsp;<br />\r\n3) analisisnya dilakukan secara komprehensif, tepat, dan tajam untuk mengidentifikasi akar masalah di &nbsp;UPPS.<br />\r\n4) hasilnya dipublikasikan kepada para pemangku kepentingan internal dan eksternal serta mudah diakses.</p>', 4.00, 136);
INSERT INTO `scores` VALUES (186, '<p>UPPS telah melakukan analisis capaian kinerja yang:&nbsp;<br />\r\n1) analisisnya didukung oleh data/informasi yang relevan (merujuk pada pencapaian standar mutu perguruan tinggi) dan berkualitas (andal dan memadai) yang didukung oleh keberadaan pangkalan data institusi yang belum terintegrasi.<br />\r\n2) konsisten dengan sebagian besar (7 s.d. 8) kriteria yang diuraikan sebelumnya,&nbsp;<br />\r\n3) analisisnya dilakukan secara komprehensif dan tepat untuk mengidentifikasi akar masalah di UPPS.<br />\r\n4) hasilnya dipublikasikan kepada para pemangku kepentingan internal serta mudah diakses.</p>', 3.00, 136);
INSERT INTO `scores` VALUES (187, '<p>UPPS telah melakukan analisis capaian kinerja yang:&nbsp;<br />\r\n1) analisisnya didukung oleh data/informasi yang relevan (merujuk pada pencapaian standar mutu perguruan tinggi) dan berkualitas (andal dan memadai).<br />\r\n2) konsisten dengan sebagian (5 s.d. 6) kriteria yang diuraikan sebelumnya,&nbsp;<br />\r\n3) analisisnya dilakukan secara komprehensif untuk mengidentifikasi akar masalah di UPPS.<br />\r\n4) hasilnya dipublikasikan kepada para pemangku kepentingan internal.</p>', 2.00, 136);
INSERT INTO `scores` VALUES (188, '<p>UPPS telah melakukan analisis capaian kinerja yang:&nbsp;<br />\r\n1) analisisnya tidak sepenuhnya didukung oleh data/informasi yang relevan (merujuk pada pencapaian standar mutu perguruan tinggi) dan berkualitas (andal dan memadai).<br />\r\n2) konsisten dengan sebagian kecil (kurang dari 5) kriteria yang diuraikan sebelumnya,&nbsp;<br />\r\n3) analisisnya dilakukan tidak secara komprehensif untuk mengidentifikasi akar masalah di UPPS.<br />\r\n4) hasilnya tidak dipublikasikan.</p>', 1.00, 136);
INSERT INTO `scores` VALUES (189, '<p>UPPS melakukan analisis SWOT atau analisis lain yang relevan, serta memenuhi aspek-aspek sebagai berikut:<br />\r\n1) melakukan identifikasi kekuatan atau faktor pendorong, kelemahan atau faktor penghambat, peluang dan ancaman yang dihadapi UPPS dilakukan secara tepat,<br />\r\n2) memiliki keterkaitan dengan hasil analisis capaian kinerja,<br />\r\n3) merumuskan strategi pengembangan UPPS yang berkesesuaian, dan<br />\r\n4) menghasilkan program-program pengembangan alternatif yang tepat.</p>', 4.00, 137);
INSERT INTO `scores` VALUES (190, '<p>UPPS melakukan analisis SWOT atau analisis lain yang relevan, serta memenuhi aspek-aspek sebagai berikut:<br />\r\n1) melakukan identifikasi kekuatan atau faktor pendorong, kelemahan atau faktor penghambat, peluang dan ancaman yang dihadapi UPPS dilakukan secara tepat,<br />\r\n2) memiliki keterkaitan dengan hasil analisis capaian kinerja, dan<br />\r\n3) merumuskan strategi pengembangan UPPS yang berkesesuaian.</p>', 3.00, 137);
INSERT INTO `scores` VALUES (191, '<p>UPPS melakukan analisis SWOT atau analisis lain yang relevan, serta memenuhi aspek-aspek sebagai berikut:<br />\r\n1) melakukan identifikasi kekuatan atau faktor pendorong, kelemahan atau faktor penghambat, peluang dan ancaman yang dihadapi UPPS dilakukan secara tepat, dan&nbsp;<br />\r\n2) memiliki keterkaitan dengan hasil analisis capaian kinerja.</p>', 2.00, 137);
INSERT INTO `scores` VALUES (192, '<p>UPPS melakukan analisis SWOT atau analisis lain yang memenuhi aspek-aspek sebagai berikut:<br />\r\n1) melakukan identifikasi kekuatan atau faktor pendorong, kelemahan atau faktor penghambat, peluang dan ancaman yang dihadapi UPPS, dan<br />\r\n2) memiliki keterkaitan dengan hasil analisis capaian kinerja, namun tidak terstruktur dan tidak sistematis.</p>', 1.00, 137);
INSERT INTO `scores` VALUES (193, '<p>UPPS menetapkan prioritas program pengembangan berdasarkan hasil analisis SWOT atau analisis lainnya yang mempertimbangkan secara komprehensif:<br />\r\n1) kapasitas UPPS,<br />\r\n2) kebutuhan UPPS dan PS di masa depan,<br />\r\n3) rencana strategis UPPS yang berlaku,<br />\r\n4) aspirasi dari pemangku kepentingan internal dan eksternal, dan<br />\r\n5) program yang menjamin keberlanjutan.</p>', 4.00, 138);
INSERT INTO `scores` VALUES (194, '<p>UPPS menetapkan prioritas program pengembangan berdasarkan hasil analisis SWOT atau analisis lainnya yang mempertimbangkan secara komprehensif:<br />\r\n1) kapasitas UPPS,<br />\r\n2) kebutuhan UPPS dan PS di masa depan,<br />\r\n3) rencana strategis UPPS yang berlaku, dan<br />\r\n4) aspirasi dari pemangku kepentingan internal.</p>', 3.00, 138);
INSERT INTO `scores` VALUES (195, '<p>UPPS menetapkan prioritas program pengembangan berdasarkan hasil analisis SWOT atau analisis lainnya yang mempertimbangkan secara komprehensif:<br />\r\n1) kapasitas UPPS,<br />\r\n2) kebutuhan UPPS dan PS di masa depan, dan<br />\r\n3) rencana strategis UPPS yang berlaku.</p>', 2.00, 138);
INSERT INTO `scores` VALUES (196, '<p>UPPS menetapkan prioritas program pengembangan namun belum mempertimbangan secara komprehensif:<br />\r\n1) kapasitas UPPS,<br />\r\n2) kebutuhan UPPS dan PS, dan<br />\r\n3) rencana strategis UPPS yang berlaku.</p>', 1.00, 138);
INSERT INTO `scores` VALUES (197, '<p>UPPS memiliki kebijakan dan upaya yang diturunkan ke dalam berbagai peraturan untuk menjamin keberlanjutan program yang mencakup:<br />\r\n1) alokasi sumber daya,&nbsp;<br />\r\n2) kemampuan melaksanakan,<br />\r\n3) rencana penjaminan mutu yang berkelanjutan, dan&nbsp;<br />\r\n4) keberadaan dukungan stakeholders eksternal.</p>', 4.00, 139);
INSERT INTO `scores` VALUES (198, '<p>UPPS memiliki kebijakan dan upaya yang diturunkan ke dalam berbagai peraturan untuk menjamin keberlanjutan program yang mencakup:<br />\r\n1) alokasi sumber daya,&nbsp;<br />\r\n2) kemampuan melaksanakan, dan<br />\r\n3) rencana penjaminan mutu yang berkelanjutan.</p>', 3.00, 139);
INSERT INTO `scores` VALUES (199, '<p>UPPS memiliki kebijakan dan upaya untuk menjamin keberlanjutan program yang mencakup:<br />\r\n1) alokasi sumber daya,&nbsp;<br />\r\n2) kemampuan melaksanakan, dan<br />\r\n3) rencana penjaminan mutu yang berkelanjutan.</p>', 2.00, 139);
INSERT INTO `scores` VALUES (200, '<p>UPPS memiliki kebijakan dan upaya namun belum cukup untuk menjamin keberlanjutan program.</p>', 1.00, 139);
INSERT INTO `scores` VALUES (201, '<p>Unit Pengelola Program Studi (UPPS) mampu:</p>\r\n\r\n<ol>\r\n	<li>mengidentifikasi kondisi lingkungan dan industri yang relevan secara komprehensif dan strategis,</li>\r\n	<li>menetapkan posisi relatif program studi terhadap lingkungannya,</li>\r\n	<li>menggunakan hasil identifikasi dan posisi yang ditetapkan untuk melakukan analisis (SWOT/metoda analisis lain yang relevan) untuk pengembangan program studi, dan</li>\r\n	<li>merumuskan strategi pengembangan program studi yang berkesesuaian untuk menghasilkan program-program pengembangan alternatif yang tepat.</li>\r\n</ol>', 4.00, 141);
INSERT INTO `scores` VALUES (202, '<p>Unit Pengelola Program Studi (UPPS) mampu:</p>\r\n\r\n<ol>\r\n	<li>mengidentifikasi kondisi lingkungan dan industri yang relevan secara komprehensif,</li>\r\n	<li>menetapkan posisi relatif program studi terhadap lingkungannya, dan&nbsp;</li>\r\n	<li>menggunakan hasil identifikasi dan posisi yang ditetapkan untuk melakukan analisis (SWOT/metoda analisis lain yang relevan) untuk pengembangan program studi.</li>\r\n</ol>', 3.00, 141);
INSERT INTO `scores` VALUES (203, '<p>Unit Pengelola Program Studi (UPPS) mampu:</p>\r\n\r\n<ol>\r\n	<li>mengidentifikasi kondisi lingkungan dan industri yang relevan, dan</li>\r\n	<li>menetapkan posisi relatif program studi terhadap lingkungannya.</li>\r\n</ol>', 2.00, 141);
INSERT INTO `scores` VALUES (204, '<p>Unit Pengelola Program Studi (UPPS) kurang mampu:</p>\r\n\r\n<ol>\r\n	<li>mengidentifikasi kondisi lingkungan dan industri yang relevan, dan</li>\r\n	<li>menetapkan posisi relatif program studi terhadap lingkungannya.</li>\r\n</ol>', 1.00, 141);
INSERT INTO `scores` VALUES (205, '<p>Profil UPPS:&nbsp;<br />\r\n1) menunjukkan keserbacakupan informasi yang jelas dan konsisten dengan data dan informasi yang disampaikan pada masing-masing kriteria,<br />\r\n2) menggambarkan keselarasan dengan substansi keilmuan program studi.&nbsp;<br />\r\n3) menunjukkan iklim yang kondusif untuk pengembangan keilmuan program studi.<br />\r\n4) menunjukkan reputasi sebagai rujukan di bidang keilmuannya.</p>', 4.00, 142);
INSERT INTO `scores` VALUES (206, '<p>Profil UPPS:<br />\r\n1) menunjukkan keserbacakupan informasi yang jelas dan konsisten dengan data dan informasi yang disampaikan pada masing-masing kriteria,<br />\r\n2) menggambarkan keselarasan dengan substansi keilmuan program studi.&nbsp;<br />\r\n3) menunjukkan iklim yang kondusif untuk pengembangan keilmuan program studi.</p>', 3.00, 142);
INSERT INTO `scores` VALUES (207, '<p>Profil UPPS:<br />\r\n1) menunjukkan keserbacakupan informasi yang jelas dengan data dan informasi yang disampaikan pada masing-masing kriteria,<br />\r\n2) menggambarkan keselarasan dengan substansi keilmuan program studi.&nbsp;</p>', 2.00, 142);
INSERT INTO `scores` VALUES (208, '<p>Profil UPPS:<br />\r\n1) kurang menunjukkan keserbacakupan informasi yang jelas dengan data dan informasi yang disampaikan pada masing-masing kriteria,<br />\r\n2) kurang menggambarkan keselarasan dengan substansi keilmuan program studi.&nbsp;</p>', 1.00, 142);
INSERT INTO `scores` VALUES (209, '<p>UPPS memiliki:<br />\r\n1) visi yang mencerminkan visi perguruan tinggi dan memayungi visi keilmuan terkait keunikan program studi serta didukung data konsistensi implementasinya,<br />\r\n2) misi, tujuan, dan strategi yang searah dan bersinerji dengan misi, tujuan, dan strategi perguruan tinggi serta mendukung pengembangan program studi dengan data konsistensi implementasinya.</p>', 4.00, 143);
INSERT INTO `scores` VALUES (210, '<p>UPPS memiliki:<br />\r\n1) visi yang mencerminkan visi perguruan tinggi dan memayungi visi keilmuan terkait keunikan program studi,<br />\r\n2) misi, tujuan, dan strategi yang searah dan bersinerji dengan misi, tujuan, dan strategi perguruan tinggi serta mendukung pengembangan program studi.</p>', 3.00, 143);
INSERT INTO `scores` VALUES (211, '<p>UPPS memiliki:&nbsp;<br />\r\n1) visi yang mencerminkan visi perguruan tinggi dan memayungi visi keilmuan terkait program studi,<br />\r\n2) misi, tujuan, dan strategi yang searah dengan misi, tujuan, dan strategi perguruan tinggi serta mendukung pengembangan program studi.</p>', 2.00, 143);
INSERT INTO `scores` VALUES (212, '<p>UPPS memiliki:<br />\r\n1) visi yang mencerminkan visi perguruan tinggi namun tidak memayungi visi keilmuan terkait program studi,<br />\r\n2) misi, tujuan, dan strategi kurang searah dengan misi, tujuan sasaran, dan strategi perguruan tinggi serta kurang mendukung pengembangan program studi.</p>', 1.00, 143);
INSERT INTO `scores` VALUES (213, '<p>Ada mekanisme dalam penyusunan dan penetapan visi, misi, tujuan dan strategi yang terdokumentasi serta ada keterlibatan semua pemangku kepentingan internal (dosen, mahasiswa dan tenaga kependidikan) dan eksternal (lulusan, pengguna lulusan dan pakar/mitra/organisasi profesi/pemerintah).</p>', 4.00, 144);
INSERT INTO `scores` VALUES (214, '<p>Ada mekanisme dalam penyusunan dan penetapan visi, misi, tujuan dan strategi yang terdokumentasi serta ada keterlibatan pemangku kepentingan internal (dosen, mahasiswa dan tenaga kependidikan) dan pemangku kepentingan eksternal (lulusan dan pengguna lulusan).&nbsp;</p>', 3.00, 144);
INSERT INTO `scores` VALUES (215, '<p>Ada mekanisme dalam penyusunan dan penetapan visi, misi, tujuan dan strategi yang terdokumentasi serta ada keterlibatan pemangku kepentingan internal (dosen dan mahasiswa) dan pemangku kepentingan eksternal (lulusan).</p>', 2.00, 144);
INSERT INTO `scores` VALUES (216, '<p>Ada mekanisme dalam penyusunan dan penetapan visi, misi, tujuan dan strategi yang terdokumentasi namun tidak melibatkan pemangku kepentingan.</p>', 1.00, 144);
INSERT INTO `scores` VALUES (217, '<p>Strategi efektif untuk mencapai tujuan dan disusun berdasarkan analisis yang sistematis dengan menggunakan metoda yang relevan dan terdokumentasi serta pada pelaksanaannya dilakukan pemantauan dan evaluasi dan ditindaklanjuti.</p>', 4.00, 145);
INSERT INTO `scores` VALUES (218, '<p>Strategi efektif untuk mencapai tujuan dan disusun berdasarkan analisis yang sistematis dengan menggunakan metoda yang relevan dan terdokumentasi serta pada pelaksanaannya dilakukan pemantauan dan evaluasi.</p>', 3.00, 145);
INSERT INTO `scores` VALUES (219, '<p>Strategi untuk mencapai tujuan dan disusun berdasarkan analisis yang sistematis dengan menggunakan metoda yang relevan serta terdokumentasi namun belum terbukti efektifitasnya.</p>', 2.00, 145);
INSERT INTO `scores` VALUES (220, '<p>Strategi untuk mencapai tujuan disusun berdasarkan analisis yang kurang sistematis serta tidak menggunakan metoda yang relevan.</p>', 1.00, 145);
INSERT INTO `scores` VALUES (221, '<p>UPPS memiliki bukti yang sahih terkait kerjasama yang ada telah memenuhi 3 aspek.</p>', 4.00, 148);
INSERT INTO `scores` VALUES (222, '<p>UPPS memiliki bukti yang sahih terkait kerjasama yang ada telah memenuhi aspek 1 dan 2.</p>', 3.00, 148);
INSERT INTO `scores` VALUES (223, '<p>UPPS memiliki bukti yang sahih terkait kerjasama yang ada telah memenuhi aspek 1.</p>', 2.00, 148);
INSERT INTO `scores` VALUES (224, '<p>UPPS tidak memiliki bukti pelaksanaan kerjasama.</p>', 1.00, 148);
INSERT INTO `scores` VALUES (225, '<p>UPPS menetapkan indikator kinerja tambahan berdasarkan standar pendidikan tinggi yang ditetapkan perguruan tinggi. Indikator kinerja tambahan mencakup seluruh kriteria serta menunjukkan daya saing UPPS dan program studi di tingkat inernasional. Data indikator kinerja tambahan telah diukur, dimonitor, dikaji, dan dianalisis untuk perbaikan berkelanjutan.</p>', 4.00, 150);
INSERT INTO `scores` VALUES (226, '<p>UPPS menetapkan indikator kinerja tambahan berdasarkan standar pendidikan tinggi yang ditetapkan perguruan tinggi. Indikator kinerja tambahan mencakup sebagian kriteria serta menunjukkan daya saing UPPS dan program studi di tingkat nasional. Data indikator kinerja tambahan telah diukur, dimonitor, dikaji, dan dianalisis untuk perbaikan berkelanjutan.</p>', 3.00, 150);
INSERT INTO `scores` VALUES (227, '<p>UPPS tidak menetapkan indikator kinerja tambahan.</p>', 2.00, 150);
INSERT INTO `scores` VALUES (228, '<p>Tidak ada Skor kurang dari 2.</p>', 1.00, 150);
INSERT INTO `scores` VALUES (229, '<p>Analisis pencapaian kinerja UPPS di tiap kriteria memenuhi 2 aspek, dilaksanakan setiap tahun dan hasilnya dipublikasikan kepada para pemangku kepentingan.</p>', 4.00, 151);
INSERT INTO `scores` VALUES (230, '<p>Analisis pencapaian kinerja UPPS di tiap kriteria memenuhi 2 aspek dan dilaksanakan setiap tahun.</p>', 3.00, 151);
INSERT INTO `scores` VALUES (231, '<p>Analisis pencapaian kinerja UPPS di tiap kriteria memenuhi 2 aspek.&nbsp;</p>', 2.00, 151);
INSERT INTO `scores` VALUES (232, '<p>UPPS memiliki laporan pencapaian kinerja namun belum dianalisis dan dievaluasi.&nbsp;</p>', 1.00, 151);
INSERT INTO `scores` VALUES (233, '<p>UPPS telah melaksanakan SPMI yang memenuhi 5 aspek.</p>', 4.00, 152);
INSERT INTO `scores` VALUES (234, '<p>UPPS telah melaksanakan SPMI yang memenuhi aspek nomor 1 sampai dengan 4.&nbsp;</p>', 3.00, 152);
INSERT INTO `scores` VALUES (235, '<p>UPPS telah melaksanakan SPMI yang memenuhi aspek nomor 1 sampai dengan 3.</p>', 2.00, 152);
INSERT INTO `scores` VALUES (236, '<p>UPPS telah melaksanakan SPMI yang memenuhi aspek nomor 1 dan 2, serta siklus kegiatan SPMI baru dilaksanakan pada tahapan penetapan standar dan pelaksanaan standar pendidikan tinggi.</p>', 1.00, 152);
INSERT INTO `scores` VALUES (237, '<p>UPPS melakukan pengukuran kepuasan kepada seluruh pemangku kepentingan terhadap layanan manajemen yang memenuhi seluruh aspek.</p>', 4.00, 153);
INSERT INTO `scores` VALUES (238, '<p>UPPS melakukan pengukuran kepuasan kepada seluruh pemangku kepentingan terhadap layanan manajemen yang memenuhi aspek 1 s.d 4 dan salah satu dari aspek 5 atau aspek 6.</p>', 3.00, 153);
INSERT INTO `scores` VALUES (239, '<p>UPPS melakukan pengukuran kepuasan kepada seluruh pemangku kepentingan terhadap layanan manajemen yang memenuhi aspek 1 s.d 4.</p>', 2.00, 153);
INSERT INTO `scores` VALUES (240, '<p>UPPS melakukan pengukuran kepuasan kepada sebagian pemangku kepentingan terhadap layanan manajemen yang memenuhi aspek 1 s.d. 4.</p>', 1.00, 153);
INSERT INTO `scores` VALUES (241, '<p>UPPS merencanakan dan mengembangkan DTPS mengikuti rencana pengembangan SDM di perguruan tinggi (Renstra PT) secara konsisten.</p>', 4.00, 170);
INSERT INTO `scores` VALUES (242, '<p>UPPS merencanakan dan mengembangkan DTPS mengikuti rencana pengembangan SDM di perguruan tinggi (Renstra PT).</p>', 3.00, 170);
INSERT INTO `scores` VALUES (243, '<p>UPPS mengembangkan DTPS mengikuti rencana pengembangan SDM di perguruan tinggi (Renstra PT).</p>', 2.00, 170);
INSERT INTO `scores` VALUES (244, '<p>UPPS mengembangkan DTPS tidak mengikuti atau tidak sesuai dengan rencana pengembangan SDM di perguruan tinggi (Renstra PT).</p>', 1.00, 170);
INSERT INTO `scores` VALUES (245, '<p>Persentase realisasi dana untuk investasi SDM serta Sarana dan Prasarana telah sesuai dengan perencanaan investasi serta melebihi standar pembelajaran, penelitian dan PkM untuk mendukung terciptanya suasana akademik yang sehat dan kondusif.</p>', 4.00, 175);
INSERT INTO `scores` VALUES (246, '<p>Persentase realisasi dana untuk investasi SDM serta Sarana dan Prasarana telah sesuai dengan perencanaan investasi serta melebihi standar pembelajaran, penelitian dan PkM.</p>', 3.00, 175);
INSERT INTO `scores` VALUES (247, '<p>Persentase realisasi dana untuk investasi SDM serta Sarana dan Prasarana telah sesuai dengan perencanaan investasi serta memenuhi standar pembelajaran, penelitian dan PkM.</p>', 2.00, 175);
INSERT INTO `scores` VALUES (248, '<p>Persentase realisasi dana untuk investasi SDM serta Sarana dan Prasarana kurang sesuai dengan perencanaan investasi.</p>', 1.00, 175);
INSERT INTO `scores` VALUES (249, '<p>Dana dapat menjamin keberlangsungan operasional tridharma, pengembangan 3 tahun terakhir serta memiliki kecukupan dana untuk rencana pengembangan 3 tahun ke depan yang didukung oleh sumber pendanaan yang realistis.</p>', 4.00, 176);
INSERT INTO `scores` VALUES (250, '<p>Dana dapat menjamin keberlangsungan operasional tridharma serta pengembangan 3 tahun terakhir.</p>', 3.00, 176);
INSERT INTO `scores` VALUES (251, '<p>Dana dapat menjamin keberlangsungan operasional tridharma dan sebagian kecil pengembangan.</p>', 2.00, 176);
INSERT INTO `scores` VALUES (252, '<p>Dana &nbsp;dapat menjamin keberlangsungan operasional dan tidak ada untuk pengembangan.</p>', 1.00, 176);
INSERT INTO `scores` VALUES (253, '<p>UPPS menyediakan sarana dan prasarana yang mutakhir serta aksesibiltas yang cukup untuk menjamin pencapaian capaian pembelajaran dan meningkatkan suasana akademik.</p>', 4.00, 177);
INSERT INTO `scores` VALUES (254, '<p>UPPS menyediakan sarana dan prasarana serta aksesibiltas yang cukup untuk menjamin pencapaian capaian pembelajaran dan meningkatkan suasana akademik.</p>', 3.00, 177);
INSERT INTO `scores` VALUES (255, '<p>UPPS menyediakan sarana dan prasarana serta aksesibiltas yang cukup untuk menjamin pencapaian capaian pembelajaran.</p>', 2.00, 177);
INSERT INTO `scores` VALUES (256, '<p>UPPS menyediakan sarana dan prasarana serta aksesibiltas yang tidak cukup untuk menjamin pencapaian</p>', 1.00, 177);
INSERT INTO `scores` VALUES (257, '<p>Terpenuhinya karakteristik proses pembelajaran program studi yang mencakup seluruh sifat, dan telah menghasilkan profil lulusan yang sesuai dengan capaian pembelajaran.&nbsp;</p>', 4.00, 179);
INSERT INTO `scores` VALUES (258, '<p>Terpenuhinya karakteristik proses pembelajaran program studi yang berpusat pada mahasiswa, dan telah menghasilkan profil lulusan yang sesuai dengan capaian pembelajaran.&nbsp;</p>', 3.00, 179);
INSERT INTO `scores` VALUES (259, '<p>Karakteristik proses pembelajaran program studi berpusat pada mahasiswa yang diterapkan pada minimal 50% matakuliah.</p>', 2.00, 179);
INSERT INTO `scores` VALUES (260, '<p>Karakteristik proses pembelajaran program studi belum berpusat pada mahasiswa.</p>', 1.00, 179);
INSERT INTO `scores` VALUES (261, '<p>UPPS memiliki bukti sahih tentang sistem dan pelaksanaan monitoring dan evaluasi proses pembelajaran mencakup karakteristik, perencanaan, pelaksanaan, proses pembelajaran dan beban belajar mahasiswa yang dilaksanakan secara konsisten dan ditindak lanjuti.</p>', 4.00, 183);
INSERT INTO `scores` VALUES (262, '<p>UPPS memiliki bukti sahih tentang sistem dan pelaksanaan monitoring dan evaluasi proses pembelajaran mencakup karakteristik, perencanaan, pelaksanaan, proses pembelajaran dan beban belajar mahasiswa yang dilaksanakan secara konsisten.</p>', 3.00, 183);
INSERT INTO `scores` VALUES (263, '<p>UPPS memiliki bukti sahih tentang sistem dan pelaksanaan monitoring dan evaluasi proses pembelajaran mencakup karakteristik, perencanaan, pelaksanaan, proses pembelajaran dan beban belajar mahasiswa.</p>', 2.00, 183);
INSERT INTO `scores` VALUES (264, '<p>UPPS telah melaksanakan monitoring dan evaluasi proses pembelajaran mencakup karakteristik, perencanaan, pelaksanaan, proses pembelajaran dan beban belajar mahasiswa namun tidak semua didukung bukti sahih.</p>', 1.00, 183);
INSERT INTO `scores` VALUES (265, '<p>Kegiatan ilmiah yang terjadwal dilaksanakan setiap bulan.</p>', 4.00, 186);
INSERT INTO `scores` VALUES (266, '<p>Kegiatan ilmiah yang terjadwal dilaksanakan dua s.d tiga bulan sekali.</p>', 3.00, 186);
INSERT INTO `scores` VALUES (267, '<p>Kegiatan ilmiah yang terjadwal dilaksanakan empat s.d. enam bulan sekali.</p>', 2.00, 186);
INSERT INTO `scores` VALUES (268, '<p>Kegiatan ilmiah yang terjadwal dilaksanakan lebih dari enam bulan sekali.</p>', 1.00, 186);
INSERT INTO `scores` VALUES (269, '<p>UPPS memenuhi 4 unsur relevansi penelitian dosen dan mahasiswa.</p>', 4.00, 188);
INSERT INTO `scores` VALUES (270, '<p>UPPS memenuhi &nbsp;unsur 1, 2, dan 3 relevansi penelitian dosen dan mahasiswa.</p>', 3.00, 188);
INSERT INTO `scores` VALUES (271, '<p>UPPS memenuhi &nbsp;unsur 1, dan 2 relevansi penelitian dosen dan mahasiswa.</p>', 2.00, 188);
INSERT INTO `scores` VALUES (272, '<p>UPPS memenuhi &nbsp;unsur pertama namun penelitian dosen dan mahasiswa tidak sesuai dengan peta jalan.</p>', 1.00, 188);
INSERT INTO `scores` VALUES (273, '<p>UPPS memenuhi 4 unsur relevansi PkM dosen dan mahasiswa.</p>', 4.00, 190);
INSERT INTO `scores` VALUES (274, '<p>UPPS memenuhi &nbsp;unsur 1, 2, dan 3 relevansi PkM dosen dan mahasiswa.</p>', 3.00, 190);
INSERT INTO `scores` VALUES (275, '<p>UPPS memenuhi &nbsp;unsur 1, dan 2 relevansi PkM dosen dan mahasiswa.</p>', 2.00, 190);
INSERT INTO `scores` VALUES (276, '<p>UPPS memenuhi &nbsp;unsur pertama namun PkM dosen dan mahasiswa tidak sesuai dengan peta jalan.</p>', 1.00, 190);
INSERT INTO `scores` VALUES (277, '<p>Analisis capaian pembelajaran lulusan memenuhi 3 aspek.&nbsp;</p>', 4.00, 192);
INSERT INTO `scores` VALUES (278, '<p>Analisis capaian pembelajaran lulusan memenuhi 2 aspek.&nbsp;</p>', 3.00, 192);
INSERT INTO `scores` VALUES (279, '<p>Analisis capaian pembelajaran lulusan memenuhi 1 aspek.&nbsp;</p>', 2.00, 192);
INSERT INTO `scores` VALUES (280, '<p>Analisis capaian pembelajaran lulusan tidak memenuhi ketiga aspek.&nbsp;</p>', 1.00, 192);
INSERT INTO `scores` VALUES (281, '<p>Tracer study yang dilakukan UPPS telah mencakup 5 aspek.</p>', 4.00, 199);
INSERT INTO `scores` VALUES (282, '<p>Tracer study yang dilakukan UPPS telah mencakup 4 aspek.</p>', 3.00, 199);
INSERT INTO `scores` VALUES (283, '<p>Tracer study yang dilakukan UPPS telah mencakup 3 aspek.</p>', 2.00, 199);
INSERT INTO `scores` VALUES (284, '<p>Tracer study yang dilakukan UPPS telah mencakup 2 aspek.</p>', 1.00, 199);
INSERT INTO `scores` VALUES (285, '<p>UPPS telah melakukan analisis capaian kinerja yang:&nbsp;<br />\r\n1) analisisnya didukung oleh data/informasi yang relevan (merujuk pada pencapaian standar mutu perguruan tinggi) dan berkualitas (andal dan memadai) yang didukung oleh keberadaan pangkalan data institusi yang terintegrasi.<br />\r\n2) konsisten dengan seluruh kriteria yang diuraikan sebelumnya,&nbsp;<br />\r\n3) analisisnya dilakukan secara komprehensif, tepat, dan tajam untuk mengidentifikasi akar masalah di &nbsp;UPPS.<br />\r\n4) hasilnya dipublikasikan kepada para pemangku kepentingan internal dan eksternal serta mudah diakses.</p>', 4.00, 206);
INSERT INTO `scores` VALUES (286, '<p>UPPS telah melakukan analisis capaian kinerja yang:&nbsp;<br />\r\n1) analisisnya didukung oleh data/informasi yang relevan (merujuk pada pencapaian standar mutu perguruan tinggi) dan berkualitas (andal dan memadai) yang didukung oleh keberadaan pangkalan data institusi yang belum terintegrasi.<br />\r\n2) konsisten dengan sebagian besar (7 s.d. 8) kriteria yang diuraikan sebelumnya,&nbsp;<br />\r\n3) analisisnya dilakukan secara komprehensif dan tepat untuk mengidentifikasi akar masalah di UPPS.<br />\r\n4) hasilnya dipublikasikan kepada para pemangku kepentingan internal serta mudah diakses.</p>', 3.00, 206);
INSERT INTO `scores` VALUES (287, '<p>UPPS telah melakukan analisis capaian kinerja yang:&nbsp;<br />\r\n1) analisisnya didukung oleh data/informasi yang relevan (merujuk pada pencapaian standar mutu perguruan tinggi) dan berkualitas (andal dan memadai).<br />\r\n2) konsisten dengan sebagian (5 s.d. 6) kriteria yang diuraikan sebelumnya,&nbsp;<br />\r\n3) analisisnya dilakukan secara komprehensif untuk mengidentifikasi akar masalah di UPPS.<br />\r\n4) hasilnya dipublikasikan kepada para pemangku kepentingan internal.</p>', 2.00, 206);
INSERT INTO `scores` VALUES (288, '<p>UPPS telah melakukan analisis capaian kinerja yang:&nbsp;<br />\r\n1) analisisnya tidak sepenuhnya didukung oleh data/informasi yang relevan (merujuk pada pencapaian standar mutu perguruan tinggi) dan berkualitas (andal dan memadai).<br />\r\n2) konsisten dengan sebagian kecil (kurang dari 5) kriteria yang diuraikan sebelumnya,&nbsp;<br />\r\n3) analisisnya dilakukan tidak secara komprehensif untuk mengidentifikasi akar masalah di UPPS.<br />\r\n4) hasilnya tidak dipublikasikan.</p>', 1.00, 206);
INSERT INTO `scores` VALUES (289, '<p>UPPS melakukan analisis SWOT atau analisis lain yang relevan, serta memenuhi aspek-aspek sebagai berikut:<br />\r\n1) melakukan identifikasi kekuatan atau faktor pendorong, kelemahan atau faktor penghambat, peluang dan ancaman yang dihadapi UPPS dilakukan secara tepat,<br />\r\n2) memiliki keterkaitan dengan hasil analisis capaian kinerja,<br />\r\n3) merumuskan strategi pengembangan UPPS yang berkesesuaian, dan<br />\r\n4) menghasilkan program-program pengembangan alternatif yang tepat.</p>', 4.00, 207);
INSERT INTO `scores` VALUES (290, '<p>UPPS melakukan analisis SWOT atau analisis lain yang relevan, serta memenuhi aspek-aspek sebagai berikut:<br />\r\n1) melakukan identifikasi kekuatan atau faktor pendorong, kelemahan atau faktor penghambat, peluang dan ancaman yang dihadapi UPPS dilakukan secara tepat,<br />\r\n2) memiliki keterkaitan dengan hasil analisis capaian kinerja, dan<br />\r\n3) merumuskan strategi pengembangan UPPS yang berkesesuaian.</p>', 3.00, 207);
INSERT INTO `scores` VALUES (291, '<p>UPPS melakukan analisis SWOT atau analisis lain yang relevan, serta memenuhi aspek-aspek sebagai berikut:<br />\r\n1) melakukan identifikasi kekuatan atau faktor pendorong, kelemahan atau faktor penghambat, peluang dan ancaman yang dihadapi UPPS dilakukan secara tepat, dan&nbsp;<br />\r\n2) memiliki keterkaitan dengan hasil analisis capaian kinerja.</p>', 2.00, 207);
INSERT INTO `scores` VALUES (292, '<p>UPPS melakukan analisis SWOT atau analisis lain yang memenuhi aspek-aspek sebagai berikut:<br />\r\n1) melakukan identifikasi kekuatan atau faktor pendorong, kelemahan atau faktor penghambat, peluang dan ancaman yang dihadapi UPPS, dan<br />\r\n2) memiliki keterkaitan dengan hasil analisis capaian kinerja, namun tidak terstruktur dan tidak sistematis.</p>', 1.00, 207);
INSERT INTO `scores` VALUES (293, '<p>UPPS menetapkan prioritas program pengembangan berdasarkan hasil analisis SWOT atau analisis lainnya yang mempertimbangkan secara komprehensif:<br />\r\n1) kapasitas UPPS,<br />\r\n2) kebutuhan UPPS dan PS di masa depan,<br />\r\n3) rencana strategis UPPS yang berlaku,<br />\r\n4) aspirasi dari pemangku kepentingan internal dan eksternal, dan<br />\r\n5) program yang menjamin keberlanjutan.</p>', 4.00, 208);
INSERT INTO `scores` VALUES (294, '<p>UPPS menetapkan prioritas program pengembangan berdasarkan hasil analisis SWOT atau analisis lainnya yang mempertimbangkan secara komprehensif:<br />\r\n1) kapasitas UPPS,<br />\r\n2) kebutuhan UPPS dan PS di masa depan,<br />\r\n3) rencana strategis UPPS yang berlaku, dan<br />\r\n4) aspirasi dari pemangku kepentingan internal.</p>', 3.00, 208);
INSERT INTO `scores` VALUES (295, '<p>UPPS menetapkan prioritas program pengembangan berdasarkan hasil analisis SWOT atau analisis lainnya yang mempertimbangkan secara komprehensif:<br />\r\n1) kapasitas UPPS,<br />\r\n2) kebutuhan UPPS dan PS di masa depan, dan<br />\r\n3) rencana strategis UPPS yang berlaku.</p>', 2.00, 208);
INSERT INTO `scores` VALUES (296, '<p>UPPS menetapkan prioritas program pengembangan namun belum mempertimbangan secara komprehensif:<br />\r\n1) kapasitas UPPS,<br />\r\n2) kebutuhan UPPS dan PS, dan<br />\r\n3) rencana strategis UPPS yang berlaku.</p>', 1.00, 208);
INSERT INTO `scores` VALUES (297, '<p>UPPS memiliki kebijakan dan upaya yang diturunkan ke dalam berbagai peraturan untuk menjamin keberlanjutan program yang mencakup:<br />\r\n1) alokasi sumber daya,&nbsp;<br />\r\n2) kemampuan melaksanakan,<br />\r\n3) rencana penjaminan mutu yang berkelanjutan, dan&nbsp;<br />\r\n4) keberadaan dukungan stakeholders eksternal.</p>', 4.00, 209);
INSERT INTO `scores` VALUES (298, '<p>UPPS memiliki kebijakan dan upaya yang diturunkan ke dalam berbagai peraturan untuk menjamin keberlanjutan program yang mencakup:<br />\r\n1) alokasi sumber daya,&nbsp;<br />\r\n2) kemampuan melaksanakan, dan<br />\r\n3) rencana penjaminan mutu yang berkelanjutan.</p>', 3.00, 209);
INSERT INTO `scores` VALUES (299, '<p>UPPS memiliki kebijakan dan upaya untuk menjamin keberlanjutan program yang mencakup:<br />\r\n1) alokasi sumber daya,&nbsp;<br />\r\n2) kemampuan melaksanakan, dan<br />\r\n3) rencana penjaminan mutu yang berkelanjutan.</p>', 2.00, 209);
INSERT INTO `scores` VALUES (300, '<p>UPPS memiliki kebijakan dan upaya namun belum cukup untuk menjamin keberlanjutan program.</p>', 1.00, 209);

-- ----------------------------
-- Table structure for targets
-- ----------------------------
DROP TABLE IF EXISTS `targets`;
CREATE TABLE `targets`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `l1_id` int NULL DEFAULT NULL,
  `prodi_id` int NULL DEFAULT NULL,
  `value` decimal(4, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of targets
-- ----------------------------
INSERT INTO `targets` VALUES (1, 1, 1, 10.50);
INSERT INTO `targets` VALUES (2, 2, 1, 8.00);
INSERT INTO `targets` VALUES (3, 3, 1, 20.00);
INSERT INTO `targets` VALUES (4, 4, 1, 30.00);
INSERT INTO `targets` VALUES (5, 5, 1, 9.00);
INSERT INTO `targets` VALUES (6, 6, 1, 40.00);
INSERT INTO `targets` VALUES (7, 7, 1, 10.00);
INSERT INTO `targets` VALUES (8, 8, 1, 50.00);
INSERT INTO `targets` VALUES (9, 9, 1, 3.00);
INSERT INTO `targets` VALUES (10, 10, 1, 10.00);
INSERT INTO `targets` VALUES (11, 11, 1, 20.00);
INSERT INTO `targets` VALUES (12, 12, 1, 15.00);
INSERT INTO `targets` VALUES (13, 1, 2, 5.00);
INSERT INTO `targets` VALUES (14, 2, 2, 17.00);
INSERT INTO `targets` VALUES (15, 3, 2, 0.00);
INSERT INTO `targets` VALUES (16, 4, 2, 0.00);
INSERT INTO `targets` VALUES (17, 5, 2, 0.00);
INSERT INTO `targets` VALUES (18, 6, 2, 0.00);
INSERT INTO `targets` VALUES (19, 7, 2, 0.00);
INSERT INTO `targets` VALUES (20, 8, 2, 0.00);
INSERT INTO `targets` VALUES (21, 9, 2, 0.00);
INSERT INTO `targets` VALUES (22, 10, 2, 0.00);
INSERT INTO `targets` VALUES (23, 11, 2, 0.00);
INSERT INTO `targets` VALUES (24, 12, 2, 0.00);
INSERT INTO `targets` VALUES (25, 1, 3, 25.00);
INSERT INTO `targets` VALUES (26, 2, 3, 10.00);
INSERT INTO `targets` VALUES (27, 3, 3, 7.00);
INSERT INTO `targets` VALUES (28, 4, 3, 14.00);
INSERT INTO `targets` VALUES (29, 5, 3, 23.00);
INSERT INTO `targets` VALUES (30, 6, 3, 14.00);
INSERT INTO `targets` VALUES (31, 7, 3, 18.00);
INSERT INTO `targets` VALUES (32, 8, 3, 27.00);
INSERT INTO `targets` VALUES (33, 9, 3, 31.00);
INSERT INTO `targets` VALUES (34, 10, 3, 40.00);
INSERT INTO `targets` VALUES (35, 11, 3, 28.00);
INSERT INTO `targets` VALUES (36, 12, 3, 14.80);
INSERT INTO `targets` VALUES (37, 1, 5, 15.00);
INSERT INTO `targets` VALUES (38, 2, 5, 30.00);
INSERT INTO `targets` VALUES (39, 3, 5, 0.00);
INSERT INTO `targets` VALUES (40, 4, 5, 0.00);
INSERT INTO `targets` VALUES (41, 5, 5, 0.00);
INSERT INTO `targets` VALUES (42, 6, 5, 0.00);
INSERT INTO `targets` VALUES (43, 7, 5, 0.00);
INSERT INTO `targets` VALUES (44, 8, 5, 0.00);
INSERT INTO `targets` VALUES (45, 9, 5, 0.00);
INSERT INTO `targets` VALUES (46, 10, 5, 0.00);
INSERT INTO `targets` VALUES (47, 11, 5, 0.00);
INSERT INTO `targets` VALUES (48, 12, 5, 0.00);
INSERT INTO `targets` VALUES (49, 1, 4, 0.00);
INSERT INTO `targets` VALUES (50, 2, 4, 0.00);
INSERT INTO `targets` VALUES (51, 3, 4, 0.00);
INSERT INTO `targets` VALUES (52, 4, 4, 0.00);
INSERT INTO `targets` VALUES (53, 5, 4, 0.00);
INSERT INTO `targets` VALUES (54, 6, 4, 0.00);
INSERT INTO `targets` VALUES (55, 7, 4, 0.00);
INSERT INTO `targets` VALUES (56, 8, 4, 0.00);
INSERT INTO `targets` VALUES (57, 9, 4, 0.00);
INSERT INTO `targets` VALUES (58, 10, 4, 0.00);
INSERT INTO `targets` VALUES (59, 11, 4, 0.00);
INSERT INTO `targets` VALUES (60, 12, 4, 0.00);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Admin','Ketua LPM','Ketua Program Studi','Dosen','UPPS','Mahasiswa','Alumni') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi_kode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `prodi_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Developer Website', 'admin@mail.com', 'Admin', '-', '-', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-05-31 03:01:05', '2022-05-31 03:01:05');
INSERT INTO `users` VALUES (12, 'Naldi', 'naldi@mail.com', 'Ketua LPM', 'RPL', 'Rekayasa Perangkat Lunak', '$2y$10$kEPT68hVhCoFau82h4Nno.XXAUEpH8RYOGhGCnGakBmlyXTF8k4y2', '2022-06-01 10:24:31', '2022-06-01 10:24:31');
INSERT INTO `users` VALUES (13, 'Ricky', 'ricky@mail.com', 'Admin', '-', '-', '$2y$10$AXPL8tLodu1B5V95b7YADOY4fRMEcOuZEtVFSgW4uwI7ugkKSN.V2', '2022-06-01 10:24:58', '2022-06-01 10:24:58');
INSERT INTO `users` VALUES (14, 'Hawa', 'hawa@mail.com', 'Ketua Program Studi', 'TI', 'Teknik Informatika', '$2y$10$trXoPNDUwDw1JHagGjWBs.om/Sgp3Vwx79jqnSykbiapQZNJaJnfa', '2022-06-01 10:45:49', '2022-06-01 10:45:49');
INSERT INTO `users` VALUES (15, 'Hendy', 'hendy@mail.com', 'Mahasiswa', 'TI', 'Teknik Informatika', '$2y$10$ZUCgJsWg8w4FdBJxkfUK6udkn.agrp0n/.5UgKgGUVnK4E61MPgPi', '2022-06-01 11:44:54', '2022-06-01 11:44:54');
INSERT INTO `users` VALUES (16, 'Edu', 'edu@mail.com', 'Alumni', 'TI', 'Teknik Informatika', '$2y$10$oAl3ZnMtoMOdNIrS8NPfYums8i7BHUayZyW74XLpv06kd0WauLBnO', '2022-06-01 11:50:58', '2022-06-01 11:50:58');
INSERT INTO `users` VALUES (17, 'Dosen 1', 'dosen@mail.com', 'Dosen', '-', '-', '$2y$10$KPuXs5.5EkVH67e0/k79KeIEZ11uk/Ip8pB5QRXmWCpUZ6RgZTCIu', '2022-06-01 12:04:01', '2022-06-01 12:04:01');
INSERT INTO `users` VALUES (18, 'UPPS', 'upps@mail.com', 'UPPS', '-', '-', '$2y$10$Vd5OgECzmPtjLQ8MC.SBvOpjkjh9sTDYxpiUURBguoBabYykK7mje', '2022-06-01 12:09:22', '2022-06-01 12:09:22');
INSERT INTO `users` VALUES (19, 'Kaprodi TKRJ', 'tkrjprodi@mail.com', 'Ketua Program Studi', 'TRKJ', 'Rekayasa Komputer Jaringan', '$2y$10$PbltJzrEj3cxZA0uZmTotO/.RZqKr.WuuYygncxyDiz4pr4NtRGdO', '2022-06-01 12:18:00', '2022-06-01 12:18:00');
INSERT INTO `users` VALUES (20, 'suryo', 'admin@gmail.com', 'Admin', NULL, NULL, '$2y$10$V1kgs/oyN3Kw/1YLPbtjoeLPKqUrhiSkoTvqV8NQvnuWm.aten0ia', '2023-03-12 11:32:39', '2023-03-12 11:32:39');

SET FOREIGN_KEY_CHECKS = 1;
