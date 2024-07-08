-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2024 at 11:20 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk-wp-lara`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatifs`
--

CREATE TABLE `alternatifs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT 1,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alternatifs`
--

INSERT INTO `alternatifs` (`id`, `kode`, `name`, `gender`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'A1', 'A1', 1, NULL, NULL, NULL, '2024-06-10 07:05:36', '2024-06-10 07:05:36'),
(2, 'A2', 'A2', 1, NULL, NULL, NULL, '2024-06-10 07:05:39', '2024-06-10 07:05:39'),
(3, 'A3', 'A3', 1, NULL, NULL, NULL, '2024-06-10 07:10:16', '2024-06-10 07:10:16'),
(4, 'A4', 'A4', 1, NULL, NULL, NULL, '2024-06-10 07:10:20', '2024-06-10 07:10:20'),
(5, 'A5', 'A5', 1, NULL, NULL, NULL, '2024-06-10 07:21:07', '2024-06-10 07:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `alternatif_kriteria`
--

CREATE TABLE `alternatif_kriteria` (
  `alternatif_id` bigint(20) UNSIGNED NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alternatif_kriteria`
--

INSERT INTO `alternatif_kriteria` (`alternatif_id`, `kriteria_id`, `nilai`) VALUES
(1, 1, 5.00),
(1, 2, 3.00),
(1, 3, 3.00),
(1, 4, 3.00),
(1, 5, 3.00),
(1, 6, 3.00),
(2, 1, 3.00),
(2, 2, 4.00),
(2, 3, 4.00),
(2, 4, 4.00),
(2, 5, 4.00),
(2, 6, 4.00),
(3, 1, 4.00),
(3, 2, 2.00),
(3, 3, 5.00),
(3, 4, 3.00),
(3, 5, 4.00),
(3, 6, 4.00),
(4, 1, 5.00),
(4, 2, 5.00),
(4, 3, 3.00),
(4, 4, 2.00),
(4, 5, 4.00),
(4, 6, 4.00),
(5, 1, 5.00),
(5, 2, 4.00),
(5, 3, 2.00),
(5, 4, 2.00),
(5, 5, 2.00),
(5, 6, 3.00),
(5, 7, 4.00),
(4, 7, 3.00),
(3, 7, 3.00),
(2, 7, 4.00),
(1, 7, 2.00);

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
-- Table structure for table `kriterias`
--

CREATE TABLE `kriterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` double(8,2) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `min` double(8,2) DEFAULT NULL,
  `max` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kriterias`
--

INSERT INTO `kriterias` (`id`, `kode`, `name`, `bobot`, `type`, `min`, `max`, `created_at`, `updated_at`) VALUES
(1, 'C1', 'Harga', 0.25, 0, NULL, NULL, '2024-06-10 07:03:11', '2024-06-10 07:13:17'),
(2, 'C2', 'Kualitas', 0.20, 1, NULL, NULL, '2024-06-10 07:03:36', '2024-06-10 07:13:25'),
(3, 'C3', 'Fitur', 0.25, 1, NULL, NULL, '2024-06-10 07:04:02', '2024-06-10 07:13:35'),
(4, 'C4', 'Populer', 0.15, 1, NULL, NULL, '2024-06-10 07:04:22', '2024-06-10 07:13:43'),
(5, 'C5', 'Purna Jual', 0.10, 1, NULL, NULL, '2024-06-10 07:04:48', '2024-06-10 07:13:55'),
(6, 'C6', 'Keawetan', 0.05, 1, NULL, NULL, '2024-06-10 07:05:03', '2024-06-10 07:14:03'),
(7, 'C7', 'Ketahanan', 0.25, 0, NULL, NULL, '2024-06-10 07:21:43', '2024-06-10 07:21:43');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_01_19_202510_create_alternatifs_table', 1),
(7, '2023_01_19_203551_create_kriterias_table', 1),
(8, '2023_01_19_204627_create_alternatif_kriteria_table', 1),
(9, '2023_01_20_165245_create_sessions_table', 1),
(10, '2023_02_01_195558_create_sub_kriterias_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('z5oSKvLTAr211LoLlAZhEkiFQpL8UAb2yvAEishL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEhkdEhQNGt4Vk1sNG9yR2kwbHNmUThrR2xOaTkwcXdKTHI2Ynl1QiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1718004209);

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriterias`
--

CREATE TABLE `sub_kriterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min` bigint(20) DEFAULT NULL,
  `max` bigint(20) DEFAULT NULL,
  `bobot` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_kriterias`
--

INSERT INTO `sub_kriterias` (`id`, `kriteria_id`, `name`, `min`, `max`, `bobot`, `created_at`, `updated_at`) VALUES
(1, 1, '5', NULL, NULL, 5, '2024-06-10 07:08:06', '2024-06-10 07:08:06'),
(2, 1, '4', NULL, NULL, 4, '2024-06-10 07:08:10', '2024-06-10 07:08:10'),
(3, 1, '3', NULL, NULL, 3, '2024-06-10 07:08:13', '2024-06-10 07:08:13'),
(4, 1, '2', NULL, NULL, 2, '2024-06-10 07:08:16', '2024-06-10 07:08:16'),
(5, 1, '1', NULL, NULL, 1, '2024-06-10 07:08:22', '2024-06-10 07:08:22'),
(6, 2, '5', NULL, NULL, 5, '2024-06-10 07:08:34', '2024-06-10 07:08:34'),
(7, 2, '4', NULL, NULL, 4, '2024-06-10 07:08:37', '2024-06-10 07:08:37'),
(8, 2, '3', NULL, NULL, 3, '2024-06-10 07:08:40', '2024-06-10 07:08:40'),
(9, 2, '2', NULL, NULL, 2, '2024-06-10 07:08:43', '2024-06-10 07:08:43'),
(10, 2, '1', NULL, NULL, 1, '2024-06-10 07:08:45', '2024-06-10 07:08:45'),
(11, 3, '5', NULL, NULL, 5, '2024-06-10 07:08:52', '2024-06-10 07:08:52'),
(12, 3, '4', NULL, NULL, 4, '2024-06-10 07:08:55', '2024-06-10 07:08:55'),
(13, 3, '3', NULL, NULL, 3, '2024-06-10 07:08:57', '2024-06-10 07:08:57'),
(14, 3, '2', NULL, NULL, 2, '2024-06-10 07:09:00', '2024-06-10 07:09:00'),
(15, 3, '1', NULL, NULL, 1, '2024-06-10 07:09:04', '2024-06-10 07:09:04'),
(16, 4, '5', NULL, NULL, 5, '2024-06-10 07:09:11', '2024-06-10 07:09:11'),
(17, 4, '4', NULL, NULL, 4, '2024-06-10 07:09:14', '2024-06-10 07:09:14'),
(18, 4, '3', NULL, NULL, 3, '2024-06-10 07:09:17', '2024-06-10 07:09:17'),
(19, 4, '2', NULL, NULL, 2, '2024-06-10 07:09:19', '2024-06-10 07:09:19'),
(20, 4, '1', NULL, NULL, 1, '2024-06-10 07:09:22', '2024-06-10 07:09:22'),
(21, 5, '5', NULL, NULL, 5, '2024-06-10 07:09:33', '2024-06-10 07:09:33'),
(22, 5, '4', NULL, NULL, 4, '2024-06-10 07:09:38', '2024-06-10 07:09:38'),
(23, 5, '3', NULL, NULL, 3, '2024-06-10 07:09:40', '2024-06-10 07:09:40'),
(24, 5, '2', NULL, NULL, 2, '2024-06-10 07:09:43', '2024-06-10 07:09:43'),
(25, 5, '1', NULL, NULL, 1, '2024-06-10 07:09:46', '2024-06-10 07:09:46'),
(26, 6, '5', NULL, NULL, 5, '2024-06-10 07:09:52', '2024-06-10 07:09:52'),
(27, 6, '4', NULL, NULL, 4, '2024-06-10 07:09:54', '2024-06-10 07:09:54'),
(28, 6, '3', NULL, NULL, 3, '2024-06-10 07:09:57', '2024-06-10 07:09:57'),
(29, 6, '2', NULL, NULL, 2, '2024-06-10 07:09:59', '2024-06-10 07:09:59'),
(30, 6, '1', NULL, NULL, 1, '2024-06-10 07:10:02', '2024-06-10 07:10:02'),
(31, 7, 'Sangat Baik', NULL, NULL, 5, '2024-06-10 07:22:02', '2024-06-10 07:22:02'),
(32, 7, 'Baik', NULL, NULL, 4, '2024-06-10 07:22:09', '2024-06-10 07:22:09'),
(33, 7, 'Cukup', NULL, NULL, 3, '2024-06-10 07:22:15', '2024-06-10 07:22:15'),
(34, 7, 'Kurang', NULL, NULL, 2, '2024-06-10 07:22:19', '2024-06-10 07:22:19'),
(35, 7, 'Sagat  Kurang', NULL, NULL, 1, '2024-06-10 07:22:23', '2024-06-10 07:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'kasep1234', 'kasep@gmail.com', NULL, '$2y$10$4kXA3tFAVQ6X6icN61IA5eYRE7XYJPDBTLa1Y/ag2nETxiKVqmP66', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-10 06:44:00', '2024-06-10 06:44:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatifs`
--
ALTER TABLE `alternatifs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alternatif_kriteria`
--
ALTER TABLE `alternatif_kriteria`
  ADD KEY `alternatif_kriteria_alternatif_id_foreign` (`alternatif_id`),
  ADD KEY `alternatif_kriteria_kriteria_id_foreign` (`kriteria_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kriterias`
--
ALTER TABLE `kriterias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_kriterias`
--
ALTER TABLE `sub_kriterias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_kriterias_kriteria_id_foreign` (`kriteria_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatifs`
--
ALTER TABLE `alternatifs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kriterias`
--
ALTER TABLE `kriterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_kriterias`
--
ALTER TABLE `sub_kriterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alternatif_kriteria`
--
ALTER TABLE `alternatif_kriteria`
  ADD CONSTRAINT `alternatif_kriteria_alternatif_id_foreign` FOREIGN KEY (`alternatif_id`) REFERENCES `alternatifs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alternatif_kriteria_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriterias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_kriterias`
--
ALTER TABLE `sub_kriterias`
  ADD CONSTRAINT `sub_kriterias_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriterias` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
