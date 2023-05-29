-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 07, 2023 at 02:30 PM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_created_by_foreign` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Apparel Shops', 1, '2023-05-07 08:50:38', '2023-05-07 08:50:38'),
(2, 'Mobile Repairing', 1, '2023-05-07 08:50:42', '2023-05-07 08:50:42'),
(3, 'Malls and Recreational Spots', 1, '2023-05-07 08:50:51', '2023-05-07 08:50:51'),
(4, 'Transport and Courier', 1, '2023-05-07 08:50:57', '2023-05-07 08:50:57'),
(5, 'Cosmetics', 1, '2023-05-07 08:51:01', '2023-05-07 08:51:01'),
(6, 'Restaurants', 1, '2023-05-07 08:51:05', '2023-05-07 08:51:05'),
(7, 'Cars', 1, '2023-05-07 08:51:09', '2023-05-07 08:51:09'),
(8, 'Electronics', 1, '2023-05-07 08:51:14', '2023-05-07 08:51:14'),
(9, 'Shoe Shops', 1, '2023-05-07 08:51:18', '2023-05-07 08:51:18'),
(10, 'Hotels', 1, '2023-05-07 08:51:23', '2023-05-07 08:51:23'),
(11, 'Movies and TV shows', 1, '2023-05-07 08:51:28', '2023-05-07 08:51:28'),
(12, 'Home Appliances', 1, '2023-05-07 08:51:35', '2023-05-07 08:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `category_suggestions`
--

DROP TABLE IF EXISTS `category_suggestions`;
CREATE TABLE IF NOT EXISTS `category_suggestions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_suggestions`
--

INSERT INTO `category_suggestions` (`id`, `name`, `description`, `reason`, `products_name`, `created_at`, `updated_at`) VALUES
(1, 'Accesories Shop', 'Accessories shops which have different womens accessories', 'Less reviews available online', 'Haroons, Clarie', '2023-05-07 09:22:15', '2023-05-07 09:22:15'),
(2, 'Movie Theatres', 'Different movie theatres', 'Less reviews available online', 'Cinepax, Cineplex', '2023-05-07 09:22:35', '2023-05-07 09:22:35'),
(3, 'Mobile Accesories', 'Different mobile accessoires', 'Less reviews available online', 'Mobile accesories companies', '2023-05-07 09:22:51', '2023-05-07 09:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_02_175042_create_tests_table', 1),
(6, '2022_11_05_072624_create_permission_tables', 1),
(11, '2023_05_04_080129_create_categories_table', 2),
(13, '2023_05_04_080230_create_prodoucts_table', 3),
(14, '2023_05_04_103153_create_reviews_table', 4),
(16, '2023_05_07_134001_create_category_suggestions_table', 5),
(17, '2023_05_07_134123_create_product_suggestions_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 1),
(9, 'App\\Models\\User', 1),
(10, 'App\\Models\\User', 1),
(11, 'App\\Models\\User', 1),
(12, 'App\\Models\\User', 1),
(13, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'update-settings', 'web', '2022-11-05 06:49:56', '2022-11-05 06:49:56'),
(2, 'view-user', 'web', '2022-11-05 06:49:56', '2022-11-05 06:49:56'),
(3, 'create-user', 'web', '2022-11-05 06:49:56', '2022-11-05 06:49:56'),
(4, 'update-user', 'web', '2022-11-05 06:49:56', '2022-11-05 06:49:56'),
(5, 'destroy-user', 'web', '2022-11-05 06:49:56', '2022-11-05 06:49:56'),
(6, 'view-role', 'web', '2022-11-05 06:49:56', '2022-11-05 06:49:56'),
(7, 'view-permission', 'web', '2022-11-05 06:49:56', '2022-11-05 06:49:56'),
(8, 'create-role', 'web', '2022-11-05 06:49:56', '2022-11-05 06:49:56'),
(9, 'create-permission', 'web', '2022-11-05 06:49:56', '2022-11-05 06:49:56'),
(10, 'update-role', 'web', '2022-11-05 06:49:56', '2022-11-05 06:49:56'),
(11, 'update-permission', 'web', '2022-11-05 06:49:56', '2022-11-05 06:49:56'),
(12, 'destroy-role', 'web', '2022-11-05 06:49:56', '2022-11-05 06:49:56'),
(13, 'destroy-permission', 'web', '2022-11-05 06:49:56', '2022-11-05 06:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prodoucts`
--

DROP TABLE IF EXISTS `prodoucts`;
CREATE TABLE IF NOT EXISTS `prodoucts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categor_id` int NOT NULL,
  `no_of_reviews` int DEFAULT NULL,
  `overall_rating` text COLLATE utf8mb4_unicode_ci,
  `picture` text COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prodoucts_created_by_foreign` (`created_by`),
  KEY `prodoucts_categor_id_foreign` (`categor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prodoucts`
--

INSERT INTO `prodoucts` (`id`, `name`, `categor_id`, `no_of_reviews`, `overall_rating`, `picture`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Limelight', 1, NULL, NULL, NULL, 1, '2023-05-07 08:52:06', '2023-05-07 08:52:06'),
(2, 'Breakout', 1, NULL, NULL, NULL, 1, '2023-05-07 08:52:13', '2023-05-07 08:52:13'),
(3, 'Khaddi', 1, NULL, NULL, NULL, 1, '2023-05-07 08:52:20', '2023-05-07 08:52:20'),
(4, 'Bonanza Satrangi', 1, NULL, NULL, NULL, 1, '2023-05-07 08:52:26', '2023-05-07 08:52:26'),
(5, 'Beechtree', 1, NULL, NULL, NULL, 1, '2023-05-07 08:52:32', '2023-05-07 08:52:32'),
(6, 'Outfitters', 1, NULL, NULL, NULL, 1, '2023-05-07 08:52:38', '2023-05-07 08:52:38'),
(7, 'Samsung', 8, NULL, NULL, NULL, 1, '2023-05-07 08:52:47', '2023-05-07 08:52:47'),
(8, 'Xiaomi', 8, NULL, NULL, NULL, 1, '2023-05-07 08:52:54', '2023-05-07 08:52:54'),
(9, 'Iphone', 8, NULL, NULL, NULL, 1, '2023-05-07 08:53:00', '2023-05-07 08:53:00'),
(10, 'One Plus', 8, NULL, NULL, NULL, 1, '2023-05-07 08:53:07', '2023-05-07 08:53:07'),
(11, 'Nikon', 8, NULL, NULL, NULL, 1, '2023-05-07 08:53:13', '2023-05-07 08:53:13'),
(12, 'Canon', 8, NULL, NULL, NULL, 1, '2023-05-07 08:53:19', '2023-05-07 08:53:19'),
(13, 'Apple', 8, NULL, NULL, NULL, 1, '2023-05-07 08:53:28', '2023-05-07 08:53:28'),
(14, 'Samsung', 8, NULL, NULL, NULL, 1, '2023-05-07 08:53:35', '2023-05-07 08:53:35'),
(15, 'Xiaomi', 8, NULL, NULL, NULL, 1, '2023-05-07 08:53:40', '2023-05-07 08:53:40'),
(16, 'Giga Mall', 3, NULL, NULL, NULL, 1, '2023-05-07 08:53:50', '2023-05-07 08:53:50'),
(17, 'Amazon Mall', 3, NULL, NULL, NULL, 1, '2023-05-07 08:53:59', '2023-05-07 08:53:59'),
(18, 'Joyland', 3, NULL, NULL, NULL, 1, '2023-05-07 08:54:08', '2023-05-07 08:54:08'),
(19, 'Jinnah Park', 3, NULL, NULL, NULL, 1, '2023-05-07 08:54:15', '2023-05-07 08:54:15'),
(20, 'Pakistan Monument', 3, NULL, NULL, NULL, 1, '2023-05-07 08:54:22', '2023-05-07 08:54:22'),
(21, 'Ayub Park', 3, NULL, NULL, NULL, 1, '2023-05-07 08:54:28', '2023-05-07 08:54:28'),
(22, 'Safa Gold Mall', 3, NULL, NULL, NULL, 1, '2023-05-07 08:54:33', '2023-05-07 08:54:33'),
(23, 'PIA', 4, NULL, NULL, NULL, 1, '2023-05-07 08:54:50', '2023-05-07 08:54:50'),
(24, 'Serene Air', 4, NULL, NULL, NULL, 1, '2023-05-07 08:54:59', '2023-05-07 08:54:59'),
(25, 'Airblue', 4, NULL, NULL, NULL, 1, '2023-05-07 08:55:05', '2023-05-07 08:55:05'),
(26, 'Skyways', 4, NULL, NULL, NULL, 1, '2023-05-07 08:55:11', '2023-05-07 08:55:11'),
(27, 'Daewoo', 4, NULL, NULL, NULL, 1, '2023-05-07 08:55:26', '2023-05-07 08:55:26'),
(28, 'Faisal Movers', 4, NULL, NULL, NULL, 1, '2023-05-07 08:55:34', '2023-05-07 08:55:41'),
(29, 'TCS', 4, NULL, NULL, NULL, 1, '2023-05-07 08:55:51', '2023-05-07 08:55:51'),
(30, 'Leopard Courier', 4, NULL, NULL, NULL, 1, '2023-05-07 08:56:02', '2023-05-07 08:56:02'),
(31, 'Borjan', 9, NULL, NULL, NULL, 1, '2023-05-07 08:56:10', '2023-05-07 08:56:20'),
(32, 'Stylo', 9, NULL, NULL, NULL, 1, '2023-05-07 08:56:26', '2023-05-07 08:56:26'),
(33, 'Nike', 9, NULL, NULL, NULL, 1, '2023-05-07 08:56:33', '2023-05-07 08:56:33'),
(34, 'Hush Puppies', 9, NULL, NULL, NULL, 1, '2023-05-07 08:56:39', '2023-05-07 08:56:39'),
(35, 'Bata', 9, NULL, NULL, NULL, 1, '2023-05-07 08:56:46', '2023-05-07 08:56:46'),
(36, 'Miss Rose Primer', 5, NULL, NULL, NULL, 1, '2023-05-07 08:56:55', '2023-05-07 08:56:55'),
(37, 'Miss Rose Foundation', 5, NULL, NULL, NULL, 1, '2023-05-07 08:57:01', '2023-05-07 08:57:01'),
(38, 'Miss Rose Lipstick', 5, NULL, NULL, NULL, 1, '2023-05-07 08:57:06', '2023-05-07 08:57:06'),
(39, 'Rivaj UK Sunblock', 5, NULL, NULL, NULL, 1, '2023-05-07 08:57:11', '2023-05-07 08:57:11'),
(40, 'Rivaj UK Facewash', 5, NULL, NULL, NULL, 1, '2023-05-07 08:57:21', '2023-05-07 08:57:21'),
(41, 'Rivaj UK Serum', 5, NULL, NULL, NULL, 1, '2023-05-07 08:57:26', '2023-05-07 08:57:26'),
(42, 'MAC Foundation', 5, NULL, NULL, NULL, 1, '2023-05-07 08:57:33', '2023-05-07 08:57:33'),
(43, 'MAC Primer', 5, NULL, NULL, NULL, 1, '2023-05-07 08:57:39', '2023-05-07 08:57:39'),
(44, 'MAC Liner', 5, NULL, NULL, NULL, 1, '2023-05-07 08:57:44', '2023-05-07 08:57:44'),
(45, 'Golden Pearl Bleach', 5, NULL, NULL, NULL, 1, '2023-05-07 08:57:51', '2023-05-07 08:57:51'),
(46, 'Golden Pearl Cleansing Milk', 5, NULL, NULL, NULL, 1, '2023-05-07 08:57:58', '2023-05-07 08:57:58'),
(47, 'Golden Pearl Body Butter', 5, NULL, NULL, NULL, 1, '2023-05-07 08:58:03', '2023-05-07 08:58:03'),
(48, 'St. Ives Scrub', 5, NULL, NULL, NULL, 1, '2023-05-07 08:58:09', '2023-05-07 08:58:09'),
(49, 'St. Ives Body Wash', 5, NULL, NULL, NULL, 1, '2023-05-07 08:58:16', '2023-05-07 08:58:16'),
(50, 'St. Ives Lip Scurb', 5, NULL, NULL, NULL, 1, '2023-05-07 08:58:26', '2023-05-07 08:58:26'),
(51, 'Jik Jik', 6, NULL, NULL, NULL, 1, '2023-05-07 08:58:36', '2023-05-07 08:58:36'),
(52, 'Bar B.Q. Tonight', 6, NULL, NULL, NULL, 1, '2023-05-07 08:58:48', '2023-05-07 08:58:48'),
(53, 'KFC', 6, NULL, NULL, NULL, 1, '2023-05-07 08:58:54', '2023-05-07 08:58:54'),
(54, 'The Monal', 6, NULL, NULL, NULL, 1, '2023-05-07 08:58:59', '2023-05-07 08:58:59'),
(55, 'Tuscany Courtyard', 6, NULL, NULL, NULL, 1, '2023-05-07 08:59:06', '2023-05-07 08:59:06'),
(56, 'Cheezious', 6, NULL, NULL, NULL, 1, '2023-05-07 08:59:11', '2023-05-07 08:59:11'),
(57, 'Chaaye Khana', 6, NULL, NULL, NULL, 1, '2023-05-07 08:59:17', '2023-05-07 08:59:17'),
(58, 'Asian Wok', 6, NULL, NULL, NULL, 1, '2023-05-07 08:59:24', '2023-05-07 08:59:24'),
(59, 'Honda City', 7, NULL, NULL, NULL, 1, '2023-05-07 08:59:31', '2023-05-07 08:59:31'),
(60, 'Honda Civic', 7, NULL, NULL, NULL, 1, '2023-05-07 08:59:38', '2023-05-07 08:59:38'),
(61, 'Toyota Yaris', 7, NULL, NULL, NULL, 1, '2023-05-07 08:59:43', '2023-05-07 08:59:43'),
(62, 'Toyota Corolla', 7, NULL, NULL, NULL, 1, '2023-05-07 08:59:49', '2023-05-07 08:59:49'),
(63, 'Suzuki Alto', 7, NULL, NULL, NULL, 1, '2023-05-07 08:59:54', '2023-05-07 08:59:54'),
(64, 'Suzuki Cultus', 7, NULL, NULL, NULL, 1, '2023-05-07 09:00:00', '2023-05-07 09:00:00'),
(65, 'Kia Sportage', 7, NULL, NULL, NULL, 1, '2023-05-07 09:00:06', '2023-05-07 09:00:06'),
(66, 'Kia Picanto', 7, NULL, NULL, NULL, 1, '2023-05-07 09:00:12', '2023-05-07 09:00:12'),
(67, 'Nissan Juke', 7, NULL, NULL, NULL, 1, '2023-05-07 09:00:18', '2023-05-07 09:00:18'),
(68, 'Nissan Dayz', 7, NULL, NULL, NULL, 1, '2023-05-07 09:00:24', '2023-05-07 09:00:24'),
(69, 'Pearl Continental', 10, NULL, NULL, NULL, 1, '2023-05-07 09:00:35', '2023-05-07 09:00:35'),
(70, 'Hotel Sand Hills', 10, NULL, NULL, NULL, 1, '2023-05-07 09:00:45', '2023-05-07 09:00:45'),
(71, 'Hotel Saeed Village', 10, NULL, NULL, NULL, 1, '2023-05-07 09:00:51', '2023-05-07 09:00:51'),
(72, 'Shelton Hotel', 10, NULL, NULL, NULL, 1, '2023-05-07 09:01:19', '2023-05-07 09:01:19'),
(73, 'Oriole Guest House', 10, NULL, NULL, NULL, 1, '2023-05-07 09:01:27', '2023-05-07 09:01:27'),
(74, 'Hotel The Oriel', 10, NULL, NULL, NULL, 1, '2023-05-07 09:01:33', '2023-05-07 09:01:33'),
(75, 'Marriott Hotel', 10, NULL, NULL, NULL, 1, '2023-05-07 09:01:40', '2023-05-07 09:01:40'),
(76, 'Haier Split AC', 12, NULL, NULL, NULL, 1, '2023-05-07 09:01:49', '2023-05-07 09:02:27'),
(77, 'Haier Washing Machine', 12, NULL, NULL, NULL, 1, '2023-05-07 09:01:57', '2023-05-07 09:02:20'),
(78, 'Dawlance Food Processor', 12, NULL, NULL, NULL, 1, '2023-05-07 09:02:13', '2023-05-07 09:02:13'),
(79, 'Dawlance Sandwhich Maker', 12, NULL, NULL, NULL, 1, '2023-05-07 09:02:34', '2023-05-07 09:02:34'),
(80, 'Eco Star Split AC', 12, NULL, NULL, NULL, 1, '2023-05-07 09:02:42', '2023-05-07 09:02:42'),
(81, 'Eco Star Water Dispenser', 12, NULL, NULL, NULL, 1, '2023-05-07 09:02:49', '2023-05-07 09:02:49'),
(82, 'Gree Split AC', 12, NULL, NULL, NULL, 1, '2023-05-07 09:02:57', '2023-05-07 09:02:57'),
(83, 'Gree Refrigerator', 12, NULL, NULL, NULL, 1, '2023-05-07 09:03:03', '2023-05-07 09:03:03'),
(84, 'Orient Split AC', 12, NULL, NULL, NULL, 1, '2023-05-07 09:03:10', '2023-05-07 09:03:10'),
(85, 'Orient Refrigerator', 12, NULL, NULL, NULL, 1, '2023-05-07 09:03:15', '2023-05-07 09:03:15'),
(86, 'Online Mobile Repairing & Software', 2, NULL, NULL, NULL, 1, '2023-05-07 09:03:26', '2023-05-07 09:03:26'),
(87, 'Javaid Communications Mobile', 2, NULL, NULL, NULL, 1, '2023-05-07 09:03:33', '2023-05-07 09:03:33'),
(88, 'Mobile Solution', 2, NULL, NULL, NULL, 1, '2023-05-07 09:03:42', '2023-05-07 09:03:42'),
(89, 'Matrix Mobile Repairing', 2, NULL, NULL, NULL, 1, '2023-05-07 09:03:49', '2023-05-07 09:03:49'),
(90, 'Ms Communication', 2, NULL, NULL, NULL, 1, '2023-05-07 09:03:56', '2023-05-07 09:03:56'),
(91, 'Hasna Mana Hai', 11, NULL, NULL, NULL, 1, '2023-05-07 09:04:06', '2023-05-07 09:04:06'),
(92, 'Suno Chanda', 11, NULL, NULL, NULL, 1, '2023-05-07 09:04:11', '2023-05-07 09:04:11'),
(93, 'Teefa in Trouble', 11, NULL, NULL, NULL, 1, '2023-05-07 09:04:18', '2023-05-07 09:04:18'),
(94, 'Evil Dead Rise', 11, NULL, NULL, NULL, 1, '2023-05-07 09:04:25', '2023-05-07 09:04:25'),
(95, 'The Exortist', 11, NULL, NULL, NULL, 1, '2023-05-07 09:04:32', '2023-05-07 09:04:32'),
(96, 'Knock Knock', 11, NULL, NULL, NULL, 1, '2023-05-07 09:04:39', '2023-05-07 09:04:39'),
(97, 'The Legend of Maula Jutt', 11, NULL, NULL, NULL, 1, '2023-05-07 09:04:47', '2023-05-07 09:04:47'),
(98, 'Waar', 11, NULL, NULL, NULL, 1, '2023-05-07 09:04:54', '2023-05-07 09:04:54'),
(99, 'Ghosted', 11, NULL, NULL, NULL, 1, '2023-05-07 09:05:02', '2023-05-07 09:05:02'),
(100, 'Highlife', 11, NULL, NULL, NULL, 1, '2023-05-07 09:05:09', '2023-05-07 09:05:09'),
(101, 'Arrival', 11, NULL, NULL, NULL, 1, '2023-05-07 09:05:18', '2023-05-07 09:05:18'),
(102, 'Under the Skin', 11, NULL, NULL, NULL, 1, '2023-05-07 09:05:25', '2023-05-07 09:05:25'),
(103, 'Pyar ke Sadkey', 11, NULL, NULL, NULL, 1, '2023-05-07 09:05:35', '2023-05-07 09:05:35'),
(104, 'Punjab Nahi Jaungi', 11, NULL, NULL, NULL, 1, '2023-05-07 09:05:41', '2023-05-07 09:05:41'),
(105, 'Humsafar', 11, NULL, NULL, NULL, 1, '2023-05-07 09:05:48', '2023-05-07 09:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_suggestions`
--

DROP TABLE IF EXISTS `product_suggestions`;
CREATE TABLE IF NOT EXISTS `product_suggestions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_suggestions`
--

INSERT INTO `product_suggestions` (`id`, `name`, `description`, `reason`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Ethinic', 'Designer wear brand', 'Less online review available', 'Apparel Shops', '2023-05-07 09:23:10', '2023-05-07 09:23:10'),
(2, 'Lok Virsa Museum', 'Recreational spot in Islamabad', 'Less online review available', 'Malls and Recreational Spots', '2023-05-07 09:23:29', '2023-05-07 09:23:29'),
(3, 'Shaheen', 'airline service in Pakistan', 'Less reviews available online', 'Transport and Courier', '2023-05-07 09:23:45', '2023-05-07 09:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_user_id_foreign` (`user_id`),
  KEY `reviews_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `text`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 24, 1, 'Only ladies stuff clothes purse jewelry and sandals are there. One of the famous and good brand here', '4', 1, '2023-05-07 09:11:42', '2023-05-07 09:11:42'),
(2, 2, 1, 'Pathetic service, once you place an order you just keep chasing them for month and they even don’t bother to reply instead they will delete your messages on social media if you ask for the delivery!', '1', 2, '2023-05-07 09:12:04', '2023-05-07 09:12:04'),
(3, 3, 1, 'good place for shopping . their accessories are good', '5', 1, '2023-05-07 09:12:18', '2023-05-07 09:12:18'),
(4, 4, 1, 'Always my first preference', '5', 1, '2023-05-07 09:12:29', '2023-05-07 09:12:29'),
(5, 5, 2, 'The prices are fine but the dresses are not much appealing', '5', 2, '2023-05-07 09:12:44', '2023-05-07 09:12:44'),
(6, 6, 2, 'Mind blowing like always. Branded cloths that are accessible for anyone', '5', 1, '2023-05-07 09:12:56', '2023-05-07 09:12:56'),
(7, 7, 2, 'Expensive and not good clothes', '3', 1, '2023-05-07 09:13:08', '2023-05-07 09:13:08'),
(8, 8, 2, 'Crappiest clothline! Color of t-shirts and pnt faded away on 2nd/3rd wash', '1', 1, '2023-05-07 09:14:04', '2023-05-07 09:14:04'),
(9, 9, 3, 'Very economical prices.. Good prints.. Good quality.. I give 5* ❤️', '5', 2, '2023-05-07 09:14:22', '2023-05-07 09:14:22'),
(10, 10, 3, 'A Good brand what i like about khaadi is the sales and new arrival section both have great clors and great offers', '5', 1, '2023-05-07 09:14:49', '2023-05-07 09:14:49'),
(11, 11, 3, 'Good designs are available, price are bit high', '4', 1, '2023-05-07 09:15:07', '2023-05-07 09:15:07'),
(12, 12, 3, 'They just grabing money for there brand name making people fool.stuf and designs are out dated and made for brand conscious class.just wastage of money...', '1', 1, '2023-05-07 09:15:19', '2023-05-07 09:15:19'),
(13, 13, 4, 'Best off all brands and affordable for middle class also. All other brands incresed prices so high but they are having items like women unstitched even starting from 2k', '5', 1, '2023-05-07 09:15:33', '2023-05-07 09:15:33'),
(14, 14, 4, 'One of the best clothing brand in Pakistan. No one can compete with the quality and grace of their fabric', '5', 1, '2023-05-07 09:15:51', '2023-05-07 09:15:51'),
(15, 15, 4, 'Quality fabric and a lot of variety stuff.. Satisfied ❤️', '4', 2, '2023-05-07 09:16:12', '2023-05-07 09:16:12'),
(16, 16, 4, 'Mens Stitched clothing is good but lot of room to improve stitching', '4', 1, '2023-05-07 09:16:23', '2023-05-07 09:16:23'),
(17, 17, 5, 'Stylish and elegant design educated and humble staff reasonable price best brand for shopping in pakistan branches available almost all over in pakistan awesome designs', '5', 1, '2023-05-07 09:16:36', '2023-05-07 09:16:36'),
(18, 18, 5, 'Nice sale!', '5', 1, '2023-05-07 09:16:54', '2023-05-07 09:16:54'),
(19, 19, 5, 'Low quality fabric specially khaddar stuff is very bad no one buy from beechtree', '4', 2, '2023-05-07 09:17:09', '2023-05-07 09:17:09'),
(20, 2, 6, 'This place is really amazing for shopping as it can be for juniors, womens and mens and this was the time of sale upto 40% and 50% off. I would recommend this shop to anyone because the quality is great and prices are reasonable. I had a good time shoping here!', '5', 1, '2023-05-07 09:17:25', '2023-05-07 09:17:25'),
(21, 21, 6, 'It was good experience shopping there. Friendly staff. But sale stuff was not as much as it was at other outlets.', '4', 1, '2023-05-07 09:17:41', '2023-05-07 09:17:41'),
(22, 22, 6, 'i like this place. They have a lot of stock and options.', '3', 2, '2023-05-07 09:17:57', '2023-05-07 09:17:57'),
(23, 23, 6, 'Definitely a huge space but I think they need to place things properly. You cant find T-shirts in one row. You will find 1 T-shirt stand here next is far from your reach. Things are mixed up, you have to do many struggles.', '4', 1, '2023-05-07 09:18:18', '2023-05-07 09:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'web', '2022-11-05 06:49:56', '2022-11-05 06:49:56'),
(2, 'user', 'web', '2022-11-05 06:49:56', '2022-11-05 06:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `picture` text COLLATE utf8mb4_unicode_ci,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `status`, `picture`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@email.com', NULL, 1, NULL, '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 08:48:59', '2023-05-07 08:48:59'),
(2, 'Kashif Nawaz', 'casuripu@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:08:22', '2023-05-07 09:08:22'),
(3, 'Sadia Dabeer Rasul', 'cyzycizu@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:08:41', '2023-05-07 09:08:41'),
(4, 'asiya anjum', 'huvame@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:08:48', '2023-05-07 09:08:48'),
(5, 'Reemal Arshad Butt', 'zyqeqelive@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:08:53', '2023-05-07 09:08:53'),
(6, 'Syeda Urooj Fatima', 'zagy@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:09:00', '2023-05-07 09:09:00'),
(7, 'Raja Saad Shafiq', 'gito@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:09:07', '2023-05-07 09:09:07'),
(8, 'Ghulam Murtaza', 'myzip@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:09:15', '2023-05-07 09:09:15'),
(9, 'Haris H.', 'veky@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:09:22', '2023-05-07 09:09:22'),
(10, 'Sarah Waqas', 'fewy@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:09:28', '2023-05-07 09:09:28'),
(11, 'Fahad Masood', 'tuzog@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:09:33', '2023-05-07 09:09:33'),
(12, 'Imran Ahmad', 'sosi@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:09:38', '2023-05-07 09:09:38'),
(13, 'bakhtiar ahmed', 'hilis@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:09:43', '2023-05-07 09:09:43'),
(14, 'Misbah Imran', 'tevafycus@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:09:48', '2023-05-07 09:09:48'),
(15, 'Arslan Malik', 'weho@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:09:53', '2023-05-07 09:09:53'),
(16, 'Arslan Akhtar', 'cobopyc@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:09:58', '2023-05-07 09:09:58'),
(17, 'Aamer Saeed', 'dumypepu@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:10:06', '2023-05-07 09:10:06'),
(18, 'Muhammad Yasir saeed', 'zabyvojalu@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:10:13', '2023-05-07 09:10:13'),
(19, 'Fahim Khizar', 'bihu@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:10:18', '2023-05-07 09:10:18'),
(20, 'Riz', 'vypemofero@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:10:24', '2023-05-07 09:10:24'),
(21, 'Huzaifa Aamir', 'woxuhocaz@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:10:29', '2023-05-07 09:10:29'),
(22, 'Farzana Deedar', 'peryvokege@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:10:34', '2023-05-07 09:10:34'),
(23, 'Abdullah Rehman Butt', 'bijybame@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:10:58', '2023-05-07 09:10:58'),
(24, 'Rabbia Arshad', 'qehy@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:11:04', '2023-05-07 09:11:04'),
(25, 'Belal Tariq', 'talejije@mailinator.com', NULL, 1, '', '$2y$10$6WHfrdcLuB8Ke0ePKSd5c.D1ifwpqFC4fCGzDwZO6jku6JAnYxWBS', NULL, '2023-05-07 09:11:09', '2023-05-07 09:11:09');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
