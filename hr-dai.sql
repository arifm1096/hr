/*
 Navicat Premium Data Transfer

 Source Server         : SERVER 192.168.71.6
 Source Server Type    : MySQL
 Source Server Version : 100339
 Source Host           : 192.168.71.6:3306
 Source Schema         : hr-dai

 Target Server Type    : MySQL
 Target Server Version : 100339
 File Encoding         : 65001

 Date: 13/03/2024 09:28:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agamas
-- ----------------------------
DROP TABLE IF EXISTS `agamas`;
CREATE TABLE `agamas`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `agama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agamas
-- ----------------------------
INSERT INTO `agamas` VALUES (1, 'Islam', NULL, NULL);
INSERT INTO `agamas` VALUES (2, 'Kristen', NULL, NULL);
INSERT INTO `agamas` VALUES (3, 'Khatolik', NULL, NULL);
INSERT INTO `agamas` VALUES (4, 'Hindu', NULL, NULL);
INSERT INTO `agamas` VALUES (5, 'Budha', NULL, NULL);

-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banks
-- ----------------------------
INSERT INTO `banks` VALUES (1, 'BRI', NULL, NULL);
INSERT INTO `banks` VALUES (2, 'Mandiri', NULL, NULL);
INSERT INTO `banks` VALUES (3, 'BCA', NULL, NULL);

-- ----------------------------
-- Table structure for departemens
-- ----------------------------
DROP TABLE IF EXISTS `departemens`;
CREATE TABLE `departemens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nm_departemen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departemens
-- ----------------------------
INSERT INTO `departemens` VALUES (1, 'HRD', NULL, NULL);
INSERT INTO `departemens` VALUES (2, 'Marketing', NULL, NULL);
INSERT INTO `departemens` VALUES (3, 'Operasional', NULL, NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for lokasis
-- ----------------------------
DROP TABLE IF EXISTS `lokasis`;
CREATE TABLE `lokasis`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lokasis
-- ----------------------------
INSERT INTO `lokasis` VALUES (1, 'Jakarta', '', NULL, NULL);
INSERT INTO `lokasis` VALUES (2, 'Bandung', '', NULL, NULL);
INSERT INTO `lokasis` VALUES (3, 'Surabaya', '', NULL, NULL);
INSERT INTO `lokasis` VALUES (4, 'Yogyakarta', '', NULL, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2021_08_19_013612_create_lokasis_table', 2);
INSERT INTO `migrations` VALUES (5, '2021_08_19_013733_create_posisis_table', 3);
INSERT INTO `migrations` VALUES (6, '2021_08_19_013856_create_agamas_table', 4);
INSERT INTO `migrations` VALUES (7, '2021_08_19_014016_create_banks_table', 5);
INSERT INTO `migrations` VALUES (8, '2021_08_19_014132_create_departemens_table', 6);
INSERT INTO `migrations` VALUES (9, '2021_08_19_163107_create_pegawais_table', 7);
INSERT INTO `migrations` VALUES (10, '2021_08_20_023722_create_status_pegawais_table', 8);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for pegawais
-- ----------------------------
DROP TABLE IF EXISTS `pegawais`;
CREATE TABLE `pegawais`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_lengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_panggilan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama_id` int(11) NOT NULL,
  `lokasi_id` int(11) NOT NULL,
  `posisi_id` int(11) NOT NULL,
  `join_date` date NOT NULL,
  `end_date` date NOT NULL,
  `statuspegawai_id` int(11) NOT NULL,
  `departemen_id` int(11) NULL DEFAULT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengalaman_kerja` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pegawais
-- ----------------------------
INSERT INTO `pegawais` VALUES (1, 'P01', 'Agung Purnomo', 'Agung', 0, 1, 1, '0000-00-00', '0000-00-00', 2, 1, 'Boyolali', '1992-05-27', 'Laki-laki', 'Boyolali', '085743467242', 'Visione System', 'foto', NULL, NULL);

-- ----------------------------
-- Table structure for posisis
-- ----------------------------
DROP TABLE IF EXISTS `posisis`;
CREATE TABLE `posisis`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `posisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posisis
-- ----------------------------
INSERT INTO `posisis` VALUES (1, 'Staff', '', NULL, NULL);
INSERT INTO `posisis` VALUES (2, 'Koordinator', '', NULL, NULL);
INSERT INTO `posisis` VALUES (3, 'SPV', '', NULL, NULL);
INSERT INTO `posisis` VALUES (4, 'Manager', '', NULL, NULL);

-- ----------------------------
-- Table structure for status_pegawais
-- ----------------------------
DROP TABLE IF EXISTS `status_pegawais`;
CREATE TABLE `status_pegawais`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status_pegawai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status_pegawais
-- ----------------------------
INSERT INTO `status_pegawais` VALUES (1, 'Kontrak', NULL, NULL);
INSERT INTO `status_pegawais` VALUES (2, 'Tetap', NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 'Ayane', 'ayane@gmail.com', NULL, '$2y$10$bvKiv.j/wD7DTmnfhDzRRuQql46/vjXpgzYk7f3n7ZSCOIYYtkr2S', NULL, 'admin', NULL, NULL);
INSERT INTO `users` VALUES (3, 'Chika Fujiwara', 'chika@gmail.com', NULL, '$2y$10$1x2jRWdvpnBRfBMYyaFhb.FUAD1RtWQQJUzAfhc0/zg6mNMg.8Pta', NULL, 'user', NULL, NULL);
INSERT INTO `users` VALUES (4, 'Kotone', 'kotone@gmail.com', NULL, '$2y$10$IJakchZ/Gemj35n1ihBSIenzLxKIBq2o.YvkcXoceNPnZa3xC/umi', NULL, 'user', NULL, NULL);
INSERT INTO `users` VALUES (5, 'Humberto Beatty', 'breanna01@example.net', '2021-08-18 23:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k5HV573vy9', 'user', '2021-08-18 23:51:31', '2021-08-18 23:51:31');
INSERT INTO `users` VALUES (6, 'Mrs. Adah Fisher', 'clementine56@example.com', '2021-08-18 23:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B086swuq5Q', 'user', '2021-08-18 23:51:31', '2021-08-18 23:51:31');
INSERT INTO `users` VALUES (7, 'Carli Jones', 'white.joseph@example.net', '2021-08-18 23:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CdUsGWTD90', 'user', '2021-08-18 23:51:31', '2021-08-18 23:51:31');
INSERT INTO `users` VALUES (8, 'Gabrielle Strosin', 'trenton.yost@example.com', '2021-08-18 23:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fcHcpoXOgC', 'user', '2021-08-18 23:51:31', '2021-08-18 23:51:31');
INSERT INTO `users` VALUES (9, 'Augustine Medhurst', 'ustroman@example.org', '2021-08-18 23:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sFgA8zEKWM', 'user', '2021-08-18 23:51:31', '2021-08-18 23:51:31');
INSERT INTO `users` VALUES (10, 'Dr. Brando O\'Kon', 'tomas11@example.org', '2021-08-18 23:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xVROxcm0D0', 'user', '2021-08-18 23:51:31', '2021-08-18 23:51:31');
INSERT INTO `users` VALUES (11, 'Elias Trantow', 'simonis.talon@example.com', '2021-08-18 23:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BjyXPFmyBg', 'user', '2021-08-18 23:51:31', '2021-08-18 23:51:31');
INSERT INTO `users` VALUES (12, 'Leland Bergstrom', 'marilou.wehner@example.net', '2021-08-18 23:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '76IouOmqnH', 'user', '2021-08-18 23:51:31', '2021-08-18 23:51:31');
INSERT INTO `users` VALUES (13, 'Milan Treutel', 'raynor.ruth@example.net', '2021-08-18 23:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TN7mqdaICg', 'user', '2021-08-18 23:51:31', '2021-08-18 23:51:31');
INSERT INTO `users` VALUES (14, 'Dr. Molly Hayes V', 'enader@example.org', '2021-08-18 23:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sUF67vtA9T', 'user', '2021-08-18 23:51:31', '2021-08-18 23:51:31');
INSERT INTO `users` VALUES (15, 'Agung Purnomo', 'agung.laravel@gmail.com', '0000-00-00 00:00:00', '$2y$10$7s1iqnRSzf4w.FfgzLLxt.4lW0rmFPMYfnJMaiTS0rjK7mENfpSRu', 'mAEydrdhEuqTHoR4qVjzux3avDISiBIbq2uaImRZS6z4KtD26qzcwF0RBZYp', 'admin', '2021-06-05 18:03:05', '2021-07-17 16:21:25');
INSERT INTO `users` VALUES (16, 'mustaqim', 'mustaqim@gmail.com', NULL, '$2y$10$eYI.bJ4La1dKHQEzPuNbleAHd1cndepPTMWYsIged/p5GiLUNmTfW', NULL, 'admin', '2021-08-26 02:19:48', '2021-08-26 02:19:48');
INSERT INTO `users` VALUES (17, 'ADMIN', 'admin@admin.com', NULL, '$2y$10$pNlb7IlDpFuNXRHmFcSRteW968YmPlI5NXt2eSUFfgDcxrVa1SuAS', NULL, 'admin', '2023-12-14 07:30:11', '2023-12-14 07:30:11');

SET FOREIGN_KEY_CHECKS = 1;
