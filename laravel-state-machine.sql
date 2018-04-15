-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: laradock_mysql_1
-- Generation Time: Apr 14, 2018 at 02:56 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-state-machine`
--

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
(53, '2014_10_12_000000_create_users_table', 1),
(54, '2014_10_12_100000_create_password_resets_table', 1),
(55, '2018_03_26_073909_create_orders_table', 1),
(56, '2018_03_26_133117_create_workflow_history_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `title`, `state`, `created_at`, `updated_at`) VALUES
(1, 'Voluptatum pariatur facilis laudantium.', '[\"CEO_approved\"]', '2018-04-04 12:07:56', '2018-04-14 14:53:20'),
(2, 'Et et provident exercitationem.', '[\"CEO_approved\"]', '2018-04-04 12:07:56', '2018-04-04 12:11:18'),
(3, 'Nemo veniam aliquid vitae.', '[\"new\"]', '2018-04-04 12:07:56', '2018-04-04 12:07:56'),
(4, 'Temporibus nostrum eos ut.', '[\"new\"]', '2018-04-04 12:07:56', '2018-04-04 12:07:56'),
(5, 'Nisi quia animi ut.', '[\"new\"]', '2018-04-04 12:07:56', '2018-04-04 12:07:56'),
(6, 'Temporibus amet aspernatur.', '[\"new\"]', '2018-04-04 12:07:56', '2018-04-04 12:07:56'),
(7, 'Dolorem repellat eveniet.', '[\"new\"]', '2018-04-04 12:07:56', '2018-04-04 12:07:56'),
(8, 'Esse omnis distinctio tempora.', '[\"CEO_approved\"]', '2018-04-04 12:07:56', '2018-04-04 12:24:36'),
(9, 'Unde et eaque ea.', '[\"new\"]', '2018-04-04 12:07:57', '2018-04-04 12:07:57'),
(10, 'Voluptatum est architecto.', '[\"new\"]', '2018-04-04 12:07:57', '2018-04-04 12:07:57'),
(11, 'Sit dignissimos numquam cupiditate.', '[\"new\"]', '2018-04-04 12:07:57', '2018-04-04 12:07:57');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@ssd.sa', '$2y$10$WtgXo3zDas07No5SyzyJzeDq8yBqEk3eS29rRT6Hkw/74l9.0VY1a', NULL, '2018-04-04 12:10:13', '2018-04-04 12:10:13'),
(2, 'ayman', 'ayman@ssd.sa', '$2y$10$NU.z5ptdTUbx6vAob43vMOZ4phlGp6djOjfUJxXnrw3RPwsnYpsWO', NULL, '2018-04-14 14:41:27', '2018-04-14 14:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `workflow_history`
--

CREATE TABLE `workflow_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `current_state` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `workflow_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workflow_history`
--

INSERT INTO `workflow_history` (`id`, `user_id`, `model_type`, `model_id`, `current_state`, `workflow_name`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Order', 2, '[\"waiting_HR_approval\",\"waiting_IT_approval\",\"waiting_accountant_approval\"]', 'orders2Dir', '', '2018-04-04 12:10:21', '2018-04-04 12:10:21'),
(2, 1, 'App\\Order', 2, '[\"waiting_IT_approval\",\"waiting_accountant_approval\",\"exit_enterview_done\"]', 'orders2Dir', '', '2018-04-04 12:10:24', '2018-04-04 12:10:24'),
(3, 1, 'App\\Order', 2, '[\"waiting_IT_approval\",\"waiting_accountant_approval\",\"waiting_docs_in_branch\",\"waiting_docs_in_main_office\"]', 'orders2Dir', '', '2018-04-04 12:10:26', '2018-04-04 12:10:26'),
(4, 1, 'App\\Order', 2, '[\"waiting_IT_approval\",\"waiting_accountant_approval\",\"waiting_docs_in_main_office\",\"docs_delivered_in_branch\"]', 'orders2Dir', '', '2018-04-04 12:10:31', '2018-04-04 12:10:31'),
(5, 1, 'App\\Order', 2, '[\"waiting_IT_approval\",\"waiting_accountant_approval\",\"docs_delivered_in_branch\",\"docs_delivered_in_main_office\"]', 'orders2Dir', '', '2018-04-04 12:10:37', '2018-04-04 12:10:37'),
(6, 1, 'App\\Order', 2, '[\"waiting_IT_approval\",\"waiting_accountant_approval\",\"waiting_HR_manager_approval\"]', 'orders2Dir', '', '2018-04-04 12:10:40', '2018-04-04 12:10:40'),
(7, 1, 'App\\Order', 2, '[\"waiting_IT_approval\",\"waiting_accountant_approval\",\"HR_approved\"]', 'orders2Dir', '', '2018-04-04 12:10:43', '2018-04-04 12:10:43'),
(8, 1, 'App\\Order', 2, '[\"waiting_IT_approval\",\"HR_approved\",\"waiting_purchasing_dep_approval\",\"waiting_bank_account_closing\",\"waiting_personal_loans_closing\"]', 'orders2Dir', '', '2018-04-04 12:10:46', '2018-04-04 12:10:46'),
(9, 1, 'App\\Order', 2, '[\"waiting_IT_approval\",\"HR_approved\",\"waiting_purchasing_dep_approval\",\"waiting_bank_account_closing\",\"waiting_personal_loans_closing_indep_1\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\"]', 'orders2Dir', '', '2018-04-04 12:10:48', '2018-04-04 12:10:48'),
(10, 1, 'App\\Order', 2, '[\"HR_approved\",\"waiting_purchasing_dep_approval\",\"waiting_bank_account_closing\",\"waiting_personal_loans_closing_indep_1\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"email_disabled_and_wait_IT_manager\"]', 'orders2Dir', '', '2018-04-04 12:10:56', '2018-04-04 12:10:56'),
(11, 1, 'App\\Order', 2, '[\"HR_approved\",\"waiting_purchasing_dep_approval\",\"waiting_bank_account_closing\",\"waiting_personal_loans_closing_indep_1\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"IT_approved\"]', 'orders2Dir', '', '2018-04-04 12:10:59', '2018-04-04 12:10:59'),
(12, 1, 'App\\Order', 2, '[\"HR_approved\",\"waiting_bank_account_closing\",\"waiting_personal_loans_closing_indep_1\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"IT_approved\",\"purchasing_dep_approved\"]', 'orders2Dir', '', '2018-04-04 12:11:01', '2018-04-04 12:11:01'),
(13, 1, 'App\\Order', 2, '[\"HR_approved\",\"waiting_personal_loans_closing_indep_1\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"IT_approved\",\"purchasing_dep_approved\",\"bank_account_closed\"]', 'orders2Dir', '', '2018-04-04 12:11:03', '2018-04-04 12:11:03'),
(14, 1, 'App\\Order', 2, '[\"HR_approved\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"IT_approved\",\"purchasing_dep_approved\",\"bank_account_closed\",\"waiting_personal_loans_closing_indep_1_1\"]', 'orders2Dir', '', '2018-04-04 12:11:05', '2018-04-04 12:11:05'),
(15, 1, 'App\\Order', 2, '[\"HR_approved\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"IT_approved\",\"purchasing_dep_approved\",\"bank_account_closed\",\"waiting_personal_loans_closing_indep_1_2\"]', 'orders2Dir', '', '2018-04-04 12:11:08', '2018-04-04 12:11:08'),
(16, 1, 'App\\Order', 2, '[\"HR_approved\",\"waiting_personal_loans_closing_indep_3\",\"IT_approved\",\"purchasing_dep_approved\",\"bank_account_closed\",\"waiting_personal_loans_closing_indep_1_2\",\"waiting_personal_loans_closing_indep_2_1\"]', 'orders2Dir', '', '2018-04-04 12:11:09', '2018-04-04 12:11:09'),
(17, 1, 'App\\Order', 2, '[\"HR_approved\",\"IT_approved\",\"purchasing_dep_approved\",\"bank_account_closed\",\"waiting_personal_loans_closing_indep_1_2\",\"waiting_personal_loans_closing_indep_2_1\",\"waiting_personal_loans_closing_indep_3_1\"]', 'orders2Dir', '', '2018-04-04 12:11:12', '2018-04-04 12:11:12'),
(18, 1, 'App\\Order', 2, '[\"HR_approved\",\"IT_approved\",\"purchasing_dep_approved\",\"bank_account_closed\",\"personal_loans_closed\"]', 'orders2Dir', '', '2018-04-04 12:11:14', '2018-04-04 12:11:14'),
(19, 1, 'App\\Order', 2, '[\"HR_approved\",\"IT_approved\",\"accountant_approved\"]', 'orders2Dir', '', '2018-04-04 12:11:16', '2018-04-04 12:11:16'),
(20, 1, 'App\\Order', 2, '[\"CEO_approved\"]', 'orders2Dir', '', '2018-04-04 12:11:18', '2018-04-04 12:11:18'),
(21, 1, 'App\\Order', 8, '[\"waiting_HR_approval\",\"waiting_IT_approval\",\"waiting_accountant_approval\"]', 'orders2Dir', '', '2018-04-04 12:20:45', '2018-04-04 12:20:45'),
(22, 1, 'App\\Order', 8, '[\"waiting_IT_approval\",\"waiting_accountant_approval\",\"exit_enterview_done\"]', 'orders2Dir', '', '2018-04-04 12:20:47', '2018-04-04 12:20:47'),
(23, 1, 'App\\Order', 8, '[\"waiting_IT_approval\",\"waiting_accountant_approval\",\"waiting_docs_in_branch\",\"waiting_docs_in_main_office\"]', 'orders2Dir', '', '2018-04-04 12:20:50', '2018-04-04 12:20:50'),
(24, 1, 'App\\Order', 8, '[\"waiting_IT_approval\",\"waiting_docs_in_branch\",\"waiting_docs_in_main_office\",\"waiting_purchasing_dep_approval\",\"waiting_bank_account_closing\",\"waiting_personal_loans_closing\"]', 'orders2Dir', '', '2018-04-04 12:20:54', '2018-04-04 12:20:54'),
(25, 1, 'App\\Order', 8, '[\"waiting_IT_approval\",\"waiting_docs_in_branch\",\"waiting_docs_in_main_office\",\"waiting_purchasing_dep_approval\",\"waiting_bank_account_closing\",\"waiting_personal_loans_closing_indep_1\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\"]', 'orders2Dir', '', '2018-04-04 12:20:58', '2018-04-04 12:20:58'),
(26, 1, 'App\\Order', 8, '[\"waiting_IT_approval\",\"waiting_docs_in_main_office\",\"waiting_purchasing_dep_approval\",\"waiting_bank_account_closing\",\"waiting_personal_loans_closing_indep_1\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"docs_delivered_in_branch\"]', 'orders2Dir', '', '2018-04-04 12:24:00', '2018-04-04 12:24:00'),
(27, 1, 'App\\Order', 8, '[\"waiting_IT_approval\",\"waiting_purchasing_dep_approval\",\"waiting_bank_account_closing\",\"waiting_personal_loans_closing_indep_1\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"docs_delivered_in_branch\",\"docs_delivered_in_main_office\"]', 'orders2Dir', '', '2018-04-04 12:24:06', '2018-04-04 12:24:06'),
(28, 1, 'App\\Order', 8, '[\"waiting_IT_approval\",\"waiting_purchasing_dep_approval\",\"waiting_bank_account_closing\",\"waiting_personal_loans_closing_indep_1\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"waiting_HR_manager_approval\"]', 'orders2Dir', '', '2018-04-04 12:24:09', '2018-04-04 12:24:09'),
(29, 1, 'App\\Order', 8, '[\"waiting_IT_approval\",\"waiting_purchasing_dep_approval\",\"waiting_bank_account_closing\",\"waiting_personal_loans_closing_indep_1\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"HR_approved\"]', 'orders2Dir', '', '2018-04-04 12:24:12', '2018-04-04 12:24:12'),
(30, 1, 'App\\Order', 8, '[\"waiting_purchasing_dep_approval\",\"waiting_bank_account_closing\",\"waiting_personal_loans_closing_indep_1\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"HR_approved\",\"email_disabled_and_wait_IT_manager\"]', 'orders2Dir', '', '2018-04-04 12:24:15', '2018-04-04 12:24:15'),
(31, 1, 'App\\Order', 8, '[\"waiting_purchasing_dep_approval\",\"waiting_bank_account_closing\",\"waiting_personal_loans_closing_indep_1\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"HR_approved\",\"IT_approved\"]', 'orders2Dir', '', '2018-04-04 12:24:17', '2018-04-04 12:24:17'),
(32, 1, 'App\\Order', 8, '[\"waiting_bank_account_closing\",\"waiting_personal_loans_closing_indep_1\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"HR_approved\",\"IT_approved\",\"purchasing_dep_approved\"]', 'orders2Dir', '', '2018-04-04 12:24:19', '2018-04-04 12:24:19'),
(33, 1, 'App\\Order', 8, '[\"waiting_personal_loans_closing_indep_1\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"HR_approved\",\"IT_approved\",\"purchasing_dep_approved\",\"bank_account_closed\"]', 'orders2Dir', '', '2018-04-04 12:24:21', '2018-04-04 12:24:21'),
(34, 1, 'App\\Order', 8, '[\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"HR_approved\",\"IT_approved\",\"purchasing_dep_approved\",\"bank_account_closed\",\"waiting_personal_loans_closing_indep_1_1\"]', 'orders2Dir', '', '2018-04-04 12:24:24', '2018-04-04 12:24:24'),
(35, 1, 'App\\Order', 8, '[\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"HR_approved\",\"IT_approved\",\"purchasing_dep_approved\",\"bank_account_closed\",\"waiting_personal_loans_closing_indep_1_2\"]', 'orders2Dir', '', '2018-04-04 12:24:26', '2018-04-04 12:24:26'),
(36, 1, 'App\\Order', 8, '[\"waiting_personal_loans_closing_indep_3\",\"HR_approved\",\"IT_approved\",\"purchasing_dep_approved\",\"bank_account_closed\",\"waiting_personal_loans_closing_indep_1_2\",\"waiting_personal_loans_closing_indep_2_1\"]', 'orders2Dir', '', '2018-04-04 12:24:28', '2018-04-04 12:24:28'),
(37, 1, 'App\\Order', 8, '[\"HR_approved\",\"IT_approved\",\"purchasing_dep_approved\",\"bank_account_closed\",\"waiting_personal_loans_closing_indep_1_2\",\"waiting_personal_loans_closing_indep_2_1\",\"waiting_personal_loans_closing_indep_3_1\"]', 'orders2Dir', '', '2018-04-04 12:24:29', '2018-04-04 12:24:29'),
(38, 1, 'App\\Order', 8, '[\"HR_approved\",\"IT_approved\",\"purchasing_dep_approved\",\"bank_account_closed\",\"personal_loans_closed\"]', 'orders2Dir', '', '2018-04-04 12:24:32', '2018-04-04 12:24:32'),
(39, 1, 'App\\Order', 8, '[\"HR_approved\",\"IT_approved\",\"accountant_approved\"]', 'orders2Dir', '', '2018-04-04 12:24:34', '2018-04-04 12:24:34'),
(40, 1, 'App\\Order', 8, '[\"CEO_approved\"]', 'orders2Dir', '', '2018-04-04 12:24:36', '2018-04-04 12:24:36'),
(41, 2, 'App\\Order', 1, '[\"waiting_HR_approval\",\"waiting_IT_approval\",\"waiting_accountant_approval\"]', 'orders2Dir', '', '2018-04-14 14:41:47', '2018-04-14 14:41:47'),
(42, 2, 'App\\Order', 1, '[\"waiting_IT_approval\",\"waiting_accountant_approval\",\"exit_enterview_done\"]', 'orders2Dir', '', '2018-04-14 14:42:26', '2018-04-14 14:42:26'),
(43, 2, 'App\\Order', 1, '[\"waiting_IT_approval\",\"waiting_accountant_approval\",\"waiting_docs_in_branch\",\"waiting_docs_in_main_office\"]', 'orders2Dir', '', '2018-04-14 14:42:36', '2018-04-14 14:42:36'),
(44, 2, 'App\\Order', 1, '[\"waiting_IT_approval\",\"waiting_accountant_approval\",\"waiting_docs_in_main_office\",\"docs_delivered_in_branch\"]', 'orders2Dir', '', '2018-04-14 14:43:42', '2018-04-14 14:43:42'),
(45, 2, 'App\\Order', 1, '[\"waiting_IT_approval\",\"waiting_accountant_approval\",\"waiting_HR_manager_approval\"]', 'orders2Dir', '', '2018-04-14 14:44:17', '2018-04-14 14:44:17'),
(46, 2, 'App\\Order', 1, '[\"waiting_IT_approval\",\"waiting_accountant_approval\",\"HR_approved\"]', 'orders2Dir', '', '2018-04-14 14:45:13', '2018-04-14 14:45:13'),
(47, 2, 'App\\Order', 1, '[\"waiting_accountant_approval\",\"HR_approved\",\"email_disabled_and_wait_IT_manager\"]', 'orders2Dir', '', '2018-04-14 14:45:28', '2018-04-14 14:45:28'),
(48, 2, 'App\\Order', 1, '[\"waiting_accountant_approval\",\"HR_approved\",\"IT_approved\"]', 'orders2Dir', '', '2018-04-14 14:45:34', '2018-04-14 14:45:34'),
(49, 2, 'App\\Order', 1, '[\"HR_approved\",\"IT_approved\",\"waiting_purchasing_dep_approval\",\"waiting_bank_account_closing\",\"waiting_personal_loans_closing\"]', 'orders2Dir', '', '2018-04-14 14:45:44', '2018-04-14 14:45:44'),
(50, 2, 'App\\Order', 1, '[\"HR_approved\",\"IT_approved\",\"waiting_purchasing_dep_approval\",\"waiting_personal_loans_closing\",\"bank_account_closed\"]', 'orders2Dir', '', '2018-04-14 14:47:32', '2018-04-14 14:47:32'),
(51, 2, 'App\\Order', 1, '[\"HR_approved\",\"IT_approved\",\"waiting_personal_loans_closing\",\"bank_account_closed\",\"purchasing_dep_approved\"]', 'orders2Dir', '', '2018-04-14 14:48:14', '2018-04-14 14:48:14'),
(52, 2, 'App\\Order', 1, '[\"HR_approved\",\"IT_approved\",\"bank_account_closed\",\"purchasing_dep_approved\",\"waiting_personal_loans_closing_indep_1\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\"]', 'orders2Dir', '', '2018-04-14 14:48:26', '2018-04-14 14:48:26'),
(53, 2, 'App\\Order', 1, '[\"HR_approved\",\"IT_approved\",\"bank_account_closed\",\"purchasing_dep_approved\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"waiting_personal_loans_closing_indep_1_1\"]', 'orders2Dir', '', '2018-04-14 14:48:41', '2018-04-14 14:48:41'),
(54, 2, 'App\\Order', 1, '[\"HR_approved\",\"IT_approved\",\"bank_account_closed\",\"purchasing_dep_approved\",\"waiting_personal_loans_closing_indep_2\",\"waiting_personal_loans_closing_indep_3\",\"waiting_personal_loans_closing_indep_1_2\"]', 'orders2Dir', '', '2018-04-14 14:48:47', '2018-04-14 14:48:47'),
(55, 2, 'App\\Order', 1, '[\"HR_approved\",\"IT_approved\",\"bank_account_closed\",\"purchasing_dep_approved\",\"personal_loans_closed\"]', 'orders2Dir', '', '2018-04-14 14:51:00', '2018-04-14 14:51:00'),
(56, 2, 'App\\Order', 1, '[\"HR_approved\",\"IT_approved\",\"accountant_approved\"]', 'orders2Dir', '', '2018-04-14 14:53:08', '2018-04-14 14:53:08'),
(57, 2, 'App\\Order', 1, '[\"CEO_approved\"]', 'orders2Dir', '', '2018-04-14 14:53:20', '2018-04-14 14:53:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `workflow_history`
--
ALTER TABLE `workflow_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workflow_history_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `workflow_history_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `workflow_history`
--
ALTER TABLE `workflow_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `workflow_history`
--
ALTER TABLE `workflow_history`
  ADD CONSTRAINT `workflow_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
