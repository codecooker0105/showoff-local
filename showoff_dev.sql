-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2021 at 06:35 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `showoff_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(220) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(220) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `ads_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_width` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_height` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` text COLLATE utf8mb4_unicode_ci COMMENT '1=active; 2=blocked, 3=Expired, 4=Pending',
  `merchant_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `company_name`, `company_logo`, `start_time`, `end_time`, `ads_banner`, `banner_width`, `banner_height`, `link`, `location`, `description`, `status`, `merchant_id`, `created_at`, `updated_at`) VALUES
(9, NULL, 'Google', 'assets/banner/9/1587563693download.jpg', '2020-04-20 22:05:00', '2020-04-25 03:15:00', 'assets/banner/9/1587627198images.jpg', '300', '168', 'https://www.google.com/', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '3', NULL, '2020-04-20 16:06:20', '2020-04-24 21:15:00'),
(10, NULL, 'Ad', 'assets/banner/10/1587563610images.jpg', '2020-04-20 09:45:00', '2020-04-25 13:35:00', 'assets/banner/10/1587627166updated-a-visual-history-of-google-ad-labeling-in-search-results.jpg', '1920', '1080', NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.', '3', NULL, '2020-04-20 16:07:28', '2020-04-25 07:35:00'),
(11, NULL, 'Facebook', 'assets/banner/11/1587627187download.jpg', '2020-04-20 17:05:00', '2020-04-25 15:55:00', 'assets/banner/11/1587627187download.jpg', '289', '174', NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '3', NULL, '2020-04-20 16:08:13', '2020-04-25 09:55:01'),
(12, NULL, 'Facebook', 'assets/banner/12/1587553482download.jpg', '2020-04-22 16:00:00', '2020-04-24 01:05:00', 'assets/banner/12/1587627137images.jpg', '300', '168', 'http://google.com/', NULL, NULL, '3', NULL, '2020-04-22 10:56:56', '2020-04-23 19:05:01'),
(13, 'Corona Virus 23', 'Corona Virus', 'assets/banner/13/15875621682198067_novel coronavirus covid 19.jpg', '2020-04-22 13:05:00', '2020-04-22 10:00:00', 'assets/banner/13/1587562168oie_19955LtYg0XP3.jpg', NULL, NULL, 'https://corona.com/', NULL, NULL, '3', NULL, '2020-04-22 13:29:28', '2020-04-22 13:29:28'),
(14, NULL, 'Corona Virus', 'assets/banner/14/15875623452198067_novel coronavirus covid 19.jpg', NULL, NULL, 'assets/banner/14/1587627092images.jpg', '300', '168', 'https://corona.com/', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1', NULL, '2020-04-22 13:32:25', '2020-04-23 07:31:32'),
(15, NULL, 'Facebook', 'assets/banner/15/1588410904images.jpg', '2020-05-02 15:20:00', '2020-05-02 15:25:00', 'assets/banner/15/1588410904download.jpg', NULL, NULL, 'https://showofff.xyz/', NULL, 'This is for testing', '3', NULL, '2020-05-02 09:15:04', '2020-05-02 09:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE `app_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_managements`
--

CREATE TABLE `banner_managements` (
  `id` int(10) UNSIGNED NOT NULL,
  `adv_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocked_users`
--

CREATE TABLE `blocked_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `block_by_id` int(10) UNSIGNED NOT NULL,
  `blocked_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocked_users`
--

INSERT INTO `blocked_users` (`id`, `block_by_id`, `blocked_id`, `created_at`, `updated_at`) VALUES
(8, 261, 255, '2020-04-19 18:22:12', '2020-04-19 18:22:12'),
(9, 259, 262, '2020-04-19 18:22:54', '2020-04-19 18:22:54'),
(10, 261, 265, '2020-04-19 18:30:12', '2020-04-19 18:30:12'),
(14, 255, 256, '2020-04-20 17:58:09', '2020-04-20 17:58:09'),
(15, 274, 254, '2021-07-05 14:30:06', '2021-07-05 14:30:06');

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id_1` int(10) UNSIGNED NOT NULL,
  `user_id_2` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `channel_name`, `user_id_1`, `user_id_2`, `created_at`, `updated_at`) VALUES
(3, 'Channe225226', 261, 225, '2020-04-13 15:55:39', '2020-04-13 15:55:39'),
(4, 'channel_200257', 257, 200, '2020-04-13 15:56:52', '2020-04-13 15:56:52'),
(5, 'channel_12225', 225, 12, '2020-04-13 16:56:24', '2020-04-13 16:56:24'),
(6, 'channel_225226', 225, 225, '2020-04-13 17:04:43', '2020-04-13 17:04:43'),
(7, 'channel_225225', 225, 225, '2020-04-13 18:19:47', '2020-04-13 18:19:47'),
(8, 'channel_100257', 257, 100, '2020-04-14 06:48:34', '2020-04-14 06:48:34'),
(9, 'channel_257262', 262, 257, '2020-04-14 10:09:25', '2020-04-14 10:09:25'),
(10, 'channel_225263', 263, 225, '2020-04-14 13:18:21', '2020-04-14 13:18:21'),
(11, 'channel_225266', 266, 225, '2020-04-14 15:55:36', '2020-04-14 15:55:36'),
(12, 'channel_225257', 257, 225, '2020-04-14 17:31:29', '2020-04-14 17:31:29'),
(13, 'channel_255260', 255, 260, '2020-04-14 19:22:24', '2020-04-14 19:22:24'),
(14, 'channel_255267', 255, 267, '2020-04-14 19:31:24', '2020-04-14 19:31:24'),
(15, 'channel_258267', 258, 267, '2020-04-14 19:33:23', '2020-04-14 19:33:23'),
(16, 'channel_259267', 259, 267, '2020-04-14 20:23:37', '2020-04-14 20:23:37'),
(17, 'channel_255259', 259, 255, '2020-04-15 15:51:15', '2020-04-15 15:51:15'),
(18, 'channel_257259', 259, 257, '2020-04-15 16:00:25', '2020-04-15 16:00:25'),
(19, 'channel_268268', 268, 268, '2020-04-16 09:59:50', '2020-04-16 09:59:50'),
(20, 'Channe261266', 261, 266, '2020-04-20 09:43:51', '2020-04-20 09:43:51'),
(21, 'Channe225261', 261, 225, '2020-04-20 11:36:23', '2020-04-20 11:36:23'),
(22, 'Channe257261', 261, 257, '2020-04-20 12:07:57', '2020-04-20 12:07:57'),
(23, 'Channe261262', 261, 262, '2020-04-20 12:44:20', '2020-04-20 12:44:20'),
(24, 'channel_225267', 225, 267, '2020-04-22 15:16:10', '2020-04-22 15:16:10'),
(25, 'channel_255272', 272, 255, '2020-04-26 08:31:44', '2020-04-26 08:31:44'),
(26, 'channel_258265', 265, 258, '2020-05-02 23:31:33', '2020-05-02 23:31:33'),
(27, 'channel_255265', 265, 255, '2020-05-03 00:27:19', '2020-05-03 00:27:19'),
(28, 'channel_255273', 273, 255, '2021-07-04 19:20:22', '2021-07-04 19:20:22'),
(29, 'channel_273274', 274, 273, '2021-07-06 13:36:43', '2021-07-06 13:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `chattings`
--

CREATE TABLE `chattings` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_url` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `read_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1="Already Read", 0="Not Read"',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chattings`
--

INSERT INTO `chattings` (`id`, `channel_id`, `sender_id`, `receiver_id`, `message`, `image`, `video`, `thumbnail_url`, `attachment`, `type`, `read_status`, `created_at`, `updated_at`) VALUES
(6, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 15:55:39', '2020-04-13 15:55:39'),
(7, 4, 257, 0, 'adfxf', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 15:56:52', '2020-04-13 15:56:52'),
(8, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 15:58:05', '2020-04-13 15:58:05'),
(9, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 15:58:16', '2020-04-13 15:58:16'),
(10, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 15:58:36', '2020-04-13 15:58:36'),
(11, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 15:59:12', '2020-04-13 15:59:12'),
(12, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 15:59:30', '2020-04-13 15:59:30'),
(13, 4, 257, 0, 'dfdf', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 15:59:33', '2020-04-13 15:59:33'),
(14, 4, 257, 0, 'dfdf', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 16:02:20', '2020-04-13 16:02:20'),
(15, 4, 257, 0, 'dfdf', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 16:02:44', '2020-04-13 16:02:44'),
(16, 4, 257, 0, 'dfdf', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 16:02:45', '2020-04-13 16:02:45'),
(17, 5, 225, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 16:56:24', '2020-04-13 16:56:24'),
(18, 5, 225, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 17:04:17', '2020-04-13 17:04:17'),
(19, 6, 225, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 17:04:43', '2020-04-13 17:04:43'),
(20, 6, 225, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 17:04:54', '2020-04-13 17:04:54'),
(21, 6, 225, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 17:05:17', '2020-04-13 17:05:17'),
(22, 6, 225, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 17:12:08', '2020-04-13 17:12:08'),
(23, 6, 225, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 17:12:27', '2020-04-13 17:12:27'),
(24, 7, 225, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 18:19:47', '2020-04-13 18:19:47'),
(25, 7, 225, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 18:34:43', '2020-04-13 18:34:43'),
(26, 7, 225, 0, 'hellow', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 18:35:01', '2020-04-13 18:35:01'),
(27, 7, 225, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 18:37:03', '2020-04-13 18:37:03'),
(28, 7, 225, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 18:56:00', '2020-04-13 18:56:00'),
(29, 7, 225, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 18:57:56', '2020-04-13 18:57:56'),
(30, 7, 225, 0, 'hello', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 18:58:05', '2020-04-13 18:58:05'),
(31, 7, 225, 0, 'im all right', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 18:58:18', '2020-04-13 18:58:18'),
(32, 7, 225, 0, 'testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 18:58:29', '2020-04-13 18:58:29'),
(33, 7, 225, 0, 'is my server getting the message?', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 18:58:50', '2020-04-13 18:58:50'),
(34, 7, 225, 0, '😂🙄😍😋', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 18:59:09', '2020-04-13 18:59:09'),
(35, 7, 225, 0, 'aaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:06:48', '2020-04-13 19:06:48'),
(36, 7, 225, 0, 'aaaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:07:08', '2020-04-13 19:07:08'),
(37, 7, 225, 0, 'aaaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:07:09', '2020-04-13 19:07:09'),
(38, 7, 225, 0, 'aaaaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:07:09', '2020-04-13 19:07:09'),
(39, 7, 225, 0, 'aaaaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:07:13', '2020-04-13 19:07:13'),
(40, 7, 225, 0, 'aaaaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:07:15', '2020-04-13 19:07:15'),
(41, 7, 225, 0, 'aaaaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:07:16', '2020-04-13 19:07:16'),
(42, 7, 225, 0, 'aaaaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:07:16', '2020-04-13 19:07:16'),
(43, 7, 225, 0, 'aaaaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:07:20', '2020-04-13 19:07:20'),
(44, 7, 225, 0, 'aaaaaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:07:23', '2020-04-13 19:07:23'),
(45, 7, 225, 0, 'aaaaaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:07:26', '2020-04-13 19:07:26'),
(46, 7, 225, 0, 'aaaaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:07:30', '2020-04-13 19:07:30'),
(47, 7, 225, 0, 'aaaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:07:44', '2020-04-13 19:07:44'),
(48, 7, 225, 0, 'aaaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:08:01', '2020-04-13 19:08:01'),
(49, 7, 225, 0, 'aaaaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:08:11', '2020-04-13 19:08:11'),
(50, 7, 225, 0, 'aaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:08:49', '2020-04-13 19:08:49'),
(51, 7, 225, 0, 'abc', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:08:55', '2020-04-13 19:08:55'),
(52, 7, 225, 0, 'abcc', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:09:01', '2020-04-13 19:09:01'),
(53, 7, 225, 0, 'acbb', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:09:06', '2020-04-13 19:09:06'),
(54, 7, 225, 0, 'adbc', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:09:12', '2020-04-13 19:09:12'),
(55, 7, 225, 0, 'adcb', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:09:18', '2020-04-13 19:09:18'),
(56, 7, 225, 0, 'asdc', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:09:25', '2020-04-13 19:09:25'),
(57, 7, 225, 0, 'amnds', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:09:30', '2020-04-13 19:09:30'),
(58, 7, 225, 0, 'ok', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:09:37', '2020-04-13 19:09:37'),
(59, 7, 225, 0, '👀👀👀', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:09:42', '2020-04-13 19:09:42'),
(60, 7, 225, 0, 'testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:09:48', '2020-04-13 19:09:48'),
(61, 7, 225, 0, 'not testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:10:02', '2020-04-13 19:10:02'),
(62, 7, 225, 0, 'ok again', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:13:46', '2020-04-13 19:13:46'),
(63, 7, 225, 0, 'ok text test', NULL, NULL, NULL, NULL, 1, 0, '2020-04-13 19:14:59', '2020-04-13 19:14:59'),
(64, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 04:02:59', '2020-04-14 04:02:59'),
(65, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 04:03:22', '2020-04-14 04:03:22'),
(66, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 04:05:20', '2020-04-14 04:05:20'),
(67, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 04:08:25', '2020-04-14 04:08:25'),
(68, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 04:29:24', '2020-04-14 04:29:24'),
(69, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 04:31:39', '2020-04-14 04:31:39'),
(70, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 04:39:31', '2020-04-14 04:39:31'),
(71, 7, 225, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 05:51:39', '2020-04-14 05:51:39'),
(72, 7, 225, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 05:55:38', '2020-04-14 05:55:38'),
(73, 7, 225, 0, 'hello', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 05:55:51', '2020-04-14 05:55:51'),
(74, 7, 225, 0, 'im doing this right?', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 05:56:11', '2020-04-14 05:56:11'),
(75, 7, 225, 0, 'im getting my message back... 😂😂', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 05:56:42', '2020-04-14 05:56:42'),
(76, 7, 225, 0, 'testing testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 05:57:04', '2020-04-14 05:57:04'),
(77, 7, 225, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 06:00:44', '2020-04-14 06:00:44'),
(78, 7, 225, 0, 'test1', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 06:00:49', '2020-04-14 06:00:49'),
(79, 7, 225, 0, 'test2', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 06:00:55', '2020-04-14 06:00:55'),
(80, 7, 225, 0, 'test3', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 06:01:02', '2020-04-14 06:01:02'),
(81, 7, 225, 0, 'test4', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 06:01:09', '2020-04-14 06:01:09'),
(82, 7, 225, 0, 'test5', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 06:01:16', '2020-04-14 06:01:16'),
(83, 7, 225, 0, 'test6', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 06:01:23', '2020-04-14 06:01:23'),
(84, 7, 225, 0, 'test7', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 06:01:34', '2020-04-14 06:01:34'),
(85, 7, 225, 0, 'test8', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 06:01:46', '2020-04-14 06:01:46'),
(86, 4, 257, 0, 'aaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 06:31:26', '2020-04-14 06:31:26'),
(87, 4, 257, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 06:43:57', '2020-04-14 06:43:57'),
(88, 4, 257, 0, 'hello', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 06:47:21', '2020-04-14 06:47:21'),
(89, 8, 257, 0, 'qq', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 06:48:34', '2020-04-14 06:48:34'),
(90, 8, 257, 0, 'hh', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 06:52:42', '2020-04-14 06:52:42'),
(91, 8, 257, 0, 'rr', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 06:53:36', '2020-04-14 06:53:36'),
(92, 8, 257, 0, 'ww', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:03:18', '2020-04-14 07:03:18'),
(93, 8, 257, 0, 'hello aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:11:14', '2020-04-14 07:11:14'),
(94, 8, 257, 0, 'love you 😘', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:11:47', '2020-04-14 07:11:47'),
(95, 8, 257, 0, 'Samsul Vai, Kaj thik Moto koren', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:12:28', '2020-04-14 07:12:28'),
(96, 8, 257, 0, 'kaje monojug nai to', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:13:54', '2020-04-14 07:13:54'),
(97, 8, 257, 0, '12', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:14:10', '2020-04-14 07:14:10'),
(98, 8, 257, 0, 'hh', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:20:27', '2020-04-14 07:20:27'),
(99, 8, 257, 0, 'gg', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:23:39', '2020-04-14 07:23:39'),
(100, 8, 257, 0, 'hh', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:23:43', '2020-04-14 07:23:43'),
(101, 8, 257, 0, 'hh', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:24:35', '2020-04-14 07:24:35'),
(102, 8, 257, 0, 'gg', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:24:38', '2020-04-14 07:24:38'),
(103, 8, 257, 0, 'rr', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:24:44', '2020-04-14 07:24:44'),
(104, 8, 257, 0, 'tt', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:24:59', '2020-04-14 07:24:59'),
(105, 8, 257, 0, 'kk', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:27:34', '2020-04-14 07:27:34'),
(106, 8, 257, 0, 'll', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:27:41', '2020-04-14 07:27:41'),
(107, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 07:49:02', '2020-04-14 07:49:02'),
(108, 3, 261, 0, NULL, NULL, NULL, NULL, NULL, 2, 0, '2020-04-14 08:11:57', '2020-04-14 08:11:57'),
(109, 3, 261, 0, NULL, NULL, NULL, NULL, NULL, 2, 0, '2020-04-14 08:13:22', '2020-04-14 08:13:22'),
(110, 3, 261, 0, NULL, 'assets/users_image/261/1586852245fp_wmg_brawlstars.png', NULL, NULL, NULL, 2, 0, '2020-04-14 08:17:25', '2020-04-14 08:17:25'),
(111, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 08:30:17', '2020-04-14 08:30:17'),
(112, 3, 261, 0, NULL, 'assets/users_image/261/1586853041fp_wmg_brawlstars.png', NULL, NULL, NULL, 2, 0, '2020-04-14 08:30:41', '2020-04-14 08:30:41'),
(113, 3, 261, 0, NULL, 'assets/users_image/261/1586853083fp_wmg_brawlstars.png', NULL, NULL, NULL, 2, 0, '2020-04-14 08:31:23', '2020-04-14 08:31:23'),
(114, 7, 225, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 08:36:30', '2020-04-14 08:36:30'),
(115, 3, 261, 0, NULL, 'assets/users_image/261/1586853651fp_wmg_brawlstars.png', NULL, NULL, NULL, 2, 0, '2020-04-14 08:40:51', '2020-04-14 08:40:51'),
(116, 8, 257, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 08:51:36', '2020-04-14 08:51:36'),
(117, 8, 257, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 08:53:22', '2020-04-14 08:53:22'),
(118, 8, 257, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 09:01:49', '2020-04-14 09:01:49'),
(119, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 09:02:51', '2020-04-14 09:02:51'),
(120, 8, 257, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 09:04:36', '2020-04-14 09:04:36'),
(121, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 09:07:30', '2020-04-14 09:07:30'),
(122, 8, 257, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 09:07:40', '2020-04-14 09:07:40'),
(123, 8, 257, 0, 'rr', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 09:08:37', '2020-04-14 09:08:37'),
(124, 8, 257, 0, 'ff', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 09:10:24', '2020-04-14 09:10:24'),
(125, 3, 261, 0, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 09:12:18', '2020-04-14 09:12:18'),
(126, 8, 257, 0, 'kk', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 09:23:06', '2020-04-14 09:23:06'),
(127, 8, 257, 0, 'aa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 09:37:49', '2020-04-14 09:37:49'),
(128, 8, 257, 0, 'bb', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 09:38:45', '2020-04-14 09:38:45'),
(129, 8, 257, 0, 'cc', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 09:39:58', '2020-04-14 09:39:58'),
(130, 8, 257, 0, 'dd', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 09:40:35', '2020-04-14 09:40:35'),
(131, 8, 257, 0, 'ee', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 09:41:33', '2020-04-14 09:41:33'),
(132, 8, 257, 0, 'ff', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 09:41:45', '2020-04-14 09:41:45'),
(133, 9, 262, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 10:09:25', '2020-04-14 10:09:25'),
(134, 9, 257, 0, 'hello', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 10:18:02', '2020-04-14 10:18:02'),
(135, 9, 262, 0, 'aa', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 10:30:18', '2020-04-14 10:30:18'),
(136, 9, 257, 0, 'bb', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 10:30:34', '2020-04-14 10:30:34'),
(137, 9, 257, 0, 'cc', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 10:31:25', '2020-04-14 10:31:25'),
(138, 7, 225, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 12:19:13', '2020-04-14 12:19:13'),
(139, 10, 263, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 13:18:21', '2020-04-14 13:18:21'),
(140, 10, 263, 0, 'how are you?', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 13:20:34', '2020-04-14 13:20:34'),
(141, 10, 225, 0, 'im good thanks', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:19:19', '2020-04-14 14:19:19'),
(142, 10, 263, 0, 'nice', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:19:31', '2020-04-14 14:19:31'),
(143, 10, 225, 0, 'chatting working properly?', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:20:11', '2020-04-14 14:20:11'),
(144, 10, 225, 0, 'r u sure?', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:20:32', '2020-04-14 14:20:32'),
(145, 10, 225, 0, 'is it ok?', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:20:53', '2020-04-14 14:20:53'),
(146, 10, 225, 0, 'im testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:21:10', '2020-04-14 14:21:10'),
(147, 10, 263, 0, 'now test from here', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:22:29', '2020-04-14 14:22:29'),
(148, 10, 263, 0, 'test2', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:22:38', '2020-04-14 14:22:38'),
(149, 10, 263, 0, 'test3', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:22:47', '2020-04-14 14:22:47'),
(150, 10, 263, 0, 'test4', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:22:56', '2020-04-14 14:22:56'),
(151, 10, 263, 0, 'test5', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:23:06', '2020-04-14 14:23:06'),
(152, 10, 263, 0, 'test6', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:23:17', '2020-04-14 14:23:17'),
(153, 10, 225, 0, 'test7', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:23:43', '2020-04-14 14:23:43'),
(154, 10, 225, 0, 'test8', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:23:50', '2020-04-14 14:23:50'),
(155, 10, 225, 0, 'test9', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:23:57', '2020-04-14 14:23:57'),
(156, 10, 225, 0, 'test10', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 14:24:39', '2020-04-14 14:24:39'),
(157, 10, 225, 0, 'Test10 big text test.... Test10 big text test.... Test10 big text test.... \n\nTest10 big text test.... Test10 big text test.... Test10 big text test... Test10 big text test.... Test10 big text test.... Test10 big text test....', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:12:19', '2020-04-14 15:12:19'),
(158, 10, 263, 0, 'big text test.... big text test....big text test....big text test....big text test....big text test....big text test....big text test....\n\nbig text test....big text test....big text test....', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:20:08', '2020-04-14 15:20:08'),
(159, 10, 263, 0, 'big text test....big text test....big text test....big text test....big text test....big text test....big text test....', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:33:27', '2020-04-14 15:33:27'),
(160, 10, 263, 0, 'big text test....big text test....big text test....big text test....big text test....big text test....big text test....big text test....', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:33:57', '2020-04-14 15:33:57'),
(161, 9, 257, 0, 'dddddddddddddddddddddddddddddddddddddddddddddd', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:53:12', '2020-04-14 15:53:12'),
(162, 11, 266, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:55:36', '2020-04-14 15:55:36'),
(163, 11, 266, 0, 'is it my test?', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:56:58', '2020-04-14 15:56:58'),
(164, 11, 266, 0, 'bjkgfvkluddvjotrd', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:57:32', '2020-04-14 15:57:32'),
(165, 11, 225, 0, 'Hmm ok working', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:57:46', '2020-04-14 15:57:46'),
(166, 11, 266, 0, 'gfdduolmvswwtyiiokkk', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:57:54', '2020-04-14 15:57:54'),
(167, 11, 266, 0, 'gooood', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:57:59', '2020-04-14 15:57:59'),
(168, 11, 225, 0, 'Write again', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:57:59', '2020-04-14 15:57:59'),
(169, 11, 266, 0, 'vdsgillnderyioplmcswwxcnko', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:58:13', '2020-04-14 15:58:13'),
(170, 11, 266, 0, 'hlwhiokn', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:58:26', '2020-04-14 15:58:26'),
(171, 11, 266, 0, '😂', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:58:29', '2020-04-14 15:58:29'),
(172, 11, 266, 0, '🤣', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:58:32', '2020-04-14 15:58:32'),
(173, 11, 225, 0, 'Ok good function working properly', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:58:33', '2020-04-14 15:58:33'),
(174, 11, 266, 0, '🙄🙄🙄🙄', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:58:41', '2020-04-14 15:58:41'),
(175, 11, 225, 0, '😝😝😝', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:58:41', '2020-04-14 15:58:41'),
(176, 11, 225, 0, '😲😲😲', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:58:48', '2020-04-14 15:58:48'),
(177, 11, 266, 0, '😅🤣', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:58:57', '2020-04-14 15:58:57'),
(178, 11, 266, 0, '🤧🤧🤧🤧🤧🤧', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:59:03', '2020-04-14 15:59:03'),
(179, 11, 225, 0, '😢😣😔🤪', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:59:12', '2020-04-14 15:59:12'),
(180, 11, 266, 0, 'xchuomvswetuopmncsawr', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:59:13', '2020-04-14 15:59:13'),
(181, 11, 266, 0, 'cdrgbbbhfjdks', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:59:17', '2020-04-14 15:59:17'),
(182, 11, 266, 0, 'shkdmdxn', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:59:19', '2020-04-14 15:59:19'),
(183, 11, 266, 0, 'bzjdudhqkalsnfb', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:59:22', '2020-04-14 15:59:22'),
(184, 11, 266, 0, '🙄😑😀😁😂😃', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:59:30', '2020-04-14 15:59:30'),
(185, 11, 266, 0, 'x xjdkalsbbfejs', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:59:32', '2020-04-14 15:59:32'),
(186, 11, 266, 0, 'vzhshjfwkam sbfrbwkwo', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:59:35', '2020-04-14 15:59:35'),
(187, 11, 266, 0, 's bsdhkaka zdbdbdh', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:59:38', '2020-04-14 15:59:38'),
(188, 11, 266, 0, '😀😆😙😁😀🤗😀🙂🙂☺☺😍', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:59:44', '2020-04-14 15:59:44'),
(189, 11, 266, 0, 'ehdjkwnqbseodkdk', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:59:47', '2020-04-14 15:59:47'),
(190, 11, 266, 0, 'd bdbdjskandbdsb', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:59:49', '2020-04-14 15:59:49'),
(191, 11, 266, 0, 'z xbdjkaamfbbqkqlaldfkc', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:59:53', '2020-04-14 15:59:53'),
(192, 11, 266, 0, 'sbdjkslasm xbdhdhd', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 15:59:56', '2020-04-14 15:59:56'),
(193, 11, 266, 0, 'sndjsosksbababd xb', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:00:00', '2020-04-14 16:00:00'),
(194, 11, 225, 0, '😛😛😛', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:00:04', '2020-04-14 16:00:04'),
(195, 11, 266, 0, 'x\'D', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:00:11', '2020-04-14 16:00:11'),
(196, 11, 266, 0, '😋😋😋😋😋😋', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:00:20', '2020-04-14 16:00:20'),
(197, 11, 266, 0, 'dbdbdkqooqksdncb', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:00:24', '2020-04-14 16:00:24'),
(198, 11, 266, 0, 'bskdodbnamsfm', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:00:27', '2020-04-14 16:00:27'),
(199, 11, 266, 0, 'cjaksn cvdvehidkd csvahsodkbcdbkdodehbc cdm', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:00:34', '2020-04-14 16:00:34'),
(200, 11, 225, 0, 'Ok txt', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:02:39', '2020-04-14 16:02:39'),
(201, 11, 225, 0, 'Txt', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:02:50', '2020-04-14 16:02:50'),
(202, 11, 225, 0, 'Txt 22', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:03:52', '2020-04-14 16:03:52'),
(203, 11, 225, 0, 'Big text big text big text .... Big text big text big text .... Big text big text big text .... Big text big text big text .... Big text big text big text ....\n\n\nBig text big text big text .... Big text big text big text .... Big text big text big text .... Big text big text big text .... Big text big text big text ....', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:04:35', '2020-04-14 16:04:35'),
(204, 11, 225, 0, 'Big text big text big text .... Big text big text big text .... Big text big text big text ....', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:04:46', '2020-04-14 16:04:46'),
(205, 11, 225, 0, 'Big text big text big text ....', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:04:54', '2020-04-14 16:04:54'),
(206, 11, 225, 0, 'Big text big text big text ....', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:07:09', '2020-04-14 16:07:09'),
(207, 11, 225, 0, 'Big text big text big text .... Big text big text big text .... Big text big text big text .... Big text big text big text ....', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:07:25', '2020-04-14 16:07:25'),
(208, 11, 225, 0, 'Big text big text big text ....', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 16:07:31', '2020-04-14 16:07:31'),
(209, 12, 257, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 17:31:29', '2020-04-14 17:31:29'),
(210, 9, 257, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 17:42:57', '2020-04-14 17:42:57'),
(211, 13, 255, 0, 'Hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 19:22:24', '2020-04-14 19:22:24'),
(212, 13, 260, 0, 'hlow', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 19:25:11', '2020-04-14 19:25:11'),
(213, 13, 260, 0, 'nice', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 19:25:37', '2020-04-14 19:25:37'),
(214, 13, 255, 0, 'Gr8', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 19:25:46', '2020-04-14 19:25:46'),
(215, 13, 260, 0, 'how are you', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 19:26:19', '2020-04-14 19:26:19'),
(216, 13, 255, 0, 'Fine', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 19:26:27', '2020-04-14 19:26:27'),
(217, 13, 255, 0, 'You', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 19:26:36', '2020-04-14 19:26:36'),
(218, 13, 260, 0, 'me too', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 19:26:43', '2020-04-14 19:26:43'),
(219, 14, 255, 0, 'Hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 19:31:24', '2020-04-14 19:31:24'),
(220, 14, 267, 0, 'hlo', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 19:31:40', '2020-04-14 19:31:40'),
(221, 15, 258, 0, 'Hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 19:33:23', '2020-04-14 19:33:23'),
(222, 15, 258, 0, 'Hhh', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 19:36:08', '2020-04-14 19:36:08'),
(223, 16, 259, 0, 'hello', NULL, NULL, NULL, NULL, 1, 0, '2020-04-14 20:23:37', '2020-04-14 20:23:37'),
(224, 3, 261, 0, NULL, NULL, 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/261/1586943824Smallshorttestvideo.mp4', NULL, NULL, 3, 0, '2020-04-15 09:43:44', '2020-04-15 09:43:44'),
(225, 3, 261, 0, NULL, NULL, 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/261/1586944165Smallshorttestvideo.mp4', NULL, NULL, 3, 0, '2020-04-15 09:49:26', '2020-04-15 09:49:26'),
(226, 3, 261, 0, NULL, NULL, 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/261/1586950621Smallshorttestvideo.mp4', NULL, NULL, 3, 1, '2020-04-15 11:37:01', '2020-04-18 05:43:18'),
(227, 17, 259, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-15 15:51:15', '2020-04-15 15:51:15'),
(228, 18, 259, 0, 'hello', NULL, NULL, NULL, NULL, 1, 0, '2020-04-15 16:00:25', '2020-04-15 16:00:25'),
(229, 18, 257, 0, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-15 16:03:50', '2020-04-15 16:03:50'),
(230, 18, 257, 0, 'test', NULL, NULL, NULL, NULL, 1, 0, '2020-04-15 16:04:26', '2020-04-15 16:04:26'),
(231, 11, 225, 0, 'Test3', NULL, NULL, NULL, NULL, 1, 0, '2020-04-16 07:18:45', '2020-04-16 07:18:45'),
(232, 10, 225, 0, 'Test4', NULL, NULL, NULL, NULL, 1, 0, '2020-04-16 07:19:27', '2020-04-16 07:19:27'),
(233, 19, 268, 0, 'hello', NULL, NULL, NULL, NULL, 1, 0, '2020-04-16 09:59:50', '2020-04-16 09:59:50'),
(234, 15, 258, 261, 'Vhjnn', NULL, NULL, NULL, NULL, 1, 1, '2020-04-17 13:22:25', '2020-04-20 09:33:36'),
(235, 15, 258, 261, 'Test', NULL, NULL, NULL, NULL, 1, 1, '2020-04-17 13:22:33', '2020-04-20 09:33:36'),
(236, 7, 225, 0, 'Hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-17 13:35:57', '2020-04-17 13:35:57'),
(237, 3, 225, 261, 'This is for testing', NULL, NULL, NULL, NULL, 1, 1, '2020-04-20 07:53:29', '2020-04-20 07:57:31'),
(238, 3, 225, 261, 'This is for testing', NULL, NULL, NULL, NULL, 1, 1, '2020-04-20 07:54:57', '2020-04-20 07:57:31'),
(239, 9, 257, 262, 'yy', NULL, NULL, NULL, NULL, 1, 1, '2020-04-20 08:31:52', '2020-04-21 12:52:28'),
(240, 9, 257, 262, 'rr', NULL, NULL, NULL, NULL, 1, 1, '2020-04-20 09:15:55', '2020-04-21 12:52:28'),
(241, 9, 262, 257, 'ki hoise ?', NULL, NULL, NULL, NULL, 1, 1, '2020-04-20 09:24:18', '2020-04-21 12:52:40'),
(242, 20, 261, 266, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 09:43:51', '2020-04-20 09:43:51'),
(243, 20, 261, 266, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 09:44:07', '2020-04-20 09:44:07'),
(244, 20, 261, 266, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 11:31:57', '2020-04-20 11:31:57'),
(245, 20, 261, 266, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 11:32:16', '2020-04-20 11:32:16'),
(246, 20, 261, 225, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 11:33:45', '2020-04-20 11:33:45'),
(247, 21, 261, 225, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 11:36:23', '2020-04-20 11:36:23'),
(248, 21, 261, 257, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 11:39:04', '2020-04-20 11:39:04'),
(249, 21, 261, 257, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 11:45:40', '2020-04-20 11:45:40'),
(250, 21, 261, 257, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 11:47:12', '2020-04-20 11:47:12'),
(251, 21, 261, 257, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 11:47:50', '2020-04-20 11:47:50'),
(252, 21, 261, 225, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 11:48:04', '2020-04-20 11:48:04'),
(253, 21, 261, 225454, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 11:48:20', '2020-04-20 11:48:20'),
(254, 21, 261, 225, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 11:54:01', '2020-04-20 11:54:01'),
(255, 21, 261, 257, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 11:54:11', '2020-04-20 11:54:11'),
(256, 21, 261, 257, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 11:54:31', '2020-04-20 11:54:31'),
(257, 22, 261, 257, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 12:07:57', '2020-04-20 12:07:57'),
(258, 22, 261, 257, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 12:17:19', '2020-04-20 12:17:19'),
(259, 22, 261, 257, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 12:20:17', '2020-04-20 12:20:17'),
(260, 21, 261, 225, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 12:22:47', '2020-04-20 12:22:47'),
(261, 9, 262, 257, 'oi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-20 12:30:00', '2020-04-21 12:52:40'),
(262, 9, 262, 257, 'oi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-20 12:31:06', '2020-04-21 12:52:40'),
(263, 21, 261, 225, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 12:34:14', '2020-04-20 12:34:14'),
(264, 21, 261, 225, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 12:35:46', '2020-04-20 12:35:46'),
(265, 22, 261, 257, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 12:36:20', '2020-04-20 12:36:20'),
(266, 22, 261, 257, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 12:38:00', '2020-04-20 12:38:00'),
(267, 22, 261, 257, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 12:41:47', '2020-04-20 12:41:47'),
(268, 22, 261, 257, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 12:42:50', '2020-04-20 12:42:50'),
(269, 23, 261, 262, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 12:44:20', '2020-04-20 12:44:20'),
(270, 23, 261, 262, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 12:45:37', '2020-04-20 12:45:37'),
(271, 23, 261, 262, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 12:47:31', '2020-04-20 12:47:31'),
(272, 21, 261, 225, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 12:50:59', '2020-04-20 12:50:59'),
(273, 21, 261, 225, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-20 12:51:41', '2020-04-20 12:51:41'),
(274, 9, 262, 257, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-21 12:06:59', '2020-04-21 12:52:40'),
(275, 9, 262, 257, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-21 12:12:02', '2020-04-21 12:52:40'),
(276, 21, 261, 225, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-21 12:20:33', '2020-04-21 12:20:33'),
(277, 9, 262, 257, 'hello', NULL, NULL, NULL, NULL, 1, 1, '2020-04-21 12:22:41', '2020-04-21 12:52:40'),
(278, 9, 262, 257, 'hello 2', NULL, NULL, NULL, NULL, 1, 1, '2020-04-21 12:23:10', '2020-04-21 12:52:40'),
(279, 9, 262, 257, 'hello 3', NULL, NULL, NULL, NULL, 1, 1, '2020-04-21 12:23:28', '2020-04-21 12:52:40'),
(280, 9, 262, 257, 'hello 4', NULL, NULL, NULL, NULL, 1, 1, '2020-04-21 12:25:01', '2020-04-21 12:52:40'),
(281, 9, 262, 257, 'hello 5', NULL, NULL, NULL, NULL, 1, 1, '2020-04-21 12:26:13', '2020-04-21 12:52:40'),
(282, 9, 262, 257, 'hello 6', NULL, NULL, NULL, NULL, 1, 1, '2020-04-21 12:29:18', '2020-04-21 12:52:40'),
(283, 21, 261, 257, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-21 12:33:47', '2020-04-21 12:33:47'),
(284, 22, 261, 257, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-21 12:34:04', '2020-04-21 12:34:04'),
(285, 9, 262, 257, 'hello 7', NULL, NULL, NULL, NULL, 1, 1, '2020-04-21 12:36:55', '2020-04-21 12:52:40'),
(286, 9, 262, 257, 'hello 8', NULL, NULL, NULL, NULL, 1, 1, '2020-04-21 12:52:32', '2020-04-21 12:52:40'),
(287, 9, 257, 262, 'hello 9', NULL, NULL, NULL, NULL, 1, 0, '2020-04-21 12:52:46', '2020-04-21 12:52:46'),
(288, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 12:09:45', '2020-04-25 08:01:24'),
(289, 10, 263, 225, 'hello', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 12:10:05', '2020-04-25 08:01:24'),
(290, 10, 263, 225, 'is it?', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 12:10:40', '2020-04-25 08:01:24'),
(291, 10, 263, 225, 'test', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 12:10:59', '2020-04-25 08:01:24'),
(292, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 12:12:48', '2020-04-25 08:01:24'),
(293, 10, 263, 225, 'ok', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 12:14:51', '2020-04-25 08:01:24'),
(294, 10, 263, 225, 'ok2', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 12:16:43', '2020-04-25 08:01:24'),
(295, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:11:47', '2020-04-25 08:01:24'),
(296, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:12:37', '2020-04-25 08:01:24'),
(297, 10, 263, 225, 'hi2', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:14:37', '2020-04-25 08:01:24'),
(298, 10, 263, 225, 'hi3', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:14:54', '2020-04-25 08:01:24'),
(299, 10, 263, 225, 'hi4', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:17:07', '2020-04-25 08:01:24'),
(300, 10, 263, 225, 'hi5', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:17:37', '2020-04-25 08:01:24'),
(301, 10, 263, 225, 'hi6', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:25:19', '2020-04-25 08:01:24'),
(302, 10, 263, 225, 'hi7', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:28:25', '2020-04-25 08:01:24'),
(303, 10, 263, 225, 'hi8', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:28:53', '2020-04-25 08:01:24'),
(304, 10, 225, 263, 'Ok', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:29:09', '2020-04-23 18:57:04'),
(305, 10, 263, 225, 'thanks', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:29:21', '2020-04-25 08:01:24'),
(306, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:36:45', '2020-04-25 08:01:24'),
(307, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:38:04', '2020-04-25 08:01:24'),
(308, 10, 263, 225, 'hello', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:38:18', '2020-04-25 08:01:24'),
(309, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:38:35', '2020-04-25 08:01:24'),
(310, 10, 263, 225, 'hello', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:38:52', '2020-04-25 08:01:24'),
(311, 10, 263, 225, 'uhm', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:39:10', '2020-04-25 08:01:24'),
(312, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:45:19', '2020-04-25 08:01:24'),
(313, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:45:36', '2020-04-25 08:01:24'),
(314, 10, 263, 225, 'hy', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 14:54:39', '2020-04-25 08:01:24'),
(315, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 15:08:42', '2020-04-25 08:01:24'),
(316, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 15:08:56', '2020-04-25 08:01:24'),
(317, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 15:12:50', '2020-04-25 08:01:24'),
(318, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 15:13:08', '2020-04-25 08:01:24'),
(319, 10, 263, 225, 'ffhhj', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 15:13:31', '2020-04-25 08:01:24'),
(320, 24, 225, 267, 'Hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-22 15:16:10', '2020-04-22 15:16:10'),
(321, 10, 263, 225, 'hello', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 15:22:24', '2020-04-25 08:01:24'),
(322, 10, 263, 225, 'hy', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 15:43:43', '2020-04-25 08:01:24'),
(323, 10, 263, 225, 'hy long text long text', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 15:44:01', '2020-04-25 08:01:24'),
(324, 10, 263, 225, 'hy', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 15:48:33', '2020-04-25 08:01:24'),
(325, 10, 263, 225, 'hello', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 15:49:48', '2020-04-25 08:01:24'),
(326, 10, 225, 263, 'Ok working', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 15:50:09', '2020-04-23 18:57:04'),
(327, 10, 263, 225, 'nice', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 15:50:29', '2020-04-25 08:01:24'),
(328, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 16:24:35', '2020-04-25 08:01:24'),
(329, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 16:24:54', '2020-04-25 08:01:24'),
(330, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 16:25:03', '2020-04-25 08:01:24'),
(331, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 16:25:11', '2020-04-25 08:01:24'),
(332, 10, 263, 225, 'hello', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 16:25:38', '2020-04-25 08:01:24'),
(333, 10, 263, 225, 'ok', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 16:25:48', '2020-04-25 08:01:24'),
(334, 10, 225, 263, 'Hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 16:31:22', '2020-04-23 18:57:04'),
(335, 10, 225, 263, 'Hello', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 16:31:29', '2020-04-23 18:57:04'),
(336, 10, 225, 263, 'Ok', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 16:31:33', '2020-04-23 18:57:04'),
(337, 10, 225, 263, 'Test', NULL, NULL, NULL, NULL, 1, 1, '2020-04-22 16:31:39', '2020-04-23 18:57:04'),
(338, 21, 261, 225, 'This is for testing', NULL, NULL, NULL, NULL, 1, 0, '2020-04-23 06:39:46', '2020-04-23 06:39:46'),
(339, 10, 263, 225, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 08:13:08', '2020-04-25 08:01:24'),
(340, 10, 263, 225, 'hello', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 08:13:22', '2020-04-25 08:01:24'),
(341, 10, 263, 225, 'test', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 08:13:39', '2020-04-25 08:01:24'),
(342, 10, 263, 225, 'ok', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 08:13:56', '2020-04-25 08:01:24'),
(343, 10, 263, 225, 'ow hy', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 09:38:07', '2020-04-25 08:01:24'),
(344, 10, 263, 225, 'is it', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 09:38:27', '2020-04-25 08:01:24'),
(345, 10, 263, 225, 'really?', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 09:38:48', '2020-04-25 08:01:24'),
(346, 10, 263, 225, 'ok', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 09:39:11', '2020-04-25 08:01:24'),
(347, 10, 263, 225, 'ok2', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 09:40:18', '2020-04-25 08:01:24'),
(348, 10, 263, 225, 'ok3', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 09:40:30', '2020-04-25 08:01:24'),
(349, 10, 263, 225, 'ok4', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 10:30:22', '2020-04-25 08:01:24'),
(350, 10, 263, 225, 'ok5', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 10:30:33', '2020-04-25 08:01:24'),
(351, 10, 263, 225, 'ok6', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 10:30:54', '2020-04-25 08:01:24'),
(352, 10, 225, 263, 'Ok7', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 10:31:18', '2020-04-23 18:57:04'),
(353, 10, 263, 225, 'ok8', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 10:47:38', '2020-04-25 08:01:24'),
(354, 14, 267, 255, 'Hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 14:14:23', '2020-04-26 08:19:25'),
(355, 14, 255, 267, 'hlo', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 14:15:13', '2020-04-25 05:55:58'),
(356, 15, 267, 258, 'Hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-23 14:15:30', '2020-04-23 14:15:30'),
(357, 14, 255, 267, 'test 1', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 14:16:18', '2020-04-25 05:55:58'),
(358, 14, 255, 267, 'hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 14:16:42', '2020-04-25 05:55:58'),
(359, 14, 255, 267, 'bold', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 14:18:31', '2020-04-25 05:55:58'),
(360, 10, 225, 263, 'Hello', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 16:36:52', '2020-04-23 18:57:04'),
(361, 10, 225, 263, 'Hi', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 16:41:06', '2020-04-23 18:57:04'),
(362, 10, 263, 225, 'hy', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 17:54:43', '2020-04-25 08:01:24'),
(363, 10, 263, 225, 'hello', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 17:54:57', '2020-04-25 08:01:24'),
(364, 10, 263, 225, 'hlw', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 17:55:15', '2020-04-25 08:01:24'),
(365, 10, 263, 225, '😁😁😁😁', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 17:55:24', '2020-04-25 08:01:24'),
(366, 10, 263, 225, '😋😋😋😋', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 17:55:33', '2020-04-25 08:01:24'),
(367, 10, 263, 225, '🤣😂😃😄😅', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 17:55:41', '2020-04-25 08:01:24'),
(368, 10, 263, 225, '🤪🤑🤑🤑🤑', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 17:55:54', '2020-04-25 08:01:24'),
(369, 10, 263, 225, 'a', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 18:02:10', '2020-04-25 08:01:24'),
(370, 10, 263, 225, 'b', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 18:02:12', '2020-04-25 08:01:24'),
(371, 10, 263, 225, 'v', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 18:02:14', '2020-04-25 08:01:24'),
(372, 10, 263, 225, 'hou', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 18:02:19', '2020-04-25 08:01:24'),
(373, 10, 263, 225, 'vfdyjn', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 18:02:21', '2020-04-25 08:01:24'),
(374, 10, 263, 225, 'vhkkuffcb', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 18:02:25', '2020-04-25 08:01:24'),
(375, 10, 263, 225, 'djdbdbjd', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 18:10:01', '2020-04-25 08:01:24'),
(376, 10, 263, 225, 'hdbdb', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 18:10:10', '2020-04-25 08:01:24'),
(377, 10, 263, 225, 'hdbdb', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 18:12:42', '2020-04-25 08:01:24'),
(378, 10, 263, 225, 'hdjdnnf', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 18:14:20', '2020-04-25 08:01:24'),
(379, 10, 263, 225, 'hhiutddvbkout', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 18:14:52', '2020-04-25 08:01:24'),
(380, 10, 263, 225, 'fhsbdhf', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 18:57:08', '2020-04-25 08:01:24'),
(381, 10, 263, 225, 'dbdbdh', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 19:01:50', '2020-04-25 08:01:24'),
(382, 10, 263, 225, 'fbdb', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 19:01:58', '2020-04-25 08:01:24'),
(383, 10, 263, 225, 'cndbdh', NULL, NULL, NULL, NULL, 1, 1, '2020-04-23 19:02:29', '2020-04-25 08:01:24'),
(384, 16, 259, 267, 'hi', NULL, NULL, NULL, NULL, 1, 0, '2020-04-23 19:32:33', '2020-04-23 19:32:33'),
(385, 10, 225, 263, 'Oow', NULL, NULL, NULL, NULL, 1, 0, '2020-04-25 08:01:30', '2020-04-25 08:01:30'),
(386, 25, 272, 255, 'hi thowhid', NULL, NULL, NULL, NULL, 1, 1, '2020-04-26 08:31:44', '2020-04-26 08:31:49'),
(387, 26, 265, 258, 'K', NULL, NULL, NULL, NULL, 1, 1, '2020-05-02 23:31:33', '2020-05-03 15:49:16'),
(388, 26, 265, 258, 'Hi', NULL, NULL, NULL, NULL, 1, 1, '2020-05-03 00:10:20', '2020-05-03 15:49:16'),
(389, 27, 265, 255, 'Hi', NULL, NULL, NULL, NULL, 1, 0, '2020-05-03 00:27:19', '2020-05-03 00:27:19'),
(390, 27, 265, 255, 'Hi', NULL, NULL, NULL, NULL, 1, 0, '2020-05-03 00:27:26', '2020-05-03 00:27:26'),
(391, 26, 258, 265, 'Hi', NULL, NULL, NULL, NULL, 1, 0, '2020-05-03 14:47:38', '2020-05-03 14:47:38'),
(392, 26, 258, 265, 'Just checking if you are getting my messages', NULL, NULL, NULL, NULL, 1, 0, '2020-05-03 14:47:59', '2020-05-03 14:47:59'),
(393, 28, 273, 255, 'hei', NULL, NULL, NULL, NULL, 1, 0, '2021-07-04 19:20:22', '2021-07-04 19:20:22'),
(394, 28, 273, 255, 'Are you there?', NULL, NULL, NULL, NULL, 1, 0, '2021-07-04 19:20:31', '2021-07-04 19:20:31'),
(395, 29, 274, 273, 'hello', NULL, NULL, NULL, NULL, 1, 1, '2021-07-06 13:36:43', '2021-07-09 13:43:36'),
(396, 29, 274, 273, 'what\'s up', NULL, NULL, NULL, NULL, 1, 1, '2021-07-06 13:36:47', '2021-07-09 13:43:36'),
(397, 29, 274, 273, 'how are you 😉🙂', NULL, NULL, NULL, NULL, 1, 1, '2021-07-06 13:37:00', '2021-07-09 13:43:36'),
(398, 29, 273, 274, 'hey I am good', NULL, NULL, NULL, NULL, 1, 0, '2021-07-06 13:38:05', '2021-07-06 13:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `comment_likes`
--

CREATE TABLE `comment_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_likes`
--

INSERT INTO `comment_likes` (`id`, `comment_id`, `user_id`, `created_at`, `updated_at`) VALUES
(51, 128, 254, '2020-04-10 17:11:16', '2020-04-10 17:11:16'),
(57, 138, 259, '2020-04-11 10:28:51', '2020-04-11 10:28:51'),
(61, 156, 265, '2020-04-14 06:16:06', '2020-04-14 06:16:06'),
(63, 159, 265, '2020-04-14 06:40:56', '2020-04-14 06:40:56'),
(64, 158, 265, '2020-04-14 06:41:40', '2020-04-14 06:41:40'),
(66, 157, 259, '2020-04-19 09:32:49', '2020-04-19 09:32:49'),
(67, 284, 273, '2021-07-07 07:18:59', '2021-07-07 07:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `common_settings`
--

CREATE TABLE `common_settings` (
  `id` int(11) NOT NULL,
  `about_us` longtext,
  `terms_conditions` longtext,
  `privacy_policy` longtext,
  `version` varchar(120) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `common_settings`
--

INSERT INTO `common_settings` (`id`, `about_us`, `terms_conditions`, `privacy_policy`, `version`, `created_at`, `updated_at`) VALUES
(1, '<h4>Information About Show Offf</h4><p>Show Offf is an Entertainment App dedicated to allowing you show off your talents or even to match everyone elses through the following categories:<ul><li>Acting</li><li>Singing</li><li>Dancing</li><li>Poems</li><li>Comedy</li><li>Instruments</li><li>Concerts</li></ul>', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '<h4>1. Introduction</h4><p style=\"text-align: justify;\">Welcome to Show Offf LLC (“Company”, “we”, “our”, “us”)! </p><p style=\"text-align: justify;\">These Terms of Service (“Terms”, “Terms of Service”) govern your use of our website located at <a href=\"https://showofff.io/\">https://showofff.io/</a> (together or individually “Service”) operated by Show Offf LLC. </p><p style=\"text-align: justify;\">Our Privacy Policy also governs your use of our Service and explains how we collect, safeguard and disclose information that results from your use of our web pages. </p><p style=\"text-align: justify;\">Your agreement with us includes these Terms and our Privacy Policy (“Agreements”). You acknowledge that you have read and understood Agreements, and agree to be bound of them. </p><p style=\"text-align: justify;\">If you do not agree with (or cannot comply with) Agreements, then you may not use the Service, but please let us know by emailing at info@showofff.io so we can try to find a solution. These Terms apply to all visitors, users and others who wish to access or use Service. </p><h4>2. Communications</h4><p style=\"text-align: justify;\">By using our Service, you agree to subscribe to newsletters, marketing or promotional materials and other information we may send. However, you may opt out of receiving any, or all, of these communications from us by following the unsubscribe link or by emailing at info@showofff.io. </p><h4>3. Contests, Sweepstakes and Promotions</h4><p style=\"text-align: justify;\">Any contests, sweepstakes or other promotions (collectively, “Promotions”) made available through Service may be governed by rules that are separate from these Terms of Service. If you participate in any Promotions, please review the applicable rules as well as our Privacy Policy. If the rules for a Promotion conflict with these Terms of Service, Promotion rules will apply. </p><h4>4. Content</h4><p style=\"text-align: justify;\">Our Service allows you to post, link, store, share and otherwise make available certain information, text, graphics, videos, or other material (“Content”). You are responsible for Content that you post on or through Service, including its legality, reliability, and appropriateness.</p><p style=\"text-align: justify;\">By posting Content on or through Service, You represent and warrant that: (i) Content is yours (you own it) and/or you have the right to use it and the right to grant us the rights and license as provided in these Terms, and (ii) that the posting of your Content on or through Service does not violate the privacy rights, publicity rights, copyrights, contract rights or any other rights of any person or entity. We reserve the right to terminate the account of anyone found to be infringing on a copyright. </p><p style=\"text-align: justify;\">You retain any and all of your rights to any Content you submit, post or display on or through Service and you are responsible for protecting those rights. We take no responsibility and assume no liability for Content you or any third party posts on or through Service. However, by posting Content using Service you grant us the right and license to use, modify, publicly perform, publicly display, reproduce, and distribute such Content on and through Service. You agree that this license includes the right for us to make your Content available to other users of Service, who may also use your Content subject to these Terms. </p><p style=\"text-align: justify;\">Show Offf LLC has the right but not the obligation to monitor and edit all Content provided by users. </p><p style=\"text-align: justify;\">In addition, Content found on or through this Service are the property of Show Offf LLC or used with permission. You may not distribute, modify, transmit, reuse, download, repost, copy, or use said Content, whether in whole or in part, for commercial purposes or for personal gain, without express advance written permission from us.</p><h4>5. Prohibited Uses</h4><p style=\"text-align: justify;\">You may use Service only for lawful purposes and in accordance with Terms. You agree not to use Service: </p><p style=\"text-align: justify;\">0.1. In any way that violates any applicable national or international law or regulation. </p><p style=\"text-align: justify;\">0.2. For the purpose of exploiting, harming, or attempting to exploit or harm minors in any way by exposing them to inappropriate content or otherwise. </p><p style=\"text-align: justify;\">0.3. To transmit, or procure the sending of, any advertising or promotional material, including any “junk mail”, “chain letter,” “spam,” or any other similar solicitation. </p><p style=\"text-align: justify;\">0.4. To impersonate or attempt to impersonate Company, a Company employee, another user, or any other person or entity. </p><p style=\"text-align: justify;\">0.5. In any way that infringes upon the rights of others, or in any way is illegal, threatening, fraudulent, or harmful, or in connection with any unlawful, illegal, fraudulent, or harmful purpose or activity. </p><p style=\"text-align: justify;\">0.6. To engage in any other conduct that restricts or inhibits anyone’s use or enjoyment of Service, or which, as determined by us, may harm or offend Company or users of Service or expose them to liability. </p><p>Additionally, you agree not to: </p><p style=\"text-align: justify;\">0.1. Use Service in any manner that could disable, overburden, damage, or impair Service or interfere with any other party’s use of Service, including their ability to engage in real time activities through Service. </p><p style=\"text-align: justify;\">0.2. Use any robot, spider, or other automatic device, process, or means to access Service for any purpose, including monitoring or copying any of the material on Service. </p><p style=\"text-align: justify;\">0.3. Use any manual process to monitor or copy any of the material on Service or for any other unauthorized purpose without our prior written consent. </p><p style=\"text-align: justify;\">0.4. Use any device, software, or routine that interferes with the proper working of Service. </p><p style=\"text-align: justify;\">0.5. Introduce any viruses, trojan horses, worms, logic bombs, or other material which is malicious or technologically harmful. </p><p style=\"text-align: justify;\">0.6. Attempt to gain unauthorized access to, interfere with, damage, or disrupt any parts of Service, the server on which Service is stored, or any server, computer, or database connected to Service. </p><p style=\"text-align: justify;\">0.7. Attack Service via a denial-of-service attack or a distributed denial-of-service attack. </p><p style=\"text-align: justify;\">0.8. Take any action that may damage or falsify Company rating. </p><p style=\"text-align: justify;\">0.9. Otherwise attempt to interfere with the proper working of Service.</p><h4>6. Analytics</h4><p style=\"text-align: justify;\">We may use third-party Service Providers to monitor and analyze the use of our Service. </p><h4>7. No Use By Minors</h4><p style=\"text-align: justify;\">Service is intended only for access and use by individuals at least thirteen (13) years old. By accessing or using Service, you warrant and represent that you are at least thirteen (13) years of age and with the full authority, right, and capacity to enter into this agreement and abide by all of the terms and conditions of Terms. If you are not at least thirteen (13) years old, you are prohibited from both the access and usage of Service. </p><h4>8. Accounts</h4><p style=\"text-align: justify;\">When you create an account with us, you guarantee that you are above the age of 13, and that the information you provide us is accurate, complete, and current at all times. Inaccurate, incomplete, or obsolete information may result in the immediate termination of your account on Service. </p><p style=\"text-align: justify;\">You are responsible for maintaining the confidentiality of your account and password, including but not limited to the restriction of access to your computer and/or account. You agree to accept responsibility for any and all activities or actions that occur under your account and/or password, whether your password is with our Service or a third-party service. You must notify us immediately upon becoming aware of any breach of security or unauthorized use of your account. </p><p style=\"text-align: justify;\">You may not use as a username the name of another person or entity or that is not lawfully available for use, a name or trademark that is subject to any rights of another person or entity other than you, without appropriate authorization. You may not use as a username any name that is offensive, vulgar or obscene. </p><p style=\"text-align: justify;\">We reserve the right to refuse service, terminate accounts, remove or edit content, or cancel orders in our sole discretion. </p><h4>9. Intellectual Property</h4><p style=\"text-align: justify;\">Service and its original content (excluding Content provided by users), features and functionality are and will remain the exclusive property of Show Offf LLC and its licensors. Service is protected by copyright, trademark, and other laws of and foreign countries. Our trademarks may not be used in connection with any product or service without the prior written consent of Show Offf LLC. </p><h4>10. Copyright Policy</h4><p style=\"text-align: justify;\">We respect the intellectual property rights of others. It is our policy to respond to any claim that Content posted on Service infringes on the copyright or other intellectual property rights (“Infringement”) of any person or entity. </p><p style=\"text-align: justify;\">If you are a copyright owner, or authorized on behalf of one, and you believe that the copyrighted work has been copied in a way that constitutes copyright infringement, please submit your claim via email to info@showofff.io, with the subject line: “Copyright Infringement” and include in your claim a detailed description of the alleged Infringement as detailed below, under “DMCA Notice and Procedure for Copyright Infringement Claims” </p><p style=\"text-align: justify;\">You may be held accountable for damages (including costs and attorneys’ fees) for misrepresentation or bad-faith claims on the infringement of any Content found on and/or through Service on your copyright. </p><h4>11. DMCA Notice and Procedure for Copyright Infringement Claims</h4><p style=\"text-align: justify;\">You may submit a notification pursuant to the Digital Millennium Copyright Act (DMCA) by providing our Copyright Agent with the following information in writing (see 17 U.S.C 512(c)(3) for further detail): </p><p style=\"text-align: justify;\">0.1. an electronic or physical signature of the person authorized to act on behalf of the owner of the copyright’s interest; </p><p style=\"text-align: justify;\">0.2. a description of the copyrighted work that you claim has been infringed, including the URL (i.e., web page address) of the location where the copyrighted work exists or a copy of the copyrighted work; </p><p style=\"text-align: justify;\">0.3. identification of the URL or other specific location on Service where the material that you claim is infringing is located; </p><p style=\"text-align: justify;\">0.4. your address, telephone number, and email address; </p><p style=\"text-align: justify;\">0.5. a statement by you that you have a good faith belief that the disputed use is not authorized by the copyright owner, its agent, or the law; </p><p style=\"text-align: justify;\">0.6. a statement by you, made under penalty of perjury, that the above information in your notice is accurate and that you are the copyright owner or authorized to act on the copyright owner’s behalf. </p><p style=\"text-align: justify;\">You can contact our Copyright Agent via email at info@showofff.io. </p><h4>12. Error Reporting and Feedback</h4><p style=\"text-align: justify;\">You may provide us either directly at info@showofff.io or via third party sites and tools with information and feedback concerning errors, suggestions for improvements, ideas, problems, complaints, and other matters related to our Service (“Feedback”). You acknowledge and agree that: (i) you shall not retain, acquire or assert any intellectual property right or other right, title or interest in or to the Feedback; (ii) Company may have development ideas similar to the Feedback; (iii) Feedback does not contain confidential information or proprietary information from you or any third party; and (iv) Company is not under any obligation of confidentiality with respect to the Feedback. In the event the transfer of the ownership to the Feedback is not possible due to applicable mandatory laws, you grant Company and its affiliates an exclusive, transferable, irrevocable, free-of-charge, sub-licensable, unlimited and perpetual right to use (including copy, modify, create derivative works, publish, distribute and commercialize) Feedback in any manner and for any purpose. </p><h4>13. Links To Other Web Sites</h4><p style=\"text-align: justify;\">Our Service may contain links to third party web sites or services that are not owned or controlled by Show Offf LLC. </p><p style=\"text-align: justify;\">Show Offf LLC has no control over, and assumes no responsibility for the content, privacy policies, or practices of any third party web sites or services. We do not warrant the offerings of any of these entities/individuals or their websites. </p><p style=\"text-align: justify;\">For example, the outlined Terms of Service have been created using PolicyMaker.io, a free web application for generating high-quality legal documents. PolicyMaker’s free Terms and Conditions generator is an easy-to-use free tool for creating an excellent standard Terms of Service template for a website, blog, e-commerce store or app. </p><p style=\"text-align: justify;\">YOU ACKNOWLEDGE AND AGREE THAT COMPANY SHALL NOT BE RESPONSIBLE OR LIABLE, DIRECTLY OR INDIRECTLY, FOR ANY DAMAGE OR LOSS CAUSED OR ALLEGED TO BE CAUSED BY OR IN CONNECTION WITH USE OF OR RELIANCE ON ANY SUCH CONTENT, GOODS OR SERVICES AVAILABLE ON OR THROUGH ANY SUCH THIRD PARTY WEB SITES OR SERVICES. </p><p style=\"text-align: justify;\">WE STRONGLY ADVISE YOU TO READ THE TERMS OF SERVICE AND PRIVACY POLICIES OF ANY THIRD PARTY WEB SITES OR SERVICES THAT YOU VISIT. </p><h4>14. Disclaimer Of Warranty</h4><p style=\"text-align: justify;\">THESE SERVICES ARE PROVIDED BY COMPANY ON AN “AS IS” AND “AS AVAILABLE” BASIS. COMPANY MAKES NO REPRESENTATIONS OR WARRANTIES OF ANY KIND, EXPRESS OR IMPLIED, AS TO THE OPERATION OF THEIR SERVICES, OR THE INFORMATION, CONTENT OR MATERIALS INCLUDED THEREIN. YOU EXPRESSLY AGREE THAT YOUR USE OF THESE SERVICES, THEIR CONTENT, AND ANY SERVICES OR ITEMS OBTAINED FROM US IS AT YOUR SOLE RISK. </p><p style=\"text-align: justify;\">NEITHER COMPANY NOR ANY PERSON ASSOCIATED WITH COMPANY MAKES ANY WARRANTY OR REPRESENTATION WITH RESPECT TO THE COMPLETENESS, SECURITY, RELIABILITY, QUALITY, ACCURACY, OR AVAILABILITY OF THE SERVICES. WITHOUT LIMITING THE FOREGOING, NEITHER COMPANY NOR ANYONE ASSOCIATED WITH COMPANY REPRESENTS OR WARRANTS THAT THE SERVICES, THEIR CONTENT, OR ANY SERVICES OR ITEMS OBTAINED THROUGH THE SERVICES WILL BE ACCURATE, RELIABLE, ERROR-FREE, OR UNINTERRUPTED, THAT DEFECTS WILL BE CORRECTED, THAT THE SERVICES OR THE SERVER THAT MAKES IT AVAILABLE ARE FREE OF VIRUSES OR OTHER HARMFUL COMPONENTS OR THAT THE SERVICES OR ANY SERVICES OR ITEMS OBTAINED THROUGH THE SERVICES WILL OTHERWISE MEET YOUR NEEDS OR EXPECTATIONS. </p><p style=\"text-align: justify;\">COMPANY HEREBY DISCLAIMS ALL WARRANTIES OF ANY KIND, WHETHER EXPRESS OR IMPLIED, STATUTORY, OR OTHERWISE, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, AND FITNESS FOR PARTICULAR PURPOSE. </p><p style=\"text-align: justify;\">THE FOREGOING DOES NOT AFFECT ANY WARRANTIES WHICH CANNOT BE EXCLUDED OR LIMITED UNDER APPLICABLE LAW. </p><h4>15. Limitation Of Liability</h4><p style=\"text-align: justify;\">EXCEPT AS PROHIBITED BY LAW, YOU WILL HOLD US AND OUR OFFICERS, DIRECTORS, EMPLOYEES, AND AGENTS HARMLESS FOR ANY INDIRECT, PUNITIVE, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGE, HOWEVER IT ARISES (INCLUDING ATTORNEYS’ FEES AND ALL RELATED COSTS AND EXPENSES OF LITIGATION AND ARBITRATION, OR AT TRIAL OR ON APPEAL, IF ANY, WHETHER OR NOT LITIGATION OR ARBITRATION IS INSTITUTED), WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE, OR OTHER TORTIOUS ACTION, OR ARISING OUT OF OR IN CONNECTION WITH THIS AGREEMENT, INCLUDING WITHOUT LIMITATION ANY CLAIM FOR PERSONAL INJURY OR PROPERTY DAMAGE, ARISING FROM THIS AGREEMENT AND ANY VIOLATION BY YOU OF ANY FEDERAL, STATE, OR LOCAL LAWS, STATUTES, RULES, OR REGULATIONS, EVEN IF COMPANY HAS BEEN PREVIOUSLY ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. EXCEPT AS PROHIBITED BY LAW, IF THERE IS LIABILITY FOUND ON THE PART OF COMPANY, IT WILL BE LIMITED TO THE AMOUNT PAID FOR THE PRODUCTS AND/OR SERVICES, AND UNDER NO CIRCUMSTANCES WILL THERE BE CONSEQUENTIAL OR PUNITIVE DAMAGES. SOME STATES DO NOT ALLOW THE EXCLUSION OR LIMITATION OF PUNITIVE, INCIDENTAL OR CONSEQUENTIAL DAMAGES, SO THE PRIOR LIMITATION OR EXCLUSION MAY NOT APPLY TO YOU. </p><h4>16. Termination</h4><p style=\"text-align: justify;\">We may terminate or suspend your account and bar access to Service immediately, without prior notice or liability, under our sole discretion, for any reason whatsoever and without limitation, including but not limited to a breach of Terms. </p><p style=\"text-align: justify;\">If you wish to terminate your account, you may simply discontinue using Service. </p><p style=\"text-align: justify;\">All provisions of Terms which by their nature should survive termination shall survive termination, including, without limitation, ownership provisions, warranty disclaimers, indemnity and limitations of liability. </p><h4>17. Governing Law</h4><p style=\"text-align: justify;\">These Terms shall be governed and construed in accordance with the laws of United States of America(USA), which governing law applies to agreement without regard to its conflict of law provisions. </p><p style=\"text-align: justify;\">Our failure to enforce any right or provision of these Terms will not be considered a waiver of those rights. If any provision of these Terms is held to be invalid or unenforceable by a court, the remaining provisions of these Terms will remain in effect. These Terms constitute the entire agreement between us regarding our Service and supersede and replace any prior agreements we might have had between us regarding Service. </p><h4>18. Changes To Service</h4><p style=\"text-align: justify;\">We reserve the right to withdraw or amend our Service, and any service or material we provide via Service, in our sole discretion without notice. We will not be liable if for any reason all or any part of Service is unavailable at any time or for any period. From time to time, we may restrict access to some parts of Service, or the entire Service, to users, including registered users. </p><h4>19. Amendments To Terms</h4><p style=\"text-align: justify;\">We may amend Terms at any time by posting the amended terms on this site. It is your responsibility to review these Terms periodically. </p><p style=\"text-align: justify;\">Your continued use of the Platform following the posting of revised Terms means that you accept and agree to the changes. You are expected to check this page frequently so you are aware of any changes, as they are binding on you. </p><p style=\"text-align: justify;\">By continuing to access or use our Service after any revisions become effective, you agree to be bound by the revised terms. If you do not agree to the new terms, you are no longer authorized to use Service. </p><h4>20. Waiver And Severability</h4><p style=\"text-align: justify;\">No waiver by Company of any term or condition set forth in Terms shall be deemed a further or continuing waiver of such term or condition or a waiver of any other term or condition, and any failure of Company to assert a right or provision under Terms shall not constitute a waiver of such right or provision. </p><p style=\"text-align: justify;\">If any provision of Terms is held by a court or other tribunal of competent jurisdiction to be invalid, illegal or unenforceable for any reason, such provision shall be eliminated or limited to the minimum extent such that the remaining provisions of Terms will continue in full force and effect. </p><h4>21. Acknowledgement</h4><p style=\"text-align: justify;\">BY USING SERVICE OR OTHER SERVICES PROVIDED BY US, YOU ACKNOWLEDGE THAT YOU HAVE READ THESE TERMS OF SERVICE AND AGREE TO BE BOUND BY THEM. </p><h4>22. Contact Us</h4><p style=\"text-align: justify;\">Please send your feedback, comments, requests for technical support by email: <a href=\"mailto:info@showofff.io.\">info@showofff.io.</a></p>', '1.0.0', '2020-04-04 06:19:08', '2021-07-04 21:19:46');

-- --------------------------------------------------------

--
-- Table structure for table `contact_uses`
--

CREATE TABLE `contact_uses` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_uses`
--

INSERT INTO `contact_uses` (`id`, `email`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'aa1@bb.com', 'test', 274, '2021-07-05 14:05:24', '2021-07-05 14:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `fcm_token` text,
  `is_logged_in` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0="No", 1="Yes"',
  `online` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1="Yes", 2="No"',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `user_id`, `device_id`, `fcm_token`, `is_logged_in`, `online`, `created_at`, `updated_at`) VALUES
(14, 255, '3e8d1f433e669639', 'eynPmh4CSVevTT2eWshbJV:APA91bHtrtNuwxRi5SDYEnKgLXM1SUo4rHjQF77XgIsFJ4Ik0guSxe4mf_ijJ_Gklb6a5DExsmLo3510Q0S6E8iq03lThyroMbh50AwMfXuQ5cuQEotfiYhutnzOfaxIutyvfdjPXlpN', 0, 1, '2020-04-22 00:47:40', '2020-04-22 00:47:40'),
(2, 261, '986789907897', 'IUN876786ynyiuhuhmiuh', 0, 1, '2020-04-18 11:46:22', '2020-04-18 11:46:22'),
(31, 255, 'ae71bcc30900d071', 'ft5ngyPUSG-Go4J-WE-3hy:APA91bHugfsX5SkDLV1JVJ-Or_T06n6b7mdur85eb5dcYSUmWS0p1CtDQfyuCTThUW1bTfDWZK3sBzZxZYSZjlSj5Xf8nHkhjDzKgNCka1EGLthmdLDVRoYn3MV-1bShZWQjU7GfhLrX', 0, 1, '2020-04-23 15:17:39', '2020-04-23 15:17:39'),
(13, 255, '3e8d1f433e669639', 'dHx7OLSPRaG5qTVZkEh_GO:APA91bGzKf1J7otibdyw7fnTRzjP5LtbNjeo9hT3tMYGIBKoH_mLNPrmm2fngXgw4yRLGtXrZDxlUEYD_rzsqIv-4qBup4tArDOxiKRV8ahFUPJDP9GzI0ZL75gjqK89FwFCaH-d1Ejc', 0, 1, '2020-04-22 00:44:56', '2020-04-22 00:44:56'),
(11, 262, '5c6b996d6b3e401d', 'dbb3EdxsR-m5LTxj3KTq5V:APA91bECI9MFUpo-hiavxswWBUHjJZQonlXubF7D4XWKwjaWeqEPKFRPY68O8imtvsja7X1Kyofy6EbnGWUrr3R_SxFP7ZVprmeSkYv9wiXQRxNoPeJKsEsTOQbisrfX3mTmbjkMKRa-', 0, 1, '2020-04-21 18:52:11', '2020-04-21 18:52:11'),
(6, 267, '3e8d1f433e669639', 'fLdNye5WT8CSCdcsRmu-u-:APA91bE4ZZXskz2fx4T7vte1ysV7m7OjqIjGKVShegRvQ_O3LgAjIN4RsE6CpwB1YzxmVpNqhqUgEP0j92rquAH3kM6fz-znNw6QjlUWifhU0Cvhu1IOphF5A6G48SMIo1260KsjJr9M', 0, 1, '2020-04-20 23:48:26', '2020-04-20 23:48:26'),
(7, 255, '3e8d1f433e669639', 'fLdNye5WT8CSCdcsRmu-u-:APA91bE4ZZXskz2fx4T7vte1ysV7m7OjqIjGKVShegRvQ_O3LgAjIN4RsE6CpwB1YzxmVpNqhqUgEP0j92rquAH3kM6fz-znNw6QjlUWifhU0Cvhu1IOphF5A6G48SMIo1260KsjJr9M', 0, 1, '2020-04-20 23:57:23', '2020-04-20 23:57:23'),
(12, 257, 'c8f344c2cacb263e', 'e3spbCpkS8qHEFiXmuLJEG:APA91bFSqL7uMj8tb3j4AmH3Jk04mr-K6sN4z1hc9Jk9Dg3pvIGXrG0UtJHNtfML3XjVnfci_X_imF_D5cN5Q7xyog0KUTxGWNWJF-7d-Sm275ZEM_oQWNjAYs0DqScEjYHr7vrQK9FH', 0, 1, '2020-04-21 18:52:22', '2020-04-21 18:52:22'),
(9, 255, '3e8d1f433e669639', 'dFJThsfFT7W_7w4BD_8ANZ:APA91bHkTbLYahzg1vt0YkaNMzFoY8gEu-eSpCV5xoC4AZzqhFxsEwwjNucH5aXBhVeQbin2nfaoPU1dZ5Xay0iwdU9-5IDUO-RssaNQf7ZsMuZ5Z0mo7Hd3JETtcDNrmINGgnLGDpCg', 0, 1, '2020-04-21 00:42:13', '2020-04-21 00:42:13'),
(10, 255, '3e8d1f433e669639', 'e_vXBAPDQI2C4GtyDgrQ8T:APA91bHTX-OIap005cWm95nRGpxdDGnjiUy2ZmlscqgENH7RiR-w98tiZ8uEXGJh1d-imTqJFdlC3IouAL1zZ1w8mDmR4__OXJGISphhzNDylRodQcVPdNqml9EPMrti7OO0uWWSkcIq', 0, 1, '2020-04-21 14:58:03', '2020-04-21 14:58:03'),
(30, 267, 'CF2772E9-516F-4751-8ECB-D8E00E2983F1', 'dPpC0bHtOhA:APA91bG_gbrfAh4TSdPCq37BxvRWb2-or9XP0b-4ZR54oNx_SgNpVeaOGD5xUtAeI-tIemPolQF6FsTyDcxhb_au5NKbskRdbdJ9Q4_vpkq5LAx6HUxl2EJHrLVKebl2vQuTmFmTrgRb', 0, 1, '2020-04-23 15:12:22', '2020-04-23 15:12:22'),
(29, 225, 'E85911E9-F1D3-4C05-A686-E0C1F3FE4FF7', 'dIeI1KK2mqU:APA91bHVkz9TGDXhFLK5ti9IDPFapQJ_A-RumwVmYEvo_87GzIKnRwBcwy4hXi0R1nLmkp2MWb3u-gc5YarjzhsqPxNzQql-FjunpTr4t5LDy8w3s5uj7NYDwmjbheQo3Kv7snuq44DV', 0, 1, '2020-04-23 12:37:52', '2020-04-23 12:37:52'),
(17, 255, 'CF2772E9-516F-4751-8ECB-D8E00E2983F1', 'f4H9vTer5Yc:APA91bHzuzstcLmGJOPnD3aktstuTA5TvY6UzNgXcnmt4FplFeKT-3ntIpwGccH8M1Q6gaoWEzSDmAX4_fdmQMD8Bie-ATAr6o6qZhPVjHhGQj1Kc1D-fQsPOdhaHIoF2X88wDu87XaN', 0, 1, '2020-04-22 12:59:37', '2020-04-22 12:59:37'),
(18, 258, 'CC11C0D5-F3D3-43DF-92D3-10CF4A72055A', 'flWxXFgZ4-M:APA91bET0z5qfWb0Izifd4y8yBfJAtvkMLASE3G3qqh5C4V9qq2Bk3KPlYhAz83B7XjtL_Zd9ZXcLQYsrgKMHnh_9dzO_-egl9jwwOECdlFD2HIv2pqGv3CxOBcxd9AMmqU-N1cRXOaS', 0, 1, '2020-04-22 13:27:37', '2020-04-22 13:27:37'),
(19, 263, '1d23fedb7f7a0d32', 'ckhRWb0sQBaPfhwZRmT0e6:APA91bHjpnpNbib8tCJ6OFozRTMrZrS4PSBKXL3_Lo_IkgxJc3p00soGu_AFVkKJS2b_nZzCkAuWDyFnbLG9VmO2ToeDHhuQW6Rlu_hkxYpgbHQMkaNaAhFPdRka9s5lREKCZt6mgDXO', 0, 1, '2020-04-22 18:03:50', '2020-04-22 18:03:50'),
(20, 263, '971b7a767155d525', 'eDdEZQ63QK6FxfJ1Y5lS3s:APA91bERYwcisBtYWrnzxWE7oc9Wr7eeJsi_bFiWGSKDnSu0lbN9HerJhC3WVh20DSKzAZzjC7mbfoUGCYjCRlhjJkr67BHfCddHN-IkTFV3TwYSKnQCM_YCt78QZHbZO9E19kUpz24x', 0, 1, '2020-04-22 18:08:50', '2020-04-22 18:08:50'),
(21, 259, 'bcf612ae46915ff6', 'cOAB9D10QFSf_PuVFAssF4:APA91bHMgzjcpnnL2lJ3XsgTDq8iSfvEO8TLZq5yYsKCBdbmct6IWlnXQeIBDNhBsD2lutBUVyUnPpu6cd8nunYnpt4ysTbRHzHd9Otu0A62FHu4fIf56ecylxKCRwMcmJnVQQmHYgvq', 0, 1, '2020-04-22 18:56:37', '2020-04-22 18:56:37'),
(22, 255, '3e8d1f433e669639', 'cT_OMCwzRpCDGC9c7ah2fI:APA91bGuAPWMIatjBZg4vZs7nzyCVyVxM69XcfBTjZRVmuqiBcYLVQqR8fYPZdsM0FBPbJ2q4ykjz-b-iAUsNfo69ktKxRhZRlyVfBy0qjy2SxrGYYUAg34N39nZUhqmAeS1_snxgI7_', 0, 1, '2020-04-22 19:47:54', '2020-04-22 19:47:54'),
(23, 255, '3e8d1f433e669639', 'eJXbAoofQVGw0pvRPX-Uce:APA91bGK2SPZ1Q8hPNefhVRcXQOlvIYnB8aJTwL7dQ4KYmWVDsdl9IZdznd8-SjeKZnrAXVR4APp4PCFdybUGsrkO_Be_Nfx7IVQcW_aeJEEY9Uxs3y4FP-GVRqVkjzbNhxbD9AUSdw_', 0, 1, '2020-04-22 19:54:08', '2020-04-22 19:54:08'),
(24, 263, '45120ecf55ccdd8a', 'dgS2v977Q9SWWZtoYIZiGX:APA91bG7lRobr-XA2sq_eIbiQtc8PWKgS-itXODzMguI02zlliEzS9RqiBeiX8ROHUSS3Lj1hrZl1xRq7CdAxA4XRLWd3CzX4jZapGE6YxVx8wYLk47EeA4cTb6eQbRRPIphqOGrvtrx', 0, 1, '2020-04-22 20:09:25', '2020-04-22 20:09:25'),
(25, 259, '0f58d1636dea8f9e', 'fWColb0PS4mrhZhdk4FTAA:APA91bGaR07ac9o0ivBiit0owB-R6RlDdv42DIMD9yI_SkioGwjyS_BOegA37FxpXqnxW1Fx5Vd6JkcwXRkx0GR_TLd5SB1ZeSjh4skTIO3TRl8ux1DKmi7bmZaQUlswPwGu65rY6lmK', 0, 1, '2020-04-22 20:10:06', '2020-04-22 20:10:06'),
(26, 267, 'CF2772E9-516F-4751-8ECB-D8E00E2983F1', 'f4H9vTer5Yc:APA91bHzuzstcLmGJOPnD3aktstuTA5TvY6UzNgXcnmt4FplFeKT-3ntIpwGccH8M1Q6gaoWEzSDmAX4_fdmQMD8Bie-ATAr6o6qZhPVjHhGQj1Kc1D-fQsPOdhaHIoF2X88wDu87XaN', 0, 1, '2020-04-22 21:02:29', '2020-04-22 21:02:29'),
(27, 259, '0f58d1636dea8f9e', 'e1X6NBjjSuiPDhQAViTrJW:APA91bFLkwHdxodxh-aFHuN865ZEq4GMZ5vP-zXHat5DXvwhoEcwSMxhGR2BObCwEw3bWmBXjC5fJleqEgSvJCMrY_PVSvx7xmeBP-1INB11XIDj_enPgi9TOPZSQEOeuK4oUzkQtzXu', 0, 1, '2020-04-22 21:36:55', '2020-04-22 21:36:55'),
(28, 255, '3e8d1f433e669639', 'djqEpnFjQtqbeoQ2C5pnqo:APA91bHM-hgi-_jlMO83C7bzcRCyaBeuLOHBCs3EpzPbIjlnL383nC_7EhTWGbHd47HhlEzBA35W1oFKXsqEk53-TNvBzSUvvHryz6AjnERjLtfZPP8Lm_swztECMWhfR1NMbb5XY3BW', 0, 1, '2020-04-23 11:23:29', '2020-04-23 11:23:29'),
(32, 225, 'E85911E9-F1D3-4C05-A686-E0C1F3FE4FF7', 'e-1cGqlhlxc:APA91bHHKp1npX1YxSwOmXASp0vFaV9Dwp4NOijign5JegnfoHm37OY1d7Gc8sKHt5F4vM2Oo_6U-OdrtTR02NgTBUONXvBZ5kCZaOIudNdQvyz9zaTSnEC94zuLw4P6XAkhsLOCME8d', 0, 1, '2020-04-23 16:49:17', '2020-04-23 16:49:17'),
(33, 225, 'E85911E9-F1D3-4C05-A686-E0C1F3FE4FF7', 'dfn_nq1fRAw:APA91bFhMoNyZOuvBrLH3OXmfdrL3Vq0bteUivMHqwy_2bUk1SZo7PEQGBvWECJUDZX9r1k_SfcLFcNjQYURecIDnLEz0hztgVnoSKokUs2MOIXzQkP7ICK_RuxJNInfCTP1D3WFHIId', 0, 1, '2020-04-24 00:14:08', '2020-04-24 00:14:08'),
(34, 259, '96dde52f6ae25266', 'ebfGA1wSRni4PKDEKZx72K:APA91bGMcP2XqvabRq2wARTN8G28YaQND3ThwSZR826ZnvQ2W9kaZTV1KKge6yrB5w9MGY5PlEOo9dhD8y_uHTcml3GUUOkzyoYQU4fkEWAmoXB2_U0updL4ZrzKKqVdfDNiYSRm58-g', 0, 1, '2020-04-24 23:25:06', '2020-04-24 23:25:06'),
(35, 267, '3e8d1f433e669639', 'f9p17epwTP6iwQGhqJoB5l:APA91bHHbn0WnO_ixY73oMMR8roMFmeNx4GraMA3_gRlMHBNAaC8eWxOBcWSmLO2glBLUdVcLZ5AZZs4K4TkC490-4XiiX6cATuljYnw0tm0S0YZoMYd9JOI8lIpg08TMacnHFGDS6tr', 0, 1, '2020-04-25 11:55:46', '2020-04-25 11:55:46'),
(36, 255, 'CF2772E9-516F-4751-8ECB-D8E00E2983F1', 'eOdfi6s4n4k:APA91bFwq9enl378WeTLAriJJ3x-EKYSVsdP6YWz4cIXAyx0NRmo1b0hfbR0ytTxA2h-8US0MF1qQVvYrrkKmjk-pS8mjaCcWMCG5p8TRTqarxQ1_MgRjHIxNmIS4wy3PAE0im4iiB3_', 0, 1, '2020-04-26 14:18:58', '2020-04-26 14:18:58'),
(37, 272, 'ae71bcc30900d071', 'cEQtXN_7S8m0NYOdM5zEE-:APA91bFw5bvbizuKWMQo2cLwNp-aOfdQS1OWhmX7o55J894f1rlYXyJOvm9dDkaLUx7ac-Gwhb1E5f0OLnGps2mZMDaYr0iJ_PaJ5M0Ma6xW2u8Aj9ZV9VWMCfmx2Tk5nDJX9I8iT1k3', 0, 1, '2020-04-26 14:30:41', '2020-04-26 14:30:41'),
(38, 272, 'ae71bcc30900d071', 'eVH18u6sRPChjXEjOTrPoR:APA91bEx9Zqyc1gGWLa2V4QvFjsqgn82EVKQ-A1ucdOfvc0yU_1f2clNthNddNSxHWLsssb_W5EKj1FwbdZF1EP7lY6tX8QEh95Geq2lOX-vNGv1kRyhA2ocU5oTbsLTRqd5gIlbsjFT', 0, 1, '2020-04-26 16:38:09', '2020-04-26 16:38:09'),
(39, 255, 'CF2772E9-516F-4751-8ECB-D8E00E2983F1', 'efGtR9mVLZE:APA91bGCeeOjSRHOiwMOvrfOn1iYttixG4hgm-SUNP6ewxnWvfoN79henPoT2KAMA5nSAvaxo3-Korgg2eC6faw8mQ3VXjFeQ_sVBf0L10a5IDGKr5RN0fsBll_1zQ_of-apvkH7noKL', 0, 1, '2020-05-02 23:47:13', '2020-05-02 23:47:13'),
(40, 258, 'CC11C0D5-F3D3-43DF-92D3-10CF4A72055A', 'eQ8LyzMHasg:APA91bF4M9u9_1AEG6Ed4gemNuzw0gdxAGv1JzIM_6yHtE68tfhQTVdOitMuAQq_tv1iO-YgL5seztP80ogMBWBNRZDBcgMHN4Zd4xrkWUK88wKTCxNit70PD4ShERbX5CsNV6QWk-13', 0, 1, '2020-05-03 02:01:37', '2020-05-03 02:01:37'),
(41, 265, 'C465A98F-677B-4ACD-BC8E-48DE8CBBF087', 'd20AgDp1i2o:APA91bH34rQmjIRmjrTUzYrQ-u1jONCGtemHERkaiqNSbT5m-gyWu5riHPsg511zFX8thQftQImCveeodGedduKssgx0rv50yk2-xalls55Zwv-87-E-B8lGd5cC5neIuYZyJXQa_h6T', 0, 1, '2020-05-03 05:18:49', '2020-05-03 05:18:49'),
(42, 273, '5bb8a9aa68edee07', 'dwiz5yanRLeCrP3CjBb1nt:APA91bERcNYH9t1JsvNfkDIXfznKtFIcRlQXsaqKINW82tNYHomjq4xh8lC3TNp5Nl-KguQ9biOCy5tRCtdOFYDbvVEjCJSY6Gunbtc2okFV6NvxYiIIDTKFpMRU-jiDnTh24YRc_U-k', 0, 1, '2021-07-03 00:01:44', '2021-07-03 00:01:44'),
(43, 273, '93496550-D9B2-4463-BBCC-8BC26C8F39D7', 'c2bxvSJGzgA:APA91bG-xUUUUgnAJaFskhCXq2xqURAVInCpxaHpP0dntpoaWBvENEaRkbUnPG7zYA-ZpVSnebrzhhu_DyyDc9Xri8u0IBzh_ARewLSfKCc1yqa_gnNRZtSFpfuF_1hOwoZFMkWvdd0v', 0, 1, '2021-07-03 07:13:55', '2021-07-03 07:13:55'),
(44, 273, '1231629269383b83', 'cqNlYWLvTQ-rRBd3VtbnS3:APA91bHKN8eyFLFco2ak_mSEaX40RjrRcEH868aTed-2yA3pe55jR_Fj40YL2Q2SxoIFYXhD-AAvZO1VODo0p8ybWnRfC4VWr8ZJGun3WeN8UUtLhn5_A7Pe1sNd1pJWCIDfsxZqKpgp', 0, 1, '2021-07-05 13:37:38', '2021-07-05 13:37:38'),
(45, 273, '1231629269383b83', 'fT3zKP35S7qAR4lnHzSGB6:APA91bGK5GaOsfTn3SIsiQJ1ywzs9hNEuxXNgeDb8Ohlz6DWb0N7i7FL-SZHfAr7T4VIbHayeXPVoJN-yID8cIuypKzVya2VCQGalGQG4z5zSPGZNwi7Wwi71H9HsMkZS9EMV3dWmiTQ', 0, 1, '2021-07-05 23:34:06', '2021-07-05 23:34:06'),
(46, 274, '1231629269383b83', 'fT3zKP35S7qAR4lnHzSGB6:APA91bGK5GaOsfTn3SIsiQJ1ywzs9hNEuxXNgeDb8Ohlz6DWb0N7i7FL-SZHfAr7T4VIbHayeXPVoJN-yID8cIuypKzVya2VCQGalGQG4z5zSPGZNwi7Wwi71H9HsMkZS9EMV3dWmiTQ', 0, 1, '2021-07-06 15:07:00', '2021-07-06 15:07:00'),
(47, 273, '3dbb97248ae0747d', 'e7Q19_I8QGik31yrEJyOfg:APA91bFN9PQ4XjCI7oOXXjOiJr5DciSXxDz0mICmZM9XyZzUX9xMEDP81pzPNvRPvM0gx6SDT4MtERI9tLYM_JoJ_JrAGwoMErykOY5dIm_XnlyrxWpKTcCvrHA7ir-OrGnOxkNnkQmV', 0, 1, '2021-07-07 06:18:46', '2021-07-07 06:18:46');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filter_settings`
--

CREATE TABLE `filter_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `most_recent` tinyint(4) DEFAULT '0',
  `following` tinyint(4) DEFAULT '0',
  `nearest` tinyint(4) DEFAULT '0',
  `liked` tinyint(4) DEFAULT '0',
  `comments` tinyint(4) DEFAULT '0',
  `crowded` tinyint(4) DEFAULT '0',
  `quiet` tinyint(4) DEFAULT '0',
  `fun_limit` tinyint(4) DEFAULT '0',
  `last_twenty_four` tinyint(4) DEFAULT '0',
  `last_forty_eight` tinyint(4) DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_settings`
--

INSERT INTO `filter_settings` (`id`, `most_recent`, `following`, `nearest`, `liked`, `comments`, `crowded`, `quiet`, `fun_limit`, `last_twenty_four`, `last_forty_eight`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 259, '2021-07-05 10:04:19', '2021-07-05 10:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `follower_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `user_id`, `follower_id`, `created_at`, `updated_at`) VALUES
(64, 255, 225, '2020-04-10 10:19:05', '2020-04-10 10:19:05'),
(66, 257, 256, '2020-04-10 13:08:37', '2020-04-10 13:08:37'),
(69, 258, 255, '2020-04-10 16:52:10', '2020-04-10 16:52:10'),
(70, 258, 256, '2020-04-10 16:53:52', '2020-04-10 16:53:52'),
(71, 255, 255, '2020-04-10 17:26:08', '2020-04-10 17:26:08'),
(76, 255, 254, '2020-04-11 05:50:38', '2020-04-11 05:50:38'),
(77, 255, 259, '2020-04-11 05:53:21', '2020-04-11 05:53:21'),
(81, 225, 259, '2020-04-11 10:02:55', '2020-04-11 10:02:55'),
(84, 257, 259, '2020-04-11 11:40:40', '2020-04-11 11:40:40'),
(85, 257, 255, '2020-04-11 11:40:41', '2020-04-11 11:40:41'),
(86, 262, 257, '2020-04-11 12:07:12', '2020-04-11 12:07:12'),
(88, 254, 259, '2020-04-12 08:22:01', '2020-04-12 08:22:01'),
(89, 254, 256, '2020-04-12 08:22:04', '2020-04-12 08:22:04'),
(90, 254, 257, '2020-04-12 08:22:10', '2020-04-12 08:22:10'),
(91, 254, 260, '2020-04-12 08:22:15', '2020-04-12 08:22:15'),
(92, 260, 256, '2020-04-12 11:41:47', '2020-04-12 11:41:47'),
(97, 258, 260, '2020-04-12 12:11:48', '2020-04-12 12:11:48'),
(98, 257, 254, '2020-04-12 12:24:36', '2020-04-12 12:24:36'),
(100, 257, 262, '2020-04-12 15:45:36', '2020-04-12 15:45:36'),
(101, 260, 254, '2020-04-12 17:34:03', '2020-04-12 17:34:03'),
(102, 260, 255, '2020-04-12 17:36:18', '2020-04-12 17:36:18'),
(105, 260, 258, '2020-04-12 17:46:34', '2020-04-12 17:46:34'),
(118, 259, 257, '2020-04-13 10:38:15', '2020-04-13 10:38:15'),
(119, 265, 258, '2020-04-14 06:18:41', '2020-04-14 06:18:41'),
(124, 265, 259, '2020-04-14 07:10:58', '2020-04-14 07:10:58'),
(126, 265, 257, '2020-04-14 07:41:44', '2020-04-14 07:41:44'),
(127, 267, 265, '2020-04-14 19:29:28', '2020-04-14 19:29:28'),
(129, 258, 265, '2020-04-14 19:47:24', '2020-04-14 19:47:24'),
(132, 267, 255, '2020-04-14 20:00:27', '2020-04-14 20:00:27'),
(162, 225, 263, '2020-04-16 11:40:06', '2020-04-16 11:40:06'),
(164, 259, 225, '2020-04-16 13:38:38', '2020-04-16 13:38:38'),
(183, 258, 262, '2020-04-17 13:22:41', '2020-04-17 13:22:41'),
(184, 259, 268, '2020-04-18 09:31:10', '2020-04-18 09:31:10'),
(187, 269, 259, '2020-04-18 10:20:23', '2020-04-18 10:20:23'),
(189, 270, 259, '2020-04-18 10:51:17', '2020-04-18 10:51:17'),
(190, 261, 257, '2020-04-20 16:15:02', '2020-04-20 16:15:02'),
(191, 255, 267, '2020-04-20 17:59:02', '2020-04-20 17:59:02'),
(196, 263, 225, '2020-04-22 12:12:10', '2020-04-22 12:12:10'),
(197, 259, 255, '2020-04-22 14:29:28', '2020-04-22 14:29:28'),
(200, 261, 225, '2020-04-23 06:50:18', '2020-04-23 06:50:18'),
(202, 225, 255, '2020-04-23 09:13:45', '2020-04-23 09:13:45'),
(203, 259, 267, '2020-04-23 19:34:16', '2020-04-23 19:34:16'),
(204, 259, 261, '2020-04-23 19:36:27', '2020-04-23 19:36:27'),
(205, 272, 255, '2020-04-26 08:37:00', '2020-04-26 08:37:00'),
(206, 272, 267, '2020-04-26 08:37:03', '2020-04-26 08:37:03'),
(209, 265, 255, '2020-05-02 23:30:01', '2020-05-02 23:30:01'),
(210, 265, 267, '2020-05-02 23:54:37', '2020-05-02 23:54:37'),
(211, 265, 260, '2020-05-03 00:26:22', '2020-05-03 00:26:22'),
(212, 273, 225, '2021-07-02 21:19:05', '2021-07-02 21:19:05'),
(213, 273, 255, '2021-07-02 21:19:05', '2021-07-02 21:19:05'),
(215, 273, 274, '2021-07-07 08:11:01', '2021-07-07 08:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"displayName\":\"App\\\\Jobs\\\\ExpireStory\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ExpireStory\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\ExpireStory\\\":8:{s:7:\\\"payload\\\";a:1:{s:8:\\\"story_id\\\";i:96;}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";i:86400;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1625502981, 1625416581),
(2, 'default', '{\"displayName\":\"App\\\\Jobs\\\\ExpireStory\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ExpireStory\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\ExpireStory\\\":8:{s:7:\\\"payload\\\";a:1:{s:8:\\\"story_id\\\";i:97;}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";i:86400;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1625555803, 1625469403),
(3, 'default', '{\"displayName\":\"App\\\\Jobs\\\\ExpireStory\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ExpireStory\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\ExpireStory\\\":8:{s:7:\\\"payload\\\";a:1:{s:8:\\\"story_id\\\";i:98;}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";i:86400;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1625586930, 1625500530),
(4, 'default', '{\"displayName\":\"App\\\\Jobs\\\\ExpireStory\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ExpireStory\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\ExpireStory\\\":8:{s:7:\\\"payload\\\";a:1:{s:8:\\\"story_id\\\";i:99;}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";i:86400;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1625672743, 1625586343);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_01_20_074544_entrust_setup_tables', 1),
(9, '2019_01_21_062213_create_posts_table', 2),
(10, '2019_01_21_095213_create_post_comments_table', 3),
(11, '2019_01_21_095820_create_post_likes_table', 4),
(12, '2019_01_21_100011_create_followers_table', 5),
(13, '2019_01_21_100131_create_followings_table', 6),
(15, '2019_01_21_101114_create_profile_settings_table', 8),
(17, '2019_01_21_101415_create_privacy_policies_table', 9),
(18, '2019_01_21_101509_create_terms_conditions_table', 9),
(19, '2019_02_02_053110_create_app_users_table', 10),
(20, '2019_01_21_100250_create_contact_uses_table', 11),
(21, '2019_01_21_101320_create_feedbacks_table', 12),
(26, '2019_04_11_050014_create_ads_table', 13),
(27, '2019_05_25_074209_create_banner_managements_table', 14),
(28, '2019_06_16_101639_create_post_tags_table', 15),
(29, '2019_07_04_144217_create_post_files_table', 16),
(30, '2020_03_29_140058_create_posts_categories_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action_taken_by` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1="Comment on against a post", 2="Reply on against a comment", 3="Following",  4="Post Liked", ',
  `notification_obj` longtext COLLATE utf8mb4_unicode_ci,
  `read_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '''1=Already read, 0 = Not read''',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `action_taken_by`, `type`, `notification_obj`, `read_status`, `created_at`, `updated_at`) VALUES
(3, 234, 0, 3, '{\"follower_id\":214,\"message\":\"dev7 started following you.\"}', 0, '2020-04-09 06:26:21', '2020-04-09 06:26:21'),
(4, 240, 0, 3, '{\"follower_id\":236,\"message\":\"shamimpdf started following you.\"}', 0, '2020-04-09 10:23:04', '2020-04-09 10:23:04'),
(5, 214, 0, 1, '{\"post_id\":\"50\",\"message\":\"dev7 commented on your post.\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-09 12:27:20', '2020-04-09 12:27:20'),
(7, 214, 0, 1, '{\"post_id\":\"50\",\"message\":\"dev7 commented on your post.\",\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1586435423fp_wmg_brawlstars.png\"}', 0, '2020-04-09 12:30:23', '2020-04-09 12:30:23'),
(8, 214, 0, 1, '{\"post_id\":\"50\",\"message\":\"dev7 replied to your comment.\",\"comment_id\":114,\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-09 12:39:35', '2020-04-09 12:39:35'),
(9, 214, 0, 1, '{\"post_id\":\"50\",\"message\":\"dev7 commented on your post.\",\"comment_id\":115,\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-09 12:40:44', '2020-04-09 12:40:44'),
(10, 214, 0, 2, '{\"post_id\":\"50\",\"message\":\"dev7 replied to your comment.\",\"comment_id\":116,\"parent_id\":null,\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-09 12:41:34', '2020-04-09 12:41:34'),
(11, 214, 0, 2, '{\"post_id\":\"50\",\"message\":\"dev7 replied to your comment.\",\"comment_id\":117,\"parent_id\":\"15\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-09 12:42:31', '2020-04-09 12:42:31'),
(12, 214, 0, 2, '{\"post_id\":\"50\",\"message\":\"dev7 replied to your comment.\",\"comment_id\":118,\"parent_id\":\"15\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-09 12:49:32', '2020-04-09 12:49:32'),
(13, 214, 0, 2, '{\"post_id\":\"50\",\"message\":\"dev7 replied to your comment.\",\"comment_id\":119,\"parent_id\":\"17\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-09 12:50:48', '2020-04-09 12:50:48'),
(14, 225, 0, 2, '{\"post_id\":\"50\",\"message\":\"dev7 replied to your comment.\",\"comment_id\":122,\"parent_id\":\"17\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 1, '2020-04-09 12:54:49', '2020-04-12 11:12:10'),
(15, 225, 0, 4, '{\"post_id\":\"93\",\"message\":\"dev7 liked your 1 photos post.\"}', 1, '2020-04-09 13:48:33', '2020-04-12 11:16:29'),
(16, 214, 0, 4, '{\"post_id\":\"100\",\"message\":\"dev7 and 4 others liked your post.\"}', 0, '2020-04-09 13:53:29', '2020-04-09 13:53:29'),
(17, 225, 0, 4, '{\"post_id\":\"95\",\"message\":\"dev7 liked your 3 photos post.\"}', 1, '2020-04-09 13:56:24', '2020-04-12 11:16:47'),
(18, 225, 0, 4, '{\"post_id\":\"95\",\"message\":\"dev7 liked your 4 photos post.\"}', 1, '2020-04-09 13:57:43', '2020-04-12 11:16:59'),
(19, 214, 0, 4, '{\"post_id\":\"100\",\"message\":\"dev7 and 4 others liked your post.\"}', 0, '2020-04-09 14:02:36', '2020-04-09 14:02:36'),
(20, 214, 0, 4, '{\"post_id\":\"100\",\"message\":\"dev7 and 3 others liked your post.\"}', 0, '2020-04-09 14:03:34', '2020-04-09 14:03:34'),
(21, 236, 0, 4, '{\"post_id\":\"105\",\"message\":\"abcd liked your 1 photos post.\"}', 0, '2020-04-09 14:53:19', '2020-04-09 14:53:19'),
(22, 236, 0, 3, '{\"follower_id\":239,\"message\":\"abcd started following you.\"}', 0, '2020-04-09 15:55:21', '2020-04-09 15:55:21'),
(23, 236, 0, 4, '{\"post_id\":\"105\",\"message\":\"abcd liked your 1 photos post.\"}', 0, '2020-04-09 16:26:40', '2020-04-09 16:26:40'),
(24, 236, 0, 4, '{\"post_id\":\"105\",\"message\":\"abcd liked your 1 photos post.\"}', 0, '2020-04-09 16:26:42', '2020-04-09 16:26:42'),
(25, 220, 0, 3, '{\"follower_id\":222,\"message\":\"rayhan started following you.\"}', 0, '2020-04-09 16:30:08', '2020-04-09 16:30:08'),
(26, 220, 0, 3, '{\"follower_id\":222,\"message\":\"rayhan started following you.\"}', 0, '2020-04-09 16:30:13', '2020-04-09 16:30:13'),
(27, 236, 0, 3, '{\"follower_id\":239,\"message\":\"abcd started following you.\"}', 0, '2020-04-09 16:39:28', '2020-04-09 16:39:28'),
(28, 236, 0, 3, '{\"follower_id\":239,\"message\":\"abcd started following you.\"}', 0, '2020-04-09 16:39:38', '2020-04-09 16:39:38'),
(29, 236, 0, 3, '{\"follower_id\":239,\"message\":\"abcd started following you.\"}', 0, '2020-04-09 16:39:46', '2020-04-09 16:39:46'),
(30, 236, 0, 4, '{\"post_id\":\"105\",\"message\":\"abcd liked your 1 photos post.\"}', 0, '2020-04-09 16:41:17', '2020-04-09 16:41:17'),
(31, 236, 0, 3, '{\"follower_id\":239,\"message\":\"abcd started following you.\"}', 0, '2020-04-09 16:41:40', '2020-04-09 16:41:40'),
(32, 236, 0, 3, '{\"follower_id\":239,\"message\":\"abcd started following you.\"}', 0, '2020-04-09 16:42:48', '2020-04-09 16:42:48'),
(33, 236, 0, 3, '{\"follower_id\":239,\"message\":\"abcd started following you.\"}', 0, '2020-04-09 16:42:55', '2020-04-09 16:42:55'),
(34, 253, 0, 4, '{\"post_id\":\"107\",\"message\":\"sahed liked your 1 photos post.\"}', 0, '2020-04-09 19:04:50', '2020-04-09 19:04:50'),
(35, 253, 0, 4, '{\"post_id\":\"107\",\"message\":\"sahed liked your 1 photos post.\"}', 0, '2020-04-09 19:04:55', '2020-04-09 19:04:55'),
(36, 253, 0, 4, '{\"post_id\":\"107\",\"message\":\"sahed liked your 1 photos post.\"}', 0, '2020-04-09 19:04:57', '2020-04-09 19:04:57'),
(37, 239, 0, 4, '{\"post_id\":\"106\",\"message\":\"sahed liked your 1 photos post.\"}', 0, '2020-04-09 19:05:01', '2020-04-09 19:05:01'),
(38, 239, 0, 4, '{\"post_id\":\"106\",\"message\":\"sahed liked your 1 photos post.\"}', 0, '2020-04-09 19:05:07', '2020-04-09 19:05:07'),
(39, 239, 0, 4, '{\"post_id\":\"106\",\"message\":\"sahed liked your 1 photos post.\"}', 0, '2020-04-09 19:05:09', '2020-04-09 19:05:09'),
(40, 239, 0, 4, '{\"post_id\":\"106\",\"message\":\"sahed liked your 1 photos post.\"}', 0, '2020-04-09 19:05:11', '2020-04-09 19:05:11'),
(41, 240, 0, 4, '{\"post_id\":\"103\",\"message\":\"shamimpdf and 1 others liked your post.\"}', 0, '2020-04-10 04:39:21', '2020-04-10 04:39:21'),
(42, 240, 0, 3, '{\"follower_id\":236,\"message\":\"shamimpdf started following you.\"}', 0, '2020-04-10 04:39:24', '2020-04-10 04:39:24'),
(43, 253, 0, 3, '{\"follower_id\":236,\"message\":\"shamimpdf started following you.\"}', 0, '2020-04-10 04:45:43', '2020-04-10 04:45:43'),
(44, 239, 0, 3, '{\"follower_id\":236,\"message\":\"shamimpdf started following you.\"}', 0, '2020-04-10 04:50:34', '2020-04-10 04:50:34'),
(45, 239, 0, 4, '{\"post_id\":\"106\",\"message\":\"abcd liked your 1 photos post.\"}', 0, '2020-04-10 08:46:54', '2020-04-10 08:46:54'),
(46, 236, 0, 3, '{\"follower_id\":239,\"message\":\"abcd started following you.\"}', 0, '2020-04-10 09:05:17', '2020-04-10 09:05:17'),
(47, 239, 0, 4, '{\"post_id\":\"106\",\"message\":\"abcd liked your 1 photos post.\"}', 0, '2020-04-10 09:13:26', '2020-04-10 09:13:26'),
(48, 239, 0, 4, '{\"post_id\":\"106\",\"message\":\"abcd liked your 1 photos post.\"}', 0, '2020-04-10 09:13:48', '2020-04-10 09:13:48'),
(49, 239, 0, 4, '{\"post_id\":\"106\",\"message\":\"abcd liked your 1 photos post.\"}', 0, '2020-04-10 09:14:21', '2020-04-10 09:14:21'),
(50, 239, 0, 4, '{\"post_id\":\"106\",\"message\":\"abcd liked your 1 photos post.\"}', 0, '2020-04-10 09:15:16', '2020-04-10 09:15:16'),
(51, 239, 0, 4, '{\"post_id\":\"106\",\"message\":\"abcd liked your 1 photos post.\"}', 0, '2020-04-10 09:15:32', '2020-04-10 09:15:32'),
(52, 239, 0, 4, '{\"post_id\":\"106\",\"message\":\"abcd liked your 1 photos post.\"}', 0, '2020-04-10 09:28:06', '2020-04-10 09:28:06'),
(53, 239, 0, 4, '{\"post_id\":\"106\",\"message\":\"abcd liked your 1 photos post.\"}', 0, '2020-04-10 09:28:25', '2020-04-10 09:28:25'),
(54, 240, 0, 4, '{\"post_id\":\"103\",\"message\":\"abcd and 2 others liked your post.\"}', 0, '2020-04-10 09:29:10', '2020-04-10 09:29:10'),
(55, 240, 0, 3, '{\"follower_id\":239,\"message\":\"abcd started following you.\"}', 0, '2020-04-10 09:29:45', '2020-04-10 09:29:45'),
(56, 240, 0, 4, '{\"post_id\":\"102\",\"message\":\"abcd liked your post.\"}', 0, '2020-04-10 09:30:27', '2020-04-10 09:30:27'),
(57, 240, 0, 4, '{\"post_id\":\"102\",\"message\":\"abcd liked your post.\"}', 0, '2020-04-10 09:30:32', '2020-04-10 09:30:32'),
(58, 239, 0, 4, '{\"post_id\":\"106\",\"message\":\"abcd liked your 1 photos post.\"}', 0, '2020-04-10 09:32:12', '2020-04-10 09:32:12'),
(59, 239, 0, 4, '{\"post_id\":\"106\",\"message\":\"abcd liked your 1 photos post.\"}', 0, '2020-04-10 09:32:36', '2020-04-10 09:32:36'),
(60, 239, 0, 4, '{\"post_id\":\"106\",\"message\":\"abcd liked your 1 photos post.\"}', 0, '2020-04-10 09:34:07', '2020-04-10 09:34:07'),
(61, 225, 0, 3, '{\"follower_id\":255,\"message\":\"Thowhidur started following you.\"}', 1, '2020-04-10 10:19:05', '2020-04-12 16:24:12'),
(62, 256, 0, 4, '{\"post_id\":\"118\",\"message\":\" liked your 1 photos post.\"}', 0, '2020-04-10 10:49:24', '2020-04-10 10:49:24'),
(63, 256, 0, 4, '{\"post_id\":\"118\",\"message\":\" liked your 1 photos post.\"}', 0, '2020-04-10 10:49:28', '2020-04-10 10:49:28'),
(64, 225, 0, 4, '{\"post_id\":\"96\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 11:45:31', '2020-04-12 11:17:16'),
(65, 225, 0, 4, '{\"post_id\":\"96\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 11:45:36', '2020-04-12 11:17:39'),
(66, 225, 0, 4, '{\"post_id\":\"96\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 11:45:49', '2020-04-12 11:17:47'),
(67, 225, 0, 4, '{\"post_id\":\"95\",\"message\":\"aa liked your 4 photos post.\"}', 1, '2020-04-10 11:47:18', '2020-04-12 11:17:59'),
(68, 225, 0, 4, '{\"post_id\":\"97\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 11:49:02', '2020-04-12 11:43:11'),
(69, 225, 0, 4, '{\"post_id\":\"97\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 11:49:27', '2020-04-12 11:43:24'),
(70, 225, 0, 4, '{\"post_id\":\"98\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 11:58:19', '2020-04-12 11:53:58'),
(71, 225, 0, 4, '{\"post_id\":\"98\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 11:58:24', '2020-04-12 16:24:10'),
(72, 225, 0, 4, '{\"post_id\":\"96\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 11:58:27', '2020-04-12 16:24:07'),
(73, 225, 0, 4, '{\"post_id\":\"96\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 11:58:29', '2020-04-12 16:24:04'),
(74, 225, 0, 4, '{\"post_id\":\"95\",\"message\":\"aa liked your 4 photos post.\"}', 1, '2020-04-10 11:58:35', '2020-04-12 16:24:01'),
(75, 225, 0, 4, '{\"post_id\":\"95\",\"message\":\"aa liked your 4 photos post.\"}', 1, '2020-04-10 11:58:38', '2020-04-12 16:23:58'),
(76, 225, 0, 4, '{\"post_id\":\"98\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 11:59:22', '2020-04-12 16:23:56'),
(77, 225, 0, 4, '{\"post_id\":\"97\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 11:59:28', '2020-04-12 16:23:53'),
(78, 255, 0, 3, '{\"follower_id\":257,\"message\":\"rayhan started following you.\"}', 0, '2020-04-10 11:59:53', '2020-04-10 11:59:53'),
(79, 255, 0, 1, '{\"post_id\":\"116\",\"message\":\"rayhan commented on your post.\",\"comment_id\":123,\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1586520135picture_1586520100.jpg\"}', 0, '2020-04-10 12:02:15', '2020-04-10 12:02:15'),
(80, 255, 0, 1, '{\"post_id\":\"117\",\"message\":\"rayhan commented on your post.\",\"comment_id\":124,\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1586520282picture_1586520273.jpg\"}', 0, '2020-04-10 12:04:42', '2020-04-10 12:04:42'),
(81, 257, 0, 2, '{\"post_id\":\"117\",\"message\":\"rayhan replied to your comment.\",\"comment_id\":125,\"parent_id\":\"124\",\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1586520635picture_1586520631.jpg\"}', 0, '2020-04-10 12:10:35', '2020-04-10 12:10:35'),
(82, 255, 0, 1, '{\"post_id\":\"116\",\"message\":\"Thowhidur commented on your post.\",\"comment_id\":126,\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1586523038swift_file2.jpeg\"}', 0, '2020-04-10 12:50:38', '2020-04-10 12:50:38'),
(83, 256, 0, 3, '{\"follower_id\":257,\"message\":\" started following you.\"}', 0, '2020-04-10 13:08:37', '2020-04-10 13:08:37'),
(84, 225, 0, 4, '{\"post_id\":\"97\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 15:11:05', '2020-04-12 16:23:51'),
(85, 225, 0, 4, '{\"post_id\":\"97\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 15:11:15', '2020-04-12 16:23:48'),
(86, 225, 0, 4, '{\"post_id\":\"73\",\"message\":\"aa liked your 1 photos post.\"}', 1, '2020-04-10 15:14:19', '2020-04-12 16:23:45'),
(87, 256, 0, 4, '{\"post_id\":\"118\",\"message\":\"aa liked your 1 photos post.\"}', 0, '2020-04-10 15:14:27', '2020-04-10 15:14:27'),
(88, 255, 0, 4, '{\"post_id\":\"119\",\"message\":\"aa liked your 3 photos post.\"}', 0, '2020-04-10 15:28:13', '2020-04-10 15:28:13'),
(89, 255, 0, 4, '{\"post_id\":\"112\",\"message\":\"aa liked your 2 photos post.\"}', 0, '2020-04-10 15:38:23', '2020-04-10 15:38:23'),
(90, 255, 0, 3, '{\"follower_id\":225,\"message\":\"aa started following you.\"}', 0, '2020-04-10 15:38:36', '2020-04-10 15:38:36'),
(91, 255, 0, 4, '{\"post_id\":\"115\",\"message\":\"aa liked your 3 photos post.\"}', 0, '2020-04-10 15:44:42', '2020-04-10 15:44:42'),
(92, 257, 0, 3, '{\"follower_id\":254,\"message\":\" started following you.\"}', 0, '2020-04-10 16:22:56', '2020-04-10 16:22:56'),
(93, 254, 0, 4, '{\"post_id\":\"125\",\"message\":\"tusher5 liked your post.\"}', 0, '2020-04-10 16:49:59', '2020-04-10 16:49:59'),
(94, 254, 0, 1, '{\"post_id\":\"125\",\"message\":\"tusher5 commented on your post.\",\"comment_id\":127,\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1586537492swift_file2.jpeg\"}', 0, '2020-04-10 16:51:32', '2020-04-10 16:51:32'),
(95, 255, 0, 3, '{\"follower_id\":258,\"message\":\"tusher5 started following you.\"}', 0, '2020-04-10 16:52:10', '2020-04-10 16:52:10'),
(96, 256, 0, 3, '{\"follower_id\":258,\"message\":\"tusher5 started following you.\"}', 0, '2020-04-10 16:53:52', '2020-04-10 16:53:52'),
(97, 254, 0, 1, '{\"post_id\":\"128\",\"message\":\"thowhid commented on your post.\",\"comment_id\":128,\"comment\":\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\",\"comment_file\":null}', 0, '2020-04-10 17:11:05', '2020-04-10 17:11:05'),
(98, 255, 0, 4, '{\"post_id\":\"119\",\"message\":\"Thowhidur liked your 3 photos post.\"}', 0, '2020-04-10 17:24:19', '2020-04-10 17:24:19'),
(99, 255, 0, 3, '{\"follower_id\":255,\"message\":\"Thowhidur started following you.\"}', 0, '2020-04-10 17:26:08', '2020-04-10 17:26:08'),
(100, 255, 0, 4, '{\"post_id\":\"117\",\"message\":\"Thowhidur liked your 5 photos post.\"}', 0, '2020-04-10 17:26:12', '2020-04-10 17:26:12'),
(101, 254, 0, 3, '{\"follower_id\":255,\"message\":\"Thowhidur started following you.\"}', 0, '2020-04-10 17:26:36', '2020-04-10 17:26:36'),
(102, 254, 0, 4, '{\"post_id\":\"132\",\"message\":\"Thowhidur liked your 3 photos post.\"}', 0, '2020-04-10 17:27:27', '2020-04-10 17:27:27'),
(103, 255, 0, 4, '{\"post_id\":\"113\",\"message\":\"Thowhidur liked your 4 photos post.\"}', 0, '2020-04-10 17:28:12', '2020-04-10 17:28:12'),
(104, 257, 0, 2, '{\"post_id\":\"116\",\"message\":\"tusher5 replied to your comment.\",\"comment_id\":129,\"parent_id\":\"123\",\"comment\":\"test\",\"comment_file\":null}', 0, '2020-04-10 18:15:31', '2020-04-10 18:15:31'),
(105, 225, 0, 4, '{\"post_id\":\"133\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 18:39:21', '2020-04-12 16:23:42'),
(106, 225, 0, 4, '{\"post_id\":\"124\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 18:39:24', '2020-04-12 16:23:39'),
(107, 225, 0, 4, '{\"post_id\":\"98\",\"message\":\"aa liked your post.\"}', 1, '2020-04-10 18:39:29', '2020-04-12 16:23:36'),
(108, 225, 0, 4, '{\"post_id\":\"95\",\"message\":\"aa liked your 4 photos post.\"}', 1, '2020-04-10 18:39:32', '2020-04-12 16:23:33'),
(109, 225, 0, 4, '{\"post_id\":\"93\",\"message\":\"aa liked your 1 photos post.\"}', 1, '2020-04-10 18:39:35', '2020-04-12 16:23:30'),
(110, 255, 0, 3, '{\"follower_id\":259,\"message\":\"faysal started following you.\"}', 1, '2020-04-11 04:37:09', '2020-04-12 17:43:57'),
(111, 259, 0, 4, '{\"post_id\":\"134\",\"message\":\"faysal liked your 2 photos post.\"}', 1, '2020-04-11 05:10:43', '2020-04-18 09:26:27'),
(112, 259, 0, 1, '{\"post_id\":\"134\",\"message\":\"faysal commented on your post.\",\"comment_id\":130,\"comment\":\"hello\",\"comment_file\":null}', 1, '2020-04-11 05:10:57', '2020-04-18 09:26:27'),
(113, 259, 0, 2, '{\"post_id\":\"134\",\"message\":\"faysal replied to your comment.\",\"comment_id\":131,\"parent_id\":\"130\",\"comment\":\"hi\",\"comment_file\":null}', 1, '2020-04-11 05:11:19', '2020-04-18 09:26:27'),
(114, 259, 0, 1, '{\"post_id\":\"134\",\"message\":\"faysal commented on your post.\",\"comment_id\":132,\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1586581934picture_1586581922.jpg\"}', 1, '2020-04-11 05:12:14', '2020-04-18 09:26:27'),
(115, 225, 0, 3, '{\"follower_id\":259,\"message\":\"faysal started following you.\"}', 1, '2020-04-11 05:17:48', '2020-04-12 12:05:19'),
(116, 255, 0, 3, '{\"follower_id\":259,\"message\":\"faysal started following you.\"}', 0, '2020-04-11 05:23:13', '2020-04-11 05:23:13'),
(117, 254, 0, 3, '{\"follower_id\":255,\"message\":\"Thowhidur started following you.\"}', 0, '2020-04-11 05:50:38', '2020-04-11 05:50:38'),
(118, 254, 0, 1, '{\"post_id\":\"131\",\"message\":\"Thowhidur commented on your post.\",\"comment_id\":133,\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-11 05:50:47', '2020-04-11 05:50:47'),
(119, 255, 0, 2, '{\"post_id\":\"131\",\"message\":\"Thowhidur replied to your comment.\",\"comment_id\":134,\"parent_id\":\"133\",\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1586584264swift_file2.jpeg\"}', 1, '2020-04-11 05:51:05', '2020-04-12 17:43:44'),
(120, 259, 0, 3, '{\"follower_id\":255,\"message\":\"Thowhidur started following you.\"}', 1, '2020-04-11 05:53:21', '2020-04-18 09:26:27'),
(121, 255, 0, 4, '{\"post_id\":\"136\",\"message\":\"Thowhidur liked your 3 photos post.\"}', 0, '2020-04-11 05:53:47', '2020-04-11 05:53:47'),
(122, 259, 0, 4, '{\"post_id\":\"134\",\"message\":\"Thowhidur liked your 2 photos post.\"}', 1, '2020-04-11 05:54:49', '2020-04-18 09:26:27'),
(123, 254, 0, 3, '{\"follower_id\":225,\"message\":\"aa started following you.\"}', 0, '2020-04-11 08:46:05', '2020-04-11 08:46:05'),
(125, 259, 0, 3, '{\"follower_id\":225,\"message\":\"aa started following you.\"}', 1, '2020-04-11 09:33:14', '2020-04-18 09:26:27'),
(127, 136, 0, 4, '{\"user_info\":{\"user_id\":261,\"username\":\"devaccount\",\"profile_image\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/users_image\\/261\\/1586597909fp_wmg_brawlstars.png\"},\"post_id\":\"136\",\"message\":\"devaccount liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document2.jpeg\"]}', 0, '2020-04-11 09:38:45', '2020-04-11 10:04:25'),
(128, 259, 0, 3, '{\"user_info\":{\"user_id\":225,\"username\":\"aa\",\"profile_image\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/users_image\\/225\\/1586014577swift_file2.jpeg\"},\"message\":\"aa started following you.\"}', 1, '2020-04-11 10:02:35', '2020-04-18 09:26:27'),
(129, 259, 0, 3, '{\"user_info\":{\"user_id\":225,\"username\":\"aa\",\"profile_image\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/users_image\\/225\\/1586014577swift_file2.jpeg\"},\"message\":\"aa started following you.\"}', 1, '2020-04-11 10:02:55', '2020-04-18 09:26:27'),
(130, 255, 0, 1, '{\"user_info\":{\"user_id\":259,\"username\":\"faysal\",\"profile_image\":null},\"post_id\":\"136\",\"message\":\"faysal commented on your post.\",\"comment_id\":135,\"comment\":\"hello\",\"comment_file\":null}', 0, '2020-04-11 10:07:04', '2020-04-11 10:07:04'),
(131, 255, 0, 4, '{\"user_info\":{\"user_id\":259,\"username\":\"faysal\",\"profile_image\":null},\"post_id\":\"136\",\"message\":\"faysal liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document2.jpeg\"]}', 0, '2020-04-11 10:07:09', '2020-04-11 10:07:09'),
(132, 255, 0, 4, '{\"user_info\":{\"user_id\":259,\"username\":\"faysal\",\"profile_image\":null},\"post_id\":\"136\",\"message\":\"faysal liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document2.jpeg\"]}', 0, '2020-04-11 10:21:57', '2020-04-11 10:21:57'),
(133, 259, 0, 2, '{\"user_info\":{\"user_id\":259,\"username\":\"faysal\",\"profile_image\":null},\"post_id\":\"136\",\"message\":\"faysal replied to your comment.\",\"comment_id\":136,\"parent_id\":\"135\",\"comment\":\"hi\",\"comment_file\":null}', 1, '2020-04-11 10:22:08', '2020-04-18 09:26:27'),
(134, 254, 0, 1, '{\"user_info\":{\"user_id\":259,\"username\":\"faysal\",\"profile_image\":null},\"post_id\":\"131\",\"message\":\"faysal commented on your post.\",\"comment_id\":137,\"comment\":\"hello\",\"comment_file\":null}', 0, '2020-04-11 10:23:03', '2020-04-11 10:23:03'),
(135, 259, 0, 2, '{\"user_info\":{\"user_id\":259,\"username\":\"faysal\",\"profile_image\":null},\"post_id\":\"131\",\"message\":\"faysal replied to your comment.\",\"comment_id\":138,\"parent_id\":\"137\",\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1586600598picture_1586600591.jpg\"}', 1, '2020-04-11 10:23:18', '2020-04-18 09:26:27'),
(136, 255, 0, 1, '{\"user_info\":{\"user_id\":259,\"username\":\"faysal\",\"profile_image\":null},\"post_id\":\"136\",\"message\":\"faysal commented on your post.\",\"comment_id\":139,\"comment\":\"test\",\"comment_file\":null}', 0, '2020-04-11 10:28:05', '2020-04-11 10:28:05'),
(137, 254, 0, 4, '{\"user_info\":{\"user_id\":259,\"username\":\"faysal\",\"profile_image\":null},\"post_id\":\"132\",\"message\":\"faysal liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586538911_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586538912_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586538912_document2.jpeg\"]}', 0, '2020-04-11 10:28:15', '2020-04-11 10:28:15'),
(138, 254, 0, 1, '{\"user_info\":{\"user_id\":259,\"username\":\"faysal\",\"profile_image\":null},\"post_id\":\"132\",\"message\":\"faysal commented on your post.\",\"comment_id\":140,\"comment\":\"hello\",\"comment_file\":null}', 0, '2020-04-11 10:28:21', '2020-04-11 10:28:21'),
(139, 254, 0, 3, '{\"user_info\":{\"user_id\":259,\"username\":\"faysal\",\"profile_image\":null},\"message\":\"faysal started following you.\"}', 0, '2020-04-11 10:29:21', '2020-04-11 10:29:21'),
(140, 259, 0, 1, '{\"user_info\":{\"user_id\":259,\"username\":\"faysal\",\"profile_image\":null},\"post_id\":\"137\",\"message\":\"faysal commented on your post.\",\"comment_id\":141,\"comment\":\"hi\",\"comment_file\":null}', 1, '2020-04-11 10:31:26', '2020-04-18 09:26:27'),
(141, 259, 0, 4, '{\"user_info\":{\"user_id\":259,\"username\":\"faysal\",\"profile_image\":null},\"post_id\":\"137\",\"message\":\"faysal liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/259\\/1586601035picture_1586600996.jpg\"]}', 1, '2020-04-11 10:32:01', '2020-04-18 09:26:27'),
(142, 259, 0, 1, '{\"user_info\":{\"user_id\":257,\"username\":\"rayhan\",\"profile_image\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/users_image\\/257\\/15865264437ba9559a-9502-43c9-978f-1b50a5f25832.png\"},\"post_id\":\"137\",\"message\":\"rayhan commented on your post.\",\"comment_id\":142,\"comment\":\"faysal keyboard clean koro na ?\",\"comment_file\":null}', 1, '2020-04-11 11:25:13', '2020-04-18 09:26:27'),
(143, 259, 0, 3, '{\"user_info\":{\"user_id\":260,\"username\":\"tuba\",\"profile_image\":null},\"message\":\"tuba started following you.\"}', 1, '2020-04-11 11:34:17', '2020-04-18 09:26:27'),
(144, 259, 0, 3, '{\"user_info\":{\"user_id\":257,\"username\":\"rayhan\",\"profile_image\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/users_image\\/257\\/15865264437ba9559a-9502-43c9-978f-1b50a5f25832.png\"},\"message\":\"rayhan started following you.\"}', 1, '2020-04-11 11:40:40', '2020-04-18 09:26:27'),
(145, 255, 0, 3, '{\"user_info\":{\"user_id\":257,\"username\":\"rayhan\",\"profile_image\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/users_image\\/257\\/15865264437ba9559a-9502-43c9-978f-1b50a5f25832.png\"},\"message\":\"rayhan started following you.\"}', 1, '2020-04-11 11:40:41', '2020-04-12 17:43:41'),
(146, 257, 0, 3, '{\"user_info\":{\"user_id\":262,\"username\":\"roy\",\"profile_image\":null},\"message\":\"roy started following you.\"}', 0, '2020-04-11 12:07:12', '2020-04-11 12:07:12'),
(147, 257, 0, 4, '{\"user_info\":{\"user_id\":262,\"username\":\"roy\",\"profile_image\":null},\"post_id\":\"140\",\"message\":\"roy liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/257\\/1586606757picture_1586606725.jpg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/257\\/1586606757picture_1586606751.jpg\"]}', 0, '2020-04-11 12:21:18', '2020-04-11 12:21:18'),
(149, 261, 261, 4, '{\"post_id\":\"136\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document2.jpeg\"]}', 0, '2020-04-11 13:08:48', '2020-04-11 13:08:48'),
(150, 255, 256, 1, '{\"post_id\":\"136\",\"message\":\"user_name commented on your post.\",\"comment_id\":143,\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-11 13:26:21', '2020-04-11 13:26:21'),
(151, 225, 263, 4, '{\"post_id\":\"133\",\"post_type\":\"2\",\"message\":\"user_name  and 1 others liked your post.\"}', 1, '2020-04-11 14:46:41', '2020-04-12 12:04:53'),
(152, 225, 263, 1, '{\"post_id\":\"133\",\"message\":\"user_name commented on your post.\",\"comment_id\":144,\"comment\":\"hy\",\"comment_file\":null}', 1, '2020-04-11 14:46:52', '2020-04-12 12:03:41'),
(153, 225, 263, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-11 14:47:00', '2020-04-12 12:01:12'),
(154, 225, 263, 4, '{\"post_id\":\"95\",\"message\":\"user_name liked your 4 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086339_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086340_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086340_document2.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086340_document3.jpeg\"]}', 1, '2020-04-11 14:47:22', '2020-04-12 12:04:03'),
(155, 225, 263, 1, '{\"post_id\":\"95\",\"message\":\"user_name commented on your post.\",\"comment_id\":145,\"comment\":\"test\",\"comment_file\":null}', 1, '2020-04-11 14:47:33', '2020-04-12 12:04:30'),
(156, 263, 263, 2, '{\"post_id\":\"95\",\"message\":\"user_name replied to your comment.\",\"comment_id\":146,\"parent_id\":\"145\",\"comment\":\"test\",\"comment_file\":null}', 0, '2020-04-11 14:47:44', '2020-04-11 14:47:44'),
(157, 257, 262, 4, '{\"post_id\":\"140\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/257\\/1586606757picture_1586606725.jpg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/257\\/1586606757picture_1586606751.jpg\"]}', 0, '2020-04-11 16:18:22', '2020-04-11 16:18:22'),
(158, 257, 256, 2, '{\"post_id\":\"137\",\"message\":\"user_name replied to your comment.\",\"comment_id\":147,\"parent_id\":\"142\",\"comment\":\"it\'s expensive and Dust proof as well\\ud83d\\ude2c\\ud83d\\ude02\",\"comment_file\":null}', 0, '2020-04-11 16:29:14', '2020-04-11 16:29:14'),
(159, 259, 256, 1, '{\"post_id\":\"134\",\"message\":\"user_name commented on your post.\",\"comment_id\":148,\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1586622917picture_1586622912.jpg\"}', 1, '2020-04-11 16:35:17', '2020-04-18 09:26:27'),
(160, 256, 256, 2, '{\"post_id\":\"134\",\"message\":\"user_name replied to your comment.\",\"comment_id\":149,\"parent_id\":\"148\",\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1586624225picture_1586624221.jpg\"}', 0, '2020-04-11 16:57:05', '2020-04-11 16:57:05'),
(161, 256, 259, 4, '{\"post_id\":\"142\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/256\\/1586636193picture_1586636092.jpg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/256\\/1586636193picture_1586636185.jpg\"]}', 0, '2020-04-11 20:38:57', '2020-04-11 20:38:57'),
(162, 256, 259, 1, '{\"post_id\":\"142\",\"message\":\"user_name commented on your post.\",\"comment_id\":150,\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-11 20:43:25', '2020-04-11 20:43:25'),
(164, 255, 261, 4, '{\"post_id\":\"136\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document2.jpeg\"]}', 0, '2020-04-12 04:16:52', '2020-04-12 04:16:52'),
(165, 255, 261, 4, '{\"post_id\":\"136\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document2.jpeg\"]}', 0, '2020-04-12 04:31:47', '2020-04-12 04:31:47'),
(166, 255, 261, 4, '{\"post_id\":\"136\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document2.jpeg\"]}', 0, '2020-04-12 04:41:29', '2020-04-12 04:41:29'),
(167, 255, 261, 4, '{\"post_id\":\"136\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document2.jpeg\"]}', 0, '2020-04-12 05:21:09', '2020-04-12 05:21:09'),
(168, 255, 261, 4, '{\"post_id\":\"136\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document2.jpeg\"]}', 1, '2020-04-12 06:15:15', '2020-04-14 20:00:46'),
(169, 254, 254, 1, '{\"post_id\":\"144\",\"message\":\"user_name commented on your post.\",\"comment_id\":151,\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-12 07:00:51', '2020-04-12 07:00:51'),
(170, 225, 263, 4, '{\"post_id\":\"95\",\"message\":\"user_name liked your 4 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086339_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086340_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086340_document2.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086340_document3.jpeg\"]}', 1, '2020-04-12 07:25:28', '2020-04-12 12:04:22'),
(171, 259, 254, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-12 08:22:01', '2020-04-18 09:26:27'),
(172, 256, 254, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 08:22:04', '2020-04-12 08:22:04'),
(173, 257, 254, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 08:22:10', '2020-04-12 08:22:10'),
(174, 260, 254, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 08:22:15', '2020-04-12 08:22:15'),
(175, 256, 260, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 11:41:47', '2020-04-12 11:41:47'),
(176, 257, 254, 4, '{\"post_id\":\"146\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/257\\/1586680464picture_1586680458.jpg\"]}', 0, '2020-04-12 11:42:35', '2020-04-12 11:42:35'),
(177, 0, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 11:44:09', '2020-04-12 11:44:09'),
(178, 259, 260, 1, '{\"post_id\":\"148\",\"message\":\"user_name commented on your post.\",\"comment_id\":152,\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1586692266picture_1586692257.jpg\"}', 1, '2020-04-12 11:51:06', '2020-04-18 09:26:27'),
(179, 263, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 11:56:16', '2020-04-12 11:56:16'),
(180, 256, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 12:09:48', '2020-04-12 12:09:48'),
(181, 256, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 12:10:04', '2020-04-12 12:10:04'),
(182, 260, 258, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 12:11:48', '2020-04-12 12:11:48'),
(183, 260, 258, 4, '{\"post_id\":\"138\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/260\\/158660494415e16d2a-13ea-49e9-8b94-8c098f5da2d9.png\"]}', 0, '2020-04-12 12:11:52', '2020-04-12 12:11:52'),
(184, 259, 258, 4, '{\"post_id\":\"137\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/259\\/1586601035picture_1586600996.jpg\"]}', 1, '2020-04-12 12:12:00', '2020-04-18 09:26:27'),
(185, 254, 257, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 12:24:36', '2020-04-12 12:24:36'),
(186, 262, 257, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 15:42:35', '2020-04-12 15:42:35'),
(187, 262, 257, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 15:45:36', '2020-04-12 15:45:36'),
(188, 254, 260, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 17:34:03', '2020-04-12 17:34:03'),
(189, 255, 260, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-12 17:36:18', '2020-04-12 17:43:29'),
(190, 0, 255, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 17:43:49', '2020-04-12 17:43:49'),
(191, 0, 255, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 17:44:00', '2020-04-12 17:44:00'),
(192, 255, 260, 4, '{\"post_id\":\"136\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586584350_document2.jpeg\"]}', 1, '2020-04-12 17:44:16', '2020-04-12 17:44:31'),
(193, 260, 255, 4, '{\"post_id\":\"149\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/260\\/158671355328035474-44ca-4daf-ad29-1aa64cff51f9.png\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/260\\/1586713554f8a14b7d-a495-4e78-886c-1f20fa96e1ea.png\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/260\\/1586713554310decd0-dade-4ea3-a8a5-9babb2953458.png\"]}', 0, '2020-04-12 17:46:16', '2020-04-12 17:46:16'),
(194, 258, 260, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 17:46:34', '2020-04-12 17:46:34'),
(195, 260, 255, 1, '{\"post_id\":\"149\",\"message\":\"user_name commented on your post.\",\"comment_id\":153,\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-12 17:46:48', '2020-04-12 17:46:48'),
(196, 225, 263, 4, '{\"post_id\":\"133\",\"post_type\":\"2\",\"message\":\"user_name  and 1 others liked your post.\"}', 1, '2020-04-12 18:28:41', '2020-04-12 18:33:10'),
(197, 225, 263, 1, '{\"post_id\":\"133\",\"message\":\"user_name commented on your post.\",\"comment_id\":154,\"comment\":\"hy2\",\"comment_file\":null}', 1, '2020-04-12 18:29:01', '2020-04-12 18:32:59'),
(198, 263, 263, 2, '{\"post_id\":\"133\",\"message\":\"user_name replied to your comment.\",\"comment_id\":155,\"parent_id\":\"154\",\"comment\":\"hy3\",\"comment_file\":null}', 0, '2020-04-12 18:29:11', '2020-04-12 18:29:11'),
(199, 225, 263, 4, '{\"post_id\":\"95\",\"message\":\"user_name liked your 4 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086339_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086340_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086340_document2.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086340_document3.jpeg\"]}', 1, '2020-04-12 18:29:41', '2020-04-12 18:31:40'),
(200, 225, 263, 4, '{\"post_id\":\"75\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1585984752_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1585984752_document1.jpeg\"]}', 1, '2020-04-12 18:29:46', '2020-04-12 18:33:44'),
(201, 225, 263, 4, '{\"post_id\":\"73\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1585984607_document0.jpeg\"]}', 1, '2020-04-12 18:29:50', '2020-04-12 18:33:28'),
(202, 263, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-12 18:34:57', '2020-04-12 18:34:57'),
(203, 225, 225, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-13 07:15:30', '2020-04-13 07:40:02'),
(204, 257, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-13 09:44:34', '2020-04-13 09:44:34'),
(205, 257, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-13 09:58:33', '2020-04-13 09:58:33'),
(206, 225, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-13 10:00:56', '2020-04-13 10:00:56'),
(207, 257, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-13 10:01:37', '2020-04-13 10:01:37'),
(208, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-13 10:03:14', '2020-04-13 10:03:14'),
(209, 225, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-13 10:11:29', '2020-04-13 10:11:29'),
(210, 254, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-13 10:11:30', '2020-04-13 10:11:30'),
(211, 254, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-13 10:35:31', '2020-04-13 10:35:31'),
(212, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-13 10:38:10', '2020-04-13 10:38:10'),
(213, 225, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-13 10:38:13', '2020-04-13 10:38:13'),
(214, 257, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-13 10:38:15', '2020-04-13 10:38:15'),
(215, 258, 258, 4, '{\"post_id\":\"151\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/258\\/1586843427_document0.jpeg\"]}', 0, '2020-04-14 06:14:55', '2020-04-14 06:14:55'),
(216, 258, 265, 4, '{\"post_id\":\"151\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/258\\/1586843427_document0.jpeg\"]}', 0, '2020-04-14 06:15:29', '2020-04-14 06:15:29'),
(217, 258, 265, 4, '{\"post_id\":\"151\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/258\\/1586843427_document0.jpeg\"]}', 0, '2020-04-14 06:15:32', '2020-04-14 06:15:32'),
(218, 258, 265, 1, '{\"post_id\":\"151\",\"message\":\"user_name commented on your post.\",\"comment_id\":156,\"comment\":\"wow nice clear picture\",\"comment_file\":null}', 0, '2020-04-14 06:15:53', '2020-04-14 06:15:53'),
(219, 265, 258, 2, '{\"post_id\":\"151\",\"message\":\"user_name replied to your comment.\",\"comment_id\":157,\"parent_id\":\"156\",\"comment\":\"thanks\",\"comment_file\":null}', 0, '2020-04-14 06:18:39', '2020-04-14 06:18:39'),
(220, 258, 265, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-14 06:18:41', '2020-04-14 19:47:25'),
(221, 258, 265, 4, '{\"post_id\":\"151\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/258\\/1586843427_document0.jpeg\"]}', 0, '2020-04-14 06:18:50', '2020-04-14 06:18:50'),
(222, 265, 258, 2, '{\"post_id\":\"151\",\"message\":\"user_name replied to your comment.\",\"comment_id\":158,\"parent_id\":\"156\",\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1586845217swift_file2.jpeg\"}', 0, '2020-04-14 06:20:17', '2020-04-14 06:20:17'),
(223, 258, 265, 4, '{\"post_id\":\"151\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/258\\/1586843427_document0.jpeg\"]}', 0, '2020-04-14 06:25:07', '2020-04-14 06:25:07'),
(224, 258, 265, 1, '{\"post_id\":\"151\",\"message\":\"user_name commented on your post.\",\"comment_id\":159,\"comment\":\"wow\",\"comment_file\":null}', 0, '2020-04-14 06:40:46', '2020-04-14 06:40:46'),
(225, 260, 265, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-14 06:46:03', '2020-04-14 06:46:03'),
(226, 260, 265, 4, '{\"post_id\":\"149\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/260\\/158671355328035474-44ca-4daf-ad29-1aa64cff51f9.png\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/260\\/1586713554f8a14b7d-a495-4e78-886c-1f20fa96e1ea.png\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/260\\/1586713554310decd0-dade-4ea3-a8a5-9babb2953458.png\"]}', 0, '2020-04-14 06:46:10', '2020-04-14 06:46:10'),
(227, 260, 265, 1, '{\"post_id\":\"149\",\"message\":\"user_name commented on your post.\",\"comment_id\":160,\"comment\":\"kool\",\"comment_file\":null}', 0, '2020-04-14 06:46:23', '2020-04-14 06:46:23'),
(228, 259, 265, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-14 07:10:47', '2020-04-18 09:26:27'),
(229, 259, 265, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-14 07:10:50', '2020-04-18 09:26:27'),
(230, 259, 265, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-14 07:10:53', '2020-04-18 09:26:27'),
(231, 259, 265, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-14 07:10:58', '2020-04-18 09:26:27'),
(232, 259, 265, 4, '{\"post_id\":\"148\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/259\\/1586684089picture_1586684073.jpg\"]}', 1, '2020-04-14 07:41:17', '2020-04-18 09:26:27'),
(233, 259, 265, 4, '{\"post_id\":\"148\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/259\\/1586684089picture_1586684073.jpg\"]}', 1, '2020-04-14 07:41:21', '2020-04-18 09:29:39'),
(234, 257, 265, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-14 07:41:37', '2020-04-14 07:41:37'),
(235, 257, 265, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-14 07:41:44', '2020-04-14 07:41:44'),
(236, 265, 267, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-14 19:29:28', '2020-05-02 23:22:00'),
(237, 265, 258, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-14 19:34:52', '2020-04-14 19:34:52'),
(238, 265, 258, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-14 19:47:24', '2020-04-14 19:47:24'),
(239, 255, 267, 4, '{\"post_id\":\"155\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 1, '2020-04-14 19:58:53', '2020-04-14 19:59:00'),
(240, 255, 267, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-14 19:59:19', '2020-04-14 19:59:29'),
(241, 267, 255, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-14 19:59:28', '2020-04-14 19:59:28'),
(242, 255, 267, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-14 20:00:27', '2020-04-14 20:00:35'),
(243, 255, 267, 1, '{\"post_id\":\"155\",\"message\":\"user_name commented on your post.\",\"comment_id\":167,\"comment\":\"nice\",\"comment_file\":null}', 1, '2020-04-14 20:01:06', '2020-04-14 20:01:16'),
(244, 255, 255, 4, '{\"post_id\":\"155\",\"post_type\":\"2\",\"message\":\"user_name  and 1 others liked your post.\"}', 0, '2020-04-14 20:01:40', '2020-04-14 20:01:40'),
(245, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 07:28:32', '2020-04-16 07:28:32'),
(246, 263, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 07:28:40', '2020-04-16 07:28:40'),
(247, 225, 268, 1, '{\"post_id\":\"133\",\"message\":\"user_name commented on your post.\",\"comment_id\":168,\"comment\":\"couldn\'t see anything\",\"comment_file\":null}', 0, '2020-04-16 07:36:44', '2020-04-16 07:36:44'),
(248, 263, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 08:19:28', '2020-04-16 08:19:28'),
(249, 255, 268, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 10:04:55', '2020-04-16 10:04:55'),
(250, 255, 268, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 10:05:02', '2020-04-16 10:05:02'),
(251, 255, 268, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 10:05:04', '2020-04-16 10:05:04'),
(252, 255, 268, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 10:05:07', '2020-04-16 10:05:07'),
(253, 255, 268, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 10:05:09', '2020-04-16 10:05:09'),
(254, 255, 268, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 10:05:11', '2020-04-16 10:05:11'),
(255, 255, 268, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 10:05:22', '2020-04-16 10:05:22');
INSERT INTO `notifications` (`id`, `user_id`, `action_taken_by`, `type`, `notification_obj`, `read_status`, `created_at`, `updated_at`) VALUES
(256, 268, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:02:33', '2020-04-16 11:02:33'),
(257, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:14:06', '2020-04-16 11:14:06'),
(258, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:14:11', '2020-04-16 11:14:11'),
(259, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:14:15', '2020-04-16 11:14:15'),
(260, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:14:25', '2020-04-16 11:14:25'),
(261, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:14:31', '2020-04-16 11:14:31'),
(262, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:14:42', '2020-04-16 11:14:42'),
(263, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:14:45', '2020-04-16 11:14:45'),
(264, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:14:50', '2020-04-16 11:14:50'),
(265, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:14:54', '2020-04-16 11:14:54'),
(266, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:15:32', '2020-04-16 11:15:32'),
(267, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:15:56', '2020-04-16 11:15:56'),
(268, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-16 11:16:21', '2020-04-22 05:31:37'),
(269, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:18:34', '2020-04-16 11:18:34'),
(270, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:18:49', '2020-04-16 11:18:49'),
(271, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:19:23', '2020-04-16 11:19:23'),
(272, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:24:07', '2020-04-16 11:24:07'),
(273, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:24:20', '2020-04-16 11:24:20'),
(274, 263, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:24:26', '2020-04-16 11:24:26'),
(275, 263, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:40:06', '2020-04-16 11:40:06'),
(276, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 11:40:23', '2020-04-16 11:40:23'),
(277, 225, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:38:38', '2020-04-16 13:38:38'),
(278, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:38:55', '2020-04-16 13:38:55'),
(279, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:39:34', '2020-04-16 13:39:34'),
(280, 268, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:40:50', '2020-04-16 13:40:50'),
(281, 268, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:40:51', '2020-04-16 13:40:51'),
(282, 268, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:40:53', '2020-04-16 13:40:53'),
(283, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:42:23', '2020-04-16 13:42:23'),
(284, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:42:27', '2020-04-16 13:42:27'),
(285, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:43:03', '2020-04-16 13:43:03'),
(286, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:43:05', '2020-04-16 13:43:05'),
(287, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:43:06', '2020-04-16 13:43:06'),
(288, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:43:07', '2020-04-16 13:43:07'),
(289, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:43:09', '2020-04-16 13:43:09'),
(290, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:43:12', '2020-04-16 13:43:12'),
(291, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:43:13', '2020-04-16 13:43:13'),
(292, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 13:43:16', '2020-04-16 13:43:16'),
(293, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 15:07:23', '2020-04-16 15:07:23'),
(294, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 15:07:24', '2020-04-16 15:07:24'),
(295, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-16 15:07:26', '2020-04-16 15:07:26'),
(296, 262, 258, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-17 13:22:41', '2020-04-17 13:22:41'),
(297, 268, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-18 09:31:10', '2020-04-18 09:31:10'),
(298, 259, 269, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-18 09:34:28', '2020-04-18 09:37:09'),
(299, 259, 269, 4, '{\"post_id\":\"137\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/259\\/1586601035picture_1586600996.jpg\"]}', 1, '2020-04-18 09:35:17', '2020-04-18 09:37:09'),
(300, 259, 269, 4, '{\"post_id\":\"135\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 1, '2020-04-18 09:44:52', '2020-04-18 09:46:02'),
(301, 259, 269, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-18 09:46:27', '2020-04-18 09:48:01'),
(302, 259, 269, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-18 10:20:23', '2020-04-18 10:49:02'),
(303, 259, 270, 4, '{\"post_id\":\"147\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/259\\/1586683422picture_1586683408.jpg\"]}', 1, '2020-04-18 10:30:41', '2020-04-18 10:31:29'),
(304, 259, 270, 1, '{\"post_id\":\"147\",\"message\":\"user_name commented on your post.\",\"comment_id\":169,\"comment\":\"hello\",\"comment_file\":null}', 1, '2020-04-18 10:40:19', '2020-04-18 10:41:14'),
(305, 259, 270, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-18 10:42:22', '2020-04-18 10:42:31'),
(306, 259, 270, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-18 10:51:17', '2020-04-18 10:51:25'),
(307, 270, 261, 2, '{\"post_id\":\"147\",\"message\":\"user_name replied to your comment.\",\"comment_id\":171,\"parent_id\":\"169\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-18 10:57:08', '2020-04-18 10:57:08'),
(308, 261, 261, 2, '{\"post_id\":\"147\",\"message\":\"user_name replied to your comment.\",\"comment_id\":172,\"parent_id\":\"171\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-18 10:57:31', '2020-04-18 10:57:31'),
(309, 261, 261, 2, '{\"post_id\":\"147\",\"message\":\"user_name replied to your comment.\",\"comment_id\":173,\"parent_id\":\"171\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-18 11:18:06', '2020-04-18 11:18:06'),
(310, 261, 261, 2, '{\"post_id\":\"147\",\"message\":\"user_name replied to your comment.\",\"comment_id\":174,\"parent_id\":\"171\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-18 11:18:30', '2020-04-18 11:18:30'),
(311, 261, 261, 2, '{\"post_id\":\"147\",\"message\":\"user_name replied to your comment.\",\"comment_id\":175,\"parent_id\":\"174\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-18 11:18:45', '2020-04-18 11:18:45'),
(312, 270, 261, 2, '{\"post_id\":\"147\",\"message\":\"user_name replied to your comment.\",\"comment_id\":176,\"parent_id\":\"169\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-18 11:20:49', '2020-04-18 11:20:49'),
(313, 261, 261, 2, '{\"post_id\":\"147\",\"message\":\"user_name replied to your comment.\",\"comment_id\":177,\"parent_id\":\"176\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-18 11:21:00', '2020-04-18 11:21:00'),
(314, 261, 261, 2, '{\"post_id\":\"147\",\"message\":\"user_name replied to your comment.\",\"comment_id\":178,\"parent_id\":\"176\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-18 11:21:10', '2020-04-18 11:21:10'),
(315, 261, 261, 2, '{\"post_id\":\"147\",\"message\":\"user_name replied to your comment.\",\"comment_id\":179,\"parent_id\":\"178\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-18 11:21:19', '2020-04-18 11:21:19'),
(316, 261, 261, 2, '{\"post_id\":\"147\",\"message\":\"user_name replied to your comment.\",\"comment_id\":180,\"parent_id\":\"178\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-18 12:57:12', '2020-04-18 12:57:12'),
(317, 259, 259, 1, '{\"post_id\":\"150\",\"message\":\"user_name commented on your post.\",\"comment_id\":184,\"comment\":\"hi\",\"comment_file\":null}', 1, '2020-04-19 10:26:21', '2021-07-05 10:06:17'),
(318, 259, 259, 1, '{\"post_id\":\"150\",\"message\":\"user_name commented on your post.\",\"comment_id\":185,\"comment\":\"test\",\"comment_file\":null}', 1, '2020-04-19 10:33:25', '2021-07-05 10:06:17'),
(319, 259, 259, 1, '{\"post_id\":\"150\",\"message\":\"user_name commented on your post.\",\"comment_id\":186,\"comment\":\"hello\",\"comment_file\":null}', 1, '2020-04-19 10:38:37', '2021-07-05 10:06:17'),
(320, 259, 259, 1, '{\"post_id\":\"150\",\"message\":\"user_name commented on your post.\",\"comment_id\":187,\"comment\":\"hi\",\"comment_file\":null}', 1, '2020-04-19 10:42:28', '2021-07-05 10:06:17'),
(321, 259, 259, 1, '{\"post_id\":\"150\",\"message\":\"user_name commented on your post.\",\"comment_id\":188,\"comment\":\"hi\",\"comment_file\":null}', 1, '2020-04-19 10:46:27', '2021-07-05 10:06:17'),
(322, 259, 259, 4, '{\"post_id\":\"150\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/259\\/1586773680picture_1586773660.jpg\"]}', 1, '2020-04-19 10:50:57', '2021-07-05 10:06:17'),
(323, 259, 259, 1, '{\"post_id\":\"150\",\"message\":\"user_name commented on your post.\",\"comment_id\":189,\"comment\":\"hi\",\"comment_file\":null}', 1, '2020-04-19 11:03:46', '2021-07-05 10:06:17'),
(324, 259, 270, 1, '{\"post_id\":\"147\",\"message\":\"user_name commented on your post.\",\"comment_id\":190,\"comment\":\"hello!\",\"comment_file\":null}', 1, '2020-04-19 11:23:23', '2021-07-05 10:06:17'),
(325, 259, 259, 1, '{\"post_id\":\"143\",\"message\":\"user_name commented on your post.\",\"comment_id\":191,\"comment\":\"hello\",\"comment_file\":null}', 1, '2020-04-19 18:57:06', '2021-07-05 10:06:17'),
(326, 259, 259, 1, '{\"post_id\":\"143\",\"message\":\"user_name commented on your post.\",\"comment_id\":192,\"comment\":\"hello\",\"comment_file\":null}', 1, '2020-04-19 18:57:25', '2021-07-05 10:06:17'),
(327, 259, 259, 1, '{\"post_id\":\"143\",\"message\":\"user_name commented on your post.\",\"comment_id\":193,\"comment\":\"hi\",\"comment_file\":null}', 1, '2020-04-19 19:01:30', '2021-07-05 10:06:17'),
(328, 259, 270, 1, '{\"post_id\":\"134\",\"message\":\"user_name commented on your post.\",\"comment_id\":194,\"comment\":\"test\",\"comment_file\":null}', 1, '2020-04-19 19:04:51', '2021-07-05 10:06:17'),
(329, 259, 259, 1, '{\"post_id\":\"143\",\"message\":\"user_name commented on your post.\",\"comment_id\":195,\"comment\":\"hello\",\"comment_file\":null}', 1, '2020-04-19 20:17:24', '2021-07-05 10:06:17'),
(330, 259, 270, 1, '{\"post_id\":\"134\",\"message\":\"user_name commented on your post.\",\"comment_id\":196,\"comment\":\"hello\",\"comment_file\":null}', 1, '2020-04-19 20:39:28', '2021-07-05 10:06:17'),
(331, 259, 259, 1, '{\"post_id\":\"135\",\"message\":\"user_name commented on your post.\",\"comment_id\":197,\"comment\":\"hi\",\"comment_file\":null}', 1, '2020-04-19 20:40:23', '2021-07-05 10:06:17'),
(332, 259, 259, 1, '{\"post_id\":\"134\",\"message\":\"user_name commented on your post.\",\"comment_id\":198,\"comment\":\"hello\",\"comment_file\":null}', 1, '2020-04-19 20:59:32', '2021-07-05 10:06:17'),
(333, 259, 259, 1, '{\"post_id\":\"134\",\"message\":\"user_name commented on your post.\",\"comment_id\":199,\"comment\":\"hello\",\"comment_file\":null}', 1, '2020-04-19 21:00:01', '2021-07-05 10:06:17'),
(334, 259, 270, 1, '{\"post_id\":\"134\",\"message\":\"user_name commented on your post.\",\"comment_id\":200,\"comment\":\"hi\",\"comment_file\":null}', 1, '2020-04-19 21:00:22', '2021-07-05 10:06:17'),
(335, 259, 259, 1, '{\"post_id\":\"135\",\"message\":\"user_name commented on your post.\",\"comment_id\":201,\"comment\":\"hi\",\"comment_file\":null}', 1, '2020-04-19 21:00:58', '2021-07-05 10:06:17'),
(336, 259, 259, 1, '{\"post_id\":\"135\",\"message\":\"user_name commented on your post.\",\"comment_id\":202,\"comment\":\"hello\",\"comment_file\":null}', 1, '2020-04-19 21:01:21', '2021-07-05 10:06:17'),
(337, 259, 259, 1, '{\"post_id\":\"134\",\"message\":\"user_name commented on your post.\",\"comment_id\":203,\"comment\":\"hi faysal\",\"comment_file\":null}', 1, '2020-04-19 21:01:56', '2021-07-05 10:06:17'),
(338, 259, 270, 1, '{\"post_id\":\"134\",\"message\":\"user_name commented on your post.\",\"comment_id\":204,\"comment\":\"hello\",\"comment_file\":null}', 1, '2020-04-19 21:02:21', '2020-04-23 19:37:10'),
(339, 260, 259, 1, '{\"post_id\":\"138\",\"message\":\"user_name commented on your post.\",\"comment_id\":205,\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-19 21:05:43', '2020-04-19 21:05:43'),
(340, 225, 225, 4, '{\"post_id\":\"157\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1587114234_document0.jpeg\"]}', 1, '2020-04-20 08:22:44', '2020-04-22 06:25:41'),
(341, 267, 262, 1, '{\"post_id\":\"158\",\"message\":\"user_name commented on your post.\",\"comment_id\":206,\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-20 11:07:45', '2020-04-20 11:07:45'),
(342, 262, 257, 1, '{\"post_id\":\"159\",\"message\":\"user_name commented on your post.\",\"comment_id\":207,\"comment\":\"ki obostha ?\",\"comment_file\":null}', 0, '2020-04-20 11:16:18', '2020-04-20 11:16:18'),
(343, 267, 257, 1, '{\"post_id\":\"158\",\"message\":\"user_name commented on your post.\",\"comment_id\":208,\"comment\":\"wow\",\"comment_file\":null}', 0, '2020-04-20 11:16:39', '2020-04-20 11:16:39'),
(344, 257, 262, 2, '{\"post_id\":\"158\",\"message\":\"user_name replied to your comment.\",\"comment_id\":209,\"parent_id\":\"208\",\"comment\":\"nice\",\"comment_file\":null}', 0, '2020-04-20 11:16:55', '2020-04-20 11:16:55'),
(345, 257, 257, 2, '{\"post_id\":\"158\",\"message\":\"user_name replied to your comment.\",\"comment_id\":210,\"parent_id\":\"208\",\"comment\":\"valo .. tor ki obostha ?\",\"comment_file\":null}', 0, '2020-04-20 11:17:36', '2020-04-20 11:17:36'),
(346, 263, 225, 2, '{\"post_id\":\"133\",\"message\":\"user_name replied to your comment.\",\"comment_id\":211,\"parent_id\":\"154\",\"comment\":\"hy hy 3\",\"comment_file\":null}', 0, '2020-04-20 15:17:44', '2020-04-20 15:17:44'),
(347, 254, 225, 1, '{\"post_id\":\"132\",\"message\":\"user_name commented on your post.\",\"comment_id\":212,\"comment\":\"testing\",\"comment_file\":null}', 0, '2020-04-20 15:19:01', '2020-04-20 15:19:01'),
(348, 259, 225, 2, '{\"post_id\":\"132\",\"message\":\"user_name replied to your comment.\",\"comment_id\":213,\"parent_id\":\"140\",\"comment\":\"test2\",\"comment_file\":null}', 1, '2020-04-20 15:19:29', '2021-07-05 10:06:17'),
(349, 259, 225, 2, '{\"post_id\":\"132\",\"message\":\"user_name replied to your comment.\",\"comment_id\":214,\"parent_id\":\"140\",\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1587396013swift_file2.jpeg\"}', 1, '2020-04-20 15:20:13', '2021-07-05 10:06:17'),
(350, 225, 225, 1, '{\"post_id\":\"95\",\"message\":\"user_name commented on your post.\",\"comment_id\":215,\"comment\":\"this is a long comment test... this is a long comment test... this is a long comment test... this is a long comment test...\",\"comment_file\":null}', 1, '2020-04-20 15:31:21', '2020-04-22 06:25:48'),
(351, 225, 225, 4, '{\"post_id\":\"95\",\"message\":\"user_name liked your 4 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086339_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086340_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086340_document2.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1586086340_document3.jpeg\"]}', 1, '2020-04-20 15:32:58', '2020-04-22 06:24:37'),
(352, 257, 261, 1, '{\"post_id\":\"146\",\"message\":\"user_name commented on your post.\",\"comment_id\":217,\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-20 16:13:10', '2020-04-20 16:13:10'),
(353, 261, 261, 2, '{\"post_id\":\"146\",\"message\":\"user_name replied to your comment.\",\"comment_id\":218,\"parent_id\":\"217\",\"comment\":\"Awesome Dj\",\"comment_file\":null}', 0, '2020-04-20 16:13:50', '2020-04-20 16:13:50'),
(354, 257, 261, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-20 16:15:02', '2020-04-20 16:15:02'),
(355, 257, 261, 4, '{\"post_id\":\"146\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/257\\/1586680464picture_1586680458.jpg\"]}', 0, '2020-04-20 16:16:11', '2020-04-20 16:16:11'),
(356, 257, 261, 4, '{\"post_id\":\"146\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/257\\/1586680464picture_1586680458.jpg\"]}', 0, '2020-04-20 16:16:15', '2020-04-20 16:16:15'),
(357, 254, 225, 1, '{\"post_id\":\"132\",\"message\":\"user_name commented on your post.\",\"comment_id\":219,\"comment\":\"test\",\"comment_file\":null}', 0, '2020-04-20 16:32:50', '2020-04-20 16:32:50'),
(358, 262, 267, 1, '{\"post_id\":\"159\",\"message\":\"user_name commented on your post.\",\"comment_id\":220,\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-20 17:54:36', '2020-04-20 17:54:36'),
(359, 257, 267, 2, '{\"post_id\":\"159\",\"message\":\"user_name replied to your comment.\",\"comment_id\":221,\"parent_id\":\"207\",\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-20 17:54:45', '2020-04-20 17:54:45'),
(360, 267, 255, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-20 17:59:02', '2020-04-20 17:59:02'),
(361, 255, 255, 4, '{\"post_id\":\"163\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1587452296picture_1587452230.jpg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/158745229713ff56d6-6fce-4d36-9602-d95ddbbb95b8.png\"]}', 0, '2020-04-21 07:03:33', '2020-04-21 07:03:33'),
(362, 255, 255, 4, '{\"post_id\":\"164\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2020-04-21 07:03:35', '2020-04-21 07:03:35'),
(363, 255, 255, 1, '{\"post_id\":\"163\",\"message\":\"user_name commented on your post.\",\"comment_id\":222,\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-21 07:03:53', '2020-04-21 07:03:53'),
(364, 255, 255, 1, '{\"post_id\":\"164\",\"message\":\"user_name commented on your post.\",\"comment_id\":223,\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-21 07:04:06', '2020-04-21 07:04:06'),
(365, 255, 255, 2, '{\"post_id\":\"164\",\"message\":\"user_name replied to your comment.\",\"comment_id\":224,\"parent_id\":\"223\",\"comment\":\"rep\",\"comment_file\":null}', 0, '2020-04-21 07:04:23', '2020-04-21 07:04:23'),
(366, 255, 255, 1, '{\"post_id\":\"164\",\"message\":\"user_name commented on your post.\",\"comment_id\":225,\"comment\":\"test\",\"comment_file\":null}', 0, '2020-04-21 07:04:38', '2020-04-21 07:04:38'),
(367, 255, 261, 1, '{\"post_id\":\"164\",\"message\":\"user_name commented on your post.\",\"comment_id\":226,\"comment\":\"Testing\",\"comment_file\":null}', 1, '2020-04-21 07:20:59', '2020-04-22 05:31:51'),
(368, 261, 261, 2, '{\"post_id\":\"164\",\"message\":\"user_name replied to your comment.\",\"comment_id\":227,\"parent_id\":\"226\",\"comment\":\"Testing\",\"comment_file\":null}', 0, '2020-04-21 07:21:26', '2020-04-21 07:21:26'),
(369, 259, 261, 2, '{\"post_id\":\"143\",\"message\":\"user_name replied to your comment.\",\"comment_id\":228,\"parent_id\":\"193\",\"comment\":\"Testing\",\"comment_file\":null}', 1, '2020-04-21 12:05:56', '2021-07-05 10:06:17'),
(370, 261, 261, 2, '{\"post_id\":\"143\",\"message\":\"user_name replied to your comment.\",\"comment_id\":229,\"parent_id\":\"228\",\"comment\":\"Another Testing\",\"comment_file\":null}', 0, '2020-04-21 12:08:18', '2020-04-21 12:08:18'),
(371, 225, 225, 4, '{\"post_id\":\"74\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2020-04-21 12:14:02', '2020-04-21 12:14:02'),
(372, 225, 225, 4, '{\"post_id\":\"74\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2020-04-21 12:14:35', '2020-04-21 12:14:35'),
(373, 225, 225, 4, '{\"post_id\":\"76\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1585984985_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1585984985_document1.jpeg\"]}', 1, '2020-04-21 12:14:59', '2020-04-22 06:24:51'),
(374, 260, 225, 4, '{\"post_id\":\"138\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/260\\/158660494415e16d2a-13ea-49e9-8b94-8c098f5da2d9.png\"]}', 0, '2020-04-21 12:16:34', '2020-04-21 12:16:34'),
(375, 260, 225, 4, '{\"post_id\":\"138\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/260\\/158660494415e16d2a-13ea-49e9-8b94-8c098f5da2d9.png\"]}', 0, '2020-04-21 12:16:49', '2020-04-21 12:16:49'),
(376, 254, 225, 4, '{\"post_id\":\"132\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586538911_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586538912_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586538912_document2.jpeg\"]}', 0, '2020-04-21 12:17:00', '2020-04-21 12:17:00'),
(377, 254, 225, 4, '{\"post_id\":\"132\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586538911_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586538912_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586538912_document2.jpeg\"]}', 0, '2020-04-21 12:17:07', '2020-04-21 12:17:07'),
(378, 254, 225, 4, '{\"post_id\":\"131\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2020-04-21 12:17:18', '2020-04-21 12:17:18'),
(379, 254, 225, 4, '{\"post_id\":\"131\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2020-04-21 12:17:21', '2020-04-21 12:17:21'),
(380, 254, 225, 4, '{\"post_id\":\"131\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2020-04-21 12:17:46', '2020-04-21 12:17:46'),
(381, 254, 225, 4, '{\"post_id\":\"128\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586537879_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586537879_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586537879_document2.jpeg\"]}', 0, '2020-04-21 12:18:13', '2020-04-21 12:18:13'),
(382, 254, 225, 4, '{\"post_id\":\"128\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586537879_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586537879_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586537879_document2.jpeg\"]}', 0, '2020-04-21 12:18:22', '2020-04-21 12:18:22'),
(383, 254, 225, 4, '{\"post_id\":\"128\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586537879_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586537879_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/254\\/1586537879_document2.jpeg\"]}', 0, '2020-04-21 12:18:29', '2020-04-21 12:18:29'),
(384, 257, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-21 12:18:44', '2020-04-21 12:18:44'),
(385, 257, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-21 12:29:44', '2020-04-21 12:29:44'),
(386, 257, 225, 4, '{\"post_id\":\"139\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/257\\/1586606757picture_1586606725.jpg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/257\\/1586606757picture_1586606751.jpg\"]}', 0, '2020-04-21 12:30:04', '2020-04-21 12:30:04'),
(387, 257, 225, 4, '{\"post_id\":\"140\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/257\\/1586606757picture_1586606725.jpg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/257\\/1586606757picture_1586606751.jpg\"]}', 0, '2020-04-21 12:30:16', '2020-04-21 12:30:16'),
(388, 257, 225, 4, '{\"post_id\":\"139\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/257\\/1586606757picture_1586606725.jpg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/257\\/1586606757picture_1586606751.jpg\"]}', 0, '2020-04-21 12:30:59', '2020-04-21 12:30:59'),
(389, 225, 225, 4, '{\"post_id\":\"124\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2020-04-21 12:31:24', '2020-04-21 12:31:24'),
(390, 256, 225, 4, '{\"post_id\":\"118\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/256\\/1586515731picture_1586515690.jpg\"]}', 0, '2020-04-21 12:31:41', '2020-04-21 12:31:41'),
(391, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 1, '2020-04-21 12:32:02', '2020-04-22 05:31:45'),
(392, 259, 261, 2, '{\"post_id\":\"143\",\"message\":\"user_name replied to your comment.\",\"comment_id\":230,\"parent_id\":\"195\",\"comment\":\"Nested Testing\",\"comment_file\":null}', 1, '2020-04-21 12:58:55', '2021-07-05 10:06:17'),
(393, 259, 261, 1, '{\"post_id\":\"143\",\"message\":\"user_name commented on your post.\",\"comment_id\":231,\"comment\":\"Nested Testing\",\"comment_file\":null}', 1, '2020-04-21 13:21:35', '2021-07-05 10:06:17'),
(394, 261, 261, 2, '{\"post_id\":\"143\",\"message\":\"user_name replied to your comment.\",\"comment_id\":232,\"parent_id\":\"231\",\"comment\":\"Nested Testing\",\"comment_file\":null}', 0, '2020-04-21 13:21:56', '2020-04-21 13:21:56'),
(395, 261, 261, 2, '{\"post_id\":\"143\",\"message\":\"user_name replied to your comment.\",\"comment_id\":233,\"parent_id\":\"232\",\"comment\":\"Nested Testing\",\"comment_file\":null}', 0, '2020-04-21 13:37:42', '2020-04-21 13:37:42'),
(396, 261, 261, 2, '{\"post_id\":\"143\",\"message\":\"user_name replied to your comment.\",\"comment_id\":234,\"parent_id\":\"233\",\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1587476363fp_wmg_brawlstars.png\"}', 0, '2020-04-21 13:39:23', '2020-04-21 13:39:23'),
(397, 261, 261, 2, '{\"post_id\":\"143\",\"message\":\"user_name replied to your comment.\",\"comment_id\":235,\"parent_id\":\"232\",\"comment\":null,\"comment_file\":\"http:\\/\\/parallaxlogicit.com\\/showoff\\/assets\\/comments_images\\/1587476389fp_wmg_brawlstars.png\"}', 0, '2020-04-21 13:39:49', '2020-04-21 13:39:49'),
(398, 225, 225, 1, '{\"post_id\":\"165\",\"message\":\"user_name commented on your post.\",\"comment_id\":236,\"comment\":\"test comment\",\"comment_file\":null}', 0, '2020-04-21 15:42:55', '2020-04-21 15:42:55'),
(399, 225, 225, 2, '{\"post_id\":\"165\",\"message\":\"user_name replied to your comment.\",\"comment_id\":237,\"parent_id\":\"236\",\"comment\":\"test\",\"comment_file\":null}', 0, '2020-04-21 15:43:20', '2020-04-21 15:43:20'),
(400, 255, 255, 1, '{\"post_id\":\"164\",\"message\":\"user_name commented on your post.\",\"comment_id\":238,\"comment\":\"hi\",\"comment_file\":null}', 1, '2020-04-22 05:31:07', '2020-04-22 05:31:23'),
(401, 255, 255, 2, '{\"post_id\":\"164\",\"message\":\"user_name replied to your comment.\",\"comment_id\":239,\"parent_id\":\"238\",\"comment\":\"hlo\",\"comment_file\":null}', 1, '2020-04-22 05:31:12', '2020-04-22 05:31:26'),
(402, 255, 255, 1, '{\"post_id\":\"164\",\"message\":\"user_name commented on your post.\",\"comment_id\":240,\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-22 05:37:09', '2020-04-22 05:37:09'),
(403, 255, 255, 1, '{\"post_id\":\"164\",\"message\":\"user_name commented on your post.\",\"comment_id\":241,\"comment\":\"hlow\",\"comment_file\":null}', 0, '2020-04-22 05:37:14', '2020-04-22 05:37:14'),
(404, 255, 255, 1, '{\"post_id\":\"164\",\"message\":\"user_name commented on your post.\",\"comment_id\":242,\"comment\":\"t1\",\"comment_file\":null}', 0, '2020-04-22 05:37:18', '2020-04-22 05:37:18'),
(405, 255, 255, 1, '{\"post_id\":\"164\",\"message\":\"user_name commented on your post.\",\"comment_id\":243,\"comment\":\"t2\",\"comment_file\":null}', 0, '2020-04-22 05:37:22', '2020-04-22 05:37:22'),
(406, 255, 255, 2, '{\"post_id\":\"164\",\"message\":\"user_name replied to your comment.\",\"comment_id\":244,\"parent_id\":\"240\",\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-22 05:37:26', '2020-04-22 05:37:26'),
(407, 255, 255, 2, '{\"post_id\":\"164\",\"message\":\"user_name replied to your comment.\",\"comment_id\":245,\"parent_id\":\"241\",\"comment\":\"nnk\",\"comment_file\":null}', 0, '2020-04-22 05:37:30', '2020-04-22 05:37:30'),
(408, 255, 255, 2, '{\"post_id\":\"164\",\"message\":\"user_name replied to your comment.\",\"comment_id\":246,\"parent_id\":\"242\",\"comment\":\"hh\",\"comment_file\":null}', 0, '2020-04-22 05:37:34', '2020-04-22 05:37:34'),
(409, 255, 255, 2, '{\"post_id\":\"164\",\"message\":\"user_name replied to your comment.\",\"comment_id\":247,\"parent_id\":\"243\",\"comment\":\"jhj\",\"comment_file\":null}', 0, '2020-04-22 05:37:38', '2020-04-22 05:37:38'),
(410, 261, 261, 1, '{\"post_id\":\"166\",\"message\":\"user_name commented on your post.\",\"comment_id\":248,\"comment\":\"Testing\",\"comment_file\":null}', 0, '2020-04-22 05:41:12', '2020-04-22 05:41:12'),
(411, 261, 261, 2, '{\"post_id\":\"166\",\"message\":\"user_name replied to your comment.\",\"comment_id\":249,\"parent_id\":\"248\",\"comment\":\"Testing\",\"comment_file\":null}', 0, '2020-04-22 05:42:03', '2020-04-22 05:42:03'),
(412, 261, 261, 2, '{\"post_id\":\"166\",\"message\":\"user_name replied to your comment.\",\"comment_id\":250,\"parent_id\":\"248\",\"comment\":\"Nested Testing\",\"comment_file\":null}', 0, '2020-04-22 05:42:23', '2020-04-22 05:42:23'),
(413, 261, 261, 2, '{\"post_id\":\"166\",\"message\":\"user_name replied to your comment.\",\"comment_id\":251,\"parent_id\":\"250\",\"comment\":\"Nested Testing\",\"comment_file\":null}', 0, '2020-04-22 05:42:43', '2020-04-22 05:42:43'),
(414, 261, 261, 1, '{\"post_id\":\"166\",\"message\":\"user_name commented on your post.\",\"comment_id\":252,\"comment\":\"Testing\",\"comment_file\":null}', 0, '2020-04-22 05:44:26', '2020-04-22 05:44:26'),
(415, 261, 261, 2, '{\"post_id\":\"166\",\"message\":\"user_name replied to your comment.\",\"comment_id\":253,\"parent_id\":\"252\",\"comment\":\"Nested Testing\",\"comment_file\":null}', 0, '2020-04-22 05:44:54', '2020-04-22 05:44:54'),
(416, 261, 261, 2, '{\"post_id\":\"166\",\"message\":\"user_name replied to your comment.\",\"comment_id\":254,\"parent_id\":\"253\",\"comment\":\"Nested Testing\",\"comment_file\":null}', 0, '2020-04-22 05:45:26', '2020-04-22 05:45:26'),
(417, 225, 263, 4, '{\"post_id\":\"168\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1587536037_document0.jpeg\"]}', 0, '2020-04-22 12:11:44', '2020-04-22 12:11:44'),
(418, 225, 263, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-22 12:11:54', '2020-04-22 12:11:54'),
(419, 225, 263, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-22 12:12:10', '2020-04-22 12:12:10'),
(420, 225, 263, 1, '{\"post_id\":\"168\",\"message\":\"user_name commented on your post.\",\"comment_id\":255,\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-22 12:12:16', '2020-04-22 12:12:16'),
(421, 225, 263, 4, '{\"post_id\":\"168\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1587536037_document0.jpeg\"]}', 0, '2020-04-22 12:13:02', '2020-04-22 12:13:02'),
(422, 225, 263, 4, '{\"post_id\":\"168\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1587536037_document0.jpeg\"]}', 0, '2020-04-22 12:13:07', '2020-04-22 12:13:07'),
(423, 225, 263, 4, '{\"post_id\":\"168\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1587536037_document0.jpeg\"]}', 0, '2020-04-22 12:14:01', '2020-04-22 12:14:01'),
(424, 225, 263, 4, '{\"post_id\":\"168\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1587536037_document0.jpeg\"]}', 0, '2020-04-22 12:14:06', '2020-04-22 12:14:06'),
(425, 225, 263, 1, '{\"post_id\":\"168\",\"message\":\"user_name commented on your post.\",\"comment_id\":256,\"comment\":\"ok\",\"comment_file\":null}', 0, '2020-04-22 12:14:11', '2020-04-22 12:14:11'),
(426, 255, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-22 14:29:28', '2020-04-22 14:29:28'),
(427, 255, 259, 4, '{\"post_id\":\"169\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1587556396_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1587556396_document1.jpeg\"]}', 0, '2020-04-22 14:29:33', '2020-04-22 14:29:33'),
(428, 259, 259, 2, '{\"post_id\":\"135\",\"message\":\"user_name replied to your comment.\",\"comment_id\":257,\"parent_id\":\"197\",\"comment\":\"test\",\"comment_file\":null}', 1, '2020-04-22 19:42:36', '2021-07-05 10:06:17'),
(429, 255, 255, 4, '{\"post_id\":\"170\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1587556871c908cc3c-feea-4063-bb7a-773ccf638802.png\"]}', 0, '2020-04-23 04:27:41', '2020-04-23 04:27:41'),
(430, 255, 255, 4, '{\"post_id\":\"169\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1587556396_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1587556396_document1.jpeg\"]}', 0, '2020-04-23 04:28:00', '2020-04-23 04:28:00'),
(431, 225, 261, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-23 06:30:03', '2020-04-23 06:30:03'),
(432, 225, 261, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-23 06:48:14', '2020-04-23 06:48:14'),
(433, 225, 261, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-23 06:50:17', '2020-04-23 06:50:17'),
(434, 225, 261, 1, '{\"post_id\":\"168\",\"message\":\"user_name commented on your post.\",\"comment_id\":258,\"comment\":\"Push Testing\",\"comment_file\":null}', 0, '2020-04-23 06:52:00', '2020-04-23 06:52:00'),
(435, 225, 225, 1, '{\"post_id\":\"168\",\"message\":\"user_name commented on your post.\",\"comment_id\":259,\"comment\":\"hello\",\"comment_file\":null}', 0, '2020-04-23 06:52:43', '2020-04-23 06:52:43'),
(436, 225, 261, 2, '{\"post_id\":\"168\",\"message\":\"user_name replied to your comment.\",\"comment_id\":260,\"parent_id\":\"259\",\"comment\":\"Push Testing Reply\",\"comment_file\":null}', 0, '2020-04-23 06:54:11', '2020-04-23 06:54:11'),
(437, 225, 261, 2, '{\"post_id\":\"168\",\"message\":\"user_name replied to your comment.\",\"comment_id\":261,\"parent_id\":\"259\",\"comment\":\"Push Testing Reply\",\"comment_file\":null}', 0, '2020-04-23 06:54:48', '2020-04-23 06:54:48'),
(438, 225, 261, 4, '{\"post_id\":\"168\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1587536037_document0.jpeg\"]}', 0, '2020-04-23 06:55:50', '2020-04-23 06:55:50'),
(439, 225, 261, 4, '{\"post_id\":\"168\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1587536037_document0.jpeg\"]}', 0, '2020-04-23 06:56:45', '2020-04-23 06:56:45'),
(440, 225, 225, 1, '{\"post_id\":\"168\",\"message\":\"user_name commented on your post.\",\"comment_id\":262,\"comment\":\"test 1\",\"comment_file\":null}', 0, '2020-04-23 07:36:04', '2020-04-23 07:36:04'),
(441, 225, 261, 2, '{\"post_id\":\"168\",\"message\":\"user_name replied to your comment.\",\"comment_id\":263,\"parent_id\":\"259\",\"comment\":\"Push Testing Reply\",\"comment_file\":null}', 0, '2020-04-23 07:36:34', '2020-04-23 07:36:34'),
(442, 225, 263, 4, '{\"post_id\":\"168\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/225\\/1587536037_document0.jpeg\"]}', 0, '2020-04-23 08:35:33', '2020-04-23 08:35:33'),
(443, 225, 263, 1, '{\"post_id\":\"168\",\"message\":\"user_name commented on your post.\",\"comment_id\":264,\"comment\":\"ok\",\"comment_file\":null}', 0, '2020-04-23 08:36:49', '2020-04-23 08:36:49'),
(444, 261, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-23 09:13:32', '2020-04-23 09:13:32'),
(445, 255, 225, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-23 09:13:45', '2020-04-23 09:13:45'),
(446, 267, 255, 4, '{\"post_id\":\"187\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2020-04-23 09:20:23', '2020-04-23 09:20:23'),
(447, 267, 255, 1, '{\"post_id\":\"187\",\"message\":\"user_name commented on your post.\",\"comment_id\":265,\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-23 09:21:16', '2020-04-23 09:21:16'),
(448, 267, 255, 4, '{\"post_id\":\"187\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2020-04-23 09:21:37', '2020-04-23 09:21:37'),
(449, 255, 267, 4, '{\"post_id\":\"186\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2020-04-23 09:22:18', '2020-04-23 09:22:18'),
(450, 267, 255, 1, '{\"post_id\":\"187\",\"message\":\"user_name commented on your post.\",\"comment_id\":266,\"comment\":\"hi\",\"comment_file\":null}', 0, '2020-04-23 09:46:43', '2020-04-23 09:46:43'),
(451, 255, 267, 4, '{\"post_id\":\"185\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2020-04-23 09:47:12', '2020-04-23 09:47:12'),
(452, 255, 255, 4, '{\"post_id\":\"186\",\"post_type\":\"2\",\"message\":\"user_name  and 1 others liked your post.\"}', 0, '2020-04-23 09:57:00', '2020-04-23 09:57:00'),
(453, 267, 255, 4, '{\"post_id\":\"188\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/267\\/1587635396_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/267\\/1587635397_document1.jpeg\"]}', 0, '2020-04-23 14:10:20', '2020-04-23 14:10:20'),
(454, 267, 267, 4, '{\"post_id\":\"188\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/267\\/1587635396_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/267\\/1587635397_document1.jpeg\"]}', 0, '2020-04-23 14:12:55', '2020-04-23 14:12:55'),
(455, 267, 255, 4, '{\"post_id\":\"188\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/267\\/1587635396_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/267\\/1587635397_document1.jpeg\"]}', 0, '2020-04-23 14:19:30', '2020-04-23 14:19:30'),
(456, 267, 259, 4, '{\"post_id\":\"188\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/267\\/1587635396_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/267\\/1587635397_document1.jpeg\"]}', 0, '2020-04-23 19:32:03', '2020-04-23 19:32:03'),
(457, 267, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-23 19:34:16', '2020-04-23 19:34:16'),
(458, 261, 259, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-23 19:36:27', '2020-04-23 19:36:27'),
(459, 255, 255, 4, '{\"post_id\":\"191\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1587889253_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1587889254_document1.jpeg\"]}', 0, '2020-04-26 08:21:21', '2020-04-26 08:21:21'),
(460, 255, 272, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-26 08:37:00', '2020-04-26 08:37:00'),
(461, 267, 272, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-04-26 08:37:03', '2020-04-26 08:37:03'),
(462, 255, 265, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-05-02 23:19:24', '2020-05-02 23:19:24'),
(463, 255, 265, 4, '{\"post_id\":\"194\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1588441782_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1588441782_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1588441782_document2.jpeg\"]}', 0, '2020-05-02 23:19:53', '2020-05-02 23:19:53'),
(464, 255, 265, 4, '{\"post_id\":\"194\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1588441782_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1588441782_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1588441782_document2.jpeg\"]}', 0, '2020-05-02 23:19:56', '2020-05-02 23:19:56'),
(465, 255, 265, 1, '{\"post_id\":\"194\",\"message\":\"user_name commented on your post.\",\"comment_id\":267,\"comment\":\"kool\",\"comment_file\":null}', 0, '2020-05-02 23:20:04', '2020-05-02 23:20:04'),
(466, 267, 265, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-05-02 23:21:59', '2020-05-02 23:21:59'),
(467, 255, 265, 4, '{\"post_id\":\"192\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2020-05-02 23:23:58', '2020-05-02 23:23:58'),
(468, 255, 265, 1, '{\"post_id\":\"192\",\"message\":\"user_name commented on your post.\",\"comment_id\":268,\"comment\":\"no sound\",\"comment_file\":null}', 0, '2020-05-02 23:24:07', '2020-05-02 23:24:07'),
(469, 255, 265, 4, '{\"post_id\":\"193\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2020-05-02 23:27:54', '2020-05-02 23:27:54'),
(470, 265, 265, 2, '{\"post_id\":\"193\",\"message\":\"user_name replied to your comment.\",\"comment_id\":269,\"parent_id\":\"268\",\"comment\":\"nice\",\"comment_file\":null}', 0, '2020-05-02 23:27:59', '2020-05-02 23:27:59'),
(471, 255, 265, 1, '{\"post_id\":\"193\",\"message\":\"user_name commented on your post.\",\"comment_id\":270,\"comment\":\"nice\",\"comment_file\":null}', 0, '2020-05-02 23:28:24', '2020-05-02 23:28:24'),
(472, 255, 265, 1, '{\"post_id\":\"193\",\"message\":\"user_name commented on your post.\",\"comment_id\":271,\"comment\":\"nice\",\"comment_file\":null}', 0, '2020-05-02 23:28:45', '2020-05-02 23:28:45'),
(473, 255, 265, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-05-02 23:30:00', '2020-05-02 23:30:00'),
(474, 255, 265, 4, '{\"post_id\":\"192\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2020-05-02 23:35:14', '2020-05-02 23:35:14'),
(475, 255, 265, 1, '{\"post_id\":\"192\",\"message\":\"user_name commented on your post.\",\"comment_id\":272,\"comment\":\"jj\",\"comment_file\":null}', 0, '2020-05-02 23:35:19', '2020-05-02 23:35:19'),
(476, 255, 265, 4, '{\"post_id\":\"192\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2020-05-02 23:35:34', '2020-05-02 23:35:34'),
(477, 255, 265, 1, '{\"post_id\":\"193\",\"message\":\"user_name commented on your post.\",\"comment_id\":273,\"comment\":\"no sound\",\"comment_file\":null}', 0, '2020-05-02 23:38:40', '2020-05-02 23:38:40'),
(478, 267, 265, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-05-02 23:54:37', '2020-05-02 23:54:37'),
(479, 267, 265, 4, '{\"post_id\":\"187\",\"post_type\":\"2\",\"message\":\"user_name  and 1 others liked your post.\"}', 0, '2020-05-02 23:55:53', '2020-05-02 23:55:53'),
(480, 255, 265, 1, '{\"post_id\":\"186\",\"message\":\"user_name commented on your post.\",\"comment_id\":274,\"comment\":\"nice\",\"comment_file\":null}', 0, '2020-05-02 23:57:36', '2020-05-02 23:57:36'),
(481, 255, 265, 4, '{\"post_id\":\"186\",\"post_type\":\"2\",\"message\":\"user_name  and 2 others liked your post.\"}', 0, '2020-05-02 23:58:34', '2020-05-02 23:58:34'),
(482, 255, 265, 1, '{\"post_id\":\"186\",\"message\":\"user_name commented on your post.\",\"comment_id\":275,\"comment\":\"nice\",\"comment_file\":null}', 0, '2020-05-02 23:58:39', '2020-05-02 23:58:39'),
(483, 255, 265, 4, '{\"post_id\":\"164\",\"post_type\":\"2\",\"message\":\"user_name  and 1 others liked your post.\"}', 0, '2020-05-03 00:01:45', '2020-05-03 00:01:45'),
(484, 255, 265, 1, '{\"post_id\":\"164\",\"message\":\"user_name commented on your post.\",\"comment_id\":276,\"comment\":\"k\",\"comment_file\":null}', 0, '2020-05-03 00:01:52', '2020-05-03 00:01:52'),
(485, 258, 265, 1, '{\"post_id\":\"151\",\"message\":\"user_name commented on your post.\",\"comment_id\":277,\"comment\":\"kk\",\"comment_file\":null}', 0, '2020-05-03 00:08:12', '2020-05-03 00:08:12'),
(486, 258, 265, 1, '{\"post_id\":\"152\",\"message\":\"user_name commented on your post.\",\"comment_id\":278,\"comment\":\"nice\",\"comment_file\":null}', 0, '2020-05-03 00:09:58', '2020-05-03 00:09:58'),
(487, 258, 265, 1, '{\"post_id\":\"127\",\"message\":\"user_name commented on your post.\",\"comment_id\":279,\"comment\":\"kk\",\"comment_file\":null}', 0, '2020-05-03 00:10:34', '2020-05-03 00:10:34'),
(488, 260, 265, 3, '{\"message\":\"user_name started following you.\"}', 0, '2020-05-03 00:26:22', '2020-05-03 00:26:22'),
(489, 255, 265, 4, '{\"post_id\":\"185\",\"post_type\":\"2\",\"message\":\"user_name  and 1 others liked your post.\"}', 0, '2020-05-03 00:27:49', '2020-05-03 00:27:49'),
(490, 255, 265, 4, '{\"post_id\":\"170\",\"message\":\"user_name liked your 1 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1587556871c908cc3c-feea-4063-bb7a-773ccf638802.png\"]}', 0, '2020-05-03 00:27:54', '2020-05-03 00:27:54');
INSERT INTO `notifications` (`id`, `user_id`, `action_taken_by`, `type`, `notification_obj`, `read_status`, `created_at`, `updated_at`) VALUES
(491, 255, 265, 4, '{\"post_id\":\"169\",\"message\":\"user_name liked your 2 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1587556396_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1587556396_document1.jpeg\"]}', 0, '2020-05-03 00:27:59', '2020-05-03 00:27:59'),
(492, 255, 265, 4, '{\"post_id\":\"194\",\"message\":\"user_name liked your 3 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1588441782_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1588441782_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1588441782_document2.jpeg\"]}', 0, '2020-05-03 00:59:48', '2020-05-03 00:59:48'),
(493, 225, 273, 3, '{\"message\":\"user_name started following you.\"}', 0, '2021-07-02 21:19:04', '2021-07-02 21:19:04'),
(494, 255, 273, 3, '{\"message\":\"user_name started following you.\"}', 0, '2021-07-02 21:19:05', '2021-07-02 21:19:05'),
(495, 265, 273, 2, '{\"post_id\":\"193\",\"message\":\"user_name replied to your comment.\",\"comment_id\":280,\"parent_id\":\"270\",\"comment\":\"hey can\'t sse video, what\'s wrong?\",\"comment_file\":null}', 0, '2021-07-02 21:33:11', '2021-07-02 21:33:11'),
(496, 255, 274, 4, '{\"post_id\":\"110\",\"message\":\"user_name liked your 4 photos post.\",\"post_type\":\"1\",\"post_images\":[\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586513906_document0.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586513906_document1.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586513906_document2.jpeg\",\"https:\\/\\/plx-world.s3-us-west-2.amazonaws.com\\/assets\\/post_resource\\/255\\/1586513906_document3.jpeg\"]}', 0, '2021-07-05 13:52:07', '2021-07-05 13:52:07'),
(497, 255, 274, 3, '{\"message\":\"user_name started following you.\"}', 0, '2021-07-05 14:09:14', '2021-07-05 14:09:14'),
(498, 273, 273, 1, '{\"post_id\":\"203\",\"message\":\"user_name commented on your post.\",\"comment_id\":281,\"comment\":\"hello \\ud83e\\udd29\",\"comment_file\":null}', 0, '2021-07-05 17:43:07', '2021-07-05 17:43:07'),
(499, 273, 273, 1, '{\"post_id\":\"203\",\"message\":\"user_name commented on your post.\",\"comment_id\":282,\"comment\":\"funny video\",\"comment_file\":null}', 0, '2021-07-05 17:43:40', '2021-07-05 17:43:40'),
(500, 273, 273, 2, '{\"post_id\":\"203\",\"message\":\"user_name replied to your comment.\",\"comment_id\":283,\"parent_id\":\"281\",\"comment\":\"when did you make\",\"comment_file\":null}', 0, '2021-07-05 17:43:54', '2021-07-05 17:43:54'),
(501, 274, 273, 1, '{\"post_id\":\"242\",\"message\":\"user_name commented on your post.\",\"comment_id\":284,\"comment\":\"Hi today will be a test to see if you make it to work on the house I will be there in a few minutes\",\"comment_file\":null}', 0, '2021-07-07 07:18:49', '2021-07-07 07:18:49'),
(502, 274, 273, 4, '{\"post_id\":\"242\",\"post_type\":\"2\",\"message\":\"user_name  liked your post.\"}', 0, '2021-07-07 07:18:59', '2021-07-07 07:18:59'),
(503, 274, 273, 3, '{\"message\":\"user_name started following you.\"}', 0, '2021-07-07 07:19:49', '2021-07-07 07:19:49'),
(504, 274, 273, 3, '{\"message\":\"user_name started following you.\"}', 0, '2021-07-07 08:11:01', '2021-07-07 08:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00787cd67244df3f9dd6bd19611bca78cb4f00503cd50f9c6f4abcd1e3b49958ba8f9b75e081556e', 118, 2, NULL, '[]', 1, '2019-05-29 10:58:49', '2019-05-29 10:58:49', '2020-05-29 10:58:49'),
('00edc86de5cc185461fffa456307f90fb58230795972810c3c81bd898f40f162ce82f475f2b37396', 118, 2, NULL, '[]', 1, '2019-06-01 09:16:33', '2019-06-01 09:16:33', '2020-06-01 09:16:33'),
('01ba914fda401773a64f9ff4f1a6791e3a54399d3d4da0ea564e835d638f92bd90995c9fd6437530', 255, 1, NULL, '[]', 0, '2020-04-20 18:42:12', '2020-04-20 18:42:12', '2021-04-21 00:42:12'),
('01dee25dcba995d9dd761c36c650350f7816d688484226a19c921047dbeb68d927c8990b332d01c2', 1, 1, NULL, '[]', 0, '2019-06-20 08:34:35', '2019-06-20 08:34:35', '2020-06-20 08:34:35'),
('021cced3ba4934b69c764e64d5d950a4bf41554036d11dfd53131e2d2d2c43b4c59f48cdcd3a4d13', 273, 1, NULL, '[]', 1, '2021-07-02 18:01:43', '2021-07-02 18:01:43', '2022-07-03 00:01:43'),
('02838fb99fa84b028af5ebdfc95e2e18c7a1376dcd34526a14d3b5968de78a728876734100173f2e', 124, 2, NULL, '[]', 1, '2019-06-20 07:39:22', '2019-06-20 07:39:22', '2020-06-20 07:39:22'),
('02a151e36b42d7fbe4d2811c412559d82d365bc4dad61546425faaae290186fdd9aae5eeafdd2c19', 214, 1, NULL, '[]', 1, '2020-04-05 14:05:19', '2020-04-05 14:05:19', '2021-04-05 20:35:19'),
('03366306c0b153e6447b99d9afe5c6161fb5f9dd8a4423ae27b9c232ce2d36906f715e4b18b91075', 214, 1, NULL, '[]', 1, '2020-04-05 13:55:39', '2020-04-05 13:55:39', '2021-04-05 20:25:39'),
('04a14a48ffea7b1e861d5cb7fbe12c51b056aceff6cf77156a2adacd9fe0e0c99813cf68fc303438', 259, 1, NULL, '[]', 1, '2020-04-12 11:14:24', '2020-04-12 11:14:24', '2021-04-12 17:14:24'),
('04d78f8e16dae2bb3f25959ac78dcfdec9e806170b16ffc88520bda53478e1def6ff78cf85984289', 274, 1, NULL, '[]', 0, '2021-07-06 13:15:57', '2021-07-06 13:15:57', '2022-07-06 19:15:57'),
('04fba33d574caa53229903eb8b8a6b75af67d4cab28f5bcb312ee3fba337a46c373c7adc829ca2d3', 1, 1, NULL, '[]', 1, '2019-05-23 11:29:37', '2019-05-23 11:29:37', '2020-05-23 11:29:37'),
('053b62f8425978b0329ebc31266b3bed16476ed142dfc669441bf9ee6f7a7232d503b6e3321af221', 153, 1, NULL, '[]', 1, '2019-06-22 10:25:52', '2019-06-22 10:25:52', '2020-06-22 16:55:52'),
('05790c465e2e8da6ea78116799fb05afee7ce0708c869f1a9e10abd3290f2622150571074a916f61', 217, 1, NULL, '[]', 1, '2020-03-30 13:22:53', '2020-03-30 13:22:53', '2021-03-30 19:52:53'),
('057c7df434545ff5f1cc87b58290ba940d9db7cd2ddb9f08e3bdfb1783661a6f107a021312a16197', 274, 1, NULL, '[]', 0, '2021-07-06 09:49:59', '2021-07-06 09:49:59', '2022-07-06 15:49:59'),
('05b2c00eb3976295092a4e6386a63ab9e37073c9012df70c7136c4181d0c8638c7772fc6956bde4a', 106, 1, NULL, '[]', 0, '2019-05-15 04:43:14', '2019-05-15 04:43:14', '2020-05-15 04:43:14'),
('062d3391fa1f2f1bb911e8e22f44763c6481cf1cbffec3575bf995e240fd93dcefbcaf8ca56f213e', 1, 1, NULL, '[]', 1, '2019-05-27 04:53:10', '2019-05-27 04:53:10', '2020-05-27 04:53:10'),
('064359f6b8b00681291806f16b322d270f6ef4c9ed999603a086f3f9376d8b51260cdf014bcf22af', 273, 1, NULL, '[]', 0, '2021-07-09 14:17:44', '2021-07-09 14:17:44', '2022-07-09 20:17:44'),
('069bc7a8d145a97cbe9099d05c6fbb39db059d24cd596a988ba62e5addda886433b8046c3a63ea52', 214, 1, NULL, '[]', 1, '2020-03-31 12:03:54', '2020-03-31 12:03:54', '2021-03-31 18:33:54'),
('06a0566621e0ae431bcddbaf3e725ed35f490010d9af9cd071a8334bd1dc6a9e75eb7d87be45f1d5', 7, 1, NULL, '[]', 1, '2019-02-02 04:27:25', '2019-02-02 04:27:25', '2020-02-02 10:27:25'),
('06c1b83ba30c44f82f9cd17b6f93639bc8730dc552f65cda81feb6ea9fe27539e48926a6fc23a3f1', 215, 1, NULL, '[]', 1, '2020-03-24 10:07:26', '2020-03-24 10:07:26', '2021-03-24 16:37:26'),
('06dabb17a7c4d083d21381466b286d778be5ec6a6561a5f18faf60929a2c60f181c05a281475becf', 214, 1, NULL, '[]', 1, '2020-04-01 08:57:08', '2020-04-01 08:57:08', '2021-04-01 15:27:08'),
('070e42f8ef825ee21ea74dbfc8972aa961d50bbd830f97ef3ab5ea5485cda72876f399baf2e3e010', 122, 2, NULL, '[]', 0, '2019-09-18 11:22:10', '2019-09-18 11:22:10', '2020-09-18 17:52:10'),
('08043bbc71c788a49e8fff9466bbb6d41cf3837cfd40075d27553f1691b435dceb28f36bcd3841b6', 112, 1, NULL, '[]', 0, '2019-05-30 09:35:33', '2019-05-30 09:35:33', '2020-05-30 09:35:33'),
('0805c0ae0c3fa759f8b95a05adc3d11c5bac78e4bba88d8529aced693a90727c9bbb54a629841673', 178, 2, NULL, '[]', 1, '2020-03-11 06:41:39', '2020-03-11 06:41:39', '2021-03-11 13:11:39'),
('084002fd1e9c2d966f84a87ff1096bcdb6a0ded55da4cba188e165c66736dc9b26cefad628c747d7', 124, 2, NULL, '[]', 0, '2019-06-19 10:38:20', '2019-06-19 10:38:20', '2020-06-19 10:38:20'),
('08b0edba0bdf09f8a3365ae473b5b0005b0bd569cf7f8a514adf2fa9d31f3812aec59a97cd19f0dc', 199, 2, NULL, '[]', 0, '2019-09-20 12:36:32', '2019-09-20 12:36:32', '2020-09-20 19:06:32'),
('08b1c639082b2ad1f417acabb46d7e0b14dd2bc46615e3c203ab2f35b4ba8b3f89f9a6ea4918c2b3', 125, 2, NULL, '[]', 0, '2019-06-25 08:33:02', '2019-06-25 08:33:02', '2020-06-25 15:03:02'),
('09002d5dffcde565eb0110853ee60837b6e197c06b6c9d62886707076394af70e123eebb375b9b33', 125, 1, NULL, '[]', 0, '2019-06-22 06:53:21', '2019-06-22 06:53:21', '2020-06-22 13:23:21'),
('093f2f60269c1ec6221a2f78849139780931c028d4a8eb9ef5596beb8ce5e4ade6666d0104ca4237', 111, 1, NULL, '[]', 0, '2019-05-25 06:36:55', '2019-05-25 06:36:55', '2020-05-25 06:36:55'),
('09605fcb6aa0e6eb8fee6e4b18d291e571eaf2367a76918997601d8c1f60eff5248a5240619d2dec', 237, 1, NULL, '[]', 0, '2020-04-07 06:10:37', '2020-04-07 06:10:37', '2021-04-07 12:40:37'),
('09938f72b6c062719019d1951ce547152d56414f60cf63c727764b73de4bc2bc9e7233cb1ded0c58', 124, 2, NULL, '[]', 0, '2019-06-19 09:41:47', '2019-06-19 09:41:47', '2020-06-19 09:41:47'),
('09b1673f61966481532eb667eb3ec70b3addc782fa03d1e816542d19aa1bb113c3c11b6e1b71391c', 250, 1, NULL, '[]', 0, '2020-04-07 14:55:11', '2020-04-07 14:55:11', '2021-04-07 21:25:11'),
('09dffd2c630c7f01d9af0d0ec78127797c02d737bd65b81ed6e68a365cdbd08c2b02e30adaae650e', 166, 2, NULL, '[]', 0, '2020-02-25 09:29:20', '2020-02-25 09:29:20', '2021-02-25 15:59:20'),
('0a0709fe11c03a7f5841de912a01a5da1cb8b25bc8716678dc0f0b636c397dcb7534dac1eb527b3b', 223, 1, NULL, '[]', 0, '2020-03-31 15:30:21', '2020-03-31 15:30:21', '2021-03-31 22:00:21'),
('0ade9186c0ce9f329bdeacf2b9966f5646704b803e56ffdf3f118087d87daac3820714cef15e0e88', 274, 1, NULL, '[]', 1, '2021-07-06 13:35:30', '2021-07-06 13:35:30', '2022-07-06 19:35:30'),
('0aec419e4c55c4866e47d03cf7274c74250a57939bb518fd097047b1f4245135cd3c1d349a81b33b', 180, 1, NULL, '[]', 0, '2019-08-21 08:41:37', '2019-08-21 08:41:37', '2020-08-21 15:11:37'),
('0af4002c0f9946151625a4faddef956b76242470eed58cf7735c018d9b12737643187c4fcd7b563b', 225, 1, NULL, '[]', 0, '2020-04-22 06:23:08', '2020-04-22 06:23:08', '2021-04-22 12:23:08'),
('0b21919fe80d0d985a32b8f08f9dceb953e92b3fdca92ec949cd72d0f746303e4246fd9f8cf4bcb3', 178, 2, NULL, '[]', 0, '2019-07-17 12:34:53', '2019-07-17 12:34:53', '2020-07-17 19:04:53'),
('0bc05413ea97f3b30eb76026a3cdd14df982dd6528744457654c5b3dcc6a7b89bf5d1fafa3889f92', 121, 2, NULL, '[]', 0, '2019-06-02 10:15:08', '2019-06-02 10:15:08', '2020-06-02 10:15:08'),
('0bf138e2c60fd93e738030f955180eec4cf2c54fb5542f86d9f239d0397ada005b3be40bff7d94f7', 139, 2, NULL, '[]', 0, '2019-09-21 05:42:56', '2019-09-21 05:42:56', '2020-09-21 12:12:56'),
('0c02d413a3d6285ad0bba953e7ea4c9add81f6d6ea2260f104e392f911ec7deafc8f92a458a17ad1', 220, 1, NULL, '[]', 1, '2020-04-05 11:09:30', '2020-04-05 11:09:30', '2021-04-05 17:39:30'),
('0c504e9d7ee8e92d934e1de565aa03b9c2085da17000a7eba2c3bd2d4cc43d45614895ead0d2b10b', 257, 1, NULL, '[]', 0, '2020-04-20 08:31:57', '2020-04-20 08:31:57', '2021-04-20 14:31:57'),
('0c81d7649b51f707bb4fb6a57de1b29db2fbeca2f28be87ba53dee2d05054ea847e31acf9d496cdd', 236, 1, NULL, '[]', 0, '2020-04-06 18:00:20', '2020-04-06 18:00:20', '2021-04-07 00:30:20'),
('0ce639a3e5b5dda8619c457ae9c2f4bfcb89a45bd4531afda0bc45e43d7fa7f99e62b48aed969e21', 139, 2, NULL, '[]', 0, '2019-06-20 05:41:10', '2019-06-20 05:41:10', '2020-06-20 05:41:10'),
('0d0d86c37d0bd926c2dadde409672f8e4ec25fb22e380c9bf94d0f402596b7fa944c8dedd050bce3', 165, 1, NULL, '[]', 0, '2019-06-22 13:35:23', '2019-06-22 13:35:23', '2020-06-22 20:05:23'),
('0d31150a89f7f0a8b93edc1dff3c15e4e2fe4f3174fd1295137da2068407981c13c34bc2c747a44f', 178, 2, NULL, '[]', 0, '2019-10-28 08:11:44', '2019-10-28 08:11:44', '2020-10-28 14:41:44'),
('0d42dc50de5af5f0a689950fc86cd604002970d2858e4e5cb47de7058febb7fb1323e08ca9def86b', 274, 1, NULL, '[]', 0, '2021-07-05 12:19:01', '2021-07-05 12:19:01', '2022-07-05 18:19:01'),
('0d6fb8ac68882dac58e578a763610110cf6eac5e7c14600f346e98fbfca313e0bbd494d4387bffde', 186, 1, NULL, '[]', 0, '2019-07-10 05:52:57', '2019-07-10 05:52:57', '2020-07-10 12:22:57'),
('0d858f818808ea09591af901d5702f3ead5bb1fdee327f161d3387bf40cdd9f3942a47257984db4a', 274, 1, NULL, '[]', 0, '2021-07-06 10:09:31', '2021-07-06 10:09:31', '2022-07-06 16:09:31'),
('0e14c99ad2b8bd707ee56d274a5b30b93dfbcbf97339225512eeee81270c706308fcb57e943c1b5e', 214, 1, NULL, '[]', 1, '2020-04-05 13:50:48', '2020-04-05 13:50:48', '2021-04-05 20:20:48'),
('0e4c2c6d7e104780d837634398b0b21383dc489ae185377e7fceb914d3ad3fbf69912800be7e809f', 226, 1, NULL, '[]', 0, '2020-03-31 18:02:52', '2020-03-31 18:02:52', '2021-04-01 00:32:52'),
('0ee19b8edbf39e60ada87077b95013e2ed6fc8763dc710559fe5a6d74f1139379ce4e71d51b49dfa', 124, 2, NULL, '[]', 1, '2019-06-20 07:06:56', '2019-06-20 07:06:56', '2020-06-20 07:06:56'),
('0f741f6c042d69896ececee08291276eed18b52b66404037b85bb88453b0f5b0e938fc2618549f09', 125, 2, NULL, '[]', 0, '2019-06-20 17:55:44', '2019-06-20 17:55:44', '2020-06-21 00:25:44'),
('0f89c097b0ea74f3bd62732e274125d03ad621643d77cc805b9ba83a0ed315a6105f2ad99aa02d2d', 139, 2, NULL, '[]', 0, '2019-09-08 06:03:33', '2019-09-08 06:03:33', '2020-09-08 12:33:33'),
('0fbcea94a5a4c8c38daa9c150853adf61738234005b7930db623d7a95659960f3c1417a57f5d4c04', 112, 1, NULL, '[]', 1, '2019-05-26 07:52:23', '2019-05-26 07:52:23', '2020-05-26 07:52:23'),
('107c955bd0397ba060e3d257de75919ea6145a3cd89f07f078bd9a1a3058c5dbf7df9d6542c5a06a', 220, 1, NULL, '[]', 1, '2020-04-05 09:04:21', '2020-04-05 09:04:21', '2021-04-05 15:34:21'),
('109f6b272dafbe46a9c5c3775d404e8c33e0d7898e0fa6bba091d5dbc72bd9c4c91ae47e258781ae', 112, 1, NULL, '[]', 0, '2019-07-03 06:50:20', '2019-07-03 06:50:20', '2020-07-03 13:20:20'),
('10c8a063195354f790d8d844b624324fa6af10f3a5e8561d12fc3d4331cf86203b47001698f1ab4b', 107, 1, NULL, '[]', 0, '2019-05-08 06:54:22', '2019-05-08 06:54:22', '2020-05-08 06:54:22'),
('10e109a5c25d3f1e71e5991eebc457060c5d680b1a741cd380c3bffe53e6b55d91eeaa882427466f', 178, 2, NULL, '[]', 0, '2019-09-08 05:26:25', '2019-09-08 05:26:25', '2020-09-08 11:56:25'),
('10f5706924d4772a268d4879c73edb97668a58d5326d4bfd580d06e77c60a05d0e9405bb2e0aee44', 124, 2, NULL, '[]', 0, '2019-06-24 10:46:51', '2019-06-24 10:46:51', '2020-06-24 17:16:51'),
('111b31ffb66bd30ab1d4df83d8b85d295c279a7e294f21ae2515e0fc17475bc36d75b3382f82c574', 263, 1, NULL, '[]', 1, '2020-04-12 18:28:10', '2020-04-12 18:28:10', '2021-04-13 00:28:10'),
('113d8e903e42325860ccfefc27db524a230fbad0f43c3f2d1ddef83135d540c9dec17795d9c0613e', 226, 1, NULL, '[]', 1, '2020-04-05 04:46:11', '2020-04-05 04:46:11', '2021-04-05 11:16:11'),
('11fe8445251be53a6fbad05b8eb01a6e1985a1a022cb6fd127a1a78cb58eff5147f3d53a7b3ec22a', 148, 1, NULL, '[]', 0, '2019-06-22 06:12:36', '2019-06-22 06:12:36', '2020-06-22 12:42:36'),
('12299fa1a6165e9cf62babc7988464f3753fe525860183c9c0898ef78b9b52fa6087c21e4c71657b', 180, 1, NULL, '[]', 0, '2019-09-07 07:34:10', '2019-09-07 07:34:10', '2020-09-07 14:04:10'),
('127a642f00e82f09fd9e9a932fdabc5bd07c3f198a892edb32905e8eb49f481f811c905863932ec3', 273, 1, NULL, '[]', 1, '2021-07-05 07:37:36', '2021-07-05 07:37:36', '2022-07-05 13:37:36'),
('12aaa962ed8babde346e00aa2877ad785288161d0a060f7b57855233f6087545639df1dc65b3191e', 178, 2, NULL, '[]', 0, '2020-02-25 11:15:31', '2020-02-25 11:15:31', '2021-02-25 17:45:31'),
('12fe3f987d36288cf90e173612277c08c79b79557ef2dee720694e8918f350fe960587ec5dfa9d9b', 208, 1, NULL, '[]', 1, '2019-12-29 12:40:46', '2019-12-29 12:40:46', '2020-12-29 19:10:46'),
('130643f7b2f74e18691e1b86a35ec1037a2e0ee520a5f79a4f5159b2adb4532cd307b6b85641d13b', 152, 1, NULL, '[]', 1, '2019-06-22 09:33:34', '2019-06-22 09:33:34', '2020-06-22 16:03:34'),
('13511d544da41a1fab71942e6aa5ba9e01c3df6bf6aac659abd05a18a69cd58af6b01c6c541e4f3b', 198, 1, NULL, '[]', 0, '2019-11-25 04:51:45', '2019-11-25 04:51:45', '2020-11-25 11:21:45'),
('1450a28fb8133ebaf02d90f846dc4bd74354f9a0706d20f6ba82e664f2711545163c5a3a392e07d3', 214, 1, NULL, '[]', 1, '2020-03-23 10:28:24', '2020-03-23 10:28:24', '2021-03-23 16:58:24'),
('14e0064985a6f92a33d5466e073aca068c0127042bfe7d19327b13dfa83630fd923164f3f0fc092e', 214, 1, NULL, '[]', 1, '2020-03-31 15:29:34', '2020-03-31 15:29:34', '2021-03-31 21:59:34'),
('151abafd22afe7162220594873046a8f428ba339ebb27992e323daa7bb4a60383ac9fb6acfa9c432', 262, 1, NULL, '[]', 1, '2020-04-11 12:07:06', '2020-04-11 12:07:06', '2021-04-11 18:37:06'),
('152da811b937080a21726bf69cb0f8078eef0738311ad21ebb3def843ab13d2905507bdcc4591ab1', 180, 1, NULL, '[]', 0, '2019-09-02 09:49:24', '2019-09-02 09:49:24', '2020-09-02 16:19:24'),
('154066fc3ec045e95642edf186e4583cb92d44289d6916a95669416d172090b82820a7794dad4f2a', 259, 1, NULL, '[]', 0, '2020-05-09 09:11:21', '2020-05-09 09:11:21', '2021-05-09 15:11:21'),
('15492bca3ea09617e12c9fa75f84365b8652a973fc96992ddfd750622fae63b035011dbbcadd3e44', 211, 1, NULL, '[]', 0, '2020-02-12 05:39:04', '2020-02-12 05:39:04', '2021-02-12 12:09:04'),
('15cfce517204fe1af3c3d1177945a2f32ad6a9420944ef2739a222a5720a0724017145eebc0a9fc1', 125, 2, NULL, '[]', 1, '2019-06-02 10:14:16', '2019-06-02 10:14:16', '2020-06-02 10:14:16'),
('164ca239ee49b2578f4117b63d662ad5bebeb2a98ff0e937b51e3c6e5dd8034d1a2c681c7ff61d06', 255, 1, NULL, '[]', 0, '2020-04-23 05:23:28', '2020-04-23 05:23:28', '2021-04-23 11:23:28'),
('1650ea250f4147d05e7f6118bf7e87156ff3d80376b804d93bd8bc97f97971f2da2dd33ab566a6c7', 274, 1, NULL, '[]', 0, '2021-07-06 09:39:12', '2021-07-06 09:39:12', '2022-07-06 15:39:12'),
('16a150342b01aac45dc1d91c0a73fd67dd5608402426a522d6ded82a1ae09b611fd03d24b30b434b', 217, 1, NULL, '[]', 0, '2020-03-31 16:00:44', '2020-03-31 16:00:44', '2021-03-31 22:30:44'),
('16ba1808860b54f90a067e9239a169c0a838bbb17132d0c8ca0aad86d647c12efe24663f63586180', 178, 2, NULL, '[]', 0, '2019-07-16 13:15:00', '2019-07-16 13:15:00', '2020-07-16 19:45:00'),
('16ec2fd1fe9ab23af071d8b8d90556b519d75314dd33b2de91267521f6206961232738d40d798b35', 211, 1, NULL, '[]', 1, '2020-02-12 06:07:59', '2020-02-12 06:07:59', '2021-02-12 12:37:59'),
('170faba2346cd2871194c3d1206caba31f341eea4d79ad65a83727d8a8a6b77e523e1ef53534d975', 178, 2, NULL, '[]', 0, '2019-10-19 09:46:24', '2019-10-19 09:46:24', '2020-10-19 16:16:24'),
('182377a47b93a9d7f5fab3a37062dac96737113bf99a8093de4b0fe77e0fc8494d772c52fee03a00', 127, 2, NULL, '[]', 0, '2019-10-23 03:33:59', '2019-10-23 03:33:59', '2020-10-23 10:03:59'),
('184f8f1d89c7ef6948fb9849c303c6eb6765ad694d80108b0ef8ec75caee35bf94b55c2217f44717', 166, 2, NULL, '[]', 0, '2019-09-19 10:47:23', '2019-09-19 10:47:23', '2020-09-19 17:17:23'),
('18c4d2e78ae94c1ce290d27e896e9f1a6854be1869bbf8e3119ed938f4337f8400e510be56a30e30', 139, 2, NULL, '[]', 1, '2019-06-20 08:35:45', '2019-06-20 08:35:45', '2020-06-20 08:35:45'),
('18c73601ed47cfef8e8c7ec710367e19c705071d9d12104abc57bebdf94afd7fd4f7cb44a5090eb3', 7, 1, NULL, '[]', 1, '2019-02-02 00:59:10', '2019-02-02 00:59:10', '2020-02-02 06:59:10'),
('18db7258c44c7489da2b30dacc2b0a9bde1cc12c3b66dc03ab288e112dab9d8c023646c45fedac88', 257, 1, NULL, '[]', 0, '2020-04-20 06:26:40', '2020-04-20 06:26:40', '2021-04-20 12:26:40'),
('1990ba2aa3056b718944ac3b7867ff405be9ca7f091b0cd576eff911e4a464301303c97912f760dc', 255, 1, NULL, '[]', 0, '2020-04-14 19:19:53', '2020-04-14 19:19:53', '2021-04-15 01:19:53'),
('1a70283a367f26d3e7d24921dd36594484b7e05c65630d02d9e91ce3fe308fc90e3f4bf5d585dcb5', 119, 1, NULL, '[]', 1, '2019-05-31 11:18:08', '2019-05-31 11:18:08', '2020-05-31 11:18:08'),
('1ac4f60082998bcc6d70cfd4f3fa0c1c735d19103992e3b23704606410282664b589ca2965176526', 236, 1, NULL, '[]', 0, '2020-04-10 04:45:30', '2020-04-10 04:45:30', '2021-04-10 11:15:30'),
('1af1e58038e55f79772f89d9dea0d60dd45638beb445a1306b9247596d63c6c175473f89ab7bb7da', 273, 1, NULL, '[]', 0, '2021-07-07 00:18:44', '2021-07-07 00:18:44', '2022-07-07 06:18:44'),
('1b9d9b715f5b6aeea07cc10c2575110d61492c2aa6d46e1a5d9837bc573304f61afdf8fe8539b733', 225, 1, NULL, '[]', 0, '2020-03-31 17:56:16', '2020-03-31 17:56:16', '2021-04-01 00:26:16'),
('1c5b9728a4e5f891aca3bdab5b9e6fd83ba2ea21e4f366f70b13501714b7eaa61d33dd87108cb352', 273, 1, NULL, '[]', 0, '2021-07-07 07:36:53', '2021-07-07 07:36:53', '2022-07-07 13:36:53'),
('1c7876c1bdf39f35f55ad8756b399d0c20b3eaed32389c4954627eab1f78aa8e3149c5c334a23d94', 273, 1, NULL, '[]', 0, '2021-07-07 07:13:52', '2021-07-07 07:13:52', '2022-07-07 13:13:52'),
('1ccf8a7605e5a7541a0c8ee7f4d9118a6c5fc4313445ce311122ecdbd382631e78a1f581ac00b493', 214, 1, NULL, '[]', 1, '2020-04-03 08:45:40', '2020-04-03 08:45:40', '2021-04-03 15:15:40'),
('1d36a460ad2e737ec7ccfa3595a508cf47cd58039281e11bcb0002742644a0a7d35fdf69a855f830', 127, 2, NULL, '[]', 0, '2019-09-04 04:36:26', '2019-09-04 04:36:26', '2020-09-04 11:06:26'),
('1d447d72325d4bca770776a1c7cab125e7f96e929f2468b418d743a5bd50854d06fade2a03622718', 125, 2, NULL, '[]', 1, '2019-06-19 11:52:00', '2019-06-19 11:52:00', '2020-06-19 11:52:00'),
('1dcb6a6e8ced5826b0436ed4ef1f7d93d55dd513a25ebbb711bef8cd795a4d0d466e53dfbd3d7b82', 178, 2, NULL, '[]', 0, '2019-09-05 10:52:39', '2019-09-05 10:52:39', '2020-09-05 17:22:39'),
('1de005148656472a978de5f16e3ddb947a7e370c260ad9c067b325d8837ab8dad57343f19fc11387', 178, 2, NULL, '[]', 0, '2020-03-09 06:59:55', '2020-03-09 06:59:55', '2021-03-09 13:29:55'),
('1e6330ff3de64e796db341f9e0e35534dad7b6c4f48e0018483d59c1ca4ae7de63d9f6fdd182e69d', 195, 1, NULL, '[]', 0, '2019-09-04 13:15:21', '2019-09-04 13:15:21', '2020-09-04 19:45:21'),
('1e737f859e1921b3924f14c93b5fcea65f554967f147790bf06445d5a21f8c9715e5abe4d9d9ad83', 257, 1, NULL, '[]', 0, '2020-04-16 13:51:25', '2020-04-16 13:51:25', '2021-04-16 19:51:25'),
('1ea60e240b2fe0eb410fd7cc23d5fced876bc39f0f379e7a601592abfa9597b2e936bae60d0c6e5a', 124, 2, NULL, '[]', 1, '2019-06-22 07:49:06', '2019-06-22 07:49:06', '2020-06-22 14:19:06'),
('1fac79ec081ecb0d859745c55027342d0bfe14f312020551ceaa6597291dde2b5e65d861bc0e8c2b', 178, 2, NULL, '[]', 0, '2019-07-11 05:45:30', '2019-07-11 05:45:30', '2020-07-11 12:15:30'),
('1fc314a007bbfb3c92295d168ce79959f2e79bc5d7ebde232d872a5ab68a84d5d7fa40b510febc9c', 192, 2, NULL, '[]', 0, '2019-10-12 16:46:35', '2019-10-12 16:46:35', '2020-10-12 23:16:35'),
('1fdab25f9c55f6dbdbc7bf8627f8e82199f7d9e5eb3927fd23e751b564f78295dcbf4b4c52121e39', 259, 1, NULL, '[]', 0, '2020-04-18 09:30:00', '2020-04-18 09:30:00', '2021-04-18 15:30:00'),
('20026a5fb7635321871dfa487757b2b3943d828792aa9b3946a753cc6d8b89824c6e12fd4ebe92af', 258, 1, NULL, '[]', 0, '2020-04-22 07:27:30', '2020-04-22 07:27:30', '2021-04-22 13:27:30'),
('20635dff9c90898ad246b432520a4b79d625f221c786d549ba6bd7d411471f3ab59a88fd04f5e905', 268, 1, NULL, '[]', 1, '2020-04-16 07:28:25', '2020-04-16 07:28:25', '2021-04-16 13:28:25'),
('20a17669dc720ce54d58abe22452c44c1ca169cd5e5b48925eb0b60de59c4826bb5ea0f3caef978a', 214, 1, NULL, '[]', 1, '2020-03-24 10:04:51', '2020-03-24 10:04:51', '2021-03-24 16:34:51'),
('21132470414644923fba372e7007426530925a2972dd0b78e2c0ffb6d081f7c9630f0629a3c5de9a', 236, 1, NULL, '[]', 0, '2020-04-08 18:07:09', '2020-04-08 18:07:09', '2021-04-09 00:37:09'),
('2119abab8a6459062cd8c14b3db743adbb478fe8988c4445c913d3164d6894cdec30907f08a61529', 208, 1, NULL, '[]', 1, '2020-03-09 06:12:59', '2020-03-09 06:12:59', '2021-03-09 12:42:59'),
('2130b927542cffdaf9a397bee2715a4b1335179eb69407f5f6d59b81a670447a2e2ec948b611c1a3', 1, 1, NULL, '[]', 0, '2019-07-03 06:32:33', '2019-07-03 06:32:33', '2020-07-03 13:02:33'),
('21bf02b316f26f5a1406806fd0331434e6dc45b07895dd612eee4930b6ce62debfec693325f61aea', 7, 1, NULL, '[]', 0, '2019-05-07 04:50:53', '2019-05-07 04:50:53', '2020-05-07 04:50:53'),
('222e7f07c573dd2d11155acae7dc9c0c84774db705da15b001b526cfabf3cc6e76ac53f8a4317795', 5, 1, NULL, '[]', 1, '2019-02-01 23:20:38', '2019-02-01 23:20:38', '2020-02-02 05:20:38'),
('22417eba7c90d030c46a53ba3faf0719d2e8e1a460c7e2df2bd03bebc1e3e4cbb6ce2b86151fc9b9', 146, 1, NULL, '[]', 0, '2019-06-21 19:21:39', '2019-06-21 19:21:39', '2020-06-22 01:51:39'),
('227fd39a874de7a903e0a972073f2649e26ccf566b6cf0d1ca0ddcbfc176be1d5875e99025229705', 274, 1, NULL, '[]', 0, '2021-07-06 11:51:30', '2021-07-06 11:51:30', '2022-07-06 17:51:30'),
('232c516be6637f1a161cf1a7d4508350d30be7994587b3bfab8095ecd8f324957ad86baea466cd22', 179, 1, NULL, '[]', 1, '2019-06-26 17:30:10', '2019-06-26 17:30:10', '2020-06-27 00:00:10'),
('235d5eae0a4f83c4ebaa8bf8287a8e52c4f216059a77babe8e0eede8168cfe4591a426f4fc1801d7', 235, 1, NULL, '[]', 1, '2020-04-06 14:58:04', '2020-04-06 14:58:04', '2021-04-06 21:28:04'),
('23a3fc211e6e307fa738407a481e56538233349ecc39683630a905c20fde90db3fb1515b81d228f7', 222, 1, NULL, '[]', 0, '2020-04-05 16:08:42', '2020-04-05 16:08:42', '2021-04-05 22:38:42'),
('240cd07a4e6c23f92847caafa48cb1e0d17893812834b36f9f6d3da6404950e24878fcddf1196cfc', 201, 2, NULL, '[]', 0, '2019-09-21 05:56:29', '2019-09-21 05:56:29', '2020-09-21 12:26:29'),
('2432b76cab1b87e39cf88d000b5a613cb8d6ddd98f6e95c7c51219736557fd659d6f5870215dbaa4', 273, 1, NULL, '[]', 0, '2021-07-08 08:22:48', '2021-07-08 08:22:48', '2022-07-08 14:22:48'),
('24e55062fa9d5188bcd92ba3614de42c0b62712b92209df660b372b700a765fab49b8bc1ed2f9990', 248, 1, NULL, '[]', 0, '2020-04-07 13:35:29', '2020-04-07 13:35:29', '2021-04-07 20:05:29'),
('250e26a4653a4b017fe302275aa8a1d9e3116f29bdc9777e4c9743228eb785f0a401b1e9b01f3f69', 259, 1, NULL, '[]', 1, '2021-07-05 10:28:46', '2021-07-05 10:28:46', '2022-07-05 16:28:46'),
('254745e4e68b72a83d54a1658349388ba8de14fbfe1939df1f7d8b4d3d74b1d9e8788f3185082651', 263, 1, NULL, '[]', 0, '2020-04-22 12:08:49', '2020-04-22 12:08:49', '2021-04-22 18:08:49'),
('25cd19ff6b2e639e1aca4cad27bc2688da4010d46a485c04824d35cb96863596a8a5c909ce99fdea', 149, 2, NULL, '[]', 1, '2019-06-22 06:28:33', '2019-06-22 06:28:33', '2020-06-22 12:58:33'),
('26cb7d07fbe46be3de26cb12a55b6b945baffb71c75a0cf08387ae77c18c7632b40d9986aec854bd', 226, 1, NULL, '[]', 0, '2020-03-31 18:04:38', '2020-03-31 18:04:38', '2021-04-01 00:34:38'),
('26f42d3b3ec64fb3e47ba11902c61fd7abe66fa2baf1a3bdde551d8e15e0863c71f8d94c2c0289d9', 112, 1, NULL, '[]', 0, '2019-06-02 06:46:00', '2019-06-02 06:46:00', '2020-06-02 06:46:00'),
('2707c29e363d36bd70e3974352be7e16c9ef22fd79f84648cabfea31aa9a763d092a8622fbbe9263', 166, 2, NULL, '[]', 0, '2019-09-21 07:56:13', '2019-09-21 07:56:13', '2020-09-21 14:26:13'),
('2758aa23b85d1f8b626711eeb835042892acad9aebfaa724501f85abfe3c1174b3d80b7ebc0e3c6e', 112, 1, NULL, '[]', 0, '2019-07-17 12:15:42', '2019-07-17 12:15:42', '2020-07-17 18:45:42'),
('2770f1701b62a234dd92e02f3fe37205433d005d9d3a20e3f3fa2c6e1fb141774c090264a0b388c4', 121, 2, NULL, '[]', 0, '2019-06-02 10:02:29', '2019-06-02 10:02:29', '2020-06-02 10:02:29'),
('279e25671901f4b3ef2a9de0370704064c0f25edae2228511934b3c472f72293cfd2efbf4725b444', 220, 1, NULL, '[]', 0, '2020-04-07 12:33:49', '2020-04-07 12:33:49', '2021-04-07 19:03:49'),
('27d467b2eaee7e9313a81b95b7ce7e938f6e32b351cb8f1a2f7d56cbd9b7862ced6aa3c78663fe2e', 139, 2, NULL, '[]', 1, '2019-06-20 05:50:04', '2019-06-20 05:50:04', '2020-06-20 05:50:04'),
('27d6d8576827c22f89c898b2f6c5e9a1570b31f7b8eeb61746068562e5416dffdb31bdb00a6ddd47', 214, 1, NULL, '[]', 1, '2020-04-01 09:46:41', '2020-04-01 09:46:41', '2021-04-01 16:16:41'),
('286c9f2a3de6823650ac9ab76fa7250b7ecc886c772bbfce375004ff68c154b9c23f08e7ce74275c', 208, 1, NULL, '[]', 0, '2020-01-23 12:04:14', '2020-01-23 12:04:14', '2021-01-23 18:34:14'),
('28976e0e1b388d70e9e3ac072a79c6f3c4a48f0f02435a1a5728e794d206e26be2d1d877ba95d46d', 238, 1, NULL, '[]', 0, '2020-04-07 06:13:59', '2020-04-07 06:13:59', '2021-04-07 12:43:59'),
('28cb0f4cef85671faf736989e7b2c90237311684baf7a15616c388cab3ae99842500ed97f45e94d8', 1, 1, NULL, '[]', 1, '2019-05-26 07:17:10', '2019-05-26 07:17:10', '2020-05-26 07:17:10'),
('290764b7d81e80da098a7ecf65961947be15e2677b353d9cef61156ec8a4ae1c698d3a2ffec116c1', 122, 2, NULL, '[]', 0, '2019-06-17 12:47:35', '2019-06-17 12:47:35', '2020-06-17 12:47:35'),
('2920901732fc50bfac812ac8d2612815851ce2fa2f9bee27f07bea3699532b869da364af25819a43', 254, 1, NULL, '[]', 1, '2020-04-10 09:49:12', '2020-04-10 09:49:12', '2021-04-10 16:19:12'),
('29285e72cebceb57dbc17482eba9b9c4e719daa2a012b8566b6e11b016c002fef3201a28400f460c', 273, 1, NULL, '[]', 0, '2021-07-08 16:01:49', '2021-07-08 16:01:49', '2022-07-08 22:01:49'),
('29f96278ee7a0314b47cae21fcbf182486559402f8465dbb3f7870fb60429be3ab8d537ce00c99f2', 125, 2, NULL, '[]', 0, '2019-06-02 10:44:21', '2019-06-02 10:44:21', '2020-06-02 10:44:21'),
('2a069a5fb580cd496f7f82859d572c541078822b8d39df14788c7148dd06dbfb4f21455c6b8f27c7', 230, 1, NULL, '[]', 0, '2020-04-04 17:27:53', '2020-04-04 17:27:53', '2021-04-04 23:57:53'),
('2a4e9394466651773ab2f08f4955b21f750cae4822011636d82c212cc110c01d2e219c41107a3c61', 193, 2, NULL, '[]', 0, '2020-03-10 12:02:40', '2020-03-10 12:02:40', '2021-03-10 18:32:40'),
('2ae54409ecaa20c9d4ef0398bc42cd9a34cecdbbb0440fb1f24247dc1cdc5b43848d134710a9ff54', 139, 2, NULL, '[]', 1, '2019-06-20 05:42:28', '2019-06-20 05:42:28', '2020-06-20 05:42:28'),
('2bf64a55bc618d9ae8824912e7524b7f175a75104fc2e84db69ed5d5f6c809ac369bec76d43e1a56', 178, 2, NULL, '[]', 0, '2020-02-22 04:33:32', '2020-02-22 04:33:32', '2021-02-22 11:03:32'),
('2c9beb785fc3735c735a6ce73b23c4e0d9e976b42d801483c270f66f2fc0ab25c135b1b086242b27', 274, 1, NULL, '[]', 0, '2021-07-06 09:10:58', '2021-07-06 09:10:58', '2022-07-06 15:10:58'),
('2cf2d135708c0fab707bd2a17452a8cf6c3e774a305a119e08d797a0b7f91628b4fb7066f2da8ab1', 203, 1, NULL, '[]', 0, '2019-10-19 07:13:50', '2019-10-19 07:13:50', '2020-10-19 13:43:50'),
('2dea16174ae1ea3745d5610b84252da292f627373a26b33848fa442e96996f86c28c48df52d0a8f3', 161, 1, NULL, '[]', 0, '2019-06-22 13:21:41', '2019-06-22 13:21:41', '2020-06-22 19:51:41'),
('2e5a7cb9382a423f8789b9c99bda7bac364c70c272072b577753d113c783d884a4dcaf67c9977ff6', 144, 1, NULL, '[]', 0, '2019-06-20 11:24:47', '2019-06-20 11:24:47', '2020-06-20 11:24:47'),
('2e765d68128db8799a07006425189707e4a46fd3e97a76aa3cfeb4ddf4d46c80cac3788d39b9c799', 160, 1, NULL, '[]', 1, '2019-06-22 13:10:46', '2019-06-22 13:10:46', '2020-06-22 19:40:46'),
('2e9d0ebc6e5bededf60bcac4e91c8d937b6dfc392a3a91f76575cd49ded367d69b76798b20b49082', 188, 1, NULL, '[]', 0, '2019-07-10 06:14:36', '2019-07-10 06:14:36', '2020-07-10 12:44:36'),
('2f16adf7daa1ec89ca7a5eadcd6a1cdb1ea792d2164272a3959db7730113b9509d927619e801e447', 1, 1, NULL, '[]', 0, '2019-12-22 08:08:52', '2019-12-22 08:08:52', '2020-12-22 14:38:52'),
('306b3b21d5857af8fe1def12d4b42ec10ebc528c2502e5e55c3e5b4fb2a05d1fbe03cb6839a9bbb5', 274, 1, NULL, '[]', 0, '2021-07-06 09:32:12', '2021-07-06 09:32:12', '2022-07-06 15:32:12'),
('306ff2b246417936838576a130334b2ab335b61a9a56320c002c8515b62edde053520ebb29813efd', 128, 1, NULL, '[]', 1, '2019-06-12 09:21:55', '2019-06-12 09:21:55', '2020-06-12 09:21:55'),
('318a230ed090f1fc25342e2c32b8d26522e7a9d96480d193cb45db33963f16414218e5876313b29e', 2, 1, NULL, '[]', 0, '2019-01-20 05:30:15', '2019-01-20 05:30:15', '2020-01-20 11:30:15'),
('3245b897e07017c37dda09e8733597573a45cc7e8ff22326771ef9ba0c12c5ac15c94134dc72c9e9', 1, 1, NULL, '[]', 0, '2019-05-27 10:34:27', '2019-05-27 10:34:27', '2020-05-27 10:34:27'),
('325926f3be21f1bb6509406f1f8d3be68034b29481b06ebc0defab92637e9cf2345a789eeb4c6a13', 252, 1, NULL, '[]', 0, '2020-04-08 07:38:25', '2020-04-08 07:38:25', '2021-04-08 14:08:25'),
('32aae6d0bf12bbe8f963c5b0bad965173685d0f53e899302441cee12da14758846e941d38139238f', 189, 2, NULL, '[]', 0, '2019-08-19 03:26:50', '2019-08-19 03:26:50', '2020-08-19 09:56:50'),
('330ec2c964e778811e8e9974afaa038c21012268b1cb882e957c65e66a46729310835d2cd74fed71', 208, 1, NULL, '[]', 1, '2020-03-09 06:24:56', '2020-03-09 06:24:56', '2021-03-09 12:54:56'),
('335b72c255c34b9c71ca6368c2b9cf3bb2e2e55b65214ae551d588e61fcde5b81cefceabb6c38ea7', 1, 1, NULL, '[]', 0, '2019-06-23 11:01:28', '2019-06-23 11:01:28', '2020-06-23 17:31:28'),
('33f75bb109cf64ffe993275afa2bd3a76dea04b131cb23e578c293d1effa640035de46abca5ebbce', 178, 2, NULL, '[]', 0, '2019-07-10 11:29:13', '2019-07-10 11:29:13', '2020-07-10 17:59:13'),
('3424540fe1dcaadb5a3ecc13597207ebe0c0fa83f61de763c4ef8b1386529a6904c271716ed75f84', 1, 1, NULL, '[]', 0, '2019-06-23 06:53:06', '2019-06-23 06:53:06', '2020-06-23 13:23:06'),
('348deb01870625ba60d6025861cba540fd6d148298746f7a8f9f9425c253bd799c8b489a265dc06a', 214, 1, NULL, '[]', 1, '2020-04-04 06:03:34', '2020-04-04 06:03:34', '2021-04-04 12:33:34'),
('34b49c8415273a6ec7d1c4837ab38e18a655f4704210373d06a2f6ccaa195bc3fe29f0de2b430839', 261, 1, NULL, '[]', 0, '2020-04-21 16:09:36', '2020-04-21 16:09:36', '2021-04-21 22:09:36'),
('3518c00227e38cd391c5759b07ece62d7cc6bea14c74614feac9ed6c6f8d7082c69e503df46d6315', 124, 2, NULL, '[]', 1, '2020-02-06 10:39:59', '2020-02-06 10:39:59', '2021-02-06 17:09:59'),
('3549c992f49305a16919067a2c2dacc60e1720c3c5c42ed5047dfadee3bd7a4473262e0bfc2a44dc', 166, 2, NULL, '[]', 0, '2019-09-19 12:00:21', '2019-09-19 12:00:21', '2020-09-19 18:30:21'),
('357d2ba40fcc768afe77890c845c570b719ddbc09a23d774e5d85f2cb736913d062bd157945c8b50', 211, 1, NULL, '[]', 1, '2020-02-12 05:40:18', '2020-02-12 05:40:18', '2021-02-12 12:10:18'),
('35e8094b96ac1014fb2751667277fb23004d9077885561bd2a2dac60cbabff087bc1a8b5777f1aa8', 1, 1, NULL, '[]', 0, '2019-09-08 05:44:43', '2019-09-08 05:44:43', '2020-09-08 12:14:43'),
('36128d4984c4e0b5814256697098001e398577b3ded4d1ea37b8b929c47f635f2ff95bbc8a9de738', 265, 1, NULL, '[]', 0, '2020-04-14 06:08:16', '2020-04-14 06:08:16', '2021-04-14 12:08:16'),
('3698f3fc2ba5c1a1825752163d3df2a6687906700abe618574fde62b36ae117383d21a9530c81af1', 220, 1, NULL, '[]', 1, '2020-04-05 11:22:33', '2020-04-05 11:22:33', '2021-04-05 17:52:33'),
('36b79c46e26871bcfc28a8fc9591b32a2a30e5ead1f57c8211d532f2be03132a0421f419b4cc324c', 109, 1, NULL, '[]', 0, '2019-05-08 09:41:39', '2019-05-08 09:41:39', '2020-05-08 09:41:39'),
('36bcbf9afe6d7f857ce789530cc06f3a947e7d46ed1d6c2226e79574eadc9d5406eacc2b7d9aa5fb', 274, 1, NULL, '[]', 0, '2021-07-06 13:11:27', '2021-07-06 13:11:27', '2022-07-06 19:11:27'),
('3701ada3dbdb221978ae1e766a14ac669f3f015efc418e1d8983a466941d24b533b66e1f9f347929', 274, 1, NULL, '[]', 0, '2021-07-06 10:24:42', '2021-07-06 10:24:42', '2022-07-06 16:24:42'),
('374e10b84cfd80fab64c6599b99c85618b2ad4eb4cb0f65cb0f4c7e363c7f4dc6784afb7cd1b541e', 259, 1, NULL, '[]', 1, '2020-04-16 10:19:06', '2020-04-16 10:19:06', '2021-04-16 16:19:06'),
('3825c3effbeccead84ed17d9ec7dabde734476dd8005e5f4645c79bc47720557b09b3b7b6b5ae42d', 7, 1, NULL, '[]', 0, '2019-02-02 04:27:49', '2019-02-02 04:27:49', '2020-02-02 10:27:49'),
('382d03a874bd72549deb9506c0c017c3245e0322d80af4a11edd9e279bad4af5350b3d0120aa68d3', 236, 1, NULL, '[]', 0, '2020-04-10 04:38:34', '2020-04-10 04:38:34', '2021-04-10 11:08:34'),
('38409dc11cc71e6a82241e2586c1bbab0cc7724dd3611acb881f252a9b7d8f48904fd1848373f89b', 166, 2, NULL, '[]', 0, '2019-09-23 09:39:04', '2019-09-23 09:39:04', '2020-09-23 16:09:04'),
('3864ba489796da11e20ca221238fd28ccf346001f2ca3669d0b29d06cdc1883025c1d36e768a323b', 259, 1, NULL, '[]', 0, '2020-04-22 15:36:54', '2020-04-22 15:36:54', '2021-04-22 21:36:54'),
('3903697caf9e8317aae975338adb75f0b9b4f1c8a6841c1bf2bbc1006ad7e0c35f38a18825113812', 178, 2, NULL, '[]', 1, '2020-02-11 13:15:26', '2020-02-11 13:15:26', '2021-02-11 19:45:26'),
('39b02520542ddf6fe65f97219013ce08ee3a52700504db7777a15f1f5ffb62ef7ae009792a33f3c3', 273, 1, NULL, '[]', 0, '2021-07-08 07:50:26', '2021-07-08 07:50:26', '2022-07-08 13:50:26'),
('39be0888c917c61252ca3d8a39ae72d6f7ed4b3ee522008c359d5fc868106c67367da03de56e2300', 178, 2, NULL, '[]', 0, '2020-02-22 12:43:21', '2020-02-22 12:43:21', '2021-02-22 19:13:21'),
('3a9c56070ee9af145acf052a18ace321e1af8dfc20db9508ff5b3f814a775de0eadeae5650601102', 125, 1, NULL, '[]', 1, '2019-06-22 08:18:36', '2019-06-22 08:18:36', '2020-06-22 14:48:36'),
('3b602c4987e4cdb27d7b75651eb4283bdf258b14f258c93ced7e6661d47181c9c882ecbb7bd32287', 1, 1, NULL, '[]', 1, '2019-05-26 21:01:07', '2019-05-26 21:01:07', '2020-05-26 21:01:07'),
('3baebcbe8744900b21b1183dd3ced2eed6624565458646685976d728881d7eab14f4d31fafec9391', 112, 1, NULL, '[]', 0, '2020-02-05 06:45:40', '2020-02-05 06:45:40', '2021-02-05 13:15:40'),
('3bf41bb877b66faa240fd0649a4310641e95a13140d9361cd8c937062b68cea5757671a098b86315', 118, 2, NULL, '[]', 1, '2019-05-29 10:58:05', '2019-05-29 10:58:05', '2020-05-29 10:58:05'),
('3bfd7237e8b88913f220f8ecf72250fc0814fc7ea6e2fa9ca430fe4b89812b4599c4c3e2dead5181', 257, 1, NULL, '[]', 0, '2020-04-11 10:20:11', '2020-04-11 10:20:11', '2021-04-11 16:50:11'),
('3c5368edab43388e2ab9081f63eecc030646010d9ce21466dd00f676fa1e68a55cb85009fde33daf', 189, 2, NULL, '[]', 0, '2020-02-24 01:59:40', '2020-02-24 01:59:40', '2021-02-24 08:29:40'),
('3cabbda5e681ed1be16b9fc14cca5ee23dd4e981ccffe08a43a11d1137323f9839e10eed0f35f16b', 225, 1, NULL, '[]', 0, '2020-03-31 19:11:51', '2020-03-31 19:11:51', '2021-04-01 01:41:51'),
('3cc4441a5acfa68afc51725505c421c4b25ee3b49d8c982101647c21e74354a1c262744900fbda23', 139, 2, NULL, '[]', 0, '2019-09-04 11:24:08', '2019-09-04 11:24:08', '2020-09-04 17:54:08'),
('3d3d876406a69e378a41d4ea1584f3499ca198d619001b2d4cc61583498c222cffa7bae543c53c06', 273, 1, NULL, '[]', 0, '2021-07-08 06:51:47', '2021-07-08 06:51:47', '2022-07-08 12:51:47'),
('3d7359c8d60171d0acbd40b25b9efd154c851272d198b29c202f7cf2eeaba7331989387ef4034251', 112, 1, NULL, '[]', 0, '2019-05-30 09:17:59', '2019-05-30 09:17:59', '2020-05-30 09:17:59'),
('3da3d8184c990e728bfb1280d6325f129e1ebc08b59f1b579f6fb88288598be3041c4c7263aa5370', 220, 1, NULL, '[]', 0, '2020-03-30 15:28:54', '2020-03-30 15:28:54', '2021-03-30 21:58:54'),
('3dba3b4741d48845b6b4a66cd8e067aa2b286f51c23ae0ce7dcdf5eacddf08b5ab5c6201be798826', 236, 1, NULL, '[]', 1, '2020-04-07 19:34:59', '2020-04-07 19:34:59', '2021-04-08 02:04:59'),
('3dea87694f080cdff924c81a54466c2c33d38c7fd72c2efa6a8f454e389553b45e9e50325c3712ee', 220, 1, NULL, '[]', 0, '2020-04-05 11:07:23', '2020-04-05 11:07:23', '2021-04-05 17:37:23'),
('3dfe46973378a4889de6bf5ced4e8215b4b793e4758a274a8563e1b6021fa8b758f8a7d6e49323c1', 166, 2, NULL, '[]', 1, '2019-06-23 06:01:30', '2019-06-23 06:01:30', '2020-06-23 12:31:30'),
('3e13480d9b50e1efaaf2a3192a63417a331f23a6c4aa2f91287845a343eb131a3da9e53082f6cc9b', 123, 2, NULL, '[]', 1, '2019-06-02 07:16:11', '2019-06-02 07:16:11', '2020-06-02 07:16:11'),
('3e44ef156e9386bd6afd56ac28d3d72b355fbaa4bf7a05ba6ea605ae753d52aa9d0364516bb1a4e5', 225, 1, NULL, '[]', 0, '2020-04-02 09:23:04', '2020-04-02 09:23:04', '2021-04-02 15:53:04'),
('3e87c094ad79763536b2f3f93b6e2d2019ee31e6b82d56e62989c75d93c2f429b65ddfe2ff124a4a', 273, 1, NULL, '[]', 0, '2021-07-09 15:50:03', '2021-07-09 15:50:03', '2022-07-09 21:50:03'),
('3e9653189690c5228e56e14aa7561c1f3db76a7f37b82e23b64d44d745320db5e623291ccb9d5024', 178, 2, NULL, '[]', 1, '2020-03-09 07:48:59', '2020-03-09 07:48:59', '2021-03-09 14:18:59'),
('3fab87069b6b6350d9b23185230c13e9a4777e70484816d5980ff43fecae56e50bcbdce96679778e', 218, 1, NULL, '[]', 1, '2020-03-30 15:28:11', '2020-03-30 15:28:11', '2021-03-30 21:58:11'),
('402fb71dc7f577c66ac92adbb44f0e35ccfdf610c6deb71b5430bc85f6831c53c571df96f70254cd', 127, 2, NULL, '[]', 0, '2020-02-19 09:41:12', '2020-02-19 09:41:12', '2021-02-19 16:11:12'),
('403228e2bdc440ce0a107fa307f0a04b795ef7c8fadfea157182bd4d295797b295049ef8514c20ea', 271, 1, NULL, '[]', 0, '2020-04-21 16:02:28', '2020-04-21 16:02:28', '2021-04-21 22:02:28'),
('416924686b82096f06aafda6f5d8703efd03fe7504df01c4a0747780dd133cf69fa1cb78b1a9aa14', 118, 2, NULL, '[]', 0, '2019-05-29 05:22:02', '2019-05-29 05:22:02', '2020-05-29 05:22:02'),
('41782dae5ee2fe737311e65c662d9150f426a070b8217c827c1c71777ef6cba6458acfa88516a894', 222, 1, NULL, '[]', 0, '2020-03-31 06:33:07', '2020-03-31 06:33:07', '2021-03-31 13:03:07'),
('41de62c9a612abe2cd66bac7b159fee45dfa00709728b3d8b810a581e88b6ed4545601319a2652a9', 124, 2, NULL, '[]', 1, '2019-06-19 10:34:30', '2019-06-19 10:34:30', '2020-06-19 10:34:30'),
('421ac7c812977ade1abc4f4c450c087a2353d863744bdb89537264e1965811a69ab5798e7d126406', 125, 2, NULL, '[]', 0, '2019-11-27 06:07:55', '2019-11-27 06:07:55', '2020-11-27 12:37:55'),
('425da42c9516fbd145137415dbb6441924d0c8167be6c285965833b3b055642ea71b66a254625e89', 219, 1, NULL, '[]', 0, '2020-04-03 19:06:03', '2020-04-03 19:06:03', '2021-04-04 01:36:03'),
('4332b2f385542c038001e48c69ff1c0d3333f68f2c383cf4d2d69c74bf83fbfaaf9199b43224d7fb', 1, 1, NULL, '[]', 0, '2019-05-23 11:49:06', '2019-05-23 11:49:06', '2020-05-23 11:49:06'),
('43380b10d8dc1477107611ce03cb024deb6ae375d44363928014d04811f45aa26cbc7a66434d3556', 274, 1, NULL, '[]', 0, '2021-07-05 13:45:47', '2021-07-05 13:45:47', '2022-07-05 19:45:47'),
('43b528fef017420221aca3cd1a639c07d63b3d9b6d6a939819dada1b862f1e7716cb563c48fd46b4', 208, 1, NULL, '[]', 0, '2020-02-22 09:06:50', '2020-02-22 09:06:50', '2021-02-22 15:36:50'),
('43d2b2001641f7ae6cc269ee28d8566c94f77dd64c316872323e15e3d5b76b5e1ccaa7160d3b15d0', 258, 1, NULL, '[]', 0, '2020-04-14 06:05:02', '2020-04-14 06:05:02', '2021-04-14 12:05:02'),
('4447adde0dfe4ad4d9bb9cc54b38ac048192308afa0025b151032a6e78d0ea200ef95723e2a75d3f', 204, 1, NULL, '[]', 0, '2019-11-25 04:22:22', '2019-11-25 04:22:22', '2020-11-25 10:52:22'),
('448b3f3a691b0d0856abea9be2049f8a0aee9f5ecb070c2d0b3c28efa1d43c46fdc32046975a7049', 234, 1, NULL, '[]', 0, '2020-04-05 12:06:28', '2020-04-05 12:06:28', '2021-04-05 18:36:28'),
('448bc1918fc258e35ada8981c81786ab6a8dc9fcf1e00fc8cdc854d54fd9296bf049bcc4c2fd53a8', 168, 1, NULL, '[]', 1, '2019-06-23 13:15:50', '2019-06-23 13:15:50', '2020-06-23 19:45:50'),
('44be508496049d38f12a76213cf0e74186b49e98e8567d7a5d3f5b4997f496af64462a161782455b', 231, 1, NULL, '[]', 1, '2020-04-04 17:53:49', '2020-04-04 17:53:49', '2021-04-05 00:23:49'),
('44e56420e06479667188eb315c0cbd9517618be1c49e502546cf90fb1f978010fb8c4fb939874e78', 225, 1, NULL, '[]', 0, '2020-04-23 10:49:11', '2020-04-23 10:49:11', '2021-04-23 16:49:11'),
('45958935ced9f942487074f6032903d38e69b34436e76dafb56f5b3e8d909ae2502392baefdbadd9', 257, 1, NULL, '[]', 1, '2020-04-11 16:38:14', '2020-04-11 16:38:14', '2021-04-11 23:08:14'),
('46570efbf0cc0823f7a035721e961a8112a37a5cff16e018cf4f77b858a619a64be4d034c58fb6b7', 127, 2, NULL, '[]', 0, '2020-02-26 08:11:43', '2020-02-26 08:11:43', '2021-02-26 14:41:43'),
('469eccd3771dbabf4ca549dc37d7dbe2657df55656de2d85966d51235bb9db52b7186a576874165d', 273, 1, NULL, '[]', 0, '2021-07-07 07:54:25', '2021-07-07 07:54:25', '2022-07-07 13:54:25'),
('46c3322aca2c13d89bff1db1f56192c3912c9e3d0bc31235240025b3784a8818183e9c6152168810', 274, 1, NULL, '[]', 0, '2021-07-06 10:15:01', '2021-07-06 10:15:01', '2022-07-06 16:15:01'),
('46fb1ccede847ae60df7a957d118ea0adcb5b5dcdae8a3fd69aecfd7a2a3bb9d27d1d320eda529fa', 239, 1, NULL, '[]', 0, '2020-04-07 06:18:20', '2020-04-07 06:18:20', '2021-04-07 12:48:20'),
('4719f3a6292c6d8783d90edeed9e93b9c01392debd407c28d5c4d606a3ae78def3559a842db55ef5', 208, 1, NULL, '[]', 1, '2020-01-22 17:24:46', '2020-01-22 17:24:46', '2021-01-22 23:54:46'),
('4776121daf7e5246680bf77825f2e637f7d8a319d2db26ece3d4dca28a17c473c3b984b67194dace', 166, 2, NULL, '[]', 0, '2019-09-23 06:16:08', '2019-09-23 06:16:08', '2020-09-23 12:46:08'),
('482ba86dbb1dc97825e334dda6b596bfcec9d2520a8403da4181e22c820abb6f2715ded353669dd3', 1, 1, NULL, '[]', 0, '2019-05-30 16:59:20', '2019-05-30 16:59:20', '2020-05-30 16:59:20'),
('49432f2d4999bae98b99cafed7ac1ef220db71aec506167162768bb039da791f6141363723af21eb', 256, 1, NULL, '[]', 0, '2020-04-10 10:29:27', '2020-04-10 10:29:27', '2021-04-10 16:59:27'),
('49a65f0cec23a691c7582c248ff1e2438aa408a7b82e57baf2b0706867b33b77859d5aa5206e9524', 125, 2, NULL, '[]', 1, '2019-06-25 06:04:23', '2019-06-25 06:04:23', '2020-06-25 12:34:23'),
('49e6d6189b60646dcf154da866d3fdf6f44f59d1da3542bc7f30785dfb07a396221a73e29096e83e', 142, 1, NULL, '[]', 0, '2019-06-20 11:38:43', '2019-06-20 11:38:43', '2020-06-20 18:08:43'),
('4a4b3b6337d81db0fef24aefaa1c8061d3c0c9434dabb67a23e305229128ec72217a4a26ada02f4d', 118, 2, NULL, '[]', 1, '2019-05-29 10:56:18', '2019-05-29 10:56:18', '2020-05-29 10:56:18'),
('4a5f4be63c8f9af5ccd2515760fd514e25492425277d8afdd9cb7f6ed38501232ad18e215814c403', 127, 2, NULL, '[]', 0, '2019-11-29 07:58:21', '2019-11-29 07:58:21', '2020-11-29 14:28:21'),
('4a5fc3f846569d7e91ac331ef26492706c5e538b3e5b28beec973105c5b1779be3e214aa7f53ce5e', 178, 2, NULL, '[]', 1, '2019-12-18 07:35:31', '2019-12-18 07:35:31', '2020-12-18 14:05:31'),
('4aa87db4fd80e314906e9268ac28ca74264e2d2518619abd5fbaba0274dc21f064999a4ba7361e2f', 244, 1, NULL, '[]', 1, '2020-04-07 13:22:12', '2020-04-07 13:22:12', '2021-04-07 19:52:12'),
('4b4ecb2b12b826be9bbb83108e63e1bb3645b418468754a04ac0e34650654b971cd0a11dc0e07bf6', 121, 2, NULL, '[]', 0, '2019-06-19 11:42:53', '2019-06-19 11:42:53', '2020-06-19 11:42:53'),
('4b69914e986cbfdb462aad6ba0ac882a759481c6150ed0199be6deaa055e5dae425e1918dbcc0a10', 178, 2, NULL, '[]', 1, '2020-02-08 07:17:58', '2020-02-08 07:17:58', '2021-02-08 13:47:58'),
('4b7d123dde92abc6dfe4d76cbed938007e8a56497050e804d80e3aa789ab71de60a52d3944210763', 178, 2, NULL, '[]', 1, '2020-02-12 06:10:17', '2020-02-12 06:10:17', '2021-02-12 12:40:17'),
('4ba29b7e5eab3684556adfdafb6be497319e510ae95dd86273221ada9e12eac0a73c6cebe078c70e', 112, 1, NULL, '[]', 0, '2019-05-30 17:18:02', '2019-05-30 17:18:02', '2020-05-30 17:18:02'),
('4c92830adfe46af3d3a47809a1bcd4ac908df461ea27390e9638e129496c764639e2a4cf24863449', 166, 2, NULL, '[]', 0, '2019-09-08 10:25:24', '2019-09-08 10:25:24', '2020-09-08 16:55:24'),
('4c94df2f0975ad08aefbaf20474b41480fdb2ec28ad509eb4ce6912649ae7c1b695607432adb1d6b', 125, 2, NULL, '[]', 0, '2019-06-19 12:02:50', '2019-06-19 12:02:50', '2020-06-19 12:02:50'),
('4cac17413faf03eebc7dfe100bcc7ea7f87f748d7451335d253dea83a1f1f4b3d5c78aa82517fa78', 208, 1, NULL, '[]', 0, '2020-02-23 03:27:45', '2020-02-23 03:27:45', '2021-02-23 09:57:45'),
('4d0e8e5152bcc2a5a067475696ac3d297a569c8b77732a1872ae06b35c581a176e06a09807b1fe94', 208, 1, NULL, '[]', 1, '2020-03-09 06:16:59', '2020-03-09 06:16:59', '2021-03-09 12:46:59'),
('4d1316af6806baa214409ea66c991a542391a1ff78716210642439fd7c26507fa9126d1b82f7c190', 225, 1, NULL, '[]', 1, '2020-04-12 04:16:00', '2020-04-12 04:16:00', '2021-04-12 10:46:00'),
('4d2a3b145d2d81f2c5695088f1f369b429e2062984a6b12f32f2a5b37b5b7435992072d081cbb397', 124, 2, NULL, '[]', 1, '2019-06-22 11:18:31', '2019-06-22 11:18:31', '2020-06-22 17:48:31'),
('4d38b02e941b6e663fc84ce04cbf5d5a381860fcb2166a30a1524b1ca207badd8d2211aaeb3f57c5', 226, 1, NULL, '[]', 0, '2020-03-31 18:28:31', '2020-03-31 18:28:31', '2021-04-01 00:58:31'),
('4d40b0ab6768930c7f0c6afa8872ff9a7e5ace4d1ab2a76c92203552433362f0e5115de62381f877', 167, 1, NULL, '[]', 1, '2019-06-23 13:10:13', '2019-06-23 13:10:13', '2020-06-23 19:40:13'),
('4d5e65915cc02d8d62370e915500f1ff5f7ca76d04a96841c4b40a40809d65a0bd328277a11b74bf', 195, 1, NULL, '[]', 1, '2019-09-04 12:09:21', '2019-09-04 12:09:21', '2020-09-04 18:39:21'),
('4d65830484dc8575be45215ca63b4a99c82536210c8d3923e22e7932bb6b73e84b51530fadb8eb49', 178, 2, NULL, '[]', 1, '2020-03-08 11:38:33', '2020-03-08 11:38:33', '2021-03-08 18:08:33'),
('4ddc30333a13544b548f91fbc851c9f107994270f0383b549ed2c469b140f41280eaac2f60835248', 208, 1, NULL, '[]', 1, '2019-12-25 12:23:31', '2019-12-25 12:23:31', '2020-12-25 18:53:31'),
('4e12a7c34604ce9be81ad9842fe5a96e343725fc0b7489eaf7072737ac13f5fdc4655d25047af805', 159, 1, NULL, '[]', 1, '2019-06-22 12:52:21', '2019-06-22 12:52:21', '2020-06-22 19:22:21'),
('4e8fe993e3fb5d59dc0fc83b930e18f3596150d86325ef5230160a019d147ac52db8aaa7acbcc2b0', 1, 1, NULL, '[]', 0, '2019-06-20 05:48:52', '2019-06-20 05:48:52', '2020-06-20 05:48:52'),
('4ef1c6f8e1459d924d4982ddecaa4e0f7b9b85d9a0440b2f4f4b3b76cf164adcb17f6d96f6ba0cf8', 127, 2, NULL, '[]', 0, '2019-09-09 08:27:28', '2019-09-09 08:27:28', '2020-09-09 14:57:28'),
('4f542e7613d6ac0c69f30013fe0f9ccffb261ba28db70ad6548217c695a83fed2bd07cdc2d0d9ae0', 178, 2, NULL, '[]', 0, '2019-09-16 11:27:01', '2019-09-16 11:27:01', '2020-09-16 17:57:01'),
('4ff18f4f0f7f37487c6995d12c7a419647d98c571b65cff4038ac59b400070fc1b813da17f8b0570', 227, 1, NULL, '[]', 1, '2020-04-04 06:28:34', '2020-04-04 06:28:34', '2021-04-04 12:58:34'),
('501ccf68b1fdd4f666e2744dfbe2f7ae0afd511b0440203f164336d7b0e5d88d5c7260b810a72350', 124, 2, NULL, '[]', 1, '2020-03-09 07:11:16', '2020-03-09 07:11:16', '2021-03-09 13:41:16'),
('5083704f7e0357c8e43c912aa2c6edc1d61b66ea7bcf5ec2a56ca66740ea338678aededeacaf932b', 183, 1, NULL, '[]', 0, '2019-07-08 07:22:01', '2019-07-08 07:22:01', '2020-07-08 13:52:01'),
('5083cf076491a33f59621611a76bf2eb0de93754d248503b9c18eb2b4199b66c6a8dee862e461cc8', 267, 1, NULL, '[]', 1, '2020-04-20 17:48:25', '2020-04-20 17:48:25', '2021-04-20 23:48:25'),
('50dc4c097f1f61c8a45a1c0d1f8cc486c1fe6d3fe976a4d18f0353f8851313581b97d5b22fa439e5', 7, 1, NULL, '[]', 0, '2019-02-01 23:48:06', '2019-02-01 23:48:06', '2020-02-02 05:48:06'),
('51665d75646012e95b98d785e9d5404a4ecc5e1cf82d29424fc419dd8ce6b317a96cc0235d11349a', 259, 1, NULL, '[]', 0, '2020-04-19 09:30:46', '2020-04-19 09:30:46', '2021-04-19 15:30:46'),
('5170d4214e95aa9dec583bebdf5fc7948c8ce6f9abb8f65aace9e220db51ea817c838f5cc384dd4b', 138, 1, NULL, '[]', 1, '2019-06-20 05:33:06', '2019-06-20 05:33:06', '2020-06-20 05:33:06'),
('51b9cfc371cbdff4a72088a5c275af7c9f8dd929099457c6ab4bcfae2acb1903296080d0a8ed8d64', 152, 1, NULL, '[]', 1, '2019-06-22 09:31:08', '2019-06-22 09:31:08', '2020-06-22 16:01:08'),
('52b6bb5ee23acc5ec503ea00c2d2864bcef29adf57166a73464d01105f3a6b3c98cf194fe63af680', 207, 1, NULL, '[]', 0, '2019-12-21 11:46:19', '2019-12-21 11:46:19', '2020-12-21 18:16:19'),
('539b9aa759237b513b8b5cc1ef92411080c737cd729ecace359f8bffa518d4e138167e782f4e107e', 108, 1, NULL, '[]', 1, '2019-05-07 11:07:25', '2019-05-07 11:07:25', '2020-05-07 11:07:25'),
('541e97c2a7aca652b8fda9e453eb26ddb7fb8a8b501edd5c9d98177cd7c0502708c1f537b20781aa', 214, 1, NULL, '[]', 1, '2020-03-29 10:45:45', '2020-03-29 10:45:45', '2021-03-29 17:15:45'),
('544304b9c3a71b1e911587c01c6b16753c858e337d05a7915f4f16f6d1b7e67d5b2b022251557aec', 250, 1, NULL, '[]', 1, '2020-04-07 18:44:32', '2020-04-07 18:44:32', '2021-04-08 01:14:32'),
('544678b418b3c229329dfab5b03698251e6fcb1c64087614118b70db63ab24b11c0eb732955844f4', 112, 1, NULL, '[]', 0, '2020-01-27 08:36:32', '2020-01-27 08:36:32', '2021-01-27 15:06:32'),
('54da4526e309ad1d80bc0292bf699754f66a74a7b346d7b8c71b4d6b6e2754d212a2609682bbcd0c', 106, 1, NULL, '[]', 0, '2020-01-27 07:42:49', '2020-01-27 07:42:49', '2021-01-27 14:12:49'),
('55eadcae5daad12d0aebb6cb011a6469cca68915aadd513e1ba7c0d90df704b196c5ec3616c2c445', 272, 1, NULL, '[]', 0, '2020-04-26 08:30:40', '2020-04-26 08:30:40', '2021-04-26 14:30:40'),
('5638f4b62c911f32d6568cd151993a151e8d07196b0541bdc289c3dfbc9ffc5b7047bb9bf8c36d8b', 274, 1, NULL, '[]', 0, '2021-07-06 09:31:41', '2021-07-06 09:31:41', '2022-07-06 15:31:41'),
('564db9281190b786916c99dd9da834864cb75ac427a3a1e3fb560451d01e9dc94898f19dea1eeb9f', 262, 1, NULL, '[]', 0, '2020-04-14 10:04:17', '2020-04-14 10:04:17', '2021-04-14 16:04:17'),
('56bb441cef0e400fd386b83e5bd407e6808eba70ed87def3bb4e21cd448a586ac3dd685dc1e58756', 219, 1, NULL, '[]', 0, '2020-03-30 13:32:24', '2020-03-30 13:32:24', '2021-03-30 20:02:24'),
('57be3f0beb1c96b9f72b179f0bfbdaec7564d2d08b0f79401db44d6794764d079f8f59835861c9fb', 128, 1, NULL, '[]', 0, '2019-06-13 06:57:26', '2019-06-13 06:57:26', '2020-06-13 06:57:26'),
('57dd9fbc24cbdbfcd74e7c09183c7bae6a6f0d302c876ada8a1284d00ceb72542180b67a26f972ab', 125, 2, NULL, '[]', 0, '2019-06-20 13:46:34', '2019-06-20 13:46:34', '2020-06-20 20:16:34'),
('58b018ef4491b8b59971c28887e858a76de3332b0e04ee9540a6a229b7bc302edad6d1f32ca4b30e', 178, 2, NULL, '[]', 0, '2019-06-24 05:03:58', '2019-06-24 05:03:58', '2020-06-24 11:33:58'),
('58ecb14b59dd76f3350685d9090506703d13de91fad6b68c290a987ebef20c28e189300e1d32eb57', 137, 2, NULL, '[]', 0, '2019-06-20 05:37:26', '2019-06-20 05:37:26', '2020-06-20 05:37:26'),
('59a802781a7186cfeb373af6a6badcbf052998fcc869553fd577724205dff399f1977aeaed2839f1', 112, 1, NULL, '[]', 1, '2020-02-12 06:32:38', '2020-02-12 06:32:38', '2021-02-12 13:02:38'),
('59fde91d8312a344279068e743e52e41ca29bb391226289241b31be7fc46e21470dc20a7887d1838', 259, 1, NULL, '[]', 0, '2020-04-22 12:56:36', '2020-04-22 12:56:36', '2021-04-22 18:56:36'),
('5a91940dd55a7b0ef3c152558a7203ffd2c7fc976a65db1c656d6f400137b8d0b700a34ebb981328', 1, 1, NULL, '[]', 0, '2019-05-26 21:04:30', '2019-05-26 21:04:30', '2020-05-26 21:04:30'),
('5b11b35935e43c964b2a02ef369a216ddad497e4f3e57df660d583f0abe556a0673f6af421c99619', 112, 1, NULL, '[]', 0, '2019-06-02 05:58:41', '2019-06-02 05:58:41', '2020-06-02 05:58:41'),
('5b8f3114003889e546aa689fcb7485145fc0168245f9df1c9d3ee53d139c282f882381b36258e40d', 241, 1, NULL, '[]', 1, '2020-04-07 12:32:56', '2020-04-07 12:32:56', '2021-04-07 19:02:56'),
('5bc204ed454d4429e4225d6cc380cac667a019fbfe93a9551d6a63fdd1a7413467d6a66af8b3ce5b', 214, 1, NULL, '[]', 1, '2020-04-05 13:50:29', '2020-04-05 13:50:29', '2021-04-05 20:20:29'),
('5bd446a158ad44a7138aacac6fe30a66a34dae6a9ee4e5d70c4e4f49b497c681b7649685b5cd61c0', 178, 2, NULL, '[]', 1, '2019-12-01 05:31:02', '2019-12-01 05:31:02', '2020-12-01 12:01:02'),
('5c22855da92ac2f8de143ef3e35a632c20e3a3a7f0776f540e7f8af34954d9f025a353cbc4a380b2', 2, 1, NULL, '[]', 0, '2019-01-20 23:31:14', '2019-01-20 23:31:14', '2020-01-21 05:31:14'),
('5c28c95f00de425307bb9c2c72dcef165f933bc66252e6e499ffd81cc11944b3d6a082e0817f0398', 178, 2, NULL, '[]', 1, '2020-03-08 11:32:06', '2020-03-08 11:32:06', '2021-03-08 18:02:06'),
('5d34d95c934b4cd94f3ac75735bd9d684c7952c4df91b784d8b97c8b35094ae8184521be418af484', 257, 1, NULL, '[]', 1, '2020-04-13 15:41:05', '2020-04-13 15:41:05', '2021-04-13 21:41:05'),
('5d90b7382439fe34abc06b85dd70bbf6918c1abeadb7d8ef9cbf6072f7cd01c3e5dcd43c9a270149', 274, 1, NULL, '[]', 0, '2021-07-06 13:28:39', '2021-07-06 13:28:39', '2022-07-06 19:28:39'),
('5e163762e441811a9835696361509e2eb599b2888dcbd4777c96cde379c04dbd7a5b9a363ffc2d24', 124, 2, NULL, '[]', 1, '2019-06-22 12:36:34', '2019-06-22 12:36:34', '2020-06-22 19:06:34'),
('5eebb2592bc4398e1b286a1cf9228c0c6fd7435429f1318e18e6d4f24f6f2c67ba48362c20551485', 270, 1, NULL, '[]', 0, '2020-04-18 10:30:24', '2020-04-18 10:30:24', '2021-04-18 16:30:24');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('5f0a8447242c9b341c58bb30b462a0902f985bc6d9f199c546a13a066ff2894a435dceb72debef28', 178, 2, NULL, '[]', 1, '2020-03-08 11:33:21', '2020-03-08 11:33:21', '2021-03-08 18:03:21'),
('5f753fb5d5de2118208738e94e8b8c5a60b40cdfeae4c5ccc54f745cb1d4b181e52dd8f05a8a74c3', 178, 2, NULL, '[]', 0, '2020-03-07 09:36:49', '2020-03-07 09:36:49', '2021-03-07 16:06:49'),
('5f913563bd81e1dec1913ad4b534fb715e0a02de63dc2e36bfb3454d88322ace5adaca7c9693c057', 273, 1, NULL, '[]', 0, '2021-07-07 22:03:20', '2021-07-07 22:03:20', '2022-07-08 04:03:20'),
('6027d84ed19abeae2b13931fae9722c666591da5d32ad2d263197b20517ab99ff358e30841d895af', 225, 1, NULL, '[]', 0, '2020-04-12 18:30:12', '2020-04-12 18:30:12', '2021-04-13 00:30:12'),
('6043272343b3941a161e1fc108aab225bb160ced693bb3117be39ed8fed3e0606051ba0df006ec9f', 193, 2, NULL, '[]', 1, '2019-11-25 07:11:34', '2019-11-25 07:11:34', '2020-11-25 13:41:34'),
('60737ee11010e3139d85ae4f9373db42495885293bb654c8bbed864682d76921b40d8cd1c885bf27', 117, 1, NULL, '[]', 1, '2019-05-27 11:14:39', '2019-05-27 11:14:39', '2020-05-27 11:14:39'),
('60740018dafd8b9520310c8015316a08a2287c4d06309f6a714be2940bf56367807cbe1ec4ac2110', 1, 1, NULL, '[]', 0, '2019-05-23 07:09:59', '2019-05-23 07:09:59', '2020-05-23 07:09:59'),
('6256c9b3d01b889859e56b70b329ea48a5380045c26d5749e773f24b02c42db00b911a1f3bc7aeaf', 118, 2, NULL, '[]', 1, '2019-06-17 11:53:14', '2019-06-17 11:53:14', '2020-06-17 11:53:14'),
('626d694ea224b613cf8fdeca568af20a876a4a27be781ed6e30e013cd4f5ee88a07efa98344d9263', 180, 1, NULL, '[]', 0, '2019-08-22 05:44:06', '2019-08-22 05:44:06', '2020-08-22 12:14:06'),
('628378fe0d3dd923cfc5d4e1e1bee360631ad5b9c18f68a9716cbcd653279e2c898523a915af359c', 118, 2, NULL, '[]', 1, '2019-05-29 10:57:43', '2019-05-29 10:57:43', '2020-05-29 10:57:43'),
('62a1eb55d01e1b22c79716e684c039597b6ae3550d66c9472e095bd29fa3ffe68a6d4bcd7a36f25b', 273, 1, NULL, '[]', 0, '2021-07-07 21:56:23', '2021-07-07 21:56:23', '2022-07-08 03:56:23'),
('62c1caec6b1626e5e9a840b1aca3a8e33795406592e652077e83c73e762dc0b8b10a245cc2344f34', 208, 1, NULL, '[]', 1, '2020-03-09 05:52:46', '2020-03-09 05:52:46', '2021-03-09 12:22:46'),
('62d817fc9cc756ceeb0c7830dc24569d9b21d53810cb031e6bffcb742c819c51cc8523c03128a7a7', 256, 1, NULL, '[]', 1, '2020-04-10 10:26:11', '2020-04-10 10:26:11', '2021-04-10 16:56:11'),
('631131936392989ed6dce080febf0a69e48ac66c19c29fd3c89b65111e903e61d92d221073b8ac05', 178, 2, NULL, '[]', 1, '2020-02-12 05:34:25', '2020-02-12 05:34:25', '2021-02-12 12:04:25'),
('634ef852d12e15d6996c146b54ae1f170c4a62344049a8bd083ec9267e370a5751fece3a3c37da6b', 192, 2, NULL, '[]', 0, '2019-08-09 11:42:31', '2019-08-09 11:42:31', '2020-08-09 18:12:31'),
('6378843bb1760b07940996943cd0299cc61a1aee2aebe30f9a20be4a94dccd1cc93a8a96e3343312', 125, 2, NULL, '[]', 1, '2019-06-22 05:53:09', '2019-06-22 05:53:09', '2020-06-22 12:23:09'),
('6395ec77d703ecd0c7f987abbcee7e4bc362274c8251b17f3818ed64c0603bc02f208cfe1e090db1', 178, 2, NULL, '[]', 0, '2020-03-19 09:11:22', '2020-03-19 09:11:22', '2021-03-19 15:41:22'),
('6495e66c5e105cc1e881fc058107ae1f3d54217db20dc5f57411df1aa2503def5eb21c9be7ab4d94', 178, 2, NULL, '[]', 0, '2020-02-09 05:28:42', '2020-02-09 05:28:42', '2021-02-09 11:58:42'),
('65164f3e0c8ec83f6edd22b368715e793243e66d3e9e90cfef128bd08d411dfa3a33e80cf2561709', 1, 1, NULL, '[]', 0, '2019-05-23 07:04:09', '2019-05-23 07:04:09', '2020-05-23 07:04:09'),
('65549db539f7e4e85c3afe481b551162e4ce8d0647749bdac5ca29394b3ddd7036f926ed072913f3', 112, 1, NULL, '[]', 1, '2020-01-27 07:49:25', '2020-01-27 07:49:25', '2021-01-27 14:19:25'),
('657c85449222b52a2e691ce53862d3d26dc3e4f33300a5572fcf2a5864a0d2375fa3f0e43253920b', 259, 1, NULL, '[]', 0, '2020-04-11 20:28:10', '2020-04-11 20:28:10', '2021-04-12 02:58:10'),
('65d7dfac6e38b16ec097dc6d014a6b38c1c576604fd34f14e0ff18f113b9d1424810e42a05c01921', 112, 1, NULL, '[]', 1, '2019-05-30 17:11:50', '2019-05-30 17:11:50', '2020-05-30 17:11:50'),
('65e4c4cc844b4726a6969ca5dda1b3c9095e38ca6936e08f220ba5266305863ee75f18cde34db608', 274, 1, NULL, '[]', 0, '2021-07-06 12:37:21', '2021-07-06 12:37:21', '2022-07-06 18:37:21'),
('66036096c5e3c9d32e932624d664e0e91f0d4cb9acd98d71fcfa5d59bb195130e762a7a94f4d6b9d', 118, 2, NULL, '[]', 1, '2019-05-30 06:15:33', '2019-05-30 06:15:33', '2020-05-30 06:15:33'),
('66afeb85833acac14c56fcadbaaaa6c81684e4818a38870b55b10407f858a0ed94fe4fed39ee1dc3', 125, 2, NULL, '[]', 0, '2019-06-24 06:40:09', '2019-06-24 06:40:09', '2020-06-24 13:10:09'),
('66de43ec8f999fbe9519e1037edfa899c3c7f518126e7633318363e9f5ff5ece59ab180e57eebcab', 109, 1, NULL, '[]', 1, '2019-05-08 09:36:21', '2019-05-08 09:36:21', '2020-05-08 09:36:21'),
('66f1cbc42eba080cf9b457348f081ac53c601901d72dcba0fa5e1edb68b744097c8df47c6f084935', 273, 1, NULL, '[]', 0, '2021-07-07 07:11:36', '2021-07-07 07:11:36', '2022-07-07 13:11:36'),
('670b8063de7fc45d9358d4c9e508aa42899e101d9f4b9cc878ad0945c44fad8d9965587588d03c8b', 225, 1, NULL, '[]', 0, '2020-04-06 08:03:09', '2020-04-06 08:03:09', '2021-04-06 14:33:09'),
('6737cd6e5571be37283758dbdd6db8819ed1a4160c3ac2adf6d488a9fa9753f87f1d335e4e66aae9', 139, 2, NULL, '[]', 0, '2019-09-05 11:28:30', '2019-09-05 11:28:30', '2020-09-05 17:58:30'),
('673aad3fe19bbaf86ba79c9ab5ec930cb4c5944cb13d01f3e5a73920daeaf18feeb8d2bebdc0623a', 125, 2, NULL, '[]', 0, '2019-06-24 10:52:03', '2019-06-24 10:52:03', '2020-06-24 17:22:03'),
('67cb7fae8fba885ca1db37acc333cb83e10b40cadea16686c872019a5efe3a9e54bf342a01eb65bd', 124, 2, NULL, '[]', 1, '2020-02-15 04:43:39', '2020-02-15 04:43:39', '2021-02-15 11:13:39'),
('6846ea0ac8b8ea61a1f4f3cec07fd796ae4842a98c51d172b37a9533c28053b027493bbc637153a9', 178, 2, NULL, '[]', 0, '2019-09-08 12:34:17', '2019-09-08 12:34:17', '2020-09-08 19:04:17'),
('68c1935747b662d06301a4988f6d5fe8ddae6dbe21dd36a75073f0b5b5e78d1fd647e05cbf91447b', 139, 2, NULL, '[]', 1, '2019-06-20 08:40:35', '2019-06-20 08:40:35', '2020-06-20 08:40:35'),
('69b42b757d88dac30d422ef3b7dd4756fc2265a25587384772493257ca5ccb2bdfcdea3dddf06fab', 255, 1, NULL, '[]', 0, '2020-04-21 08:58:02', '2020-04-21 08:58:02', '2021-04-21 14:58:02'),
('69d0f769f22820f46da8bb2e06abcda7d07713bbc77dcde817cfce146ce815e03ef2bae5e36d4f6b', 214, 1, NULL, '[]', 0, '2020-04-05 15:17:45', '2020-04-05 15:17:45', '2021-04-05 21:47:45'),
('6aaf89a6dbc66817ebc47162e4bb2eae9440a182bf09ae013953c690539568d57496b52c9c41c3bb', 189, 2, NULL, '[]', 0, '2019-07-15 03:45:05', '2019-07-15 03:45:05', '2020-07-15 10:15:05'),
('6add412f4b0a99b68668344833d107c15a306b9d5d94bc54799a76794fa7d1ecf39342b5509c30dc', 241, 1, NULL, '[]', 1, '2020-04-07 12:29:21', '2020-04-07 12:29:21', '2021-04-07 18:59:21'),
('6b968ae635d9aa2908ab6970ace82e3d8a2f9a63f3ae9153cc29d8796da48be62477756e0730a72e', 260, 1, NULL, '[]', 0, '2020-04-11 04:58:32', '2020-04-11 04:58:32', '2021-04-11 11:28:32'),
('6bac36d9a0530c5cdd0790d28548715aff9394d50fe4a986e478f50c0fb0e0e65a803207a620f3d9', 124, 2, NULL, '[]', 1, '2019-06-22 11:18:17', '2019-06-22 11:18:17', '2020-06-22 17:48:17'),
('6bb1f19dd9d5be533f2511e482b52404cfd94be0abbec82ddcf056225d97cc7219c2c3377cf70a7a', 121, 2, NULL, '[]', 1, '2019-06-19 13:46:07', '2019-06-19 13:46:07', '2020-06-19 13:46:07'),
('6bece78e768b668e1554fd53bbef3ea226c6b5899cddc2d334acd9e34509a78ff9dd930dfae50b5c', 178, 2, NULL, '[]', 0, '2019-09-07 13:10:11', '2019-09-07 13:10:11', '2020-09-07 19:40:11'),
('6c0ee1bda8636dba2d17a4c41a77a815315f31991527d3d44d4b73aac6c5ba88b0e0738d1bce6660', 124, 2, NULL, '[]', 0, '2019-06-15 07:18:55', '2019-06-15 07:18:55', '2020-06-15 07:18:55'),
('6c621c842a99563c6d36b617ba9f455baf6f8038a99ece83f2d68cfc6f1d596ab6bf4aa9c1f2871a', 125, 2, NULL, '[]', 1, '2019-06-02 09:49:52', '2019-06-02 09:49:52', '2020-06-02 09:49:52'),
('6cadc2bed6e0986e5244b00e1da0cd6f931df5b663d52b7b510053fdd066ddeef81044a378668960', 169, 1, NULL, '[]', 1, '2019-06-23 13:25:01', '2019-06-23 13:25:01', '2020-06-23 19:55:01'),
('6cb12daa0145251a6fe4ef5f0d97b614f37cf0723e5040743fe829ab99e6189090298504bf911843', 118, 2, NULL, '[]', 1, '2019-06-19 12:38:23', '2019-06-19 12:38:23', '2020-06-19 12:38:23'),
('6e84ef75e93f51b96fa06403cd75077d80347a9602fa316dbbba49a188435d3b6801a16b20c94bec', 274, 1, NULL, '[]', 0, '2021-07-06 13:11:51', '2021-07-06 13:11:51', '2022-07-06 19:11:51'),
('6ee02231e40f2417588ada1daa91544f94e05bc2b05c03f53dff1ad473013b279a47471b38b5a927', 209, 1, NULL, '[]', 0, '2019-12-28 07:55:09', '2019-12-28 07:55:09', '2020-12-28 14:25:09'),
('6ef9b4cfdaf7ee6c32d5d9b5523e3cc74038999b4bcd471ddfc7994a8f6a8d3cad8b2c184e9592df', 214, 1, NULL, '[]', 1, '2020-03-28 07:31:03', '2020-03-28 07:31:03', '2021-03-28 14:01:03'),
('6f3710725b5b1a52664ad0c3c702f2e79c87369043a1de5bbe0fd37213d6079c8367669bc82ed4fc', 1, 1, NULL, '[]', 0, '2019-05-08 05:54:01', '2019-05-08 05:54:01', '2020-05-08 05:54:01'),
('6f84f7ec62f5bb380d9f75297c86fd2b722c114445d7054e4af40f4eab5dcd35fcab6f8e075c939c', 1, 1, NULL, '[]', 1, '2019-01-20 04:29:24', '2019-01-20 04:29:24', '2020-01-20 10:29:24'),
('6fa281216d1cc189c1af790249a59859516bb9143be5dcdce3de8d88a32d3a465b9d7eabcc95f643', 273, 1, NULL, '[]', 0, '2021-07-07 08:00:44', '2021-07-07 08:00:44', '2022-07-07 14:00:44'),
('6fdfb9633116cb4c396700b223cbb3325bf143243cda20b3e3b4cf79ae0b8f0b55718d05b6522f7a', 124, 2, NULL, '[]', 1, '2019-06-22 07:04:47', '2019-06-22 07:04:47', '2020-06-22 13:34:47'),
('7025cebb7e640d589a1d6e283f2107b2474d9d3925bfaa3e526f286b4c139333f792a227e82b866e', 125, 2, NULL, '[]', 1, '2019-06-22 06:34:04', '2019-06-22 06:34:04', '2020-06-22 13:04:04'),
('7045a78ce25e70d4d23981f94965b8e464b37b78e48ccb339a5f3551268832504673b8138955ee87', 126, 2, NULL, '[]', 1, '2019-06-02 09:45:20', '2019-06-02 09:45:20', '2020-06-02 09:45:20'),
('70953ace45584774810da4cb745adcfd1e1d4aea8f70a1292db5a5a6d6dc97ecdc53c87bc7a698b7', 214, 1, NULL, '[]', 1, '2020-04-01 07:12:50', '2020-04-01 07:12:50', '2021-04-01 13:42:50'),
('72171602058d3d8add3977c8517196d610c0e04e0126d7967c08d5fe61ac9af76fe3f54e2aacb045', 1, 1, NULL, '[]', 0, '2019-05-26 09:42:11', '2019-05-26 09:42:11', '2020-05-26 09:42:11'),
('728c5d7c037eba34d7ed9df4b1591883c9fc8ff6b8a5b15c03a6a850bfb218f256a25837341f730d', 125, 2, NULL, '[]', 1, '2019-11-25 07:23:22', '2019-11-25 07:23:22', '2020-11-25 13:53:22'),
('72cc428822e94aef2b84bc58ead7c9dc9c66133b883e48c4a9cb83e4ca0fa819d2eb004e23e31c27', 123, 2, NULL, '[]', 1, '2019-06-02 07:20:46', '2019-06-02 07:20:46', '2020-06-02 07:20:46'),
('72d8fde0166732d0e5ac2d20c9b49416a7fb470d218bcc9284d7ce5fceed45a80705ad1b3fd91308', 4, 1, NULL, '[]', 0, '2019-02-01 23:19:02', '2019-02-01 23:19:02', '2020-02-02 05:19:02'),
('733ffc2f9e54d2c4e15373213c1b5830967986ee07c3d45340fa2e20bc4ebef1d7a88cf05a9ba162', 1, 1, NULL, '[]', 0, '2019-12-28 07:33:48', '2019-12-28 07:33:48', '2020-12-28 14:03:48'),
('734563297db27ed76ecb84a01c98b765d58c5b0ec94cf4dd13ba4718a47871b06ea8e17f31303f2a', 220, 1, NULL, '[]', 1, '2020-04-05 12:02:50', '2020-04-05 12:02:50', '2021-04-05 18:32:50'),
('73bf8519be705482f6e3ccd6fc92aa22e28bea7194fd5e3bd2bdba356cac954d180c6db9bf5a2185', 274, 1, NULL, '[]', 0, '2021-07-06 09:42:02', '2021-07-06 09:42:02', '2022-07-06 15:42:02'),
('7555e94720fb5ecdb36cd2912b7f87e32af0cd3c2859380cd4ddc9888a63cd80c59dc7edf645f80c', 1, 1, NULL, '[]', 0, '2019-11-25 04:49:19', '2019-11-25 04:49:19', '2020-11-25 11:19:19'),
('7574c7b8de1047fbae3201099a5a52304588256d19e329874807b5f725a45e96d974ad0ea13e03d3', 127, 2, NULL, '[]', 0, '2019-10-31 07:18:46', '2019-10-31 07:18:46', '2020-10-31 13:48:46'),
('759ceb214aa8f1fa584b898e3f191e3ee201c68e3addb343e81484ebe2b3c710456ea2c2798485b2', 142, 1, NULL, '[]', 1, '2019-06-20 11:20:27', '2019-06-20 11:20:27', '2020-06-20 11:20:27'),
('75e6f095b121638a1874e9bfff27bcf80c5d2fa388753848cc31a2afb0556ef8676e47a681500969', 129, 1, NULL, '[]', 1, '2019-06-16 10:52:17', '2019-06-16 10:52:17', '2020-06-16 10:52:17'),
('763202d390c322f38c59d27b2db1dc2cf2cfb5602d80c40de0c3e0b7e506cbe91727b36e99276191', 166, 2, NULL, '[]', 0, '2020-01-22 08:59:21', '2020-01-22 08:59:21', '2021-01-22 15:29:21'),
('7653546e461717864c32096e2120fcfc989860b9a3d0fd4d12450af4688a78ba9ee44ff9e7fd7412', 178, 2, NULL, '[]', 0, '2019-09-07 10:00:12', '2019-09-07 10:00:12', '2020-09-07 16:30:12'),
('7687a62ec534967013567542d7c8b7e27598ed7b24b69d4c3b9cd36cba41ca2bf4be767ad57c562f', 214, 1, NULL, '[]', 1, '2020-03-24 08:57:51', '2020-03-24 08:57:51', '2021-03-24 15:27:51'),
('76ebfd34aaae259ca5d9e1bba2d4e0d90b58d1685f05cbf6b2f0197b1d991d275837072e29845c01', 117, 1, NULL, '[]', 0, '2019-05-27 11:16:57', '2019-05-27 11:16:57', '2020-05-27 11:16:57'),
('7710d9b1b4e757fbf610b8cdab44f04b70cc103e513422e1846d97185d5e97fe9c7e5e62529d4bf1', 125, 2, NULL, '[]', 1, '2019-06-19 12:59:10', '2019-06-19 12:59:10', '2020-06-19 12:59:10'),
('772198fbf65ccf19cd1d7272257fcdf055154d2600f14569fbff709f79fc6635cafa4ed3fccc359a', 202, 1, NULL, '[]', 0, '2019-09-21 06:11:03', '2019-09-21 06:11:03', '2020-09-21 12:41:03'),
('772809a486fafa6be63cd2f3cb0b57532dfbfe3015dbf9f6ba4f4fb2b7d9ac8df36a208af3ce4d4c', 124, 2, NULL, '[]', 1, '2019-06-19 10:35:14', '2019-06-19 10:35:14', '2020-06-19 10:35:14'),
('773d6ee64d07518f64533bdc297db24df105aa7e9cbb53fab50511d58c9794c91a071ed23489b45a', 219, 1, NULL, '[]', 0, '2020-04-01 19:32:25', '2020-04-01 19:32:25', '2021-04-02 02:02:25'),
('7741e9aa73d8f197378fd52f3a6d9d0c5aad670a3697d222ab3c7eab03ecb004760f1197c4038083', 220, 1, NULL, '[]', 0, '2020-04-05 03:49:07', '2020-04-05 03:49:07', '2021-04-05 10:19:07'),
('774c3382a881ca8460b36ff3e93459c4ccf09deef01c645762e58eb6755da75c1cbccd19c9d47334', 214, 1, NULL, '[]', 0, '2020-04-07 07:02:43', '2020-04-07 07:02:43', '2021-04-07 13:32:43'),
('782d8388f044d9855e5551631f561526792beecefe36df5bf6287ba02a40235937279f7848638347', 186, 1, NULL, '[]', 0, '2019-07-10 05:57:02', '2019-07-10 05:57:02', '2020-07-10 12:27:02'),
('783f608ed12f9b1469a43b1d815f1c5122b750ce10b9c252194432b98ccf542e8bd233d7007cf330', 178, 2, NULL, '[]', 1, '2019-12-04 10:55:54', '2019-12-04 10:55:54', '2020-12-04 17:25:54'),
('789319f9e3502c9b7042189263c8b851185eaaf156ba5563133305d8b5de52a19ea692653370b796', 273, 1, NULL, '[]', 0, '2021-07-05 17:21:48', '2021-07-05 17:21:48', '2022-07-05 23:21:48'),
('7913c6cd975d21bf45e4b8b35e13df4c65d8ca3980c52e356c2879c837b5cb9189fd8c8988ae4731', 223, 1, NULL, '[]', 0, '2020-03-31 15:30:12', '2020-03-31 15:30:12', '2021-03-31 22:00:12'),
('792ae893d2230227dcd87e5e388cc1cde52cbcb8521bcf59045970918e7c7951e1d563799c149201', 211, 1, NULL, '[]', 1, '2020-02-12 06:14:49', '2020-02-12 06:14:49', '2021-02-12 12:44:49'),
('79bf50d55bc578369c4a98724462ebff93b82791ea42e78cfafc36159a7c2fe28db68912faab1cdc', 125, 1, NULL, '[]', 1, '2019-06-22 08:10:55', '2019-06-22 08:10:55', '2020-06-22 14:40:55'),
('7a58dffb8cf12337ab0c1f1bd242a572d45a632204f24194d5a272bd55655237c3e857d0e20d5517', 208, 1, NULL, '[]', 0, '2020-01-04 17:16:15', '2020-01-04 17:16:15', '2021-01-04 23:46:15'),
('7c1c917b56c080eaba1bc0006545330274cd99c397b07e2c5567babf68113abc0dc05b67d26f8355', 124, 2, NULL, '[]', 0, '2019-09-23 10:06:38', '2019-09-23 10:06:38', '2020-09-23 16:36:38'),
('7c25322bee552766f5105cde993ed4376e6a5d8dddc9ff42d977f28bc585353ac9b3e8ad87d91b5b', 225, 1, NULL, '[]', 1, '2020-04-10 11:40:15', '2020-04-10 11:40:15', '2021-04-10 18:10:15'),
('7ce4aa3e3eeef52918df323ecf0cac411287d458af98e744f755e7680ba6690d5645b49279abad82', 193, 2, NULL, '[]', 0, '2020-01-01 10:10:16', '2020-01-01 10:10:16', '2021-01-01 16:40:16'),
('7cfdecfd477badd9041dbdac4882ce2c9572ed431b58794234d73823c8ceeff524769d4cb84b836f', 124, 2, NULL, '[]', 1, '2019-06-02 08:10:33', '2019-06-02 08:10:33', '2020-06-02 08:10:33'),
('7d676efcb5f6074087b3631cbb3627e91ef24cd534618e0a7873a1abefea5f03b1140107a3f34a89', 262, 1, NULL, '[]', 0, '2020-04-20 12:29:45', '2020-04-20 12:29:45', '2021-04-20 18:29:45'),
('7d7f4519021488c976298400376aa232e03d9d3be5c8585afcffd9b938354b0ba32c7b8dc03f8e1c', 139, 2, NULL, '[]', 1, '2019-09-19 10:00:09', '2019-09-19 10:00:09', '2020-09-19 16:30:09'),
('7dff6581ae2b869bb1f1d8e6acdbb3d6a8579c74030f015444a2827933b9e4ea0c8e9a8afeb4e096', 254, 1, NULL, '[]', 0, '2020-04-10 13:06:34', '2020-04-10 13:06:34', '2021-04-10 19:36:34'),
('7e0c7dabae700a85d76a3fffa832088b5a08786e519a599584c41f1b532e1190eaa690dd7db9f529', 7, 1, NULL, '[]', 0, '2019-02-01 23:54:03', '2019-02-01 23:54:03', '2020-02-02 05:54:03'),
('7e49cfa8d230f94f0111f22d223e849853df11f2770e9bd9e0349e1f9198fbb4c124879dbf8595ca', 273, 1, NULL, '[]', 0, '2021-07-08 07:52:18', '2021-07-08 07:52:18', '2022-07-08 13:52:18'),
('7e68f65006d6b70384d9a7ed9c706d6c1ada1154e7990b9e176e507d6c1caad3eec595464769d3bf', 182, 1, NULL, '[]', 0, '2019-07-08 07:20:57', '2019-07-08 07:20:57', '2020-07-08 13:50:57'),
('7f1e6ce36eb9f3b1cc1d8d28a214e60d566b76f4372db1d55c3cbbaf47e989a3bed783d0426a041d', 227, 1, NULL, '[]', 0, '2020-04-05 03:43:21', '2020-04-05 03:43:21', '2021-04-05 10:13:21'),
('7f201debbb5f29d477842e78ac09b02e0776416bb4a1ece20f7e1ea2642d4f6ac4edaaeeae07de6a', 114, 1, NULL, '[]', 1, '2019-05-26 16:49:18', '2019-05-26 16:49:18', '2020-05-26 16:49:18'),
('7fb85151176bc95e4c496b954815bd0c8c5c62314a66f45fc132a469c72d32b541e94dac6d1a987b', 274, 1, NULL, '[]', 0, '2021-07-06 13:14:11', '2021-07-06 13:14:11', '2022-07-06 19:14:11'),
('7fc8bbe52954308d52306b7ab028e626485d2a6f328af5a290e43a364a22f75a951db433ef1db167', 125, 2, NULL, '[]', 1, '2019-06-02 09:20:42', '2019-06-02 09:20:42', '2020-06-02 09:20:42'),
('7fde8e8869d6d6972533139d07bfb94bd18f2b1d3ecafea4ffadf9718bad3248cb71ec2cfad651e6', 118, 2, NULL, '[]', 1, '2019-05-30 10:10:09', '2019-05-30 10:10:09', '2020-05-30 10:10:09'),
('8015a0e7112ea6166ee568df8b3543df01eb60632355dcd3e379b9080c1bda116a56154f2dcc9e17', 261, 1, NULL, '[]', 0, '2020-04-13 13:53:57', '2020-04-13 13:53:57', '2021-04-13 19:53:57'),
('807fbe37dfc20278cbeab18b770606e515b63344350df7f2b9d0f6eca269aa898041272da7af7467', 178, 2, NULL, '[]', 0, '2019-09-02 12:28:33', '2019-09-02 12:28:33', '2020-09-02 18:58:33'),
('8096525ac074ff5a1e9903a6cb65be2ecb2b2df8d1fde0e51819c57b4dfdeefc5b8395ed70408a31', 110, 1, NULL, '[]', 1, '2019-05-22 14:42:57', '2019-05-22 14:42:57', '2020-05-22 14:42:57'),
('80fc9409adc1067cbe9969d4bf58ebcf5f620efe37abbad97d380a8559afff4635dc552ad58de4ca', 118, 2, NULL, '[]', 1, '2019-05-29 11:01:45', '2019-05-29 11:01:45', '2020-05-29 11:01:45'),
('81756aa2b75c047ff3ae9fcbc0703516d3c099ef40f0e7b970bc0a14dc7e1cfc99fa5737acfcc548', 178, 2, NULL, '[]', 0, '2020-03-08 11:38:27', '2020-03-08 11:38:27', '2021-03-08 18:08:27'),
('81a38cc3657c86762190e0b60ed663e861545ab2ef93907c91194dca6b8850d26fc4d1fdc736ee81', 178, 2, NULL, '[]', 0, '2019-11-25 11:57:06', '2019-11-25 11:57:06', '2020-11-25 18:27:06'),
('81f898c9cdf81186f5f5476829142b446700b631dd3564e699e1138ee343d2df7c5ada3786a6867c', 194, 1, NULL, '[]', 0, '2019-09-04 07:26:54', '2019-09-04 07:26:54', '2020-09-04 13:56:54'),
('820f9fc0eace477556b14bcc302b777681cc2e161d7161f51e709f770a8709cd8ad779449b3df809', 178, 2, NULL, '[]', 1, '2020-02-12 06:07:21', '2020-02-12 06:07:21', '2021-02-12 12:37:21'),
('825876f0282c3826b77e1a47e4a4ceb34b377349c4cd42838e13f1891388ad7e272648f9e72ff088', 1, 1, NULL, '[]', 0, '2019-05-25 05:58:45', '2019-05-25 05:58:45', '2020-05-25 05:58:45'),
('8278dfe63b51acb3ec3dadbde9d8725bb0f66b5052db3a45f8d2196cd1395ca21788020c3be6f01d', 274, 1, NULL, '[]', 0, '2021-07-06 09:25:35', '2021-07-06 09:25:35', '2022-07-06 15:25:35'),
('8284052f0c0662c6aa685b478141e94394b24d0335e1c80064ae17558cf330ac1b8427dd8628b184', 166, 2, NULL, '[]', 1, '2020-01-23 07:44:47', '2020-01-23 07:44:47', '2021-01-23 14:14:47'),
('8289d520b53997de79990152957108e6458c9cbbd846237b18d74bff14812cd862ddb5f13c7b62a8', 145, 1, NULL, '[]', 1, '2019-06-20 13:05:02', '2019-06-20 13:05:02', '2020-06-20 19:35:02'),
('82ca5d4a264c9acc6f97555de920e447babd1fa3cf008857d51aebab3bef2dc6533a945880268e4c', 178, 2, NULL, '[]', 1, '2019-09-04 12:55:26', '2019-09-04 12:55:26', '2020-09-04 19:25:26'),
('83141945a54667ce4d62b683b9721e123f457e8523895f68e5a44b99e1ed9753cda4cb1751d1d2ca', 260, 1, NULL, '[]', 0, '2020-04-12 17:34:53', '2020-04-12 17:34:53', '2021-04-12 23:34:53'),
('837ced7ad523fd0a719f7ab916250612fe87f9c9113df51b2d214d5216804ee2cbe9ecface4e7ec4', 125, 2, NULL, '[]', 1, '2019-06-20 10:59:06', '2019-06-20 10:59:06', '2020-06-20 10:59:06'),
('83e61c0d36c69c12e737870b58439b5c5408f4ed0bc760fd7a8b9827bf5a64f5b466c29a487df05c', 112, 1, NULL, '[]', 0, '2019-05-27 09:45:47', '2019-05-27 09:45:47', '2020-05-27 09:45:47'),
('83ee6e3f427e104fe7a6e6b5461d0bd7768508891fe79888a38541a8e24a85072e3ad04d0d63bb6d', 125, 2, NULL, '[]', 1, '2019-06-25 05:49:24', '2019-06-25 05:49:24', '2020-06-25 12:19:24'),
('83f665d248f33aaecc5d7a932305b1ba524aeb6bd238c0a564f7cd64c84a384a62f521bb74d6a976', 178, 2, NULL, '[]', 0, '2019-09-08 10:26:52', '2019-09-08 10:26:52', '2020-09-08 16:56:52'),
('83fe41b38a08d56f3d536389fbc250ef3a5898521181e43f162046eac7e6f3fbf338ead83c31698c', 124, 2, NULL, '[]', 1, '2019-06-20 07:40:49', '2019-06-20 07:40:49', '2020-06-20 07:40:49'),
('841c14d7f0f524c2d14f010dfbfbeae57a274e6e7d1bdae0252a8e892e942be016a4935b61cc91c8', 255, 1, NULL, '[]', 0, '2020-04-21 18:44:55', '2020-04-21 18:44:55', '2021-04-22 00:44:55'),
('8459b800815e80ac0e8b23767d49155063d83b60078bdc2d1ed8d2eecdbf1b91c48674b050fd657d', 208, 1, NULL, '[]', 1, '2019-12-26 10:44:06', '2019-12-26 10:44:06', '2020-12-26 17:14:06'),
('84c9f8ee9afed06e9ca8bec3e5a9c5359a74b10610e1747db85e17fcc4727c7b7b60b3e54f73f8c2', 255, 1, NULL, '[]', 0, '2020-04-21 18:47:39', '2020-04-21 18:47:39', '2021-04-22 00:47:39'),
('84fcbd7b247a4831b41de5b22cfed01fdb8690bb421c2f1a3b425ee7e45125c1c386046c4f689ad2', 214, 1, NULL, '[]', 1, '2020-04-05 14:58:58', '2020-04-05 14:58:58', '2021-04-05 21:28:58'),
('851078cf1393481df5e7a9766cfb993df2739e5835097ac29af9a54477429d446eb69a0733f04c8d', 139, 2, NULL, '[]', 0, '2019-09-07 08:23:46', '2019-09-07 08:23:46', '2020-09-07 14:53:46'),
('857a9aa188ca1900945bf9cc8713b242861e47580c8299a45ee8e63302bc7eb8571a0bafca5afac6', 220, 1, NULL, '[]', 1, '2020-04-05 08:56:27', '2020-04-05 08:56:27', '2021-04-05 15:26:27'),
('85ba074b0d002e692ad30625d55c3888595a5ec4d852d305bfa4d1f8d93ed8d3f75bead0f0112915', 112, 1, NULL, '[]', 0, '2019-05-26 08:07:46', '2019-05-26 08:07:46', '2020-05-26 08:07:46'),
('85f32a908cf1d1d3640435432094f64e3e39d44fece050217ea77b6f6d9fbb269f1b9ade34798036', 244, 1, NULL, '[]', 0, '2020-04-07 13:13:21', '2020-04-07 13:13:21', '2021-04-07 19:43:21'),
('8617195b366ed1a366d3ebb63f34f0019600309f778fe71fca51da509d3a9ab4f14f92447af7b940', 219, 1, NULL, '[]', 0, '2020-04-04 06:46:55', '2020-04-04 06:46:55', '2021-04-04 13:16:55'),
('861d6c93776901be7239001e5aec5dc1462e3fb66fa474664896dc18bbc3249ddefb3fc5b3e2d527', 225, 1, NULL, '[]', 1, '2020-04-11 14:48:30', '2020-04-11 14:48:30', '2021-04-11 21:18:30'),
('86622bb800bf1381fd96812409bbd0961cee734355fa2fcc200cea592ace36d70e5250dba6041cf9', 103, 1, NULL, '[]', 0, '2019-05-07 04:50:37', '2019-05-07 04:50:37', '2020-05-07 04:50:37'),
('866f3b51a2e0d8eddf16217c8bd736f40076da576e41c0b559982c009fee1beeb1ea910b13b5951c', 258, 1, NULL, '[]', 0, '2020-05-02 20:01:31', '2020-05-02 20:01:31', '2021-05-03 02:01:31'),
('8697cc2a8cc034d77fb0bf0bc641b072397eba8471385c350ee8060f6ea5a59f3baebf48ce5735d7', 115, 1, NULL, '[]', 1, '2019-05-27 10:14:44', '2019-05-27 10:14:44', '2020-05-27 10:14:44'),
('86fb26b77fcd8a1a0bb2ebfd16c086a37605e1d7fa34a38aab089ab188ec729d610f68f96ff4bb31', 223, 1, NULL, '[]', 0, '2020-03-31 12:04:30', '2020-03-31 12:04:30', '2021-03-31 18:34:30'),
('872dad7c036aeb946fbe65cf3b9c6398b844fa60f7f1a0ff37f23ef0773dfb3611f9e3abc58babf6', 125, 2, NULL, '[]', 1, '2019-06-02 10:19:17', '2019-06-02 10:19:17', '2020-06-02 10:19:17'),
('88ffd4fb797710de826e5c1ff3a4427f336214dc4fbbac1a2cce2a7e33c2a99f3bddb69f09a1fdd9', 274, 1, NULL, '[]', 0, '2021-07-06 13:00:18', '2021-07-06 13:00:18', '2022-07-06 19:00:18'),
('895eb22c73bfe3f4f9e48b06daf93411844f6ef4a523c289ae57d145c8c7e8d95e6c84c1fe7ad33d', 220, 1, NULL, '[]', 1, '2020-04-05 11:11:02', '2020-04-05 11:11:02', '2021-04-05 17:41:02'),
('89c2dafa9937b1c62eb04845ee7cbfdb2262981d30aeb8084a5d3164498bdd639e9b929e1be4e0c2', 214, 1, NULL, '[]', 1, '2020-03-30 05:56:23', '2020-03-30 05:56:23', '2021-03-30 12:26:23'),
('89c5fb6530404c5d53145b711037f79c7d75e6c46b410dc65bc264e2e1624f8eee807a109b075c38', 219, 1, NULL, '[]', 1, '2020-03-30 18:35:02', '2020-03-30 18:35:02', '2021-03-31 01:05:02'),
('89fcffcf39358bbbb646b9ebedd218b515bf597739fb71a4f5f05cac597a662c99357358ada68f9c', 273, 1, NULL, '[]', 0, '2021-07-06 13:37:41', '2021-07-06 13:37:41', '2022-07-06 19:37:41'),
('8a37cc0611c6452992b95b94556401e55cc239d96cd03af50b7e5754a30867713ef705101a6ebc69', 124, 2, NULL, '[]', 0, '2020-02-06 10:40:32', '2020-02-06 10:40:32', '2021-02-06 17:10:32'),
('8a570bff2f5813e2f00209ba2b4292cfbda319feb2c24daa678e66c13f12181a500e30632e445081', 211, 1, NULL, '[]', 0, '2020-02-11 13:18:43', '2020-02-11 13:18:43', '2021-02-11 19:48:43'),
('8a5d397d4279cc204b6823390c0f15e74f90ce5b7dcfdf8883bd6a482022632b17fb1f51848b041f', 208, 1, NULL, '[]', 0, '2020-01-23 09:28:26', '2020-01-23 09:28:26', '2021-01-23 15:58:26'),
('8a8dedbd5e1c3eeabf3a581d7aa404a0a6097f1859364d2e9938d28967c77135098a19bb5cfd7399', 178, 2, NULL, '[]', 0, '2020-02-25 11:59:48', '2020-02-25 11:59:48', '2021-02-25 18:29:48'),
('8aab2bafdfab292ce8d1b4237fe215c17d771298d82336119b456d034ccd1ca22ae66bf0682da4cc', 137, 2, NULL, '[]', 0, '2019-06-20 05:26:17', '2019-06-20 05:26:17', '2020-06-20 05:26:17'),
('8af4924c3b47438b8276a59975fb28ae75d310eb0d3659e371c9ac4dbc8edc9dac588e1aeabd022b', 219, 1, NULL, '[]', 1, '2020-03-31 13:28:57', '2020-03-31 13:28:57', '2021-03-31 19:58:57'),
('8b0a8760926ce025dc6cf88e8fc2e47ab904bdd80bc88f562dc2d8eee0b784394f4e090ef8a8339e', 274, 1, NULL, '[]', 0, '2021-07-05 12:39:29', '2021-07-05 12:39:29', '2022-07-05 18:39:29'),
('8b314eb8b87b9bd490a371bdb3cbd54725926d085ac28bfda2951e32644a78c454ab4d680538da12', 258, 1, NULL, '[]', 1, '2020-04-10 16:49:27', '2020-04-10 16:49:27', '2021-04-10 23:19:27'),
('8b86360b141605062e3304f3937ff72939f53851bbb3f520a83188d9d8aa397d1cbdfd432e884274', 259, 1, NULL, '[]', 1, '2020-04-24 17:25:04', '2020-04-24 17:25:04', '2021-04-24 23:25:04'),
('8ba5b5476dd07e3888c362b2844e27e5129b1902174b82a2bd6888098922956da8b41c1997cfd54e', 120, 1, NULL, '[]', 1, '2019-06-01 09:14:18', '2019-06-01 09:14:18', '2020-06-01 09:14:18'),
('8c53e75fd51735088ceb62f63fb467cd06204637048918982257bbc1dfd5c3558ff24917a7ead148', 1, 1, NULL, '[]', 0, '2019-06-19 11:49:06', '2019-06-19 11:49:06', '2020-06-19 11:49:06'),
('8c7196e068f344a8205a45e64ccf71b480fe067810eb78e439649891c736614401a0d83080c410db', 257, 1, NULL, '[]', 0, '2020-04-20 06:26:25', '2020-04-20 06:26:25', '2021-04-20 12:26:25'),
('8c77e0856866c94741516aa0010d04cbe860a58b95a3fab4c26bda06f9382420d418aa01ed065e09', 214, 1, NULL, '[]', 1, '2020-03-24 10:03:19', '2020-03-24 10:03:19', '2021-03-24 16:33:19'),
('8c8aa399db42ce93b4c3ba9383f34a7bcdba326ce5d2bcc3f34b3f730978abe055645799d8d2c156', 240, 1, NULL, '[]', 0, '2020-04-07 17:38:56', '2020-04-07 17:38:56', '2021-04-08 00:08:56'),
('8c9db0ac5397a0e36e7c3170b9891b5d972a897cfb9312ba4183319350ee5f345b3c6426348e93f9', 178, 2, NULL, '[]', 1, '2020-03-08 11:40:22', '2020-03-08 11:40:22', '2021-03-08 18:10:22'),
('8ca87cd0fdd14aa9e0c41977111d11595b8a354f4403c4dd5a4d997f22b2dbf4ae6f04c5f4d742a6', 178, 2, NULL, '[]', 1, '2020-03-07 09:37:53', '2020-03-07 09:37:53', '2021-03-07 16:07:53'),
('8cf9f8ac86674b63cc6d15cfeb9632ebf3f88762a0ec35fb56a7a7b57cf71bc50c3de06ab187adf1', 224, 1, NULL, '[]', 1, '2020-03-31 15:09:36', '2020-03-31 15:09:36', '2021-03-31 21:39:36'),
('8d0aa8961046a96605240aad4ec1a2b47a31936a35cfb9c1b37db8170e71f06f9227d7ae4642d7e0', 125, 2, NULL, '[]', 1, '2019-06-02 10:20:10', '2019-06-02 10:20:10', '2020-06-02 10:20:10'),
('8d8da10bb80e4f34f754915f43753a250771f61eac8c222d9e79a3c76db364cc7b1848d0187316ee', 115, 1, NULL, '[]', 1, '2019-05-27 10:17:11', '2019-05-27 10:17:11', '2020-05-27 10:17:11'),
('8db158160c69b481faf37a7074a8478c91c9e763e35214650c7b953a0d324f15ee937953020b277d', 225, 1, NULL, '[]', 0, '2020-04-22 06:10:42', '2020-04-22 06:10:42', '2021-04-22 12:10:42'),
('8de96946fc31c821ca823bab806b8df278dccf0568efc1abd8f5c76c72a38cbf4e101a86db4d5c10', 214, 1, NULL, '[]', 1, '2020-03-24 10:12:39', '2020-03-24 10:12:39', '2021-03-24 16:42:39'),
('8e33c6186df0c4cc61874efb60990c90c64412e6cec729c49336b72724bcdfc6d93d37d10c2a03f8', 178, 2, NULL, '[]', 0, '2019-07-08 09:01:19', '2019-07-08 09:01:19', '2020-07-08 15:31:19'),
('8e38d2f72dfb353848237e9095eaac8edd13d4638d9d13e56213e4bae684942ccd60668d757ebec4', 124, 2, NULL, '[]', 1, '2019-06-19 08:04:17', '2019-06-19 08:04:17', '2020-06-19 08:04:17'),
('8e702805227c5319b482f707456c6ca40bea595fe3d92bb5ede41650b2f49e02fa51f35f2a54890c', 178, 2, NULL, '[]', 0, '2019-09-05 12:13:28', '2019-09-05 12:13:28', '2020-09-05 18:43:28'),
('8e7ecf0c1f131dbd31b829b8f47e33948ebb3ecc97e0248c783432312b5e2deb2ac81745be7ecdee', 133, 2, NULL, '[]', 0, '2019-06-20 04:54:45', '2019-06-20 04:54:45', '2020-06-20 04:54:45'),
('8e9c7171b5be0fec4d88c80446bee42e1f592d98e3b224e801875f8324eba8527b827b3acae39dce', 124, 2, NULL, '[]', 0, '2019-09-12 11:15:35', '2019-09-12 11:15:35', '2020-09-12 17:45:35'),
('8ec7e47a71c2c7b14101a2ab8d0dde1ef4c895a1fcc8bf732fff0e5bf8cf72d2690ab281d2b223ee', 118, 2, NULL, '[]', 1, '2019-05-30 10:03:23', '2019-05-30 10:03:23', '2020-05-30 10:03:23'),
('8f24bd3ee2bb62ea4e6a1076fb37a76e2a723622d5b12b286e0c061cd772220fa5c43dcb147c5c4d', 225, 1, NULL, '[]', 1, '2020-04-04 14:56:36', '2020-04-04 14:56:36', '2021-04-04 21:26:36'),
('9054c25a877a0807a38a6eaa76b9033f4a92770e4968bc548f732202a126973265a23ff40277350f', 1, 1, NULL, '[]', 1, '2019-05-26 07:17:10', '2019-05-26 07:17:10', '2020-05-26 07:17:10'),
('90b70a1247121d3aeead32c5610405544e2eca99cc8a1286b0f60d346b97dd491660f5d29958d5bd', 112, 1, NULL, '[]', 0, '2019-06-01 08:34:18', '2019-06-01 08:34:18', '2020-06-01 08:34:18'),
('90bf1f1b5004d29d3ac603e1cdc62d4d295d4f3d5d79509b05173a9bff29c6fcae7404a2db31fe81', 112, 1, NULL, '[]', 0, '2019-06-16 09:51:04', '2019-06-16 09:51:04', '2020-06-16 09:51:04'),
('90e20b69b16d476854fde4f759317a399159b494cbde271fa0f6d85ecbdc5a83f257563eea3bb682', 178, 2, NULL, '[]', 1, '2020-02-22 12:48:43', '2020-02-22 12:48:43', '2021-02-22 19:18:43'),
('9142f04641d832a1e76a35c2bc04ce72157dc1ee301647e8097ddd8c4a091bc04602585beb0318ea', 118, 2, NULL, '[]', 0, '2019-05-30 10:24:04', '2019-05-30 10:24:04', '2020-05-30 10:24:04'),
('91cd227fbdc9f91ede21d8ae7bd720d1ad0ee3e8a7b23b846f7afbd12dc5f482d0922ab0a4371451', 217, 1, NULL, '[]', 0, '2020-03-29 16:05:00', '2020-03-29 16:05:00', '2021-03-29 22:35:00'),
('91f89c233048172f11a03e1ab1a6c41316ec261ec4eef1353c8c6e0f4ff2188ea660430ef7a0e51a', 260, 1, NULL, '[]', 0, '2020-04-12 17:32:23', '2020-04-12 17:32:23', '2021-04-12 23:32:23'),
('9245ed9e99b46c09a6d4e9b64bd3cf0fc42b7082e2f058fda961b66262ec4b0e7a54b5ee3664626e', 1, 1, NULL, '[]', 0, '2019-05-27 08:10:14', '2019-05-27 08:10:14', '2020-05-27 08:10:14'),
('92652a1603cbc177880a2cfdd8ab2cf22378f5b157729aa1c79327058dc94df8cad29955d702c910', 128, 1, NULL, '[]', 0, '2019-06-23 17:21:01', '2019-06-23 17:21:01', '2020-06-23 23:51:01'),
('92a8553ef145827ac7bf36649dfee9b526c21e946e6d451131f0188c3d07d5fc73f71756bec01b2d', 121, 2, NULL, '[]', 0, '2019-06-01 11:10:43', '2019-06-01 11:10:43', '2020-06-01 11:10:43'),
('92db59bdfb199ebe456ac5cc45f9c0d9320022c9e195dc10fd2db8f0934fd8980b26ef13762daed3', 1, 1, NULL, '[]', 0, '2019-12-28 07:58:16', '2019-12-28 07:58:16', '2020-12-28 14:28:16'),
('9326a037c3bd3720f4c548d49654618a8bf73497ae00d1ee83b356e6135e865ad17592a2eaadd23b', 245, 1, NULL, '[]', 1, '2020-04-07 13:24:36', '2020-04-07 13:24:36', '2021-04-07 19:54:36'),
('9413b42edef5755838573ab70f8d245885c7796eaa6f34c783e9b8906635390e3a6866327b20edce', 127, 2, NULL, '[]', 0, '2019-09-18 08:25:16', '2019-09-18 08:25:16', '2020-09-18 14:55:16'),
('942d9e5cbc589e7c40d9b2e71d8907f666f5cf9e5d81d30d46564ea69da6d4306c543a4839e9128e', 196, 2, NULL, '[]', 0, '2019-09-19 07:39:47', '2019-09-19 07:39:47', '2020-09-19 14:09:47'),
('9461e19222c8358256cb1a883c876bbb292e832ed6c5a445af03cb20684380ba4136cb67598d6b8f', 274, 1, NULL, '[]', 0, '2021-07-06 11:54:21', '2021-07-06 11:54:21', '2022-07-06 17:54:21'),
('94b6c83615f6974e509324f975e8fbb899a26f373343262005c7e1735faa80d2d4d2bd9b9466b76f', 112, 1, NULL, '[]', 0, '2019-05-31 16:50:07', '2019-05-31 16:50:07', '2020-05-31 16:50:07'),
('94d412f4b47c1521fe6e5d20062d560e5068c2689b1b314880b91bb5dae325ef5819062315ba765f', 128, 1, NULL, '[]', 0, '2019-06-20 11:36:58', '2019-06-20 11:36:58', '2020-06-20 11:36:58'),
('94d88a16e79258479ef77f8444e2865054652632928183c9eaf5368bc726cd65c70545f6a11d69fa', 219, 1, NULL, '[]', 0, '2020-04-04 06:48:54', '2020-04-04 06:48:54', '2021-04-04 13:18:54'),
('94f579637c0bf5f826b35075c98879045bdf7f122c01a0abb35ed64c3dd0c2d725504577c784b228', 118, 2, NULL, '[]', 1, '2019-05-29 10:56:55', '2019-05-29 10:56:55', '2020-05-29 10:56:55'),
('95e4d75172631a1303ab628069f191b96cad7288bacb8288b28515528d8f42fff2cc1a3b86dd362f', 122, 2, NULL, '[]', 0, '2019-09-19 11:37:24', '2019-09-19 11:37:24', '2020-09-19 18:07:24'),
('95f857ef8f27c3c3ead87b564c1698eb0ab363524d3e1093f7b4137e9aaef82f4744c35ab99a70db', 219, 1, NULL, '[]', 1, '2020-04-04 12:30:10', '2020-04-04 12:30:10', '2021-04-04 19:00:10'),
('9654d7ef3d592132232e24b4a04b196e6c50bc8ffc5621e266097c3153f254d372d749b491b9df32', 1, 1, NULL, '[]', 0, '2019-05-27 09:50:57', '2019-05-27 09:50:57', '2020-05-27 09:50:57'),
('96728217313e4545a5f3bc7d5847f895be4426f0552aa3f4732d35dbdb3cd2632f388a2d09400781', 208, 1, NULL, '[]', 1, '2019-12-28 09:48:55', '2019-12-28 09:48:55', '2020-12-28 16:18:55'),
('96feb6bfb998f9fbcdcd25c3b8c44b3d36726869ced39bd349f5f93b738e61d8bf3ca5a3f30e6e75', 257, 1, NULL, '[]', 0, '2020-04-20 18:12:26', '2020-04-20 18:12:26', '2021-04-21 00:12:26'),
('976fbe0d0f2a45c1894d69a1ff796513d2b5e9b41a2b77b710fa4546788c629fd2982f3ca203a350', 195, 1, NULL, '[]', 1, '2019-09-04 11:55:47', '2019-09-04 11:55:47', '2020-09-04 18:25:47'),
('979fec9c989c8778edf8c7c6f7054d1877e4b2739b60bbd4d58aabcde225bf4fa255d5d29e4b2cc0', 178, 2, NULL, '[]', 0, '2019-07-16 12:34:44', '2019-07-16 12:34:44', '2020-07-16 19:04:44'),
('988f0daf5284c3aa643035b6667aec1df9982b525d87d04081b9d962aad356d3400e0a0b0d5b6fd5', 124, 2, NULL, '[]', 1, '2019-06-19 10:24:39', '2019-06-19 10:24:39', '2020-06-19 10:24:39'),
('9893ecb3d17fda6fe4f8b26f1406344dd68b50ad124f7eedaa9b2c9383f263337634feed402ff3cb', 1, 1, NULL, '[]', 1, '2019-05-26 08:44:00', '2019-05-26 08:44:00', '2020-05-26 08:44:00'),
('9895461fe83c697e5c13376d10b92494dc3fc6040a43e591d8bd34e7d2d058117993c6f181186913', 273, 1, NULL, '[]', 0, '2021-07-07 07:17:51', '2021-07-07 07:17:51', '2022-07-07 13:17:51'),
('98ad0bf7b790c0b32eb3ed9f95e7ddab9bec4e676cb4ff26cb8f3581a933ec459d300ee0333a79f0', 112, 1, NULL, '[]', 0, '2019-06-01 09:21:31', '2019-06-01 09:21:31', '2020-06-01 09:21:31'),
('99401e949e7f4951ca2d8ab322ee2d9ff0ad53c82ab2ca06ec805ef994d762f3c60a7bee1b5d0047', 227, 1, NULL, '[]', 0, '2020-04-04 17:23:36', '2020-04-04 17:23:36', '2021-04-04 23:53:36'),
('996beb8b9eb30850aa00fb01c6b9ee20ddee3091d408f7c7257b12d01da0557e9bcd1f36cdd14a01', 128, 1, NULL, '[]', 0, '2019-06-19 14:03:27', '2019-06-19 14:03:27', '2020-06-19 14:03:27'),
('9a8acd2960db4a040afc21c757cb37c5910f80cb1ff7393788c3cce429e4deb7fb8aaa138a4e7bdd', 127, 2, NULL, '[]', 0, '2019-11-07 08:44:14', '2019-11-07 08:44:14', '2020-11-07 15:14:14'),
('9ad8a4b810be6114d77fdabe10de173e7736b1bce5721d45a8ff99889d35a323adc6688907ae519c', 178, 2, NULL, '[]', 0, '2019-09-12 12:04:01', '2019-09-12 12:04:01', '2020-09-12 18:34:01'),
('9ae07a460a565f49d31d6404108128cc162ce329bd59e329af44e6fb83298d2fe14345900fd3c1e3', 106, 1, NULL, '[]', 1, '2019-05-07 10:09:23', '2019-05-07 10:09:23', '2020-05-07 10:09:23'),
('9aeed2e01bc102c5c874a0bf9cc74add2fe847f6b432fa217c8f3525c18cb99f0dbcd1ac6211996b', 124, 2, NULL, '[]', 1, '2019-06-02 08:11:25', '2019-06-02 08:11:25', '2020-06-02 08:11:25'),
('9afa77b9628125fe15470fd3b844d2b6505846cb8380cb79971adf34c7fd00a0fd877670e8b9006e', 264, 1, NULL, '[]', 0, '2020-04-12 06:49:48', '2020-04-12 06:49:48', '2021-04-12 12:49:48'),
('9b12b370f3d74bc2d8d8936ca82207a769c9d81e965f2850e3e8b05087bc4cc08d276a04cf1f91a2', 212, 2, NULL, '[]', 0, '2020-02-12 09:53:21', '2020-02-12 09:53:21', '2021-02-12 16:23:21'),
('9b2d238284aca46916b117abacb25bc929d7fd8dbd7e525efd44a02bb0159f6ca4bb7589f4ba7ee2', 1, 1, NULL, '[]', 0, '2019-05-08 09:18:24', '2019-05-08 09:18:24', '2020-05-08 09:18:24'),
('9b33b6addbc5e6ef9a186089fe5809fce0b5c867f5a60f2d0834e5f00f924105df0e0472f4b148b1', 273, 1, NULL, '[]', 0, '2021-07-06 08:46:31', '2021-07-06 08:46:31', '2022-07-06 14:46:31'),
('9b42bd64d59447fe553baf2e259d0956aa2929c2c47641de6fbb793fbfbd5160156035420cfe0514', 166, 2, NULL, '[]', 1, '2020-01-23 08:23:06', '2020-01-23 08:23:06', '2021-01-23 14:53:06'),
('9b45a978b05bcfed6477ed69feaad88c15242ed568b4ca2731d8bd3f42ebc93fc1b9df9727606bb7', 107, 1, NULL, '[]', 0, '2019-05-09 06:24:31', '2019-05-09 06:24:31', '2020-05-09 06:24:31'),
('9b54c9a1470b7f37a95769c3a7471cd5ac1d5e3eb7d75a8141112c30972eb1809a2243b9c080ec7f', 125, 2, NULL, '[]', 0, '2019-06-20 11:01:05', '2019-06-20 11:01:05', '2020-06-20 11:01:05'),
('9b876811f34361101dc2cbf10ead88deda39d04b6a256ad22f393682c1154e8e619f20e0177f2511', 178, 2, NULL, '[]', 0, '2020-02-26 04:48:26', '2020-02-26 04:48:26', '2021-02-26 11:18:26'),
('9b8b2b8e81ea0f6f1fde0b266cbf4c85324a388393b2d11725fe6a105f76969c7cf28636dde9f2cc', 178, 2, NULL, '[]', 0, '2020-01-04 07:35:16', '2020-01-04 07:35:16', '2021-01-04 14:05:16'),
('9c2a54431cb3204d6f266c496e0e3af79a55a6e990f91ef6da61680c85aef272f3aab3d764f043da', 208, 1, NULL, '[]', 1, '2020-03-09 06:52:53', '2020-03-09 06:52:53', '2021-03-09 13:22:53'),
('9cad4aa97409eebde1cdaa6cda53bda26e1392b67f19a92375e126ff7fd4ae62fbea8ce17ae6f446', 1, 1, NULL, '[]', 1, '2019-05-30 10:27:19', '2019-05-30 10:27:19', '2020-05-30 10:27:19'),
('9de6ac3b3536051413d6744f11cf2d57596c0b0c61cd79659563024e72202fb47721125c51d35442', 274, 1, NULL, '[]', 0, '2021-07-06 10:06:27', '2021-07-06 10:06:27', '2022-07-06 16:06:27'),
('9dec88f9504fe12223cd05a2cecc6a049d2f7f40e72dec6aeac513e01ec58b57bcb8ad6105e06d61', 261, 1, NULL, '[]', 0, '2020-04-11 05:24:19', '2020-04-11 05:24:19', '2021-04-11 11:54:19'),
('9e6391520c30973835e4f243a4449a05c5f5650f187e546cc45c47e1a9a6de790c80607d0c933b3e', 214, 1, NULL, '[]', 1, '2020-03-24 10:15:11', '2020-03-24 10:15:11', '2021-03-24 16:45:11'),
('9ec5eec3bda0c378c7ef4b67e1ca01313e0093bc0fd58e14c277f0d8b20dfa1a253d7d8539b9c9f3', 125, 2, NULL, '[]', 1, '2019-06-24 16:12:55', '2019-06-24 16:12:55', '2020-06-24 22:42:55'),
('9f0b51ee4404e6d15573ff57da576427d440354c9b479ddf8fc5680fdaacc6ffff2df5e93bf36af9', 126, 2, NULL, '[]', 0, '2019-06-02 09:41:40', '2019-06-02 09:41:40', '2020-06-02 09:41:40'),
('9fd0a9247fc4f47644fa798cfcb4c96ad9833a940f7fc5286e836bc13d3df5f869576fd0b4a3ebed', 134, 2, NULL, '[]', 0, '2019-06-20 05:00:26', '2019-06-20 05:00:26', '2020-06-20 05:00:26'),
('a03e893d0e33cd43f6d12a0eb369729d879074d722c0fd7abaf0d60ac2823c757e863b719235a64c', 220, 1, NULL, '[]', 1, '2020-04-05 07:58:37', '2020-04-05 07:58:37', '2021-04-05 14:28:37'),
('a059349c34c24ac017bf1e299b82a339e3778c7d331d952cf330d86a4d08cf4746428208e3b0b0b9', 107, 1, NULL, '[]', 0, '2019-05-07 11:04:22', '2019-05-07 11:04:22', '2020-05-07 11:04:22'),
('a11edbd999820a92d059d8f3ccd5ca0feea709cd86e4495700e7d41511a140a6786baabc393d5e17', 218, 1, NULL, '[]', 1, '2020-03-30 06:09:24', '2020-03-30 06:09:24', '2021-03-30 12:39:24'),
('a19aafb43be95369ef4baa4c916a0314f5e1c4df71c356299af95c63f5cae8b5e1effd97614b3d79', 274, 1, NULL, '[]', 0, '2021-07-06 09:08:47', '2021-07-06 09:08:47', '2022-07-06 15:08:47'),
('a19f461054b3ad93fe7ea7c35d817fcf03e5cca776dba712dd424387e966bac0eb19da37c48e6c02', 150, 1, NULL, '[]', 1, '2019-06-22 08:14:55', '2019-06-22 08:14:55', '2020-06-22 14:44:55'),
('a1d36f2a44ea6fbf06c5267044db7396c96a82efa3c723ebb8027c95ca1dbdcd24ae2f4cb9ea0be0', 178, 2, NULL, '[]', 0, '2019-10-02 11:34:27', '2019-10-02 11:34:27', '2020-10-02 18:04:27'),
('a1d6891bed238db97ebd9258212ea951f795312625338c53e2b48f73a8dc4272091c1482675233da', 223, 1, NULL, '[]', 0, '2020-03-31 15:36:20', '2020-03-31 15:36:20', '2021-03-31 22:06:20'),
('a1e55527044acfddbca24e1a03dac1135027f9d495e99d00e5cac7c6e5b4520f9d0f62c9a2e3bbbd', 1, 1, NULL, '[]', 1, '2019-05-27 10:36:23', '2019-05-27 10:36:23', '2020-05-27 10:36:23'),
('a217c19504073fc0e5563de15c1b61186b51facd840de26126b622f4e0cb16c1f327813966039848', 112, 1, NULL, '[]', 1, '2019-06-01 09:10:57', '2019-06-01 09:10:57', '2020-06-01 09:10:57'),
('a266f573c54374023ddf4a759dd688f21d10e251e4aece264284e31b028fc5a84a3c5d56babbafd7', 181, 1, NULL, '[]', 0, '2019-07-04 07:09:06', '2019-07-04 07:09:06', '2020-07-04 13:39:06'),
('a26fec7b327084e18cea78e5164e9e315ceee1243c319d9f5a27e76b0b411f928cf21744110c1bfb', 227, 1, NULL, '[]', 0, '2020-04-04 06:29:17', '2020-04-04 06:29:17', '2021-04-04 12:59:17'),
('a2d2bc1cd94f7335ed4c85aaf9175afc93ca012ab7df57a0a8abc15a9b4b82e0ec69f7d9f8877f33', 248, 1, NULL, '[]', 0, '2020-04-07 19:33:07', '2020-04-07 19:33:07', '2021-04-08 02:03:07'),
('a2ef2c2c8522a8a9c86329eebcc0249cf2abf66320e2285e5372fa689380a230770178bde329e5e5', 273, 1, NULL, '[]', 1, '2021-07-06 09:03:29', '2021-07-06 09:03:29', '2022-07-06 15:03:29'),
('a329a6074b9273e42dbfc6ea474876c1ea65674f7bed24bdceb5334ff3de5faefa74204dd54c3eff', 274, 1, NULL, '[]', 0, '2021-07-06 07:35:18', '2021-07-06 07:35:18', '2022-07-06 13:35:18'),
('a3627a19cc54b0ed3930c494d7728e032c4d9a97c25a90aafb50ed1887c438faeff8a4d689c63cf5', 208, 1, NULL, '[]', 1, '2020-03-09 06:44:22', '2020-03-09 06:44:22', '2021-03-09 13:14:22'),
('a398c1bcd332aa3bd42cb07af15dfa32c8be97bdf1d8f2c0360be52b7fbf0c69478664dad38fc25e', 139, 2, NULL, '[]', 0, '2019-10-31 11:33:35', '2019-10-31 11:33:35', '2020-10-31 18:03:35'),
('a4273266d091dad9398218595657b81b12cb346c09c580191704e658693f89b51e6b9c525ec733d5', 272, 1, NULL, '[]', 0, '2020-04-26 10:38:08', '2020-04-26 10:38:08', '2021-04-26 16:38:08'),
('a42761f43f7163d0b7b788056918cf62b30b20a2760aa9d34dde14dbdd1a3b6d62e53dec1aa75d76', 193, 2, NULL, '[]', 0, '2019-08-09 12:26:02', '2019-08-09 12:26:02', '2020-08-09 18:56:02'),
('a46cc0ff64bb6dc40139fa0f5f07a6c6464387c202d7cfbd0a676aafebe37726cd07a6cb52f54f83', 124, 2, NULL, '[]', 0, '2019-06-19 09:32:21', '2019-06-19 09:32:21', '2020-06-19 09:32:21'),
('a4b1fb4f95559e8aa85283abd29bbaf47c39c0bb65bf91c1c7af9f02dc30e6967405d7036109cc3e', 257, 1, NULL, '[]', 0, '2020-04-20 09:12:39', '2020-04-20 09:12:39', '2021-04-20 15:12:39'),
('a4dce591d3dd410064fbffdbbab29c9377b007731da1239fabd492db851adb0e62a86769882dde17', 178, 2, NULL, '[]', 1, '2019-09-04 12:53:57', '2019-09-04 12:53:57', '2020-09-04 19:23:57'),
('a55b377a448a5fc5aba26235ac320ce820be0d66438acf9b65036c4e60e8577e5cbf606d3e3095ed', 139, 1, NULL, '[]', 0, '2019-09-08 05:46:55', '2019-09-08 05:46:55', '2020-09-08 12:16:55'),
('a56e3d63d28fc6e2d753b713bf516254850b143f05587304c783b30c8030c0407df958e9f83df044', 214, 1, NULL, '[]', 1, '2020-04-05 13:50:45', '2020-04-05 13:50:45', '2021-04-05 20:20:45'),
('a5b932288f41064a9dce61a1c974a1e3606a67547ddcd9d9fb44da56be5648e06afb868e3be06ad3', 1, 1, NULL, '[]', 0, '2019-06-19 05:50:29', '2019-06-19 05:50:29', '2020-06-19 05:50:29'),
('a5e19e1e692f5919a7ac9f0ccf9c50679f152691a2c1f320f8b133baa92b91fe43f15aeb5ac2eac6', 1, 1, NULL, '[]', 0, '2019-05-30 18:20:47', '2019-05-30 18:20:47', '2020-05-30 18:20:47'),
('a5f5473e75834ff3c397723ddac47af5e3b89e9c6fbcd898331e7f9f6ff7d984b0b6932ac3feec57', 125, 1, NULL, '[]', 0, '2019-06-22 10:42:33', '2019-06-22 10:42:33', '2020-06-22 17:12:33'),
('a68bb7598cf582a512b366e4253aa0605b51ba2d29165d36d5fcda5c127409ee212ec8b226918a37', 274, 1, NULL, '[]', 0, '2021-07-06 13:02:46', '2021-07-06 13:02:46', '2022-07-06 19:02:46'),
('a707bddcd39d03289d89b4bd5a6231babe7d7039911aed5ddc08cd9ecd0ec797c9badcd6c3cfa2c0', 109, 1, NULL, '[]', 1, '2019-05-08 09:37:34', '2019-05-08 09:37:34', '2020-05-08 09:37:34'),
('a7a487e208a03a57c34d2e161deea220dec0aa345fcd1a5bf8500e6bf55b88347d998a4f984380c5', 217, 1, NULL, '[]', 0, '2020-03-29 19:54:01', '2020-03-29 19:54:01', '2021-03-30 02:24:01'),
('a81c6df48061e1323b01d64a92fee84fdad9e1f93a7034f9dfea90c835733e30609906ab6405d90d', 108, 1, NULL, '[]', 1, '2019-05-07 11:06:56', '2019-05-07 11:06:56', '2020-05-07 11:06:56'),
('a82246a7c08c3b0774c30b672305b254180d6c2435dbb01495b127b5fcc2a2eea7998219e44eb4a0', 1, 1, NULL, '[]', 0, '2019-05-28 10:04:34', '2019-05-28 10:04:34', '2020-05-28 10:04:34'),
('a891a437577e253fb3ff9f3d31147b24d3b7b22cbe0501182a909a782bb0343a794558b96f2b9462', 273, 1, NULL, '[]', 0, '2021-07-06 07:48:24', '2021-07-06 07:48:24', '2022-07-06 13:48:24'),
('a92ce10a97da7684db4f48b85dc677f902e0c66e345ba976986af20ac04bd660f2ae0803dee215a4', 129, 1, NULL, '[]', 0, '2019-06-16 11:03:24', '2019-06-16 11:03:24', '2020-06-16 11:03:24'),
('a96623518d54647de407bb12adc1d076ec2b5bb55ff3c1dd02708fd7368f35c77c7e610dee0fd14d', 189, 2, NULL, '[]', 0, '2020-03-11 14:47:12', '2020-03-11 14:47:12', '2021-03-11 21:17:12'),
('a9999e6469ad78dbd9a386905ebd7437192b155762e203a8bab0289c4b70a6365cec8de7a470c5b6', 1, 1, NULL, '[]', 0, '2019-05-31 16:51:34', '2019-05-31 16:51:34', '2020-05-31 16:51:34'),
('a9ece78207ff5c496186bfebd7bb519c5a7c37637615297097dba5703e8bbf91e0e20ac6c55d6763', 225, 1, NULL, '[]', 1, '2020-04-12 07:26:14', '2020-04-12 07:26:14', '2021-04-12 13:26:14'),
('aa06d23c093a4f579e3fc1fe8a3cf34b0b7fe13cf5c6571ecdd2be82d1622d6d2c231b8d2e5808f3', 180, 1, NULL, '[]', 0, '2019-06-29 04:55:43', '2019-06-29 04:55:43', '2020-06-29 11:25:43'),
('aa161d80db0b8031449c8bd3b2f0ad53ea65a8866832682b7dd5e77350bb2ef844a9217581047b98', 255, 1, NULL, '[]', 0, '2020-04-20 17:57:22', '2020-04-20 17:57:22', '2021-04-20 23:57:22'),
('aa380259a5e80f78987e15a1f7bb2b1f7b66e3f0dab8514ff5e935e4aeceddd2e1b37fd4bed3a5ba', 6, 1, NULL, '[]', 0, '2019-02-01 23:45:43', '2019-02-01 23:45:43', '2020-02-02 05:45:43'),
('aa5c88c9d76f08e587e8abef29d512d018cba39e9d4e21ed47af82acf5f444fd8e9feb43067a85eb', 257, 1, NULL, '[]', 0, '2020-04-20 11:35:32', '2020-04-20 11:35:32', '2021-04-20 17:35:32'),
('ab3e9c43e9dcc0a3cec9b68eab4e93be9e0a657e0f18b17685263529646a0fccd1ebcb5e0d267b5c', 214, 1, NULL, '[]', 1, '2020-04-05 13:51:26', '2020-04-05 13:51:26', '2021-04-05 20:21:26'),
('ab4cb7fbb922fd57d9ebd3dafd72adb17ebd16c2c205161500723eb948b568e0cae5fd55d8ec7990', 254, 1, NULL, '[]', 0, '2020-04-12 06:59:46', '2020-04-12 06:59:46', '2021-04-12 12:59:46'),
('ab7a248d6f41035992de312c8e08d6640eeaf130357c720cd1c4ca87663aff251533650638d9204b', 112, 1, NULL, '[]', 0, '2019-05-27 10:54:18', '2019-05-27 10:54:18', '2020-05-27 10:54:18'),
('abacd1219cc294bb2a6f3d6525c0b409899de16e1a4c97665b317d4e3bd30bfea89e7fd8571784fe', 107, 1, NULL, '[]', 1, '2019-05-08 08:08:04', '2019-05-08 08:08:04', '2020-05-08 08:08:04'),
('abad0e5be57a5635c30fa56ce96994feafdf3436ee35b1fc736fe60141d77d0f1e763119779e366e', 205, 1, NULL, '[]', 1, '2019-12-18 07:33:21', '2019-12-18 07:33:21', '2020-12-18 14:03:21'),
('abbe0e2554348d51ab6afe458dde82361ac91da8344e2f8054476024741c4400be56e36c546c1525', 166, 2, NULL, '[]', 0, '2019-09-07 08:00:08', '2019-09-07 08:00:08', '2020-09-07 14:30:08'),
('ac4ac838765d7b674bf725cf83fc2db0b53752d2c74bdfe334673eed4b41f464c9649c863e9961b8', 189, 2, NULL, '[]', 0, '2020-02-26 02:04:14', '2020-02-26 02:04:14', '2021-02-26 08:34:14'),
('ac5ca71e833fe730717dba71bb43bd479ecf314f9c363f7f00c64a5a856cdfb0d423ab6cfcb2da5b', 121, 2, NULL, '[]', 0, '2019-06-02 10:49:16', '2019-06-02 10:49:16', '2020-06-02 10:49:16'),
('ac5fa7e46939c7aa7f82aa0493d2d7434da8c30d6173b7d45bca2906069010b8c7331ee5b28593a5', 249, 1, NULL, '[]', 0, '2020-04-07 13:38:11', '2020-04-07 13:38:11', '2021-04-07 20:08:11'),
('ad2c780248fc4f8954f945ec674ceafa177e83ee9932ba806f747f54820a486a667cac05eeb41f44', 263, 1, NULL, '[]', 1, '2020-04-11 14:55:06', '2020-04-11 14:55:06', '2021-04-11 21:25:06'),
('ad5a63766bf358f8adfd28a644bb4451da110ae5ef9d35a7e88d3fc6e158cb68560b32dcd8d910d8', 7, 1, NULL, '[]', 0, '2019-02-01 23:58:02', '2019-02-01 23:58:02', '2020-02-02 05:58:02'),
('ad80806c57ddbe7a4d55616ba4b93709960596ac3fc7744c8469a869135f4ac9103fb9abeaff5650', 127, 2, NULL, '[]', 0, '2019-07-12 04:33:40', '2019-07-12 04:33:40', '2020-07-12 11:03:40'),
('add460b15f3fb58e6f8bde05f93113c2c322401e348002f7c66157fa012e2bc51b64ba1069590cda', 178, 2, NULL, '[]', 0, '2019-09-07 09:46:55', '2019-09-07 09:46:55', '2020-09-07 16:16:55'),
('ae7c3e1929734b1e99df2ed7f5aeb6d03785f5e26dba560b50f0de823107b0de1a37d8b75ad53ba5', 263, 1, NULL, '[]', 1, '2020-04-11 14:45:45', '2020-04-11 14:45:45', '2021-04-11 21:15:45'),
('aeba2a92c50e0c49802000f2ee2a2272e065316857c9f07ea0277a1aec2ef06ce5e140b370bbb0c2', 263, 1, NULL, '[]', 1, '2020-04-14 13:16:20', '2020-04-14 13:16:20', '2021-04-14 19:16:20'),
('aed611e1853c426f60f359bad4739339e4087a579682472dd4066986381de67eab9e344a63ee95c5', 1, 1, NULL, '[]', 0, '2019-09-25 09:14:29', '2019-09-25 09:14:29', '2020-09-25 15:44:29'),
('af2927c7a7d070aa6845069622fe1f3951b0242ae80eab5d7d5c3a770750c49dba41bb30931151a2', 127, 2, NULL, '[]', 0, '2019-09-06 03:18:14', '2019-09-06 03:18:14', '2020-09-06 09:48:14'),
('af56a8b38854342f30699b0bc1b4718b9898439fd716b87ed00839bf166ad075492512c9095cc1aa', 273, 1, NULL, '[]', 0, '2021-07-05 17:33:21', '2021-07-05 17:33:21', '2022-07-05 23:33:21'),
('af591661777655809606b2c41ef3ac01be0ab7378524957942ab41e22cbe0e4600000c25e4a3bd74', 166, 2, NULL, '[]', 1, '2020-01-23 07:49:09', '2020-01-23 07:49:09', '2021-01-23 14:19:09'),
('af997d4929cd92d4803c29a57f4655c6c042d6361bdb73357a7fa6c0ed3c5f860582e882d056c2e9', 125, 2, NULL, '[]', 0, '2019-06-02 10:04:41', '2019-06-02 10:04:41', '2020-06-02 10:04:41'),
('aff8306b7541f860700df196e76d4b9c838a5505c5c277a8ff1799923941468e877754e4b4f0f4f8', 125, 2, NULL, '[]', 0, '2019-09-08 10:50:21', '2019-09-08 10:50:21', '2020-09-08 17:20:21'),
('b015bf76df5e4ec9b2fc9121c8a1c0a9af4a1fe7fb4a65b213435afb7c63d72406d9fd4c7383661b', 3, 1, NULL, '[]', 0, '2019-02-01 23:12:41', '2019-02-01 23:12:41', '2020-02-02 05:12:41'),
('b048eb99c5fded86741128fa1daaf5c34528aa82ad44f21591d4cdfa0ffdedaef0e472e0cf6b5fb5', 255, 1, NULL, '[]', 0, '2020-04-10 10:03:41', '2020-04-10 10:03:41', '2021-04-10 16:33:41'),
('b06ce59fb3478f75937fdab61843126e5c09f6bf078f985cb86a2fd075739137bf2653411be589f8', 274, 1, NULL, '[]', 0, '2021-07-06 09:33:12', '2021-07-06 09:33:12', '2022-07-06 15:33:12'),
('b07a3b7d6c2cefc3dea0817a20fb17aaa31d485cfc896cca5557f12a3cf83595f15dc50ca43d163b', 166, 2, NULL, '[]', 0, '2019-09-08 10:51:19', '2019-09-08 10:51:19', '2020-09-08 17:21:19');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('b106e36914442dd4aef2fb49a9de38b7f28f866726e33ff53334462a0b59204f7a45ef4a67966bfc', 178, 2, NULL, '[]', 1, '2019-08-18 10:20:52', '2019-08-18 10:20:52', '2020-08-18 16:50:52'),
('b135a637b74f5cea6b866d601a65e277d4adbe1a803fa8f7d5d96524fd8feadc6dee992f0ccfb0d8', 267, 1, NULL, '[]', 0, '2020-04-25 05:55:45', '2020-04-25 05:55:45', '2021-04-25 11:55:45'),
('b14f2a735534d13d91d6d85aca8ca11831369afd79bb3c6d442b8e73c4e4c1933ddec66d446a9c3a', 273, 1, NULL, '[]', 0, '2021-07-08 07:24:59', '2021-07-08 07:24:59', '2022-07-08 13:24:59'),
('b16803a0bac2ea3ddd210a58fde444065df26dbbc68a1146e89bef4c8b34c8683b1d1aa4c826e019', 273, 1, NULL, '[]', 0, '2021-07-07 08:15:53', '2021-07-07 08:15:53', '2022-07-07 14:15:53'),
('b19f415056c665477ca095c01e07f1dff2de52840db974397c3ca21907b2429403dbd68604328b46', 118, 2, NULL, '[]', 1, '2019-05-30 06:16:38', '2019-05-30 06:16:38', '2020-05-30 06:16:38'),
('b1ffe3063bc0a427b44de5291863b11759267db74cf898ed9374c937bb167730cc7601a01fdb5db7', 220, 1, NULL, '[]', 1, '2020-04-07 12:34:02', '2020-04-07 12:34:02', '2021-04-07 19:04:02'),
('b223d3845891f56fdd4a2c79e8e349ce84c4ee9f3516c5fcab49b31ca18cf614343426f974f30dc2', 112, 1, NULL, '[]', 0, '2019-08-17 11:19:09', '2019-08-17 11:19:09', '2020-08-17 17:49:09'),
('b26b7c39b0288e379a5134fcc9327498b01e553634fad95d435285576e664e98bdf98ae0359eadf5', 118, 2, NULL, '[]', 1, '2019-06-01 09:06:24', '2019-06-01 09:06:24', '2020-06-01 09:06:24'),
('b29a230d0e9eab045080b7e05a4cec342b44e79c901ca54ea0e4586dc1468cd55bd2b295e683722d', 152, 1, NULL, '[]', 0, '2019-07-03 16:02:42', '2019-07-03 16:02:42', '2020-07-03 22:32:42'),
('b38ccd7d2eda4ebd99074217ca5ce9f6220d0549422c192091b8741a5c64d1f63b003ea56f592093', 178, 2, NULL, '[]', 0, '2019-09-08 13:27:11', '2019-09-08 13:27:11', '2020-09-08 19:57:11'),
('b3997942dedd09894835b12e9f46756c8fae108f266e36220fbf8990a575eaafd96703a6b724c877', 193, 2, NULL, '[]', 1, '2020-03-08 11:49:13', '2020-03-08 11:49:13', '2021-03-08 18:19:13'),
('b3f4e5471c3374e0b4126cd135f857c291f2899ef047e29102cc7201507803b6442633f0dc7f7ff6', 121, 2, NULL, '[]', 0, '2019-06-20 13:36:28', '2019-06-20 13:36:28', '2020-06-20 20:06:28'),
('b420af2cc04966fa842434da9de5e0e4e0c2261ab931c0cadc17048e935b773cc64ce684967998a8', 178, 2, NULL, '[]', 0, '2019-09-08 10:34:49', '2019-09-08 10:34:49', '2020-09-08 17:04:49'),
('b433b68363bc59555e171e429979229791f2ecccba734ed0fe82d777dc28ac6c1f24f8a83a5c380e', 260, 1, NULL, '[]', 1, '2020-04-14 19:24:37', '2020-04-14 19:24:37', '2021-04-15 01:24:37'),
('b43cd9590112a8f6dbc9582ac9105dc7129cae84f3257ca80b4129ce31efa724403266603bd784c2', 236, 1, NULL, '[]', 0, '2020-04-08 08:03:12', '2020-04-08 08:03:12', '2021-04-08 14:33:12'),
('b4d058e3d321b44c0a0abcee1da65dd4554133706b49bb58da9ed6b75efa8816ce62b97db7f3beba', 219, 1, NULL, '[]', 1, '2020-03-30 17:40:30', '2020-03-30 17:40:30', '2021-03-31 00:10:30'),
('b4df4d22b180b93c80aa1b909ee53d082e47769ec5c441d7382edb5a5cd0c35069920be7e1b8e3ed', 259, 1, NULL, '[]', 0, '2021-07-05 09:46:40', '2021-07-05 09:46:40', '2022-07-05 15:46:40'),
('b4f365105ea75f243b4af196b3dc9f38339c9849ddf2b4b8691b496ea6af1a5434d17697ee59e92e', 266, 1, NULL, '[]', 0, '2020-04-14 15:50:50', '2020-04-14 15:50:50', '2021-04-14 21:50:50'),
('b4fa358b0cc01d52177d853fd38ef5c10da99cef861b376583a2a6ff85a0474d5e9812d221627a95', 143, 1, NULL, '[]', 0, '2019-06-20 11:21:50', '2019-06-20 11:21:50', '2020-06-20 11:21:50'),
('b4feb3289a0550a3ad6a88016d2854e3b60c5098c608fa62e228931eacafedeee2c9e0551b017aee', 1, 1, NULL, '[]', 0, '2019-05-23 10:37:30', '2019-05-23 10:37:30', '2020-05-23 10:37:30'),
('b5222dbea30dbc271c877593d81e9bfacb51a726c42faa827dca860b965cd3a13f25e0a17f1784c8', 259, 1, NULL, '[]', 0, '2020-04-16 11:40:55', '2020-04-16 11:40:55', '2021-04-16 17:40:55'),
('b5a5ecbb7f213b7262ef15e6a6211f3030e1d926a2034601930194809b68c6c254c1a91f631ebafa', 225, 1, NULL, '[]', 1, '2020-04-02 11:53:56', '2020-04-02 11:53:56', '2021-04-02 18:23:56'),
('b5c5fc8aff65e1dabc89858dd5e814d10bbdafcd133b56d8c6c291adb10ff28804ed5c1b1401b471', 112, 1, NULL, '[]', 1, '2020-01-25 09:10:08', '2020-01-25 09:10:08', '2021-01-25 15:40:08'),
('b5d6da0ec6e77752a12657b07d021928974d4d5bf0f6c6cd9bafa05ae5264179a139d10851e08fdd', 261, 1, NULL, '[]', 0, '2020-04-24 10:43:16', '2020-04-24 10:43:16', '2021-04-24 16:43:16'),
('b5e85f42f851eaab5f3faabed46ba86ae1d055b699145558ba7e5ced857d522e9d05bbd901977bac', 273, 1, NULL, '[]', 0, '2021-07-06 09:03:52', '2021-07-06 09:03:52', '2022-07-06 15:03:52'),
('b6a4a035b6e0c175af547284dd9a15fc5250e29c9a93093c852d5956153764742fef3b4b90b22b8d', 255, 1, NULL, '[]', 0, '2020-04-22 13:47:53', '2020-04-22 13:47:53', '2021-04-22 19:47:53'),
('b7346b66d5f3c3bf67d38846816986bf1339f0b97ba81303f7edd8dab00a8e2f5b466d64e977fa19', 243, 1, NULL, '[]', 1, '2020-04-07 12:51:19', '2020-04-07 12:51:19', '2021-04-07 19:21:19'),
('b781bb75a61b0315070462c0058d5eb26ac62d02e51418f349cac694021887c345ae172c398d7072', 274, 1, NULL, '[]', 0, '2021-07-06 10:20:42', '2021-07-06 10:20:42', '2022-07-06 16:20:42'),
('b83edf7e430a9b55ff7632903973fc10d503de9e06842281e3ffce01f54b8fdd129f3827e2adf509', 1, 1, NULL, '[]', 0, '2019-05-29 21:26:31', '2019-05-29 21:26:31', '2020-05-29 21:26:31'),
('b874f43a36e049f19791dbb416b8e8995e69891f1951c38a036434a5a333990be18e1120ad6989a7', 255, 1, NULL, '[]', 0, '2020-04-10 17:17:44', '2020-04-10 17:17:44', '2021-04-10 23:47:44'),
('b93e9cea9b9b854db57d9d200f83b68feba39689232060d119bcc96b71fae27d771693d6e6fa9929', 1, 1, NULL, '[]', 0, '2019-06-17 05:48:31', '2019-06-17 05:48:31', '2020-06-17 05:48:31'),
('b948cfe6ea5d648a9afd8af19393bd3d1e38056ee56c107bb6e6b341f85946dffafae8807dc285c4', 220, 1, NULL, '[]', 1, '2020-04-05 09:46:51', '2020-04-05 09:46:51', '2021-04-05 16:16:51'),
('b97481486cc160ff03852fca0d6f963e21fa1a92db94c8958a14903c59050506ec87db8eac11a0bc', 178, 2, NULL, '[]', 0, '2019-09-19 12:32:56', '2019-09-19 12:32:56', '2020-09-19 19:02:56'),
('b9917b182c8d12ff99bd7b0a26b7f11ec72097da76b3dd03d3b77fb5ead6477ea62dd84bb75dea3e', 178, 2, NULL, '[]', 0, '2019-09-04 13:15:49', '2019-09-04 13:15:49', '2020-09-04 19:45:49'),
('b9b845324b5f23b170b0457cd13d2e9e1ca0552c158b4c297a410f8e4aa008a70cf96998f6f2de9c', 242, 1, NULL, '[]', 0, '2020-04-07 12:36:36', '2020-04-07 12:36:36', '2021-04-07 19:06:36'),
('ba31ff4108a0080727fa0ffbc8adb0d9cbbebad393ac300f94657051b036acaf9b6b3810888b7722', 178, 2, NULL, '[]', 0, '2019-06-24 13:25:52', '2019-06-24 13:25:52', '2020-06-24 19:55:52'),
('ba3534fae2689b6b973d637d3d8cdc49e024b98f8481350ba8a336c87de0deea9e270d43d3fbc58b', 208, 1, NULL, '[]', 0, '2020-03-09 06:57:34', '2020-03-09 06:57:34', '2021-03-09 13:27:34'),
('ba6a08926e059f61aa81fc3a5a2b3d52a62235ea1b33316f9a3606e1ad88cfd62125ad67c73ea50b', 178, 2, NULL, '[]', 0, '2019-08-10 08:18:02', '2019-08-10 08:18:02', '2020-08-10 14:48:02'),
('ba6b6ebdc07a80b4a016f5e012bc47a61e4d138f92071473e304b0748e6a121d4d408bb770e748be', 7, 1, NULL, '[]', 1, '2019-02-02 01:44:25', '2019-02-02 01:44:25', '2020-02-02 07:44:25'),
('bad55420cd1c431ac69d5cd2de4882c87ab6946936a539313073044bafc074b8126e0a5c303efbd6', 1, 1, NULL, '[]', 0, '2019-11-25 04:45:36', '2019-11-25 04:45:36', '2020-11-25 11:15:36'),
('bae14e5d8539ca061691338159fe544f7e69af1682a36ed67dbd18877f1927779957bb9fcd24b411', 151, 2, NULL, '[]', 0, '2019-06-22 08:23:52', '2019-06-22 08:23:52', '2020-06-22 14:53:52'),
('bb435abe5cf09c00fe9814200f6db2a38cfff512b0430f004ac9bc236ab8740122fa658663ab8db2', 178, 2, NULL, '[]', 0, '2019-06-24 10:37:13', '2019-06-24 10:37:13', '2020-06-24 17:07:13'),
('bb64bf1a906d8b8f0d3ab77325cd286afc21145d8372981746918a0fab3840e53ebf654c80b7b529', 1, 1, NULL, '[]', 0, '2019-05-17 23:55:56', '2019-05-17 23:55:56', '2020-05-18 05:55:56'),
('bc4f6c096e6e75d40ccaed6896b413efb789605a40711555b829b084e3090bbcc60eb23bb80a5fa5', 225, 1, NULL, '[]', 0, '2020-04-23 18:14:01', '2020-04-23 18:14:01', '2021-04-24 00:14:01'),
('bd880bf9eb258b3165d53d2611f124c2e56f142c0b9a93b4540b446d7ea08c50d35919f60f718cb3', 102, 1, NULL, '[]', 0, '2019-04-25 10:12:15', '2019-04-25 10:12:15', '2020-04-25 10:12:15'),
('bd8e3d5aa8972df253274e3e737f2146c90b14965b1ae560413d38e359a9b4922a4ca895f6b87aa5', 127, 2, NULL, '[]', 0, '2019-06-04 02:18:42', '2019-06-04 02:18:42', '2020-06-04 02:18:42'),
('bd93146a5ee80852e19469e4ae858bb7f63cbd077a0bd218a30768696e98102b3ef5094e0f8511ea', 178, 2, NULL, '[]', 0, '2020-03-10 06:02:32', '2020-03-10 06:02:32', '2021-03-10 12:32:32'),
('bd93befa93c7153fc9fe4cfe743af27eb8c8a04f0d2d424959a49d2085abee3e260f6ec832176f16', 115, 1, NULL, '[]', 1, '2019-05-27 10:11:59', '2019-05-27 10:11:59', '2020-05-27 10:11:59'),
('be0ff9f705f9529f04a321f462dcf5e92728842d8b5d3fbbb2f03fbf40b321a925db5c82d2e22d0e', 261, 1, NULL, '[]', 0, '2020-04-22 12:08:58', '2020-04-22 12:08:58', '2021-04-22 18:08:58'),
('be3d02788b986d4ff50064422611e977936f764dccd9169b0ae33e477deaec2ea36403722dbb1f9e', 112, 1, NULL, '[]', 0, '2019-05-30 06:37:21', '2019-05-30 06:37:21', '2020-05-30 06:37:21'),
('be8eabea2d7e1aa5163da2849638a772a532ce9a393fe996c9e635bdfd66894838f8fbd30e2f6a8d', 178, 2, NULL, '[]', 0, '2019-09-04 13:17:20', '2019-09-04 13:17:20', '2020-09-04 19:47:20'),
('bebd69aaef0e6e4864a1341ad77e0fd3674023115f875b15da308bd59510819713812152b43f9798', 237, 1, NULL, '[]', 0, '2020-04-07 03:22:39', '2020-04-07 03:22:39', '2021-04-07 09:52:39'),
('bed959de8d18b27b5c319cc2c9142a21da7626cb0eebdfee71747c3fe0a4c68367618acffb8b632e', 121, 2, NULL, '[]', 0, '2019-06-19 14:01:28', '2019-06-19 14:01:28', '2020-06-19 14:01:28'),
('bef0dc11041f7d3749978e10800a5359e2a9fc51cc88e8eec7b6028c672951e897e035fea9a3e354', 172, 1, NULL, '[]', 1, '2019-06-23 13:30:02', '2019-06-23 13:30:02', '2020-06-23 20:00:02'),
('bf5b46c3e982b727be2737cb44737f87ca1e55a612f35858ec05ad1b9f9e618b0617ea7f02a1c830', 211, 1, NULL, '[]', 0, '2020-02-12 06:25:30', '2020-02-12 06:25:30', '2021-02-12 12:55:30'),
('bf9fc4d240a179c92fc4bb26baa900c78b102b35c193b572907c4739d151a6bc182810947f023b8a', 214, 1, NULL, '[]', 1, '2020-04-05 04:55:55', '2020-04-05 04:55:55', '2021-04-05 11:25:55'),
('bfc5ba7de1503d7316454fbc67264ed8386ec849d3a609082b686e58ed8f6a864d5dee193d2fd4b0', 2, 1, NULL, '[]', 0, '2019-01-20 05:37:55', '2019-01-20 05:37:55', '2020-01-20 11:37:55'),
('c003295c86b9d8bd011c3cf7b10cba0f4c1b05a3d8865a02f8150750c125066027cf6ef90fcf878a', 145, 1, NULL, '[]', 1, '2019-06-20 13:07:24', '2019-06-20 13:07:24', '2020-06-20 19:37:24'),
('c00dfc7dec95631a99201c7a77ae3892f79843493b47dde43079e6e7c9690b774eba3c3b33a34e88', 124, 2, NULL, '[]', 0, '2020-03-11 10:15:17', '2020-03-11 10:15:17', '2021-03-11 16:45:17'),
('c051cfb1b3dfedd552867eb442143e1f557371b37ad2e4acd59f2d6c7a4ab38da7031c93f615ef5c', 124, 2, NULL, '[]', 1, '2019-06-19 10:28:20', '2019-06-19 10:28:20', '2020-06-19 10:28:20'),
('c0ebf6c7b3aa0f491920a24f83c831ae318e27e9c61cfd7a74ea9cd9b957e61d3af376883c82de0f', 208, 1, NULL, '[]', 0, '2019-12-28 10:37:36', '2019-12-28 10:37:36', '2020-12-28 17:07:36'),
('c2239cb1ebf474c25bba8d865f80c79311055860a91883ed34c3dc37356dfac9c8c9be57a24cee23', 178, 2, NULL, '[]', 1, '2020-03-08 11:39:12', '2020-03-08 11:39:12', '2021-03-08 18:09:12'),
('c25c56458efdcca7039df809fc939ce0e275beaa89e44fa5d4e081bd2762a42587ce298e377fe677', 222, 1, NULL, '[]', 0, '2020-04-07 09:01:03', '2020-04-07 09:01:03', '2021-04-07 15:31:03'),
('c2bfb51804592345ce72efe96b91aab3729d81ca35b86b1670acd1f38d4f5c26d048ca90eb876143', 118, 2, NULL, '[]', 1, '2019-06-20 11:31:10', '2019-06-20 11:31:10', '2020-06-20 11:31:10'),
('c3b2ca66f9ff6d54bb933b0e7aae016886b960f641218a4af653634e5ba616484f6b87de9cda94cc', 7, 1, NULL, '[]', 0, '2019-02-02 00:54:36', '2019-02-02 00:54:36', '2020-02-02 06:54:36'),
('c3de66a252fa1fd9914bbe8aa981a4eed1b60d41fb07dd77c7dad1fb8c0eac9c6024e70cf94a1f80', 121, 2, NULL, '[]', 1, '2019-06-21 18:27:16', '2019-06-21 18:27:16', '2020-06-22 00:57:16'),
('c47f86c7a5559734b366dcccfe6d203b3cea7d20c9fece2400c2835f679169ab4d9df11415b41537', 125, 2, NULL, '[]', 1, '2019-06-24 10:22:15', '2019-06-24 10:22:15', '2020-06-24 16:52:15'),
('c49ac9cf67909172df4099429bc0cbea628c62a1678bc92aa747bfb03f428ec4ab5a7bb8c06bb91c', 125, 1, NULL, '[]', 1, '2019-06-22 07:46:27', '2019-06-22 07:46:27', '2020-06-22 14:16:27'),
('c53b06ee461e77ce915678ef619488215482ef3b06e11313a7749494e0cc39e4ea19f57d242b9a8d', 191, 1, NULL, '[]', 0, '2019-07-27 09:54:47', '2019-07-27 09:54:47', '2020-07-27 16:24:47'),
('c60223eb46f8919a3d0d3c95a28c860383915ccc63a527f2dc941748a03b520e502c6537c3f04c5d', 220, 1, NULL, '[]', 0, '2020-04-05 06:55:28', '2020-04-05 06:55:28', '2021-04-05 13:25:28'),
('c68f4332f55ce37c8f22606a17fed6c2d98adb5106088ab140a61dd39171d0e3e035a12ebc71375b', 211, 1, NULL, '[]', 0, '2020-02-12 06:42:04', '2020-02-12 06:42:04', '2021-02-12 13:12:04'),
('c78cb227536a269a41f208df85420360248b2bc2aea6a1379ab940db262715f5e5dffb03ac601a8f', 187, 1, NULL, '[]', 0, '2019-07-10 05:54:34', '2019-07-10 05:54:34', '2020-07-10 12:24:34'),
('c79613ab3b960907fe2bef042c672c83bc4d171ee468a7b6b6dec2fb327f414acd3d5baeb13cc23a', 136, 2, NULL, '[]', 0, '2019-06-20 05:25:55', '2019-06-20 05:25:55', '2020-06-20 05:25:55'),
('c7b2c18053845425e5a2647b5f1183da557413bed33fb69682b6820face45fc1d53e2da7fb4e08b8', 127, 2, NULL, '[]', 1, '2019-08-20 06:04:41', '2019-08-20 06:04:41', '2020-08-20 12:34:41'),
('c8f7367f2722e5f49308471d9fe2a72a686e5b89be5b506475768773b0be5866f1d53a46f0915286', 1, 1, NULL, '[]', 0, '2019-05-23 07:09:22', '2019-05-23 07:09:22', '2020-05-23 07:09:22'),
('c92366032ad6b9aa147e6aade51b904a680f61f9c40961b4c043f5e83f84b5cf8153c29edb746a4b', 118, 2, NULL, '[]', 1, '2019-06-19 11:46:03', '2019-06-19 11:46:03', '2020-06-19 11:46:03'),
('c97c7235ea5af510bee8f5fa50b975e384b52a67f694eb263b5a9c150c71e9eeafbb10fe7d0c01ed', 106, 1, NULL, '[]', 1, '2019-05-07 11:17:59', '2019-05-07 11:17:59', '2020-05-07 11:17:59'),
('c9aba4647e196ddd4ca80db1fbad1ce834c762bd5bc6fbb7318eacdbb01ac29443fc978b3b4f80c1', 247, 1, NULL, '[]', 0, '2020-04-07 13:35:20', '2020-04-07 13:35:20', '2021-04-07 20:05:20'),
('ca353b5beed9d81629dd7bbf41f5fef71a24db96f69f21aa4325063108bfd951176cb633d573cd4c', 178, 2, NULL, '[]', 1, '2019-09-19 09:14:43', '2019-09-19 09:14:43', '2020-09-19 15:44:43'),
('ca3e693d7fc397944299d543717a033f7ae8cb174142c8a9a751ca77c46758461e0fb9906bcb6a00', 112, 1, NULL, '[]', 1, '2019-06-01 08:54:15', '2019-06-01 08:54:15', '2020-06-01 08:54:15'),
('ca6523ceb8a2a6f47ac84121c17626ed6db990d8991a3f6109e18ab4032aa2863b3cd4b4ee421a9d', 171, 1, NULL, '[]', 1, '2019-06-23 13:28:13', '2019-06-23 13:28:13', '2020-06-23 19:58:13'),
('cae8329071adde748abffcda39598d93f218c23b9bbedd1563ceba391c7c59421878f3158b0442dd', 121, 2, NULL, '[]', 1, '2019-06-18 12:41:16', '2019-06-18 12:41:16', '2020-06-18 12:41:16'),
('caf0cfef80fe5e187630301a63213bd64eec688908f1747fe0f1a2ddef605f1e9d7dbbbc57a2bc92', 255, 1, NULL, '[]', 0, '2020-04-22 13:54:07', '2020-04-22 13:54:07', '2021-04-22 19:54:07'),
('cb16c2a98e4ffef0226d94dce45a04c556f832c3823d09ce1079d6abc69243dd8a5975a9f82437ce', 1, 1, NULL, '[]', 1, '2019-05-23 10:37:31', '2019-05-23 10:37:31', '2020-05-23 10:37:31'),
('cb3d5d61f1e4ad01eaadafac290e7ce0037cd7049a60a45feb2791192c31dbca6409241efdf1268a', 170, 1, NULL, '[]', 1, '2019-06-23 13:26:40', '2019-06-23 13:26:40', '2020-06-23 19:56:40'),
('cb75ed5ed067943e954a4acf671774010208ce3f941b63d77161f760c7c4dd2bd7cb1ba5b3a4d366', 5, 1, NULL, '[]', 0, '2019-02-01 23:20:14', '2019-02-01 23:20:14', '2020-02-02 05:20:14'),
('cb90e3544bb38d7c52bc2e50a83bc8dd8e39dc9af401f4387fdba2b9a69c06586cfec71332dc32c2', 127, 2, NULL, '[]', 0, '2019-09-03 02:09:14', '2019-09-03 02:09:14', '2020-09-03 08:39:14'),
('cba00f1d1b62e55799d87a30af5e325d516551e6a8feea88dbdce9a9f7f1a75c9463b086bdfa2856', 118, 2, NULL, '[]', 1, '2019-05-30 08:13:39', '2019-05-30 08:13:39', '2020-05-30 08:13:39'),
('cbc2f52f5beaffbce9cf4c86ee5e17405b067bbc72e4e9c8dd962e481d8cf28ae08737f622fe4d59', 190, 1, NULL, '[]', 0, '2019-07-18 06:09:50', '2019-07-18 06:09:50', '2020-07-18 12:39:50'),
('cc1de8af70c9d1e7cc784c6fc142b191756c5c829f3760346f4420353aa5d158baf0189a7282c4ee', 6, 1, NULL, '[]', 0, '2019-02-01 23:35:21', '2019-02-01 23:35:21', '2020-02-02 05:35:21'),
('cc972fafaa2dc2ad679582338f57f6de4a615bdd16db02a1ac61bb9cac9430003244d99f29067eb1', 273, 1, NULL, '[]', 0, '2021-07-02 20:52:07', '2021-07-02 20:52:07', '2022-07-03 02:52:07'),
('ccfdbf37df36d13612aa11b0621320ffa10e4d36090a850c169a731f3ee702c59833742e2fd8a842', 208, 1, NULL, '[]', 1, '2020-03-09 06:05:46', '2020-03-09 06:05:46', '2021-03-09 12:35:46'),
('cd6de3b98e94b5328b58873505ca7056b00b100ffaac908a06fba1ba35310894ca4af25ab994aa19', 126, 2, NULL, '[]', 1, '2019-06-02 09:46:56', '2019-06-02 09:46:56', '2020-06-02 09:46:56'),
('cd95ff4a8b99a4bdd5c17aba025b0232a5eb68156e7b30bda2b6c78ee9e753b08c615ff7b28b8c46', 273, 1, NULL, '[]', 1, '2021-07-06 09:05:29', '2021-07-06 09:05:29', '2022-07-06 15:05:29'),
('ce3106d65bc4b82167cb3e14daf552caf6ba90afe51b516e68b77241a9005248c3e715403e9a1dfc', 118, 2, NULL, '[]', 1, '2019-05-29 11:06:02', '2019-05-29 11:06:02', '2020-05-29 11:06:02'),
('ce7c8dc1dfd1855b365e40ddd4c6adb86165d5eb8668cc6ff1f46928f33e1fa44db97fd9eb691663', 140, 1, NULL, '[]', 0, '2019-06-20 07:22:26', '2019-06-20 07:22:26', '2020-06-20 07:22:26'),
('ce804be07dd8202e69fc90ca3043ec2d2f83ac842bafc3676a3af203c7e014970d9480bbb73c6711', 208, 1, NULL, '[]', 0, '2020-03-11 06:34:11', '2020-03-11 06:34:11', '2021-03-11 13:04:11'),
('ceb421b6aa68297eaeeffb63d7d65682ba182e13a902db5cb71f031619e00d9a36d25b58ee131435', 7, 1, NULL, '[]', 0, '2019-05-08 10:10:33', '2019-05-08 10:10:33', '2020-05-08 10:10:33'),
('cec8f9acfea76ebaeb7ba532f7fa6210c39b87589ed49b88ca8a1718ac6c7541ca4c1cd1dd4869d7', 125, 1, NULL, '[]', 0, '2019-06-22 07:48:42', '2019-06-22 07:48:42', '2020-06-22 14:18:42'),
('cfd56a101b3c9f360417d0930e907f0b4792b7be40a2074b86fcc1d41377f1443f0e1dfef5539d9c', 185, 1, NULL, '[]', 0, '2019-07-08 07:59:06', '2019-07-08 07:59:06', '2020-07-08 14:29:06'),
('d072fe23ed3a5e3c44fc985c71f3e08fb401eea8a9b64d18dc56a9da381336c83dedd51f5b2e5454', 257, 1, NULL, '[]', 1, '2020-04-10 11:50:59', '2020-04-10 11:50:59', '2021-04-10 18:20:59'),
('d09d7da9ed82e9738c6a254c6a14b87f5bd582f0095b628324e6e9249e2c08d213c2b90f0e53aec6', 211, 1, NULL, '[]', 1, '2020-02-12 06:37:41', '2020-02-12 06:37:41', '2021-02-12 13:07:41'),
('d0a968e08fcf09d8d1521181dee54829f171238e56ff57459a403541aa68d355b90c73475a17c127', 255, 1, NULL, '[]', 0, '2020-04-12 17:42:26', '2020-04-12 17:42:26', '2021-04-12 23:42:26'),
('d0ade50c9d11e51b5ad04c85cde8db93b8123fc74f3bdc848ca9db345147c26bc081b521edda6dff', 220, 1, NULL, '[]', 0, '2020-04-05 09:58:22', '2020-04-05 09:58:22', '2021-04-05 16:28:22'),
('d0b9f27f6c3f3645ecde3d173004b3b0aa6898b1a02adc630f6b644bb752b4596755792a78cbdc1f', 112, 1, NULL, '[]', 0, '2019-09-04 11:01:16', '2019-09-04 11:01:16', '2020-09-04 17:31:16'),
('d0e68e64ae5863e6262ccc7c45c507cd56712ad9a9ad07da32df87b3f8745d131725316668c1abd9', 274, 1, NULL, '[]', 0, '2021-07-06 09:55:52', '2021-07-06 09:55:52', '2022-07-06 15:55:52'),
('d18b2d3acf96a60e3e4a1ed770f498b6e154e745a6d9cf5c8a2402856ec5f3a311ee01895c9ad279', 198, 1, NULL, '[]', 0, '2019-09-19 11:08:39', '2019-09-19 11:08:39', '2020-09-19 17:38:39'),
('d1c2c3de531e6472531748a456caf468b579f8e2cc532d38af8c8892b486b1976d98926288d4f0ca', 259, 1, NULL, '[]', 1, '2020-04-11 10:14:53', '2020-04-11 10:14:53', '2021-04-11 16:44:53'),
('d2e9028f3338937597e3bca646877e1d135317a6863a3cf03d438ad7b40a5f493b4ea82344b34023', 274, 1, NULL, '[]', 0, '2021-07-06 11:46:57', '2021-07-06 11:46:57', '2022-07-06 17:46:57'),
('d37da526a043c724c5e891a1c5d9271f828e10d1471ee60b417257f64d3d58b50af4cb50098f1c33', 222, 1, NULL, '[]', 0, '2020-04-07 05:42:20', '2020-04-07 05:42:20', '2021-04-07 12:12:20'),
('d39553de480f9044639875b70dc68f345e5f32ff7d3b302e979e341416e6d1b2f10b6ed66c8424af', 268, 1, NULL, '[]', 0, '2020-04-16 09:45:38', '2020-04-16 09:45:38', '2021-04-16 15:45:38'),
('d39ea8109a5a96de3d7e19b3c1f7be9781e1593b5892c86ac91013067e09e61fc6a04ea5faf60879', 208, 1, NULL, '[]', 1, '2019-12-26 11:33:18', '2019-12-26 11:33:18', '2020-12-26 18:03:18'),
('d3bfc7f4eba8341b9a06bcfea343a81c2022a9c351bee8779b08b27b0316f9dafcf955b72833417c', 237, 1, NULL, '[]', 0, '2020-04-06 18:12:17', '2020-04-06 18:12:17', '2021-04-07 00:42:17'),
('d3c374f5fe50b0a37e83d7d1fb058cf79adfcc01a9eba45cb660615700be2e15eeca170a740ab469', 1, 1, NULL, '[]', 0, '2019-11-18 10:55:41', '2019-11-18 10:55:41', '2020-11-18 17:25:41'),
('d3e9a5ef4948c698ebd66bc88580e9fb78f5fe4f794dc76424604eea75e35f9f7887063c0418ee9c', 119, 1, NULL, '[]', 0, '2019-06-01 06:29:42', '2019-06-01 06:29:42', '2020-06-01 06:29:42'),
('d3eee00f7f9a7f1725254c96658b7e4d2cd2a1b68b0cddc0ddede3debb0ecc8ef40c13a22effd676', 124, 2, NULL, '[]', 0, '2019-10-08 13:53:18', '2019-10-08 13:53:18', '2020-10-08 20:23:18'),
('d3f84f19d4a5dd3e6e3b3080ae24e6db841b0a85e381814fe93408fae075770e7efe5a2641de636c', 124, 2, NULL, '[]', 0, '2019-06-23 07:07:29', '2019-06-23 07:07:29', '2020-06-23 13:37:29'),
('d47996e8ac2c7177d97727169d3f27f617854929d6f28752ca81da0961615b43453ef15f40e1047e', 178, 2, NULL, '[]', 0, '2019-07-09 17:40:48', '2019-07-09 17:40:48', '2020-07-10 00:10:48'),
('d49c384624a93c9a071f6e5e9f631a1e3e789116fbe33290422dc9de7017e98b01527d266bc352b4', 257, 1, NULL, '[]', 1, '2020-04-15 16:01:03', '2020-04-15 16:01:03', '2021-04-15 22:01:03'),
('d509640478b30c0768951a64f460a8f5b9d323582406f614aa0e4ff0cc5a8f27599a212047589771', 259, 1, NULL, '[]', 0, '2021-07-05 09:34:32', '2021-07-05 09:34:32', '2022-07-05 15:34:32'),
('d521a7aa4867f1b2bc2eb9e7245238573d8fd18f33dda219190a8aa8f2624869eaec45304a32646a', 125, 2, NULL, '[]', 0, '2019-06-02 10:21:25', '2019-06-02 10:21:25', '2020-06-02 10:21:25'),
('d57e8e91b97f4c164f6c448f90aecaf3892f4d8856f7e9945f6a135477da97c16e8e05891c3fe350', 212, 2, NULL, '[]', 0, '2020-03-15 11:24:48', '2020-03-15 11:24:48', '2021-03-15 17:54:48'),
('d5c66a2cfc544d3aa6ccfe176388c9609f6b858d682d4018197730318d52a01188331224bfac2f6b', 214, 1, NULL, '[]', 1, '2020-04-05 04:53:57', '2020-04-05 04:53:57', '2021-04-05 11:23:57'),
('d608eba7bf7418b8a9ba06a682d35442e9b6c52449f8f1afba19be3913f6ad438c156ed56efbcf37', 1, 1, NULL, '[]', 0, '2019-05-29 10:20:41', '2019-05-29 10:20:41', '2020-05-29 10:20:41'),
('d6201b98f979463ca94db967f619691f9d6411d392ce143b662dae66f5d502fee16827662e4a7a9e', 178, 2, NULL, '[]', 0, '2019-09-07 13:10:44', '2019-09-07 13:10:44', '2020-09-07 19:40:44'),
('d625a5a41c01fab0f029967a0aa4acb8e6447216722d1c501bf0156f1f2c16bf8301679ed4ba1a06', 273, 1, NULL, '[]', 0, '2021-07-07 07:56:01', '2021-07-07 07:56:01', '2022-07-07 13:56:01'),
('d68ba8df1adece1bdf30fa68b6ed4871e90a0520e71819c4f2395d9e3f226043750a1ee13dc231c7', 178, 2, NULL, '[]', 0, '2019-09-04 13:02:58', '2019-09-04 13:02:58', '2020-09-04 19:32:58'),
('d68e21bad9bef3b3a0e407be0d1bf84a2756a1df8ec37dfc22ad7b707a0b891932cc420523670e08', 230, 1, NULL, '[]', 0, '2020-04-04 08:54:03', '2020-04-04 08:54:03', '2021-04-04 15:24:03'),
('d717c825fbc7eac2473592085072bdc86fde178e48a964baacf5dce8bf33ad8c8db083270e208e2b', 7, 1, NULL, '[]', 0, '2019-02-02 00:55:26', '2019-02-02 00:55:26', '2020-02-02 06:55:26'),
('d7b9c8e4f4a1849cc605b706119eeace73ab6dbe379913f270299a080aa0383e502738d3543ea8d5', 112, 1, NULL, '[]', 0, '2020-02-20 11:13:47', '2020-02-20 11:13:47', '2021-02-20 17:43:47'),
('d7d5da68a4d2e4df57c590f30b9b71770642dcf061025cfbd824e3a56c0468cedda31e66319b77bd', 269, 1, NULL, '[]', 1, '2020-04-18 09:34:13', '2020-04-18 09:34:13', '2021-04-18 15:34:13'),
('d815b1414b024da5b2b03b5cfb765ab37e8f95197d6bae4ee24a845290dad1e43016f8ffa1e5bf3b', 273, 1, NULL, '[]', 0, '2021-07-03 01:13:48', '2021-07-03 01:13:48', '2022-07-03 07:13:48'),
('d881e49bbd74fe16531cd289116ebc9f2e62d17a2abd0487015f539087142aa944c0b7e8c634bc29', 259, 1, NULL, '[]', 0, '2020-04-11 20:27:45', '2020-04-11 20:27:45', '2021-04-12 02:57:45'),
('d8b43208afd61c8af5a5ca00a8132ab1fba126a3a47f1644527e249c1c59f597e8be065f0149a70a', 210, 1, NULL, '[]', 0, '2020-01-05 06:29:02', '2020-01-05 06:29:02', '2021-01-05 12:59:02'),
('d8f549cd8de3ad3ec9d651bcf6dde584da3c5bbfbf679bca4d9d2d6c1c208abcd2a4f1997506126f', 274, 1, NULL, '[]', 0, '2021-07-06 09:48:10', '2021-07-06 09:48:10', '2022-07-06 15:48:10'),
('d8fbe9051a37d0819d38cb01d78b12561ab5abf26c929dcdb151b54cd50b8cc38dd11912ec8ece66', 214, 1, NULL, '[]', 1, '2020-04-05 14:02:53', '2020-04-05 14:02:53', '2021-04-05 20:32:53'),
('d9349e3382fb4be4b27bc63b9981677d7d92b44d64bea657186068475811f3b2ad2324019c1088f4', 262, 1, NULL, '[]', 1, '2020-04-20 09:11:51', '2020-04-20 09:11:51', '2021-04-20 15:11:51'),
('d9f25860ddd20466ff1f9de8b71f7980251882008e14a2877ae4c4663381cbd6a247c0723b8f3bd1', 121, 2, NULL, '[]', 0, '2019-06-02 07:35:06', '2019-06-02 07:35:06', '2020-06-02 07:35:06'),
('da0a886529d1cdf3135e09010b07675e87527095da766face33317a0fdf0c38b3c7ad3d4511274d9', 10, 1, NULL, '[]', 0, '2019-02-02 01:22:24', '2019-02-02 01:22:24', '2020-02-02 07:22:24'),
('da18bc929cb0a2f68cf569cd85a51d5a3753cef03d2db4a8d2d637f0cb9c65159ef4ee32c151ad99', 241, 1, NULL, '[]', 0, '2020-04-07 12:32:45', '2020-04-07 12:32:45', '2021-04-07 19:02:45'),
('da51871bd1182602dd5deea64375e9457ae78b5d0a5c5bc0b0d23423d189988bc1850d6e81fabb2f', 147, 2, NULL, '[]', 0, '2019-06-22 06:05:12', '2019-06-22 06:05:12', '2020-06-22 12:35:12'),
('da675fe78555898b5d0a410a37e2bbbca8e76cd59ba3d63af884ce454f3b1777677ee2fb0b3467f4', 124, 2, NULL, '[]', 1, '2019-09-26 07:08:20', '2019-09-26 07:08:20', '2020-09-26 13:38:20'),
('daaff46fd523f2b8cfa35d9102dfc0033adecd96e547d825918cba2d4c4557fb39106e3b08b46338', 274, 1, NULL, '[]', 0, '2021-07-09 13:55:11', '2021-07-09 13:55:11', '2022-07-09 19:55:11'),
('dadafd3da077e12b42d25f76120e59d896b3bc3d894ff96d7f082441e3fb3582b426468410ca8bd8', 219, 1, NULL, '[]', 1, '2020-03-31 15:45:52', '2020-03-31 15:45:52', '2021-03-31 22:15:52'),
('dafd110f9d4fb317bcb7ffc78dcd1984693fabd7a676fee67c2abb912c0ecc847be1a67b1e21c9c9', 1, 1, NULL, '[]', 0, '2020-02-10 08:29:19', '2020-02-10 08:29:19', '2021-02-10 14:59:19'),
('db2b32765cc4e185864f71bace7d9d63c01ac2f2d5a5892f20182bff3ff41c7ac32d075172550f02', 220, 1, NULL, '[]', 1, '2020-04-05 11:27:34', '2020-04-05 11:27:34', '2021-04-05 17:57:34'),
('db7eb9c04051921322cf891245a1185d7ec6bcc4de092fe0b5eccbb95f2f064ea6eab03b55fd6d1c', 263, 1, NULL, '[]', 1, '2020-04-12 07:24:55', '2020-04-12 07:24:55', '2021-04-12 13:24:55'),
('dc1554f9647c16d8599f8357b5b1f95690640a7b39603cd53b9bde63b719dc2bcc4d234cac2e6714', 267, 1, NULL, '[]', 0, '2020-04-14 19:28:16', '2020-04-14 19:28:16', '2021-04-15 01:28:16'),
('dcce253763481aaad31061d672fe6241809c6b953b93ba4e24d5e746421520b3419f488174c34fc5', 197, 2, NULL, '[]', 0, '2019-09-19 10:42:06', '2019-09-19 10:42:06', '2020-09-19 17:12:06'),
('dcfdca9ae9c765bb354f55fd78805c983384e4c3b478febbd85ae04b084a297f675fde252c71ffab', 225, 1, NULL, '[]', 0, '2021-07-02 08:04:22', '2021-07-02 08:04:22', '2022-07-02 14:04:22'),
('dd02a4013c1e41e9eacc071a4ffea3f39a3e987917534fc950393f15a4c8c4f3ad4c85697c05ebf9', 1, 1, NULL, '[]', 0, '2019-05-23 07:44:11', '2019-05-23 07:44:11', '2020-05-23 07:44:11'),
('dd2183bb497a9576c1b5fa95209fe4694d0ff4ee56c54642b4d1bab6246b5c5399ed0da7feb9af70', 1, 1, NULL, '[]', 0, '2019-05-28 10:40:49', '2019-05-28 10:40:49', '2020-05-28 10:40:49'),
('dd5b5f8e89f541bd68e77642048db9cef0970cd1557a68e2201279c3adc4c744cc46b49de678b0fa', 178, 2, NULL, '[]', 1, '2019-09-19 10:23:44', '2019-09-19 10:23:44', '2020-09-19 16:53:44'),
('dd7b22bbc968d6748f01faa566af1733f935d3b7fc19cc7cb26b55f25a630509176aedf962d6ce9e', 249, 1, NULL, '[]', 1, '2020-04-07 16:09:37', '2020-04-07 16:09:37', '2021-04-07 22:39:37'),
('dddeaa6d8bccb77acb41c8a566a5667aac85fa6ef4fc8c3d30fc8191cb8be47874b14ba31742cc37', 1, 1, NULL, '[]', 0, '2019-05-26 15:13:49', '2019-05-26 15:13:49', '2020-05-26 15:13:49'),
('dde8383d24cda25746ef1a73ac9a4ffe20a0aac8bb3ce87c8ac1201e969da6f064efc2d5c31a4bbe', 214, 1, NULL, '[]', 0, '2020-04-05 16:47:18', '2020-04-05 16:47:18', '2021-04-05 23:17:18'),
('de0bc840116b71a7c13021015bf212f056e297bce2cc7dcd68ec48cfb580942a839386c0128c1c1f', 129, 1, NULL, '[]', 0, '2019-06-16 11:58:33', '2019-06-16 11:58:33', '2020-06-16 11:58:33'),
('de860ce430db2e7b9e04445a785608c535ff36efaa83a66195d87e96f079c8358eb52030338e493f', 178, 2, NULL, '[]', 1, '2019-08-29 13:30:46', '2019-08-29 13:30:46', '2020-08-29 20:00:46'),
('df0924046376c23d3af99aef7df8f90e782026f133134babc17a69c11121222686033d512e926060', 116, 1, NULL, '[]', 0, '2019-05-27 10:18:09', '2019-05-27 10:18:09', '2020-05-27 10:18:09'),
('dfdb81cef8fa02d64c6b4054c6baf8b36d9245c8cbb2742031b1b2fef92b5b314ac9d5459ed0d3a5', 221, 1, NULL, '[]', 1, '2020-03-30 20:26:50', '2020-03-30 20:26:50', '2021-03-31 02:56:50'),
('dffade815a0ba899f75db3823cac0ab3aeb68840d6569a33b4a1a40ecc833865119d2cad04ca9c6b', 208, 1, NULL, '[]', 0, '2020-02-09 07:04:55', '2020-02-09 07:04:55', '2021-02-09 13:34:55'),
('e100fd2b68503de141b9d7b577ebb3226063c313dc378bc080df52bcd7dd81235208899c102c74a1', 121, 2, NULL, '[]', 0, '2019-06-20 13:37:32', '2019-06-20 13:37:32', '2020-06-20 20:07:32'),
('e140eca2902d553c2aeeccc2e3346159b853f59bcd885726abb511b0228b42650c30eff1682d35c6', 237, 1, NULL, '[]', 0, '2020-04-06 18:11:40', '2020-04-06 18:11:40', '2021-04-07 00:41:40'),
('e1749a5c9cd89cf0740fc561a5ccb8c89f277a04f35ae83e6b78c61d5b304c358d4ba3dc2ffa80c2', 208, 1, NULL, '[]', 1, '2020-02-25 07:01:42', '2020-02-25 07:01:42', '2021-02-25 13:31:42'),
('e1a54227481316d07aa3aa48339909b6c2367b15c9a0a253099fa56495bc9d9e4a3a568f5cbbb733', 176, 1, NULL, '[]', 0, '2019-06-23 13:58:00', '2019-06-23 13:58:00', '2020-06-23 20:28:00'),
('e233dd98bf9b950f74bd157948dbc2d10f985fac443d00b81c59617cd8b759f3360acd1ee99df2e9', 7, 1, NULL, '[]', 0, '2019-02-02 00:56:38', '2019-02-02 00:56:38', '2020-02-02 06:56:38'),
('e26be651645692149f82d2c5af4166b7e21e85ad10401305e12df37f357361211e6de59b028170cf', 273, 1, NULL, '[]', 0, '2021-07-09 16:31:24', '2021-07-09 16:31:24', '2022-07-09 22:31:24'),
('e2a42a51d3770f19ed1e70c78fb76086176773c9df2452efd09d5be1095d7fa238c8f591bd3cb3a6', 254, 1, NULL, '[]', 1, '2020-04-10 17:10:44', '2020-04-10 17:10:44', '2021-04-10 23:40:44'),
('e2cdf2905768586ee2afc43a86cc655cdcfdb143345e9be3c4e9e06139a2e75bbf6e52c54006b3fd', 166, 2, NULL, '[]', 1, '2019-09-07 05:22:05', '2019-09-07 05:22:05', '2020-09-07 11:52:05'),
('e35bb5b64141debaa14d2f1e8bdffa7bac58ba9f8ef33eb32afd9bb5119140b8bd0cc1386ec2b1b2', 178, 2, NULL, '[]', 0, '2019-08-29 12:41:33', '2019-08-29 12:41:33', '2020-08-29 19:11:33'),
('e36cb0742a780959d0989027163b3fd543d6afa2a360723fae480a191235c80a1c7f79cf5bfb2945', 255, 1, NULL, '[]', 0, '2020-04-10 12:19:07', '2020-04-10 12:19:07', '2021-04-10 18:49:07'),
('e398fec99dcb056692cae5de608c41b6be1d63a8b1303770aabc5dc1178e1d10027f259c59e4917c', 128, 1, NULL, '[]', 0, '2019-06-13 09:14:19', '2019-06-13 09:14:19', '2020-06-13 09:14:19'),
('e3ff689627a5b69a2817db5607cc15e65e929d2126e09f5c47535628c80e294e9788fc4d1d003926', 119, 1, NULL, '[]', 1, '2019-05-31 15:54:27', '2019-05-31 15:54:27', '2020-05-31 15:54:27'),
('e452f2fdc426371414ec0f11403f42ea4fd015c5c004efd71a324a00aaacaceb9270bc714b9e8b56', 261, 1, NULL, '[]', 0, '2020-05-02 09:47:32', '2020-05-02 09:47:32', '2021-05-02 15:47:32'),
('e47e7f99cc33f050216201ad5e629031d0e4c8425b13bf964a9b0d4099cb2a5b4d78e88592f45230', 1, 1, NULL, '[]', 0, '2019-05-29 10:52:32', '2019-05-29 10:52:32', '2020-05-29 10:52:32'),
('e4dbc524eba3835e4db05eba92825c7e655720b60db47f2a414449fa5a5cf08a26440a61c7f835a8', 254, 1, NULL, '[]', 1, '2020-04-10 16:55:57', '2020-04-10 16:55:57', '2021-04-10 23:25:57'),
('e4e8927327371aa2d74ef3d7482fa7c864b4c785a6633c50eeec58f2a26e63bd71dc418668b398f1', 121, 2, NULL, '[]', 0, '2019-06-02 07:23:47', '2019-06-02 07:23:47', '2020-06-02 07:23:47'),
('e53c750ef8723417e59626c0bf02a5f37346efd3b5efc6295d6e84a980b688422b635247cf169092', 130, 1, NULL, '[]', 0, '2019-06-19 04:47:02', '2019-06-19 04:47:02', '2020-06-19 04:47:02'),
('e5f84bc79aea35e33299e20d7234b114033fb7a3364b5f30ef453f49df68ae1f095a7201cf5b002c', 253, 1, NULL, '[]', 0, '2020-04-09 18:59:09', '2020-04-09 18:59:09', '2021-04-10 01:29:09'),
('e5f89ece057c1b85227baac49e1fe7ed737a6811cea96fa11b746979ef5397856928813fd943c7fd', 259, 1, NULL, '[]', 0, '2020-04-11 04:34:13', '2020-04-11 04:34:13', '2021-04-11 11:04:13'),
('e69094c1e77bba997966cbbee48d3290df45c945b1aa269a0c1f256bf3b8cf9941952c696d296138', 259, 1, NULL, '[]', 0, '2020-04-11 20:25:32', '2020-04-11 20:25:32', '2021-04-12 02:55:32'),
('e6bd2f418d9c1d9803b9fe284fd04ad5a5d0434e26625b1975bd506a476faa594aaf9c7c89223e16', 255, 1, NULL, '[]', 0, '2020-05-02 17:47:07', '2020-05-02 17:47:07', '2021-05-02 23:47:07'),
('e7100a232f5b1960b44bc7a1a1466ae675ea751061197fa20cfcdf07351adad5e48485bf0101c088', 259, 1, NULL, '[]', 1, '2020-04-16 10:52:30', '2020-04-16 10:52:30', '2021-04-16 16:52:30'),
('e773c7456b0584217600d79fcdfeff628e8b64847714c7d0d093a011b572f4c7e0ae8bd4ab1841e6', 1, 1, NULL, '[]', 1, '2019-06-01 08:12:49', '2019-06-01 08:12:49', '2020-06-01 08:12:49'),
('e7dd7e30af7551d1e49655ebacf68f578dcc5a2219f01876541b153a59520a7f30d4ab1fef29f5c0', 112, 1, NULL, '[]', 1, '2019-05-31 06:22:38', '2019-05-31 06:22:38', '2020-05-31 06:22:38'),
('e7e66de92d88a8a9de92ee8fb430738c5ff4ed54a6c2cf4f3fa61642d21ba4717c7ea1b82210ab0d', 9, 1, NULL, '[]', 0, '2019-02-02 01:22:08', '2019-02-02 01:22:08', '2020-02-02 07:22:08'),
('e8413aca11032e63ab78079bef38baa4710afbb434d838de8690fbdf9c428808b3da39886723e54b', 225, 1, NULL, '[]', 0, '2020-04-11 14:59:59', '2020-04-11 14:59:59', '2021-04-11 21:29:59'),
('e88882aba25820d35fad3e5612615fbd6d664c09db9c7f156bb6aa8c05d8a1d6e6e8efceb5732035', 139, 2, NULL, '[]', 0, '2019-09-18 10:46:20', '2019-09-18 10:46:20', '2020-09-18 17:16:20'),
('e888f6100eb0a7561c06d8a39f465c0e5d3ccbfe825b3c1d0f07b42eed8506e862b8b17807d38cf2', 256, 1, NULL, '[]', 0, '2020-04-10 10:25:02', '2020-04-10 10:25:02', '2021-04-10 16:55:02'),
('e91ef3d7ea245ab081acdf0b2ed93a61657dcaaaceaf0daaf9aabb5b2075ca1296a7d5305a5d33fb', 1, 1, NULL, '[]', 1, '2019-06-01 08:12:02', '2019-06-01 08:12:02', '2020-06-01 08:12:02'),
('e9465c511dd6ae92a9a729dd1f9d75e19adf2dfeca225f92db20932638a1e1c8c100fcaec6033a01', 106, 1, NULL, '[]', 0, '2020-03-18 08:27:12', '2020-03-18 08:27:12', '2021-03-18 14:57:12'),
('e9547bc4fcf8a3161918a5697df74760b3f216fec25edd6c5d1e8246df526881b5fb69f1d2f03a79', 206, 1, NULL, '[]', 0, '2019-12-21 11:30:30', '2019-12-21 11:30:30', '2020-12-21 18:00:30'),
('e96f9fe194e98f6aa940b0261dfb9d2ccae6dc8aa94d05181ecbdae8d06553cdcf7a3a13af819b11', 166, 2, NULL, '[]', 0, '2020-01-25 12:49:52', '2020-01-25 12:49:52', '2021-01-25 19:19:52'),
('e979ddfae74ef339056cd896051a627884e51bdbcdd613ca314b98a81a9c2542998cdf378c8cfc4c', 8, 1, NULL, '[]', 0, '2019-02-02 00:01:51', '2019-02-02 00:01:51', '2020-02-02 06:01:51'),
('e9cbe090ba196d9d570428cd4af11e0b84543a579e2646b7ff801c8ad5677dc38effe9460567166c', 189, 2, NULL, '[]', 0, '2019-07-31 06:08:45', '2019-07-31 06:08:45', '2020-07-31 12:38:45'),
('e9fa0651d92677ddce39138ec544427bfa7f148d5b72c44d4b83d49068f0cc2663b8703f08fb0cba', 238, 1, NULL, '[]', 0, '2020-04-08 04:31:36', '2020-04-08 04:31:36', '2021-04-08 11:01:36'),
('ea3e5d1a8591f8dd2a2c79b887fa89b86f2e7f0b42fbc4e5b368797d1b5067fc24ab5fa6d7b34315', 259, 1, NULL, '[]', 0, '2020-04-22 14:10:05', '2020-04-22 14:10:05', '2021-04-22 20:10:05'),
('ea5339f7c3f5ac8ac967a11d180bfa55d36abafb83b094ac3d5bb40648efb5c25bf6b4d89a2016d9', 1, 1, NULL, '[]', 0, '2019-05-27 13:20:36', '2019-05-27 13:20:36', '2020-05-27 13:20:36'),
('ea9cb665153a21502d9f7fbf0a25ed9da8827c1fb0661dabd8b0ab555a2eee5ad5917498c3c0246e', 184, 1, NULL, '[]', 0, '2019-07-08 07:51:41', '2019-07-08 07:51:41', '2020-07-08 14:21:41'),
('eabcd72d7d79a50616381f8dc23482d85cc0297ec7666635678f364e7332cb9746097524371cf70c', 122, 2, NULL, '[]', 0, '2019-06-01 11:20:16', '2019-06-01 11:20:16', '2020-06-01 11:20:16'),
('eac1583fa31a313ab2205032bc2575ceaca3d094b6425747f13ac4ad2d9cea66b142224624c9b0f4', 101, 1, NULL, '[]', 0, '2019-04-18 10:00:48', '2019-04-18 10:00:48', '2020-04-18 10:00:48'),
('eaf18739539dc946faa9cc16201108f342256dc7d9a93a256d5f1c87fbea320101d3bb61c0667a01', 125, 2, NULL, '[]', 0, '2019-09-26 07:24:36', '2019-09-26 07:24:36', '2020-09-26 13:54:36'),
('eaf4ceb7bf8f5baf662d4cd8b0bb9f40f2f83fa9f9d4ff971e49e4d9966b47d5bd038c0a8a0d1fcd', 172, 1, NULL, '[]', 0, '2019-06-23 13:31:07', '2019-06-23 13:31:07', '2020-06-23 20:01:07'),
('eb4c583659a8ed695c9ca889d2cc10453ea45fd38c38dcfbac6272198bcadb543416d8eef611e0e7', 127, 2, NULL, '[]', 0, '2019-10-17 08:05:15', '2019-10-17 08:05:15', '2020-10-17 14:35:15'),
('eb5071da3e247435e3b3af3f7a7845a8c80e37f1ff59d68cd9902532c4966377c69cb2641a225886', 214, 1, NULL, '[]', 1, '2020-04-05 04:55:05', '2020-04-05 04:55:05', '2021-04-05 11:25:05'),
('eb6fd99ef056f9f2d73807a45b5bed5f6d31bf2f8773bdf53509a09ddcfcd2b80c12b2ca2afea3f9', 141, 1, NULL, '[]', 1, '2019-06-20 11:18:43', '2019-06-20 11:18:43', '2020-06-20 11:18:43'),
('ebb73d1932de9bf24b8a296d24252e20beffb9f810174fa07fc53d89d5157eb771b87261d0aa7acc', 112, 1, NULL, '[]', 0, '2019-08-17 10:45:55', '2019-08-17 10:45:55', '2020-08-17 17:15:55'),
('ebc80dfaa372f76a988ede827f8b8dfeaa71d4aa892b9ec2c204c98235032cc42c224639494e9619', 121, 2, NULL, '[]', 0, '2019-06-02 07:12:07', '2019-06-02 07:12:07', '2020-06-02 07:12:07'),
('ebdc3e6ad34b5b9675e98af17b76bb8a0313a65e75dd7e79b9a1adf3efaa10d09286ede55e299db2', 125, 2, NULL, '[]', 0, '2019-06-20 11:10:51', '2019-06-20 11:10:51', '2020-06-20 11:10:51'),
('ebf5992dec99b216a11b4d0d49991d1db92ce43f711e19cc0841230b3db7361db513905baceb39e3', 240, 1, NULL, '[]', 0, '2020-04-07 06:41:16', '2020-04-07 06:41:16', '2021-04-07 13:11:16'),
('ec18ad0a9c35da4db14ece6b1457e008d738f5168ee63ae55ee2adfdd8c2215ce7b23e240fda1983', 1, 1, NULL, '[]', 0, '2019-05-26 15:17:07', '2019-05-26 15:17:07', '2020-05-26 15:17:07'),
('ec95d8317567f39d1178c4d2d8da933001a76460823dfc62b7e3d81f9f53b16da494964cffcdb40e', 118, 2, NULL, '[]', 1, '2019-05-30 10:23:03', '2019-05-30 10:23:03', '2020-05-30 10:23:03'),
('ed1fdf2c891d8db278dfcf4acf4dbe137ac852918df68af6ab01ddaeb88cd63f7893bb9bab5d6c27', 213, 1, NULL, '[]', 1, '2020-03-12 05:15:52', '2020-03-12 05:15:52', '2021-03-12 11:45:52'),
('ed3472a05cb04486aebc2827644907c525f28952db3ffa878af53cb659858918abb214f8b2efe749', 189, 2, NULL, '[]', 0, '2020-02-18 02:56:29', '2020-02-18 02:56:29', '2021-02-18 09:26:29'),
('ed5a67820a347a5db0f8f99e738416d4058cacb0bbdd2e5f5ffd785d1ba1e9e0884c7477add92178', 267, 1, NULL, '[]', 0, '2020-04-23 09:12:18', '2020-04-23 09:12:18', '2021-04-23 15:12:18'),
('ed5f394303ab06bb3e086f51acdbbd59cca856733fb99756a62badf30068e1c7ad3dcf10320b5e86', 237, 1, NULL, '[]', 0, '2020-04-06 18:10:38', '2020-04-06 18:10:38', '2021-04-07 00:40:38'),
('ed948a95a166d5b795b3bf9fd906998396778aef40960726308aa6bc2d90162818f1e9b0f7d6387d', 189, 2, NULL, '[]', 0, '2020-03-09 08:31:12', '2020-03-09 08:31:12', '2021-03-09 15:01:12'),
('edcbe7931eef29a84a4a260aecf3653d1972a6212503ebcfe202a85856f2a6b9166bcd1fa390d59e', 178, 2, NULL, '[]', 0, '2019-09-18 10:43:37', '2019-09-18 10:43:37', '2020-09-18 17:13:37'),
('ede55d7e004e1dbb72dc834780caa8a5e9c34ce89f722ee62f9081d874633a9bdf0595b4bfecf175', 211, 1, NULL, '[]', 0, '2020-02-12 06:39:20', '2020-02-12 06:39:20', '2021-02-12 13:09:20'),
('ee1da65eb9ee8e22c635fd57b29a0e14cfc89a84d743a1ad01830aee987148d2b10414604ad2f629', 225, 1, NULL, '[]', 1, '2020-04-04 15:42:06', '2020-04-04 15:42:06', '2021-04-04 22:12:06'),
('ee23c5a12ccf56c42ac80485cbbe90e7e5c8fe7abb295756a7b2970040f96c24c93de247331d81b1', 235, 1, NULL, '[]', 1, '2020-04-06 11:07:56', '2020-04-06 11:07:56', '2021-04-06 17:37:56'),
('ee403f205a0db2f7662c8be4829c270e68625be7f810f151b4b624d31a9903de96e48bd53e37114c', 267, 1, NULL, '[]', 0, '2020-04-22 15:02:24', '2020-04-22 15:02:24', '2021-04-22 21:02:24'),
('ee67a60e53de861624a57eccb0a7beb7d24bd67c9868527bfedc532ebf4a1f594ba8d0a2b86fafad', 11, 1, NULL, '[]', 0, '2019-08-02 03:15:53', '2019-08-02 03:15:53', '2020-08-02 09:45:53'),
('ee85566fad99461b12e3af8ca140a7149cafc6da7de09a73d5d8ea916b2a5c2439d89f2541c37825', 274, 1, NULL, '[]', 0, '2021-07-06 12:57:42', '2021-07-06 12:57:42', '2022-07-06 18:57:42'),
('ee8fc8d58a8732c77cab94ffd3d4b2c4ece2cd4b8a2eaddde616ef735a295e3100b43fc85fcf4d91', 217, 1, NULL, '[]', 0, '2020-03-29 19:44:50', '2020-03-29 19:44:50', '2021-03-30 02:14:50'),
('ef2801d52afe70cff6baff5dc726c9552758f1739218e3660c8f55ecf0beeef8d9aa7e062a2532b3', 107, 1, NULL, '[]', 1, '2019-05-08 08:13:01', '2019-05-08 08:13:01', '2020-05-08 08:13:01'),
('f054e23dd6b1329faa5e2102636ffd3bfe26bd9fef74dbd9981a549f8c7275305df53ddc10d109e5', 217, 1, NULL, '[]', 0, '2020-03-29 18:32:26', '2020-03-29 18:32:26', '2021-03-30 01:02:26'),
('f063c5b2d2a9378f71ed9762f366bec784818c083e48c6a49beae7fb47755486f8868ecf2998bdfd', 106, 1, NULL, '[]', 0, '2020-01-27 07:35:57', '2020-01-27 07:35:57', '2021-01-27 14:05:57'),
('f0e192dcd802a95dcae4251abf291fdb4e482dd1b3fbfa8e7dfff2c2b8c89b6d8c21670b8739b536', 164, 1, NULL, '[]', 1, '2019-06-22 13:27:51', '2019-06-22 13:27:51', '2020-06-22 19:57:51'),
('f0e39355f5d4e1dcfd37c01572fbe979e9dd2053d248a625fed9fdee26aaca4da0f178b69e0c21a6', 273, 1, NULL, '[]', 0, '2021-07-08 07:48:43', '2021-07-08 07:48:43', '2022-07-08 13:48:43'),
('f104b4ef99f7dd28258c083f2671fc03becff925f951e8f4aee3219ec5d9ee7b53b7b13f546c9ac3', 263, 1, NULL, '[]', 0, '2020-04-22 14:09:24', '2020-04-22 14:09:24', '2021-04-22 20:09:24'),
('f1578886d5cd6ce2e51ea8bb47932476d881b8263b9d94d8c5c1e8fc550d12d4920bf7b30fb6f954', 112, 1, NULL, '[]', 0, '2019-05-27 11:00:37', '2019-05-27 11:00:37', '2020-05-27 11:00:37'),
('f19916ba4e57acfee36f3008280baa745a188ba87ac3d7c347fb2d8b7805000e879cf2b8bcde2694', 128, 1, NULL, '[]', 0, '2019-06-12 10:50:52', '2019-06-12 10:50:52', '2020-06-12 10:50:52'),
('f1e5c69a9943646819308ee9ef34775cdc6fa454f8360cf8eb8fae5c8763d6212a3a6b1c378278c6', 7, 1, NULL, '[]', 0, '2019-04-25 10:12:48', '2019-04-25 10:12:48', '2020-04-25 10:12:48'),
('f28eef2e3d25492210f94f50aeef2054de8cdfdcfed395477ec3e7a367d97ab964671361a07e1756', 246, 1, NULL, '[]', 0, '2020-04-07 13:33:53', '2020-04-07 13:33:53', '2021-04-07 20:03:53'),
('f2a6bbf05e7f957113f23c1537a5d94a9498036ab48c5ebf21e5a2f17bb5bef784cb3fa0a439289f', 1, 1, NULL, '[]', 0, '2019-05-26 20:21:36', '2019-05-26 20:21:36', '2020-05-26 20:21:36'),
('f2a9e225f62824a1a82c7fceed28c5776d31544bea42917817c0cccbc32e5b22f24e7ef84983e5e9', 112, 1, NULL, '[]', 0, '2019-05-30 10:52:32', '2019-05-30 10:52:32', '2020-05-30 10:52:32'),
('f3877b135ad001cec2b21a48bd4ab8535bb1e1cfe5f71f1b6d617e0ec416faa432f134f91d2f6690', 220, 1, NULL, '[]', 1, '2020-04-05 07:54:40', '2020-04-05 07:54:40', '2021-04-05 14:24:40'),
('f3a0b3baa70b068c208e7766e5c56563b3765ec4d87f2b9b6eab09eb82959948cccbfd7bdaca3a97', 142, 1, NULL, '[]', 1, '2019-06-20 11:33:36', '2019-06-20 11:33:36', '2020-06-20 11:33:36'),
('f402c3dedf401366f8ff3052ae808e2eecd7c2befb4eba0f18f953bc97a5a4803fd05b6fe5977897', 118, 2, NULL, '[]', 0, '2019-05-29 10:51:42', '2019-05-29 10:51:42', '2020-05-29 10:51:42'),
('f45f379887ab750a4bc981c4252051a0f53cd35f8e7822ce0f7e695671f9e684875d8b291d9c74cb', 124, 2, NULL, '[]', 1, '2019-06-23 08:26:23', '2019-06-23 08:26:23', '2020-06-23 14:56:23'),
('f47460f86df202fc691eef1e6ac5d33aa07fadb976b4e5215eaf30bcadf4ce53da62f0d134234a86', 112, 1, NULL, '[]', 0, '2019-06-01 08:08:00', '2019-06-01 08:08:00', '2020-06-01 08:08:00'),
('f4ad134b125968501f665b10e490cf56fcfbf83942754a7f73bd08a7b0cf5185ce5d127e107fab30', 125, 1, NULL, '[]', 1, '2019-06-22 10:05:20', '2019-06-22 10:05:20', '2020-06-22 16:35:20'),
('f4da6f44240e92cfca2461bc4c5ad9801a250fdcd734d84247b1c1c12e14b962ebffbabac5dd15eb', 118, 2, NULL, '[]', 1, '2019-05-29 10:58:26', '2019-05-29 10:58:26', '2020-05-29 10:58:26'),
('f50442df568624f31f588518574b17b1f7854193b2887386eba11210e23fe20cae42997fc0b8c186', 274, 1, NULL, '[]', 0, '2021-07-06 09:06:59', '2021-07-06 09:06:59', '2022-07-06 15:06:59'),
('f505ba347830969fd9d44518ac9ba037cfa0279e0dab284482be057de93a39c000d3960a54b079f1', 152, 1, NULL, '[]', 0, '2019-08-09 08:37:26', '2019-08-09 08:37:26', '2020-08-09 15:07:26'),
('f549464feb0528d2dfea907e2aadc174b2d59096a2d3c1fc620e709dc03e552ee286926966a6086e', 7, 1, NULL, '[]', 0, '2019-02-02 00:55:01', '2019-02-02 00:55:01', '2020-02-02 06:55:01'),
('f5528386bc8a65bc9f8bb5186ceb72cee8a33823b3e43f9d7aa374dbffc2380691eb30275726e70e', 112, 1, NULL, '[]', 0, '2020-01-27 07:50:16', '2020-01-27 07:50:16', '2021-01-27 14:20:16'),
('f59b9923e85697d43efd4e6965f77e944a7607a991a8764ae2062b644820c0ef3788dbe5312ad83a', 255, 1, NULL, '[]', 0, '2020-04-23 09:17:38', '2020-04-23 09:17:38', '2021-04-23 15:17:38'),
('f5aff3198938d7ddf608d6bd236d6f6b59bd6ce6b83250ced1a9f380e3ef4635a4e8ec51f4794a69', 107, 1, NULL, '[]', 0, '2019-05-08 10:12:46', '2019-05-08 10:12:46', '2020-05-08 10:12:46'),
('f60fdc3e73cd60a5e6673c46beb9b1839900ef0edfa2377c4b7d45df64f456a6c8ad6bee707c31e8', 163, 1, NULL, '[]', 1, '2019-06-22 13:23:19', '2019-06-22 13:23:19', '2020-06-22 19:53:19'),
('f6446e338bcdebfafb328f6cfd1056eae20ada8be0647f21b593c015a1993c5ed5d6fe67f0426116', 214, 1, NULL, '[]', 1, '2020-03-23 09:43:16', '2020-03-23 09:43:16', '2021-03-23 16:13:16'),
('f684897075806ed8b4b324f6fe995f05d235afa0cbc6157a936275fd2a296987e6f56d1cd377b3b2', 124, 2, NULL, '[]', 1, '2019-06-17 09:26:03', '2019-06-17 09:26:03', '2020-06-17 09:26:03'),
('f68cdad98cb922a48cd61fc2fc67546a8e3cf60bf64d2a63ed98ba819d7aa51c2cc53b149b019f29', 274, 1, NULL, '[]', 0, '2021-07-06 10:21:28', '2021-07-06 10:21:28', '2022-07-06 16:21:28'),
('f6a4ff614409508ca82bb612d8dc6b377a92c09f0f42f558fb794c28a2e0c2e071ff549a29951f43', 231, 1, NULL, '[]', 1, '2020-04-04 18:01:57', '2020-04-04 18:01:57', '2021-04-05 00:31:57'),
('f6e3709568cde666624dec19d55e1110cdd0b2de83533bd1a2d11e141db6e8f769352c9e2716e536', 107, 1, NULL, '[]', 1, '2019-05-08 08:06:37', '2019-05-08 08:06:37', '2020-05-08 08:06:37'),
('f6f0f112ec7fcff68da18439801a24bd5461cd0c9990e8fe6a2ee932f85d8428fa8dba261487de7f', 178, 2, NULL, '[]', 0, '2019-10-28 11:17:32', '2019-10-28 11:17:32', '2020-10-28 17:47:32'),
('f701af9732ef512f26a90bf17840f6245a2e039ae2da59e680b4bb326d2cb3cc34183b6dde871e3e', 254, 1, NULL, '[]', 1, '2020-04-10 16:22:27', '2020-04-10 16:22:27', '2021-04-10 22:52:27'),
('f770285ea35d571482f1252b45939cc4ed7291611a066823070ca2c1cfbb2ae5cc29050119d653e9', 273, 1, NULL, '[]', 0, '2021-07-07 08:10:35', '2021-07-07 08:10:35', '2022-07-07 14:10:35'),
('f7cf1d8cb265469257c13e7cfee2f4dcf57de21af744e1758c74647a2e92c3665164bb6ec346c479', 1, 1, NULL, '[]', 0, '2019-05-31 12:07:05', '2019-05-31 12:07:05', '2020-05-31 12:07:05'),
('f7f27e3aa788ab64b8ee149d7ff76bfbae1151e39fe560496462085b89aad2e3594abab8763913e6', 125, 2, NULL, '[]', 1, '2019-06-02 09:18:49', '2019-06-02 09:18:49', '2020-06-02 09:18:49'),
('f8970efa0489e689389b33d6cda432d17c49fcb3394dbc320f4804b689943d34350f47eb6d9ea572', 7, 1, NULL, '[]', 0, '2019-05-08 09:00:41', '2019-05-08 09:00:41', '2020-05-08 09:00:41'),
('f8ed897361dfa128e337b7b3744cee196b79205def108cf1944e666f8b0de046aa1ecfef59bb6ce5', 214, 1, NULL, '[]', 1, '2020-04-05 04:58:30', '2020-04-05 04:58:30', '2021-04-05 11:28:30'),
('f912019c14c111bde7bd2337070b3d1bafeb594892164727a119f57cd8288aba09432a35bee57b78', 162, 1, NULL, '[]', 0, '2019-06-22 13:22:37', '2019-06-22 13:22:37', '2020-06-22 19:52:37'),
('f97a80edecd712e2bbd9c71ab9e5c5918ad865dedfef2d0ef67e148acf7eed7f0451c12a925e7dbf', 118, 2, NULL, '[]', 1, '2019-06-01 08:39:39', '2019-06-01 08:39:39', '2020-06-01 08:39:39'),
('f998953c02133710533c7d70e62374f308586b681f130c483a8acb4757e4454c2ddb57f18f9ba7bd', 216, 1, NULL, '[]', 1, '2020-03-24 10:07:51', '2020-03-24 10:07:51', '2021-03-24 16:37:51'),
('f9c011a6147e819907627d6dabdde8e9dabeb275862f792101775918aed1aaf50f3a81653924162c', 222, 1, NULL, '[]', 0, '2020-03-31 17:50:06', '2020-03-31 17:50:06', '2021-04-01 00:20:06'),
('fa0e4636fe15afb614f21683e62301ca12a4867436b75309e8890576f8a6ef2ce23416a114d98335', 233, 1, NULL, '[]', 0, '2020-04-05 12:04:03', '2020-04-05 12:04:03', '2021-04-05 18:34:03'),
('fa1d3f31c76892aafb5603c2a9155afac294c6160e3c7b9733887390051bc06ade19cd360a24f1ef', 11, 1, NULL, '[]', 1, '2021-07-05 12:11:11', '2021-07-05 12:11:11', '2022-07-05 18:11:11'),
('fa56d5575bdd1606054fe13be10463a9446a4a2f995479e53c72224164343b1bdc92feebaad178f7', 112, 1, NULL, '[]', 0, '2019-05-30 07:23:52', '2019-05-30 07:23:52', '2020-05-30 07:23:52'),
('fa706a15214d2f2b3485ea6e211ef713c2231b77fc7080f13a1ba1046c4b9d2ae41a3a4be8620ef2', 273, 1, NULL, '[]', 0, '2021-07-09 13:41:31', '2021-07-09 13:41:31', '2022-07-09 19:41:31'),
('fad5e7041071985f12b6e2a0730632c4022d5258052829b1690f5106105c923d28004243b5891de3', 273, 1, NULL, '[]', 0, '2021-07-09 14:20:13', '2021-07-09 14:20:13', '2022-07-09 20:20:13'),
('fb070f7e27524e650dc54bd54b6c8487fba2813764518d697232c44c3c346eeec635746a8f8f44fb', 274, 1, NULL, '[]', 0, '2021-07-06 13:30:49', '2021-07-06 13:30:49', '2022-07-06 19:30:49'),
('fb0902476d59816b5f94103edcf59bb4c7cabb0d5795dc05fac1795035c1280cdccaec28f00574a1', 208, 1, NULL, '[]', 1, '2020-02-08 15:46:50', '2020-02-08 15:46:50', '2021-02-08 22:16:50'),
('fb7d736a53a43eefc8ae83c8b0c9d7606f8b864317d0f110eb067bd11532fb429fff2dc472986f1f', 124, 2, NULL, '[]', 0, '2019-09-08 09:33:55', '2019-09-08 09:33:55', '2020-09-08 16:03:55'),
('fba37d64c6575bd1e054097826f5778079c0cb0b3d2d669e26ac9a13a5b6d63f3c9a9a421a120dfc', 255, 1, NULL, '[]', 0, '2020-04-26 08:18:54', '2020-04-26 08:18:54', '2021-04-26 14:18:54'),
('fbc36434ced8388321f77c38608580bb62f54bf5ea1dffd26d2cc82b49f2a3700e9e87521f9bd24e', 200, 2, NULL, '[]', 0, '2019-09-21 05:48:48', '2019-09-21 05:48:48', '2020-09-21 12:18:48'),
('fbcdd2262af07843ffe617e68367699893ff67f49cecbf9d31e9943b7d8ae4e66146267b3693e21f', 208, 1, NULL, '[]', 1, '2019-12-22 07:31:30', '2019-12-22 07:31:30', '2020-12-22 14:01:30'),
('fc12fcbd1acb0fa8383607f868c567ef4c808f9e16821e4147e94c27b95b591916e299a49e666150', 128, 1, NULL, '[]', 1, '2019-06-13 07:02:38', '2019-06-13 07:02:38', '2020-06-13 07:02:38'),
('fc4a15b4424fd04d144a161caa8303ea97172f3b62021077bea724e77f824558cbee9d186766d21d', 225, 1, NULL, '[]', 1, '2020-04-05 04:48:53', '2020-04-05 04:48:53', '2021-04-05 11:18:53'),
('fc8a1bcc057152c88836f2213c00028424c1dbee25f2d3d02d4e7151830a13334d661970375bb832', 112, 1, NULL, '[]', 0, '2019-05-30 06:43:49', '2019-05-30 06:43:49', '2020-05-30 06:43:49'),
('fc98fef783664c9ccaaa8a5e18f94dc34e6f5d6458007879e5f4f19aa89c4f4b875fa7ddf61f4951', 107, 1, NULL, '[]', 0, '2019-05-08 10:12:46', '2019-05-08 10:12:46', '2020-05-08 10:12:46'),
('fcd5438f07ba6f03b8ff6514cfea25b57958364cfebfe623610071bbbc5f494dc346649c7138ab7c', 255, 1, NULL, '[]', 1, '2020-04-22 06:59:31', '2020-04-22 06:59:31', '2021-04-22 12:59:31');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('fce1f6a084f30ebe7eaaf08233acf61da4cd8779354c7b033d8b126327d47b96d5e6f2a32551a845', 219, 1, NULL, '[]', 1, '2020-03-30 20:47:46', '2020-03-30 20:47:46', '2021-03-31 03:17:46'),
('fd172d89ff1161645a512fa1329eb110b943efea01209ad7bfe49699dd02bbb4879ee3109e076e6a', 178, 2, NULL, '[]', 0, '2019-07-17 14:22:07', '2019-07-17 14:22:07', '2020-07-17 20:52:07'),
('fd8a5348c3001bafe0a7e8442b662d12b0fd287b0a25c9bc2e538dfc9df1a2eb1df57d3e0fc23fc6', 1, 1, NULL, '[]', 0, '2019-05-30 10:45:13', '2019-05-30 10:45:13', '2020-05-30 10:45:13'),
('fd91b90b011011dc301cc4e6f1125f690f938b008b58c2c28f651430065294b66ebbc39a167747c7', 217, 1, NULL, '[]', 0, '2020-03-29 19:44:44', '2020-03-29 19:44:44', '2021-03-30 02:14:44'),
('fda6ef4e3eb35d512a155a492263aa7fd6ff34fb10143fbd95f4de804896105bafe851b4dc765eba', 263, 1, NULL, '[]', 0, '2020-04-22 12:03:48', '2020-04-22 12:03:48', '2021-04-22 18:03:48'),
('fe090f6df163aba7c59a1dffd73b11e63b14438c2b1fd75558f5d2cc4120350fa7786a99d4e3fd92', 237, 1, NULL, '[]', 0, '2020-04-06 18:11:56', '2020-04-06 18:11:56', '2021-04-07 00:41:56'),
('fe768198e44fc56b3f14622cbfb5b69a1ecf935666c51fece253e4540ab462b362eb14dc9d4d6183', 107, 1, NULL, '[]', 1, '2019-05-08 09:20:50', '2019-05-08 09:20:50', '2020-05-08 09:20:50'),
('ff9e23653e064df9c13d90ec8b111dc9bb351e76ae1ac499b4714ba8c06b84d417bc75233d0cf1ec', 178, 2, NULL, '[]', 1, '2020-03-08 11:42:29', '2020-03-08 11:42:29', '2021-03-08 18:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Party App Personal Access Client', 'VwM1K090LgXINfg0vaFfOLtVHRDjzprgYhhuXcZJ', 'http://localhost', 1, 0, 0, '2019-01-20 03:41:54', '2019-01-20 03:41:54'),
(2, NULL, 'Party App Password Grant Client', 'z57aTWDkJ2pUHFW4g4Mm3LAwxS2Pzs9tfRdunuJq', 'http://localhost', 0, 1, 0, '2019-01-20 03:41:54', '2019-01-20 03:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-01-20 03:41:54', '2019-01-20 03:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('0346ef37eddbd68c4f26a97801017d8eaaf037702d6d3df87833d3f0c14304a3f08b9be3917e18a7', 'f4da6f44240e92cfca2461bc4c5ad9801a250fdcd734d84247b1c1c12e14b962ebffbabac5dd15eb', 0, '2020-05-29 10:58:26'),
('03b22d39469ae0dfd3dbdaeeb5a8c44b6eddca24f6f9bc3f23d8e1e86dd6446fc759479070903053', 'b106e36914442dd4aef2fb49a9de38b7f28f866726e33ff53334462a0b59204f7a45ef4a67966bfc', 0, '2020-08-18 16:50:52'),
('03d4376158877e196f5ef7d7db2381f9cb178eec7f243fd95df94dcb2f38b2041e9b9bde850ce5ed', '0ee19b8edbf39e60ada87077b95013e2ed6fc8763dc710559fe5a6d74f1139379ce4e71d51b49dfa', 0, '2020-06-20 07:06:56'),
('03e389410f301ecbc3bdf50d6559b571e656cac262f9e9df711d05f882ee6120f3ae6392703a1ce0', '9413b42edef5755838573ab70f8d245885c7796eaa6f34c783e9b8906635390e3a6866327b20edce', 0, '2020-09-18 14:55:17'),
('0409517160bc0a160cf015cf58812dc6414f53e31132cb4fb4ee7bf5e89c5fe39c6aff4f96a86a90', 'af591661777655809606b2c41ef3ac01be0ab7378524957942ab41e22cbe0e4600000c25e4a3bd74', 0, '2021-01-23 14:19:09'),
('048257f798e50c8f9818f86f08362436f810636d5444c72e6512366b7597f49908490a13a8cd528e', '3dfe46973378a4889de6bf5ced4e8215b4b793e4758a274a8563e1b6021fa8b758f8a7d6e49323c1', 0, '2020-06-23 12:31:30'),
('04d537aea62d3f000256443b5347e38bf7b0500e6a0ef6a36ea6a9930f4d6087a41f367b1917b6b2', '2bf64a55bc618d9ae8824912e7524b7f175a75104fc2e84db69ed5d5f6c809ac369bec76d43e1a56', 0, '2021-02-22 11:03:32'),
('06cf23de9dcb5317644913be8ef0c1321c955cbba021d6bd7b139d8555d9c1cc9e3e4c4bfa8248b6', 'c47f86c7a5559734b366dcccfe6d203b3cea7d20c9fece2400c2835f679169ab4d9df11415b41537', 0, '2020-06-24 16:52:15'),
('0700f86e9aca051da862fd8463da24dab76abb2f07198ce6f532e560190b8954be90008d53fbb4ee', '09938f72b6c062719019d1951ce547152d56414f60cf63c727764b73de4bc2bc9e7233cb1ded0c58', 0, '2020-06-19 09:41:47'),
('08b8e3723e2c85ba6243e76aefbc1a9d2771efc1e131efb1f0acbc9c37b50b29c94a01195ff3c80f', '7653546e461717864c32096e2120fcfc989860b9a3d0fd4d12450af4688a78ba9ee44ff9e7fd7412', 0, '2020-09-07 16:30:12'),
('0a3531b425cecd9da771f80665ec3aafe48012c0d73a76d6a7bc26f04c021ec5c6b1329b2b09c42e', '7cfdecfd477badd9041dbdac4882ce2c9572ed431b58794234d73823c8ceeff524769d4cb84b836f', 0, '2020-06-02 08:10:33'),
('0a9ff266cbf759052149f6e71433d1ae1d320ced9c4998c4c81c17e5bba3ef34d0c88be515f79b28', '6fdfb9633116cb4c396700b223cbb3325bf143243cda20b3e3b4cf79ae0b8f0b55718d05b6522f7a', 0, '2020-06-22 13:34:47'),
('0b9cfda89558a4b03376fdb9defed794d42a9d8f0570a32c9e07104861a25e9752990ffea3331d7a', 'add460b15f3fb58e6f8bde05f93113c2c322401e348002f7c66157fa012e2bc51b64ba1069590cda', 0, '2020-09-07 16:16:55'),
('0bf3350bf337c223ff7afb270342e1b9151bf48fbc2a86e6748463680c9a8f193b5696d138c7a730', '15cfce517204fe1af3c3d1177945a2f32ad6a9420944ef2739a222a5720a0724017145eebc0a9fc1', 0, '2020-06-02 10:14:16'),
('0c214a6ec1befca557eaad4d0360b5fa97f588005542decc4a57aeecabcdb5d087429fe7e8001e5b', 'e88882aba25820d35fad3e5612615fbd6d664c09db9c7f156bb6aa8c05d8a1d6e6e8efceb5732035', 0, '2020-09-18 17:16:20'),
('0c42fc9c727dd5ecff0942b4e4da0ae6b51ec1f6bd88f7609e5a3631dd5e3f8649e594f78b5b6071', '2707c29e363d36bd70e3974352be7e16c9ef22fd79f84648cabfea31aa9a763d092a8622fbbe9263', 0, '2020-09-21 14:26:13'),
('0d23069f3c2b87cd6bcdf3d358c34d2c425c78e180d30e556b761f842cd30ad90b550f56cc668206', 'da51871bd1182602dd5deea64375e9457ae78b5d0a5c5bc0b0d23423d189988bc1850d6e81fabb2f', 0, '2020-06-22 12:35:12'),
('0d5f4de96359814cd200818ade7ca738584f06c939b1013a3a8a1ac60e3082fde11b94820c92a819', '3e9653189690c5228e56e14aa7561c1f3db76a7f37b82e23b64d44d745320db5e623291ccb9d5024', 0, '2021-03-09 14:18:59'),
('0d94e98fd8674ab5aa72ca821b4db6767571b182c9584b80594351312d6aedc13bf98043ec2bc2f0', '5e163762e441811a9835696361509e2eb599b2888dcbd4777c96cde379c04dbd7a5b9a363ffc2d24', 0, '2020-06-22 19:06:34'),
('0e1bec84a3f6c2ba2bbadccab2e1cbff309eee449b823f199f1feefdfcadbda8299814947a7582f0', 'bed959de8d18b27b5c319cc2c9142a21da7626cb0eebdfee71747c3fe0a4c68367618acffb8b632e', 0, '2020-06-19 14:01:28'),
('0ecc40aac45e95ea08d765fa92084b32c9e8985876512b51cecbe58cab5f04245b6a3de82074d8ae', '6495e66c5e105cc1e881fc058107ae1f3d54217db20dc5f57411df1aa2503def5eb21c9be7ab4d94', 0, '2021-02-09 11:58:42'),
('0fc4ab9bb08a9b40691669851b40fa7a6760feb2d3adc4c90630e8fe96efad0b8ee357d45557592d', '72cc428822e94aef2b84bc58ead7c9dc9c66133b883e48c4a9cb83e4ca0fa819d2eb004e23e31c27', 0, '2020-06-02 07:20:46'),
('10c6f410209a02ae715019ee66bd3e62c08ddb3befd4e11991eaef746bf69e283eb999bf25a4c415', '08b1c639082b2ad1f417acabb46d7e0b14dd2bc46615e3c203ab2f35b4ba8b3f89f9a6ea4918c2b3', 0, '2020-06-25 15:03:02'),
('12a7f295c04803d219159fb8fbf3fc06acaedfa903a2ee7f705aa6adfd24dbf9a84092d4c02fe679', 'b9917b182c8d12ff99bd7b0a26b7f11ec72097da76b3dd03d3b77fb5ead6477ea62dd84bb75dea3e', 0, '2020-09-04 19:45:49'),
('12fe4f20ebe6b0d9b3af945a8b7f9bd22f95730aaebbf7cfab3606fad96a20793970a64f493b9389', 'a46cc0ff64bb6dc40139fa0f5f07a6c6464387c202d7cfbd0a676aafebe37726cd07a6cb52f54f83', 0, '2020-06-19 09:32:21'),
('14ceeac50312393c49940cc1774306cdb95617296a7337faefd472186d98ee622859a4cf69ca6fa7', '0bc05413ea97f3b30eb76026a3cdd14df982dd6528744457654c5b3dcc6a7b89bf5d1fafa3889f92', 0, '2020-06-02 10:15:08'),
('18cf18507b2f7216f338281c165401ee4819aa8a0da1e5c093473dd9ca11d2acbd816219206c5a31', 'ba6a08926e059f61aa81fc3a5a2b3d52a62235ea1b33316f9a3606e1ad88cfd62125ad67c73ea50b', 0, '2020-08-10 14:48:02'),
('1a618f7743fafa9566f8fc426aa5ad2e1c956c5c724a66122c5cd5eb63794ba7b949ab6369a0e42d', 'ca353b5beed9d81629dd7bbf41f5fef71a24db96f69f21aa4325063108bfd951176cb633d573cd4c', 0, '2020-09-19 15:44:43'),
('1a670d367f6b59c13db348860cea7f56e16ef709af5ac0f5e9e36b6d9ff3346e4f6a96f3fece27d2', '10e109a5c25d3f1e71e5991eebc457060c5d680b1a741cd380c3bffe53e6b55d91eeaa882427466f', 0, '2020-09-08 11:56:25'),
('1ab6fa94654a5a2707c03772393fc6b3247b074823733920b189c5a2c2e71fddc9399ec8a17ad96b', '58ecb14b59dd76f3350685d9090506703d13de91fad6b68c290a987ebef20c28e189300e1d32eb57', 0, '2020-06-20 05:37:26'),
('1bb78f68350435e68873995b1395881f0ff2b92afacfb411f362c6ea5ad8dde1fc8a85e2d98b2944', '1fac79ec081ecb0d859745c55027342d0bfe14f312020551ceaa6597291dde2b5e65d861bc0e8c2b', 0, '2020-07-11 12:15:30'),
('1c66cb358152695cde5bfece7050e81302ab5cce4caa539ba2d0373ba846f34586148d3afac0a378', '0bf138e2c60fd93e738030f955180eec4cf2c54fb5542f86d9f239d0397ada005b3be40bff7d94f7', 0, '2020-09-21 12:12:56'),
('1d07be186ed7b8f079a54865dcb52930b8bbd2e4c907c97e9ed2141d467e9b90fe3962cfb773dfd4', 'c2239cb1ebf474c25bba8d865f80c79311055860a91883ed34c3dc37356dfac9c8c9be57a24cee23', 0, '2021-03-08 18:09:12'),
('1dcbb3d2831819082ca54e847cbc8a62816f55f23ccab6ac6538997e562acf8507c5688171270cc8', 'ba31ff4108a0080727fa0ffbc8adb0d9cbbebad393ac300f94657051b036acaf9b6b3810888b7722', 0, '2020-06-24 19:55:52'),
('1dd48baee162f2555dd8e9d427441ec262c65d09574ddd7184698e7ee595a0ea8f4867ae1a5f8655', 'e100fd2b68503de141b9d7b577ebb3226063c313dc378bc080df52bcd7dd81235208899c102c74a1', 0, '2020-06-20 20:07:32'),
('20cd2332e687cfc04ce8ff86fe6cb0d5a90f6b3d6751a8a1886f0cbc16c1cf0662d04c1b52cd727a', '170faba2346cd2871194c3d1206caba31f341eea4d79ad65a83727d8a8a6b77e523e1ef53534d975', 0, '2020-10-19 16:16:24'),
('2296e2194227f08588182ca5c6239eb66e0bfdc1ed47f79b1717b9c363fae5b5617cf8797a3e0ce4', 'f97a80edecd712e2bbd9c71ab9e5c5918ad865dedfef2d0ef67e148acf7eed7f0451c12a925e7dbf', 0, '2020-06-01 08:39:39'),
('22a99a4a9fe1a71ef5a0c9efebbccb5166d7a46823d59e1d43a4c1f67ecaa055dc8e572ce02ca525', 'b3f4e5471c3374e0b4126cd135f857c291f2899ef047e29102cc7201507803b6442633f0dc7f7ff6', 0, '2020-06-20 20:06:28'),
('237e5d2946fbfb25c201f9215f8357b81ef6b1c6b0860af734760ea8e3960659ef6fce62d7e1d49a', '979fec9c989c8778edf8c7c6f7054d1877e4b2739b60bbd4d58aabcde225bf4fa255d5d29e4b2cc0', 0, '2020-07-16 19:04:44'),
('2397898aa3caf33352f01a807c5ee56b332154d4cec5dcaab27e587446415a9f7fa7692011f05dfe', 'be8eabea2d7e1aa5163da2849638a772a532ce9a393fe996c9e635bdfd66894838f8fbd30e2f6a8d', 0, '2020-09-04 19:47:20'),
('24e36488ad587936f296c724502c3b9a5b139218e7684c85232c0674aa0c43d9b1715a9d828cb68e', '16ba1808860b54f90a067e9239a169c0a838bbb17132d0c8ca0aad86d647c12efe24663f63586180', 0, '2020-07-16 19:45:00'),
('256e8ac1cb06ec2c19200800d7dcd6d60206a77f98f870fac13030fade1da7fc2a7bc51edb2b3c13', '8e9c7171b5be0fec4d88c80446bee42e1f592d98e3b224e801875f8324eba8527b827b3acae39dce', 0, '2020-09-12 17:45:35'),
('25c7ef9e71a8ff0c0af2aa6300865708e7b7ca1eac81e6eeeaa53287c1de322f3f3ed2e739888130', '7045a78ce25e70d4d23981f94965b8e464b37b78e48ccb339a5f3551268832504673b8138955ee87', 0, '2020-06-02 09:45:20'),
('26f34a35fa22e8c77a856f5826cceb6f1845e9b29ccae45116c16c4a36fdd738ad12d195032785cc', 'd57e8e91b97f4c164f6c448f90aecaf3892f4d8856f7e9945f6a135477da97c16e8e05891c3fe350', 0, '2021-03-15 17:54:48'),
('2745b2c64ca4cd3ae9ab896a62f71f21c9a69be7047adf4631ca4ef28e247d9007626de690fd7be9', '673aad3fe19bbaf86ba79c9ab5ec930cb4c5944cb13d01f3e5a73920daeaf18feeb8d2bebdc0623a', 0, '2020-06-24 17:22:03'),
('27613235abb7ece45d4d0477c35b0a5bb33429fa091725e827d6cd7322e34e2c29f808c772bc2f88', '38409dc11cc71e6a82241e2586c1bbab0cc7724dd3611acb881f252a9b7d8f48904fd1848373f89b', 0, '2020-09-23 16:09:04'),
('280bee753652a1524f0a0f53b0c9b1394288deb28c5b23b8c2c943bab510aab58ba61328b6b93083', '18c4d2e78ae94c1ce290d27e896e9f1a6854be1869bbf8e3119ed938f4337f8400e510be56a30e30', 0, '2020-06-20 08:35:45'),
('28ba50f867af829141eea798cd3d3fb1fda7189e61c42b254c5f522f8b541e5767e1a6f22bbc92fd', '942d9e5cbc589e7c40d9b2e71d8907f666f5cf9e5d81d30d46564ea69da6d4306c543a4839e9128e', 0, '2020-09-19 14:09:47'),
('28bcc5d0d3f41a2edcd5f3602f72c5eab0acce982f88058a682489bdfca256ebb8f0e06dd0f65c04', '9f0b51ee4404e6d15573ff57da576427d440354c9b479ddf8fc5680fdaacc6ffff2df5e93bf36af9', 0, '2020-06-02 09:41:40'),
('29841d48663cf6a2d799a0dfba510123dcf4123bd1b04c3ee4bca225d51e75e0196b277bf403a162', 'b97481486cc160ff03852fca0d6f963e21fa1a92db94c8958a14903c59050506ec87db8eac11a0bc', 0, '2020-09-19 19:02:56'),
('2b6fe058f875d5e7b56e38bf371f4b28351ea91926c8a3528c9860e78b74813d8a57cb15efa361ae', '4d2a3b145d2d81f2c5695088f1f369b429e2062984a6b12f32f2a5b37b5b7435992072d081cbb397', 0, '2020-06-22 17:48:31'),
('2d667fa0d7b3f0fa1b56d765a9d93cb1c044bd0b469f54a54092ab49a5fa66155f06a76f289f5757', 'cba00f1d1b62e55799d87a30af5e325d516551e6a8feea88dbdce9a9f7f1a75c9463b086bdfa2856', 0, '2020-05-30 08:13:39'),
('2d6ddde754ae24314db5116646c3f4e46f63f3856588721c738c2666eb39c5950dff1076ce17b62a', 'f684897075806ed8b4b324f6fe995f05d235afa0cbc6157a936275fd2a296987e6f56d1cd377b3b2', 0, '2020-06-17 09:26:03'),
('2e720baf85a482a654bc0b50f04e3ce5e7cbd97f924fffdfb855119c80275a65fa974878b893ebfa', '6cb12daa0145251a6fe4ef5f0d97b614f37cf0723e5040743fe829ab99e6189090298504bf911843', 0, '2020-06-19 12:38:23'),
('2ea26a94bdf55659e2891fa98e113a123311373d4e241a24fd9f42f5c291625bee93dd97c2f3781c', '8e38d2f72dfb353848237e9095eaac8edd13d4638d9d13e56213e4bae684942ccd60668d757ebec4', 0, '2020-06-19 08:04:17'),
('2f29e25769e2e26bb747ac97ac95a75b7ccc899fcef419c6ddd2425323e17425cf82f84b4421db9f', 'fbc36434ced8388321f77c38608580bb62f54bf5ea1dffd26d2cc82b49f2a3700e9e87521f9bd24e', 0, '2020-09-21 12:18:48'),
('2fbc018e648e49fce558015141b8093067a24e4963ab66c77fe6a8ed6ebdc4e4b120df2fb9dafbd8', 'b19f415056c665477ca095c01e07f1dff2de52840db974397c3ca21907b2429403dbd68604328b46', 0, '2020-05-30 06:16:38'),
('304fad14dd8fa6de9fe0d4f1e5b6b029a79b3bd904bdb145f597ba6807cc01c3e2b2e9fe907aa0db', '3bf41bb877b66faa240fd0649a4310641e95a13140d9361cd8c937062b68cea5757671a098b86315', 0, '2020-05-29 10:58:05'),
('306e667fadb19fd08fb9a23476df8625e3e53aa766830b1d20b4ffb419d7f666b3ddf8ac8d0337bd', 'e2cdf2905768586ee2afc43a86cc655cdcfdb143345e9be3c4e9e06139a2e75bbf6e52c54006b3fd', 0, '2020-09-07 11:52:05'),
('30e522f8d78fa34a34cbfced5d1aec5dbdfc9b1b1266e194c7ba093f6a04e26fb259aa6b23492809', 'fb7d736a53a43eefc8ae83c8b0c9d7606f8b864317d0f110eb067bd11532fb429fff2dc472986f1f', 0, '2020-09-08 16:03:55'),
('30ebeae710b32403977d818eb7098505971a81fe02c5c1a9e39e84608fd4a6c750386da58b7c1409', '5f0a8447242c9b341c58bb30b462a0902f985bc6d9f199c546a13a066ff2894a435dceb72debef28', 0, '2021-03-08 18:03:21'),
('313d05a6752eaa94ff96514bc6bf10f59176c760d306ce882f1ccdd8fcd9ec818116fd1f54c2caa2', '9a8acd2960db4a040afc21c757cb37c5910f80cb1ff7393788c3cce429e4deb7fb8aaa138a4e7bdd', 0, '2020-11-07 15:14:14'),
('319635f0056cde64fb65a3946ea6085f4531054a1168c9f6884b4a39c701b930418750caa8dc8ce1', '7d7f4519021488c976298400376aa232e03d9d3be5c8585afcffd9b938354b0ba32c7b8dc03f8e1c', 0, '2020-09-19 16:30:09'),
('319fc09bd372c76fd9bad19299949b17ff653475e5f0e7c583012c321f423556897cd76ddebd35b5', '7574c7b8de1047fbae3201099a5a52304588256d19e329874807b5f725a45e96d974ad0ea13e03d3', 0, '2020-10-31 13:48:46'),
('331f6e7852b563b370d5b449efe3600a4d5da83a820047d07a9767bbe3f05a8a60a66dc2187975e7', '807fbe37dfc20278cbeab18b770606e515b63344350df7f2b9d0f6eca269aa898041272da7af7467', 0, '2020-09-02 18:58:33'),
('33e35c579fb0e527850b183c5d5144c4cac04b20fc39bcd2511675dd2064ab1b172383e7bb981666', '9b8b2b8e81ea0f6f1fde0b266cbf4c85324a388393b2d11725fe6a105f76969c7cf28636dde9f2cc', 0, '2021-01-04 14:05:16'),
('33fa8486ef50fcdde94e9395d79d76e56060109fcaf1bb14efcf0dde274e634bf2d97f9a5f6e4586', 'dd5b5f8e89f541bd68e77642048db9cef0970cd1557a68e2201279c3adc4c744cc46b49de678b0fa', 0, '2020-09-19 16:53:44'),
('38f9947bc19a339f973ace0c599751d9755910a25304ab1a17fe4500ced5e6fad50c7680a6d3544b', 'd521a7aa4867f1b2bc2eb9e7245238573d8fd18f33dda219190a8aa8f2624869eaec45304a32646a', 0, '2020-06-02 10:21:25'),
('39129015555b9331a82e54bfd0461c1a9f8c17ec566b2c0707ccde98ed90202321d0674a69c8ab84', '2770f1701b62a234dd92e02f3fe37205433d005d9d3a20e3f3fa2c6e1fb141774c090264a0b388c4', 0, '2020-06-02 10:02:29'),
('399908b4bf7de666eab02cd4fbca7b5e7fd1801a4b981eab57c9eeab1a17add7d66fc0abb33c3233', 'af997d4929cd92d4803c29a57f4655c6c042d6361bdb73357a7fa6c0ed3c5f860582e882d056c2e9', 0, '2020-06-02 10:04:41'),
('3aac474107fa9c929cb730aa22200844a711d382be3810c8a04cbe7520b63a39a03b661519100da1', 'c00dfc7dec95631a99201c7a77ae3892f79843493b47dde43079e6e7c9690b774eba3c3b33a34e88', 0, '2021-03-11 16:45:17'),
('3be1a41f98e8fa59b1bd5ce35027e99df5f092a0215ad36eb15f9c1853c522c1aa0bd7b076be3e53', '070e42f8ef825ee21ea74dbfc8972aa961d50bbd830f97ef3ab5ea5485cda72876f399baf2e3e010', 0, '2020-09-18 17:52:10'),
('3e051177844cb10f8f1dd0503ebd27d9ac01ad03b6b9c5b23c59420c8023ca10eb9a09d91958103e', '1dcb6a6e8ced5826b0436ed4ef1f7d93d55dd513a25ebbb711bef8cd795a4d0d466e53dfbd3d7b82', 0, '2020-09-05 17:22:39'),
('3e0d051610c89d3fe7669b545bbc4d3d19d07c34e7389af4e8c562dce5ef0b1f350dc56401279ee9', '8c9db0ac5397a0e36e7c3170b9891b5d972a897cfb9312ba4183319350ee5f345b3c6426348e93f9', 0, '2021-03-08 18:10:22'),
('3e0f508f2ca2ed33055c0ca4cb26e1122e5fb05e160b58fa7a8513345547d5b2791389bdfb80423f', 'bb435abe5cf09c00fe9814200f6db2a38cfff512b0430f004ac9bc236ab8740122fa658663ab8db2', 0, '2020-06-24 17:07:13'),
('4096d2a7c96a54863ccb4e505fca457932eb2f812102e357c5de7895635a176d1e02a569fe4dcb0b', 'ce3106d65bc4b82167cb3e14daf552caf6ba90afe51b516e68b77241a9005248c3e715403e9a1dfc', 0, '2020-05-29 11:06:02'),
('42ca9454d693f1ad78c6b7c5cd13aa5fbeca1efb39c5c489f8eb8e2177220d0382cf81a09db20e84', '10f5706924d4772a268d4879c73edb97668a58d5326d4bfd580d06e77c60a05d0e9405bb2e0aee44', 0, '2020-06-24 17:16:51'),
('439997034d7a7f143fcf8390ccb4098213e52d149fc667f57ad3b2410366c954940f9abee5d3b359', 'a96623518d54647de407bb12adc1d076ec2b5bb55ff3c1dd02708fd7368f35c77c7e610dee0fd14d', 0, '2021-03-11 21:17:12'),
('451e57cba2a0d48fb1a1695ca40fe6e7835da83028b7776ea2a092e5d2eaa9c24ed6121742707ee2', '9ad8a4b810be6114d77fdabe10de173e7736b1bce5721d45a8ff99889d35a323adc6688907ae519c', 0, '2020-09-12 18:34:01'),
('4542150f0d2cb434c1b2c98d47842aaba89a25359d034f72d6789d207465c7a499dbd4ed3dd60728', '1de005148656472a978de5f16e3ddb947a7e370c260ad9c067b325d8837ab8dad57343f19fc11387', 0, '2021-03-09 13:29:55'),
('463081e9e77e9abdcdbcd90b4a4d2d0f49cc0defa020b78586d6cc93a715ed16de0b812e89427d2c', '4a4b3b6337d81db0fef24aefaa1c8061d3c0c9434dabb67a23e305229128ec72217a4a26ada02f4d', 0, '2020-05-29 10:56:18'),
('46493cc26ba7bce225c74ced488234d544cec9a278240a2cf103e43ff286865b274d6c5eac5f098d', '81a38cc3657c86762190e0b60ed663e861545ab2ef93907c91194dca6b8850d26fc4d1fdc736ee81', 0, '2020-11-25 18:27:06'),
('468f5622f88dadc65127b15ae1f185f02418357183d30c94be9e11f3ae75b9d068b29d5d6910a717', '6846ea0ac8b8ea61a1f4f3cec07fd796ae4842a98c51d172b37a9533c28053b027493bbc637153a9', 0, '2020-09-08 19:04:17'),
('47a8175cffd0092f7057577b6a04696cbb424a9bbc9b28107b91a859173df755c64fc3b5726edea8', 'f402c3dedf401366f8ff3052ae808e2eecd7c2befb4eba0f18f953bc97a5a4803fd05b6fe5977897', 0, '2020-05-29 10:51:42'),
('481ce6b5050b0db9b47de23514c35dd01c2fcbabec0619fa88955dbaeab645851f0e1d9ec79993d5', '7ce4aa3e3eeef52918df323ecf0cac411287d458af98e744f755e7680ba6690d5645b49279abad82', 0, '2021-01-01 16:40:16'),
('48c7430f9f1410e023ce1ad3410e8c39d983e82b8e403884dca7d208cf6b7a9fb51cab9f276e626a', '49a65f0cec23a691c7582c248ff1e2438aa408a7b82e57baf2b0706867b33b77859d5aa5206e9524', 0, '2020-06-25 12:34:23'),
('48f8f058f5074ac5aadd4aa8ed5fd05b6be2888f5c123e2904ce960c977b146db7f4645598bbb79d', 'cd6de3b98e94b5328b58873505ca7056b00b100ffaac908a06fba1ba35310894ca4af25ab994aa19', 0, '2020-06-02 09:46:56'),
('4a57a5db34f79064ee5bc17f54ec3b200c88582de56f47f19e241bcdf48e522631e53bf6dc23c6f5', '772809a486fafa6be63cd2f3cb0b57532dfbfe3015dbf9f6ba4f4fb2b7d9ac8df36a208af3ce4d4c', 0, '2020-06-19 10:35:14'),
('4a5eb49cad556c70a13b03edaa8b8406856ce347585a083901909fecebeab96cde9ae0b5348e18e9', '6bece78e768b668e1554fd53bbef3ea226c6b5899cddc2d334acd9e34509a78ff9dd930dfae50b5c', 0, '2020-09-07 19:40:11'),
('4a6711a985bc3dfd3034c69a2f5e1aa8bd2c49d5d0fb128699b4c6f30195e4e9d6bc7023833202ff', '02838fb99fa84b028af5ebdfc95e2e18c7a1376dcd34526a14d3b5968de78a728876734100173f2e', 0, '2020-06-20 07:39:22'),
('4aa46b9f7cf06c9c7550096bf41d5fdfb8d283d57112438cb0916101c518b752f007c4e911071be2', '783f608ed12f9b1469a43b1d815f1c5122b750ce10b9c252194432b98ccf542e8bd233d7007cf330', 0, '2020-12-04 17:25:54'),
('4ba9856adc7c8af0282390fffbd421a95c2d99d974e63fbaeee7c1e8d20b090fe34caefb829fbf90', '09dffd2c630c7f01d9af0d0ec78127797c02d737bd65b81ed6e68a365cdbd08c2b02e30adaae650e', 0, '2021-02-25 15:59:20'),
('4c0621e081de42feef25dde8c24c69b2e4e8280a7ef3b6a7e56d9167fcc47c5805e3db0b53738174', '184f8f1d89c7ef6948fb9849c303c6eb6765ad694d80108b0ef8ec75caee35bf94b55c2217f44717', 0, '2020-09-19 17:17:23'),
('4cbcc31088ba5367b6cba79011cb8cee1bf96fb1378664e7fc598105c9021fcca46973368cbcaece', '9ec5eec3bda0c378c7ef4b67e1ca01313e0093bc0fd58e14c277f0d8b20dfa1a253d7d8539b9c9f3', 0, '2020-06-24 22:42:55'),
('4cc9909374b54d87ebac9507da21068db1f838df091b11d0423ade6b97e138d652dea35e1a9768ed', '9142f04641d832a1e76a35c2bc04ce72157dc1ee301647e8097ddd8c4a091bc04602585beb0318ea', 0, '2020-05-30 10:24:04'),
('4d3f3e51b94aab3ec5f5d778dc4eab8067d4cc70406522efc28d365fa980a528d1eb40116c0efe43', '290764b7d81e80da098a7ecf65961947be15e2677b353d9cef61156ec8a4ae1c698d3a2ffec116c1', 0, '2020-06-17 12:47:35'),
('4d6d0ef74df59e6e9f3fddca15e42cf6887b08c58e4137363a271fa0758d61948eca46b8846ad8ac', '41de62c9a612abe2cd66bac7b159fee45dfa00709728b3d8b810a581e88b6ed4545601319a2652a9', 0, '2020-06-19 10:34:30'),
('4dbfec1a64d3642658669f1d0dfd32a4e88bbb83e17f50beee496691fcc22b5b0aee3643e49c23bc', '820f9fc0eace477556b14bcc302b777681cc2e161d7161f51e709f770a8709cd8ad779449b3df809', 0, '2021-02-12 12:37:21'),
('4e9787824680fc5731c9d160e3261054a095780107feb361268fcebc8ed00757c42cac58bfd15be2', '8e7ecf0c1f131dbd31b829b8f47e33948ebb3ecc97e0248c783432312b5e2deb2ac81745be7ecdee', 0, '2020-06-20 04:54:45'),
('4ea8aff06eeff445b2de2e2eb37f13c56409d5d8fe00103fc9412c45e191323b28713685beb4ce9f', 'de860ce430db2e7b9e04445a785608c535ff36efaa83a66195d87e96f079c8358eb52030338e493f', 0, '2020-08-29 20:00:46'),
('504add5e0718deea55cb69b1725f1dfeca0f1169821f35e80ae656142fb55886a881791a83d84edc', '6aaf89a6dbc66817ebc47162e4bb2eae9440a182bf09ae013953c690539568d57496b52c9c41c3bb', 0, '2020-07-15 10:15:05'),
('535527c6a31c1386bf7af95f1abb6768387c07d2c7e94b895ece32d7932799ae570b6008d0f6bddc', '7025cebb7e640d589a1d6e283f2107b2474d9d3925bfaa3e526f286b4c139333f792a227e82b866e', 0, '2020-06-22 13:04:04'),
('541c7a152d2b01262370439d424861c51770304a4b7cfb6123dfb9b0b6601b91702c9f59a3cdd2b6', '92a8553ef145827ac7bf36649dfee9b526c21e946e6d451131f0188c3d07d5fc73f71756bec01b2d', 0, '2020-06-01 11:10:43'),
('544383954fb88f6a61ed5a952c95b10a1552966cf11dd99d39351a7f42f3bcda19499307a70c77e9', 'ac4ac838765d7b674bf725cf83fc2db0b53752d2c74bdfe334673eed4b41f464c9649c863e9961b8', 0, '2021-02-26 08:34:14'),
('549e2b917d48b63ca81925f9d46791b65c2fb6eec4a0e26135d76a954b999f33f889a84b62dfa067', 'e96f9fe194e98f6aa940b0261dfb9d2ccae6dc8aa94d05181ecbdae8d06553cdcf7a3a13af819b11', 0, '2021-01-25 19:19:52'),
('567d514f69a292a9d48f2570acabfdb046a73d6fad05a0c641fe24e209b61e86cb6b980a6984f9c2', '4c92830adfe46af3d3a47809a1bcd4ac908df461ea27390e9638e129496c764639e2a4cf24863449', 0, '2020-09-08 16:55:24'),
('576f94b47d192702650c7c68b4633f6b15ef20d46f31fa6fb02efa28f4320ba79414ae2a1c58bc72', '67cb7fae8fba885ca1db37acc333cb83e10b40cadea16686c872019a5efe3a9e54bf342a01eb65bd', 0, '2021-02-15 11:13:39'),
('589fbedc158085b63b0bb907bb017becb45d569a1a0374f7fac1fe5fcfe08bbc074ca3da07ba9e10', '00edc86de5cc185461fffa456307f90fb58230795972810c3c81bd898f40f162ce82f475f2b37396', 0, '2020-06-01 09:16:33'),
('5af917c23b828de8128321d3ee611313841be2ef45a22f13319c1c49e945b87a3fc47de9bb796ce3', 'ed948a95a166d5b795b3bf9fd906998396778aef40960726308aa6bc2d90162818f1e9b0f7d6387d', 0, '2021-03-09 15:01:12'),
('5b80907d15d89b4394aaa61375ac2c5e0ee2906de1351f32b42a783c6be8818fc2da13e4e44c2764', '7c1c917b56c080eaba1bc0006545330274cd99c397b07e2c5567babf68113abc0dc05b67d26f8355', 0, '2020-09-23 16:36:38'),
('5cd1c5121ec1e0cb7cdefef75ab4ab928b69b23334633627d2edb3d5ff6148ea59952c8ee5fc5dc4', '4776121daf7e5246680bf77825f2e637f7d8a319d2db26ece3d4dca28a17c473c3b984b67194dace', 0, '2020-09-23 12:46:08'),
('5dbdc35b6372ac990a27539554c977bbf19148a51659b52256501b97bf7fd5d2fa9e28ec3aadbffb', '872dad7c036aeb946fbe65cf3b9c6398b844fa60f7f1a0ff37f23ef0773dfb3611f9e3abc58babf6', 0, '2020-06-02 10:19:17'),
('5ec4fa508a5ccb1b23454bdd5ee00b1778c9e910c9c1c65cbc7b263fcecb97fbec7f21e198c46f6b', '2a4e9394466651773ab2f08f4955b21f750cae4822011636d82c212cc110c01d2e219c41107a3c61', 0, '2021-03-10 18:32:40'),
('604819f22f30aa7709dc97fc2ba493b38bea1e73535a81ecce137279375228643b5475f8d2e663ab', 'ec95d8317567f39d1178c4d2d8da933001a76460823dfc62b7e3d81f9f53b16da494964cffcdb40e', 0, '2020-05-30 10:23:03'),
('6282cd5a0a89afb7347f3265cdb2b8780726ea09d2d54176be53ffe252beed2f6fa17d8f3a36c391', 'a398c1bcd332aa3bd42cb07af15dfa32c8be97bdf1d8f2c0360be52b7fbf0c69478664dad38fc25e', 0, '2020-10-31 18:03:35'),
('628d5c9e24c769857f197d44987cfff221fb99029eae0722ffccc5d9de30f4ad9ff7f1fcf47ae4b0', 'c051cfb1b3dfedd552867eb442143e1f557371b37ad2e4acd59f2d6c7a4ab38da7031c93f615ef5c', 0, '2020-06-19 10:28:20'),
('6347d0b6b7442b695f63d7113cf208a0387bd4e9b39e3c68586b5fc30c3c5d5bbb4f4d7bc9056436', '6c621c842a99563c6d36b617ba9f455baf6f8038a99ece83f2d68cfc6f1d596ab6bf4aa9c1f2871a', 0, '2020-06-02 09:49:52'),
('6371c723388b34621f4f86b3c61a0afe33b64c7186921834056c4fb63009b7da279e4005a10b4edc', '6bb1f19dd9d5be533f2511e482b52404cfd94be0abbec82ddcf056225d97cc7219c2c3377cf70a7a', 0, '2020-06-19 13:46:07'),
('63b6145f3142c1cc1980745b7864e65b86e9015697178676c2ffd2439ee202aed243dd13922e4f32', 'af2927c7a7d070aa6845069622fe1f3951b0242ae80eab5d7d5c3a770750c49dba41bb30931151a2', 0, '2020-09-06 09:48:14'),
('64b4531eb739a43b878fc93512a9311cc37bc73dc9fd368e7e557834a8d46234780a6d40d56669c4', '7fde8e8869d6d6972533139d07bfb94bd18f2b1d3ecafea4ffadf9718bad3248cb71ec2cfad651e6', 0, '2020-05-30 10:10:09'),
('655943f65e4ec5d303b437a82aae3e50e42324ec36a49339fe2bae1e738c6bedb401d52f7a84ba84', 'abbe0e2554348d51ab6afe458dde82361ac91da8344e2f8054476024741c4400be56e36c546c1525', 0, '2020-09-07 14:30:08'),
('658dd9970d7d75890f1969ed3bf7e750e186222e983b9f4a9b140b1e477bd114c8916d8909f58387', '29f96278ee7a0314b47cae21fcbf182486559402f8465dbb3f7870fb60429be3ab8d537ce00c99f2', 0, '2020-06-02 10:44:22'),
('6654f098bb7355114d34d00867a3904a3b48edd342728bc12f7d3b16555001c1b922efb488a596b7', '6378843bb1760b07940996943cd0299cc61a1aee2aebe30f9a20be4a94dccd1cc93a8a96e3343312', 0, '2020-06-22 12:23:09'),
('668cb3e6b78f60b5ec5004c99bb7ff210e9525e1e60db95a10c5f4b0bf0351579aa92704f50d8b83', '82ca5d4a264c9acc6f97555de920e447babd1fa3cf008857d51aebab3bef2dc6533a945880268e4c', 0, '2020-09-04 19:25:26'),
('6782d641a6a337ff137cf4b069b70b120e83dd28220b977158f54891b49e9f4ec314ea7a752f36e3', '80fc9409adc1067cbe9969d4bf58ebcf5f620efe37abbad97d380a8559afff4635dc552ad58de4ca', 0, '2020-05-29 11:01:45'),
('691668eca3f4b30a0fea0fb89aebff8df24bccfacd81071d747f414817fd3eb05d72f40a289772fa', '9b42bd64d59447fe553baf2e259d0956aa2929c2c47641de6fbb793fbfbd5160156035420cfe0514', 0, '2021-01-23 14:53:06'),
('696121ca725654168018f117855a2fd98fc69ec69ba02431d80eed444c14cc304d47045fe81e8e63', 'ff9e23653e064df9c13d90ec8b111dc9bb351e76ae1ac499b4714ba8c06b84d417bc75233d0cf1ec', 0, '2021-03-08 18:12:29'),
('6c9afbb6c6ced09efe761e4b94f5bfe09bb53fc291e0faac4f85ca30e55bcae74e362d062d24298e', '728c5d7c037eba34d7ed9df4b1591883c9fc8ff6b8a5b15c03a6a850bfb218f256a25837341f730d', 0, '2020-11-25 13:53:22'),
('6d9965259fcfab5f5d8d2587707d7d771a7b4adace75163c0284f664e4e68342a47f28027b390f25', '0ce639a3e5b5dda8619c457ae9c2f4bfcb89a45bd4531afda0bc45e43d7fa7f99e62b48aed969e21', 0, '2020-06-20 05:41:10'),
('6fa6209ab1571883d76ced2a22eb651958f07f6b668f8e9188d949078d855185d659c8272cf06a2a', '3903697caf9e8317aae975338adb75f0b9b4f1c8a6841c1bf2bbc1006ad7e0c35f38a18825113812', 0, '2021-02-11 19:45:26'),
('723726ffaf8650c74eb9aa4e2015b7f0c63a4997050840b07ee2fb82511bc3224a81fcd9c31e2fe9', '4f542e7613d6ac0c69f30013fe0f9ccffb261ba28db70ad6548217c695a83fed2bd07cdc2d0d9ae0', 0, '2020-09-16 17:57:01'),
('7395973b1782826b8acbcbe531be3b821099c544b5be431104ba66c4060efd75998b15faa70e2e32', 'aff8306b7541f860700df196e76d4b9c838a5505c5c277a8ff1799923941468e877754e4b4f0f4f8', 0, '2020-09-08 17:20:21'),
('759431bce962862821d0e742d503fc698484a646b851973cef6a22e31aebd289de1d92e22551540c', 'e35bb5b64141debaa14d2f1e8bdffa7bac58ba9f8ef33eb32afd9bb5119140b8bd0cc1386ec2b1b2', 0, '2020-08-29 19:11:33'),
('76646627e117312ca84ab3dd03fb06ae642f3077250cdf30f60ee8a6eec55aafecf74ab8c7e73b2d', '182377a47b93a9d7f5fab3a37062dac96737113bf99a8093de4b0fe77e0fc8494d772c52fee03a00', 0, '2020-10-23 10:03:59'),
('787dbf7167247e22a468ab25cfa8db7ee29f0ea76e3b45f32586ca8f5d94ede749715e6a1bffd0a2', '8e702805227c5319b482f707456c6ca40bea595fe3d92bb5ede41650b2f49e02fa51f35f2a54890c', 0, '2020-09-05 18:43:28'),
('7a82ca5c6069ec3e21e13993b5ba093676fdc42b84ea9395f38cb9793769da6b8fd7d49fd20a9826', 'a42761f43f7163d0b7b788056918cf62b30b20a2760aa9d34dde14dbdd1a3b6d62e53dec1aa75d76', 0, '2020-08-09 18:56:02'),
('7aa135a2da07d85aa599f8580470bb30e7885b363228a8d64f5d850025e7a287850fe468dc53c445', 'b26b7c39b0288e379a5134fcc9327498b01e553634fad95d435285576e664e98bdf98ae0359eadf5', 0, '2020-06-01 09:06:24'),
('7bf7a55feaac3c5e0128c293f785dcde8f1f61548a3c2126f774a53235f8395b7635c0a4c8d776e3', '66036096c5e3c9d32e932624d664e0e91f0d4cb9acd98d71fcfa5d59bb195130e762a7a94f4d6b9d', 0, '2020-05-30 06:15:33'),
('7c7d77b5bc833368cae77cd9c8610a9c378ea009e5461081ccec1d34691307959ddca146f3e042a1', '7fc8bbe52954308d52306b7ab028e626485d2a6f328af5a290e43a364a22f75a951db433ef1db167', 0, '2020-06-02 09:20:42'),
('7d7174db58f55784617576c3a9b1468741cd4bc74a62b9d9fef8eb92a26d718d34bfe385d4c0693e', '6737cd6e5571be37283758dbdd6db8819ed1a4160c3ac2adf6d488a9fa9753f87f1d335e4e66aae9', 0, '2020-09-05 17:58:30'),
('7e87bdabc075ddb1f0af3bec4025278f15fef058f25af10c45e594bbf90e6793b4294abff3443526', 'f7f27e3aa788ab64b8ee149d7ff76bfbae1151e39fe560496462085b89aad2e3594abab8763913e6', 0, '2020-06-02 09:18:49'),
('7f5603caf4747bcb6ef44c6eaeaba820c1a9a6e50a81a622c6d52ffb510da322b7d2478adc37036a', '851078cf1393481df5e7a9766cfb993df2739e5835097ac29af9a54477429d446eb69a0733f04c8d', 0, '2020-09-07 14:53:46'),
('7f6d2dc59b3d5f438d5637c30180bd059bcccd341beb7584f0fb72409fa0627110b0f51231445ad5', 'c92366032ad6b9aa147e6aade51b904a680f61f9c40961b4c043f5e83f84b5cf8153c29edb746a4b', 0, '2020-06-19 11:46:03'),
('80494f15c522a5aa8da3ec7f52162c579be931ab27f4db331d5642c694fb121829e5f4f850271949', '084002fd1e9c2d966f84a87ff1096bcdb6a0ded55da4cba188e165c66736dc9b26cefad628c747d7', 0, '2020-06-19 10:38:20'),
('80be91d1c0a02f94c0beff5c17252107c05f44f43abdcb19ec9ef7243f5abd7720e82145c2dc1ea6', 'ebc80dfaa372f76a988ede827f8b8dfeaa71d4aa892b9ec2c204c98235032cc42c224639494e9619', 0, '2020-06-02 07:12:07'),
('82a90d344c240d2d3477a66dcb2d1276592149365ed5c75e84a8e3579a112207220ee2627b9d0b62', '4b4ecb2b12b826be9bbb83108e63e1bb3645b418468754a04ac0e34650654b971cd0a11dc0e07bf6', 0, '2020-06-19 11:42:53'),
('8488fd392a6fc1724d359941b0c554dd3c356bd4f1357a134e4de57ac292dab5d0680d877dc32502', '8ca87cd0fdd14aa9e0c41977111d11595b8a354f4403c4dd5a4d997f22b2dbf4ae6f04c5f4d742a6', 0, '2021-03-07 16:07:53'),
('85457fd6c703e354a15c01decb338e93ccc351d47af9eb7a1ab6c443630e00360d0c31c7679d7b89', '8ec7e47a71c2c7b14101a2ab8d0dde1ef4c895a1fcc8bf732fff0e5bf8cf72d2690ab281d2b223ee', 0, '2020-05-30 10:03:23'),
('85cc6b80ecc5eeb0cb0c01ca8b20155b636a113265d1456babb909bb9b3e41f54b6c4fe3dc57ea2c', '1fc314a007bbfb3c92295d168ce79959f2e79bc5d7ebde232d872a5ab68a84d5d7fa40b510febc9c', 0, '2020-10-12 23:16:35'),
('863cfd2aa951b0a154cb6de21f6d840d243739c43680255af1d4b8850432f3878a1adf09a6020197', '83ee6e3f427e104fe7a6e6b5461d0bd7768508891fe79888a38541a8e24a85072e3ad04d0d63bb6d', 0, '2020-06-25 12:19:24'),
('87645823a306b738c1eac389d2904cbd958b407531cccd41d98d431c431f935a213f6edc4240449e', '402fb71dc7f577c66ac92adbb44f0e35ccfdf610c6deb71b5430bc85f6831c53c571df96f70254cd', 0, '2021-02-19 16:11:12'),
('88d1316d1c467202ab402da54cad9f7a1936e3152d0845e8ffb9020df9ba1cf858ffa0653e39b3b1', '421ac7c812977ade1abc4f4c450c087a2353d863744bdb89537264e1965811a69ab5798e7d126406', 0, '2020-11-27 12:37:55'),
('8bcb891182e299756f526dbff38e09dc57d4614d4d87bc0d4a1e660f3dc2cb0861be9884266893a9', '8aab2bafdfab292ce8d1b4237fe215c17d771298d82336119b456d034ccd1ca22ae66bf0682da4cc', 0, '2020-06-20 05:26:17'),
('8cbe2be2be20bbd593224768cbe95f373805b61e32270d46d436b398ac681f6e8a0c37bf5175d149', '4d65830484dc8575be45215ca63b4a99c82536210c8d3923e22e7932bb6b73e84b51530fadb8eb49', 0, '2021-03-08 18:08:33'),
('8d58c6bfbf0e020cc5734c9edea1325467d3d61c1358b0f4b0325dd59503a44bff4285887575dc49', 'ed3472a05cb04486aebc2827644907c525f28952db3ffa878af53cb659858918abb214f8b2efe749', 0, '2021-02-18 09:26:29'),
('8f13e277b08a69a61306242cb6393f30f37e8c7a7a64be14435c036c1db5b454150efb500a9c9702', '8a37cc0611c6452992b95b94556401e55cc239d96cd03af50b7e5754a30867713ef705101a6ebc69', 0, '2021-02-06 17:10:32'),
('8f45dab52d68bad7f603af63cb1b418fdff85d9d1d40569d20dbe14c44a588aae28b47dbd391f605', 'b38ccd7d2eda4ebd99074217ca5ce9f6220d0549422c192091b8741a5c64d1f63b003ea56f592093', 0, '2020-09-08 19:57:11'),
('90dda347c80d1bf55d90bee20b3e3201f45ecdfc38b18b934d4d3ade9d473652459a8fbb49efc08e', '9b54c9a1470b7f37a95769c3a7471cd5ac1d5e3eb7d75a8141112c30972eb1809a2243b9c080ec7f', 0, '2020-06-20 11:01:05'),
('9115ffe5568972ad54002d0c42daf2cf1b86bb2a6e3a098a24406bb3499efb5a2b9a941b3c71c19d', '5c28c95f00de425307bb9c2c72dcef165f933bc66252e6e499ffd81cc11944b3d6a082e0817f0398', 0, '2021-03-08 18:02:06'),
('9228430e2f83be05c9bb8a6f2f4dc9709dd52f076c9e221e3e25f4a0875706f0b79fd5bb110531bd', '81756aa2b75c047ff3ae9fcbc0703516d3c099ef40f0e7b970bc0a14dc7e1cfc99fa5737acfcc548', 0, '2021-03-08 18:08:27'),
('923ced3e045520fa46bd9e58b07f06ebdd0e1b9ea54f9a0bfde6d8e81475b62367bc7313b85c06c0', 'a1d36f2a44ea6fbf06c5267044db7396c96a82efa3c723ebb8027c95ca1dbdcd24ae2f4cb9ea0be0', 0, '2020-10-02 18:04:27'),
('924eca859e10e12f64a97ab72e0795f96452b21320806de1d424389e3620cf5a9aa9d6eabf4c17ea', 'cae8329071adde748abffcda39598d93f218c23b9bbedd1563ceba391c7c59421878f3158b0442dd', 0, '2020-06-18 12:41:16'),
('92dbd72c00aec8abe00b38e985827e30b3079061179c28ea4fb83ef89fbc082cf181e5bcee744dad', 'ac5ca71e833fe730717dba71bb43bd479ecf314f9c363f7f00c64a5a856cdfb0d423ab6cfcb2da5b', 0, '2020-06-02 10:49:16'),
('932672e9c7292217318b74da92e3b4ccd4c1b21cd86d8a68bc527b8dc444728102638ca5e4cedd0b', '90e20b69b16d476854fde4f759317a399159b494cbde271fa0f6d85ecbdc5a83f257563eea3bb682', 0, '2021-02-22 19:18:43'),
('93abc6c9fabfaec4112445cee0b0dae53ab2ec8e74cebd37054f7b6a6fbd547244f6e6ffb8f04291', '1d447d72325d4bca770776a1c7cab125e7f96e929f2468b418d743a5bd50854d06fade2a03622718', 0, '2020-06-19 11:52:00'),
('95b20d07e884b25cceee7c14689d0bf8b992621b2215aea53578678f7ad525f9bbd05ea2a4fefd7f', '95e4d75172631a1303ab628069f191b96cad7288bacb8288b28515528d8f42fff2cc1a3b86dd362f', 0, '2020-09-19 18:07:24'),
('9a6087fa84c57a09ccabd59dc7b41ba264c73f3c68f4cf63203d3cd5c5e3742b6738026c2947ff02', '33f75bb109cf64ffe993275afa2bd3a76dea04b131cb23e578c293d1effa640035de46abca5ebbce', 0, '2020-07-10 17:59:13'),
('9ae88b732f7622111752b331c2471e6edafc0142d23a38d186de24544754779d20d9b0c34fdc958e', '46570efbf0cc0823f7a035721e961a8112a37a5cff16e018cf4f77b858a619a64be4d034c58fb6b7', 0, '2021-02-26 14:41:43'),
('9e29731823a376b0504639bc8bbae2b56444dcdf6713bcce67bb0d8ae62f191788149aa87a81a161', '988f0daf5284c3aa643035b6667aec1df9982b525d87d04081b9d962aad356d3400e0a0b0d5b6fd5', 0, '2020-06-19 10:24:39'),
('9e7500ae98e176877db73e209b5644837c57136db516813c6712f9316d037dd566f34756aa379902', '4b69914e986cbfdb462aad6ba0ac882a759481c6150ed0199be6deaa055e5dae425e1918dbcc0a10', 0, '2021-02-08 13:47:58'),
('9ed20849610a1c5893aa2e759d1f0066fc224701002d53d0c81c13200ab70e48e9874067bcce66a7', 'f6f0f112ec7fcff68da18439801a24bd5461cd0c9990e8fe6a2ee932f85d8428fa8dba261487de7f', 0, '2020-10-28 17:47:32'),
('a039090454ed146a9d4741e25819dd5e276d7a6c41c3b797c30c2246c84e0091f9b1032d1abdc5a9', '4b7d123dde92abc6dfe4d76cbed938007e8a56497050e804d80e3aa789ab71de60a52d3944210763', 0, '2021-02-12 12:40:17'),
('a2bf23fd8324dc8af30b47f7f1f5c1ed139be7eddc59be3de4a12865503fca0d45f4788c9b2c1fb8', '25cd19ff6b2e639e1aca4cad27bc2688da4010d46a485c04824d35cb96863596a8a5c909ce99fdea', 0, '2020-06-22 12:58:33'),
('a2fc0342045af01da7aad34f73a7bd1f4222f6e23343600b96226e1daaf724deb94d4e0d8dade3ca', 'd6201b98f979463ca94db967f619691f9d6411d392ce143b662dae66f5d502fee16827662e4a7a9e', 0, '2020-09-07 19:40:44'),
('a3e004121e24581ef08d4c6939a660ded34e4c28640e829e495aa21321fd0d8d701237407f1d628f', '57dd9fbc24cbdbfcd74e7c09183c7bae6a6f0d302c876ada8a1284d00ceb72542180b67a26f972ab', 0, '2020-06-20 20:16:34'),
('a545c1c4d78aac1dae4657c3438ac335a4fb58d280adf196942b26c603bb5e660d3b5d8af5e4e029', '9b12b370f3d74bc2d8d8936ca82207a769c9d81e965f2850e3e8b05087bc4cc08d276a04cf1f91a2', 0, '2021-02-12 16:23:21'),
('a6f69339816cde83a0cf0a31b8065e2a3cc0e9f5fd8a304603f29f85e3b4a03a2fec864f10b1d344', '32aae6d0bf12bbe8f963c5b0bad965173685d0f53e899302441cee12da14758846e941d38139238f', 0, '2020-08-19 09:56:50'),
('a797c3620daf7154e3594cbfb9860cdb8f3674bab26ea476d30363e032f98681906dfe9630782cdc', '0f741f6c042d69896ececee08291276eed18b52b66404037b85bb88453b0f5b0e938fc2618549f09', 0, '2020-06-21 00:25:44'),
('aab8f0126947db410eec2530b0c25a3578d3844775516d796dd45063b795f0c0986a888a5666608b', 'eb4c583659a8ed695c9ca889d2cc10453ea45fd38c38dcfbac6272198bcadb543416d8eef611e0e7', 0, '2020-10-17 14:35:15'),
('ab51a2be168f9092f017ad541dae8036f6d82e4ebeb859fbd9da04a30a311216c316e0c412f518dd', 'c3de66a252fa1fd9914bbe8aa981a4eed1b60d41fb07dd77c7dad1fb8c0eac9c6024e70cf94a1f80', 0, '2020-06-22 00:57:16'),
('ad3b21af6ff100d0c97c13688227fe3c4110bc0fec5a06d660fc867c22b273a3dd744cfcb832d41d', 'fd172d89ff1161645a512fa1329eb110b943efea01209ad7bfe49699dd02bbb4879ee3109e076e6a', 0, '2020-07-17 20:52:07'),
('ae07ea59ab1bab192d69218c6db20ab6ab368a38160888757c7030195d151c942bef5cb73a4d4997', '4ef1c6f8e1459d924d4982ddecaa4e0f7b9b85d9a0440b2f4f4b3b76cf164adcb17f6d96f6ba0cf8', 0, '2020-09-09 14:57:28'),
('b06b2007bc2f30f52216511615c99a263baa2eca397d4dda213e4f4efb37651af2c689162c70399d', 'ad80806c57ddbe7a4d55616ba4b93709960596ac3fc7744c8469a869135f4ac9103fb9abeaff5650', 0, '2020-07-12 11:03:40'),
('b0d3ad9b69ea423fdac494eb7f34717ad354d0bd39915af3d307f0cd7c9ae319f7e3c80f365e0adf', '5bd446a158ad44a7138aacac6fe30a66a34dae6a9ee4e5d70c4e4f49b497c681b7649685b5cd61c0', 0, '2020-12-01 12:01:02'),
('b0d97e04d645ef21fb1ad3b104f36b85773be959671ca20a4f7c0158b1143a04e9963bcbc42a603c', '68c1935747b662d06301a4988f6d5fe8ddae6dbe21dd36a75073f0b5b5e78d1fd647e05cbf91447b', 0, '2020-06-20 08:40:35'),
('b3b76984de6ac3147c84dd1b656041a4640f928bd6048b558fa30e5c5f7d51dbbb225507d5981013', '634ef852d12e15d6996c146b54ae1f170c4a62344049a8bd083ec9267e370a5751fece3a3c37da6b', 0, '2020-08-09 18:12:31'),
('b413909f12cf486f2c06de3eb75b12f67ebc7cc79e4daca4813fc58cc6a537e9f68a3aa77c4eb13f', '27d467b2eaee7e9313a81b95b7ce7e938f6e32b351cb8f1a2f7d56cbd9b7862ced6aa3c78663fe2e', 0, '2020-06-20 05:50:04'),
('b4df6243b1e08649a08f0bca0c3b71f99e4271ea144102a1958d1371768be488addf5b83cce204bf', 'b07a3b7d6c2cefc3dea0817a20fb17aaa31d485cfc896cca5557f12a3cf83595f15dc50ca43d163b', 0, '2020-09-08 17:21:19'),
('b4ebe274f5a9d1d04da7d6b28bdaaff5e9a110afb5b4efe680907c005fe1841ab6dd2977869fdb7a', '3549c992f49305a16919067a2c2dacc60e1720c3c5c42ed5047dfadee3bd7a4473262e0bfc2a44dc', 0, '2020-09-19 18:30:21'),
('b536a65cf1277e33ec089618b97193c5b0976fa94215024f154c795ed225b4ed6583d0596e4404af', 'a4dce591d3dd410064fbffdbbab29c9377b007731da1239fabd492db851adb0e62a86769882dde17', 0, '2020-09-04 19:23:57'),
('b5777293cb16e23d1c1ea879220dcb41682a3a5ee682feae3468f8341271f133537f9f3a766506b7', '6395ec77d703ecd0c7f987abbcee7e4bc362274c8251b17f3818ed64c0603bc02f208cfe1e090db1', 0, '2021-03-19 15:41:22'),
('b6a996f5b895b367da754013deccefd47912b12ac5841a88cc9e012ea405f458f7595d912d34b858', '6bac36d9a0530c5cdd0790d28548715aff9394d50fe4a986e478f50c0fb0e0e65a803207a620f3d9', 0, '2020-06-22 17:48:17'),
('b7f5a34037cfe1571b1df85d2600d22b2a613036a7d5b8bab20121618893635d36f3d534035ad93a', 'c79613ab3b960907fe2bef042c672c83bc4d171ee468a7b6b6dec2fb327f414acd3d5baeb13cc23a', 0, '2020-06-20 05:25:55'),
('b8456e4b256627c7d6e355e6819bfb7ebb9bd9f5afdafa5faf553bc6c5ee8e74af876c25728734be', 'bae14e5d8539ca061691338159fe544f7e69af1682a36ed67dbd18877f1927779957bb9fcd24b411', 0, '2020-06-22 14:53:52'),
('b96788d383e6022e6504ee6fbb985b561d50ffcb7b83a4ef3055c74c4b25867bc966bfbb5b7d0b8c', '8a8dedbd5e1c3eeabf3a581d7aa404a0a6097f1859364d2e9938d28967c77135098a19bb5cfd7399', 0, '2021-02-25 18:29:48'),
('b98b7f60b0754f53cfa4a9e2209fd026ced7d24f7396dc54cdf5aa86aff739bb41f961e019fd6d76', '58b018ef4491b8b59971c28887e858a76de3332b0e04ee9540a6a229b7bc302edad6d1f32ca4b30e', 0, '2020-06-24 11:33:58'),
('ba2b19fe40f28a5b16778b0fd0bd12527b0dfeacc8d6fff16fc08347e4e6ea884a543aa1ea545553', '0f89c097b0ea74f3bd62732e274125d03ad621643d77cc805b9ba83a0ed315a6105f2ad99aa02d2d', 0, '2020-09-08 12:33:33'),
('ba43b83bf86f4acc3f9e642f331f9408076d01b7a24fd5e951599e22c9d36bb2ce6a3bc3f28bad1f', '0d31150a89f7f0a8b93edc1dff3c15e4e2fe4f3174fd1295137da2068407981c13c34bc2c747a44f', 0, '2020-10-28 14:41:44'),
('bb90c96cf1e74c35737a2e3e0386b62afcd980901d25f0803556c2f9db8c7ec35b99927ee6de3171', 'dcce253763481aaad31061d672fe6241809c6b953b93ba4e24d5e746421520b3419f488174c34fc5', 0, '2020-09-19 17:12:06'),
('bd22109f526634261ba156e7e7d74cd65f0005b412160767ff02f1affba69cf8e6526e0623d2d1af', '0b21919fe80d0d985a32b8f08f9dceb953e92b3fdca92ec949cd72d0f746303e4246fd9f8cf4bcb3', 0, '2020-07-17 19:04:53'),
('bde324150adb7f88b3e3ddfaedcb6491ff5f5b1d02f5a953db45f4372be497cdd6919b7604fc7d28', '3cc4441a5acfa68afc51725505c421c4b25ee3b49d8c982101647c21e74354a1c262744900fbda23', 0, '2020-09-04 17:54:08'),
('c01e5d40eb31aa98f70dbb546d25ad3dc4d671356f84825495742cc1c645cba13843fce1479787af', '83f665d248f33aaecc5d7a932305b1ba524aeb6bd238c0a564f7cd64c84a384a62f521bb74d6a976', 0, '2020-09-08 16:56:52'),
('c1202e0eec87c62c9bfc8ae22e9fab8001a9334dc2fdd9dde69dfa703a358d460b706a5d934dd3cd', '08b0edba0bdf09f8a3365ae473b5b0005b0bd569cf7f8a514adf2fa9d31f3812aec59a97cd19f0dc', 0, '2020-09-20 19:06:32'),
('c261ed1801e3ea4edcc958dc2f790546e6a5d6e0e2ac7b9dad206a73c47428f397eece6cc1bbd6ed', '628378fe0d3dd923cfc5d4e1e1bee360631ad5b9c18f68a9716cbcd653279e2c898523a915af359c', 0, '2020-05-29 10:57:43'),
('c306d79e4f87e33735b3069ce10c8ad331d9c51990f7ab904e182ab301d97d06b30065385d9eb2bf', 'b3997942dedd09894835b12e9f46756c8fae108f266e36220fbf8990a575eaafd96703a6b724c877', 0, '2021-03-08 18:19:13'),
('c56b3988904b312d5343944cf62d09a8d49aacd0f0e8b57581fd83c6772de11dcc1d9106abcda30d', 'f45f379887ab750a4bc981c4252051a0f53cd35f8e7822ce0f7e695671f9e684875d8b291d9c74cb', 0, '2020-06-23 14:56:23'),
('c7e1561133677317f05645d9f2674c1b046285f562b20d6900c76ba0d781bf2c138dd17719a93b1f', 'eabcd72d7d79a50616381f8dc23482d85cc0297ec7666635678f364e7332cb9746097524371cf70c', 0, '2020-06-01 11:20:16'),
('c9382e6502207a8c93ef96b78aa63c825fd8c062765ecf067e40fd78c94781054652b14e7e1ae258', '39be0888c917c61252ca3d8a39ae72d6f7ed4b3ee522008c359d5fc868106c67367da03de56e2300', 0, '2021-02-22 19:13:21'),
('c991f137561baf25ffd70474e4ce1c6d3c4bc4e563d72d12f91fcdd473f45501c88822fb284c7215', 'd3f84f19d4a5dd3e6e3b3080ae24e6db841b0a85e381814fe93408fae075770e7efe5a2641de636c', 0, '2020-06-23 13:37:29'),
('ca2483ac67d9c00f3e90df2f35300137255561dfe4d7787fc10331d0cbb3301a8837f494bf0754ab', 'd68ba8df1adece1bdf30fa68b6ed4871e90a0520e71819c4f2395d9e3f226043750a1ee13dc231c7', 0, '2020-09-04 19:32:58'),
('ca32fb442b0ffc61d8cf2bd8f6f9b1b8dab7954bd1cd444c0547ecf1b59f9e9d269976cf989d2c19', '12aaa962ed8babde346e00aa2877ad785288161d0a060f7b57855233f6087545639df1dc65b3191e', 0, '2021-02-25 17:45:31'),
('cbe1e3898645b76fdc02254a5a7ac713c949fc225153d50e3625e9d6a64d33ed8801ebeb776843e3', '66afeb85833acac14c56fcadbaaaa6c81684e4818a38870b55b10407f858a0ed94fe4fed39ee1dc3', 0, '2020-06-24 13:10:09'),
('cd459665c1b0ff8c85196ead9dc757ec92cd5c7dedfd58ae806200fe976ff825f8748cf6ecc16617', '5f753fb5d5de2118208738e94e8b8c5a60b40cdfeae4c5ccc54f745cb1d4b181e52dd8f05a8a74c3', 0, '2021-03-07 16:06:49'),
('cd49329a63b6b54dcb47ad55c22aa387799c218cb96a2145eb89057f49761488e2a4772ecf539b51', '6c0ee1bda8636dba2d17a4c41a77a815315f31991527d3d44d4b73aac6c5ba88b0e0738d1bce6660', 0, '2020-06-15 07:18:55'),
('cd576dec5358d8e4da28617b3a30875a28dc09e86531291b04e6213c21b42eef1d77c45e6442d5e5', '6043272343b3941a161e1fc108aab225bb160ced693bb3117be39ed8fed3e0606051ba0df006ec9f', 0, '2020-11-25 13:41:34'),
('cee804fc02ca80342235f68737b23d4f813f33ce8819a7e4784eed1a60ecd622627ac0ebb496fee0', '763202d390c322f38c59d27b2db1dc2cf2cfb5602d80c40de0c3e0b7e506cbe91727b36e99276191', 0, '2021-01-22 15:29:21'),
('cff02362e5a5c8351166673548ced1ac1ee4f1f5efa94bc756bb0b1ccd4ef6d7fa591c61a945d9f0', 'bd93146a5ee80852e19469e4ae858bb7f63cbd077a0bd218a30768696e98102b3ef5094e0f8511ea', 0, '2021-03-10 12:32:32'),
('d302a97480ac12c3c162c26354121300415ae8938d9ecfe6bc528ba8b933c5ebfafa6a0e3dcea307', 'd9f25860ddd20466ff1f9de8b71f7980251882008e14a2877ae4c4663381cbd6a247c0723b8f3bd1', 0, '2020-06-02 07:35:06'),
('d3fae875494eae8b218e789de8deb03aed36c2c6e3cedf93c6585fa513702ae57674dd8b19ba72f5', 'd47996e8ac2c7177d97727169d3f27f617854929d6f28752ca81da0961615b43453ef15f40e1047e', 0, '2020-07-10 00:10:48'),
('d4671987c3d30828a8450845ea8ee5a0bce050b03126eec26ff627a53c9f336409e0ecef2652cb7d', '4a5f4be63c8f9af5ccd2515760fd514e25492425277d8afdd9cb7f6ed38501232ad18e215814c403', 0, '2020-11-29 14:28:21'),
('d6106c650d7dbea5f3cae1ade3591b5ec99dc588ceacec92525fa2202c58e1d7a430a2233bb19dd7', '1d36a460ad2e737ec7ccfa3595a508cf47cd58039281e11bcb0002742644a0a7d35fdf69a855f830', 0, '2020-09-04 11:06:26'),
('d7d70ebf958955b40746d7c2812dbd09d7552e69027a4c8d274489c90f4b43273fb538ca71aada44', 'd3eee00f7f9a7f1725254c96658b7e4d2cd2a1b68b0cddc0ddede3debb0ecc8ef40c13a22effd676', 0, '2020-10-08 20:23:18'),
('d8e0f3c595b5d1921fa5f5d49445b1f029edcbae6cadc12c7071b4686c0522ac64f2ed48b1222f6e', '8e33c6186df0c4cc61874efb60990c90c64412e6cec729c49336b72724bcdfc6d93d37d10c2a03f8', 0, '2020-07-08 15:31:19'),
('dc614a5df10818f9cde49016cc7fef3d9800554121dfb346acdf89066168e29e0f0f45895857a72f', '416924686b82096f06aafda6f5d8703efd03fe7504df01c4a0747780dd133cf69fa1cb78b1a9aa14', 0, '2020-05-29 05:22:02'),
('dce2cea3694028fa678a63c25eef4e1cd0126c1d843e6934221456ae3a66db1de6056ab9a24579bd', 'da675fe78555898b5d0a410a37e2bbbca8e76cd59ba3d63af884ce454f3b1777677ee2fb0b3467f4', 0, '2020-09-26 13:38:20'),
('dce7d291b354703a6d7b9f34fe938418dff1e4ec35081923721e20dee22bd38ab56459b66b66b905', '6256c9b3d01b889859e56b70b329ea48a5380045c26d5749e773f24b02c42db00b911a1f3bc7aeaf', 0, '2020-06-17 11:53:14'),
('ddfa19976ad7063fb15aa979f98b1d4e80d45ae4fa64f57d4f701b6547901e12352e32ade610e104', 'b420af2cc04966fa842434da9de5e0e4e0c2261ab931c0cadc17048e935b773cc64ce684967998a8', 0, '2020-09-08 17:04:49'),
('de456fc6b06f7fed6e38abdd245d7082d08b4096438a93579d8489dba20f2c621aa20e93c3db5ce8', 'cb90e3544bb38d7c52bc2e50a83bc8dd8e39dc9af401f4387fdba2b9a69c06586cfec71332dc32c2', 0, '2020-09-03 08:39:14'),
('de52cf082a59e62ff09717d254160f19de1429f5aa93121b89aa0171541848a895c6b9a991f22afc', '9fd0a9247fc4f47644fa798cfcb4c96ad9833a940f7fc5286e836bc13d3df5f869576fd0b4a3ebed', 0, '2020-06-20 05:00:26'),
('dff9951020d0a426971a2b5c89ce4eb526a85847e3f952125b89bfddd98e20ae91c9b79d6a0ded10', '00787cd67244df3f9dd6bd19611bca78cb4f00503cd50f9c6f4abcd1e3b49958ba8f9b75e081556e', 0, '2020-05-29 10:58:49'),
('e08d2e531b694b7a994ac33f563456c8d69cec0f3f3824b2511e01ceb40507072dac38edc0e1a7b2', 'edcbe7931eef29a84a4a260aecf3653d1972a6212503ebcfe202a85856f2a6b9166bcd1fa390d59e', 0, '2020-09-18 17:13:37'),
('e12e50169208212c8141b461c0b713028dd9b184912523b59b15413955132b93e2627c04e8c1b84d', '837ced7ad523fd0a719f7ab916250612fe87f9c9113df51b2d214d5216804ee2cbe9ecface4e7ec4', 0, '2020-06-20 10:59:06'),
('e273f06d6e7b37b14cdcfbeaf4d48716f04e5bf0f687b8c8866786666a4eb39cd5e4229548798d28', '83fe41b38a08d56f3d536389fbc250ef3a5898521181e43f162046eac7e6f3fbf338ead83c31698c', 0, '2020-06-20 07:40:49'),
('e397a38b2026bd0ee776c6d47daf3c3a39042a0eae27557b62fcc6b5025979ce46f02def347a2c89', '1ea60e240b2fe0eb410fd7cc23d5fced876bc39f0f379e7a601592abfa9597b2e936bae60d0c6e5a', 0, '2020-06-22 14:19:06'),
('e39af145ce7ed5b6c7b1385466445456713e0ff43ef482e17e5e03d72a7636a98beadcf1d576090d', '7710d9b1b4e757fbf610b8cdab44f04b70cc103e513422e1846d97185d5e97fe9c7e5e62529d4bf1', 0, '2020-06-19 12:59:10'),
('e59489d0175a698afc70ffed769765e62deefb794c6683444b936740818db20b957cad246e630225', '3c5368edab43388e2ab9081f63eecc030646010d9ce21466dd00f676fa1e68a55cb85009fde33daf', 0, '2021-02-24 08:29:40'),
('e664ddff2ad06174d796e6158b45e0fae57f338c20c6c6cb54a9a7db1bc306eac453c66b93b1fe7d', '4c94df2f0975ad08aefbaf20474b41480fdb2ec28ad509eb4ce6912649ae7c1b695607432adb1d6b', 0, '2020-06-19 12:02:50'),
('e6f3246411d2a47ce8d11a309cf3501db53cd5fa0ddac25a00979f51c10b95bf8d608fea7e6c8600', '8d0aa8961046a96605240aad4ec1a2b47a31936a35cfb9c1b37db8170e71f06f9227d7ae4642d7e0', 0, '2020-06-02 10:20:10'),
('e8d484017bd1001502e665abd5dbea57444470b64b7db084645ce4200038d8485e2ccb8292b40906', '94f579637c0bf5f826b35075c98879045bdf7f122c01a0abb35ed64c3dd0c2d725504577c784b228', 0, '2020-05-29 10:56:55'),
('e9de9b15bf3bf96de5e1b5470f9bca492ef13cd3bfbe0a12613a18de4f2d51837f61b9811ef58bec', '240cd07a4e6c23f92847caafa48cb1e0d17893812834b36f9f6d3da6404950e24878fcddf1196cfc', 0, '2020-09-21 12:26:29'),
('ea3979b91771c3bc8f17195d8cc7f05fbe7054126b92fb6e60e15c86333abf85080686d81de43ff3', '9aeed2e01bc102c5c874a0bf9cc74add2fe847f6b432fa217c8f3525c18cb99f0dbcd1ac6211996b', 0, '2020-06-02 08:11:25'),
('eacd144c904dd6fcc33d496c10293ea18442123d2eb74fda8ea9a7c2f360f7be3ac0313e759e0ae1', 'c2bfb51804592345ce72efe96b91aab3729d81ca35b86b1670acd1f38d4f5c26d048ca90eb876143', 0, '2020-06-20 11:31:10'),
('ec3d31843d7f5865465c9e680e885a683c59bf7535ec2c4be20ec27d2c0c9814e002c5d712e897c9', '4a5fc3f846569d7e91ac331ef26492706c5e538b3e5b28beec973105c5b1779be3e214aa7f53ce5e', 0, '2020-12-18 14:05:31'),
('ee32fa035a31779ada9787d06903a1b8e9a2dad98a5ce6672103dd93509191b4e5a62f2ba058a6c1', '501ccf68b1fdd4f666e2744dfbe2f7ae0afd511b0440203f164336d7b0e5d88d5c7260b810a72350', 0, '2021-03-09 13:41:16'),
('f0d1916a3b739546cca7998b67a3fd61a6a9e61a180a24b85b54f0caeee1fe0b6f36b0248afa38f7', 'bd8e3d5aa8972df253274e3e737f2146c90b14965b1ae560413d38e359a9b4922a4ca895f6b87aa5', 0, '2020-06-04 02:18:42'),
('f0d80c3b2d8d5a591a0998697a6b2f4fd9feb4612470b7ba9958b8a13a56e8de60f1ae9210b8d458', 'e9cbe090ba196d9d570428cd4af11e0b84543a579e2646b7ff801c8ad5677dc38effe9460567166c', 0, '2020-07-31 12:38:45'),
('f0de78bd99cb1d62c50c8c2963b16ce3b9c6152082b178ba8582d38e7d73b2928ea58e30c4157620', '3518c00227e38cd391c5759b07ece62d7cc6bea14c74614feac9ed6c6f8d7082c69e503df46d6315', 0, '2021-02-06 17:09:59'),
('f1b48397102491a22441d10d89b699832bce5499b796547853b809772244685ca23793d92bac1306', '8284052f0c0662c6aa685b478141e94394b24d0335e1c80064ae17558cf330ac1b8427dd8628b184', 0, '2021-01-23 14:14:47'),
('f35c943846d3925d257ced342e0aec89656df4d81bb91656e3de9469ac4921ec3724feb3ed3a5178', '9b876811f34361101dc2cbf10ead88deda39d04b6a256ad22f393682c1154e8e619f20e0177f2511', 0, '2021-02-26 11:18:26'),
('f51ef29298baf621fd4a798556b709dede2e04fe1e438be37a3db4348e186fa977dabb3390f2b6f5', '3e13480d9b50e1efaaf2a3192a63417a331f23a6c4aa2f91287845a343eb131a3da9e53082f6cc9b', 0, '2020-06-02 07:16:11'),
('f6e443e16277a9f545c35d2bbc2d9771049fcc4b2f1c0a9a23e165472211853745bfd8f26b60d555', 'e4e8927327371aa2d74ef3d7482fa7c864b4c785a6633c50eeec58f2a26e63bd71dc418668b398f1', 0, '2020-06-02 07:23:47'),
('f80ef51460154ff2316fb317750cbc3f71f5b960bc7fe737b8afa1bd79f141b11944ddc7c756cb80', 'ebdc3e6ad34b5b9675e98af17b76bb8a0313a65e75dd7e79b9a1adf3efaa10d09286ede55e299db2', 0, '2020-06-20 11:10:51'),
('f842334392ac214e5c562ad34b80313b17750e2bc3d9bad8dda802071b995ab5e6517634e21a0adf', '2ae54409ecaa20c9d4ef0398bc42cd9a34cecdbbb0440fb1f24247dc1cdc5b43848d134710a9ff54', 0, '2020-06-20 05:42:28'),
('fc9c2fdef3f9e9ea4e99b644fad9e43ef84b009bae11820fe356eb9f83c13c326b2f1b88a32c1da1', 'c7b2c18053845425e5a2647b5f1183da557413bed33fb69682b6820face45fc1d53e2da7fb4e08b8', 0, '2020-08-20 12:34:41'),
('fd0e554a29ab436f5c6c5899dc1a2686a258e1db1f2dccab13127013d134f85863db7ed4bb359a81', '631131936392989ed6dce080febf0a69e48ac66c19c29fd3c89b65111e903e61d92d221073b8ac05', 0, '2021-02-12 12:04:25'),
('feeadfe6009380b518ed70c7918de81b228b759dfc28fd199fae292859ee4d867735cab07f6bdaf2', 'eaf18739539dc946faa9cc16201108f342256dc7d9a93a256d5f1c87fbea320101d3bb61c0667a01', 0, '2020-09-26 13:54:36'),
('ff5ea39c052cb5a36ff5d23d20818ab6ba73a36a4d82a1f5eef37838d4d9082277323fa6f20fd689', '0805c0ae0c3fa759f8b95a05adc3d11c5bac78e4bba88d8529aced693a90727c9bbb54a629841673', 0, '2021-03-11 13:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=photo;2=video;3=live',
  `post_text` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '1=active; 2=block',
  `log_message` text COLLATE utf8mb4_unicode_ci,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitudes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `type`, `post_text`, `reference_url`, `thumbnail_url`, `file_path`, `location`, `status`, `log_message`, `latitude`, `longitudes`, `created_at`, `updated_at`) VALUES
(73, 225, 1, '1', 'test1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/225/1585984607_document0.jpeg', NULL, 'assets/post_resource/225/1585984607_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-04-04 07:16:47', '2020-04-04 07:16:47'),
(74, 225, 2, '2', 'test2', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/225/1585984679193BB680-ED01-49F7-A9D4-84582268AD38.mp4', NULL, 'assets/post_resource/225/1585984679193BB680-ED01-49F7-A9D4-84582268AD38.mp4', NULL, 1, NULL, NULL, NULL, '2020-04-04 07:17:59', '2020-04-06 04:34:17'),
(75, 225, 4, '1', 'asdf', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/225/1585984752_document0.jpeg', NULL, 'assets/post_resource/225/1585984752_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-04-04 07:19:12', '2020-04-04 07:19:12'),
(76, 225, 3, '1', 'test', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/225/1585984985_document0.jpeg', NULL, 'assets/post_resource/225/1585984985_document0.jpeg', 'Rd No. 3, Dhaka 1216, Bangladesh', 1, NULL, '23.822159118893605', '90.36664590239525', '2020-04-04 07:23:05', '2020-04-04 07:23:06'),
(96, 225, 3, '2', 'test video', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/225/1586094681B8D51CC2-DA72-43DB-9861-94BE9ADD37BD.mp4', NULL, 'assets/post_resource/225/1586094681B8D51CC2-DA72-43DB-9861-94BE9ADD37BD.mp4', NULL, 1, NULL, NULL, NULL, '2020-04-05 13:51:21', '2020-04-05 13:51:22'),
(97, 225, 1, '2', 'test vid 2', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/225/158609511866EC5CFC-800B-4BB2-86F2-97EE5AB6E607.mp4', NULL, 'assets/post_resource/225/158609511866EC5CFC-800B-4BB2-86F2-97EE5AB6E607.mp4', NULL, 1, NULL, NULL, NULL, '2020-04-05 13:58:38', '2020-04-05 13:58:39'),
(98, 225, 2, '2', 'test vid 3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/225/158609532920A5A368-ACBE-407D-BDA9-C336F587E72A.mp4', NULL, 'assets/post_resource/225/158609532920A5A368-ACBE-407D-BDA9-C336F587E72A.mp4', NULL, 1, NULL, NULL, NULL, '2020-04-05 14:02:09', '2020-04-05 14:02:09'),
(110, 255, 3, '1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513906_document0.jpeg', NULL, 'assets/post_resource/255/1586513906_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-04-10 10:18:26', '2020-04-10 10:18:26'),
(111, 255, 3, '1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513938_document0.jpeg', NULL, 'assets/post_resource/255/1586513938_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-04-10 10:18:58', '2020-04-10 10:18:59'),
(112, 255, 3, '1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586514006_document0.jpeg', NULL, 'assets/post_resource/255/1586514006_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-04-10 10:20:06', '2020-04-10 10:20:07'),
(113, 255, 1, '1', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586514129_document0.jpeg', NULL, 'assets/post_resource/255/1586514129_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-04-10 10:22:09', '2020-04-10 10:22:09'),
(114, 255, 1, '1', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586514165_document0.jpeg', NULL, 'assets/post_resource/255/1586514165_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-04-10 10:22:45', '2020-04-10 10:22:46'),
(115, 255, 1, '1', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586514207_document0.jpeg', NULL, 'assets/post_resource/255/1586514207_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-04-10 10:23:27', '2020-04-10 10:23:28'),
(116, 255, 2, '1', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586515113_document0.jpeg', NULL, 'assets/post_resource/255/1586515113_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-04-10 10:38:33', '2020-04-10 10:38:34'),
(117, 255, 2, '1', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586515368_document0.jpeg', NULL, 'assets/post_resource/255/1586515368_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-04-10 10:42:48', '2020-04-10 10:42:49'),
(118, 256, 2, '1', 'Test', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/256/1586515731picture_1586515690.jpg', NULL, 'assets/post_resource/256/1586515731picture_1586515690.jpg', 'Mountain View', 1, NULL, '37.421998333333335', '-122.08400000000002', '2020-04-10 10:48:51', '2020-04-10 10:48:52'),
(119, 255, 4, '1', 'education', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586523840_document0.jpeg', NULL, 'assets/post_resource/255/1586523840_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-04-10 13:04:00', '2020-04-10 13:04:01'),
(120, 257, 1, '1', NULL, 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/257/15865264060008b640-ec15-4bf6-a846-91a923ae83f4.png', NULL, 'assets/post_resource/257/15865264060008b640-ec15-4bf6-a846-91a923ae83f4.png', 'Dhaka', 1, NULL, '23.79188166666667', '90.42484833333334', '2020-04-10 13:46:46', '2020-04-10 13:46:46'),
(121, 257, 1, '2', NULL, 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/257/1586533816video.mp4', NULL, 'assets/post_resource/257/1586533816video.mp4', 'Dhaka', 1, NULL, '23.79188166666667', '90.42484833333334', '2020-04-10 15:50:16', '2020-04-10 15:50:16'),
(122, 257, 2, '2', NULL, 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/257/158653401194af4214-aeb3-482d-bc0e-f7e677017d09.mp4', NULL, 'assets/post_resource/257/158653401194af4214-aeb3-482d-bc0e-f7e677017d09.mp4', 'Dhaka', 1, NULL, '23.79188166666667', '90.42484833333334', '2020-04-10 15:53:31', '2020-04-10 15:53:32'),
(123, 257, 3, '1', NULL, 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/257/1586534075picture_1586534054.jpg', NULL, 'assets/post_resource/257/1586534075picture_1586534054.jpg', 'Dhaka', 1, NULL, '23.79188166666667', '90.42484833333334', '2020-04-10 15:54:35', '2020-04-10 15:54:35'),
(127, 258, 3, '1', 'test', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/258/1586537671_document0.jpeg', NULL, 'assets/post_resource/258/1586537671_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-04-10 16:54:31', '2020-04-10 16:54:32'),
(128, 254, 2, '1', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/254/1586537879_document0.jpeg', NULL, 'assets/post_resource/254/1586537879_document0.jpeg', 'Khilbarir Tek Rd, Dhaka 1212, Bangladesh', 1, NULL, '23.791576045598678', '90.42711161077021', '2020-04-10 16:57:59', '2020-04-10 16:57:59'),
(129, 254, 2, '2', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/254/1586538726trim.4F1A648E-83F3-4D35-85D1-AD4D75EC4272.MOV', NULL, 'assets/post_resource/254/1586538726trim.4F1A648E-83F3-4D35-85D1-AD4D75EC4272.MOV', NULL, 1, NULL, NULL, NULL, '2020-04-10 17:12:06', '2020-04-10 17:12:07'),
(130, 254, 3, '2', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/254/1586538809trim.791D0FFE-FEB9-4F78-8DAD-FB12A464299D.MOV', NULL, 'assets/post_resource/254/1586538809trim.791D0FFE-FEB9-4F78-8DAD-FB12A464299D.MOV', NULL, 1, NULL, NULL, NULL, '2020-04-10 17:13:29', '2020-04-10 17:13:30'),
(131, 254, 4, '2', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/254/1586538855trim.AB21BC0C-1BC3-4693-840E-2E32B2343FCE.MOV', NULL, 'assets/post_resource/254/1586538855trim.AB21BC0C-1BC3-4693-840E-2E32B2343FCE.MOV', NULL, 1, NULL, NULL, NULL, '2020-04-10 17:14:15', '2020-04-10 17:14:15'),
(132, 254, 1, '1', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/254/1586538911_document0.jpeg', NULL, 'assets/post_resource/254/1586538911_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-04-10 17:15:11', '2020-04-10 17:15:12'),
(133, 225, 1, '2', 'test gallery vid 2', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/225/1586539056trim.8834925A-DD31-4F7B-915B-0F848F3603E8.MOV', NULL, 'assets/post_resource/225/1586539056trim.8834925A-DD31-4F7B-915B-0F848F3603E8.MOV', '67 Jonaki Rd, ঢাকা, বাংলাদেশ', 1, NULL, '23.795003084728723', '90.36281134933233', '2020-04-10 17:17:36', '2020-04-10 17:17:36'),
(134, 259, 1, '1', 'kayboad', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/259/1586581580picture_1586581412.jpg', NULL, 'assets/post_resource/259/1586581580picture_1586581412.jpg', 'Dhaka', 1, NULL, '23.790957874322526', '90.42814426124096', '2020-04-11 05:06:20', '2020-04-11 05:06:22'),
(135, 259, 1, '2', 'test', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/259/1586584249video.mp4', NULL, 'assets/post_resource/259/1586584249video.mp4', 'Dhaka', 1, NULL, '23.7910066', '90.4281509', '2020-04-11 05:50:49', '2020-04-11 05:50:49'),
(136, 255, 2, '1', 'test health', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586584350_document0.jpeg', NULL, 'assets/post_resource/255/1586584350_document0.jpeg', 'Gazi Ln, ঢাকা 1212, বাংলাদেশ', 1, NULL, '23.79151438199547', '90.42706131935118', '2020-04-11 05:52:30', '2020-04-11 05:52:30'),
(138, 260, 1, '1', 'test', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/260/158660494415e16d2a-13ea-49e9-8b94-8c098f5da2d9.png', NULL, 'assets/post_resource/260/158660494415e16d2a-13ea-49e9-8b94-8c098f5da2d9.png', 'Dhaka', 1, NULL, '23.8016605654393', '90.42938545346261', '2020-04-11 11:35:44', '2020-04-11 11:35:44'),
(139, 257, 1, '1', NULL, 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/257/1586606757picture_1586606725.jpg', NULL, 'assets/post_resource/257/1586606757picture_1586606725.jpg', 'Dhaka', 1, NULL, '23.79188166666667', '90.42484833333334', '2020-04-11 12:05:57', '2020-04-11 12:05:57'),
(140, 257, 1, '1', NULL, 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/257/1586606757picture_1586606725.jpg', NULL, 'assets/post_resource/257/1586606757picture_1586606725.jpg', 'Dhaka', 1, NULL, '23.79188166666667', '90.42484833333334', '2020-04-11 12:05:57', '2020-04-11 12:05:57'),
(141, 256, 2, '1', 'test health', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/256/1586625488picture_1586625457.jpg', NULL, 'assets/post_resource/256/1586625488picture_1586625457.jpg', 'Mountain View', 1, NULL, '37.421998333333335', '-122.08400000000002', '2020-04-11 17:18:08', '2020-04-11 17:18:08'),
(142, 256, 4, '1', 'test', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/256/1586636193picture_1586636092.jpg', NULL, 'assets/post_resource/256/1586636193picture_1586636092.jpg', 'Mountain View', 1, NULL, '37.421998333333335', '-122.08400000000002', '2020-04-11 20:16:33', '2020-04-11 20:16:33'),
(143, 259, 3, '1', 'test', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/259/1586638634picture_1586638621.jpg', NULL, 'assets/post_resource/259/1586638634picture_1586638621.jpg', 'Mountain View', 1, NULL, '37.421998333333335', '-122.08400000000002', '2020-04-11 20:57:14', '2020-04-11 20:57:14'),
(144, 254, 1, '2', 'test tag', 'https://party-app.s3-us-west-2.amazonaws.com/assets/post_resource/254/1586674835trim.6A7F1421-DCFC-41C2-A621-3C11877B36BC.MOV', NULL, 'assets/post_resource/254/1586674835trim.6A7F1421-DCFC-41C2-A621-3C11877B36BC.MOV', 'Khilbarir Tek Rd, Dhaka 1212, Bangladesh', 1, NULL, '23.791499963138754', '90.42711362242699', '2020-04-12 07:00:35', '2020-04-12 07:00:36'),
(149, 260, 2, '1', 'test', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/260/158671355328035474-44ca-4daf-ad29-1aa64cff51f9.png', NULL, 'assets/post_resource/260/158671355328035474-44ca-4daf-ad29-1aa64cff51f9.png', 'ঢাকা', 1, NULL, '23.7915946', '90.4270779', '2020-04-12 17:45:53', '2020-04-12 17:45:54'),
(151, 258, 10, '1', 'Hi Breanda, posted this to test the app.', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/258/1586843427_document0.jpeg', NULL, 'assets/post_resource/258/1586843427_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-04-14 05:50:27', '2020-04-14 05:50:28'),
(152, 258, 11, '1', 'hi this is a test post', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/258/1586846511_document0.jpeg', NULL, 'assets/post_resource/258/1586846511_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-04-14 06:41:51', '2020-04-14 06:41:51'),
(153, 265, 13, '1', 'puppy', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/265/1586847049_document0.jpeg', NULL, 'assets/post_resource/265/1586847049_document0.jpeg', '3005 Triumph Dr, Alameda, CA 94501, USA', 1, NULL, '37.782235277471436', '-122.26493898779154', '2020-04-14 06:50:49', '2020-04-14 06:50:49'),
(155, 255, 1, '2', 'test', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586894325trim.34532EE4-1F44-4C8F-B4B5-EB15B8392071.MOV', NULL, 'assets/post_resource/255/1586894325trim.34532EE4-1F44-4C8F-B4B5-EB15B8392071.MOV', NULL, 1, NULL, NULL, NULL, '2020-04-14 19:58:45', '2020-04-14 19:58:45'),
(156, 268, 14, '1', NULL, 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/268/1587022314569036fc-b288-45bd-8e28-439a204e22f5.png', NULL, 'assets/post_resource/268/1587022314569036fc-b288-45bd-8e28-439a204e22f5.png', 'Dhaka', 1, NULL, '23.7426951', '90.3847528', '2020-04-16 07:31:54', '2020-04-16 07:31:55'),
(159, 262, 2, '1', NULL, 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/262/158737746172a1d33f-552b-4dee-a067-e00dd73dff59.png', NULL, 'assets/post_resource/262/158737746172a1d33f-552b-4dee-a067-e00dd73dff59.png', 'Dhaka', 1, NULL, '23.79188166666667', '90.42484833333334', '2020-04-20 10:11:01', '2020-04-20 10:11:01'),
(162, 267, 3, '1', 'gggh', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/267/1587405033c62cdadc-ce8d-4aed-a559-359ff9c882a1.png', NULL, 'assets/post_resource/267/1587405033c62cdadc-ce8d-4aed-a559-359ff9c882a1.png', 'Dhaka', 1, NULL, '23.79196434', '90.4270292', '2020-04-20 17:50:33', '2020-04-20 17:50:34'),
(163, 255, 2, '1', 'gggghhhhh', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1587452296picture_1587452230.jpg', NULL, 'assets/post_resource/255/1587452296picture_1587452230.jpg', 'ঢাকা', 1, NULL, '23.791644151633893', '90.4271424561739', '2020-04-21 06:58:16', '2020-04-21 06:58:17'),
(164, 255, 3, '2', 'test', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1587452442c44790d2-9efc-40b5-a542-7e67e75714d4.mp4', NULL, 'assets/post_resource/255/1587452442c44790d2-9efc-40b5-a542-7e67e75714d4.mp4', 'Dhaka', 1, NULL, '23.790142742740453', '90.42702544480562', '2020-04-21 07:00:42', '2020-04-21 07:00:43'),
(166, 261, 2, '2', 'Ultimate Dj Machine', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/261/1587533854asparagus-tasty-vegetable-260nw-1096709429.webp', NULL, 'assets/post_resource/261/1587533854asparagus-tasty-vegetable-260nw-1096709429.webp', 'Confidence Mall Hall', 1, NULL, '24.1746', '89.5957', '2020-04-22 05:37:34', '2020-04-22 05:37:34'),
(168, 225, 13, '1', 'test', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/225/1587536037_document0.jpeg', NULL, 'assets/post_resource/225/1587536037_document0.jpeg', 'Begum Rokeya Avenue, Dhaka 1216, Bangladesh', 1, NULL, '23.807591025230042', '90.36788877099752', '2020-04-22 06:13:57', '2020-04-22 06:13:57'),
(169, 255, 2, '1', 'ffff', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1587556396_document0.jpeg', NULL, 'assets/post_resource/255/1587556396_document0.jpeg', 'Khilbarir Tek Rd, Dhaka 1212, Bangladesh', 1, NULL, '23.79163065314327', '90.42699024081232', '2020-04-22 11:53:16', '2020-04-22 11:53:16'),
(170, 255, 3, '1', 'ggvvv', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1587556871c908cc3c-feea-4063-bb7a-773ccf638802.png', NULL, 'assets/post_resource/255/1587556871c908cc3c-feea-4063-bb7a-773ccf638802.png', 'Dhaka', 1, NULL, '23.791853684842753', '90.42707439512016', '2020-04-22 12:01:11', '2020-04-22 12:01:12'),
(184, 261, 2, '2', 'Ultimate Dj Machine', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/261/1587618492Smallshorttestvideo(1).mp4', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/261/2611587618492thumb.jpg', 'assets/post_resource/261/1587618492Smallshorttestvideo(1).mp4', 'Confidence Mall Hall', 1, NULL, '24.1746', '89.5957', '2020-04-23 05:08:12', '2020-04-23 05:08:12'),
(185, 255, 3, '2', 'fun video', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/158763121191e1ade5-f788-45af-87b4-aab080731dcc.mp4', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/2551587631211thumb.jpg', 'assets/post_resource/255/158763121191e1ade5-f788-45af-87b4-aab080731dcc.mp4', 'ঢাকা জেলা, ঢাকা, ঢাকা বিভাগ, Bangladesh, 1212', 1, NULL, '23.7916356', '90.4270452', '2020-04-23 08:40:11', '2020-04-23 08:40:12'),
(186, 255, 13, '2', 'coxexbazar', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1587631339c3db0e03-14c9-4039-a1ad-e6393b33bc28.mp4', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/2551587631340thumb.jpg', 'assets/post_resource/255/1587631339c3db0e03-14c9-4039-a1ad-e6393b33bc28.mp4', 'ঢাকা জেলা, ঢাকা, ঢাকা বিভাগ, Bangladesh, 1212', 1, NULL, '23.791642', '90.4270379', '2020-04-23 08:42:19', '2020-04-23 08:42:22'),
(187, 267, 1, '2', 'sanitizer', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/267/1587633240trim.4AEC50D3-E6D4-45E3-895D-7A0EF3A5E0A2.MOV', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/267/2671587633240thumb.jpg', 'assets/post_resource/267/1587633240trim.4AEC50D3-E6D4-45E3-895D-7A0EF3A5E0A2.MOV', NULL, 1, NULL, NULL, NULL, '2020-04-23 09:14:00', '2020-04-23 09:14:01'),
(188, 267, 1, '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/267/1587635396_document0.jpeg', NULL, 'assets/post_resource/267/1587635396_document0.jpeg', 'Khilbarir Tek Rd, Dhaka 1212, Bangladesh', 1, NULL, '23.791572057406317', '90.42714178562164', '2020-04-23 09:49:56', '2020-04-23 09:49:57'),
(191, 255, 2, '1', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Go', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1587889253_document0.jpeg', NULL, 'assets/post_resource/255/1587889253_document0.jpeg', 'Gazi Ln, Dhaka 1212, Bangladesh', 1, NULL, '23.791453945500248', '90.42713675647973', '2020-04-26 08:20:53', '2020-04-26 08:20:54'),
(192, 255, 3, '2', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Go', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1587889367trim.0C5A067C-77D4-46DD-A014-2B16B581DCFB.MOV', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/2551587889368thumb.jpg', 'assets/post_resource/255/1587889367trim.0C5A067C-77D4-46DD-A014-2B16B581DCFB.MOV', NULL, 1, NULL, NULL, NULL, '2020-04-26 08:22:47', '2020-04-26 08:22:50'),
(193, 255, 14, '2', 'test', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1588441712trim.7DFFA3AF-DFC5-4D02-94EB-325C81EA20ED.MOV', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/2551588441713thumb.jpg', 'assets/post_resource/255/1588441712trim.7DFFA3AF-DFC5-4D02-94EB-325C81EA20ED.MOV', NULL, 1, NULL, NULL, NULL, '2020-05-02 17:48:32', '2020-05-02 17:48:34'),
(194, 255, 1, '1', 'games', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1588441782_document0.jpeg', NULL, 'assets/post_resource/255/1588441782_document0.jpeg', NULL, 1, NULL, NULL, NULL, '2020-05-02 17:49:42', '2020-05-02 17:49:42'),
(195, 273, 12, '1', 'Test post', 'assets/post_resource/273/1625416661a1f0488b-247a-4026-ab8c-d5e026ef246d.png', NULL, 'assets/post_resource/273/1625416661a1f0488b-247a-4026-ab8c-d5e026ef246d.png', '1174, Los Angeles, California, United States, 90001', 1, NULL, '33.985805', '-118.25411166666666', '2021-07-04 16:37:41', '2021-07-04 16:37:41'),
(197, 273, 10, '2', 'Video for new singer, great fun!', 'assets/post_resource/273/1625469634091c38ed-ad2e-4a71-8750-ad2973a2bb80.mp4', NULL, 'assets/post_resource/273/1625469634091c38ed-ad2e-4a71-8750-ad2973a2bb80.mp4', '1174 E 59th Pl, Los Angeles, CA 90001, USA', 1, NULL, '33.985813803882785', '-118.25411181896924', '2021-07-05 07:20:34', '2021-07-05 07:20:47'),
(198, 273, 10, '1', 'you make me happy', 'assets/post_resource/273/16254774051a94f59e-ea79-4d9e-b4a5-7f720b2fd535.png', NULL, 'assets/post_resource/273/16254774051a94f59e-ea79-4d9e-b4a5-7f720b2fd535.png', 'Lal Wa Sarjangal, Afghanistan', 1, NULL, '34.79750598105505', '66.39720305800437', '2021-07-05 09:30:05', '2021-07-05 09:30:05'),
(199, 259, 10, '1', 'you make me happy', 'assets/post_resource/259/1625478439negz.jpg', NULL, 'assets/post_resource/259/1625478439negz.jpg', 'Lal Wa Sarjangal, Afghanistan', 1, NULL, '34.79750598105505', '66.39720305800437', '2021-07-05 09:47:19', '2021-07-05 09:47:19'),
(200, 259, 10, '1', 'you make me happy', 'assets/post_resource/259/1625478577negz.jpg', NULL, 'assets/post_resource/259/1625478577negz.jpg', 'Lal Wa Sarjangal, Afghanistan', 1, NULL, '34.79750598105505', '66.39720305800437', '2021-07-05 09:49:37', '2021-07-05 09:49:37'),
(201, 259, 10, '1', 'you make me happy', 'assets/post_resource/259/1625478609negz.jpg', NULL, 'assets/post_resource/259/1625478609negz.jpg', 'Lal Wa Sarjangal, Afghanistan', 1, NULL, '34.79750598105505', '66.39720305800437', '2021-07-05 09:50:09', '2021-07-05 09:50:09'),
(202, 274, 2, '2', 'test', 'assets/post_resource/274/1625497636nok.MP4', NULL, 'assets/post_resource/274/1625497636nok.MP4', 'US', 1, NULL, '12.345345', '24.345537', '2021-07-05 15:07:16', '2021-07-05 15:07:16'),
(204, 274, 2, '2', 'test', 'assets/post_resource/274/1625539297nok.MP4', NULL, 'assets/post_resource/274/1625539297nok.MP4', 'US', 1, NULL, '12.345345', '24.345537', '2021-07-06 02:41:37', '2021-07-06 02:41:38'),
(240, 274, 1, '2', 'test', 'assets/post_resource/274/1625574437nok.MP4', NULL, 'assets/post_resource/274/1625574437nok.MP4', 'US', 1, NULL, '12.345345', '24.345537', '2021-07-06 12:27:17', '2021-07-06 12:27:19'),
(241, 274, 1, '2', 'test', 'assets/post_resource/274/1625574931nok.MP4', NULL, 'assets/post_resource/274/1625574931nok.MP4', 'US', 1, NULL, '12.345345', '24.345537', '2021-07-06 12:35:31', '2021-07-06 12:35:31'),
(242, 274, 1, '2', 'test', 'assets/post_resource/274/1625585222nok.MP4', 'assets/post_resource/274/2741625585222thumb.jpg', 'assets/post_resource/274/1625585222nok.MP4', 'US', 1, NULL, '12.345345', '24.345537', '2021-07-06 15:27:02', '2021-07-06 15:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `posts_categories`
--

CREATE TABLE `posts_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_categories`
--

INSERT INTO `posts_categories` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Games', '2020-05-02 20:03:18', '2020-04-06 00:00:00', '2020-05-02 20:03:18'),
(2, 'Health', '2020-05-02 20:03:23', '2020-04-06 00:00:00', '2020-05-02 20:03:23'),
(3, 'Fun', '2020-05-02 20:03:34', '2020-04-06 00:00:00', '2020-05-02 20:03:34'),
(4, 'Education', '2020-04-14 05:45:22', '2020-04-06 00:00:00', '2020-04-14 05:45:22'),
(5, 'Grocery', '2020-04-06 11:12:37', '2020-04-06 00:00:00', '2020-04-06 11:12:37'),
(6, 'Showbiz2', '2020-04-06 12:10:50', '2020-04-06 11:54:41', '2020-04-06 12:10:50'),
(7, 'Testing', '2020-04-06 12:46:48', '2020-04-06 12:46:43', '2020-04-06 12:46:48'),
(8, 'levenderr', '2020-04-06 13:39:47', '2020-04-06 13:39:30', '2020-04-06 13:39:47'),
(9, 'Acting', NULL, '2020-04-14 05:42:51', '2021-07-09 14:54:50'),
(10, 'Singing', NULL, '2020-04-14 05:43:08', '2021-07-09 14:55:05'),
(11, 'Dancing', NULL, '2020-04-14 05:43:31', '2021-07-09 14:55:13'),
(12, 'Poems', NULL, '2020-04-14 05:44:05', '2021-07-09 14:55:27'),
(13, 'Comedy', NULL, '2020-04-14 05:44:36', '2021-07-09 14:55:47'),
(14, 'Instruments', NULL, '2021-07-09 14:51:00', '2021-07-09 14:56:12'),
(15, 'Concerts', NULL, '2021-07-09 14:51:20', '2021-07-09 14:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `comment_file` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `user_id`, `post_id`, `comment`, `comment_file`, `parent_id`, `created_at`, `updated_at`) VALUES
(123, 257, 116, NULL, 'assets/comments_images/1586520135picture_1586520100.jpg', 0, '2020-04-10 12:02:15', '2020-04-10 12:02:15'),
(124, 257, 117, NULL, 'assets/comments_images/1586520282picture_1586520273.jpg', 0, '2020-04-10 12:04:42', '2020-04-10 12:04:42'),
(125, 257, 117, NULL, 'assets/comments_images/1586520635picture_1586520631.jpg', 124, '2020-04-10 12:10:35', '2020-04-10 12:10:35'),
(128, 254, 128, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', NULL, 0, '2020-04-10 17:11:05', '2020-04-10 17:11:05'),
(129, 258, 116, 'test', NULL, 123, '2020-04-10 18:15:31', '2020-04-10 18:15:31'),
(133, 255, 131, 'hi', NULL, 0, '2020-04-11 05:50:47', '2020-04-11 05:50:47'),
(134, 255, 131, NULL, 'assets/comments_images/1586584264swift_file2.jpeg', 133, '2020-04-11 05:51:04', '2020-04-11 05:51:04'),
(135, 259, 136, 'hello', NULL, 0, '2020-04-11 10:07:04', '2020-04-11 10:07:04'),
(136, 259, 136, 'hi', NULL, 135, '2020-04-11 10:22:08', '2020-04-11 10:22:08'),
(137, 259, 131, 'hello', NULL, 0, '2020-04-11 10:23:03', '2020-04-11 10:23:03'),
(138, 259, 131, NULL, 'assets/comments_images/1586600598picture_1586600591.jpg', 137, '2020-04-11 10:23:18', '2020-04-11 10:23:18'),
(139, 259, 136, 'test', NULL, 0, '2020-04-11 10:28:05', '2020-04-11 10:28:05'),
(140, 259, 132, 'hello', NULL, 0, '2020-04-11 10:28:21', '2020-04-11 10:28:21'),
(143, 256, 136, 'hi', NULL, 0, '2020-04-11 13:26:21', '2020-04-11 13:26:21'),
(144, 263, 133, 'hy', NULL, 0, '2020-04-11 14:46:51', '2020-04-11 14:46:51'),
(150, 259, 142, 'hi', NULL, 0, '2020-04-11 20:43:25', '2020-04-11 20:43:25'),
(151, 254, 144, 'hi', NULL, 0, '2020-04-12 07:00:51', '2020-04-12 07:00:51'),
(153, 255, 149, 'hi', NULL, 0, '2020-04-12 17:46:48', '2020-04-12 17:46:48'),
(154, 263, 133, 'hy2', NULL, 0, '2020-04-12 18:29:01', '2020-04-12 18:29:01'),
(156, 265, 151, 'wow nice clear picture', NULL, 0, '2020-04-14 06:15:53', '2020-04-14 06:15:53'),
(157, 258, 151, 'thanks', NULL, 156, '2020-04-14 06:18:39', '2020-04-14 06:18:39'),
(158, 258, 151, NULL, 'assets/comments_images/1586845217swift_file2.jpeg', 156, '2020-04-14 06:20:17', '2020-04-14 06:20:17'),
(159, 265, 151, 'wow', NULL, 0, '2020-04-14 06:40:46', '2020-04-14 06:40:46'),
(160, 265, 149, 'kool', NULL, 0, '2020-04-14 06:46:23', '2020-04-14 06:46:23'),
(163, 259, 149, 'Awesome Dj', NULL, 4, '2020-04-14 18:21:03', '2020-04-14 18:21:03'),
(167, 267, 155, 'nice', NULL, 0, '2020-04-14 20:01:06', '2020-04-14 20:01:06'),
(168, 268, 133, 'couldn\'t see anything', NULL, 0, '2020-04-16 07:36:44', '2020-04-16 07:36:44'),
(182, 259, 155, 'Awesome Dj', NULL, 4, '2020-04-19 09:35:43', '2020-04-19 09:35:43'),
(183, 259, 134, 'Awesome Dj', NULL, 4, '2020-04-19 09:37:40', '2020-04-19 09:37:40'),
(197, 259, 135, 'hi', NULL, 0, '2020-04-19 20:40:23', '2020-04-19 20:40:23'),
(201, 259, 135, 'hi', NULL, 0, '2020-04-19 21:00:58', '2020-04-19 21:00:58'),
(202, 259, 135, 'hello', NULL, 0, '2020-04-19 21:01:21', '2020-04-19 21:01:21'),
(203, 259, 134, 'hi faysal', NULL, 0, '2020-04-19 21:01:56', '2020-04-19 21:01:56'),
(205, 259, 138, 'hi', NULL, 0, '2020-04-19 21:05:43', '2020-04-19 21:05:43'),
(207, 257, 159, 'ki obostha ?', NULL, 0, '2020-04-20 11:16:18', '2020-04-20 11:16:18'),
(219, 225, 132, 'test', NULL, 0, '2020-04-20 16:32:50', '2020-04-20 16:32:50'),
(222, 255, 163, 'hi', NULL, 0, '2020-04-21 07:03:53', '2020-04-21 07:03:53'),
(224, 255, 164, 'rep', NULL, 223, '2020-04-21 07:04:23', '2020-04-21 07:04:23'),
(231, 261, 143, 'Nested Testing', NULL, 0, '2020-04-21 13:21:35', '2020-04-21 13:21:35'),
(232, 261, 143, 'Nested Testing', NULL, 231, '2020-04-21 13:21:56', '2020-04-21 13:21:56'),
(233, 261, 143, 'Nested Testing', NULL, 232, '2020-04-21 13:37:42', '2020-04-21 13:37:42'),
(235, 261, 143, NULL, 'assets/comments_images/1587476389fp_wmg_brawlstars.png', 232, '2020-04-21 13:39:49', '2020-04-21 13:39:49'),
(241, 255, 164, 'hlow', NULL, 0, '2020-04-22 05:37:14', '2020-04-22 05:37:14'),
(252, 261, 166, 'Testing', NULL, 0, '2020-04-22 05:44:26', '2020-04-22 05:44:26'),
(255, 263, 168, 'hi', NULL, 0, '2020-04-22 12:12:16', '2020-04-22 12:12:16'),
(256, 263, 168, 'ok', NULL, 0, '2020-04-22 12:14:11', '2020-04-22 12:14:11'),
(257, 259, 135, 'test', NULL, 197, '2020-04-22 19:42:36', '2020-04-22 19:42:36'),
(258, 261, 168, 'Push Testing', NULL, 0, '2020-04-23 06:52:00', '2020-04-23 06:52:00'),
(259, 225, 168, 'hello', NULL, 0, '2020-04-23 06:52:43', '2020-04-23 06:52:43'),
(260, 261, 168, 'Push Testing Reply', NULL, 259, '2020-04-23 06:54:11', '2020-04-23 06:54:11'),
(261, 261, 168, 'Push Testing Reply', NULL, 259, '2020-04-23 06:54:48', '2020-04-23 06:54:48'),
(262, 225, 168, 'test 1', NULL, 0, '2020-04-23 07:36:04', '2020-04-23 07:36:04'),
(263, 261, 168, 'Push Testing Reply', NULL, 259, '2020-04-23 07:36:34', '2020-04-23 07:36:34'),
(264, 263, 168, 'ok', NULL, 0, '2020-04-23 08:36:49', '2020-04-23 08:36:49'),
(265, 255, 187, 'hi', NULL, 0, '2020-04-23 09:21:16', '2020-04-23 09:21:16'),
(266, 255, 187, 'hi', NULL, 0, '2020-04-23 09:46:43', '2020-04-23 09:46:43'),
(268, 265, 192, 'no sound', NULL, 0, '2020-05-02 23:24:07', '2020-05-02 23:24:07'),
(269, 265, 193, 'nice', NULL, 268, '2020-05-02 23:27:59', '2020-05-02 23:27:59'),
(270, 265, 193, 'nice', NULL, 0, '2020-05-02 23:28:24', '2020-05-02 23:28:24'),
(271, 265, 193, 'nice', NULL, 0, '2020-05-02 23:28:45', '2020-05-02 23:28:45'),
(272, 265, 192, 'jj', NULL, 0, '2020-05-02 23:35:19', '2020-05-02 23:35:19'),
(273, 265, 193, 'no sound', NULL, 0, '2020-05-02 23:38:40', '2020-05-02 23:38:40'),
(274, 265, 186, 'nice', NULL, 0, '2020-05-02 23:57:36', '2020-05-02 23:57:36'),
(275, 265, 186, 'nice', NULL, 0, '2020-05-02 23:58:39', '2020-05-02 23:58:39'),
(276, 265, 164, 'k', NULL, 0, '2020-05-03 00:01:52', '2020-05-03 00:01:52'),
(277, 265, 151, 'kk', NULL, 0, '2020-05-03 00:08:12', '2020-05-03 00:08:12'),
(278, 265, 152, 'nice', NULL, 0, '2020-05-03 00:09:58', '2020-05-03 00:09:58'),
(279, 265, 127, 'kk', NULL, 0, '2020-05-03 00:10:34', '2020-05-03 00:10:34'),
(280, 273, 193, 'hey can\'t sse video, what\'s wrong?', NULL, 270, '2021-07-02 21:33:11', '2021-07-02 21:33:11'),
(284, 273, 242, 'Hi today will be a test to see if you make it to work on the house I will be there in a few minutes', NULL, 0, '2021-07-07 07:18:49', '2021-07-07 07:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `post_files`
--

CREATE TABLE `post_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=photo;2=video;',
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_files`
--

INSERT INTO `post_files` (`id`, `post_id`, `type`, `reference_url`, `thumbnail_url`, `file_path`, `created_at`, `updated_at`) VALUES
(46, 75, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/225/1585984752_document1.jpeg', NULL, 'assets/post_resource/225/1585984752_document1.jpeg', '2020-04-04 07:19:12', '2020-04-04 07:19:12'),
(47, 76, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/225/1585984985_document1.jpeg', NULL, 'assets/post_resource/225/1585984985_document1.jpeg', '2020-04-04 07:23:06', '2020-04-04 07:23:06'),
(62, 110, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513906_document1.jpeg', NULL, 'assets/post_resource/255/1586513906_document1.jpeg', '2020-04-10 10:18:26', '2020-04-10 10:18:26'),
(63, 110, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513906_document2.jpeg', NULL, 'assets/post_resource/255/1586513906_document2.jpeg', '2020-04-10 10:18:26', '2020-04-10 10:18:26'),
(64, 110, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513906_document3.jpeg', NULL, 'assets/post_resource/255/1586513906_document3.jpeg', '2020-04-10 10:18:26', '2020-04-10 10:18:26'),
(65, 112, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586514007_document1.jpeg', NULL, 'assets/post_resource/255/1586514007_document1.jpeg', '2020-04-10 10:20:07', '2020-04-10 10:20:07'),
(66, 113, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586514129_document1.jpeg', NULL, 'assets/post_resource/255/1586514129_document1.jpeg', '2020-04-10 10:22:09', '2020-04-10 10:22:09'),
(67, 113, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586514129_document2.jpeg', NULL, 'assets/post_resource/255/1586514129_document2.jpeg', '2020-04-10 10:22:09', '2020-04-10 10:22:09'),
(68, 113, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586514129_document3.jpeg', NULL, 'assets/post_resource/255/1586514129_document3.jpeg', '2020-04-10 10:22:09', '2020-04-10 10:22:09'),
(69, 115, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586514207_document1.jpeg', NULL, 'assets/post_resource/255/1586514207_document1.jpeg', '2020-04-10 10:23:27', '2020-04-10 10:23:27'),
(70, 115, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586514207_document2.jpeg', NULL, 'assets/post_resource/255/1586514207_document2.jpeg', '2020-04-10 10:23:28', '2020-04-10 10:23:28'),
(71, 116, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586515114_document1.jpeg', NULL, 'assets/post_resource/255/1586515114_document1.jpeg', '2020-04-10 10:38:34', '2020-04-10 10:38:34'),
(72, 116, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586515114_document2.jpeg', NULL, 'assets/post_resource/255/1586515114_document2.jpeg', '2020-04-10 10:38:34', '2020-04-10 10:38:34'),
(73, 116, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586515114_document3.jpeg', NULL, 'assets/post_resource/255/1586515114_document3.jpeg', '2020-04-10 10:38:34', '2020-04-10 10:38:34'),
(74, 117, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586515368_document1.jpeg', NULL, 'assets/post_resource/255/1586515368_document1.jpeg', '2020-04-10 10:42:48', '2020-04-10 10:42:48'),
(75, 117, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586515368_document2.jpeg', NULL, 'assets/post_resource/255/1586515368_document2.jpeg', '2020-04-10 10:42:48', '2020-04-10 10:42:48'),
(76, 117, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586515368_document3.jpeg', NULL, 'assets/post_resource/255/1586515368_document3.jpeg', '2020-04-10 10:42:49', '2020-04-10 10:42:49'),
(77, 117, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586515369_document4.jpeg', NULL, 'assets/post_resource/255/1586515369_document4.jpeg', '2020-04-10 10:42:49', '2020-04-10 10:42:49'),
(78, 119, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586523841_document1.jpeg', NULL, 'assets/post_resource/255/1586523841_document1.jpeg', '2020-04-10 13:04:01', '2020-04-10 13:04:01'),
(79, 119, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586523841_document2.jpeg', NULL, 'assets/post_resource/255/1586523841_document2.jpeg', '2020-04-10 13:04:01', '2020-04-10 13:04:01'),
(80, 123, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/257/1586534075picture_1586534063.jpg', NULL, 'assets/post_resource/257/1586534075picture_1586534063.jpg', '2020-04-10 15:54:35', '2020-04-10 15:54:35'),
(81, 123, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/257/15865340758ce2555c-cbdc-4b00-bcda-8cc0ee9ff572.png', NULL, 'assets/post_resource/257/15865340758ce2555c-cbdc-4b00-bcda-8cc0ee9ff572.png', '2020-04-10 15:54:35', '2020-04-10 15:54:35'),
(82, 128, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/254/1586537879_document1.jpeg', NULL, 'assets/post_resource/254/1586537879_document1.jpeg', '2020-04-10 16:57:59', '2020-04-10 16:57:59'),
(83, 128, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/254/1586537879_document2.jpeg', NULL, 'assets/post_resource/254/1586537879_document2.jpeg', '2020-04-10 16:57:59', '2020-04-10 16:57:59'),
(84, 132, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/254/1586538912_document1.jpeg', NULL, 'assets/post_resource/254/1586538912_document1.jpeg', '2020-04-10 17:15:12', '2020-04-10 17:15:12'),
(85, 132, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/254/1586538912_document2.jpeg', NULL, 'assets/post_resource/254/1586538912_document2.jpeg', '2020-04-10 17:15:12', '2020-04-10 17:15:12'),
(86, 134, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/259/1586581581picture_1586581432.jpg', NULL, 'assets/post_resource/259/1586581581picture_1586581432.jpg', '2020-04-11 05:06:22', '2020-04-11 05:06:22'),
(87, 136, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586584350_document1.jpeg', NULL, 'assets/post_resource/255/1586584350_document1.jpeg', '2020-04-11 05:52:30', '2020-04-11 05:52:30'),
(88, 136, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586584350_document2.jpeg', NULL, 'assets/post_resource/255/1586584350_document2.jpeg', '2020-04-11 05:52:30', '2020-04-11 05:52:30'),
(89, 139, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/257/1586606757picture_1586606751.jpg', NULL, 'assets/post_resource/257/1586606757picture_1586606751.jpg', '2020-04-11 12:05:57', '2020-04-11 12:05:57'),
(90, 140, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/257/1586606757picture_1586606751.jpg', NULL, 'assets/post_resource/257/1586606757picture_1586606751.jpg', '2020-04-11 12:05:57', '2020-04-11 12:05:57'),
(91, 142, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/256/1586636193picture_1586636185.jpg', NULL, 'assets/post_resource/256/1586636193picture_1586636185.jpg', '2020-04-11 20:16:33', '2020-04-11 20:16:33'),
(92, 149, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/260/1586713554f8a14b7d-a495-4e78-886c-1f20fa96e1ea.png', NULL, 'assets/post_resource/260/1586713554f8a14b7d-a495-4e78-886c-1f20fa96e1ea.png', '2020-04-12 17:45:54', '2020-04-12 17:45:54'),
(93, 149, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/260/1586713554310decd0-dade-4ea3-a8a5-9babb2953458.png', NULL, 'assets/post_resource/260/1586713554310decd0-dade-4ea3-a8a5-9babb2953458.png', '2020-04-12 17:45:54', '2020-04-12 17:45:54'),
(94, 153, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/265/1586847049_document1.jpeg', NULL, 'assets/post_resource/265/1586847049_document1.jpeg', '2020-04-14 06:50:49', '2020-04-14 06:50:49'),
(95, 156, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/268/1587022315ac0ef5c4-6035-47fb-96e2-946777c0973a.png', NULL, 'assets/post_resource/268/1587022315ac0ef5c4-6035-47fb-96e2-946777c0973a.png', '2020-04-16 07:31:55', '2020-04-16 07:31:55'),
(96, 163, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/158745229713ff56d6-6fce-4d36-9602-d95ddbbb95b8.png', NULL, 'assets/post_resource/255/158745229713ff56d6-6fce-4d36-9602-d95ddbbb95b8.png', '2020-04-21 06:58:17', '2020-04-21 06:58:17'),
(97, 166, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/261/1587533854download(2).jpg', NULL, 'assets/post_resource/261/1587533854download(2).jpg', '2020-04-22 05:37:34', '2020-04-22 05:37:34'),
(98, 169, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1587556396_document1.jpeg', NULL, 'assets/post_resource/255/1587556396_document1.jpeg', '2020-04-22 11:53:16', '2020-04-22 11:53:16'),
(99, 188, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/267/1587635397_document1.jpeg', NULL, 'assets/post_resource/267/1587635397_document1.jpeg', '2020-04-23 09:49:57', '2020-04-23 09:49:57'),
(102, 191, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1587889254_document1.jpeg', NULL, 'assets/post_resource/255/1587889254_document1.jpeg', '2020-04-26 08:20:54', '2020-04-26 08:20:54'),
(103, 194, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1588441782_document1.jpeg', NULL, 'assets/post_resource/255/1588441782_document1.jpeg', '2020-05-02 17:49:42', '2020-05-02 17:49:42'),
(104, 194, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1588441782_document2.jpeg', NULL, 'assets/post_resource/255/1588441782_document2.jpeg', '2020-05-02 17:49:42', '2020-05-02 17:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(63, 225, 75, '2020-04-06 10:13:16', '2020-04-06 10:13:16'),
(160, 225, 97, '2020-04-10 15:11:15', '2020-04-10 15:11:15'),
(161, 225, 73, '2020-04-10 15:14:19', '2020-04-10 15:14:19'),
(164, 225, 112, '2020-04-10 15:38:23', '2020-04-10 15:38:23'),
(165, 225, 115, '2020-04-10 15:44:42', '2020-04-10 15:44:42'),
(167, 255, 119, '2020-04-10 17:24:19', '2020-04-10 17:24:19'),
(168, 255, 117, '2020-04-10 17:26:12', '2020-04-10 17:26:12'),
(169, 255, 132, '2020-04-10 17:27:27', '2020-04-10 17:27:27'),
(170, 255, 113, '2020-04-10 17:28:12', '2020-04-10 17:28:12'),
(171, 225, 133, '2020-04-10 18:39:21', '2020-04-10 18:39:21'),
(173, 225, 98, '2020-04-10 18:39:29', '2020-04-10 18:39:29'),
(176, 259, 134, '2020-04-11 05:10:43', '2020-04-11 05:10:43'),
(177, 255, 136, '2020-04-11 05:53:47', '2020-04-11 05:53:47'),
(178, 255, 134, '2020-04-11 05:54:49', '2020-04-11 05:54:49'),
(184, 259, 132, '2020-04-11 10:28:15', '2020-04-11 10:28:15'),
(191, 262, 140, '2020-04-11 16:18:22', '2020-04-11 16:18:22'),
(192, 259, 142, '2020-04-11 20:38:57', '2020-04-11 20:38:57'),
(198, 261, 136, '2020-04-12 06:15:15', '2020-04-12 06:15:15'),
(201, 258, 138, '2020-04-12 12:11:52', '2020-04-12 12:11:52'),
(203, 260, 136, '2020-04-12 17:44:16', '2020-04-12 17:44:16'),
(204, 255, 149, '2020-04-12 17:46:16', '2020-04-12 17:46:16'),
(205, 263, 133, '2020-04-12 18:28:41', '2020-04-12 18:28:41'),
(207, 263, 75, '2020-04-12 18:29:46', '2020-04-12 18:29:46'),
(208, 263, 73, '2020-04-12 18:29:50', '2020-04-12 18:29:50'),
(213, 265, 151, '2020-04-14 06:25:07', '2020-04-14 06:25:07'),
(214, 265, 149, '2020-04-14 06:46:10', '2020-04-14 06:46:10'),
(218, 255, 155, '2020-04-14 20:01:40', '2020-04-14 20:01:40'),
(220, 269, 135, '2020-04-18 09:44:52', '2020-04-18 09:44:52'),
(227, 255, 163, '2020-04-21 07:03:33', '2020-04-21 07:03:33'),
(228, 255, 164, '2020-04-21 07:03:35', '2020-04-21 07:03:35'),
(230, 225, 74, '2020-04-21 12:14:35', '2020-04-21 12:14:35'),
(231, 225, 76, '2020-04-21 12:14:59', '2020-04-21 12:14:59'),
(233, 225, 138, '2020-04-21 12:16:49', '2020-04-21 12:16:49'),
(235, 225, 132, '2020-04-21 12:17:07', '2020-04-21 12:17:07'),
(241, 225, 128, '2020-04-21 12:18:29', '2020-04-21 12:18:29'),
(244, 225, 139, '2020-04-21 12:30:59', '2020-04-21 12:30:59'),
(246, 225, 118, '2020-04-21 12:31:41', '2020-04-21 12:31:41'),
(252, 259, 169, '2020-04-22 14:29:33', '2020-04-22 14:29:33'),
(253, 255, 170, '2020-04-23 04:27:41', '2020-04-23 04:27:41'),
(254, 255, 169, '2020-04-23 04:28:00', '2020-04-23 04:28:00'),
(256, 261, 168, '2020-04-23 06:56:45', '2020-04-23 06:56:45'),
(257, 263, 168, '2020-04-23 08:35:33', '2020-04-23 08:35:33'),
(259, 255, 187, '2020-04-23 09:21:37', '2020-04-23 09:21:37'),
(260, 267, 186, '2020-04-23 09:22:18', '2020-04-23 09:22:18'),
(261, 267, 185, '2020-04-23 09:47:12', '2020-04-23 09:47:12'),
(262, 255, 186, '2020-04-23 09:57:00', '2020-04-23 09:57:00'),
(264, 267, 188, '2020-04-23 14:12:55', '2020-04-23 14:12:55'),
(265, 255, 188, '2020-04-23 14:19:30', '2020-04-23 14:19:30'),
(266, 259, 188, '2020-04-23 19:32:03', '2020-04-23 19:32:03'),
(267, 255, 191, '2020-04-26 08:21:21', '2020-04-26 08:21:21'),
(271, 265, 193, '2020-05-02 23:27:54', '2020-05-02 23:27:54'),
(273, 265, 192, '2020-05-02 23:35:34', '2020-05-02 23:35:34'),
(274, 265, 187, '2020-05-02 23:55:53', '2020-05-02 23:55:53'),
(275, 265, 186, '2020-05-02 23:58:34', '2020-05-02 23:58:34'),
(276, 265, 164, '2020-05-03 00:01:45', '2020-05-03 00:01:45'),
(277, 265, 185, '2020-05-03 00:27:49', '2020-05-03 00:27:49'),
(278, 265, 170, '2020-05-03 00:27:54', '2020-05-03 00:27:54'),
(279, 265, 169, '2020-05-03 00:27:59', '2020-05-03 00:27:59'),
(280, 265, 194, '2020-05-03 00:59:48', '2020-05-03 00:59:48'),
(281, 274, 110, '2021-07-05 13:52:07', '2021-07-05 13:52:07'),
(282, 273, 242, '2021-07-07 07:18:59', '2021-07-07 07:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(93, 260, 138, '2020-04-11 11:35:44', '2020-04-11 11:35:44'),
(94, 257, 144, '2020-04-12 07:00:36', '2020-04-12 07:00:36'),
(95, 260, 149, '2020-04-12 17:45:54', '2020-04-12 17:45:54'),
(96, 260, 149, '2020-04-12 17:45:54', '2020-04-12 17:45:54'),
(97, 260, 149, '2020-04-12 17:45:54', '2020-04-12 17:45:54'),
(101, 255, 163, '2020-04-21 06:58:17', '2020-04-21 06:58:17'),
(102, 255, 163, '2020-04-21 06:58:17', '2020-04-21 06:58:17'),
(103, 255, 163, '2020-04-21 06:58:17', '2020-04-21 06:58:17'),
(104, 255, 164, '2020-04-21 07:00:43', '2020-04-21 07:00:43'),
(105, 255, 164, '2020-04-21 07:00:43', '2020-04-21 07:00:43'),
(106, 255, 164, '2020-04-21 07:00:43', '2020-04-21 07:00:43'),
(107, 257, 166, '2020-04-22 05:37:34', '2020-04-22 05:37:34'),
(108, 262, 166, '2020-04-22 05:37:34', '2020-04-22 05:37:34'),
(109, 255, 168, '2020-04-22 06:13:57', '2020-04-22 06:13:57'),
(110, 263, 168, '2020-04-22 06:13:57', '2020-04-22 06:13:57'),
(111, 259, 168, '2020-04-22 06:13:57', '2020-04-22 06:13:57'),
(112, 225, 169, '2020-04-22 11:53:16', '2020-04-22 11:53:16'),
(113, 255, 169, '2020-04-22 11:53:16', '2020-04-22 11:53:16'),
(114, 254, 169, '2020-04-22 11:53:16', '2020-04-22 11:53:16'),
(125, 257, 184, '2020-04-23 05:08:12', '2020-04-23 05:08:12'),
(126, 262, 184, '2020-04-23 05:08:12', '2020-04-23 05:08:12'),
(127, 265, 188, '2020-04-23 09:49:57', '2020-04-23 09:49:57'),
(128, 255, 188, '2020-04-23 09:49:57', '2020-04-23 09:49:57'),
(133, 225, 191, '2020-04-26 08:20:54', '2020-04-26 08:20:54'),
(134, 255, 191, '2020-04-26 08:20:54', '2020-04-26 08:20:54'),
(135, 254, 191, '2020-04-26 08:20:54', '2020-04-26 08:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_settings`
--

CREATE TABLE `profile_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'en=english;',
  `fb_post` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=on;0=off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 117, 256, '2020-04-10 16:20:24', '2020-04-10 16:20:24'),
(10, 151, 265, '2020-04-14 06:27:04', '2020-04-14 06:27:04'),
(12, 153, 268, '2020-04-16 10:04:28', '2020-04-16 10:04:28'),
(15, 143, 259, '2020-04-19 18:31:59', '2020-04-19 18:31:59'),
(18, 162, 255, '2020-04-20 17:59:11', '2020-04-20 17:59:11'),
(19, 139, 225, '2020-04-21 12:29:58', '2020-04-21 12:29:58'),
(20, 140, 225, '2020-04-21 14:38:55', '2020-04-21 14:38:55'),
(21, 162, 225, '2020-04-21 15:44:20', '2020-04-21 15:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', NULL, NULL, NULL),
(3, 'merchant', 'merchant', NULL, NULL, NULL),
(4, 'tesattest', 'ataes\r\n', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=photo;2=video;3=live',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '1=active;2=Blocked, 3="Expired"',
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `user_id`, `title`, `type`, `status`, `reference_url`, `thumbnail_url`, `file_path`, `deleted_at`, `created_at`, `updated_at`) VALUES
(43, 254, NULL, '1', '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/254/1586512779picture_1586512771.jpg', NULL, 'assets/post_resource/254/1586512779picture_1586512771.jpg', '2020-04-10 16:27:11', '2020-04-10 09:59:39', '2020-04-10 16:27:11'),
(44, 255, NULL, '1', '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513613_document0.jpeg', NULL, 'assets/post_resource/255/1586513613_document0.jpeg', '2020-04-10 10:13:51', '2020-04-10 10:13:33', '2020-04-10 10:13:51'),
(45, 255, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513659_document0.jpeg', NULL, 'assets/post_resource/255/1586513659_document0.jpeg', NULL, '2020-04-10 10:14:19', '2020-04-11 15:19:31'),
(46, 255, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513672_document0.jpeg', NULL, 'assets/post_resource/255/1586513672_document0.jpeg', NULL, '2020-04-10 10:14:32', '2020-04-11 15:19:31'),
(47, 255, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513686_document0.jpeg', NULL, 'assets/post_resource/255/1586513686_document0.jpeg', NULL, '2020-04-10 10:14:46', '2020-04-11 15:19:31'),
(48, 255, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513700_document0.jpeg', NULL, 'assets/post_resource/255/1586513700_document0.jpeg', NULL, '2020-04-10 10:15:00', '2020-04-11 15:19:31'),
(49, 255, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513722_document0.jpeg', NULL, 'assets/post_resource/255/1586513722_document0.jpeg', NULL, '2020-04-10 10:15:22', '2020-04-11 15:19:31'),
(50, 255, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513737_document0.jpeg', NULL, 'assets/post_resource/255/1586513737_document0.jpeg', NULL, '2020-04-10 10:15:37', '2020-04-11 15:19:31'),
(51, 255, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513760_document0.jpeg', NULL, 'assets/post_resource/255/1586513760_document0.jpeg', NULL, '2020-04-10 10:16:00', '2020-04-11 15:19:31'),
(52, 255, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513776_document0.jpeg', NULL, 'assets/post_resource/255/1586513776_document0.jpeg', NULL, '2020-04-10 10:16:16', '2020-04-11 15:19:31'),
(53, 255, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513789_document0.jpeg', NULL, 'assets/post_resource/255/1586513789_document0.jpeg', NULL, '2020-04-10 10:16:29', '2020-04-11 15:19:31'),
(54, 255, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513802_document0.jpeg', NULL, 'assets/post_resource/255/1586513802_document0.jpeg', NULL, '2020-04-10 10:16:42', '2020-04-11 15:19:31'),
(55, 255, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586513817_document0.jpeg', NULL, 'assets/post_resource/255/1586513817_document0.jpeg', NULL, '2020-04-10 10:16:57', '2020-04-11 15:19:31'),
(56, 254, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/254/1586537019picture_1586537010.jpg', NULL, 'assets/post_resource/254/1586537019picture_1586537010.jpg', NULL, '2020-04-10 16:43:39', '2020-04-11 15:22:37'),
(57, 254, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/254/15865370806fc91cd1-102f-4e81-8c47-568956f6a8c9.png', NULL, 'assets/post_resource/254/15865370806fc91cd1-102f-4e81-8c47-568956f6a8c9.png', NULL, '2020-04-10 16:44:40', '2020-04-11 15:24:56'),
(58, 258, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/258/1586537600_document0.jpeg', NULL, 'assets/post_resource/258/1586537600_document0.jpeg', NULL, '2020-04-10 16:53:20', '2020-04-11 16:53:20'),
(59, 259, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/259/1586580995picture_1586580985.jpg', NULL, 'assets/post_resource/259/1586580995picture_1586580985.jpg', NULL, '2020-04-11 04:56:35', '2020-04-12 04:56:35'),
(60, 259, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/259/1586580999picture_1586580985.jpg', NULL, 'assets/post_resource/259/1586580999picture_1586580985.jpg', NULL, '2020-04-11 04:56:39', '2020-04-12 04:56:41'),
(61, 255, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586584185_document0.jpeg', NULL, 'assets/post_resource/255/1586584185_document0.jpeg', NULL, '2020-04-11 05:49:45', '2020-04-12 05:49:46'),
(62, 259, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/259/1586600390picture_1586600382.jpg', NULL, 'assets/post_resource/259/1586600390picture_1586600382.jpg', NULL, '2020-04-11 10:19:50', '2020-04-12 10:19:51'),
(63, 259, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/259/1586600398picture_1586600382.jpg', NULL, 'assets/post_resource/259/1586600398picture_1586600382.jpg', NULL, '2020-04-11 10:19:58', '2020-04-12 10:20:00'),
(64, 259, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/259/1586600400picture_1586600382.jpg', NULL, 'assets/post_resource/259/1586600400picture_1586600382.jpg', NULL, '2020-04-11 10:20:00', '2020-04-12 10:20:03'),
(65, 259, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/259/1586600400picture_1586600382.jpg', NULL, 'assets/post_resource/259/1586600400picture_1586600382.jpg', NULL, '2020-04-11 10:20:00', '2020-04-12 10:20:03'),
(66, 259, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/259/1586600402picture_1586600382.jpg', NULL, 'assets/post_resource/259/1586600402picture_1586600382.jpg', NULL, '2020-04-11 10:20:02', '2020-04-12 10:20:03'),
(67, 259, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/259/1586600469picture_1586600461.jpg', NULL, 'assets/post_resource/259/1586600469picture_1586600461.jpg', NULL, '2020-04-11 10:21:09', '2020-04-12 10:21:09'),
(68, 259, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/259/1586600842picture_1586600833.jpg', NULL, 'assets/post_resource/259/1586600842picture_1586600833.jpg', NULL, '2020-04-11 10:27:22', '2020-04-12 10:27:24'),
(69, 256, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/256/1586608343picture_1586608335.jpg', NULL, 'assets/post_resource/256/1586608343picture_1586608335.jpg', NULL, '2020-04-11 12:32:23', '2020-04-12 12:32:24'),
(70, 256, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/256/1586608378picture_1586608371.jpg', NULL, 'assets/post_resource/256/1586608378picture_1586608371.jpg', NULL, '2020-04-11 12:32:58', '2020-04-12 12:33:00'),
(71, 256, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/256/1586608496picture_1586608493.jpg', NULL, 'assets/post_resource/256/1586608496picture_1586608493.jpg', NULL, '2020-04-11 12:34:56', '2020-04-12 12:34:58'),
(72, 256, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/256/1586608787picture_1586608784.jpg', NULL, 'assets/post_resource/256/1586608787picture_1586608784.jpg', NULL, '2020-04-11 12:39:47', '2020-04-12 12:39:49'),
(73, 256, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/256/1586609980picture_1586609976.jpg', NULL, 'assets/post_resource/256/1586609980picture_1586609976.jpg', NULL, '2020-04-11 12:59:40', '2020-04-12 12:59:40'),
(74, 257, NULL, '1', '1', 'https://party-app.s3-us-west-2.amazonaws.com/assets/post_resource/257/1586677212picture_1586677209.jpg', NULL, 'assets/post_resource/257/1586677212picture_1586677209.jpg', '2020-04-12 08:27:54', '2020-04-12 07:40:12', '2020-04-12 08:27:54'),
(75, 261, NULL, '1', '1', 'https://plx-world.s3-us-west-2.amazonaws.comassets/post_resource/261/1586680132fp_wmg_brawlstars.png', NULL, 'assets/post_resource/261/1586680132fp_wmg_brawlstars.png', '2020-04-12 08:31:33', '2020-04-12 08:28:52', '2020-04-12 08:31:33'),
(76, 261, NULL, '1', '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/261/1586680305fp_wmg_brawlstars.png', NULL, 'assets/post_resource/261/1586680305fp_wmg_brawlstars.png', '2020-04-12 08:32:20', '2020-04-12 08:31:45', '2020-04-12 08:32:20'),
(77, 259, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/259/1586701232picture_1586701229.jpg', NULL, 'assets/post_resource/259/1586701232picture_1586701229.jpg', NULL, '2020-04-12 14:20:32', '2020-04-13 14:20:33'),
(78, 225, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/225/1586788388_document0.jpeg', NULL, 'assets/post_resource/225/1586788388_document0.jpeg', NULL, '2020-04-13 14:33:08', '2020-04-14 14:33:10'),
(79, 258, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/258/1586843240_document0.jpeg', NULL, 'assets/post_resource/258/1586843240_document0.jpeg', NULL, '2020-04-14 05:47:20', '2020-04-15 05:47:22'),
(80, 258, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/258/1586843273_document0.jpeg', NULL, 'assets/post_resource/258/1586843273_document0.jpeg', NULL, '2020-04-14 05:47:53', '2020-04-15 05:47:55'),
(81, 258, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/258/1586843303_document0.jpeg', NULL, 'assets/post_resource/258/1586843303_document0.jpeg', NULL, '2020-04-14 05:48:23', '2020-04-15 05:48:25'),
(82, 225, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/225/1586879685_document0.jpeg', NULL, 'assets/post_resource/225/1586879685_document0.jpeg', NULL, '2020-04-14 15:54:45', '2020-04-15 15:54:46'),
(83, 260, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/260/15868920808d150c5a-0f5b-4990-b37a-7f2f13ebf81d.png', NULL, 'assets/post_resource/260/15868920808d150c5a-0f5b-4990-b37a-7f2f13ebf81d.png', NULL, '2020-04-14 19:21:20', '2020-04-15 19:21:22'),
(84, 255, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/1586892578_document0.jpeg', NULL, 'assets/post_resource/255/1586892578_document0.jpeg', NULL, '2020-04-14 19:29:38', '2020-04-15 19:29:40'),
(85, 267, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/267/1586892648a6d4c055-21a0-437d-a672-d48347a1c446.png', NULL, 'assets/post_resource/267/1586892648a6d4c055-21a0-437d-a672-d48347a1c446.png', NULL, '2020-04-14 19:30:48', '2020-04-15 19:30:49'),
(87, 225, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/261/1587280219fp_wmg_brawlstars.png', NULL, 'assets/post_resource/261/1587280219fp_wmg_brawlstars.png', NULL, '2020-04-19 07:10:19', '2020-04-20 07:10:19'),
(88, 255, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/255/15874529322efd1f53-eb91-4616-9a75-e6f622651d1e.png', NULL, 'assets/post_resource/255/15874529322efd1f53-eb91-4616-9a75-e6f622651d1e.png', NULL, '2020-04-21 07:08:52', '2020-04-22 07:08:55'),
(89, 261, NULL, '2', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/261/1587618598Smallshorttestvideo.mp4', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/261/2611587618598thumb.jpg', 'assets/post_resource/261/1587618598Smallshorttestvideo.mp4', NULL, '2020-04-23 05:09:58', '2020-04-24 05:10:01'),
(90, 258, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/258/1588450004_document0.jpeg', NULL, 'assets/post_resource/258/1588450004_document0.jpeg', NULL, '2020-05-02 20:06:44', '2020-05-03 20:06:47'),
(91, 258, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/258/1588450034_document0.jpeg', NULL, 'assets/post_resource/258/1588450034_document0.jpeg', NULL, '2020-05-02 20:07:14', '2020-05-03 20:07:14'),
(92, 258, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/258/1588450095_document0.jpeg', NULL, 'assets/post_resource/258/1588450095_document0.jpeg', NULL, '2020-05-02 20:08:15', '2020-05-03 20:08:17'),
(93, 258, NULL, '1', '3', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/258/1588450178_document0.jpeg', NULL, 'assets/post_resource/258/1588450178_document0.jpeg', NULL, '2020-05-02 20:09:38', '2020-05-03 20:09:41'),
(94, 273, NULL, '1', '1', NULL, NULL, NULL, NULL, '2021-07-02 21:17:12', '2021-07-02 21:17:12'),
(95, 273, NULL, '1', '1', NULL, NULL, NULL, NULL, '2021-07-02 21:20:03', '2021-07-02 21:20:03'),
(96, 273, NULL, '1', '1', 'assets/post_resource/273/1625416580d159a5ca-2b13-452c-9267-27e5914f674e.png', NULL, 'assets/post_resource/273/1625416580d159a5ca-2b13-452c-9267-27e5914f674e.png', NULL, '2021-07-04 16:36:20', '2021-07-04 16:36:20'),
(97, 273, NULL, '1', '1', 'assets/post_resource/273/1625469403picture_1625469398.jpg', NULL, 'assets/post_resource/273/1625469403picture_1625469398.jpg', NULL, '2021-07-05 07:16:43', '2021-07-05 07:16:43'),
(98, 274, NULL, '1', '1', 'assets/post_resource/274/1625500530thumb_1.jpg', NULL, 'assets/post_resource/274/1625500530thumb_1.jpg', NULL, '2021-07-05 15:55:30', '2021-07-05 15:55:30'),
(99, 274, NULL, '2', '1', 'assets/post_resource/274/1625586337nok.MP4', 'assets/post_resource/274/2741625586341thumb.jpg', 'assets/post_resource/274/1625586337nok.MP4', NULL, '2021-07-06 15:45:37', '2021-07-06 15:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `story_files`
--

CREATE TABLE `story_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `story_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=photo;2=video;',
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `story_files`
--

INSERT INTO `story_files` (`id`, `story_id`, `type`, `reference_url`, `thumbnail_url`, `file_path`, `created_at`, `updated_at`) VALUES
(3, 93, '1', 'https://plx-world.s3-us-west-2.amazonaws.com/assets/post_resource/258/1588450178_document1.jpeg', NULL, 'assets/post_resource/258/1588450178_document1.jpeg', '2020-05-02 20:09:39', '2020-05-02 20:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `terms_conditions`
--

CREATE TABLE `terms_conditions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_type` int(11) DEFAULT '1' COMMENT '1=user;2=role_based',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_me` longtext COLLATE utf8mb4_unicode_ci,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `date_of_birth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '1=active;2=block',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `facebook_id`, `role_type`, `name`, `email`, `about_me`, `username`, `gender`, `phone`, `bio`, `date_of_birth`, `image_url`, `password`, `owner_name`, `location`, `latitude`, `longitude`, `remember_token`, `status`, `token`, `last_login_at`, `created_at`, `updated_at`) VALUES
(11, NULL, 2, 'admin', 'admin@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oZOpthv8Z4w7gSRm2twM0.5qYaL7x6PoH3SjFXzUlWcB3skeUovWK', NULL, NULL, NULL, NULL, 'JuGI9LhW6g63IaAlZ7yXbPnIjG3knheBJPOa5NQJ12rKGYwPd3YktDx64JVA', 1, NULL, '2021-07-09 20:10:17', NULL, '2021-07-09 14:10:17'),
(225, NULL, 1, 'test', 'aa1@bb.com', 'hi this is test', 'aa', NULL, NULL, NULL, NULL, 'assets/users_image/225/1586014577swift_file2.jpeg', '$2y$10$lyc2SAm.eiQz5fg3WHd9Juo7ar6jVO2j.O7NqGHB89QhJhH.0SCES', NULL, '15 Rd No 1, ঢাকা 1216, বাংলাদেশ', '23.82207017244581', '90.36358684301376', 'mZDc9BmhtY16Ch6PNvkndEdNAHOLFqDH5HBiogWVYeTH94yiAoxM77ABiHsZ', 1, NULL, '2021-07-09 20:00:43', '2020-03-31 17:56:16', '2021-07-09 14:00:43'),
(254, NULL, 1, NULL, 'shamimpdfbd@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting', 'thowhid', NULL, NULL, NULL, NULL, 'assets/users_image/254/158653583883bc5ee4-c721-4cad-9af7-dddd8f293397.png', '$2y$10$iRyRUP0jG1FZiq.lo5D3qOv1fs/0MocHBo9aJNwZ3iPJFZKuWeuhe', NULL, 'dhaka', NULL, NULL, NULL, 1, NULL, '2020-04-12 12:59:46', '2020-04-10 09:49:12', '2020-04-12 06:59:46'),
(255, NULL, 1, NULL, 'benjamin.lucer0105@gmail.com', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by', 'Thowhidur', NULL, NULL, NULL, NULL, 'assets/users_image/255/1586539133swift_file2.jpeg', '$2y$10$lG1.hQEDJq29hMHkjIxjK.FH7Y7rF08xX3jJ6uAhlyQdq9czA3rHu', NULL, 'Dhaka', NULL, NULL, NULL, 1, '5444', '2020-05-02 23:47:07', '2020-04-10 10:03:41', '2020-05-02 17:47:07'),
(256, NULL, 1, NULL, 'palash6@gmail.com', NULL, 'palash', NULL, NULL, NULL, NULL, 'assets/users_image/256/1586515033picture_1586515026.jpg', '$2y$10$hn6kdaL1X66lC8COEUSaWOpuDFEE.9Hb46vPerBK9jC4lHYbXaah2', NULL, 'Bangladesh', NULL, NULL, NULL, 1, NULL, '2020-04-10 16:59:27', '2020-04-10 10:25:02', '2020-04-11 20:26:20'),
(257, NULL, 1, NULL, 'rayhan@gmail.com', NULL, 'rayhan', NULL, NULL, NULL, NULL, 'assets/users_image/257/1586859151picture_1586859148.jpg', '$2y$10$VxeM7ICDXpSlKdAtd/Qk0Ohsn6GqHAqXlct/zCCdPQHOYDuW7zBJK', NULL, 'Dhaka', NULL, NULL, NULL, 1, '1535', '2020-04-21 00:12:26', '2020-04-10 11:50:59', '2020-04-21 17:16:44'),
(258, NULL, 1, NULL, 'auatusher@parallaxlogic.com', 'test', 'tusher5', NULL, NULL, NULL, NULL, 'assets/users_image/258/1586542362swift_file2.jpeg', '$2y$10$lmIz2fDnljlCOG/QXF8OhusVRa8qgoKfkzetoYKLSXlXqSBZX4o9y', NULL, 'test', NULL, NULL, NULL, 1, NULL, '2020-05-03 02:01:31', '2020-04-10 16:49:27', '2020-05-02 20:01:31'),
(259, NULL, 1, NULL, 'faysal@gmail.com', 'test', 'faysal', NULL, NULL, NULL, NULL, 'assets/users_image/259/1586966579picture_1586966575.jpg', '$2y$10$YE6Csnh445KZw4aTu3fCneVFykPFdUPceTTOhnQqa6D4qKpy.uAzi', NULL, 'Dhaka', NULL, NULL, NULL, 1, NULL, '2021-07-05 16:28:45', '2020-04-11 04:34:13', '2021-07-05 10:28:45'),
(260, NULL, 1, NULL, 'tuba@gmail.com', NULL, 'tuba', NULL, NULL, NULL, NULL, 'assets/users_image/260/1586604890b97386bb-dce0-4bb5-9d9b-34b6dbc2aaeb.png', '$2y$10$CtIejxKCWF.e1iL3zHD5F.sdCpg3P9550xI3uHLUpAFEPRbFuAvya', NULL, 'dhaka', NULL, NULL, NULL, 1, NULL, '2020-04-15 01:24:37', '2020-04-11 04:58:32', '2020-04-14 19:24:37'),
(261, NULL, 1, NULL, 'samsul@parallaxlogic.com', 'This is for testing', 'devaccount', NULL, NULL, NULL, NULL, 'assets/users_image/261/1586665881fp_wmg_brawlstars.png', '$2y$10$GSEUxFcHHt8cOUapyNcd0OVcDRYaE/M0exESxpC8HlCnJcDk06pQC', NULL, 'California', '36.7783', '119.4179', NULL, 1, '7447', '2020-05-02 15:47:32', '2020-04-11 05:24:19', '2020-05-02 09:47:32'),
(262, NULL, 1, NULL, 'roy@gmail.com', NULL, 'roy', NULL, NULL, NULL, NULL, 'assets/users_image/262/1586623009picture_1586622998.jpg', '$2y$10$4RkhIILZAO4kOSGTZi/aru6E4fql2J0u71ePCFpbZtBpyUoT1iSRa', NULL, 'dhaka', NULL, NULL, NULL, 1, NULL, '2020-04-20 18:29:45', '2020-04-11 12:07:06', '2020-04-20 12:29:45'),
(263, NULL, 1, NULL, 'bb@bb.com', 'aaa', 'masum dev 2', NULL, NULL, NULL, NULL, 'assets/users_image/263/1586617064swift_file2.jpeg', '$2y$10$oWcKKqF3i0kwkCImU2QsTuEwYjp8ET1f1PRLql.nVcUJHbfkXhwcq', NULL, '8 Lane No. 4, ঢাকা 1216, বাংলাদেশ', '23.807609123254895', '90.37066385149956', NULL, 1, NULL, '2020-04-22 20:09:24', '2020-04-11 14:45:45', '2020-04-22 14:09:24'),
(265, NULL, 1, NULL, 'nursebb35@yahoo.com', NULL, 'princess', NULL, NULL, NULL, NULL, NULL, '$2y$10$y1OSJ1pa4DwNuQ4yDSxMlu43oys9KPTxWNJ4eHIALtmm1Q7qTB87a', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-04-14 12:08:16', '2020-04-14 06:08:16', '2020-04-14 06:08:16'),
(266, NULL, 1, NULL, 'cc@cc.com', NULL, 'masum dev 3', NULL, NULL, NULL, NULL, NULL, '$2y$10$SMxOAQfFB1L3Whlr7QKFX.xkMv/EjejgfzQ5utHtXyRPh/lKaHWp2', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-04-14 21:50:50', '2020-04-14 15:50:50', '2020-04-14 15:50:50'),
(267, NULL, 1, NULL, 'Babu@gmail.com', NULL, 'babu', NULL, NULL, NULL, NULL, 'assets/users_image/267/158689253217203988-447e-4e56-ad05-0f08a20afe1e.png', '$2y$10$8O9pzVgo/rTMN5U91grcOe/PAc6ibXUhm7o2HRNxJsn3zDKWd0Oke', NULL, 'dhaka', NULL, NULL, NULL, 1, NULL, '2020-04-25 11:55:45', '2020-04-14 19:28:16', '2020-04-25 05:55:45'),
(268, NULL, 1, NULL, 'rajiur@parallaxlogic.com', NULL, 'shovon', NULL, NULL, NULL, NULL, 'assets/users_image/268/1587030609c63bebb6-212e-431a-b11f-6e2f8aeded37.png', '$2y$10$hbJTSYO11P/bPve7czJhDepyiJ..lsCirtVZYwHLoOkMQkcggOXzS', NULL, 'Dhaka', NULL, NULL, NULL, 1, NULL, '2020-04-16 15:45:38', '2020-04-16 07:28:25', '2020-04-16 09:50:09'),
(269, NULL, 1, NULL, 'palash@gmail.com', NULL, 'palash', NULL, NULL, NULL, NULL, NULL, '$2y$10$O2wV/BZyl4G89jjFFrJ/ve58vHqC2LbxG2G8E89srONVFGkV9g4P.', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-04-18 15:34:13', '2020-04-18 09:34:13', '2020-04-18 09:34:13'),
(270, NULL, 1, NULL, 'palash1@gmail.com', NULL, 'palash1', NULL, NULL, NULL, NULL, NULL, '$2y$10$k04qnD/SBcrGUzRD/blmcOtMstlPkOTjaXsy9VQDA8iP4JOJmvUt2', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-04-18 16:30:24', '2020-04-18 10:30:24', '2020-04-18 10:30:24'),
(271, NULL, 1, NULL, 'testaa@aa.com', NULL, 'testaa', NULL, NULL, NULL, NULL, NULL, '$2y$10$19STZ4GhTX4EBDyp2k5SmOX9UwgcYNr0W1d3kiK1b8gE4IMa.121y', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-04-21 22:02:28', '2020-04-21 16:02:28', '2020-04-21 16:02:28'),
(272, NULL, 1, NULL, 'mom@gmail.com', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator', 'momtahina', NULL, NULL, NULL, NULL, 'assets/users_image/272/158789004732283574-ee03-487e-b8e0-475ffac25f6c.png', '$2y$10$xIiaUYpRFH7IspukQXuuL.UAfvXtYGvqxMUdbA1cHZ7YhyYz3Ckje', NULL, 'kustia', NULL, NULL, NULL, 1, NULL, '2020-04-26 16:38:08', '2020-04-26 08:30:40', '2020-04-26 10:38:08'),
(273, NULL, 1, NULL, 'dev20131030@gmail.com', 'at Home', 'dev20131030', NULL, NULL, NULL, NULL, 'assets/users_image/273/1625260407d20882ff-666f-4a2d-950b-4e5e0a76919d.png', '$2y$10$DX34nQPBnqsd4mnHhZM2cecnEQ0le.cE.uezqU2dCYwQ.a3Z99y8S', NULL, 'Washington', NULL, NULL, NULL, 1, NULL, '2021-07-09 22:31:24', '2021-07-02 18:01:42', '2021-07-09 16:31:24'),
(274, NULL, 1, NULL, 'john.graham010594@gmail.com', 'software engineer', 'John graham', NULL, NULL, NULL, NULL, NULL, '$2y$10$I4HAd3ingO9tdyfwKNdT6evDPDvBaqwIAxa1ZZZEOAPhHc7IieMe6', NULL, 'Earth', NULL, NULL, NULL, 1, NULL, '2021-07-09 19:55:11', '2021-07-05 12:19:01', '2021-07-09 13:55:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_merchant_id_foreign` (`merchant_id`);

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_users_email_unique` (`email`);

--
-- Indexes for table `banner_managements`
--
ALTER TABLE `banner_managements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocked_users`
--
ALTER TABLE `blocked_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocked_users_block_by_id_foreign` (`block_by_id`),
  ADD KEY `blocked_users_blocked_id_foreign` (`blocked_id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chattings`
--
ALTER TABLE `chattings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_likes_comment_id_foreign` (`comment_id`);

--
-- Indexes for table `common_settings`
--
ALTER TABLE `common_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_uses`
--
ALTER TABLE `contact_uses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_uses_user_id_foreign` (`user_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_user_id_foreign` (`user_id`);

--
-- Indexes for table `filter_settings`
--
ALTER TABLE `filter_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_settings_user_id_foreign` (`user_id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followers_user_id_foreign` (`user_id`),
  ADD KEY `followers_follower_id_foreign` (`follower_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `posts_categories`
--
ALTER TABLE `posts_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_files`
--
ALTER TABLE `post_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_files_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_likes_user_id_foreign` (`user_id`),
  ADD KEY `post_likes_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tags_user_id_foreign` (`user_id`),
  ADD KEY `post_tags_post_id_foreign` (`post_id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_settings`
--
ALTER TABLE `profile_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_settings_user_id_foreign` (`user_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_post_id_foreign` (`post_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stories_user_id_foreign` (`user_id`);

--
-- Indexes for table `story_files`
--
ALTER TABLE `story_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story_files_story_id_foreign` (`story_id`);

--
-- Indexes for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_managements`
--
ALTER TABLE `banner_managements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blocked_users`
--
ALTER TABLE `blocked_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `chattings`
--
ALTER TABLE `chattings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT for table `comment_likes`
--
ALTER TABLE `comment_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `common_settings`
--
ALTER TABLE `common_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_uses`
--
ALTER TABLE `contact_uses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filter_settings`
--
ALTER TABLE `filter_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `posts_categories`
--
ALTER TABLE `posts_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `post_files`
--
ALTER TABLE `post_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profile_settings`
--
ALTER TABLE `profile_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `story_files`
--
ALTER TABLE `story_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_merchant_id_foreign` FOREIGN KEY (`merchant_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blocked_users`
--
ALTER TABLE `blocked_users`
  ADD CONSTRAINT `blocked_users_block_by_id_foreign` FOREIGN KEY (`block_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blocked_users_blocked_id_foreign` FOREIGN KEY (`blocked_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD CONSTRAINT `comment_likes_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `post_comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contact_uses`
--
ALTER TABLE `contact_uses`
  ADD CONSTRAINT `contact_uses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_settings`
--
ALTER TABLE `filter_settings`
  ADD CONSTRAINT `filter_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_follower_id_foreign` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `followers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `posts_categories` (`id`),
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_files`
--
ALTER TABLE `post_files`
  ADD CONSTRAINT `post_files_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profile_settings`
--
ALTER TABLE `profile_settings`
  ADD CONSTRAINT `profile_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stories`
--
ALTER TABLE `stories`
  ADD CONSTRAINT `stories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `story_files`
--
ALTER TABLE `story_files`
  ADD CONSTRAINT `story_files_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
