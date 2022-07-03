-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 06:14 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lungo`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_bookings`
--

CREATE TABLE `event_bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kamar_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_id` bigint(20) DEFAULT NULL,
  `kode_tiket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_bookings`
--

INSERT INTO `event_bookings` (`id`, `title`, `kamar_id`, `created_at`, `updated_at`, `date`, `tempat_id`, `kode_tiket`) VALUES
(12, 'Booked', 'K001', '2021-07-22 14:07:07', '2021-07-22 07:08:58', '2021-07-23 ', 6, 'LT-19960f97b8bc1c49'),
(18, 'Booked', 'K001', '2021-07-23 11:10:31', '2021-07-23 04:27:15', '2021-07-26 ', 6, 'LT-20560faa3a6bcad1'),
(19, 'Booked', 'K001', '2021-07-23 11:10:31', '2021-07-23 04:27:16', '2021-07-27 ', 6, 'LT-20560faa3a6bcad1'),
(20, 'Cancel', 'K001', '2021-07-23 11:33:43', '2021-07-23 04:37:21', '2021-07-29 ', 6, 'LT-20560faa9176c6f5'),
(21, 'Booked', 'K001', '2021-07-23 11:34:32', '2021-07-23 04:35:19', '2021-07-29 ', 6, 'LT-20760faa948de7e4'),
(22, 'Booked', 'K003', '2021-07-23 11:48:01', '2021-07-23 04:48:32', '2021-07-27 ', 6, 'LT-20860faac70cbc78'),
(25, 'pending', 'K001', '2021-07-30 08:00:08', '2021-07-30 08:00:08', '2021-07-30 ', 6, NULL),
(26, 'pending', 'K003', '2021-07-30 08:00:08', '2021-07-30 08:00:08', '2021-07-30 ', 6, NULL),
(27, 'pending', 'K001', '2021-07-30 08:03:24', '2021-07-30 08:03:24', '2021-07-30 ', 6, NULL),
(28, 'pending', 'K003', '2021-07-30 08:03:24', '2021-07-30 08:03:24', '2021-07-30 ', 6, NULL),
(29, 'pending', 'K001', '2021-07-30 08:03:49', '2021-07-30 08:03:49', '2021-07-30 ', 6, NULL),
(30, 'pending', 'K003', '2021-07-30 08:03:49', '2021-07-30 08:03:49', '2021-07-30 ', 6, NULL),
(31, 'pending', 'K001', '2021-07-30 08:04:04', '2021-07-30 08:04:04', '2021-07-30 ', 6, NULL),
(32, 'pending', 'K003', '2021-07-30 08:04:04', '2021-07-30 08:04:04', '2021-07-30 ', 6, NULL),
(33, 'pending', 'K001', '2021-07-30 08:04:19', '2021-07-30 08:04:19', '2021-07-30 ', 6, NULL),
(34, 'pending', 'K003', '2021-07-30 08:04:19', '2021-07-30 08:04:19', '2021-07-30 ', 6, NULL),
(35, 'pending', 'K001', '2021-07-31 03:33:07', '2021-07-31 03:33:07', '2021-08-01 ', 6, NULL),
(37, 'Cancel', 'K001', '2021-07-31 04:07:20', '2021-08-01 22:05:16', '2021-08-03 ', 6, 'LT-2226104cc78f24e0'),
(38, 'Cancel', 'K001', '2021-07-31 04:27:49', '2021-08-04 09:22:36', '2021-08-06 ', 6, 'LT-2276104d145f2da4'),
(39, 'Booked', 'K003', '2021-07-31 04:27:50', '2021-07-30 21:52:40', '2021-08-06 ', 6, 'LT-2276104d145f2da4'),
(40, 'Booked', 'K001', '2021-08-02 05:04:31', '2021-08-01 22:05:16', '2021-08-03 ', 6, 'LT-23061077cdf298c9'),
(41, 'Booked', 'K001', '2021-08-02 05:04:31', '2021-08-01 22:05:16', '2021-08-04 ', 6, 'LT-23061077cdf298c9'),
(42, 'Booked', 'K001', '2021-08-04 16:08:02', '2021-08-04 09:22:36', '2021-08-05 ', 6, 'LT-234610abb6243dd8'),
(43, 'Booked', 'K001', '2021-08-04 16:08:02', '2021-08-04 09:22:36', '2021-08-06 ', 6, 'LT-234610abb6243dd8'),
(44, 'Booked', 'K001', '2021-08-12 04:15:44', '2021-08-11 21:18:17', '2021-08-12 ', 6, 'LT-2376114a0700796b'),
(45, 'Booked', 'K003', '2021-08-12 04:15:44', '2021-08-11 21:18:17', '2021-08-12 ', 6, 'LT-2376114a0700796b'),
(46, 'Booked', 'K001', '2021-08-12 04:15:44', '2021-08-11 21:18:17', '2021-08-13 ', 6, 'LT-2376114a0700796b'),
(47, 'Booked', 'K003', '2021-08-12 04:15:44', '2021-08-11 21:18:17', '2021-08-13 ', 6, 'LT-2376114a0700796b'),
(48, 'Booked', 'K001', '2021-08-12 04:15:44', '2021-08-11 21:18:18', '2021-08-14 ', 6, 'LT-2376114a0700796b'),
(49, 'Booked', 'K003', '2021-08-12 04:15:44', '2021-08-11 21:18:18', '2021-08-14 ', 6, 'LT-2376114a0700796b');

-- --------------------------------------------------------

--
-- Table structure for table `event_campings`
--

CREATE TABLE `event_campings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `camp_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_campings`
--

INSERT INTO `event_campings` (`id`, `title`, `camp_id`, `kode`, `date`, `tempat_id`, `created_at`, `updated_at`) VALUES
(1, 'Booked', 'C002', 'LT-21060fe79507c2ed', '2021-07-26 ', '4', '2021-07-26 08:58:56', '2021-07-26 06:50:23'),
(2, 'Booked', 'C002', 'LT-21060fe79507c2ed', '2021-07-27 ', '4', '2021-07-26 08:58:56', '2021-07-26 06:51:17'),
(3, 'Booked', 'C001', 'LT-2116100183f4b355', '2021-08-01 ', '4', '2021-07-27 14:29:19', '2021-07-27 07:56:58'),
(4, 'Booked', 'C002', 'LT-2116100183f4b355', '2021-08-01 ', '4', '2021-07-27 14:29:19', '2021-07-27 07:56:58'),
(5, 'Cancel', 'C001', 'LT-21561029cd24043b', '2021-08-04 ', '4', '2021-07-29 12:19:30', '2021-08-04 09:05:44'),
(6, 'Booked', 'C002', 'LT-21561029cd24043b', '2021-08-04 ', '4', '2021-07-29 12:19:30', '2021-07-29 05:20:09'),
(7, 'Cancel', 'C001', 'LT-2166102a985dbc60', '2021-08-05 ', '4', '2021-07-29 13:13:41', '2021-08-04 09:05:44'),
(8, 'Cancel', 'C002', 'LT-2166102a985dbc60', '2021-08-05 ', '4', '2021-07-29 13:13:41', '2021-08-04 19:50:17'),
(9, 'Cancel', 'C001', 'LT-2166102a9dbe0109', '2021-08-05 ', '4', '2021-07-29 13:15:07', '2021-08-04 09:05:44'),
(10, 'Cancel', 'C002', 'LT-2166102a9dbe0109', '2021-08-05 ', '4', '2021-07-29 13:15:08', '2021-08-04 19:50:17'),
(11, 'Cancel', 'C002', 'LT-2186102bb85ba9e7', '2021-08-06 ', '4', '2021-07-29 14:30:29', '2021-08-04 19:50:17'),
(12, 'pending', 'C002', 'LT-2196102bdf2cfa9c', '2021-10-06 ', '4', '2021-07-29 14:40:50', '2021-07-29 14:40:50'),
(13, 'pending', 'C002', 'LT-2196102bdf2cfa9c', '2021-10-07 ', '4', '2021-07-29 14:40:51', '2021-07-29 14:40:51'),
(14, 'pending', 'C002', 'LT-2196102bdf2cfa9c', '2021-10-08 ', '4', '2021-07-29 14:40:51', '2021-07-29 14:40:51'),
(15, 'Booked', 'C001', 'LT-2206102c3e507dd6', '2021-10-01 ', '4', '2021-07-29 15:06:13', '2021-07-29 08:06:52'),
(16, 'Booked', 'C001', 'LT-2206102c3e507dd6', '2021-10-02 ', '4', '2021-07-29 15:06:13', '2021-07-29 08:06:52'),
(17, 'Booked', 'C001', 'LT-2206102c3e507dd6', '2021-10-03 ', '4', '2021-07-29 15:06:13', '2021-07-29 08:06:53'),
(18, 'Booked', 'C001', 'LT-2206102c3e507dd6', '2021-10-04 ', '4', '2021-07-29 15:06:13', '2021-07-29 08:06:53'),
(19, 'Booked', 'C001', 'LT-2206102c3e507dd6', '2021-10-05 ', '4', '2021-07-29 15:06:13', '2021-07-29 08:06:53'),
(20, 'Booked', 'C002', 'LT-2216103a4c4537e6', '2021-07-30 ', '4', '2021-07-30 07:05:40', '2021-07-30 00:27:17'),
(21, 'Booked', 'C001', 'LT-23161079f171e34f', '2021-08-27 ', '4', '2021-08-02 07:30:31', '2021-08-02 00:32:30'),
(22, 'Booked', 'C002', 'LT-23161079f171e34f', '2021-08-27 ', '4', '2021-08-02 07:30:31', '2021-08-02 00:32:30'),
(23, 'Booked', 'C001', 'LT-23161079f171e34f', '2021-08-28 ', '4', '2021-08-02 07:30:31', '2021-08-02 00:32:30'),
(24, 'Booked', 'C002', 'LT-23161079f171e34f', '2021-08-28 ', '4', '2021-08-02 07:30:31', '2021-08-02 00:32:30'),
(25, 'Booked', 'C001', 'LT-233610abab4695fb', '2021-08-04 ', '4', '2021-08-04 16:05:08', '2021-08-04 09:05:44'),
(26, 'Booked', 'C001', 'LT-233610abab4695fb', '2021-08-05 ', '4', '2021-08-04 16:05:08', '2021-08-04 09:05:44'),
(27, 'Booked', 'C001', 'LT-233610abab4695fb', '2021-08-06 ', '4', '2021-08-04 16:05:09', '2021-08-04 09:05:45'),
(28, 'Booked', 'C001', 'LT-233610abab4695fb', '2021-08-07 ', '4', '2021-08-04 16:05:09', '2021-08-04 09:05:45'),
(29, 'Booked', 'C002', 'LT-235610b519a4874c', '2021-08-05 ', '4', '2021-08-05 02:48:58', '2021-08-04 19:50:17'),
(30, 'Booked', 'C002', 'LT-235610b519a4874c', '2021-08-06 ', '4', '2021-08-05 02:48:58', '2021-08-04 19:50:17'),
(31, 'Booked', 'C002', 'LT-235610b519a4874c', '2021-08-07 ', '4', '2021-08-05 02:48:58', '2021-08-04 19:50:17'),
(32, 'Booked', 'C002', 'LT-235610b519a4874c', '2021-08-08 ', '4', '2021-08-05 02:48:58', '2021-08-04 19:50:17'),
(33, 'pending', 'C001', 'LT-2386114a23de5fdf', '2021-08-13 ', '4', '2021-08-12 04:23:25', '2021-08-12 04:23:25'),
(34, 'pending', 'C001', 'LT-2386114a23de5fdf', '2021-08-14 ', '4', '2021-08-12 04:23:26', '2021-08-12 04:23:26'),
(35, 'pending', 'C001', 'LT-2386114a23de5fdf', '2021-08-15 ', '4', '2021-08-12 04:23:26', '2021-08-12 04:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `event_kegiatan`
--

CREATE TABLE `event_kegiatan` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_19_051759_create_tb_role_table', 1),
(5, '2021_04_19_051917_create_tb_tempat_table', 1),
(6, '2021_04_26_035742_create_tb_tiket_table', 1),
(7, '2021_05_17_055457_create_add_petugas_id_to_users', 1),
(8, '2021_05_26_071606_create_add_image_to_tb_tempat', 1),
(9, '2021_05_29_070749_create_tb_blog_table', 2),
(10, '2021_05_30_030740_create_add_time_to_tb_tempat', 2),
(11, '2021_06_10_033810_create_tb_pay_table', 3),
(12, '2021_06_15_032318_create_tb_camp_table', 4),
(13, '2021_06_15_033018_create_tb_wahana_table', 4),
(14, '2021_06_17_045444_create_tb_kuliner_table', 5),
(15, '2021_06_20_044335_create_tb_detailtransaksi_table', 6),
(16, '2021_06_25_152144_create_tb_pencairan_table', 7),
(17, '2021_06_26_022121_create_tb_detailcamp_table', 8),
(18, '2021_06_30_034536_create_tb_detailbooking_table', 9),
(19, '2021_06_30_035839_create_tb_kamar_table', 10),
(20, '2021_07_11_121732_create_event_bookings_table', 11),
(22, '2021_07_25_125215_create_event_campings_table', 12),
(23, '2021_08_01_234051_create_table_setting', 13),
(24, '2021_08_12_031553_create_tb_kegiatan_table', 14),
(25, '2021_08_12_125845_create_event_kegiatan_table', 15),
(26, '2022_04_07_064902_create_tb_kategorievent_table', 15),
(27, '2022_04_07_074056_create_tb_event_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('vio@gmail.com', '$2y$10$3cmhZj9PJgXOYITnukF8oOCKquH2rSJYo3wkVC.EFh3t0poj4DUxq', '2021-07-06 06:14:15'),
('alifudinniko@student.uns.ac.id', '$2y$10$dnbz9LokTM68dfA365YdMOUdv5n0gflSS2UjF7HyUqMahahOebO/2', '2021-07-06 06:59:58'),
('firdaus.fiers@gmail.com', '$2y$10$4uUcWrO8jWoCdqU509bwc.nxL/.6pM5cTaYfuNthyax2gdUa4jlJC', '2021-12-20 23:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `table_setting`
--

CREATE TABLE `table_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sponsor1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sponsor2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sponsor3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sponsor4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_setting`
--

INSERT INTO `table_setting` (`id`, `home1`, `about1`, `about2`, `video`, `sponsor1`, `sponsor2`, `sponsor3`, `sponsor4`, `experience1`, `experience2`, `created_at`, `updated_at`) VALUES
(1, 'hRerEpZiBh7zZ7QMpresz6JRrudtI51TdCCZouTu.jpg', '1635820808.png', '1635820863.png', 'fVkMCnIag5hJBmcib1DbxLyVZpnf3THM7NbqjvdX.m4v', NULL, 'M6tArxfpgeFQwhH1w1BfRTE8MyNY0EwB6TK9juEM.png', 'T64pdhTeyN3z7t1mrGc5pI9FmYbcm25NVDh32Ilg.png', 'StXyLxV1qhJ5MZXfbuLIl2eSm7MDuACcpFf06gno.png', 'bSce8EQdWA1uCax5AFdY9zPJSY4KU3TaRVXTsQWg.jpg', 'evZ9hldbe01WUiByRGPT6GSNOkW0mQ0wkO9H3GSc.jpg', NULL, '2021-11-01 19:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog`
--

CREATE TABLE `tb_blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `petugas_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_camp`
--

CREATE TABLE `tb_camp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tempat_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode_camp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_harga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_camp`
--

INSERT INTO `tb_camp` (`id`, `tempat_id`, `name`, `jumlah`, `deskripsi`, `image`, `harga`, `status`, `created_at`, `updated_at`, `kode_camp`, `deskripsi_harga`, `kategori`) VALUES
(1, 4, 'Tenda Kecil 1', 5, 'Tenda k 1-2 Orang', 'ttNfU9DT1DxRXITuaN7TF9oZpeShiq3ufLURl3oN.jpg', '10000', 1, '2021-06-16 20:15:10', '2022-03-07 07:09:52', 'C001', 'Satu hari', 'alat'),
(2, 4, 'Tenda Besar 2', 5, 'Tenda untuk 4-5 orang', 'TjOQDCLIH8d8hMBAXditC2FPy8XWydVXfvQIQYQh.jpg', '20000', 1, '2021-06-16 20:37:12', '2021-07-25 05:50:13', 'C002', 'Satu hari', 'alat'),
(7, 4, 'Paket Makan 1', NULL, 'Include makan untuk orang camping atau apapun', 'rFzp8TsH5uGbk9gfYBJ7FDEGdA4sxKmAAnIvqJIk.jpg', '30000', 1, '2021-06-26 06:41:31', '2021-07-29 06:40:57', 'C007', 'Satu Orang, Satu Hari, 3x Makan', 'makan'),
(8, 4, 'Paket Makan 2', NULL, 'Include makan untuk orang camping atau apapun', 'q0K3tR0n6IovENzZig500KsFSdKAcVMvISNl4ijn.jpg', '20000', 1, '2021-07-29 06:39:28', '2021-07-29 06:39:28', 'C008', 'Satu Orang, Satu Hari, 3x Makan', 'makan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detailbooking`
--

CREATE TABLE `tb_detailbooking` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_tiket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_booking` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `tempat_id` bigint(20) NOT NULL,
  `tempat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkinn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkoutt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_orang` int(11) NOT NULL,
  `kamar_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_kamar` int(11) NOT NULL,
  `durasi` int(11) NOT NULL,
  `subtotal` int(25) NOT NULL,
  `status` int(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_detailbooking`
--

INSERT INTO `tb_detailbooking` (`id`, `kode_tiket`, `kode_booking`, `name`, `user_id`, `tempat_id`, `tempat_name`, `checkin`, `checkinn`, `checkout`, `checkoutt`, `jumlah_orang`, `kamar_id`, `jumlah_kamar`, `durasi`, `subtotal`, `status`, `created_at`, `updated_at`) VALUES
(1, 'LT-17060dd53419f5c3', 'DB0001', 'vio', 10, 6, 'Penginapan A', '2021-07-02', '2021-07-01 20:23:05', '2021-07-04', '2021-07-01 20:25:19', 2, 'K001', 1, 2, 60000, 2, '2021-07-01 05:31:45', '2021-07-01 13:25:19'),
(4, 'LT-18860eb1bb6916fa', 'DB0004', 'vio', 10, 6, 'Penginapan A', '2021-07-11', '2021-07-23 18:43:38', '2021-07-14', NULL, 1, 'K001', 1, 3, 90000, 1, '2021-07-11 16:26:30', '2021-07-23 11:43:38'),
(12, 'LT-19960f97b8bc1c49', 'DB0008', 'alif', 16, 6, 'Penginapan A', '2021-07-23', '2021-07-22 21:09:28', '2021-07-24', '2021-07-22 21:09:36', 2, 'K001', 1, 1, 30000, 2, '2021-07-22 14:07:07', '2021-07-22 14:09:36'),
(16, 'LT-20560faa3a6bcad1', 'DB0010', 'alif', 16, 6, 'Penginapan A', '2021-07-26', NULL, '2021-07-28', NULL, 2, 'K001', 1, 2, 60000, 0, '2021-07-23 11:10:31', '2021-07-23 11:10:31'),
(18, 'LT-20760faa948de7e4', 'DB0012', 'vivi', 13, 6, 'Penginapan A', '2021-07-29', '2021-07-23 18:42:24', '2021-07-30', NULL, 2, 'K001', 1, 1, 30000, 1, '2021-07-23 11:34:32', '2021-07-23 11:42:24'),
(19, 'LT-20860faac70cbc78', 'DB0013', 'vio', 10, 6, 'Penginapan A', '2021-07-27', '2021-07-23 18:49:10', '2021-07-28', NULL, 2, 'K003', 1, 1, 80000, 1, '2021-07-23 11:48:01', '2021-07-23 11:49:10'),
(26, 'LT-2266104ccd586614', 'DB0015', 'vio', 10, 6, 'Penginapan A', '2021-08-02', '2021-07-31 11:22:51', '2021-08-03', NULL, 2, 'K003', 1, 1, 80000, 1, '2021-07-31 04:08:53', '2021-07-31 04:22:51'),
(29, 'LT-23061077cdf298c9', 'DB0018', 'vivi', 13, 6, 'Penginapan A', '2021-08-02', '2021-08-02 14:22:13', '2021-08-04', '2021-08-02 14:22:38', 2, 'K001', 1, 2, 60000, 2, '2021-08-02 05:04:31', '2021-08-02 07:22:38'),
(30, 'LT-234610abb6243dd8', 'DB0019', 'alif', 16, 6, 'Penginapan A', '2021-08-04', NULL, '2021-08-06', NULL, 1, 'K001', 1, 2, 60000, 0, '2021-08-04 16:08:02', '2021-08-04 16:08:02'),
(31, 'LT-2376114a0700796b', 'DB0020', 'vivi', 13, 6, 'Penginapan A', '2021-08-12', '2021-08-12 11:20:08', '2021-08-14', '2021-08-12 11:20:23', 2, 'K001', 1, 2, 60000, 2, '2021-08-12 04:15:44', '2021-08-12 04:20:23'),
(32, 'LT-2376114a0700796b', 'DB0021', 'vivi', 13, 6, 'Penginapan A', '2021-08-12', '2021-08-12 11:20:08', '2021-08-14', '2021-08-12 11:20:23', 2, 'K003', 1, 2, 160000, 2, '2021-08-12 04:15:45', '2021-08-12 04:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detailcamp`
--

CREATE TABLE `tb_detailcamp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_tiket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `tempat_id` bigint(20) NOT NULL,
  `tempat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_orang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `makan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `durasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alat_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_tenda` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `makan_durasi` int(25) DEFAULT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(25) NOT NULL DEFAULT 0,
  `tgl_kembaliin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_camping` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_detailcamp`
--

INSERT INTO `tb_detailcamp` (`id`, `kode_tiket`, `name`, `user_id`, `tempat_id`, `tempat_name`, `date`, `date2`, `jumlah_orang`, `makan`, `durasi`, `alat_id`, `jumlah_tenda`, `makan_durasi`, `harga`, `status`, `tgl_kembaliin`, `kode_camping`, `created_at`, `updated_at`) VALUES
(1, 'LT-13060d734884f1ae', 'vivi', 13, 4, 'Watu Gambir', '2021-06-28', '', '8', 'include', '1', NULL, '2', NULL, '280000', 0, NULL, 'DC0001', '2021-06-26 07:07:04', '2021-06-26 07:07:04'),
(2, 'LT-13160d740276ba06', 'vivi', 13, 4, 'Watu Gambir', '2021-06-28', '', '4', 'exclude', '2', NULL, '2', NULL, '40004', 0, NULL, 'DC0002', '2021-06-26 07:56:39', '2021-06-26 07:56:39'),
(3, 'LT-13260d74253a2772', 'vivi', 13, 4, 'Watu Gambir', '2021-06-30', '', '1', 'include', '1', 'C001', '3', NULL, '0', 0, NULL, 'DC0003', '2021-06-26 08:05:55', '2021-06-26 08:05:55'),
(5, 'LT-14460d9d901ad9ba', 'vio', 10, 4, 'Watu Gambir', '2021-06-29', '', '2', 'exclude', '2', 'C001', '2', NULL, '40000', 0, NULL, 'DC0005', '2021-06-28 07:13:21', '2021-06-28 07:13:21'),
(19, 'LT-15860db22d965e3b', 'vio', 10, 4, 'Watu Gambir', '2021-06-30', '', '8', 'include', '3', 'C002', '2', NULL, '600000', 0, NULL, 'DC0017', '2021-06-29 06:40:41', '2021-06-29 06:40:41'),
(20, 'LT-15960db2339e4191', 'vio', 10, 4, 'Watu Gambir', '2021-06-30', '', '8', 'include', '3', 'C002', '2', NULL, '600000', 0, NULL, 'DC0018', '2021-06-29 06:42:17', '2021-06-29 06:42:17'),
(21, 'LT-16160dc1e2570284', 'vio', 10, 4, 'Watu Gambir', '2021-06-30', '', '2', 'include', '2', 'C001', '2', 2, '160000', 1, '2021-06-30 15:16:01', 'DC0019', '2021-06-30 00:32:53', '2021-06-30 08:16:01'),
(22, 'LT-16260dc6fc10b7eb', 'vio', 10, 4, 'Watu Gambir', '2021-07-03', '', '4', 'exclude', '2', 'C002', '1', NULL, '40000', 0, NULL, 'DC0020', '2021-06-30 06:21:05', '2021-06-30 06:21:05'),
(23, 'LT-18360e4182c7b203', 'alif', 16, 4, 'Watu Gambir', '2021-07-09', '', '2', 'exclude', '2', 'C002', '2', NULL, '80000', 1, '2021-07-06 15:56:43', 'DC0021', '2021-07-06 01:45:32', '2021-07-06 08:56:43'),
(24, 'LT-18460e41b05d86f7', 'alif', 16, 4, 'Watu Gambir', '2021-07-08', '', '1', 'include', '1', 'C002', '1', 1, '50000', 1, '2021-07-07 20:02:35', 'DC0022', '2021-07-06 01:57:41', '2021-07-07 13:02:35'),
(25, 'LT-20960fcb78b974e5', 'vio', 10, 4, 'Watu Gambir', '2021-07-27', '', '2', 'include', '2', 'C001', '2', 1, '100000', 0, NULL, 'DC0023', '2021-07-24 17:59:55', '2021-07-24 17:59:55'),
(26, 'LT-21060fe79507c2ed', 'vivi', 13, 4, 'Watu Gambir', '2021-07-26 00:00:00', '', '1', 'include', '2', 'C002', '1', 2, '100000', 1, '2021-07-27 07:34:52', 'DC0024', '2021-07-26 08:58:56', '2021-07-27 00:34:52'),
(27, 'LT-2116100183f4b355', 'vivi', 13, 4, 'Watu Gambir', '2021-08-01 00:00:00', '2021-08-02 00:00:00', '1', 'include', '1', 'C001', '1', 1, '60000', 1, '2021-07-27 22:15:46', 'DC0025', '2021-07-27 14:29:19', '2021-07-27 15:15:46'),
(28, 'LT-2116100183f4b355', 'vivi', 13, 4, 'Watu Gambir', '2021-08-01 00:00:00', '2021-08-02 00:00:00', '1', 'include', '1', 'C002', '1', 1, '60000', 0, NULL, 'DC0026', '2021-07-27 14:29:20', '2021-07-27 14:29:20'),
(33, 'LT-2176102b5141aa61', 'vio', 10, 4, 'Watu Gambir', '2021-08-05 00:00:00', '2021-08-06 00:00:00', '1', 'include', '1', 'C008', '1', 1, '20000', 1, '2021-07-29 21:11:12', 'DC0031', '2021-07-29 14:03:00', '2021-07-29 14:11:12'),
(36, 'LT-2196102bdf2cfa9c', 'vio', 10, 4, 'Watu Gambir', '2021-10-06 00:00:00', '2021-10-09 00:00:00', '2', 'include', '3', 'C002', '1', 3, '60000', 0, NULL, 'DC0034', '2021-07-29 14:40:51', '2021-07-29 14:40:51'),
(37, 'LT-2196102bdf2cfa9c', 'vio', 10, 4, 'Watu Gambir', '2021-10-06 00:00:00', '2021-10-09 00:00:00', '2', 'include', '3', 'C008', '1', 3, '60000', 0, NULL, 'DC0035', '2021-07-29 14:40:51', '2021-07-29 14:40:51'),
(38, 'LT-2206102c3e507dd6', 'vio', 10, 4, 'Watu Gambir', '2021-10-01 00:00:00', '2021-10-06 00:00:00', '2', 'include', '5', 'C007', '1', 5, '150000', 1, '2021-07-30 13:26:28', 'DC0036', '2021-07-29 15:06:13', '2021-07-30 06:26:28'),
(39, 'LT-2206102c3e507dd6', 'vio', 10, 4, 'Watu Gambir', '2021-10-01 00:00:00', '2021-10-06 00:00:00', '2', 'include', '5', 'C001', '1', 5, '50000', 0, NULL, 'DC0037', '2021-07-29 15:06:13', '2021-07-29 15:06:13'),
(40, 'LT-2216103a4c4537e6', 'vivi', 13, 4, 'Watu Gambir', '2021-07-30 00:00:00', '2021-07-31 00:00:00', '1', 'include', '1', 'C002', '1', 1, '20000', 0, NULL, 'DC0038', '2021-07-30 07:05:40', '2021-07-30 07:05:40'),
(41, 'LT-2216103a4c4537e6', 'vivi', 13, 4, 'Watu Gambir', '2021-07-30 00:00:00', '2021-07-31 00:00:00', '1', 'include', '1', 'C007', '1', 1, '30000', 0, NULL, 'DC0039', '2021-07-30 07:05:40', '2021-07-30 07:05:40'),
(42, 'LT-23161079f171e34f', 'fafa', 21, 4, 'Watu Gambir', '2021-08-27 00:00:00', '2021-08-28 00:00:00', '2', 'include', '1', 'C001', '1', 1, '10000', 1, '2021-08-02 14:36:05', 'DC0040', '2021-08-02 07:30:31', '2021-08-02 07:36:05'),
(43, 'LT-23161079f171e34f', 'fafa', 21, 4, 'Watu Gambir', '2021-08-27 00:00:00', '2021-08-28 00:00:00', '2', 'include', '1', 'C007', '1', 1, '30000', 0, NULL, 'DC0041', '2021-08-02 07:30:31', '2021-08-02 07:30:31'),
(44, 'LT-23161079f171e34f', 'fafa', 21, 4, 'Watu Gambir', '2021-08-27 00:00:00', '2021-08-28 00:00:00', '2', 'include', '1', 'C002', '1', 1, '20000', 0, NULL, 'DC0042', '2021-08-02 07:30:31', '2021-08-02 07:30:31'),
(45, 'LT-233610abab4695fb', 'vivi', 13, 4, 'Watu Gambir', '2021-08-04 00:00:00', '2021-08-07 00:00:00', '2', 'include', '3', 'C001', '1', 3, '30000', 0, NULL, 'DC0043', '2021-08-04 16:05:09', '2021-08-04 16:05:09'),
(46, 'LT-233610abab4695fb', 'vivi', 13, 4, 'Watu Gambir', '2021-08-04 00:00:00', '2021-08-07 00:00:00', '2', 'include', '3', 'C007', '1', 3, '90000', 0, NULL, 'DC0044', '2021-08-04 16:05:09', '2021-08-04 16:05:09'),
(47, 'LT-235610b519a4874c', 'alif', 16, 4, 'Watu Gambir', '2021-08-05 00:00:00', '2021-08-08 00:00:00', '2', 'include', '3', 'C002', '1', 3, '60000', 0, NULL, 'DC0045', '2021-08-05 02:48:58', '2021-08-05 02:48:58'),
(48, 'LT-235610b519a4874c', 'alif', 16, 4, 'Watu Gambir', '2021-08-05 00:00:00', '2021-08-08 00:00:00', '2', 'include', '3', 'C008', '1', 3, '60000', 0, NULL, 'DC0046', '2021-08-05 02:48:58', '2021-08-05 02:48:58'),
(49, 'LT-2386114a23de5fdf', 'vivi', 13, 4, 'Watu Gambir', '2021-08-13 00:00:00', '2021-08-15 00:00:00', '2', 'include', '2', 'C001', '1', 2, '20000', 0, NULL, 'DC0047', '2021-08-12 04:23:26', '2021-08-12 04:23:26'),
(50, 'LT-2386114a23de5fdf', 'vivi', 13, 4, 'Watu Gambir', '2021-08-13 00:00:00', '2021-08-15 00:00:00', '2', 'include', '2', 'C007', '1', 2, '60000', 0, NULL, 'DC0048', '2021-08-12 04:23:26', '2021-08-12 04:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detailtransaksi`
--

CREATE TABLE `tb_detailtransaksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durasi` int(2) DEFAULT NULL,
  `tanggal_a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_tiket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(25) DEFAULT NULL,
  `jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(3) DEFAULT NULL,
  `kedatangan` int(3) NOT NULL DEFAULT 0,
  `user_id` bigint(20) DEFAULT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_detailtransaksi`
--

INSERT INTO `tb_detailtransaksi` (`id`, `name`, `durasi`, `tanggal_a`, `tanggal_b`, `kode_tiket`, `id_produk`, `harga`, `jumlah`, `status`, `kedatangan`, `user_id`, `kategori`, `tempat_id`, `created_at`, `updated_at`) VALUES
(40, 'Tiket Air Terjun Jumog', 1, '0', '0', 'LT-12860d53bfc292e4', '2', 5000, '1', 1, 0, NULL, NULL, 2, '2021-06-24 19:14:20', '2021-06-26 07:08:10'),
(41, 'Tiket Watu Gambir', 1, '0', '0', 'LT-12860d53bfc292e4', '4', 5000, '1', 1, 0, 10, NULL, 4, '2021-06-24 19:14:20', '2021-06-26 07:08:10'),
(42, 'Tiket Watu Gambir', 1, '0', '0', 'LT-12960d546823ee0a', '4', 15000, '3', 1, 1, 10, 'tiket', 4, '2021-06-24 19:59:14', '2021-06-25 07:16:14'),
(43, 'Tiket Wahana Tubin', 1, '0', '0', 'LT-12960d546823ee0a', 'W001', 20000, '1', 1, 1, 10, 'wahana', 4, '2021-06-24 19:59:14', '2021-06-25 07:16:14'),
(45, 'Paket Camping', 2, '2021-06-28', '', 'LT-13160d740276ba06', 'DC0001', 40004, '1', NULL, 0, 13, 'camping', 4, '2021-06-26 07:56:39', '2021-06-26 07:56:39'),
(46, 'Paket Camping', 1, '2021-06-30', '', 'LT-13260d74253a2772', 'DC0002', 0, '1', NULL, 0, 13, 'camping', 4, '2021-06-26 08:05:55', '2021-06-26 08:05:55'),
(47, 'Tiket Watu Gambir', 1, '0', '0', 'LT-13260d74333aa228', '4', 10000, '2', NULL, 0, 13, 'tiket', 4, '2021-06-26 08:09:39', '2021-06-26 08:09:39'),
(48, 'Tiket Watu Gambir', 1, '0', '0', 'LT-13460d750d85e9d9', '4', 15000, '3', 1, 0, 13, 'tiket', 4, '2021-06-26 09:07:52', '2021-07-01 18:54:18'),
(49, 'Tiket Wahana Kapal kecil', 1, '2021-06-28', '2021-06-27 09:32:04', 'LT-13560d7de66dc3c0', 'W003', 15000, '1', 1, 1, 10, 'wahana', 4, '2021-06-26 19:11:50', '2021-06-27 07:13:49'),
(50, 'Tiket Watu Gambir', 1, '2021-06-28', '2021-06-27 09:32:04', 'LT-13560d7de66dc3c0', '4', 5000, '1', 1, 1, 10, 'tiket', 4, '2021-06-26 19:11:50', '2021-06-27 07:13:49'),
(51, 'Tiket Watu Gambir', 1, '2021-06-28', '2021-06-27 21:17:44', 'LT-13660d8883679475', '4', 20000, '4', 1, 1, 10, 'tiket', 4, '2021-06-27 14:16:22', '2021-06-27 07:18:38'),
(52, 'Tiket Watu Gambir', 1, '2021-06-29', '2021-06-27 21:44:55', 'LT-13760d88e718482d', '4', 45000, '9', 1, 1, 13, 'tiket', 4, '2021-06-27 14:42:57', '2021-06-30 06:53:32'),
(53, 'Tiket Wahana Tubin', 1, '2021-06-29', '0', 'LT-13860d925bea88d7', 'W001', 40000, '2', NULL, 0, 10, 'wahana', 4, '2021-06-28 01:28:30', '2021-06-28 01:28:30'),
(54, 'Teh Anget Manis', 1, NULL, '2021-06-28 16:41:16', 'LT-13960d96745b44ef', 'K002', 6000, '2', 1, 1, 13, 'kuliner', 5, '2021-06-28 06:08:05', '2021-06-28 09:41:16'),
(55, 'Mie Rebus Anget', 1, NULL, '2021-06-28 16:41:16', 'LT-13960d96745b44ef', 'K001', 16000, '2', 1, 1, 13, 'kuliner', 5, '2021-06-28 06:08:05', '2021-06-28 09:41:16'),
(56, 'Tiket Watu Gambir', 1, '2021-06-29', '0', 'LT-14060d97b4982adc', '4', 15000, '3', NULL, 0, 13, 'tiket', 4, '2021-06-28 07:33:29', '2021-06-28 07:33:29'),
(57, 'Mie Rebus Anget', 1, '2021-06-29', '0', 'LT-14160d9c1e143df7', 'K001', 16000, '2', 1, 0, 13, 'kuliner', 5, '2021-06-28 12:34:41', '2021-07-01 18:54:11'),
(58, 'Mie Rebus Anget', 1, '2021-06-30', '2021-07-22 20:51:34', 'LT-14260d9d484e41bc', 'K001', 16000, '2', NULL, 1, 10, 'kuliner', 5, '2021-06-28 13:54:12', '2021-07-22 13:51:34'),
(59, 'Teh Anget Manis', 1, '2021-06-30', '2021-07-22 20:51:34', 'LT-14260d9d484e41bc', 'K002', 6000, '2', NULL, 1, 10, 'kuliner', 5, '2021-06-28 13:54:13', '2021-07-22 13:51:35'),
(61, 'Paket Camping', 2, '2021-06-29', '2021-06-29 09:36:15', 'LT-14460d9d901ad9ba', 'DC0005', 40000, '1', 1, 1, 10, 'camping', 4, '2021-06-28 07:13:21', '2021-06-29 02:36:15'),
(75, 'Paket Camping', 3, '2021-06-30', '', 'LT-15860db22d965e3b', 'DC0017', 600000, '1', NULL, 0, 10, 'camping', 4, '2021-06-29 06:40:41', '2021-06-29 06:40:41'),
(76, 'Paket Camping', 3, '2021-06-30', '', 'LT-15960db2339e4191', 'DC0018', 600000, '1', 1, 0, 10, 'camping', 4, '2021-06-29 06:42:17', '2021-06-30 00:17:12'),
(77, 'Tiket Watu Gambir', 1, '2021-07-01', '0', 'LT-16060dbe5b366ca0', '4', 10000, '2', 1, 0, 13, 'tiket', 4, '2021-06-30 03:32:03', '2021-06-30 06:06:53'),
(78, 'Paket Camping', 2, '2021-06-30', '2021-06-30 14:59:52', 'LT-16160dc1e2570284', 'DC0019', 160000, '1', NULL, 1, 10, 'camping', 4, '2021-06-30 00:32:53', '2021-06-30 07:59:52'),
(79, 'Paket Camping', 2, '2021-07-03', '', 'LT-16260dc6fc10b7eb', 'DC0020', 40000, '1', 1, 0, 10, 'camping', 4, '2021-06-30 06:21:05', '2021-06-30 06:25:53'),
(80, 'Tiket Watu Gambir', 1, '2021-07-01', '0', 'LT-16360dc8c00a26ed', '4', 20000, '4', 1, 0, 13, 'tiket', 4, '2021-06-30 15:21:36', '2021-06-30 08:28:47'),
(81, 'Tiket Watu Gambir', 1, '2021-07-02', '0', 'LT-16460dc8dde1fd01', '4', 5000, '1', 1, 0, 13, 'tiket', 4, '2021-06-30 15:29:34', '2021-07-01 18:53:21'),
(82, 'Tiket Watu Gambir', 1, '2021-07-01', '0', 'LT-16560dc917da3dfa', '4', 25000, '5', 1, 0, 10, 'tiket', 4, '2021-06-30 15:45:01', '2021-06-30 08:59:30'),
(83, 'Reservasi Penginapan', 2, '2021-07-01', '2021-07-01 20:23:05', 'LT-17060dd53419f5c3', 'DB0001', 60000, '1', 1, 1, 10, 'penginapan', 6, '2021-07-01 05:31:45', '2021-07-01 13:23:05'),
(84, 'Tiket Watu Gambir', 1, '2021-07-12', '2021-07-02 13:27:00', 'LT-17160dead41205cb', '4', 15000, '3', NULL, 1, 10, 'tiket', 4, '2021-07-02 06:08:01', '2021-07-02 06:27:00'),
(85, 'Tiket Wahana Tubin', 1, '2021-07-12', '2021-07-02 13:27:00', 'LT-17160dead41205cb', 'W001', 20000, '1', NULL, 1, 10, 'wahana', 4, '2021-07-02 06:08:02', '2021-07-02 06:27:00'),
(86, 'Tiket Wahana Kapal kecil', 1, '2021-07-12', '2021-07-02 13:27:00', 'LT-17160dead41205cb', 'W003', 15000, '1', NULL, 1, 10, 'wahana', 4, '2021-07-02 06:08:02', '2021-07-02 06:27:00'),
(87, 'Mie Rebus Anget', 1, '2021-07-26', '0', 'LT-17260deaff535d57', 'K001', 16000, '2', NULL, 0, 10, 'kuliner', 5, '2021-07-02 06:19:33', '2021-07-02 06:19:33'),
(88, 'Teh Anget Manis', 1, '2021-07-26', '0', 'LT-17260deaff535d57', 'K002', 6000, '2', NULL, 0, 10, 'kuliner', 5, '2021-07-02 06:19:33', '2021-07-02 06:19:33'),
(89, 'Tiket Wahana Tubin', 1, '2021-07-22', '2021-07-06 12:14:47', 'LT-17360dec7eec6542', 'W001', 40000, '2', 1, 1, 13, 'wahana', 4, '2021-07-02 08:01:50', '2021-07-06 05:14:47'),
(90, 'Tiket Watu Gambir', 1, '2021-07-02', '0', 'LT-17460ded4dd691eb', '4', 20000, '4', 1, 0, 10, 'tiket', 4, '2021-07-02 08:57:01', '2021-07-05 19:25:41'),
(91, 'Tiket Wahana Tubin', 1, '2021-07-08', '0', 'LT-17560dee3dcd3126', 'W001', 60000, '3', 1, 0, 10, 'wahana', 4, '2021-07-02 10:01:00', '2021-07-02 03:24:14'),
(92, 'Tiket Watu Gambir', 1, '2021-07-03', '0', 'LT-17660def4d52c912', '4', 15000, '3', 1, 0, 13, 'tiket', 4, '2021-07-02 11:13:25', '2021-07-02 04:21:35'),
(93, 'Tiket Watu Gambir', 1, '2021-07-08', '0', 'LT-17760def730a9339', '4', 20000, '4', NULL, 0, 13, 'tiket', 4, '2021-07-02 11:23:28', '2021-07-02 11:23:28'),
(96, 'Tiket Watu Gambir', 1, '2021-07-05', '0', 'LT-17860e14e81d8f3c', '4', 10000, '2', NULL, 0, 13, 'tiket', 4, '2021-07-04 06:00:34', '2021-07-04 06:00:34'),
(97, 'Tiket Wahana Tubin', 1, '2021-07-05', '0', 'LT-18160e169519e9da', 'W001', 40000, '2', NULL, 0, 13, 'wahana', 4, '2021-07-04 07:54:57', '2021-07-04 07:54:57'),
(98, 'Sewa Tenda Kecil', 2, '2021-07-05', NULL, 'LT-18260e1becf83ac8', 'C001', 40000, '2', NULL, 0, 13, 'camp', 4, '2021-07-04 13:59:43', '2021-07-04 13:59:43'),
(99, 'Paket Camping', 2, '2021-07-09', '2021-07-06 15:47:44', 'LT-18360e4182c7b203', 'DC0021', 80000, '1', 1, 1, 16, 'camping', 4, '2021-07-06 01:45:32', '2021-07-12 17:32:15'),
(100, 'Paket Camping', 1, '2021-07-08', '2021-07-07 19:12:14', 'LT-18460e41b05d86f7', 'DC0022', 50000, '1', 1, 1, 16, 'camping', 4, '2021-07-06 01:57:42', '2021-07-12 17:32:09'),
(101, 'Tiket Watu Gambir', 1, '2021-07-08', '0', 'LT-18560e59c6c07808', '4', 15000, '3', 0, 0, 13, 'tiket', 4, '2021-07-07 12:22:04', '2021-07-07 05:26:31'),
(104, 'ReservasiPenginapan A', 3, '2021-07-11', '2021-07-23 18:43:38', 'LT-18860eb1bb6916fa', 'DB0004', 90000, '1', 1, 1, 10, 'penginapan', 6, '2021-07-11 16:26:30', '2021-07-23 11:43:38'),
(112, 'Tiket Watu Gambir', 1, '2021-07-21', '0', 'LT-19760f62647aebf3', '4', 20000, '4', 0, 0, 13, 'tiket', 4, '2021-07-20 01:26:31', '2021-07-19 18:32:26'),
(113, 'Tiket Watu Gambir', 1, '2021-07-21', '0', 'LT-19860f627c656668', '4', 15000, '3', 1, 0, 13, 'tiket', 4, '2021-07-20 01:32:54', '2021-07-24 06:50:24'),
(114, 'ReservasiPenginapan A', 1, '2021-07-23', '2021-07-22 21:09:28', 'LT-19960f97b8bc1c49', 'DB0008', 30000, '1', 1, 1, 16, 'penginapan', 6, '2021-07-22 14:07:07', '2021-07-22 14:09:28'),
(115, 'Mie Rebus Anget', 1, '2021-07-22', '2021-07-22', 'LT-20060f97c810504c', 'K001', 16000, '2', 2, 1, 16, 'kuliner', 5, '2021-07-22 14:11:13', '2021-07-22 07:43:56'),
(116, 'Teh Anget Manis', 1, '2021-07-22', '2021-07-22', 'LT-20060f97c810504c', 'K002', 6000, '2', 2, 1, 16, 'kuliner', 5, '2021-07-22 14:11:13', '2021-07-22 07:45:00'),
(117, 'Mendoan', 1, '2021-07-22', '2021-07-22', 'LT-20060f97c810504c', 'K003', 10000, '1', 2, 1, 16, 'kuliner', 5, '2021-07-22 14:11:13', '2021-07-22 07:46:14'),
(119, 'Mie Rebus Anget', 1, '2021-07-23', '2021-07-23', 'LT-20160fa627966075', 'K001', 16000, '2', 1, 1, 16, 'kuliner', 5, '2021-07-23 06:32:25', '2021-07-23 06:34:42'),
(122, 'ReservasiPenginapan A', 2, '2021-07-26', '', 'LT-20560faa3a6bcad1', 'DB0010', 60000, '1', 1, 0, 16, 'penginapan', 6, '2021-07-23 11:10:31', '2021-07-23 04:27:15'),
(124, 'ReservasiPenginapan A', 1, '2021-07-29', '2021-07-23 18:42:24', 'LT-20760faa948de7e4', 'DB0012', 30000, '1', 1, 1, 13, 'penginapan', 6, '2021-07-23 11:34:33', '2021-07-23 11:42:24'),
(125, 'ReservasiPenginapan A', 1, '2021-07-27', '2021-07-23 18:49:10', 'LT-20860faac70cbc78', 'DB0013', 80000, '1', 1, 1, 10, 'penginapan', 6, '2021-07-23 11:48:01', '2021-07-23 11:49:10'),
(126, 'Paket Camping', 2, '2021-07-27', '', 'LT-20960fcb78b974e5', 'DC0023', 100000, '1', NULL, 0, 10, 'camping', 4, '2021-07-24 17:59:55', '2021-07-24 17:59:55'),
(127, 'Paket Camping', 2, '2021-07-26 00:00:00', '2021-07-27 07:34:25', 'LT-21060fe79507c2ed', 'C002', 100000, '1', 1, 1, 13, 'camping', 4, '2021-07-26 08:58:56', '2021-07-27 00:34:25'),
(128, 'Paket Camping', 1, '2021-08-01 00:00:00', '2021-07-27 22:13:44', 'LT-2116100183f4b355', 'C001', 60000, '1', 1, 1, 13, 'camping', 4, '2021-07-27 14:29:19', '2021-07-27 15:13:44'),
(129, 'Paket Camping', 1, '2021-08-01 00:00:00', '2021-07-27 22:13:44', 'LT-2116100183f4b355', 'C002', 60000, '1', 1, 1, 13, 'camping', 4, '2021-07-27 14:29:20', '2021-07-27 15:13:44'),
(130, 'Tiket Watu Gambir', 1, '2021-07-29', '0', 'LT-21261010aa8d4985', '4', 10000, '2', 1, 0, 13, 'tiket', 4, '2021-07-28 07:43:36', '2021-07-28 00:45:29'),
(131, 'Tiket Watu Gambir', 1, '2021-07-29', '0', 'LT-21361010b3d1fb24', '4', 10000, '2', 1, 0, 16, 'tiket', 4, '2021-07-28 07:46:05', '2021-07-28 00:46:53'),
(137, 'Paket Camping', 1, '2021-08-05 00:00:00', '2021-07-29 21:10:57', 'LT-2176102b5141aa61', 'C008', 20000, '1', 1, 1, 10, 'camping', 4, '2021-07-29 14:03:00', '2021-07-29 14:10:57'),
(140, 'Paket Camping', 3, '2021-10-06 00:00:00', '2021-10-09 00:00:00', 'LT-2196102bdf2cfa9c', 'C002', 60000, '1', NULL, 0, 10, 'camping', 4, '2021-07-29 14:40:51', '2021-07-29 14:40:51'),
(141, 'Paket Camping', 3, '2021-10-06 00:00:00', '2021-10-09 00:00:00', 'LT-2196102bdf2cfa9c', 'C008', 60000, '1', NULL, 0, 10, 'camping', 4, '2021-07-29 14:40:51', '2021-07-29 14:40:51'),
(142, 'Paket Camping', 5, '2021-10-01 00:00:00', '2021-07-30 13:15:37', 'LT-2206102c3e507dd6', 'C007', 150000, '1', 1, 1, 10, 'camping', 4, '2021-07-29 15:06:13', '2021-07-30 06:15:37'),
(143, 'Paket Camping', 5, '2021-10-01 00:00:00', '2021-07-30 13:15:37', 'LT-2206102c3e507dd6', 'C001', 50000, '1', 1, 1, 10, 'camping', 4, '2021-07-29 15:06:13', '2021-07-30 06:15:37'),
(144, 'Paket Camping', 1, '2021-07-30 00:00:00', '2021-07-31 00:00:00', 'LT-2216103a4c4537e6', 'C002', 20000, '1', 1, 0, 13, 'camping', 4, '2021-07-30 07:05:40', '2021-07-30 00:27:17'),
(145, 'Paket Camping', 1, '2021-07-30 00:00:00', '2021-07-31 00:00:00', 'LT-2216103a4c4537e6', 'C007', 30000, '1', 1, 0, 13, 'camping', 4, '2021-07-30 07:05:40', '2021-07-30 00:27:17'),
(146, 'Reservasi Penginapan', 1, '2021-07-30', '2021-07-31', 'LT-2226103b24cb8c2f', 'K001', 30000, '1', NULL, 0, 13, 'penginapan', 6, '2021-07-30 08:03:25', '2021-07-30 08:03:25'),
(147, 'Reservasi Penginapan', 1, '2021-07-30', '2021-07-31', 'LT-2226103b24dc7561', 'K001', 30000, '1', NULL, 0, 13, 'penginapan', 6, '2021-07-30 08:03:25', '2021-07-30 08:03:25'),
(148, 'Reservasi Penginapan', 1, '2021-07-30', '2021-07-31', 'LT-2226103b2650d5b3', 'K001', 30000, '1', NULL, 0, 13, 'penginapan', 6, '2021-07-30 08:03:49', '2021-07-30 08:03:49'),
(149, 'Reservasi Penginapan', 1, '2021-07-30', '2021-07-31', 'LT-2226103b265db2e9', 'K001', 30000, '1', NULL, 0, 13, 'penginapan', 6, '2021-07-30 08:03:49', '2021-07-30 08:03:49'),
(150, 'Reservasi Penginapan', 1, '2021-07-30', '2021-07-31', 'LT-2226103b27483847', 'K001', 30000, '1', NULL, 0, 13, 'penginapan', 6, '2021-07-30 08:04:04', '2021-07-30 08:04:04'),
(151, 'Reservasi Penginapan', 1, '2021-07-30', '2021-07-31', 'LT-2226103b2752a554', 'K001', 30000, '1', NULL, 0, 13, 'penginapan', 6, '2021-07-30 08:04:05', '2021-07-30 08:04:05'),
(157, 'Reservasi Penginapan', 1, '2021-08-02', '2021-07-31 11:22:51', 'LT-2266104ccd586614', 'K003', 80000, '1', 1, 1, 10, 'penginapan', 6, '2021-07-31 04:08:53', '2021-07-31 04:22:51'),
(160, 'Mie Rebus Anget', 1, '2021-08-01', '2021-08-01', 'LT-22861061b38cd7fe', 'K001', 16000, '2', 2, 1, 16, 'kuliner', 5, '2021-08-01 03:55:36', '2021-07-31 21:21:14'),
(161, 'Mie Rebus Anget', 1, '2021-08-03', '2021-08-02', 'LT-22961075c1040f99', 'K001', 16000, '2', 2, 1, 13, 'kuliner', 5, '2021-08-02 02:44:32', '2021-08-01 19:49:23'),
(162, 'Reservasi Penginapan', 2, '2021-08-02', '2021-08-02 14:22:13', 'LT-23061077cdf298c9', 'K001', 60000, '1', 1, 1, 13, 'penginapan', 6, '2021-08-02 05:04:31', '2021-08-02 07:22:13'),
(163, 'Paket Camping', 1, '2021-08-27 00:00:00', '2021-08-02 14:33:32', 'LT-23161079f171e34f', 'C001', 10000, '1', 1, 1, 21, 'camping', 4, '2021-08-02 07:30:31', '2021-08-02 07:33:32'),
(164, 'Paket Camping', 1, '2021-08-27 00:00:00', '2021-08-02 14:33:32', 'LT-23161079f171e34f', 'C007', 30000, '1', 1, 1, 21, 'camping', 4, '2021-08-02 07:30:31', '2021-08-02 07:33:32'),
(165, 'Paket Camping', 1, '2021-08-27 00:00:00', '2021-08-02 14:33:32', 'LT-23161079f171e34f', 'C002', 20000, '1', 1, 1, 21, 'camping', 4, '2021-08-02 07:30:31', '2021-08-02 07:33:32'),
(166, 'Tiket Watu Gambir', 1, '2021-08-05', '2021-08-04 22:36:41', 'LT-232610ab1f518e38', '4', 10000, '2', 1, 1, 13, 'tiket', 4, '2021-08-04 15:27:49', '2021-08-04 15:36:41'),
(167, 'Tiket Wahana Kapal kecil', 1, '2021-08-05', '2021-08-04 22:36:41', 'LT-232610ab1f518e38', 'W003', 30000, '2', 1, 1, 13, 'wahana', 4, '2021-08-04 15:27:49', '2021-08-04 15:36:41'),
(168, 'Paket Camping', 3, '2021-08-04 00:00:00', '2021-08-07 00:00:00', 'LT-233610abab4695fb', 'C001', 30000, '1', 1, 0, 13, 'camping', 4, '2021-08-04 16:05:09', '2021-08-04 09:05:44'),
(169, 'Paket Camping', 3, '2021-08-04 00:00:00', '2021-08-07 00:00:00', 'LT-233610abab4695fb', 'C007', 90000, '1', 1, 0, 13, 'camping', 4, '2021-08-04 16:05:09', '2021-08-04 09:05:44'),
(170, 'Reservasi Penginapan', 2, '2021-08-04', '2021-08-06', 'LT-234610abb6243dd8', 'K001', 60000, '1', 1, 0, 16, 'penginapan', 6, '2021-08-04 16:08:02', '2021-08-04 09:21:59'),
(171, 'Paket Camping', 3, '2021-08-05 00:00:00', '2021-08-08 00:00:00', 'LT-235610b519a4874c', 'C002', 60000, '1', 1, 0, 16, 'camping', 4, '2021-08-05 02:48:58', '2021-08-04 19:50:16'),
(172, 'Paket Camping', 3, '2021-08-05 00:00:00', '2021-08-08 00:00:00', 'LT-235610b519a4874c', 'C008', 60000, '1', 1, 0, 16, 'camping', 4, '2021-08-05 02:48:58', '2021-08-04 19:50:16'),
(173, 'Tiket Watu Gambir', 1, '2021-08-13', '2021-08-12 10:55:10', 'LT-23661149a3a4c5af', '4', 10000, '2', 1, 1, 13, 'tiket', 4, '2021-08-12 03:49:14', '2021-08-12 03:55:10'),
(174, 'Reservasi Penginapan', 2, '2021-08-12', '2021-08-12 11:20:08', 'LT-2376114a0700796b', 'K001', 60000, '1', 1, 1, 13, 'penginapan', 6, '2021-08-12 04:15:44', '2021-08-12 04:20:08'),
(175, 'Reservasi Penginapan', 2, '2021-08-12', '2021-08-12 11:20:08', 'LT-2376114a0700796b', 'K003', 160000, '1', 1, 1, 13, 'penginapan', 6, '2021-08-12 04:15:44', '2021-08-12 04:20:09'),
(176, 'Paket Camping', 2, '2021-08-13 00:00:00', '2021-08-15 00:00:00', 'LT-2386114a23de5fdf', 'C001', 20000, '1', NULL, 0, 13, 'camping', 4, '2021-08-12 04:23:26', '2021-08-12 04:23:26'),
(177, 'Paket Camping', 2, '2021-08-13 00:00:00', '2021-08-15 00:00:00', 'LT-2386114a23de5fdf', 'C007', 60000, '1', NULL, 0, 13, 'camping', 4, '2021-08-12 04:23:26', '2021-08-12 04:23:26'),
(178, 'Mie Rebus Anget', 1, '2021-08-12', '2021-08-12', 'LT-2396114a2cc9eade', 'K001', 24000, '3', 2, 1, 13, 'kuliner', 5, '2021-08-12 04:25:48', '2021-08-11 21:27:28'),
(179, 'Tiket Wahana Tubin', 1, '2021-08-15', '0', 'LT-2406117b90cd3a06', 'W001', 40000, '2', NULL, 0, 16, 'wahana', 4, '2021-08-14 12:37:32', '2021-08-14 12:37:32'),
(180, 'Konser music', 5, '2021-08-16', '0', 'LT-2416119b3ae3a511', 'EK0003', 10000, '2', 1, 0, 16, 'event', 5, '2021-08-16 00:39:10', '2021-08-15 18:59:06'),
(181, 'Lomba Arum Jeram', 29, '2021-08-16', '2021-08-16 10:01:11', 'LT-2426119c8d73985d', 'EK0002', 100000, '5', 1, 1, 16, 'event', 4, '2021-08-16 02:09:27', '2021-08-16 03:01:11'),
(182, 'Konser music', 5, '2021-08-16', '0', 'LT-2436119cbbb69f87', 'EK0003', 15000, '3', 1, 0, 16, 'event', 5, '2021-08-16 02:21:47', '2021-08-15 19:22:27'),
(183, 'Tiket Wisata Watu Gambir', 1, '2021-12-02', '0', 'LT-24461849b5129de3', '4', 5000, '1', NULL, 0, 31, 'tiket', 4, '2021-11-05 02:47:45', '2021-11-05 02:47:45'),
(184, 'Mie Rebus Anget tenan', 1, '2021-11-24', '0', 'LT-24561849d4ccef1e', 'K001', 8000, '1', 0, 0, 31, 'kuliner', 5, '2021-11-05 02:56:12', '2022-01-06 06:20:20'),
(186, 'Tiket Wisata Watu Gambir', 1, '2022-01-19', '0', 'LT-24661d6479f9e685', '4', 5000, '1', 0, 0, 35, 'tiket', 4, '2022-01-06 01:36:31', '2022-01-05 18:37:50'),
(187, 'Tiket Wisata Watu Gambir', 1, '2022-02-24', '0', 'LT-2486204dac55e8e7', '4', 10000, '2', NULL, 0, 35, 'tiket', 4, '2022-02-10 09:28:37', '2022-02-10 09:28:37'),
(188, 'Tiket Wisata Watu Gambir', 1, '2022-02-17', '0', 'LT-2496204db230f680', '4', 5000, '1', 0, 0, 35, 'tiket', 4, '2022-02-10 09:30:11', '2022-02-10 02:50:11'),
(191, 'Mie Rebus Anget tenan', 1, '2022-02-14', '0', 'LT-2506205f149af50d', 'K001', 8000, '1', 0, 0, 37, 'kuliner', 5, '2022-02-11 05:16:57', '2022-02-10 22:18:14'),
(193, 'Tiket Wahana Kapal kecil', 1, '2022-03-16', '0', 'LT-254621d7c9293943', 'W003', 15000, '1', NULL, 0, 35, 'wahana', 4, '2022-03-01 01:53:22', '2022-03-01 01:53:22'),
(194, 'Mie Rebus Anget tenan', 1, '2022-03-02', '0', 'LT-255621e1e5fc46b0', 'K001', 16000, '2', NULL, 0, 37, 'kuliner', 5, '2022-03-01 13:23:43', '2022-03-01 13:23:43'),
(195, 'Tiket Wahana Kapal kecil', 1, '2022-03-23', '0', 'LT-25662259cb832f20', 'W003', 15000, '1', NULL, 0, 35, 'wahana', 4, '2022-03-07 05:48:40', '2022-03-07 05:48:40'),
(196, 'Tiket Wahana Kapal kecil', 1, '2022-03-17', '0', 'LT-257622734291b04f', 'W003', 30000, '2', 0, 0, 13, 'wahana', 4, '2022-03-08 10:47:05', '2022-03-08 03:48:16'),
(197, 'Tiket Wisata Watu Gambir', 1, '2022-03-17', '0', 'LT-257622734291b04f', '4', 15000, '3', 0, 0, 13, 'tiket', 4, '2022-03-08 10:47:05', '2022-03-08 03:48:16'),
(198, 'Mie Rebus Anget tenan', 1, '2022-03-16', '0', 'LT-2586231688f0381f', 'K001', 16000, '2', NULL, 0, 13, 'kuliner', 5, '2022-03-16 04:33:19', '2022-03-16 04:33:19'),
(201, 'Tiket Wahana Tubin', 1, '2022-03-17', '0', 'LT-25962317a093c688', 'W001', 40000, '2', NULL, 0, 40, 'wahana', 4, '2022-03-16 05:47:53', '2022-03-16 05:47:53'),
(202, 'Mie Rebus Anget tenan', 1, '2022-03-17', '0', 'LT-26262318c017787f', 'K001', 16000, '2', NULL, 0, 37, 'kuliner', 5, '2022-03-16 07:04:33', '2022-03-16 07:04:33'),
(203, 'Tiket Wisata Watu Gambir', 1, '2022-03-24', '0', 'LT-2636232d5101d92f', '4', 60000, '12', 0, 0, 42, 'tiket', 4, '2022-03-17 06:28:32', '2022-03-16 23:29:53'),
(204, 'Tiket Wisata Watu Gambir', 1, '2022-03-18', '0', 'LT-2646233f8695ce74', '4', 10000, '2', 0, 0, 13, 'tiket', 4, '2022-03-18 03:11:37', '2022-03-17 20:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_event`
--

CREATE TABLE `tb_event` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_mulai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_selesai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_buka` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_tutup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas_awal` int(11) NOT NULL,
  `kapasitas_akhir` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `kategorievent_id` bigint(20) UNSIGNED NOT NULL,
  `tempat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kamar`
--

CREATE TABLE `tb_kamar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tempat_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kapasitas` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_harga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `dipakai` int(25) NOT NULL DEFAULT 0,
  `kode_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kamar`
--

INSERT INTO `tb_kamar` (`id`, `tempat_id`, `name`, `image`, `harga`, `kapasitas`, `type`, `deskripsi`, `deskripsi_harga`, `status`, `dipakai`, `kode_kamar`, `created_at`, `updated_at`) VALUES
(1, 6, 'Kamar 1011', 'REIn8SvouL3K4BOAtAfIWM3VAHCZY6w832vMvDKv.jpg', '30000', 2, 'standard', 'Kamar yang bagus', 'Per Malam', 1, 0, 'K001', '2021-06-30 07:14:53', '2021-08-24 06:18:58'),
(3, 6, 'Kamar 102', 'izqSOMkkYxbsR05GClThnYhE5Huq1OHZr3AdFu5t.jpg', '100000', 4, 'vip', 'Berisi 1 large bed besar untuk 2 orang', 'Satu Malam', 1, 0, 'K002', '2021-06-30 20:31:34', '2021-08-01 20:47:53'),
(4, 6, 'Kamar 103', 'kTEXA7khBHHWEOz1Qu09rRwQf7kudekpAInZW917.jpg', '80000', 3, 'standard', 'Kamar standar', 'Per Malam', 1, 0, 'K003', '2021-07-11 21:33:07', '2021-08-01 20:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategorievent`
--

CREATE TABLE `tb_kategorievent` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kategorievent`
--

INSERT INTO `tb_kategorievent` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Lomba', NULL, NULL),
(2, 'Seminar', '2022-04-10 23:42:57', '2022-04-10 23:42:57'),
(3, 'Webinar', '2022-04-10 23:46:01', '2022-04-10 23:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kegiatan`
--

CREATE TABLE `tb_kegiatan` (
  `id` int(25) NOT NULL,
  `kode_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_a` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jambuka` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jamtutup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(25) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `kapasitas` int(25) NOT NULL,
  `kapasitas_b` int(25) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kegiatan`
--

INSERT INTO `tb_kegiatan` (`id`, `kode_kegiatan`, `name`, `deskripsi`, `harga`, `image`, `date_a`, `date_b`, `jambuka`, `jamtutup`, `tempat_id`, `user_id`, `status`, `kapasitas`, `kapasitas_b`, `created_at`, `updated_at`) VALUES
(1, 'EK0001', 'Bersih bersih kafe', 'Kegiatan rutin yang membuat kita mendapat pahala', '30000', 'yyLxqMeonpBJEtQfJr6v0C1r0PBuKbz9ANy96ktF.jpg', '07/15/2021', '08/13/2021', '08:00', '10:10', '4', 3, 0, 50, 0, '2021-08-13 09:13:11', '2022-03-08 01:47:24'),
(2, 'EK0002', 'Lomba Arum Jeram', 'Diadakan untuk senang senang dan banyak sekali manfaatnya berdooprize juga', '20000', 'R2kVHo5LOmQmkbbv9sjWHAOrVAyyFl3z6voDmtT4.jpg', '07/16/2021', '08/14/2021', '08:00', '15:00', '4', 3, 1, 5, 5, '2021-08-14 03:49:30', '2022-03-07 07:21:48'),
(3, 'EK0003', 'Konser music', 'Konser music dengan guestar yang keren dan dari ibu kota', '123333', 'MSHFDTyFD04dJ6Gp5VZNWv13qyJ1brzCp4A2qqLs.jpg', '2021-07-15', '2021-07-20', '15:00', '20:00', '5', 15, 0, 5, 5, '2021-08-15 10:21:14', '2021-11-01 18:01:01'),
(4, 'EK0004', 'Live Music', 'Menghadirkan artis guest star ibu kota', '50000', 'Sj1K6s1ajxkxPVOo7oupNM1MYqeZ1vAQfKDGUmeW.jpg', '2021-08-16', '2021-08-16', '20:00', '22:00', '6', 4, 0, 50, 0, '2021-08-16 12:09:05', '2021-10-22 01:59:21'),
(5, 'EK0005', 'Makan banyak', 'lomba makan total prize 1 jt an', '20000', 'ADV2upLCNcVnicqhXiGwRvyU61Tilu6G6LKA1a88.jpg', '08/19/2021', '08/20/2021', '10:00', '00:00', '5', 15, 0, 10, 0, '2021-08-19 02:30:55', '2022-03-15 22:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kuliner`
--

CREATE TABLE `tb_kuliner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tempat_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode_kuliner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kuliner`
--

INSERT INTO `tb_kuliner` (`id`, `tempat_id`, `name`, `image`, `kategori`, `harga`, `deskripsi`, `status`, `created_at`, `updated_at`, `kode_kuliner`) VALUES
(1, 5, 'Mie Rebus Anget tenan', 'aBIVz5z1vbQY3Bu7SehAvIm3AxAX7N0qTyQJKExi.jpg', 'makan', '8000', 'Mie rebus anget', 1, '2021-06-17 21:19:59', '2021-08-24 06:00:04', 'K001'),
(2, 5, 'Teh Anget Manis', 'CrZRYqtFOU2zCrWCkZnNgWmE2h6Qlxb68LmMJ6iN.jpg', 'minum', '3000', 'Teh Anget Manis yang menghangatkan', 1, '2021-06-18 06:03:24', '2021-08-01 20:00:30', 'K002'),
(3, 5, 'Mendoan', '33yljHVQI9rxYXduFAXp7jCype4kuSuOKu4PMOal.jpg', 'snack', '10000', 'Tempe yang baru digoreng  berisi 8 mendoan hmm', 1, '2021-06-18 06:08:37', '2021-08-01 20:00:44', 'K003');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pay`
--

CREATE TABLE `tb_pay` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `va_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `va_bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kodeku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_pay`
--

INSERT INTO `tb_pay` (`id`, `status_message`, `order_id`, `payment_type`, `transaction_time`, `transaction_status`, `va_number`, `va_bank`, `kodeku`, `created_at`, `updated_at`, `_token`) VALUES
('c3a3ca69-8e8d-41a1-9225-2892b452f90e', 'settlement', 'LT-7160c1ae3ce4647', 'bank_transfer', '2021-06-10 13:16:41', 'settlement', '24131510385', 'bca', 'LT-7160c1ae3ce4647', '2021-06-09 23:21:50', '2021-06-24 03:02:19', 'choFmUMSxjjerZ82wQzIzMWEqkuosANHEzEAyNP4'),
('c3a3ca69-8e8d-41a1-9225-2892b452f90e', 'settlement', 'LT-7160c1ae3ce4647', 'bank_transfer', '2021-06-10 13:16:41', 'settlement', '24131510385', 'bca', 'LT-7160c1ae3ce4647', '2021-06-09 23:22:24', '2021-06-24 03:02:19', 'choFmUMSxjjerZ82wQzIzMWEqkuosANHEzEAyNP4'),
('cb1d3f1e-dbc4-413d-814b-e2a5bfbc75f9', 'settlement', 'LT-7260c1affb35938', 'bank_transfer', '2021-06-10 13:24:03', 'settlement', '24131551335', 'bca', 'LT-7260c1affb35938', '2021-06-09 23:38:09', '2021-06-24 03:04:03', 'choFmUMSxjjerZ82wQzIzMWEqkuosANHEzEAyNP4'),
('cb1d3f1e-dbc4-413d-814b-e2a5bfbc75f9', 'settlement', 'LT-7260c1affb35938', 'bank_transfer', '2021-06-10 13:24:03', 'settlement', '24131551335', 'bca', 'LT-7260c1affb35938', '2021-06-09 23:38:58', '2021-06-24 03:04:03', 'choFmUMSxjjerZ82wQzIzMWEqkuosANHEzEAyNP4'),
('0', 'settlement', 'LT-7160c1ae3ce4647', 'bank_transfer', '2021-06-10 13:16:41', 'settlement', '24131510385', 'bca', 'LT-7160c1ae3ce4647', '2021-06-10 01:11:43', '2021-06-24 03:02:19', 'choFmUMSxjjerZ82wQzIzMWEqkuosANHEzEAyNP4'),
('3', 'settlement', 'LT-7160c1ae3ce4647', 'bank_transfer', '2021-06-10 13:16:41', 'settlement', '24131510385', 'bca', 'LT-7160c1ae3ce4647', '2021-06-10 02:43:08', '2021-06-24 03:02:19', 'choFmUMSxjjerZ82wQzIzMWEqkuosANHEzEAyNP4'),
('fa219131-6c35-4466-b8f5-5171b12a0cf2', 'settlement', 'LT-7360c1dfe6c449e', 'bank_transfer', '2021-06-10 16:48:44', 'settlement', '24131134155', 'bca', 'LT-7360c1dfe6c449e', '2021-06-10 02:49:42', '2021-06-24 03:02:38', 'choFmUMSxjjerZ82wQzIzMWEqkuosANHEzEAyNP4'),
('3af9c10b-454f-4cfd-9aa2-39248b569d70', 'settlement', 'LT-7460c1f630ea451', 'bank_transfer', '2021-06-10 18:23:48', 'settlement', '24131324682', 'bca', 'LT-7460c1f630ea451', '2021-06-10 04:26:44', '2021-06-10 04:27:57', 'nM3WAbXRB4J7wD7CZIkXyYFYE4HuiL5YRF7qTbVV'),
('dbeff92f-6430-4460-86d4-3455ed498264', 'expire', 'LT-7560c200b753bf1', 'bank_transfer', '2021-06-10 19:13:49', 'expire', '24131253357', 'bca', 'LT-7560c200b753bf1', '2021-06-10 05:13:53', '2021-06-24 03:04:50', 'choFmUMSxjjerZ82wQzIzMWEqkuosANHEzEAyNP4'),
('f4f43c4c-84a0-4e8a-9e75-05cb3082bbd2', 'settlement', 'LT-7660c2bab9a77be', 'bank_transfer', '2021-06-11 08:22:26', 'settlement', '24131143647', 'bca', 'LT-7660c2bab9a77be', '2021-06-10 18:22:31', '2021-06-10 18:24:03', 'ufLhgAq9rPzoGz4sFNSsUdmLJVAEHaQh3BngJZ0d'),
('3227b769-e65d-41cd-9b7e-49489396e065', 'settlement', 'LT-7760c2bd529e0fd', 'bank_transfer', '2021-06-11 08:33:21', 'settlement', '24131666779', 'bca', 'LT-7760c2bd529e0fd', '2021-06-10 18:34:04', '2021-06-10 18:59:02', 'AAHz3VYjm0jSmvTyC4RSWW1ZlZXtnQR9QdGUWf4D'),
('df3e1334-36b4-4a58-af68-efb60160fcb0', 'settlement', 'LT-7860c2c437224e6', 'bank_transfer', '2021-06-11 09:25:06', 'settlement', '24131364217', 'bca', 'LT-7860c2c437224e6', '2021-06-10 19:25:23', '2021-06-10 19:32:15', 'BzKyhvd1Aqmx23AtyGFmB23v8EAFlj0giaJ8gtSl'),
('c06005d4-e802-4b24-922a-3975a5503cd4', 'settlement', 'LT-7960c2cba32c171', 'bank_transfer', '2021-06-11 09:34:22', 'settlement', '24131416554', 'bca', 'LT-7960c2cba32c171', '2021-06-10 19:34:52', '2021-06-10 19:35:34', 'yFTa9V8qVhJG5Sk7Fqcj9riStYPmnYFFsiul0Fpn'),
('ef998bf3-5239-4165-8fc5-10a35103c2b9', 'settlement', 'LT-8060c2cc126f400', 'bank_transfer', '2021-06-11 09:36:20', 'settlement', '24131483429', 'bca', 'LT-8060c2cc126f400', '2021-06-10 19:36:25', '2021-06-15 22:29:45', 'VeZfsCSB8I2JAuFDD0Wen9ONSHkMK4hHE2fq4K4m'),
('2d18c491-a918-488d-a6d5-3f6f41aa93b2', 'expire', 'LT-8160c2deef9ae4e', 'bank_transfer', '2021-06-11 10:56:47', 'expire', '24131821557', 'bca', 'LT-8160c2deef9ae4e', '2021-06-10 20:56:57', '2021-06-10 21:04:46', 'AsqmvFuFOWnlqNhcPPzHtvLX5JAAK5duC027I2uF'),
('0881fb96-4bf2-4f9b-a3b6-5059035aac9c', 'cancel', 'LT-8260c2e0feade07', 'bank_transfer', '2021-06-11 11:05:28', 'cancel', '24131719341', 'bca', 'LT-8260c2e0feade07', '2021-06-10 21:05:40', '2021-06-10 21:27:55', 'wTcDQm9MbF8RdzDcjJCHZQb7TcRWZcIM7OWctF6S'),
('a2d765e8-718c-464a-a129-2c3d0305cac9', 'cancel', 'LT-8360c2e6d12a30c', 'bank_transfer', '2021-06-11 11:30:21', 'cancel', '24131752079', 'bca', 'LT-8360c2e6d12a30c', '2021-06-10 21:30:55', '2021-06-10 21:35:03', 'tWMOWRVRljFqhbT2GhZhAufIXrPcw2HVEQfatpIx'),
('bc2183de-5252-4599-95bb-1b4634a99a9e', 'pending', 'LT-8960c5fbc125f57', 'bank_transfer', '2021-06-13 19:43:10', 'pending', '24131718806', 'bca', 'LT-8960c5fbc125f57', '2021-06-13 05:44:04', '2021-06-13 05:45:31', 'JEmNFVsdn663XZBW9U7fIXfq2LAVps8Ggg6Nri0b'),
('4b185548-8ed7-4b50-905d-87409db596d1', 'Transaksi sedang diproses', 'LT-9060c7029db4d50', 'bank_transfer', '2021-06-14 14:20:45', 'pending', '24131265925', 'bca', 'LT-9060c7029db4d50', '2021-06-14 00:22:51', '2021-06-14 00:22:51', NULL),
('e76404de-6416-4692-a848-5ce07806ab43', 'expire', 'LT-9260c801b9aa600', 'bank_transfer', '2021-06-15 08:26:36', 'expire', '24131667949', 'bca', 'LT-9260c801b9aa600', '2021-06-14 18:26:37', '2021-06-15 22:29:56', 'VeZfsCSB8I2JAuFDD0Wen9ONSHkMK4hHE2fq4K4m'),
('c17c231f-62d7-44bc-877b-9ee584c626bf', 'Transaksi sedang diproses', 'LT-9560c80d2ac0330', 'bank_transfer', '2021-06-15 09:15:21', 'pending', '24131514786', 'bca', 'LT-9560c80d2ac0330', '2021-06-14 19:16:03', '2021-06-14 19:16:03', NULL),
('1414015b-a568-433c-8d3e-794b954b6909', 'settlement', 'LT-9860c98dd556460', 'bank_transfer', '2021-06-16 12:40:29', 'settlement', '24131225475', 'bca', 'LT-9860c98dd556460', '2021-06-15 22:40:37', '2021-06-15 23:11:41', 'qAk1X88fJrsxXqtfCPH2vxEaOHqECaHo0oKgc84U'),
('LT-9660c80d7c963c5', 'expire', 'LT-9660c80d7c963c5', 'gopay', '2021-06-15 09:17:27', 'expire', '0', 'gopay', 'LT-9660c80d7c963c5', '2021-06-15 23:15:35', '2021-06-15 23:16:29', 'qAk1X88fJrsxXqtfCPH2vxEaOHqECaHo0oKgc84U'),
('LT-9760c96bf6cc3b4', 'expire', 'LT-9760c96bf6cc3b4', 'gopay', '2021-06-16 10:12:18', 'expire', '0', 'gopay', 'LT-9760c96bf6cc3b4', '2021-06-15 23:18:09', '2021-06-16 01:45:34', 'KoJAGHiI77TVXqYJ27qZ4f4LiTmileU9D2i5OWDk'),
('LT-9160c703e204457', 'expire', 'LT-9160c703e204457', 'qris', '2021-06-14 14:23:43', 'expire', '0', 'qris', 'LT-9160c703e204457', '2021-06-15 23:18:56', '2021-06-15 23:18:56', NULL),
('LT-9960c9b8f80469d', 'expire', 'LT-9960c9b8f80469d', 'gopay', '2021-06-16 15:40:48', 'expire', '0', 'gopay', 'LT-9960c9b8f80469d', '2021-06-16 01:45:42', '2021-06-16 07:52:52', 'zzbiPnE3dr2lewlm8i0hjdBmL13sPi0Mn4zDU1AY'),
('LT-8560c5cf029cfba', 'expire', 'LT-8560c5cf029cfba', 'bank_transfer', '2021-06-16 18:46:26', 'expire', '24131313135', 'bca', 'LT-8560c5cf029cfba', '2021-06-16 04:50:54', '2021-06-19 20:16:13', 'nuKsWUdJP1fmCJapkSCtUopMNRoUKQcq6LzNrDpF'),
('LT-9460c80b7277564', 'expire', 'LT-9460c80b7277564', 'bank_transfer', '2021-06-15 09:08:00', 'expire', '24131795257', 'bca', 'LT-9460c80b7277564', '2021-06-16 04:51:11', '2021-06-19 20:08:47', 'nuKsWUdJP1fmCJapkSCtUopMNRoUKQcq6LzNrDpF'),
('LT-6760c1710faac2e', 'expire', 'LT-6760c1710faac2e', 'bank_transfer', '2021-06-10 08:59:05', 'expire', '24131496123', 'bca', 'LT-6760c1710faac2e', '2021-06-16 04:53:38', '2021-06-16 04:53:38', NULL),
('LT-8860c5d0e902885', 'expire', 'LT-8860c5d0e902885', 'gopay', '2021-06-15 08:22:23', 'expire', '0', 'gopay', 'LT-8860c5d0e902885', '2021-06-16 07:25:37', '2021-06-16 07:25:37', NULL),
('LT-8760c5d0a3ca066', 'expire', 'LT-8760c5d0a3ca066', 'cimb_clicks', '2021-06-16 13:19:18', 'expire', '0', 'cimb_clicks', 'LT-8760c5d0a3ca066', '2021-06-16 07:25:44', '2021-06-16 07:25:44', NULL),
('LT-8660c5cfb953567', 'expire', 'LT-8660c5cfb953567', 'gopay', '2021-06-16 14:17:05', 'expire', '0', 'gopay', 'LT-8660c5cfb953567', '2021-06-16 07:25:49', '2021-06-16 07:25:49', NULL),
('LT-10060ceb0bbaf176', 'expire', 'LT-10060ceb0bbaf176', 'qris', '2021-06-20 11:25:46', 'expire', '0', 'qris', 'LT-10060ceb0bbaf176', '2021-06-19 21:30:16', '2021-06-19 21:32:26', 'nuKsWUdJP1fmCJapkSCtUopMNRoUKQcq6LzNrDpF'),
('LT-10160cec55872810', 'expire', 'LT-10160cec55872810', 'gopay', '2021-06-20 11:34:42', 'expire', '0', 'gopay', 'LT-10160cec55872810', '2021-06-19 21:38:53', '2021-06-20 19:01:57', 'wQZ8VnzbJDenrOojWSe0hErUZMguAsCPhQZncIkU'),
('LT-10260cec68ce0dc5', 'settlement', 'LT-10260cec68ce0dc5', 'qris', '2021-06-20 11:40:00', 'settlement', '0', 'qris', 'LT-10260cec68ce0dc5', '2021-06-19 21:42:08', '2021-06-19 21:42:08', NULL),
('LT-3560c0773c03859', 'expire', 'LT-3560c0773c03859', 'bank_transfer', '2021-06-09 15:09:44', 'expire', '24131696883', 'bca', 'LT-3560c0773c03859', '2021-06-20 05:28:12', '2021-06-20 05:28:12', NULL),
('LT-10560cf322756bf4', 'settlement', 'LT-10560cf322756bf4', 'qris', '2021-06-21 09:01:06', 'settlement', '0', 'qris', 'LT-10560cf322756bf4', '2021-06-20 19:01:49', '2021-06-20 19:01:49', NULL),
('LT-10360cf029653453', 'expire', 'LT-10360cf029653453', 'gopay', '2021-06-21 09:04:08', 'expire', '0', 'gopay', 'LT-10360cf029653453', '2021-06-20 19:05:45', '2021-06-23 17:42:05', 'aTHb8momMgaRGSfk6LWaOsyAgOXHDBgM3XtntPsk'),
('LT-11060d17c84a8dbc', 'pending', 'LT-11060d17c84a8dbc', 'bank_transfer', '2021-06-22 16:38:41', 'pending', '24131504265', 'bca', 'LT-11060d17c84a8dbc', '2021-06-22 02:39:23', '2021-06-22 02:39:23', NULL),
('LT-10860d17a009619c', 'pending', 'LT-10860d17a009619c', 'bank_transfer', '2021-06-22 16:40:46', 'pending', '24131732682', 'bca', 'LT-10860d17a009619c', '2021-06-22 02:41:23', '2021-06-22 02:41:23', NULL),
('LT-10760d1750c9c65a', 'expire', 'LT-10760d1750c9c65a', 'gopay', '2021-06-22 16:41:33', 'expire', '0', 'gopay', 'LT-10760d1750c9c65a', '2021-06-22 02:42:45', '2021-06-23 17:41:49', 'aTHb8momMgaRGSfk6LWaOsyAgOXHDBgM3XtntPsk'),
('LT-10460cf03a97e188', 'expire', 'LT-10460cf03a97e188', 'bank_transfer', '2021-06-22 16:44:51', 'expire', '24131108958', 'bca', 'LT-10460cf03a97e188', '2021-06-22 02:46:18', '2021-06-23 17:41:54', 'aTHb8momMgaRGSfk6LWaOsyAgOXHDBgM3XtntPsk'),
('LT-10660d045c976540', 'expire', 'LT-10660d045c976540', 'bank_transfer', '2021-06-22 16:43:30', 'expire', '24131968890', 'bca', 'LT-10660d045c976540', '2021-06-22 02:46:25', '2021-06-23 17:41:43', 'aTHb8momMgaRGSfk6LWaOsyAgOXHDBgM3XtntPsk'),
('LT-10960d17a1ba4d98', 'pending', 'LT-10960d17a1ba4d98', 'bank_transfer', '2021-06-22 16:39:39', 'pending', '24131094154', 'bca', 'LT-10960d17a1ba4d98', '2021-06-22 02:46:30', '2021-06-22 02:46:30', NULL),
('LT-11160d1b20d10faf', 'pending', 'LT-11160d1b20d10faf', 'bank_transfer', '2021-06-24 07:37:36', 'pending', '24131855784', 'bca', 'LT-11160d1b20d10faf', '2021-06-23 17:38:26', '2021-06-23 17:38:32', 'aTHb8momMgaRGSfk6LWaOsyAgOXHDBgM3XtntPsk'),
('LT-11260d2946c4e986', 'pending', 'LT-11260d2946c4e986', 'gopay', '2021-06-24 07:42:26', 'pending', '0', 'gopay', 'LT-11260d2946c4e986', '2021-06-23 17:43:47', '2021-06-23 17:44:43', 'aTHb8momMgaRGSfk6LWaOsyAgOXHDBgM3XtntPsk'),
('LT-11360d3561ebcd3a', 'settlement', 'LT-11360d3561ebcd3a', 'qris', '2021-06-24 07:44:03', 'settlement', '0', 'qris', 'LT-11360d3561ebcd3a', '2021-06-23 17:44:32', '2021-06-23 17:44:32', NULL),
('LT-11460d3d5c737a91', 'pending', 'LT-11460d3d5c737a91', 'bank_transfer', '2021-06-24 07:46:11', 'pending', '24131802148', 'bca', 'LT-11460d3d5c737a91', '2021-06-23 17:46:20', '2021-06-24 02:51:27', 'choFmUMSxjjerZ82wQzIzMWEqkuosANHEzEAyNP4'),
('LT-11960d3dec4a95fd', 'pending', 'LT-11960d3dec4a95fd', 'bank_transfer', '2021-06-24 08:24:31', 'pending', '24131628185', 'bca', 'LT-11960d3dec4a95fd', '2021-06-23 18:24:35', '2021-06-24 18:24:15', '6ts3FyvaGPWhq8KxuEsbteIQWf37tjrDfbwyBAgw'),
('LT-11860d3de4909d88', 'pending', 'LT-11860d3de4909d88', 'bank_transfer', '2021-06-24 08:22:29', 'pending', '24131360317', 'bca', 'LT-11860d3de4909d88', '2021-06-23 18:24:47', '2021-06-23 18:24:47', NULL),
('LT-11560d3dcafb1dfe', 'pending', 'LT-11560d3dcafb1dfe', 'bank_transfer', '2021-06-24 08:15:41', 'pending', '24131814359', 'bca', 'LT-11560d3dcafb1dfe', '2021-06-23 18:24:52', '2021-06-23 18:24:52', NULL),
('LT-12060d3e2f907a46', 'settlement', 'LT-12060d3e2f907a46', 'bank_transfer', '2021-06-24 08:42:30', 'settlement', '24131560352', 'bca', 'LT-12060d3e2f907a46', '2021-06-23 18:43:05', '2021-06-24 06:16:28', 'y9tUQaEX8IpYgH3zdKRK1VmkUH656JgUCij34msV'),
('LT-11760d3dddcdf609', 'expire', 'LT-11760d3dddcdf609', 'bank_transfer', '2021-06-24 08:20:44', 'expire', '24131626742', 'bca', 'LT-11760d3dddcdf609', '2021-06-23 18:43:12', '2021-06-25 04:45:02', 'ILEnqCmhctIGq5916DaV9hhFjowHqTcpi9XTnfGD'),
('LT-11660d3dcf5668bf', 'settlement', 'LT-11660d3dcf5668bf', 'bank_transfer', '2021-06-24 08:16:49', 'settlement', '24131135835', 'bca', 'LT-11660d3dcf5668bf', '2021-06-23 18:44:00', '2021-06-24 06:15:23', 'y9tUQaEX8IpYgH3zdKRK1VmkUH656JgUCij34msV'),
('LT-8460c5ce17d79c6', 'expire', 'LT-8460c5ce17d79c6', 'gopay', '2021-06-16 14:20:52', 'expire', '0', 'gopay', 'LT-8460c5ce17d79c6', '2021-06-24 02:58:21', '2021-06-24 02:58:21', NULL),
('LT-7060c1a4a868f22', 'expire', 'LT-7060c1a4a868f22', 'bank_transfer', '2021-06-10 12:36:30', 'expire', '24131976110', 'bca', 'LT-7060c1a4a868f22', '2021-06-24 03:02:30', '2021-06-24 06:17:10', 'y9tUQaEX8IpYgH3zdKRK1VmkUH656JgUCij34msV'),
('LT-12960d546823ee0a', 'settlement', 'LT-12960d546823ee0a', 'bank_transfer', '2021-06-25 10:03:12', 'settlement', '24131202083', 'bca', 'LT-12960d546823ee0a', '2021-06-24 20:03:37', '2021-06-25 07:16:14', 'ILEnqCmhctIGq5916DaV9hhFjowHqTcpi9XTnfGD'),
('LT-12860d53bfc292e4', 'settlement', 'LT-12860d53bfc292e4', 'qris', '2021-06-25 10:15:26', 'settlement', '0', 'qris', 'LT-12860d53bfc292e4', '2021-06-24 20:16:20', '2021-07-04 00:17:50', 'c1BaLyWsCyGbfXReWdiAkky7VTz2L4gI5nhLCuqb'),
('LT-2760c01710dc991', 'expire', 'LT-2760c01710dc991', 'bank_transfer', '2021-06-09 08:19:47', 'expire', '24131641722', 'bca', 'LT-2760c01710dc991', '2021-06-25 04:45:52', '2021-06-25 04:45:52', NULL),
('LT-144223689', 'expire', 'LT-144223689', 'bank_transfer', '2021-06-08 09:58:14', 'expire', '24131121465', 'bca', 'LT-144223689', '2021-06-25 04:46:09', '2021-06-25 04:46:09', NULL),
('LT-2170520511', 'expire', 'LT-2170520511', 'bank_transfer', '2021-06-08 11:23:59', 'expire', '24131940197', 'bca', 'LT-2170520511', '2021-06-25 04:46:17', '2021-06-25 04:46:17', NULL),
('LT-31316950666', 'expire', 'LT-31316950666', 'bank_transfer', '2021-06-08 11:50:35', 'expire', '24131449436', 'bca', 'LT-31316950666', '2021-06-25 04:46:33', '2021-06-25 04:46:33', NULL),
('LT-41008190030', 'expire', 'LT-41008190030', 'bank_transfer', '2021-06-08 11:30:20', 'expire', '24131814160', 'bca', 'LT-41008190030', '2021-06-25 04:46:41', '2021-06-25 04:46:41', NULL),
('LT-51527704124', 'expire', 'LT-51527704124', 'bank_transfer', '2021-06-08 11:51:58', 'expire', '24131379562', 'bca', 'LT-51527704124', '2021-06-25 04:46:50', '2021-06-25 04:46:50', NULL),
('LT-61734624657', 'expire', 'LT-61734624657', 'bank_transfer', '2021-06-08 11:59:22', 'expire', '24131385672', 'bca', 'LT-61734624657', '2021-06-25 04:46:58', '2021-06-25 04:46:58', NULL),
('LT-7496809696', 'expire', 'LT-7496809696', 'bank_transfer', '2021-06-08 12:16:36', 'expire', '24131359530', 'bca', 'LT-7496809696', '2021-06-25 04:47:06', '2021-06-25 04:47:06', NULL),
('LT-9775084015', 'expire', 'LT-9775084015', 'bank_transfer', '2021-06-08 12:19:55', 'expire', '24131258954', 'bca', 'LT-9775084015', '2021-06-26 02:03:06', '2021-06-26 02:03:06', NULL),
('LT-10864301689', 'expire', 'LT-10864301689', 'bank_transfer', '2021-06-08 12:50:25', 'expire', '9882413115757010', 'bni', 'LT-10864301689', '2021-06-26 02:03:26', '2021-06-26 02:03:26', NULL),
('LT-12760d537460ddd7', 'pending', 'LT-12760d537460ddd7', 'bank_transfer', '2021-06-26 21:09:29', 'pending', '24131596408', 'bca', 'LT-12760d537460ddd7', '2021-06-26 07:09:39', '2021-06-26 07:10:15', '7q4kkf43soFWbT5FutCOzRjNUdInB2yPyOJYz46j'),
('LT-13160d740276ba06', 'expire', 'LT-13160d740276ba06', 'qris', '2021-06-26 21:59:42', 'expire', '0', 'qris', 'LT-13160d740276ba06', '2021-06-26 08:06:53', '2021-06-26 08:06:53', NULL),
('LT-13260d74333aa228', 'settlement', 'LT-13260d74333aa228', 'qris', '2021-06-26 22:09:58', 'settlement', '0', 'qris', 'LT-13260d74333aa228', '2021-06-26 08:10:53', '2021-06-26 08:10:53', NULL),
('LT-13560d7de66dc3c0', 'settlement', 'LT-13560d7de66dc3c0', 'bank_transfer', '2021-06-27 09:23:11', 'settlement', '24131822357', 'bca', 'LT-13560d7de66dc3c0', '2021-06-26 19:25:09', '2021-06-27 07:13:49', 'ttw4PX8KnAAIswwHD1nIOvrHASbwXOg2gWHpigjC'),
('LT-13660d8883679475', 'settlement', 'LT-13660d8883679475', 'bank_transfer', '2021-06-27 21:16:44', 'settlement', '24131407998', 'bca', 'LT-13660d8883679475', '2021-06-27 07:17:19', '2021-06-27 07:18:38', 'ttw4PX8KnAAIswwHD1nIOvrHASbwXOg2gWHpigjC'),
('LT-13760d88e718482d', 'settlement', 'LT-13760d88e718482d', 'qris', '2021-06-27 21:43:15', 'settlement', '0', 'qris', 'LT-13760d88e718482d', '2021-06-27 07:44:28', '2021-06-30 06:53:32', 'lUM0ORfh7ayIOqfbe9mJenh8uVjiLL3rNNxGCCyy'),
('LT-13960d96745b44ef', 'settlement', 'LT-13960d96745b44ef', 'bank_transfer', '2021-06-28 14:30:23', 'settlement', '24131908585', 'bca', 'LT-13960d96745b44ef', '2021-06-28 00:30:55', '2021-07-04 00:17:43', 'c1BaLyWsCyGbfXReWdiAkky7VTz2L4gI5nhLCuqb'),
('LT-14460d9d901ad9ba', 'settlement', 'LT-14460d9d901ad9ba', 'bank_transfer', '2021-06-28 21:32:12', 'settlement', '24131963201', 'bca', 'LT-14460d9d901ad9ba', '2021-06-28 07:32:39', '2021-06-28 07:36:44', 'FNqKaYgOsHJydof8uMcxC69nKbdNpCbr7MxzbCED'),
('LT-11904230679', 'expire', 'LT-11904230679', 'bank_transfer', '2021-06-08 13:12:32', 'expire', '24131698959', 'bca', 'LT-11904230679', '2021-06-28 17:30:43', '2021-06-28 17:30:43', NULL),
('LT-121822814629', 'pending', 'LT-121822814629', 'gopay', '2021-06-29 07:30:52', 'pending', '0', 'gopay', 'LT-121822814629', '2021-06-28 17:32:01', '2021-06-28 17:32:01', NULL),
('LT-13468429234', 'expire', 'LT-13468429234', 'bank_transfer', '2021-06-08 13:54:11', 'expire', '24131940589', 'bca', 'LT-13468429234', '2021-06-28 17:32:10', '2021-06-28 17:32:10', NULL),
('LT-141602554478', 'pending', 'LT-141602554478', 'qris', '2021-06-29 07:32:18', 'pending', '0', 'qris', 'LT-141602554478', '2021-06-28 17:37:06', '2021-06-28 17:37:06', NULL),
('LT-15683730619', 'pending', 'LT-15683730619', 'gopay', '2021-06-29 07:37:18', 'pending', '0', 'gopay', 'LT-15683730619', '2021-06-28 17:37:30', '2021-06-28 17:37:30', NULL),
('LT-171478533227', 'expire', 'LT-171478533227', 'bank_transfer', '2021-06-08 18:44:26', 'expire', '24131388429', 'bca', 'LT-171478533227', '2021-06-29 06:44:08', '2021-06-29 06:44:08', NULL),
('LT-18762449127', 'expire', 'LT-18762449127', 'bank_transfer', '2021-06-08 19:19:58', 'expire', '24131744964', 'bca', 'LT-18762449127', '2021-06-29 06:44:17', '2021-06-29 06:44:17', NULL),
('LT-192120635834', 'expire', 'LT-192120635834', 'bank_transfer', '2021-06-08 19:12:38', 'expire', '24131517523', 'bca', 'LT-192120635834', '2021-06-29 06:44:24', '2021-06-29 06:44:24', NULL),
('LT-232143486549', 'expire', 'LT-232143486549', 'bank_transfer', '2021-06-08 19:44:15', 'expire', '24131689041', 'bca', 'LT-232143486549', '2021-06-29 06:44:46', '2021-06-29 06:44:46', NULL),
('LT-15960db2339e4191', 'settlement', 'LT-15960db2339e4191', 'bank_transfer', '2021-06-30 14:15:35', 'settlement', '24131361410', 'bca', 'LT-15960db2339e4191', '2021-06-30 00:16:49', '2021-06-30 00:17:12', 'IJuXP7fZxyRn34mL8zAkcntavlOZqSelFencARUp'),
('LT-16160dc1e2570284', 'settlement', 'LT-16160dc1e2570284', 'bank_transfer', '2021-06-30 14:34:42', 'settlement', '24131712473', 'bca', 'LT-16160dc1e2570284', '2021-06-30 00:35:02', '2021-06-30 00:35:02', NULL),
('LT-16060dbe5b366ca0', 'cancel', 'LT-16060dbe5b366ca0', 'bank_transfer', '2021-06-30 20:03:12', 'cancel', '24131499168', 'bca', 'LT-16060dbe5b366ca0', '2021-06-30 06:06:25', '2021-06-30 06:06:53', 'lUM0ORfh7ayIOqfbe9mJenh8uVjiLL3rNNxGCCyy'),
('LT-16260dc6fc10b7eb', 'cancel', 'LT-16260dc6fc10b7eb', 'bank_transfer', '2021-06-30 20:21:53', 'cancel', '24131602022', 'bca', 'LT-16260dc6fc10b7eb', '2021-06-30 06:23:21', '2021-06-30 06:26:00', 'PoAMdDn5Wao27o22uFQ6IO4SFjK0ZBz5MLoxUHjs'),
('LT-14160d9c1e143df7', 'expire', 'LT-14160d9c1e143df7', 'bank_transfer', '2021-06-30 21:57:35', 'expire', '24131236802', 'bca', 'LT-14160d9c1e143df7', '2021-06-30 08:01:14', '2021-07-03 23:33:00', 'c1BaLyWsCyGbfXReWdiAkky7VTz2L4gI5nhLCuqb'),
('LT-14060d97b4982adc', 'expire', 'LT-14060d97b4982adc', 'qris', '2021-06-30 20:51:54', 'expire', '0', 'qris', 'LT-14060d97b4982adc', '2021-06-30 08:01:19', '2021-06-30 08:01:19', NULL),
('LT-13460d750d85e9d9', 'expire', 'LT-13460d750d85e9d9', 'bank_transfer', '2021-06-30 22:01:50', 'expire', '24131317927', 'bca', 'LT-13460d750d85e9d9', '2021-06-30 08:05:41', '2021-07-01 18:54:18', 'ROw6YP8I6QJxDGsaVYVOBXCjDYVPzHXKKal4Nrbn'),
('LT-12660d5370ec4944', 'pending', 'LT-12660d5370ec4944', 'bank_transfer', '2021-06-30 22:08:20', 'pending', '24131497203', 'bca', 'LT-12660d5370ec4944', '2021-06-30 08:17:12', '2021-06-30 08:17:12', NULL),
('LT-12260d3ef738bb0a', 'expire', 'LT-12260d3ef738bb0a', 'qris', '2021-06-28 14:33:56', 'expire', '0', 'qris', 'LT-12260d3ef738bb0a', '2021-06-30 08:17:21', '2021-06-30 08:17:21', NULL),
('LT-12160d3ef41251cf', 'expire', 'LT-12160d3ef41251cf', 'qris', '2021-06-28 14:33:43', 'expire', '0', 'qris', 'LT-12160d3ef41251cf', '2021-06-30 08:17:29', '2021-06-30 08:17:29', NULL),
('LT-12360d4463e13e97', 'expire', 'LT-12360d4463e13e97', 'qris', '2021-06-28 14:34:25', 'expire', '0', 'qris', 'LT-12360d4463e13e97', '2021-06-30 08:17:35', '2021-06-30 08:17:35', NULL),
('LT-12460d52ebac3e79', 'expire', 'LT-12460d52ebac3e79', 'qris', '2021-06-28 14:34:48', 'expire', '0', 'qris', 'LT-12460d52ebac3e79', '2021-06-30 08:17:41', '2021-06-30 08:17:41', NULL),
('LT-16360dc8c00a26ed', 'expire', 'LT-16360dc8c00a26ed', 'bank_transfer', '2021-06-30 22:25:24', 'expire', '24131689038', 'bca', 'LT-16360dc8c00a26ed', '2021-06-30 08:26:01', '2021-07-03 23:29:04', 'c1BaLyWsCyGbfXReWdiAkky7VTz2L4gI5nhLCuqb'),
('LT-16460dc8dde1fd01', 'expire', 'LT-16460dc8dde1fd01', 'gopay', '2021-06-30 22:33:39', 'expire', '0', 'gopay', 'LT-16460dc8dde1fd01', '2021-06-30 08:44:33', '2021-07-02 04:32:23', 'OZfrcdjEQLT18xLqpdWJ2UdrrMU3cYIUh9yiEoEB'),
('LT-16560dc917da3dfa', 'expire', 'LT-16560dc917da3dfa', 'qris', '2021-06-30 22:45:20', 'expire', '0', 'qris', 'LT-16560dc917da3dfa', '2021-06-30 08:46:35', '2021-06-30 08:59:30', '5MJ2RPqYK27MSFVueGoRYNG6mew6qMEKb9ixEoUH'),
('LT-14260d9d484e41bc', 'settlement', 'LT-14260d9d484e41bc', 'bank_transfer', '2021-06-28 21:33:21', 'settlement', '24131634511', 'bca', 'LT-14260d9d484e41bc', '2021-06-30 08:46:40', '2021-06-30 08:46:40', NULL),
('LT-6460c170223de93', 'pending', 'LT-6460c170223de93', 'gopay', '2021-06-30 22:47:46', 'pending', '0', 'gopay', 'LT-6460c170223de93', '2021-06-30 08:51:36', '2021-06-30 08:51:36', 'jw3qk8wY4sLOn7ZgsQFDZQViaBKS3uHtqNTaeskb'),
('LT-6260c16fe094021', 'pending', 'LT-6260c16fe094021', 'bank_transfer', '2021-06-30 23:00:12', 'pending', '24131819103', 'bca', 'LT-6260c16fe094021', '2021-06-30 09:00:33', '2021-06-30 09:00:33', NULL),
('LT-5860c16d5398938', 'Transaksi sedang diproses', 'LT-5860c16d5398938', 'bank_transfer', '2021-06-30 23:04:40', 'pending', '24131820759', 'bca', 'LT-5860c16d5398938', '2021-06-30 09:20:39', '2021-06-30 09:20:39', NULL),
('LT-6360c16fe362d84', 'Transaksi sedang diproses', 'LT-6360c16fe362d84', 'bank_transfer', '2021-06-30 23:20:51', 'pending', '24131849002', 'bca', 'LT-6360c16fe362d84', '2021-06-30 09:20:52', '2021-06-30 09:20:52', NULL),
('LT-6160c16f9bda4ae', 'pending', 'LT-6160c16f9bda4ae', 'bank_transfer', '2021-06-30 23:21:11', 'pending', '24131995582', 'bca', 'LT-6160c16f9bda4ae', '2021-06-30 09:21:13', '2021-06-30 09:21:28', '5MJ2RPqYK27MSFVueGoRYNG6mew6qMEKb9ixEoUH'),
('LT-6060c16f994c296', 'Success, transaction is found', 'LT-6060c16f994c296', 'qris', '2021-06-30 23:25:21', 'pending', NULL, NULL, 'LT-6060c16f994c296', '2021-06-30 09:29:50', '2021-06-30 09:29:50', NULL),
('LT-17060dd53419f5c3', 'settlement', 'LT-17060dd53419f5c3', 'bank_transfer', '2021-07-01 14:20:56', 'settlement', '24131192887', 'bca', 'LT-17060dd53419f5c3', '2021-07-01 00:20:55', '2021-07-01 00:21:29', 'vHmuFL9REuhse0abrFLyfPz6V9PQ7qfgrDIFhfjP'),
('LT-17160dead41205cb', 'settlement', 'LT-17160dead41205cb', 'qris', '2021-07-02 13:09:44', 'settlement', '0', 'qris', 'LT-17160dead41205cb', '2021-07-01 23:11:05', '2021-07-01 23:11:05', NULL),
('LT-17360dec7eec6542', 'settlement', 'LT-17360dec7eec6542', 'qris', '2021-07-02 15:02:00', 'settlement', '0', 'qris', 'LT-17360dec7eec6542', '2021-07-02 01:56:04', '2021-07-03 23:07:40', 'c1BaLyWsCyGbfXReWdiAkky7VTz2L4gI5nhLCuqb'),
('LT-17460ded4dd691eb', 'settlement', 'LT-17460ded4dd691eb', 'qris', '2021-07-02 15:57:11', 'settlement', '0', 'qris', 'LT-17460ded4dd691eb', '2021-07-02 02:00:28', '2021-07-06 01:22:44', 'LGAVIdqKjjpRkE9QZcXfX5PITp34T869spgtAMis'),
('LT-17260deaff535d57', 'settlement', 'LT-17260deaff535d57', 'qris', '2021-07-02 16:00:39', 'settlement', '0', 'qris', 'LT-17260deaff535d57', '2021-07-02 02:01:05', '2021-07-02 02:01:05', NULL),
('LT-16960dd530470ee1', 'settlement', 'LT-16960dd530470ee1', 'qris', '2021-07-02 16:16:47', 'settlement', '0', 'qris', 'LT-16960dd530470ee1', '2021-07-02 02:17:20', '2021-07-02 02:17:20', NULL),
('LT-16860dd52edf0aaa', 'settlement', 'LT-16860dd52edf0aaa', 'qris', '2021-07-02 16:18:16', 'settlement', '0', 'qris', 'LT-16860dd52edf0aaa', '2021-07-02 02:21:01', '2021-07-02 02:21:01', NULL),
('LT-16760dd52dbaedb7', 'settlement', 'LT-16760dd52dbaedb7', 'qris', '2021-07-02 16:21:21', 'settlement', '0', 'qris', 'LT-16760dd52dbaedb7', '2021-07-02 02:22:28', '2021-07-02 02:22:28', NULL),
('LT-16660dd52bba45be', 'pending', 'LT-16660dd52bba45be', 'bank_transfer', '2021-07-02 16:56:52', 'pending', '24131284923', 'bca', 'LT-16660dd52bba45be', '2021-07-02 02:56:56', '2021-07-02 03:23:27', 'zMIosAxqVF4uQhGhjtirweBGoTX4ZHLkNOzcZR1P'),
('LT-17560dee3dcd3126', 'cancel', 'LT-17560dee3dcd3126', 'bank_transfer', '2021-07-02 17:01:11', 'cancel', '24131717594', 'bca', 'LT-17560dee3dcd3126', '2021-07-02 03:01:16', '2021-07-06 01:22:33', 'LGAVIdqKjjpRkE9QZcXfX5PITp34T869spgtAMis'),
('LT-17660def4d52c912', 'cancel', 'LT-17660def4d52c912', 'gopay', '2021-07-02 18:13:34', 'cancel', '0', 'gopay', 'LT-17660def4d52c912', '2021-07-02 04:13:38', '2021-07-03 23:33:10', 'c1BaLyWsCyGbfXReWdiAkky7VTz2L4gI5nhLCuqb'),
('LT-17860e14e81d8f3c', 'expire', 'LT-17860e14e81d8f3c', 'bank_transfer', '2021-07-04 13:00:46', 'expire', '24131769212', 'bca', 'LT-17860e14e81d8f3c', '2021-07-03 23:00:51', '2021-07-06 05:03:18', 'gxC90WdXsPzixe3ZbFuNFNp8cN4UIR5F1avVlcht'),
('LT-18360e4182c7b203', 'settlement', 'LT-18360e4182c7b203', 'qris', '2021-07-06 15:46:02', 'settlement', '0', 'qris', 'LT-18360e4182c7b203', '2021-07-06 01:46:54', '2021-07-12 17:32:14', 'XlaGoBEUuTXUkEwv0yOWcCoTuLTEwkilJflU8Q9F'),
('LT-18460e41b05d86f7', 'settlement', 'LT-18460e41b05d86f7', 'qris', '2021-07-06 15:57:54', 'settlement', '0', 'qris', 'LT-18460e41b05d86f7', '2021-07-06 01:58:23', '2021-07-12 17:32:09', 'XlaGoBEUuTXUkEwv0yOWcCoTuLTEwkilJflU8Q9F'),
('LT-18160e169519e9da', 'pending', 'LT-18160e169519e9da', 'bank_transfer', '2021-07-06 19:03:36', 'cancel', '24131896238', 'bca', 'LT-18160e169519e9da', '2021-07-06 05:03:40', '2021-07-06 05:04:28', NULL),
('LT-18260e1becf83ac8', 'expire', 'LT-18260e1becf83ac8', 'bank_transfer', '2021-07-06 19:06:13', 'expire', '24131869996', 'bca', 'LT-18260e1becf83ac8', '2021-07-06 05:06:17', '2021-07-07 05:24:32', 'rjsFXNrAuwlOU2UqacPKPMiQ3TmvoZDr40jinlqd'),
('LT-18560e59c6c07808', 'pending', 'LT-18560e59c6c07808', 'bank_transfer', '2021-07-07 19:22:20', 'cancel', '24131703032', 'bca', 'LT-18560e59c6c07808', '2021-07-07 05:22:27', '2021-07-07 05:26:32', 'rjsFXNrAuwlOU2UqacPKPMiQ3TmvoZDr40jinlqd'),
('LT-18860eb1bb6916fa', 'settlement', 'LT-18860eb1bb6916fa', 'bank_transfer', '2021-07-11 23:29:31', 'settlement', '24131838482', 'bca', 'LT-18860eb1bb6916fa', '2021-07-11 09:30:05', '2021-07-11 09:30:10', 'pGuYe1IHyfea663dfCypk0P0sJ0zZhm7HbQaDwhO'),
('LT-19760f62647aebf3', 'cancel', 'LT-19760f62647aebf3', 'qris', '2021-07-20 08:31:21', 'cancel', '0', 'qris', 'LT-19760f62647aebf3', '2021-07-19 18:31:45', '2021-07-24 06:51:10', 'N3XtWqlnwtAMLdz8q9GvdLxJubQBVpUCuxokjJPH'),
('LT-19860f627c656668', 'settlement', 'LT-19860f627c656668', 'qris', '2021-07-20 08:33:05', 'settlement', '0', 'qris', 'LT-19860f627c656668', '2021-07-19 18:38:04', '2021-07-26 07:53:58', 'E4cJ4RyOol5do36sruLAeIdV6Mwf2O1g0rDe97hF'),
('LT-19960f97b8bc1c49', 'settlement', 'LT-19960f97b8bc1c49', 'qris', '2021-07-22 21:07:23', 'settlement', '0', 'qris', 'LT-19960f97b8bc1c49', '2021-07-22 07:07:59', '2021-07-22 07:08:57', 'Pu1YIxcehj2XQ7gjXqYLom9Gm3kS9yBIwaALYVCS'),
('LT-20060f97c810504c', 'settlement', 'LT-20060f97c810504c', 'qris', '2021-07-22 21:11:22', 'settlement', '0', 'qris', 'LT-20060f97c810504c', '2021-07-22 07:11:50', '2021-07-22 07:12:07', 'Pu1YIxcehj2XQ7gjXqYLom9Gm3kS9yBIwaALYVCS'),
('LT-20160fa627966075', 'settlement', 'LT-20160fa627966075', 'qris', '2021-07-23 13:32:52', 'settlement', '0', 'qris', 'LT-20160fa627966075', '2021-07-22 23:33:32', '2021-07-23 04:29:34', 'k2sSovrnNfaUH7qlX3AkcQ3zqgM5rMspM9Psedzg'),
('LT-20560faa3a6bcad1', 'settlement', 'LT-20560faa3a6bcad1', 'qris', '2021-07-23 18:26:38', 'settlement', '0', 'qris', 'LT-20560faa3a6bcad1', '2021-07-23 04:27:11', '2021-07-23 04:28:03', 'k2sSovrnNfaUH7qlX3AkcQ3zqgM5rMspM9Psedzg'),
('LT-20760faa948de7e4', 'settlement', 'LT-20760faa948de7e4', 'bank_transfer', '2021-07-23 18:34:54', 'settlement', '24131135817', 'bca', 'LT-20760faa948de7e4', '2021-07-23 04:35:15', '2021-07-23 04:40:37', '5hOZIWTylKUPJl4MZxAxSl0pBg9qBXltN46gfKbx'),
('LT-20860faac70cbc78', 'settlement', 'LT-20860faac70cbc78', 'bank_transfer', '2021-07-23 18:48:12', 'settlement', '24131298176', 'bca', 'LT-20860faac70cbc78', '2021-07-23 04:48:24', '2021-07-23 04:48:37', 'EtXJ1n1Xaf8B42lNYEgT3XkgpUqrTK8v0Nqbbbkw'),
('LT-21060fe79507c2ed', 'settlement', 'LT-21060fe79507c2ed', 'bank_transfer', '2021-07-26 20:50:01', 'settlement', '24131665053', 'bca', 'LT-21060fe79507c2ed', '2021-07-26 06:50:18', '2021-07-27 07:26:31', 'rHv2KcMfEEvovK0NZmaUjZNUJ0G84jBjA9Tqi9Ok'),
('LT-2116100183f4b355', 'settlement', 'LT-2116100183f4b355', 'qris', '2021-07-27 21:56:01', 'settlement', '0', 'qris', 'LT-2116100183f4b355', '2021-07-27 07:56:30', '2021-07-27 07:56:57', 'rHv2KcMfEEvovK0NZmaUjZNUJ0G84jBjA9Tqi9Ok'),
('LT-21261010aa8d4985', 'settlement', 'LT-21261010aa8d4985', 'bank_transfer', '2021-07-28 14:43:50', 'settlement', '24131751395', 'bca', 'LT-21261010aa8d4985', '2021-07-28 00:44:29', '2021-07-28 00:45:34', 'zVRQefPcbXv3C72Pjn0tOSIDVxGm2wzrjmkcAeu5'),
('LT-21361010b3d1fb24', 'settlement', 'LT-21361010b3d1fb24', 'bank_transfer', '2021-07-28 14:46:14', 'settlement', '24131893631', 'bca', 'LT-21361010b3d1fb24', '2021-07-28 00:46:34', '2021-07-28 00:46:53', 'IJ1cslpRohlsk7j5C4d2vMoO2l7U85yN1agKw9uv'),
('LT-21561029cd24043b', 'settlement', 'LT-21561029cd24043b', 'bank_transfer', '2021-07-29 19:19:51', 'settlement', '24131543531', 'bca', 'LT-21561029cd24043b', '2021-07-29 05:20:03', '2021-07-29 06:11:01', '2mps5dYIhm7JCyEGxRksf1Df1eyyvosOzgFMD5hD'),
('LT-2176102b5141aa61', 'settlement', 'LT-2176102b5141aa61', 'qris', '2021-07-29 21:09:34', 'settlement', '0', 'qris', 'LT-2176102b5141aa61', '2021-07-29 07:10:07', '2021-07-29 07:29:02', 'W4NVPp9S2DVbQ048IWw8AGAHuMXbuVwA8llneOBo'),
('LT-2186102bb85ba9e7', 'settlement', 'LT-2186102bb85ba9e7', 'qris', '2021-07-29 21:30:44', 'settlement', '0', 'qris', 'LT-2186102bb85ba9e7', '2021-07-29 07:31:00', '2021-07-29 07:31:19', 'olzopDJJHO6B2WmIlkNcW6vkLCqvs1hyxHhIBXjC'),
('LT-2196102bdf2cfa9c', 'expire', 'LT-2196102bdf2cfa9c', 'qris', '2021-07-29 21:41:18', 'expire', '0', 'qris', 'LT-2196102bdf2cfa9c', '2021-07-29 07:46:14', '2021-07-29 07:46:29', 'vbZjiZ9QC4AVlz9sdGsweIfDlFchbmyaiZf0yH7q'),
('LT-2206102c3e507dd6', 'settlement', 'LT-2206102c3e507dd6', 'qris', '2021-07-29 22:06:23', 'settlement', '0', 'qris', 'LT-2206102c3e507dd6', '2021-07-29 08:06:48', '2021-07-29 08:06:52', 'vbZjiZ9QC4AVlz9sdGsweIfDlFchbmyaiZf0yH7q'),
('LT-2216103a4c4537e6', 'settlement', 'LT-2216103a4c4537e6', 'qris', '2021-07-30 14:05:55', 'settlement', '0', 'qris', 'LT-2216103a4c4537e6', '2021-07-30 00:27:10', '2021-07-30 00:27:17', 'uxxDkkF1SLK3DoxSRwZHh0gSNtEjrsGAykpRDB0e'),
('LT-2266104ccd586614', 'settlement', 'LT-2266104ccd586614', 'bank_transfer', '2021-07-31 11:11:17', 'settlement', '24131779468', 'bca', 'LT-2266104ccd586614', '2021-07-30 21:11:52', '2021-07-30 21:12:32', 'zWjnELuwQMPtoxlsenlk0Ucywn3Vo3xZAaAS0S9p'),
('LT-2276104d145f2da4', 'settlement', 'LT-2276104d145f2da4', 'qris', '2021-07-31 11:49:23', 'settlement', '0', 'qris', 'LT-2276104d145f2da4', '2021-07-30 21:50:04', '2021-07-30 21:52:59', 'zWjnELuwQMPtoxlsenlk0Ucywn3Vo3xZAaAS0S9p'),
('LT-22861061b38cd7fe', 'settlement', 'LT-22861061b38cd7fe', 'qris', '2021-08-01 10:55:54', 'settlement', '0', 'qris', 'LT-22861061b38cd7fe', '2021-07-31 20:56:32', '2021-07-31 20:56:41', 'IRhzDFBOc8D2jcozvgRa9HemFjnnoCWn25N5x5NU'),
('LT-22961075c1040f99', 'settlement', 'LT-22961075c1040f99', 'qris', '2021-08-02 09:44:44', 'settlement', '0', 'qris', 'LT-22961075c1040f99', '2021-08-01 19:45:12', '2021-08-01 19:46:48', 'uEFp6ubYuwV8wmMzmGP5vkHMniU8i9un5Cpksthy'),
('LT-23061077cdf298c9', 'settlement', 'LT-23061077cdf298c9', 'qris', '2021-08-02 12:04:41', 'settlement', '0', 'qris', 'LT-23061077cdf298c9', '2021-08-01 22:05:11', '2021-08-01 22:05:16', 'uEFp6ubYuwV8wmMzmGP5vkHMniU8i9un5Cpksthy'),
('LT-23161079f171e34f', 'settlement', 'LT-23161079f171e34f', 'qris', '2021-08-02 14:31:53', 'settlement', '0', 'qris', 'LT-23161079f171e34f', '2021-08-02 00:32:22', '2021-08-02 00:32:30', 'Gz0ZuK4R9JcWfoLtaTWQTtHl16YjDtk4RlYp8I3s'),
('LT-232610ab1f518e38', 'settlement', 'LT-232610ab1f518e38', 'bank_transfer', '2021-08-04 22:29:10', 'settlement', '24131270070', 'bca', 'LT-232610ab1f518e38', '2021-08-04 08:29:29', '2021-08-04 08:30:18', 'mEvAQFAQlk07dHGU5DdtpsGN60MJr20hKrZrJBcZ'),
('LT-233610abab4695fb', 'settlement', 'LT-233610abab4695fb', 'bank_transfer', '2021-08-04 23:05:21', 'settlement', '24131604398', 'bca', 'LT-233610abab4695fb', '2021-08-04 09:05:40', '2021-08-04 09:05:44', 'o8gwX6df0sLAnrL0CtQpXybUAwbUQs2jSEntAej0'),
('LT-234610abb6243dd8', 'settlement', 'LT-234610abb6243dd8', 'bank_transfer', '2021-08-04 23:08:14', 'settlement', '24131929708', 'bca', 'LT-234610abb6243dd8', '2021-08-04 09:08:36', '2021-08-04 09:23:19', 'VA7UC01eehGP510vrnrRqVHzisNIkclCZ8SieIaZ'),
('LT-235610b519a4874c', 'settlement', 'LT-235610b519a4874c', 'bank_transfer', '2021-08-05 09:49:17', 'settlement', '24131077372', 'bca', 'LT-235610b519a4874c', '2021-08-04 19:50:11', '2021-08-04 19:50:16', 'YZbWYVlWRjgxaqCHZ97n2vnoXYNrElRusOD4GAe5'),
('LT-23661149a3a4c5af', 'settlement', 'LT-23661149a3a4c5af', 'qris', '2021-08-12 10:52:38', 'settlement', '0', 'qris', 'LT-23661149a3a4c5af', '2021-08-11 20:53:39', '2021-08-11 20:53:51', 'e6XAabKUyfsqCUTh7zrHBwkUgRSVpcymOudyC1TN'),
('LT-2376114a0700796b', 'settlement', 'LT-2376114a0700796b', 'bank_transfer', '2021-08-12 11:17:02', 'settlement', '24131378303', 'bca', 'LT-2376114a0700796b', '2021-08-11 21:17:56', '2021-08-11 21:18:16', 'L20vdpDkl37K0HcnYmckR177PzCFca5bHHx5IqFu'),
('LT-2396114a2cc9eade', 'settlement', 'LT-2396114a2cc9eade', 'bank_transfer', '2021-08-12 11:26:06', 'settlement', '24131540585', 'bca', 'LT-2396114a2cc9eade', '2021-08-11 21:26:38', '2021-08-11 21:26:48', 'L20vdpDkl37K0HcnYmckR177PzCFca5bHHx5IqFu'),
('LT-2416119b3ae3a511', 'settlement', 'LT-2416119b3ae3a511', 'bank_transfer', '2021-08-16 08:57:42', 'settlement', '24131084953', 'bca', 'LT-2416119b3ae3a511', '2021-08-15 18:58:41', '2021-08-15 19:00:07', 'KUhNuN4fIvtf2wSqXlnQoB8ED6LEqxxPpNa8yClr'),
('LT-2426119c8d73985d', 'settlement', 'LT-2426119c8d73985d', 'bank_transfer', '2021-08-16 09:10:14', 'settlement', '24131561502', 'bca', 'LT-2426119c8d73985d', '2021-08-15 19:10:27', '2021-08-15 19:18:10', 'KUhNuN4fIvtf2wSqXlnQoB8ED6LEqxxPpNa8yClr'),
('LT-2436119cbbb69f87', 'settlement', 'LT-2436119cbbb69f87', 'bank_transfer', '2021-08-16 09:22:05', 'settlement', '24131705916', 'bca', 'LT-2436119cbbb69f87', '2021-08-15 19:22:23', '2021-08-15 19:34:14', 'KUhNuN4fIvtf2wSqXlnQoB8ED6LEqxxPpNa8yClr'),
('LT-24461849b5129de3', 'pending', 'LT-24461849b5129de3', 'cstore', '2021-11-05 09:48:49', 'pending', '0', 'cstore', 'LT-24461849b5129de3', '2021-11-04 19:49:27', '2021-11-04 19:49:27', NULL),
('LT-24661d6479f9e685', 'cancel', 'LT-24661d6479f9e685', 'bank_transfer', '2022-01-06 08:37:10', 'cancel', '24131743084', 'bca', 'LT-24661d6479f9e685', '2022-01-05 18:37:25', '2022-02-10 02:27:27', 'IAtNQFrdsbI0I8qhTY0SM7aWJDja5Urfz3C1ce0m'),
('LT-24561849d4ccef1e', 'cancel', 'LT-24561849d4ccef1e', 'gopay', '2022-01-06 20:19:59', 'cancel', '0', 'gopay', 'LT-24561849d4ccef1e', '2022-01-06 06:20:12', '2022-01-06 06:21:21', '5KKiVEnAT0RzQnmvRUQTo1zEqpIS7OukScI2rJbl'),
('LT-2496204db230f680', 'cancel', 'LT-2496204db230f680', 'bank_transfer', '2022-02-10 16:30:58', 'cancel', '24131200845', 'bca', 'LT-2496204db230f680', '2022-02-10 02:37:30', '2022-02-10 19:42:35', 'lbn6qHuCtFuItkUGiS5S2aR3zE1Z5IF6rai7OnlE'),
('LT-2506205f149af50d', 'cancel', 'LT-2506205f149af50d', 'cstore', '2022-02-11 12:17:27', 'cancel', '0', 'cstore', 'LT-2506205f149af50d', '2022-02-10 22:17:50', '2022-03-01 06:14:01', 'cRZAQGK5HDhO6QeOBCA6DFLiIl0Is4hLSokMFGLR'),
('LT-255621e1e5fc46b0', 'expire', 'LT-255621e1e5fc46b0', 'qris', '2022-03-01 20:25:38', 'expire', '0', 'qris', 'LT-255621e1e5fc46b0', '2022-03-01 06:26:32', '2022-03-16 00:05:14', '65a1UKnJzMjAWB3IO7rzTZXMKqS5HwtrjhLQjZpL'),
('LT-257622734291b04f', 'cancel', 'LT-257622734291b04f', 'cstore', '2022-03-08 17:47:52', 'cancel', '0', 'cstore', 'LT-257622734291b04f', '2022-03-08 03:48:06', '2022-03-17 20:26:42', 'ooYjpJRKxtebVPKTBbG9XK5Z7SvcNfsd7IVRwNGS'),
('LT-26262318c017787f', 'pending', 'LT-26262318c017787f', 'cstore', '2022-03-16 14:06:24', 'pending', '0', 'cstore', 'LT-26262318c017787f', '2022-03-16 00:06:33', '2022-03-16 00:06:33', NULL),
('LT-2636232d5101d92f', 'cancel', 'LT-2636232d5101d92f', 'gopay', '2022-03-17 13:29:30', 'cancel', '0', 'gopay', 'LT-2636232d5101d92f', '2022-03-16 23:29:46', '2022-03-16 23:30:15', 'APSThOhFl9h1hxDuzaVCM9tFYtgYie7T4wp0cqzy'),
('LT-2646233f8695ce74', 'pending', 'LT-2646233f8695ce74', 'echannel', '2022-03-18 10:29:18', 'cancel', '0', 'echannel', 'LT-2646233f8695ce74', '2022-03-17 20:30:01', '2022-03-17 20:31:12', 'ooYjpJRKxtebVPKTBbG9XK5Z7SvcNfsd7IVRwNGS');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pencairan`
--

CREATE TABLE `tb_pencairan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `tempat_id` bigint(20) NOT NULL,
  `jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_pencairan`
--

INSERT INTO `tb_pencairan` (`id`, `user_id`, `tempat_id`, `jumlah`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 4, '2000', 1, '2021-06-25 17:01:43', '2021-06-25 17:01:43'),
(2, 3, 4, '3000', 1, '2021-06-25 17:10:28', '2021-06-25 17:10:28'),
(3, 3, 4, '3000', 1, '2021-06-25 17:11:15', '2021-06-25 17:11:15'),
(4, 3, 4, '1000', 1, '2021-06-25 17:12:14', '2021-06-25 17:12:14'),
(5, 3, 4, '2000', 1, '2021-06-25 17:12:47', '2021-06-25 17:12:47'),
(6, 3, 4, '1000', 1, '2021-06-25 17:16:08', '2021-06-25 17:16:08'),
(7, 3, 4, '1000', 1, '2021-06-25 17:17:13', '2021-06-25 17:17:13'),
(8, 3, 4, '1000', 1, '2021-06-25 17:20:36', '2021-06-25 17:20:36'),
(9, 3, 4, '3000', 1, '2021-06-25 17:49:46', '2021-06-25 18:01:03'),
(10, 3, 4, '3000', 1, '2021-06-25 17:50:47', '2021-06-25 17:59:17'),
(11, 15, 5, '2000', 1, '2021-06-28 04:38:38', '2021-06-28 04:44:31'),
(12, 15, 5, '2000', 1, '2021-06-28 04:45:46', '2021-06-28 04:45:56'),
(13, 15, 5, '2000', 1, '2021-06-28 04:47:14', '2021-06-28 04:47:41'),
(14, 15, 5, '1000', 1, '2021-06-28 04:48:17', '2021-06-28 05:14:44'),
(15, 3, 4, '5000', 1, '2021-06-28 17:23:48', '2021-06-29 22:06:08'),
(16, 3, 4, '10000', 1, '2021-06-29 22:15:04', '2021-06-29 22:15:32'),
(17, 3, 4, '50000', 1, '2021-07-01 23:30:16', '2021-07-02 02:55:31'),
(18, 3, 4, '15000', 2, '2021-07-04 03:08:12', '2021-07-04 06:11:28'),
(19, 3, 4, '20000', 1, '2021-07-12 22:20:19', '2021-07-12 22:20:36'),
(20, 4, 6, '10000', 2, '2021-07-15 17:43:48', '2021-07-30 22:09:49'),
(21, 3, 4, '10000', 2, '2021-07-15 17:46:10', '2021-10-22 01:54:11'),
(22, 4, 6, '20000', 2, '2021-07-15 18:05:14', '2021-10-22 01:54:16'),
(23, 3, 4, '10000', 2, '2021-07-15 18:38:50', '2021-10-22 01:54:15'),
(24, 3, 4, '95000', 1, '2021-08-02 00:12:32', '2021-08-02 00:13:01'),
(25, 3, 4, '20000', 1, '2021-08-04 20:35:48', '2021-08-04 20:36:26'),
(26, 15, 5, '10000', 2, '2021-08-24 06:07:02', '2021-10-22 01:54:14'),
(27, 15, 5, '10000', 2, '2021-08-24 06:12:45', '2021-10-22 01:54:12'),
(28, 15, 5, '24000', 0, '2022-02-13 22:12:09', '2022-02-13 22:12:09'),
(29, 15, 5, '1000', 2, '2022-03-01 00:02:08', '2022-03-02 06:18:14'),
(30, 15, 5, '5000', 0, '2022-03-07 06:02:06', '2022-03-07 06:02:06'),
(31, 3, 4, '5000', 1, '2022-03-07 22:51:19', '2022-03-15 23:48:47'),
(32, 3, 4, '1', 0, '2022-03-08 01:49:11', '2022-03-08 01:49:11'),
(33, 15, 5, '100000', 0, '2022-03-15 20:25:58', '2022-03-15 20:25:58'),
(34, 4, 6, '5000', 0, '2022-03-16 22:44:52', '2022-03-16 22:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE `tb_role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_role`
--

INSERT INTO `tb_role` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-05-28 02:04:58', NULL),
(2, 'wisata', '2021-05-28 02:05:00', NULL),
(3, 'kuliner', '2021-05-28 02:05:00', NULL),
(4, 'penginapan', '2021-05-28 02:05:00', NULL),
(5, 'pelanggan', '2021-05-28 02:05:00', NULL),
(6, 'desa', NULL, NULL),
(7, 'event & sewa tempat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat`
--

CREATE TABLE `tb_tempat` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sosmed` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `galeri` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `htm` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jambuka` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jamtutup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gmaps` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `induk_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `dana` int(35) DEFAULT NULL,
  `open` int(25) DEFAULT 0,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_tempat`
--

INSERT INTO `tb_tempat` (`id`, `user_id`, `kategori`, `name`, `deskripsi`, `alamat`, `email`, `telp`, `sosmed`, `galeri`, `status`, `htm`, `created_at`, `updated_at`, `image`, `image2`, `jambuka`, `jamtutup`, `gmaps`, `induk_id`, `dana`, `open`, `video`, `slug`) VALUES
(1, 'D006', 'wisata', 'Wisata Daaa', 'Tempat yang untuk berwisata', 'Ngijo Tasikmadu Karanganyarr', 'sondokoro@gmail.com', '085882218939', NULL, NULL, 0, 10000, '2021-05-28 17:50:24', '2021-10-22 01:55:39', '1628481101.png', 'yiLxS7bhVHnxCg0OWvFMhsDoaw74TKHJ5VPamF4R.jpg', '', '', NULL, NULL, NULL, NULL, NULL, 'wisata-daaa'),
(2, 'D010', 'wisata', 'Wisata C', 'Air terjun yang sangat cocok untuk wisatawan', 'Tawangmangu Karangnayar', 'wisatac@gmail.com', '085882218939', NULL, NULL, 0, 5000, '2021-05-29 06:50:05', '2022-03-02 06:18:29', 'zouxEIKAEESxbRj4qu6Iuh56VRcG4LFkQbEqNOef.jpg', NULL, '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3954.4853912674935!2d111.1231912149853!3d-7.630832377580112!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e798af6e83fb775%3A0xdd6d4d623f0b0548!2sAir%20Terjun%20Jumog!5e0!3m2!1sid!2sid!4v1622769350072!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL, NULL, NULL, NULL, NULL),
(3, 'D002', 'kuliner', 'Ndoro Donker', 'Tempat Teh Ndoro Donker', 'Kemuning Tawangmangu Karanganyar', 'ndorodonker@gmail.com', '092743842', NULL, NULL, 0, 0, '2021-05-31 18:29:35', '2021-10-22 01:55:43', 'mu46YZ2EFCoIPcTSJuuFV6nfclSb6RusGNMTmgRF.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'D003', 'wisata', 'Wisata Watu Gambir', 'Tempat wisata di daerah tawangmangu yang keren :)', 'Watugambir, karanganyar', 'watugambir@gmail.com', '08588221893', NULL, NULL, 1, 5000, '2021-06-15 17:12:52', '2022-03-15 23:48:47', '1635810488.png', 'zTCijV8Ma0ztU5pyyS3vnANFy6SsTVhV4LjMKjpu.jpg', NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3954.5240299199795!2d111.10972051409476!3d-7.62665267752895!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e798b333b837515%3A0xb43ba0717a430c12!2sWatu%20Gambir%20Park!5e0!3m2!1sid!2sid!4v1623806846480!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '10', 965000, NULL, 'mW1J4npTTBBkKj6R1AuGRfK8ML87MK421T4Fezg4.m4v', 'wisata-watu-gambir'),
(5, 'D008', 'kuliner', 'Kuliner A', 'Tempat makan yang bagus berisi berbagai jenis masakan yang lezat dan  mengenyangkan dengan harga ramah dikantong', 'Watu Gambir, Karang, Karanganyar', 'warmindo@gmail.com', '085882218938', NULL, NULL, 1, 0, '2021-06-16 21:46:30', '2022-03-08 19:54:12', '1629811593.png', 'dC6tdhUTA1dJ1dAWcxxZAPBRk8w2g3VBkObKNVgl.jpg', NULL, NULL, NULL, '10', 141000, 1, NULL, 'kafe-joss-ssaa'),
(6, 'D004', 'hotel', 'Penginapan A', 'Penginapan Untuk menginap', 'Karanganyar', 'penginapanA@gmail.com', '085882218939', NULL, NULL, 1, 0, '2021-06-28 19:50:09', '2021-08-25 21:41:06', '1628485230.png', 'aDEaaKPrkscLk5CQIguQnYC8rWzvl6yj8hmAfXbA.jpg', NULL, NULL, NULL, '10', 650000, 1, NULL, 'penginapan-a'),
(7, 'D010', 'wisata', 'Wisata B', 'Tempat Wisata B', 'wisatab', 'wisatab@gmail.com', '085822881292', NULL, NULL, 0, 0, '2021-08-01 06:28:45', '2021-08-15 01:20:25', 'ICbWX2Yib3DCNlStMqIEDm0C7tw6lBHQm2CuZmoa.jpg', 'fRJc9XHJpETEn5na5Hns4UNqvqMyywOu6lTqOUt9.jpg', NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(8, 'D010', 'kuliner', 'Kuliner B', 'Restaurant dengan banyak sekali makanan lezat dan tenpat yang nyaman', 'Karanganyar', 'kulinerb@gmail.com', '085882218939', NULL, NULL, 0, 0, '2021-08-03 01:23:22', '2022-03-08 01:49:40', '1XRv1L2QOXi5vEKskFjrxUhRf7Te7V8FJi3fwGQf.jpg', 'nWS5eAuEXVseXMtJlnShGe33Mx29rGo44C37rrH0.jpg', NULL, NULL, NULL, '4', NULL, 0, NULL, NULL),
(9, 'D010', 'wisata', 'Wisata E', 'tempat wisata', 'pokoh', 'wisatae@gmail.com', '085888213131', NULL, NULL, 0, 0, '2021-08-04 20:26:15', '2021-10-22 01:33:22', 'JNnaEdfE6feLHfpgL09befMABinnz0v0qj4yVfKA.jpg', '2GfU2ubWHGIxsM66WpnTyjppLGlKbmEDnhuc7tyO.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(10, 'D011', 'desa', 'Watu Gambir', 'Watu Gambir Village', 'watu gambir', 'desaaa@gmail.com', '08666666666', NULL, NULL, 1, 0, '2021-08-25 00:02:42', '2021-11-01 16:35:45', '1635809627.png', 'ZSIOLHt21skLV7nsQGHEiIW3FgQLICV18uZHdxSK.jpg', NULL, NULL, NULL, NULL, NULL, 1, 'JqpBjCkBQ4v3eVITXPzJo0dfBFoBtJxEwp7EIFha.m4v', 'watu-gambir'),
(11, 'D013', 'desa', 'Pokoh', 'Pokoh  City', 'ngijo', 'pokoh@gmail.com', '1231313131', NULL, NULL, 0, 0, '2021-08-26 08:20:28', '2021-10-22 01:56:34', 'SQrsz05f0AUl6Lxq9Au4frfPmeFhttGQh36UMEhv.jpg', 'xzf53U59D4bshO49vC8OxN7x5RAFFgbsHipl3f43.jpg', NULL, NULL, NULL, '10', NULL, 0, NULL, 'pokoh'),
(12, 'D015', 'desa', 'Coming soon', 'desab', 'desab', 'desab@gmail.com', '12313131', NULL, NULL, 0, 0, '2021-08-26 20:49:45', '2021-11-01 18:13:52', 'WqMwg2qMXHXGt8wQPS3kVuk5N9zZyA0hWOj3Kghc.jpg', 'M3mqMtaHstSIjeFohHIQ8lbFsPY8fMI8zXzXJvyz.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'coming-soon');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tiket`
--

CREATE TABLE `tb_tiket` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `tempat_id` bigint(20) DEFAULT NULL,
  `check` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `status` int(3) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_tiket`
--

INSERT INTO `tb_tiket` (`id`, `kode`, `user_id`, `tempat_id`, `check`, `name`, `email`, `telp`, `harga`, `status`, `created_at`, `updated_at`, `token`) VALUES
(1, 'LT-144223689', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 10000, 1, '2021-06-07 19:48:17', '2021-06-25 04:46:04', ''),
(2, 'LT-2170520511', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-07 21:17:39', '2021-06-25 04:46:15', ''),
(3, 'LT-31316950666', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 1, '2021-06-07 21:18:32', '2021-06-25 04:46:29', ''),
(4, 'LT-41008190030', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-07 21:29:06', '2021-06-25 04:46:39', ''),
(5, 'LT-51527704124', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 25000, 1, '2021-06-07 21:51:36', '2021-06-25 04:46:47', ''),
(6, 'LT-61734624657', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 10000, 1, '2021-06-07 21:58:13', '2021-06-25 04:46:55', ''),
(7, 'LT-7496809696', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 25000, 1, '2021-06-07 22:12:52', '2021-06-25 04:47:03', ''),
(8, 'LT-81625866985', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 10000, 1, '2021-06-07 22:19:04', '2021-06-28 17:29:57', ''),
(9, 'LT-9775084015', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 5000, 1, '2021-06-07 22:19:09', '2021-06-26 02:03:02', ''),
(10, 'LT-10864301689', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 10000, 1, '2021-06-07 22:48:41', '2021-06-26 02:03:23', ''),
(11, 'LT-11904230679', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-07 23:12:04', '2021-06-28 17:30:41', ''),
(12, 'LT-121822814629', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 35000, 1, '2021-06-07 23:17:49', '2021-06-28 17:31:31', ''),
(13, 'LT-13468429234', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 1, '2021-06-07 23:53:30', '2021-06-28 17:32:08', ''),
(14, 'LT-141602554478', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 1, '2021-06-08 04:42:25', '2021-06-28 17:37:04', ''),
(15, 'LT-15683730619', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 1, '2021-06-08 04:43:10', '2021-06-28 17:37:27', ''),
(16, 'LT-161362869601', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 10000, 0, '2021-06-08 04:43:16', '2021-06-08 04:43:16', ''),
(17, 'LT-171478533227', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 10000, 1, '2021-06-08 04:43:47', '2021-06-29 06:44:05', ''),
(18, 'LT-18762449127', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 10000, 1, '2021-06-08 04:43:57', '2021-06-29 06:44:14', ''),
(19, 'LT-192120635834', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-08 05:11:06', '2021-06-29 06:44:22', ''),
(20, 'LT-201202080818', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 0, '2021-06-08 05:19:38', '2021-06-08 05:19:38', ''),
(21, 'LT-21366916156', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 0, '2021-06-08 05:29:26', '2021-06-08 05:29:26', ''),
(22, 'LT-221171864833', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 0, '2021-06-08 05:43:21', '2021-06-08 05:43:21', ''),
(23, 'LT-232143486549', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-08 05:43:49', '2021-06-29 06:44:43', ''),
(24, 'LT-241176019766', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 0, '2021-06-08 17:39:36', '2021-06-08 17:39:36', ''),
(25, 'LT-252064184969', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 30000, 0, '2021-06-08 17:54:42', '2021-06-08 17:54:42', ''),
(26, 'LT-2660c01707ea6a4', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 30000, 0, '2021-06-08 18:19:03', '2021-06-08 18:19:03', ''),
(27, 'LT-2760c01710dc991', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 1, '2021-06-08 18:19:12', '2021-06-25 04:45:50', ''),
(28, 'LT-2860c0259752e33', 12, 2, NULL, 'ata', 'ata@gmail.com', '085882218939', 10000, 1, '2021-06-08 19:21:11', '2021-06-20 01:56:00', ''),
(29, 'LT-2960c0392ce3df3', 12, 2, NULL, 'ata', 'ata@gmail.com', '085882218939', 10000, 0, '2021-06-08 20:44:44', '2021-06-08 20:44:44', ''),
(30, 'LT-3060c03b8558b42', 12, 2, NULL, 'ata', 'ata@gmail.com', '085882218939', 20000, 0, '2021-06-08 20:54:45', '2021-06-08 20:54:45', ''),
(31, 'LT-3160c03d4f3bf80', 12, 2, NULL, 'ata', 'ata@gmail.com', '085882218939', 15000, 0, '2021-06-08 21:02:23', '2021-06-08 21:02:23', ''),
(32, 'LT-3260c05162886c9', 12, 2, NULL, 'ata', 'ata@gmail.com', '085882218939', 15000, 0, '2021-06-08 22:28:02', '2021-06-08 22:28:02', ''),
(33, 'LT-3360c0725af363f', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 0, '2021-06-09 00:48:42', '2021-06-09 00:48:42', ''),
(34, 'LT-3460c074671836f', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 0, '2021-06-09 00:57:27', '2021-06-09 00:57:27', ''),
(35, 'LT-3560c0773c03859', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 1, '2021-06-09 01:09:32', '2021-06-20 05:25:57', ''),
(36, 'LT-3660c07ec632d02', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 5000, 1, '2021-06-09 01:41:42', '2021-06-20 05:29:32', ''),
(37, 'LT-3760c0be0d0234a', 12, 2, NULL, 'ata', 'ata@gmail.com', '085882218939', 10000, 0, '2021-06-09 06:11:41', '2021-06-09 06:11:41', ''),
(38, 'LT-3860c0bfbf34279', 12, 2, NULL, 'ata', 'ata@gmail.com', '085882218939', 10000, 0, '2021-06-09 06:18:55', '2021-06-09 06:18:55', ''),
(39, 'LT-3960c0bfc96c4d1', 12, 2, NULL, 'ata', 'ata@gmail.com', '085882218939', 10000, 0, '2021-06-09 06:19:05', '2021-06-09 06:19:05', ''),
(40, 'LT-4060c0bfce4f32a', 12, 2, NULL, 'ata', 'ata@gmail.com', '085882218939', 10000, 0, '2021-06-09 06:19:10', '2021-06-09 06:19:10', ''),
(41, 'LT-4160c168290cb21', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 0, '2021-06-09 18:17:29', '2021-06-09 18:17:29', ''),
(42, 'LT-4260c1682e6924f', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 0, '2021-06-09 18:17:34', '2021-06-09 18:17:34', ''),
(43, 'LT-4360c168322bb06', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 0, '2021-06-09 18:17:38', '2021-06-09 18:17:38', ''),
(44, 'LT-4460c168574b8a5', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 0, '2021-06-09 18:18:15', '2021-06-09 18:18:15', ''),
(45, 'LT-4560c16903c0a3c', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 0, '2021-06-09 18:21:07', '2021-06-09 18:21:07', ''),
(46, 'LT-4660c1690891f96', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 0, '2021-06-09 18:21:12', '2021-06-09 18:21:12', ''),
(47, 'LT-4760c1699c5ce8e', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 0, '2021-06-09 18:23:40', '2021-06-09 18:23:40', ''),
(48, 'LT-4860c16b7674f2d', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 0, '2021-06-09 18:31:34', '2021-06-09 18:31:34', ''),
(49, 'LT-4960c16b7a122c4', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 0, '2021-06-09 18:31:38', '2021-06-09 18:31:38', ''),
(50, 'LT-5060c16b7e36656', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 0, '2021-06-09 18:31:42', '2021-06-09 18:31:42', ''),
(51, 'LT-5160c16c4bd7770', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 10000, 0, '2021-06-09 18:35:07', '2021-06-09 18:35:07', ''),
(52, 'LT-5260c16c5ef3607', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 10000, 0, '2021-06-09 18:35:26', '2021-06-09 18:35:26', ''),
(53, 'LT-5360c16ca5ab30f', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 10000, 0, '2021-06-09 18:36:37', '2021-06-09 18:36:37', ''),
(54, 'LT-5460c16d19bf30e', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 0, '2021-06-09 18:38:33', '2021-06-09 18:38:33', ''),
(55, 'LT-5560c16d1fe8fbd', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 0, '2021-06-09 18:38:39', '2021-06-09 18:38:39', ''),
(56, 'LT-5660c16d29965a5', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 0, '2021-06-09 18:38:49', '2021-06-09 18:38:49', ''),
(57, 'LT-5760c16d3e4dee2', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 0, '2021-06-09 18:39:10', '2021-06-09 18:39:10', ''),
(58, 'LT-5860c16d5398938', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-09 18:39:31', '2021-06-30 09:20:39', ''),
(59, 'LT-5960c16ed953094', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 0, '2021-06-09 18:46:01', '2021-06-09 18:46:01', NULL),
(60, 'LT-6060c16f994c296', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-09 18:49:13', '2021-06-30 09:26:19', NULL),
(61, 'LT-6160c16f9bda4ae', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-09 18:49:15', '2021-06-30 09:21:13', NULL),
(62, 'LT-6260c16fe094021', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-09 18:50:24', '2021-06-30 09:00:12', NULL),
(63, 'LT-6360c16fe362d84', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-09 18:50:27', '2021-06-30 09:20:51', NULL),
(64, 'LT-6460c170223de93', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-09 18:51:30', '2021-06-30 08:51:32', NULL),
(65, 'LT-6560c170247da8b', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-09 18:51:32', '2021-06-19 20:13:29', NULL),
(66, 'LT-6660c1709af09af', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-09 18:53:30', '2021-06-19 20:13:12', NULL),
(67, 'LT-6760c1710faac2e', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-09 18:55:27', '2021-06-16 04:53:24', 'bOTQb2wQXh81tjJ6BzkGcuK9Y6yEeE7vA7vTZDQb'),
(68, 'LT-6860c17e5d221e7', 12, 2, NULL, 'ata', 'ata@gmail.com', '085882218939', 20000, NULL, '2021-06-09 19:52:13', '2021-06-09 19:52:13', 'zYg5NaD6t2F5QsbO1tEbRHTXYm8W4mq3ol8YnfLA'),
(69, 'LT-6960c18422a497b', 12, 2, NULL, 'ata', 'ata@gmail.com', '085882218939', 15000, NULL, '2021-06-09 20:16:50', '2021-06-09 20:16:50', 'K5kPrxuyI5t0f2vA9bbvNuoK2fSa06KJ8CuDjAFb'),
(70, 'LT-7060c1a4a868f22', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 15000, 1, '2021-06-09 22:35:36', '2021-06-24 03:02:28', 'USwQPuDzbegMmKbEGwD8qcJocdBjIn6XfXNfilh4'),
(73, 'LT-7360c1dfe6c449e', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 10000, 1, '2021-06-10 02:48:22', '2021-06-24 03:02:36', 'JPJlnrjOXPolOOwonAkZId5lxOhUmLl3oeeqyylk'),
(74, 'LT-7460c1f630ea451', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 10000, 1, '2021-06-10 04:23:28', '2021-06-16 00:40:52', 'nM3WAbXRB4J7wD7CZIkXyYFYE4HuiL5YRF7qTbVV'),
(75, 'LT-7560c200b753bf1', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 15000, 1, '2021-06-10 05:08:23', '2021-06-16 00:37:12', '0thUDZnZ7FnWlRwfboxCpl5bJwIWhHkmuxrjNarH'),
(76, 'LT-7660c2bab9a77be', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 20000, 1, '2021-06-10 18:22:01', '2021-06-16 00:36:57', 'ufLhgAq9rPzoGz4sFNSsUdmLJVAEHaQh3BngJZ0d'),
(77, 'LT-7760c2bd529e0fd', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 1, '2021-06-10 18:33:06', '2021-06-10 18:33:26', 'AAHz3VYjm0jSmvTyC4RSWW1ZlZXtnQR9QdGUWf4D'),
(78, 'LT-7860c2c437224e6', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 25000, 1, '2021-06-10 19:02:31', '2021-06-10 19:25:23', 'BzKyhvd1Aqmx23AtyGFmB23v8EAFlj0giaJ8gtSl'),
(79, 'LT-7960c2cba32c171', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 1, '2021-06-10 19:34:11', '2021-06-10 19:34:52', 'yFTa9V8qVhJG5Sk7Fqcj9riStYPmnYFFsiul0Fpn'),
(80, 'LT-8060c2cc126f400', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 10000, 1, '2021-06-10 19:36:02', '2021-06-10 19:36:25', 'I9Q3jLu6tx8qIQYHtkEZz9P4OxO6ap4zWFKvdzxU'),
(81, 'LT-8160c2deef9ae4e', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 5000, 1, '2021-06-10 20:56:31', '2021-06-10 20:56:57', 'AsqmvFuFOWnlqNhcPPzHtvLX5JAAK5duC027I2uF'),
(82, 'LT-8260c2e0feade07', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 1, '2021-06-10 21:05:18', '2021-06-10 21:05:40', '6VyetsFPQd6y6kMLSexyYldqfV21CGeTLuUHYsh2'),
(83, 'LT-8360c2e6d12a30c', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 20000, 1, '2021-06-10 21:30:09', '2021-06-10 21:30:55', 'tWMOWRVRljFqhbT2GhZhAufIXrPcw2HVEQfatpIx'),
(84, 'LT-8460c5ce17d79c6', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 15000, 1, '2021-06-13 02:21:27', '2021-06-16 00:34:50', 'hfQ9GwuEsUSFOkL4zUsgQLrYRL9oqF8KGpY1jnIA'),
(85, 'LT-8560c5cf029cfba', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 10000, 1, '2021-06-13 02:25:22', '2021-06-16 04:46:31', 'v1T8UfDgJAQOgrIx0oZqtxppNYt7BtCbGcPO8mBp'),
(86, 'LT-8660c5cfb953567', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 10000, 1, '2021-06-13 02:28:25', '2021-06-16 00:34:17', 'syfoIIa6MCBPMZxp3CkjDFRP3CC3NsMpSEW9WnC9'),
(87, 'LT-8760c5d0a3ca066', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 20000, 1, '2021-06-13 02:32:19', '2021-06-16 00:33:17', 'ykdPtec8ICXzJdPT15y0hNGClVJfTfwA7U4PBJBZ'),
(88, 'LT-8860c5d0e902885', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 15000, 1, '2021-06-13 02:33:29', '2021-06-15 23:06:35', '6jFCHhic86TSgv52auYQ9x4mo024MGw6rh8Iu0b8'),
(89, 'LT-8960c5fbc125f57', 12, 2, NULL, 'ata', 'ata@gmail.com', '085882218939', 10000, 1, '2021-06-13 05:36:17', '2021-06-13 05:44:04', 'XQ0s0HPesmpCmibdVZMSXog149M2S63zg680HKHf'),
(90, 'LT-9060c7029db4d50', 12, 2, NULL, 'ata', 'ata@gmail.com', '085882218939', 15000, 1, '2021-06-14 00:17:49', '2021-06-14 00:22:51', '4Cr6DUDnBOFpYvptsaxL9gLazPuX0OUDr8wkyDaN'),
(91, 'LT-9160c703e204457', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 20000, 1, '2021-06-14 00:23:14', '2021-06-15 23:18:56', 'HRHbUay420fQ9FeulQsmUvqKmaJCJdkhCLalVBfQ'),
(92, 'LT-9260c801b9aa600', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 20000, 1, '2021-06-14 18:26:17', '2021-06-14 18:26:37', 'a3ZZpwrpk3LPIFfc3Yyw7jupRjIWDgT0F9gAY2uW'),
(93, 'LT-9360c801ea11007', 12, 2, NULL, 'ata', 'ata@gmail.com', '085882218939', 15000, 0, '2021-06-14 18:27:06', '2021-06-14 18:27:06', 'AiZeJQ6kf0xFgBVscW4tmSwf6XbHJMJDDEvHTJhD'),
(94, 'LT-9460c80b7277564', 10, 2, NULL, 'vio', 'vio@gmail.com', '123123131', 25000, 1, '2021-06-14 19:07:46', '2021-06-16 04:44:46', 'i57mlZHtcOrzVHpyetvfiBk0Kav95PTHTeE9kUhH'),
(95, 'LT-9560c80d2ac0330', 12, 2, NULL, 'ata', 'ata@gmail.com', '085882218939', 10000, 1, '2021-06-14 19:15:06', '2021-06-14 19:16:03', 'x87JA9MxwAB71sXQDcmI70JokETatcJ67Vm8VieA'),
(96, 'LT-9660c80d7c963c5', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 10000, 1, '2021-06-14 19:16:28', '2021-06-15 23:13:12', 'gMniTs5eZiDlpjUxWg1flJzn9Kw9ighYAKvxP3QP'),
(97, 'LT-9760c96bf6cc3b4', 13, 4, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 10000, 1, '2021-06-15 20:11:50', '2021-06-15 23:18:09', 'VeZfsCSB8I2JAuFDD0Wen9ONSHkMK4hHE2fq4K4m'),
(98, 'LT-9860c98dd556460', 13, 4, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 10000, 1, '2021-06-15 22:36:21', '2021-06-15 22:40:37', 'qAk1X88fJrsxXqtfCPH2vxEaOHqECaHo0oKgc84U'),
(99, 'LT-9960c9b8f80469d', 13, 4, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 10000, 1, '2021-06-16 01:40:24', '2021-06-16 01:40:52', 'KoJAGHiI77TVXqYJ27qZ4f4LiTmileU9D2i5OWDk'),
(100, 'LT-10060ceb0bbaf176', 10, 4, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-19 20:06:35', '2021-06-19 21:28:05', 'nuKsWUdJP1fmCJapkSCtUopMNRoUKQcq6LzNrDpF'),
(101, 'LT-10160cec55872810', 10, 4, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-19 21:34:32', '2021-06-19 21:36:41', 'grBfocsEddW5KBnzOFx7UC2mqnk6qmE4qwE4HmWP'),
(102, 'LT-10260cec68ce0dc5', 13, 4, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 15000, 1, '2021-06-19 21:39:40', '2021-06-19 21:40:44', 'i5ovL449ClvbzhsOtlKw6pLIUPdTvGnCrmZpqMDJ'),
(103, 'LT-10360cf029653453', 13, 4, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 20000, 1, '2021-06-20 01:55:50', '2021-06-20 19:05:05', '3a3Qmqbssg2ddERGuaCmHCHLfg5NLJCg62NYv9zb'),
(104, 'LT-10460cf03a97e188', 13, 4, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 20000, 1, '2021-06-20 02:00:25', '2021-06-22 02:44:56', '8BEjunR4cqAAiyDMmTHQBVxfOzAxwG3CsEacomjH'),
(105, 'LT-10560cf322756bf4', 10, 4, NULL, 'vio', 'vio@gmail.com', '123123131', 15000, 1, '2021-06-20 05:18:47', '2021-06-20 19:01:33', 'V0Gn1iMZtVrNEYlwTr4kUFGAw0ohezzJvPh4dnVA'),
(106, 'LT-10660d045c976540', 13, 4, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 10000, 1, '2021-06-21 00:54:49', '2021-06-22 02:43:41', '9FO238JnXcTCR1UZKEGYPI89UIyPlPEcovJOISpT'),
(107, 'LT-10760d1750c9c65a', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 5000, 1, '2021-06-21 22:28:44', '2021-06-22 02:41:43', NULL),
(108, 'LT-10860d17a009619c', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 30000, 1, '2021-06-21 22:49:52', '2021-06-22 02:40:59', NULL),
(109, 'LT-10960d17a1ba4d98', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 30000, 1, '2021-06-21 22:50:19', '2021-06-22 02:39:46', NULL),
(110, 'LT-11060d17c84a8dbc', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 25000, 1, '2021-06-21 23:00:36', '2021-06-22 02:38:48', NULL),
(111, 'LT-11160d1b20d10faf', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 10000, 1, '2021-06-22 02:49:01', '2021-06-23 17:37:38', NULL),
(112, 'LT-11260d2946c4e986', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 25000, 1, '2021-06-22 18:54:52', '2021-06-23 17:42:47', NULL),
(113, 'LT-11360d3561ebcd3a', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 70000, 1, '2021-06-23 08:41:18', '2021-06-23 17:44:26', NULL),
(114, 'LT-11460d3d5c737a91', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 15000, 1, '2021-06-23 17:45:59', '2021-06-23 17:46:13', NULL),
(115, 'LT-11560d3dcafb1dfe', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 15000, 1, '2021-06-23 18:15:27', '2021-06-23 18:15:43', NULL),
(116, 'LT-11660d3dcf5668bf', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 10000, 1, '2021-06-23 18:16:38', '2021-06-23 18:16:50', NULL),
(117, 'LT-11760d3dddcdf609', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-23 18:20:28', '2021-06-23 18:20:46', NULL),
(118, 'LT-11860d3de4909d88', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 5000, 1, '2021-06-23 18:22:17', '2021-06-23 18:22:39', NULL),
(119, 'LT-11960d3dec4a95fd', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 5000, 1, '2021-06-23 18:24:20', '2021-06-23 18:24:32', NULL),
(120, 'LT-12060d3e2f907a46', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 5000, 1, '2021-06-23 18:42:17', '2021-06-23 18:43:02', NULL),
(121, 'LT-12160d3ef41251cf', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 55000, 1, '2021-06-23 19:34:41', '2021-06-30 08:17:26', NULL),
(122, 'LT-12260d3ef738bb0a', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 35000, 1, '2021-06-23 19:35:31', '2021-06-30 08:17:18', NULL),
(123, 'LT-12360d4463e13e97', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 70000, 1, '2021-06-24 01:45:50', '2021-06-30 08:17:33', NULL),
(124, 'LT-12460d52ebac3e79', 13, 4, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 50000, 1, '2021-06-24 18:17:46', '2021-06-30 08:17:39', NULL),
(126, 'LT-12660d5370ec4944', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 15000, 1, '2021-06-24 18:53:18', '2021-06-30 08:17:00', NULL),
(127, 'LT-12760d537460ddd7', 13, 2, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 30000, 1, '2021-06-24 18:54:14', '2021-06-26 07:09:36', NULL),
(128, 'LT-12860d53bfc292e4', 13, 4, 'settlement', 'vivi', 'vivi@gmail.com', '085882218939', 10000, 1, '2021-06-24 19:14:20', '2021-07-04 00:17:50', NULL),
(129, 'LT-12960d546823ee0a', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 35000, 1, '2021-06-24 19:59:14', '2021-06-24 20:03:24', NULL),
(131, 'LT-13160d740276ba06', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 40004, 1, '2021-06-26 07:56:39', '2021-06-26 08:06:49', NULL),
(133, 'LT-13260d74333aa228', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 10000, 1, '2021-06-26 08:09:39', '2021-06-26 08:10:50', NULL),
(134, 'LT-13460d750d85e9d9', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 15000, 1, '2021-06-26 09:07:53', '2021-06-30 08:04:51', NULL),
(135, 'LT-13560d7de66dc3c0', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-26 19:11:50', '2021-06-26 19:25:07', NULL),
(136, 'LT-13660d8883679475', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-06-27 14:16:22', '2021-06-27 07:16:49', NULL),
(137, 'LT-13760d88e718482d', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 45000, 1, '2021-06-27 14:42:57', '2021-06-27 07:44:27', NULL),
(138, 'LT-13860d925bea88d7', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 40000, 1, '2021-06-28 01:28:30', '2021-06-30 08:59:41', NULL),
(139, 'LT-13960d96745b44ef', 13, NULL, 'settlement', 'vivi', 'vivi@gmail.com', '085882218939', 22000, 1, '2021-06-28 06:08:06', '2021-07-03 23:32:54', NULL),
(140, 'LT-14060d97b4982adc', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 15000, 1, '2021-06-28 07:33:29', '2021-06-30 08:01:17', NULL),
(141, 'LT-14160d9c1e143df7', 13, NULL, 'expire', 'vivi', 'vivi@gmail.com', '085882218939', 16000, 1, '2021-06-28 12:34:41', '2021-07-03 23:32:49', NULL),
(142, 'LT-14260d9d484e41bc', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 22000, 1, '2021-06-28 13:54:13', '2021-06-30 08:46:38', NULL),
(144, 'LT-14460d9d901ad9ba', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 40000, 1, '2021-06-28 07:13:21', '2021-06-28 07:32:17', NULL),
(158, 'LT-15860db22d965e3b', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 600000, 0, '2021-06-29 06:40:41', '2021-06-29 06:40:41', NULL),
(159, 'LT-15960db2339e4191', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 600000, 1, '2021-06-29 06:42:18', '2021-06-30 00:16:25', NULL),
(160, 'LT-16060dbe5b366ca0', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 10000, 1, '2021-06-30 03:32:03', '2021-06-30 06:03:18', NULL),
(161, 'LT-16160dc1e2570284', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 160000, 1, '2021-06-30 00:32:53', '2021-06-30 00:35:00', NULL),
(162, 'LT-16260dc6fc10b7eb', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 40000, 1, '2021-06-30 06:21:05', '2021-06-30 06:21:58', NULL),
(163, 'LT-16360dc8c00a26ed', 13, NULL, 'expire', 'vivi', 'vivi@gmail.com', '085882218939', 20000, 1, '2021-06-30 15:21:37', '2021-07-03 23:29:04', NULL),
(164, 'LT-16460dc8dde1fd01', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 5000, 1, '2021-06-30 15:29:34', '2021-06-30 08:35:44', NULL),
(165, 'LT-16560dc917da3dfa', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 25000, 1, '2021-06-30 15:45:03', '2021-06-30 08:45:35', NULL),
(166, 'LT-16660dd52bba45be', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 60000, 1, '2021-07-01 05:29:31', '2021-07-02 02:56:53', NULL),
(167, 'LT-16760dd52dbaedb7', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 60000, 1, '2021-07-01 05:30:03', '2021-07-02 02:22:24', NULL),
(168, 'LT-16860dd52edf0aaa', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 60000, 1, '2021-07-01 05:30:21', '2021-07-02 02:20:40', NULL),
(169, 'LT-16960dd530470ee1', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 60000, 1, '2021-07-01 05:30:44', '2021-07-02 02:17:17', NULL),
(170, 'LT-17060dd53419f5c3', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 60000, 1, '2021-07-01 05:31:45', '2021-07-01 00:20:55', NULL),
(171, 'LT-17160dead41205cb', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 50000, 1, '2021-07-02 06:08:02', '2021-07-01 23:10:59', NULL),
(172, 'LT-17260deaff535d57', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 22000, 1, '2021-07-02 06:19:33', '2021-07-02 02:01:03', NULL),
(173, 'LT-17360dec7eec6542', 13, NULL, 'settlement', 'vivi', 'vivi@gmail.com', '085882218939', 40000, 1, '2021-07-02 08:01:50', '2021-07-03 23:07:35', NULL),
(174, 'LT-17460ded4dd691eb', 10, NULL, 'settlement', 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-07-02 08:57:01', '2021-07-05 19:25:41', NULL),
(175, 'LT-17560dee3dcd3126', 10, NULL, 'cancel', 'vio', 'vio@gmail.com', '123123131', 60000, 1, '2021-07-02 10:01:00', '2021-07-06 01:22:33', NULL),
(176, 'LT-17660def4d52c912', 13, NULL, 'cancel', 'vivi', 'vivi@gmail.com', '085882218939', 15000, 1, '2021-07-02 11:13:25', '2021-07-03 23:05:18', NULL),
(177, 'LT-17760def730a9339', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 20000, 0, '2021-07-02 11:23:29', '2021-07-02 11:23:29', NULL),
(180, 'LT-17860e14e81d8f3c', 13, NULL, 'expire', 'vivi', 'vivi@gmail.com', '085882218939', 10000, 1, '2021-07-04 06:00:34', '2021-07-06 05:03:18', NULL),
(181, 'LT-18160e169519e9da', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218939', 40000, 1, '2021-07-04 07:54:57', '2021-07-06 05:03:37', NULL),
(182, 'LT-18260e1becf83ac8', 13, NULL, 'expire', 'vivi', 'vivi@gmail.com', '085882218900', 40000, 1, '2021-07-04 13:59:43', '2021-07-07 05:24:32', NULL),
(183, 'LT-18360e4182c7b203', 16, NULL, 'settlement', 'alif', 'alif@gmail.com', '085882218939', 80000, 1, '2021-07-06 01:45:32', '2021-07-12 17:32:15', NULL),
(184, 'LT-18460e41b05d86f7', 16, NULL, 'settlement', 'alif', 'alif@gmail.com', '085882218939', 50000, 1, '2021-07-06 01:57:42', '2021-07-12 17:32:09', NULL),
(185, 'LT-18560e59c6c07808', 13, NULL, 'pending', 'vivi', 'vivi@gmail.com', '085882218900', 15000, 1, '2021-07-07 12:22:04', '2021-07-07 05:22:34', NULL),
(188, 'LT-18860eb1bb6916fa', 10, 6, 'settlement', 'vio', 'vio@gmail.com', '123123131', 90000, 1, '2021-07-11 16:26:30', '2021-07-11 09:30:10', NULL),
(197, 'LT-19760f62647aebf3', 13, NULL, 'cancel', 'vivi', 'vivi@gmail.com', '085882218900', 20000, 1, '2021-07-20 01:26:31', '2021-07-24 06:51:10', NULL),
(198, 'LT-19860f627c656668', 13, NULL, 'settlement', 'vivi', 'vivi@gmail.com', '085882218900', 15000, 1, '2021-07-20 01:32:54', '2021-07-24 06:50:24', NULL),
(199, 'LT-19960f97b8bc1c49', 16, 6, 'settlement', 'alif', 'alif@gmail.com', '085882218939', 30000, 1, '2021-07-22 14:07:07', '2021-07-22 07:08:57', NULL),
(200, 'LT-20060f97c810504c', 16, NULL, 'settlement', 'alif', 'alif@gmail.com', '085882218939', 32000, 1, '2021-07-22 14:11:13', '2021-07-22 07:12:07', NULL),
(202, 'LT-20160fa627966075', 16, NULL, 'settlement', 'alif', 'alif@gmail.com', '085882218939', 16000, 1, '2021-07-23 06:32:25', '2021-07-22 23:33:35', NULL),
(207, 'LT-20760faa948de7e4', 13, 6, 'settlement', 'vivi', 'vivi@gmail.com', '085882218900', 30000, 1, '2021-07-23 11:34:32', '2021-07-23 04:35:19', NULL),
(208, 'LT-20860faac70cbc78', 10, 6, 'settlement', 'vio', 'vio@gmail.com', '123123131', 80000, 1, '2021-07-23 11:48:00', '2021-07-23 04:48:32', NULL),
(209, 'LT-20960fcb78b974e5', 10, NULL, NULL, 'vio', 'vio@gmail.com', '123123131', 100000, 0, '2021-07-24 17:59:55', '2021-07-24 17:59:55', NULL),
(210, 'LT-21060fe79507c2ed', 13, NULL, 'settlement', 'vivi', 'vivi@gmail.com', '085882218900', 100000, 1, '2021-07-26 08:58:57', '2021-07-26 06:50:23', NULL),
(211, 'LT-2116100183f4b355', 13, NULL, 'settlement', 'vivi', 'vivi@gmail.com', '085882218900', 60000, 1, '2021-07-27 14:29:20', '2021-07-27 07:56:57', NULL),
(212, 'LT-21261010aa8d4985', 13, NULL, 'settlement', 'vivi', 'vivi@gmail.com', '085882218900', 10000, 1, '2021-07-28 07:43:36', '2021-07-28 00:45:29', NULL),
(213, 'LT-21361010b3d1fb24', 16, NULL, 'settlement', 'alif', 'alif@gmail.com', '085882218939', 10000, 1, '2021-07-28 07:46:05', '2021-07-28 00:46:53', NULL),
(217, 'LT-2176102b5141aa61', 10, NULL, 'settlement', 'vio', 'vio@gmail.com', '123123131', 20000, 1, '2021-07-29 14:03:00', '2021-07-29 07:10:16', NULL),
(219, 'LT-2196102bdf2cfa9c', 10, NULL, 'expire', 'vio', 'vio@gmail.com', '123123131', 120000, 1, '2021-07-29 14:40:52', '2021-07-29 07:46:29', NULL),
(220, 'LT-2206102c3e507dd6', 10, NULL, 'settlement', 'vio', 'vio@gmail.com', '123123131', 200000, 1, '2021-07-29 15:06:13', '2021-07-29 08:06:52', NULL),
(221, 'LT-2216103a4c4537e6', 13, NULL, 'settlement', 'vivi', 'vivi@gmail.com', '085882218900', 50000, 1, '2021-07-30 07:05:40', '2021-07-30 00:27:17', NULL),
(226, 'LT-2266104ccd586614', 10, NULL, 'settlement', 'vio', 'vio@gmail.com', '123123131', 80000, 1, '2021-07-31 04:08:53', '2021-07-30 21:12:32', NULL),
(228, 'LT-22861061b38cd7fe', 16, NULL, 'settlement', 'alif', 'alif@gmail.com', '085882218939', 16000, 1, '2021-08-01 03:55:36', '2021-07-31 20:56:37', NULL),
(229, 'LT-22961075c1040f99', 13, NULL, 'settlement', 'vivi', 'vivi@gmail.com', '085882218900', 16000, 1, '2021-08-02 02:44:32', '2021-08-01 19:45:22', NULL),
(230, 'LT-23061077cdf298c9', 13, NULL, 'settlement', 'vivi', 'vivi@gmail.com', '085882218900', 60000, 1, '2021-08-02 05:04:31', '2021-08-01 22:05:16', NULL),
(231, 'LT-23161079f171e34f', 21, NULL, 'settlement', 'fafa', 'fafa@gmail.com', '0858888222', 60000, 1, '2021-08-02 07:30:31', '2021-08-02 00:32:30', NULL),
(232, 'LT-232610ab1f518e38', 13, NULL, 'settlement', 'vivi', 'vivi@gmail.com', '085882218900', 40000, 1, '2021-08-04 15:27:49', '2021-08-04 08:30:19', NULL),
(233, 'LT-233610abab4695fb', 13, NULL, 'settlement', 'vivi', 'vivi@gmail.com', '085882218900', 120000, 1, '2021-08-04 16:05:09', '2021-08-04 09:05:44', NULL),
(234, 'LT-234610abb6243dd8', 16, NULL, 'settlement', 'alif', 'alif@gmail.com', '085882218939', 60000, 1, '2021-08-04 16:08:02', '2021-08-04 09:21:59', NULL),
(235, 'LT-235610b519a4874c', 16, NULL, 'settlement', 'alif', 'alif@gmail.com', '085882218939', 120000, 1, '2021-08-05 02:48:58', '2021-08-04 19:50:16', NULL),
(236, 'LT-23661149a3a4c5af', 13, NULL, 'settlement', 'vivi', 'vivi@gmail.com', '085882218900', 10000, 1, '2021-08-12 03:49:16', '2021-08-11 20:53:51', NULL),
(237, 'LT-2376114a0700796b', 13, NULL, 'settlement', 'vivi', 'vivi@gmail.com', '085882218900', 220000, 1, '2021-08-12 04:15:45', '2021-08-11 21:18:17', NULL),
(238, 'LT-2386114a23de5fdf', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218900', 80000, 0, '2021-08-12 04:23:26', '2021-08-12 04:23:26', NULL),
(239, 'LT-2396114a2cc9eade', 13, NULL, 'settlement', 'vivi', 'vivi@gmail.com', '085882218900', 24000, 1, '2021-08-12 04:25:48', '2021-08-11 21:26:48', NULL),
(240, 'LT-2406117b90cd3a06', 16, NULL, NULL, 'alif', 'alif@gmail.com', '085882218939', 40000, 0, '2021-08-14 12:37:33', '2021-08-14 12:37:33', NULL),
(241, 'LT-2416119b3ae3a511', 16, NULL, 'settlement', 'alif', 'alif@gmail.com', '085882218939', 10000, 1, '2021-08-16 00:39:10', '2021-08-15 18:59:06', NULL),
(242, 'LT-2426119c8d73985d', 16, NULL, 'settlement', 'alif', 'alif@gmail.com', '085882218939', 100000, 1, '2021-08-16 02:09:27', '2021-08-15 19:18:06', NULL),
(243, 'LT-2436119cbbb69f87', 16, NULL, 'settlement', 'alif', 'alif@gmail.com', '085882218939', 15000, 1, '2021-08-16 02:21:47', '2021-08-15 19:22:27', NULL),
(244, 'LT-24461849b5129de3', 31, NULL, NULL, 'Rini', 'rini@gmail.com', '123123131', 5000, 1, '2021-11-05 02:47:45', '2021-11-04 19:48:57', NULL),
(245, 'LT-24561849d4ccef1e', 31, NULL, 'cancel', 'Rini', 'rini@gmail.com', '123123131', 8000, 1, '2021-11-05 02:56:12', '2022-01-06 06:21:21', NULL),
(247, 'LT-24661d6479f9e685', 35, NULL, 'cancel', 'Ridwan Nur Hidayat', 'nurridwan498@gmail.com', '081325095629', 5000, 1, '2022-01-06 01:36:31', '2022-02-10 02:27:27', NULL),
(248, 'LT-2486204dac55e8e7', 35, NULL, NULL, 'Ridwan Nur Hidayat', 'nurridwan498@gmail.com', '081325095629', 10000, 1, '2022-02-10 09:28:37', '2022-02-10 02:28:47', NULL),
(249, 'LT-2496204db230f680', 35, NULL, 'cancel', 'Ridwan Nur Hidayat', 'nurridwan498@gmail.com', '081325095629', 5000, 1, '2022-02-10 09:30:11', '2022-02-10 19:42:35', NULL),
(252, 'LT-2506205f149af50d', 37, NULL, 'cancel', 'Salsabila Fithriyah', 'salsabilafitriyah76@gmail.com', '085714717907', 8000, 1, '2022-02-11 05:16:57', '2022-02-10 22:18:19', NULL),
(254, 'LT-254621d7c9293943', 35, NULL, NULL, 'Ridwan Nur Hidayat', 'nurridwan498@gmail.com', '081325095629', 15000, 1, '2022-03-01 01:53:22', '2022-03-06 22:47:48', NULL),
(255, 'LT-255621e1e5fc46b0', 37, NULL, 'expire', 'Salsabila Fithriyah', 'salsabilafitriyah76@gmail.com', '085714717907', 16000, 1, '2022-03-01 13:23:43', '2022-03-16 00:05:14', NULL),
(256, 'LT-25662259cb832f20', 35, NULL, NULL, 'Ridwan Nur Hidayat', 'nurridwan498@gmail.com', '081325095629', 15000, 0, '2022-03-07 05:48:40', '2022-03-07 05:48:40', NULL),
(257, 'LT-257622734291b04f', 13, NULL, 'cancel', 'vivi', 'vivi@gmail.com', '085882218900', 45000, 1, '2022-03-08 10:47:05', '2022-03-17 20:26:42', NULL),
(258, 'LT-2586231688f0381f', 13, NULL, NULL, 'vivi', 'vivi@gmail.com', '085882218900', 16000, 0, '2022-03-16 04:33:19', '2022-03-16 04:33:19', NULL),
(261, 'LT-25962317a093c688', 40, NULL, NULL, 'panda', 'panda@gmail.com', '082999123123', 40000, 0, '2022-03-16 05:47:53', '2022-03-16 05:47:53', NULL),
(262, 'LT-26262318c017787f', 37, NULL, NULL, 'Salsabila Fithriyah', 'salsabilafitriyah76@gmail.com', '085714717907', 16000, 1, '2022-03-16 07:04:33', '2022-03-16 00:06:26', NULL),
(263, 'LT-2636232d5101d92f', 42, NULL, 'cancel', 'aa', 'grahatest2@gmail.com', '12', 60000, 1, '2022-03-17 06:28:32', '2022-03-16 23:29:58', NULL),
(264, 'LT-2646233f8695ce74', 13, NULL, 'pending', 'vivi', 'vivi@gmail.com', '085882218900', 10000, 1, '2022-03-18 03:11:38', '2022-03-17 20:30:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_wahana`
--

CREATE TABLE `tb_wahana` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tempat_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `kode_wahana` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deskripsi_harga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_wahana`
--

INSERT INTO `tb_wahana` (`id`, `tempat_id`, `name`, `image`, `deskripsi`, `harga`, `status`, `kode_wahana`, `created_at`, `updated_at`, `deskripsi_harga`) VALUES
(1, 4, 'Tubin', '7Lc8xmt78n8teJXlDUgvlOrJDVSBt4BBtDhSt2Xh.jpg', 'Wisata air yang seru dan asyik', '20000', 1, 'W001', '2021-06-15 17:51:19', '2021-08-10 03:44:35', 'Satu kali putaran'),
(2, 4, 'Kebun Bunga', 'FrzCYYdxzz7uAGbsAEJ4B73jHInDNeQUorL6zp1E.jpg', 'Kebun bunga yang instagramable', '0', 1, 'W002', '2021-06-15 17:58:01', '2021-08-01 09:05:15', NULL),
(8, 4, 'Kapal kecil', 'xCvVwxk9Ph4VJccwqsg6W1J7BH03UjTER0pALZJs.jpg', 'Kapal untuk mengelilingi danau', '15000', 1, 'W003', '2021-06-15 18:06:35', '2021-11-01 16:50:55', 'satu kali naik'),
(10, 4, 'Flying Fox', 'ilv23eZJC7s0Zfvc45lxnVM25mToeEcqeTrjOS1o.jpg', 'Wahana menegangkan yang membuat kita dag dig dug tapi tetap aman karena sudah berstandar sni', '15000', 0, 'W004', '2021-06-22 01:20:20', '2021-06-28 20:07:48', 'Satu kali Naik'),
(11, 4, 'Area Bermain Anak', 'KztQLuCMKmZDPm4Z8IddzQGbMf4Nyb1IenEs0LTG.jpg', 'Cocok untuk anak anak outbound', '0', 0, 'W005', '2021-06-22 01:48:55', '2021-06-30 01:20:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint(20) NOT NULL DEFAULT 5,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `petugas_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desa_id` int(2) DEFAULT NULL,
  `tempat_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `jk`, `alamat`, `telp`, `image`, `role_id`, `status`, `remember_token`, `created_at`, `updated_at`, `petugas_id`, `desa_id`, `tempat_id`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$ipI1u6M5lCLDry/i9NHzquPncp8mwmrFhAO363kI.Khpja/SI1yn.', NULL, NULL, '085882218939', '5N40ypp2v5DOAVCX5FTBBFBCWcOGVupMgZz9O4hj.jpg', 1, '1', NULL, '2021-05-28 02:04:11', '2021-08-02 00:03:04', 'D001', NULL, NULL),
(2, 'restauranta', 'restauranta@gmail.com', NULL, '$2y$10$BltTg3Idp0KKqcm7HRLdO.UGRRiiCd1sEw/rdRMP3l9Ua5TBpC/6u', NULL, NULL, '085882218939', 'YxT9JwktYM7BjiR47j1qXWrXvlKWaaXaH3tqYLW9.jpg', 3, '1', NULL, '2021-05-28 02:04:11', '2021-08-24 05:55:43', 'D002', NULL, NULL),
(3, 'Admin Wisata AA', 'wisataa@gmail.com', NULL, '$2y$10$bjDrNDZuKbznZr3gshHF.OMAsCwFj1aXCZ6FGgPd8lsI6nMx.wALC', 'pria', 'Pokoh', '085882218939', 'PTvKEmp5pDSQkZeTRTNteIlZCGSsVdE4hA3Qdmsv.jpg', 2, '1', NULL, '2021-05-28 02:04:12', '2021-08-26 00:23:48', 'D003', 10, 4),
(4, 'Admin Penginapan A', 'hotela@gmail.com', NULL, '$2y$10$mPv6im8nkJpOv8kuZwVQCuyvSZDXqIvmak.gE9Jj5LQ4DyNeZ5JX2', 'pria', 'Pokoh', '085882218939', 'U2yLfQH8sxTI11QQVjJ8TxtbixtxZr3f8TT3fvpg.jpg', 4, '1', NULL, '2021-05-28 02:04:12', '2021-08-26 00:01:11', 'D004', 10, 6),
(5, 'customer', 'customer@gmail.com', NULL, '$2y$10$DSQFnNfdSkkTv4t8ilwimuSf5ecE3g7UJnMdg55U/O2FyVf.FB30m', NULL, NULL, '123131313131', NULL, 5, '1', NULL, '2021-05-28 02:04:12', '2021-08-24 05:55:03', 'D005', NULL, NULL),
(7, 'Alifudinniko', 'alifudinniko@gmail.com', NULL, '$2y$10$P.SA5zb4Kc0nf6bwPormfepzrn1Qg9f5CyNz6YteYFTDfHIzocYqm', NULL, NULL, '08888888888', NULL, 5, '1', NULL, '2021-05-29 19:42:19', '2021-08-26 00:26:07', NULL, NULL, 4),
(8, 'atala', 'atala@gmail.com', NULL, '$2y$10$S5YSPPPmerPh20buVHXIJO1e51SKQDCqDNB7VjL78Eenvkti0GJN.', NULL, NULL, '085882218939', NULL, 5, '1', NULL, '2021-06-01 01:13:53', '2021-08-26 00:26:07', NULL, NULL, 4),
(9, 'Admin Wisata C', 'wisatac@gmail.com', NULL, '$2y$10$X8eFk929M9UugbyShVGwjuofiwuRv4d78FVZqnMFMEpOvC6Y9n8GO', 'pria', 'pokoh', '1231231231313', 'Z8xj6g1xLaulpXgenRDEe0n1OHzeHUEjVBy33YuM.jpg', 3, '0', NULL, '2021-06-02 19:52:11', '2021-08-01 06:34:55', 'D006', NULL, NULL),
(10, 'vio', 'vio@gmail.com', NULL, '$2y$10$CtdTIFlakhwW2a0cHoxyzOo1MBpigFvFTKMw24ckpK4n5MM91b9.a', 'pria', 'Pokoh', '123123131', 'Lz1yUZoQVsJvqeQwz0YD8ofewlo6wY2agDIP2Wd9.jpg', 5, '1', NULL, '2021-06-02 21:34:47', '2022-03-07 01:36:12', NULL, NULL, 4),
(11, 'ola', 'ola@gmail.com', NULL, '$2y$10$jB7bsNC06fFIxhBVCr5EcOvV9R9n2RI5kNaEbG.jGE.YJ/OvwoTla', NULL, NULL, '09223131313', NULL, 5, '1', NULL, '2021-06-04 00:11:34', '2021-08-26 00:26:07', NULL, NULL, 4),
(12, 'ata', 'ata@gmail.com', NULL, '$2y$10$cga7ryt7gWs8G2WXuyJNvOPK/BH1C/aNEDvse6Pbs8tM5DpdvIGWy', NULL, NULL, '085882218939', NULL, 5, '1', NULL, '2021-06-08 19:19:06', '2021-08-26 00:26:07', NULL, NULL, 4),
(13, 'vivi', 'vivi@gmail.com', NULL, '$2y$10$2F2vo5cZHxx37YTzS0wjie6taoMr1Y2BndVz2O7HsjnLviCSZUbQy', 'wanita', 'asadad', '085882218900', '0dzrUbpYV2n3x9QIEWAIUJhv3EBc3SKCkm0tJ1z7.jpg', 5, '1', NULL, '2021-06-09 22:35:25', '2021-08-26 00:26:07', NULL, NULL, 4),
(15, 'Admin Kuliner A', 'kulinera@gmail.com', NULL, '$2y$10$I6yUAZdN1KqRb77LbUfb3e5iYXzCpC4wOs/Wuu3tKQzwAi1v/AnL6', 'pria', 'Pokoh Ngijo Karanganyar', '085882218938', '3zacX9cqJxkYccU8wpk7stwPOcWqBP4nuihjdsaK.jpg', 3, '1', NULL, '2021-06-16 21:42:34', '2021-08-26 00:01:30', 'D008', 10, 5),
(16, 'alif', 'alif@gmail.com', NULL, '$2y$10$7gaEq/rWnzAXu8ipmWP4yuJMtyiJY2V48tokSpFbtNPPr8boDx7li', NULL, NULL, '085882218939', NULL, 5, '1', NULL, '2021-06-28 20:10:02', '2021-08-26 00:26:07', NULL, NULL, 4),
(17, 'Alif', 'alifudinniko@student.uns.ac.id', NULL, '$2y$10$wdqsWcOzhAirKGR14M4.g.DWR8jNvihQp3BnuSiyEfEQo3bAvIIbe', NULL, NULL, '085882218939', NULL, 5, '1', NULL, '2021-07-06 06:03:13', '2021-08-26 00:26:07', NULL, NULL, 4),
(20, 'Admin Wisata B', 'wisatab@gmail.com', NULL, '$2y$10$GEHMfpuAmXWU6.tmtUaQC.x1dkj6dD2xQcDey1ODi.ovIFyJ0INGW', 'pria', 'Pokoh', '0858882218939', 'MQurQ9Olz6nmkSqqgBl5yvlfBzUt24WPwbMrqec2.jpg', 2, '1', NULL, '2021-08-01 06:27:28', '2021-08-01 06:34:42', 'D009', NULL, NULL),
(21, 'fafa', 'fafa@gmail.com', NULL, '$2y$10$B2IApe/V8GUhzUHWYPV8tu7PDs9.t1JkiD1pMXnJPEawGd7v00uP.', NULL, NULL, '0858888222', NULL, 5, '1', NULL, '2021-08-02 00:24:49', '2021-08-26 00:26:07', NULL, NULL, 4),
(22, 'Kulinerb', 'kulinerb@gmail.com', NULL, '$2y$10$eqNKWrZDV3F8ccaG06yL2OWxtjL6HaVCJl.a0nRZV/TpFl6ECG35a', 'pria', 'Pokoh', '085882218939', 'T531IsxtS8JRkNgS06XFHgNGB50beAo0Ht9eLH8O.jpg', 3, '1', NULL, '2021-08-03 01:16:31', '2021-08-03 01:16:31', 'D010', NULL, NULL),
(25, 'AU Watu Gambir', 'desaa@gmail.com', NULL, '$2y$10$4GBD0H4Ipyxe7Vh0dhuCNuWS5cuzx8uK5zzVN/1xT7fUmuyPqp2tC', 'pria', 'Desa Watu Gambir', '085882281213', 'sV57jSGcnJXHgY24jdVPcesDlxBrHJVBGJhYIm0D.jpg', 6, '1', NULL, '2021-08-24 22:53:44', '2021-08-25 00:24:16', 'D011', NULL, NULL),
(26, 'sasa', 'sasa@gmail.com', NULL, '$2y$10$/4zpdyA/dVFZ5Lw/RIsCY./2wWa7LwAXcL23DLXYg0PPEBrgECf6G', 'pria', 'asdadadada', '1321321313', '2m7YxG9K3Q5dmYWznmZ7kejWUnJDIZHqZzDa5Whv.jpg', 3, '1', NULL, '2021-08-25 23:30:10', '2021-08-26 00:22:38', 'D012', 10, NULL),
(27, 'AU pokoh', 'pokoh@gmail.com', NULL, '$2y$10$6TLpB9hdgcWhNlGXimP96utPuBz2vNQl/HDBqj6ON8up1IVCYgzVO', 'pria', 'Ngijo Pokoh', '123123132', '4NIi4Kxx9MZnmpyW1oS4FTSqF1An3u52Ynyxh0h7.jpg', 6, '1', NULL, '2021-08-26 08:14:43', '2021-08-26 08:14:43', 'D013', NULL, NULL),
(28, 'Niko', 'niko@gmail.com', NULL, '$2y$10$wOEwlRgUBd/1.L56cxJWDuvsjJEEufzvQQbGI3ARoH7ZJAeu.ETIq', 'pria', 'ngijo', '12313131', 'ZUe4oz685MdZJl9pukV1h0o2D8mdGuYEyMZ0xVek.jpg', 6, '1', NULL, '2021-08-26 08:30:29', '2021-08-26 08:30:29', 'D014', NULL, NULL),
(29, 'desab', 'desab@gmail.com', NULL, '$2y$10$aN1fIKY6qiNHD1xfVF/YWutGSGa2T5jfdToQ.91aclntJDBx2xXr6', 'pria', 'desab', '082313131', 'KDCjJbSlgXksV62SU54DemaZCKPs8WGE76YkxJ0r.jpg', 6, '0', NULL, '2021-08-26 20:46:50', '2022-02-13 22:06:28', 'D015', NULL, NULL),
(30, 'adit', 'adit@gmail.com', NULL, '$2y$10$CeJycJa0k206HHZK3xwDtuEawCnvdyOxnjCCL5bH6HN0In/thnwBO', NULL, NULL, '08588221893', NULL, 5, '1', NULL, '2021-11-01 19:11:42', '2021-11-01 19:11:42', NULL, NULL, NULL),
(31, 'Rini', 'rini@gmail.com', NULL, '$2y$10$imBdUPSOCe3EqM4oydFLpeMuuYSYsGIGtnPKTOjRfz2sJEDKgyaQK', NULL, NULL, '123123131', NULL, 5, '1', NULL, '2021-11-04 19:37:45', '2021-11-04 19:37:45', NULL, NULL, NULL),
(32, 'Rizky Joanditya Nur Iman', 'rjoanditya@student.uns.ac.id', NULL, '$2y$10$6u9JvJ/QBOhUPQbA8od6Ku3vnwxRmjUn45vzg35xjGL/7HaDKm54e', 'pria', 'Jalan Kolonel Sugiri No,82 RT 2 RW 6, Kranji, Purwokerto Timur, Banyumas', '081225393386', NULL, 5, '1', NULL, '2021-11-12 08:40:30', '2021-11-12 08:41:19', NULL, NULL, NULL),
(33, 'takeshi', 'takeshi@kovacs.co', NULL, '$2y$10$fDmd0rsIx8NLd3VdETrQBuX6WXFwBSnwY/F8atW6mAzTknpXmevwq', NULL, NULL, '089836987712', NULL, 5, '1', NULL, '2021-11-12 17:21:10', '2021-11-12 17:21:10', NULL, NULL, NULL),
(34, 'Nurul', 'firdaus.fiers@gmail.com', NULL, '$2y$10$YnaSVxBIAkwsplvGlyQ2FeHfNMviXkDRlyKZtOlESP64TPh725H/S', 'wanita', NULL, '081226736944', NULL, 5, '1', NULL, '2021-12-11 21:44:10', '2021-12-11 21:44:38', NULL, NULL, NULL),
(35, 'Ridwan Nur Hidayat', 'nurridwan498@gmail.com', NULL, '$2y$10$OT9kF5gqZGcoHO7D1Zl6se56id3lhMAXm00SKCo4vNNJprNcGW3LG', 'pria', 'Gendhingan,Jebres,Surakarta', '081325095629', NULL, 5, '1', NULL, '2022-01-05 17:40:56', '2022-01-05 17:41:49', NULL, NULL, NULL),
(36, 'Abdul Aziz', 'Aaziz@staff.uns.ac.id', NULL, '$2y$10$3xdpALVG/5VYI0t8xE6Zb.CKKXaqMzKEHQyh0zNImbg9mbIob4Jmy', NULL, NULL, '0816575547889', NULL, 5, '1', NULL, '2022-01-09 00:43:30', '2022-01-09 00:43:30', NULL, NULL, NULL),
(37, 'Salsabila Fithriyah Suryatno', 'salsabilafitriyah76@gmail.com', NULL, '$2y$10$hrzSVEwbDkG/v0vO5OWdNuXeQGNt89thFauQKQY0Vh0ynV6CeDCTe', 'wanita', NULL, '085714717907', NULL, 5, '1', NULL, '2022-02-10 22:15:26', '2022-03-16 00:12:39', NULL, NULL, NULL),
(39, 'Ridwan', 'ridwanhiday49@gmail.com', NULL, '$2y$10$2cQYIYRSDlRSdjB8xXhVseGIe/fui8geuHyN7egiX1AtXEQA2WE/C', 'pria', 'Gendhingan,Jebres,Surakarta', '081325095629', NULL, 5, '1', NULL, '2022-03-07 04:18:54', '2022-03-07 05:56:28', NULL, NULL, NULL),
(40, 'panda', 'panda@gmail.com', NULL, '$2y$10$9S1Uavr4A8At6NSRM/FoOuM.sJWBIskqlG926WweYvsvcBws9TNhu', NULL, NULL, '082999123123', NULL, 5, '1', NULL, '2022-03-15 22:47:08', '2022-03-15 22:47:08', NULL, NULL, NULL),
(41, 'Salsabila Fithriyah', 'hilyah@gmail.com', NULL, '$2y$10$c.ktGoMxI5ddauwdLkbt.uty/xyGQ7ADFudhkGSIj0OTPVzp4HMUe', 'wanita', 'Kos Pranoto, Jebres, Surakarta', '085714717907', 'wuQU92nGmSwFQbiT0NchDhpml75n2TiyNu27XVgj.png', 3, '1', NULL, '2022-03-15 23:51:54', '2022-03-15 23:52:40', 'D016', NULL, NULL),
(42, 'aa', 'grahatest2@gmail.com', NULL, '$2y$10$JvWc.HlB9msP27jKI4Pc6erYo99eOcCytBOJd4xNftWuSxMKZOgsq', NULL, NULL, '12', NULL, 5, '1', NULL, '2022-03-16 23:26:51', '2022-03-16 23:26:51', NULL, NULL, NULL),
(43, 'zizi', 'zizi@gmail.com', NULL, '$2y$10$1q7Edhj51KhAFsdbcHis7eSdEE9Kflt01WkKIQC0EZlwBliQ53nAq', NULL, NULL, '0858822771231', NULL, 5, '1', NULL, '2022-03-17 20:55:12', '2022-03-17 20:55:12', NULL, NULL, NULL),
(44, 'Admin Event & Sewa Tempat', 'event_sewatempat@gmail.com', NULL, '$2y$10$jzWlUU5Ei87pB3PWHgTj9OmdqfpYcHB7ZEmLLIQgTGxfh4oatr/I6', NULL, NULL, '081216213301', NULL, 7, '1', NULL, '2022-04-08 23:57:51', '2022-04-08 23:57:51', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_bookings`
--
ALTER TABLE `event_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_tiket` (`kode_tiket`),
  ADD KEY `kamar_id` (`kamar_id`),
  ADD KEY `tempat_id` (`tempat_id`);

--
-- Indexes for table `event_campings`
--
ALTER TABLE `event_campings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_kegiatan`
--
ALTER TABLE `event_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `table_setting`
--
ALTER TABLE `table_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_blog`
--
ALTER TABLE `tb_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `petugas_id` (`petugas_id`);

--
-- Indexes for table `tb_camp`
--
ALTER TABLE `tb_camp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tempat_id` (`tempat_id`);

--
-- Indexes for table `tb_detailbooking`
--
ALTER TABLE `tb_detailbooking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_tiket` (`kode_tiket`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tempat_id` (`tempat_id`),
  ADD KEY `kamar_id` (`kamar_id`);

--
-- Indexes for table `tb_detailcamp`
--
ALTER TABLE `tb_detailcamp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_tiket` (`kode_tiket`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tempat_id` (`tempat_id`);

--
-- Indexes for table `tb_detailtransaksi`
--
ALTER TABLE `tb_detailtransaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_tiket` (`kode_tiket`),
  ADD KEY `tempat_id` (`tempat_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tb_event`
--
ALTER TABLE `tb_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kamar`
--
ALTER TABLE `tb_kamar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tempat_id` (`tempat_id`),
  ADD KEY `kode_kamar` (`kode_kamar`);

--
-- Indexes for table `tb_kategorievent`
--
ALTER TABLE `tb_kategorievent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kuliner`
--
ALTER TABLE `tb_kuliner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tempat_id` (`tempat_id`);

--
-- Indexes for table `tb_pay`
--
ALTER TABLE `tb_pay`
  ADD KEY `id` (`id`);

--
-- Indexes for table `tb_pencairan`
--
ALTER TABLE `tb_pencairan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tempat_id` (`tempat_id`);

--
-- Indexes for table `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tb_tiket`
--
ALTER TABLE `tb_tiket`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_2` (`kode`),
  ADD KEY `tempat_id` (`tempat_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `kode` (`kode`),
  ADD KEY `kode_3` (`kode`);

--
-- Indexes for table `tb_wahana`
--
ALTER TABLE `tb_wahana`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tempat_id` (`tempat_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `petugas_id` (`petugas_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_bookings`
--
ALTER TABLE `event_bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `event_campings`
--
ALTER TABLE `event_campings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `event_kegiatan`
--
ALTER TABLE `event_kegiatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `table_setting`
--
ALTER TABLE `table_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_blog`
--
ALTER TABLE `tb_blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_camp`
--
ALTER TABLE `tb_camp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_detailbooking`
--
ALTER TABLE `tb_detailbooking`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_detailcamp`
--
ALTER TABLE `tb_detailcamp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tb_detailtransaksi`
--
ALTER TABLE `tb_detailtransaksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `tb_event`
--
ALTER TABLE `tb_event`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kamar`
--
ALTER TABLE `tb_kamar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_kategorievent`
--
ALTER TABLE `tb_kategorievent`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_kuliner`
--
ALTER TABLE `tb_kuliner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_pencairan`
--
ALTER TABLE `tb_pencairan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_role`
--
ALTER TABLE `tb_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_tiket`
--
ALTER TABLE `tb_tiket`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `tb_wahana`
--
ALTER TABLE `tb_wahana`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_bookings`
--
ALTER TABLE `event_bookings`
  ADD CONSTRAINT `event_bookings_ibfk_1` FOREIGN KEY (`kamar_id`) REFERENCES `tb_kamar` (`kode_kamar`) ON UPDATE CASCADE,
  ADD CONSTRAINT `event_bookings_ibfk_2` FOREIGN KEY (`tempat_id`) REFERENCES `tb_tempat` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_blog`
--
ALTER TABLE `tb_blog`
  ADD CONSTRAINT `tb_blog_ibfk_1` FOREIGN KEY (`petugas_id`) REFERENCES `users` (`petugas_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_camp`
--
ALTER TABLE `tb_camp`
  ADD CONSTRAINT `tb_camp_ibfk_1` FOREIGN KEY (`tempat_id`) REFERENCES `tb_tempat` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_detailbooking`
--
ALTER TABLE `tb_detailbooking`
  ADD CONSTRAINT `tb_detailbooking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_detailbooking_ibfk_2` FOREIGN KEY (`tempat_id`) REFERENCES `tb_tempat` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_detailbooking_ibfk_3` FOREIGN KEY (`kamar_id`) REFERENCES `tb_kamar` (`kode_kamar`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_detailcamp`
--
ALTER TABLE `tb_detailcamp`
  ADD CONSTRAINT `tb_detailcamp_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_detailcamp_ibfk_2` FOREIGN KEY (`tempat_id`) REFERENCES `tb_tempat` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_detailtransaksi`
--
ALTER TABLE `tb_detailtransaksi`
  ADD CONSTRAINT `tb_detailtransaksi_ibfk_1` FOREIGN KEY (`tempat_id`) REFERENCES `tb_tempat` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_detailtransaksi_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_kamar`
--
ALTER TABLE `tb_kamar`
  ADD CONSTRAINT `tb_kamar_ibfk_1` FOREIGN KEY (`tempat_id`) REFERENCES `tb_tempat` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_kuliner`
--
ALTER TABLE `tb_kuliner`
  ADD CONSTRAINT `tb_kuliner_ibfk_1` FOREIGN KEY (`tempat_id`) REFERENCES `tb_tempat` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_pencairan`
--
ALTER TABLE `tb_pencairan`
  ADD CONSTRAINT `tb_pencairan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pencairan_ibfk_2` FOREIGN KEY (`tempat_id`) REFERENCES `tb_tempat` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  ADD CONSTRAINT `tb_tempat_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`petugas_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_tiket`
--
ALTER TABLE `tb_tiket`
  ADD CONSTRAINT `tb_tiket_ibfk_1` FOREIGN KEY (`tempat_id`) REFERENCES `tb_tempat` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_tiket_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_wahana`
--
ALTER TABLE `tb_wahana`
  ADD CONSTRAINT `tb_wahana_ibfk_1` FOREIGN KEY (`tempat_id`) REFERENCES `tb_tempat` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
