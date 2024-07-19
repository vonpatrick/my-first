-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 02, 2022 at 11:33 PM
-- Server version: 8.0.28
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naisou_local`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_password` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_code`, `full_name`, `department`, `team_name`, `password`, `confirm_password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '29938', 'VON PATRICK B. MEDIRAN', 'Systems and IT Support', 'Before Kakou-2', '29938', '29938', '2022-11-23 00:12:25', NULL, NULL),
(2, '09384', 'JOHN MICHAEL F. CAPARAS', 'Panel Assembly', 'Floor Protection', '09384', '09384', '2022-11-23 00:12:52', NULL, NULL),
(3, '18732', 'JOSE C. CANDANO JR.', 'HACCHU', 'STOP Check 2', '18732', '18732', '2022-11-23 00:13:08', NULL, NULL),
(4, '33439', 'MARY ROSE D. JUANITAS', 'HACCHU', 'Western Frame 1', '33439', '33439', '2022-11-23 18:48:17', NULL, NULL),
(5, '39072', 'MA KRISTHINA S. TOLEDO', 'Panel Assembly', 'Pre-Evaluation', '39072', '39072', '2022-11-23 19:00:56', NULL, NULL);

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
(5, '2022_11_02_062953_create_employee_table', 2),
(6, '2022_11_02_235953_create_employees_table', 3),
(7, '2022_11_04_071106_create_naisourecords_table', 4),
(8, '2022_11_04_222941_create_naisourecords_table', 5),
(9, '2022_11_05_010126_create_naisourecords_table', 6),
(10, '2022_11_05_020406_create_naisourecords_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `naisourecords`
--

CREATE TABLE `naisourecords` (
  `id` bigint UNSIGNED NOT NULL,
  `recieved_date` date NOT NULL,
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date NOT NULL,
  `plan_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `h_finished_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_total_inquiries` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_remarks` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_finished_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_total_inquiries` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_remarks` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `naisourecords`
--

INSERT INTO `naisourecords` (`id`, `recieved_date`, `folder`, `plan_code`, `revision_number`, `due_date`, `plan_type`, `h_finished_date`, `h_total_inquiries`, `h_remarks`, `p_finished_date`, `p_total_inquiries`, `p_remarks`, `email_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2022-11-14', '7-12', '1234567-2022', '1-0', '2022-11-15', 'Wakugumi', '15/11/2022 09:32:58', '1', NULL, '15/11/2022 09:32', '1', NULL, NULL, '2022-11-13 18:55:46', '2022-12-01 23:04:48', NULL),
(2, '2022-11-14', '7-12', '1234568-2022', '1-1', '2022-11-15', 'Jikugumi', '16/11/2022 12:55:17', '3', 'Walang masabi', '16/11/2022 07:51', '1', NULL, NULL, '2022-11-13 18:56:09', '2022-12-01 23:05:26', NULL),
(3, '2022-11-14', '12-', '1234569-2022', '1-1B', '2022-11-15', 'Wakugumi', '16/11/2022 01:19:35', '0', NULL, '16/11/2022 01:19', '1', NULL, NULL, '2022-11-13 18:59:05', '2022-11-15 21:19:38', NULL),
(4, '2022-11-16', '7-12', '1122334-2022', '2-1', '2022-11-17', 'Jikugumi', NULL, NULL, NULL, '16/11/2022 02:36', '4', NULL, NULL, '2022-11-15 19:21:16', '2022-12-01 23:05:47', NULL),
(5, '2022-11-16', '12-', '1234566-2023', '3-1', '2022-11-17', '-', '16/11/2022 02:41:19', '4', NULL, NULL, NULL, NULL, NULL, '2022-11-15 22:41:15', '2022-11-15 23:23:44', NULL),
(6, '2022-11-24', '12-', '9972958-2022', '1-0', '2022-11-25', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-23 20:48:03', '2022-11-23 20:48:03', NULL),
(7, '2022-11-24', '7-12', '9203802-2022', '4-0', '2022-11-25', 'Wakugumi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-24 00:38:35', '2022-11-24 00:38:35', NULL),
(8, '2022-11-24', '7-12', 'D012200-2040', '3-4', '2022-11-25', '-', NULL, NULL, NULL, '26/11/2022 02:31:12', '0', NULL, NULL, '2022-11-24 00:38:52', '2022-11-25 22:31:17', NULL),
(9, '2022-11-24', '12-', '2010115-2022', '5-0', '2022-11-25', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-24 00:39:08', '2022-11-24 00:39:08', NULL),
(10, '2022-11-24', '12-', '5630148-2014', '1-7', '2022-11-25', '-', '26/11/2022 09:42:31', '3', 'Other inquiries is resolved', '26/11/2022 09:41', '1', NULL, NULL, '2022-11-24 00:39:24', '2022-12-01 22:15:20', NULL),
(11, '2022-11-25', '12-', '1530126-2022', '6-0', '2022-11-26', 'Jikugumi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-24 16:22:00', '2022-11-25 17:21:23', '2022-11-25 17:21:23'),
(12, '2022-11-26', '7-12', '4240269-2022', '4-0', '2022-11-27', 'Wakugumi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-25 17:41:10', '2022-11-25 17:41:10', NULL),
(13, '2022-11-26', '12-', '0660186-2021', '1-0A', '2022-11-27', 'Wakugumi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-25 17:41:47', '2022-11-25 17:41:47', NULL),
(14, '2022-11-26', '7-12', '0660186-2021', '1-0', '2022-11-28', 'Wakugumi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-25 21:45:48', '2022-11-25 21:45:48', NULL),
(15, '2022-11-29', '12-', '9206837-2022', '1-3', '2022-11-30', 'Jikugumi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-28 23:31:32', '2022-11-28 23:31:32', NULL);

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
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
-- Indexes for table `naisourecords`
--
ALTER TABLE `naisourecords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `naisourecords`
--
ALTER TABLE `naisourecords`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
