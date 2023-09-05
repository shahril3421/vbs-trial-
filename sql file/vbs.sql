-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 22, 2023 at 07:11 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblaravel9`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `driver_id` bigint UNSIGNED DEFAULT NULL,
  `vehicle_id` bigint UNSIGNED DEFAULT NULL,
  `pengguna_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namapemohon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempahan_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jawatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namapengguna` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` text COLLATE utf8mb4_unicode_ci,
  `bilangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sektor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jarak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namapenumpang` text COLLATE utf8mb4_unicode_ci,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keperluan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destinasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penginapan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `negeri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namapemandu1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namapemandu2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notelpemandu1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notelpemandu2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jeniskenderaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nopendaftaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jeniskenderaan2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nopendaftaran2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'DALAM PROSES',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint UNSIGNED NOT NULL,
  `nokadpengenalan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_pemandu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notelefon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `nokadpengenalan`, `nama_pemandu`, `notelefon`, `status`, `created_at`, `updated_at`) VALUES
(1, '680706-04-5289', 'HISHAM BIN BACHIK', '013-6843449', 'Aktif', '2023-08-15 09:55:10', '2023-08-16 09:23:57'),
(2, '810307-04-5217', 'IRWANSHA  BIN SEMAN', '016-2645810', 'Aktif', '2023-08-15 09:56:06', '2023-08-16 09:24:19'),
(3, '820106-04-5391', 'MOHD HAZZLE BIN HUSIN', '017-6011128', 'Aktif', '2023-08-15 09:56:57', '2023-08-16 09:24:42'),
(4, '790927-04-5001', 'ABD RAHIM BIN UMAR', '012-3872726', 'Aktif', '2023-08-15 09:57:43', '2023-08-16 09:25:02'),
(5, '780212-01-5723', 'MOHD ZAKI BIN MOHAMED YUSOF', '012-6624470', 'Aktif', '2023-08-15 09:58:53', '2023-08-16 09:25:26'),
(6, '801030-01-5685', 'MUHAMMAD NIZAM BIN BASSIR', '011-35057002', 'Aktif', '2023-08-15 09:59:48', '2023-08-16 09:26:19'),
(7, '801016-01-6593', 'UNGKU ABDUL AZIZ BIN UNGKU ABDULLAH', '019-6001660', 'Aktif', '2023-08-15 10:00:43', '2023-08-16 09:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_05_092349_create_permission_tables', 1),
(6, '2023_07_09_060514_create_drivers_table', 1),
(7, '2023_07_15_000136_create_vehicles_table', 1),
(8, '2023_08_01_172302_create_penggunas_table', 1),
(9, '2023_08_05_150417_create_bookings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penggunas`
--

CREATE TABLE `penggunas` (
  `id` bigint UNSIGNED NOT NULL,
  `nokadpengenalan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notelefon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jawatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sektor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'adminlte.darkmode.toggle', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(2, 'sanctum.csrf-cookie', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(3, 'login', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(4, 'logout', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(5, 'register', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(6, 'password.request', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(7, 'password.email', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(8, 'password.reset', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(9, 'password.update', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(10, 'password.confirm', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(11, 'dashboard', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(12, 'users.permissions.index', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(13, 'users.permissions.create', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(14, 'users.permissions.store', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(15, 'users.permissions.show', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(16, 'users.permissions.edit', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(17, 'users.permissions.update', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(18, 'users.permissions.destroy', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(19, 'users.roles.index', 'web', '2023-08-15 09:43:17', '2023-08-15 09:43:17'),
(20, 'users.roles.create', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(21, 'users.roles.store', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(22, 'users.roles.show', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(23, 'users.roles.edit', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(24, 'users.roles.update', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(25, 'users.roles.destroy', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(26, 'users.drivers.index', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(27, 'users.drivers.create', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(28, 'users.drivers.store', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(29, 'users.drivers.show', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(30, 'users.drivers.edit', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(31, 'users.drivers.update', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(32, 'users.drivers.destroy', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(33, 'users.vehicles.index', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(34, 'users.vehicles.create', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(35, 'users.vehicles.store', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(36, 'users.vehicles.show', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(37, 'users.vehicles.edit', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(38, 'users.vehicles.update', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(39, 'users.vehicles.destroy', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(40, 'users.bookings.index', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(41, 'users.bookings.create', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(42, 'users.bookings.store', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(43, 'users.bookings.show', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(44, 'users.bookings.edit', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(45, 'users.bookings.update', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(46, 'users.bookings.destroy', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(47, 'users.penggunas.index', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(48, 'users.penggunas.create', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(49, 'users.penggunas.store', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(50, 'users.penggunas.show', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(51, 'users.penggunas.edit', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(52, 'users.penggunas.update', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(53, 'users.penggunas.destroy', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(54, 'users.reports.index', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(55, 'users.reports.create', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(56, 'users.reports.store', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(57, 'users.reports.show', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(58, 'users.reports.edit', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(59, 'users.reports.update', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(60, 'users.reports.destroy', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(61, 'users.index', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(62, 'users.file.store', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(63, 'users.reports.filter', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(64, 'users.create', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(65, 'users.store', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(66, 'users.show', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(67, 'users.edit', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(68, 'users.update', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(69, 'users.destroy', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(70, 'export', 'web', '2023-08-15 09:43:18', '2023-08-15 09:43:18'),
(71, 'users.sent-mail', 'web', '2023-08-19 04:16:45', '2023-08-21 07:18:12'),
(72, 'landingpage', 'web', '2023-08-20 05:29:50', '2023-08-20 05:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Superuser', 'web', '2023-08-15 09:44:19', '2023-08-19 04:17:00'),
(2, 'Administrator', 'web', '2023-08-15 09:49:07', '2023-08-19 04:17:15'),
(3, 'User', 'web', '2023-08-15 09:51:32', '2023-08-19 04:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
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
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(19, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(66, 2),
(68, 2),
(70, 2),
(71, 2),
(72, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(19, 3),
(26, 3),
(33, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(54, 3),
(58, 3),
(61, 3),
(72, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'superuser', 'superuser@mail.com', NULL, '$2y$10$xq2ahxtAFD04NKU4d4ERtOHgROd/TdXv3sh5qhZKj/VF6kujoegcK', NULL, '2023-08-15 09:44:19', '2023-08-22 06:42:38'),
(2, 'Administrator', 'admin@mail.com', NULL, '$2y$10$edKB0P0/1UJ9c.PV/n2hbukwED9IVBBhWQCiMoet4sWG5TSYQBDgy', NULL, '2023-08-15 09:52:08', '2023-08-22 06:45:06'),
(5, 'User', 'user@mail.com', NULL, '$2y$10$uEi0KLY.5cI6IXpdx5RijOBfXx32/r6m/we2QDxQZwkYH6yQD7wrK', NULL, '2023-08-21 07:06:42', '2023-08-21 07:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint UNSIGNED NOT NULL,
  `driver_id` bigint UNSIGNED NOT NULL,
  `vehicle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nodaftar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `driver_id`, `vehicle`, `model`, `nodaftar`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'BAS', 'HINO (22P)', 'VDV 8441', 'Boleh Digunakan', '2023-08-15 10:02:57', '2023-08-17 23:35:03'),
(2, 1, 'BAS', 'HINO (40P)', 'VEF 9245', 'Boleh Digunakan', '2023-08-15 10:03:29', '2023-08-17 23:35:42'),
(3, 2, 'SUV', 'PROTON X70', 'VKR3381', 'Boleh Digunakan', '2023-08-15 10:04:16', '2023-08-17 23:36:10'),
(4, 2, 'SUV', 'TOYOTA FORTUNER', 'VCG 4420', 'Boleh Digunakan', '2023-08-15 10:05:27', '2023-08-17 23:36:50'),
(5, 3, 'KERETA', 'NISSAN  X -TRAIL (HITAM)', 'WVT 2859', 'Boleh Digunakan', '2023-08-15 10:06:26', '2023-08-17 23:37:16'),
(6, 3, 'KERETA', 'NISSAN  X -TRAIL (HITAM)', 'WVT 2844', 'Boleh Digunakan', '2023-08-15 10:44:39', '2023-08-17 23:37:36'),
(7, 4, 'KERETA', 'NISSAN  X -TRAIL (SILVER)', 'WQC 8157', 'Boleh Digunakan', '2023-08-15 10:45:21', '2023-08-17 23:38:37'),
(8, 5, 'KERETA', 'PERSONA (SPANCO)', 'VJT 7369', 'Boleh Digunakan', '2023-08-15 10:46:32', '2023-08-17 23:39:01'),
(9, 5, 'VAN', 'KIA FERGIO', 'WSA 7353', 'Selenggara', '2023-08-15 10:47:45', '2023-08-17 23:39:44'),
(10, 6, 'HILUX', 'TOYOTA SINGLE CUB', 'WPS3590', 'Boleh Digunakan', '2023-08-15 10:48:29', '2023-08-17 23:40:53'),
(11, 7, 'VAN', 'NISSAN URVAN (9P)', 'WA9721C', 'Boleh Digunakan', '2023-08-15 10:49:17', '2023-08-17 23:41:52'),
(12, 5, 'VAN', 'TOYOTA HIACE MSSM (9P)', 'W3930J', 'Boleh Digunakan', '2023-08-15 10:50:05', '2023-08-17 23:42:36'),
(13, 5, 'VAN', 'TOYOTA HIACE MSSM (9P)', 'W3897J', 'Boleh Digunakan', '2023-08-15 10:50:45', '2023-08-17 23:43:03'),
(14, 7, 'VAN', 'CAM/ PLACER-X (16P)', 'VKR7585', 'Boleh Digunakan', '2023-08-15 10:52:28', '2023-08-17 23:43:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emel` (`emel`),
  ADD KEY `bookings_driver_id_foreign` (`driver_id`),
  ADD KEY `bookings_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `bookings_pengguna_id_foreign` (`pengguna_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penggunas`
--
ALTER TABLE `penggunas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicles_driver_id_foreign` (`driver_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penggunas`
--
ALTER TABLE `penggunas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `penggunas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
