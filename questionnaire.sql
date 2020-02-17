-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2020 at 11:14 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `questionnaire`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `questions_id` bigint(20) UNSIGNED NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `questions_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 5, 'Allah', '2020-01-31 11:42:15', '2020-01-31 11:42:15'),
(2, 5, 'Ar Rahman', '2020-01-31 11:42:15', '2020-01-31 11:42:15'),
(3, 5, 'Ar Raheem', '2020-01-31 11:42:15', '2020-01-31 11:42:15'),
(4, 5, 'Al Malik', '2020-01-31 11:42:15', '2020-01-31 11:42:15'),
(13, 8, 'Al Malik', '2020-02-03 09:03:38', '2020-02-03 09:03:38'),
(14, 8, 'Ar Raheem', '2020-02-03 09:03:38', '2020-02-03 09:03:38'),
(15, 8, 'Ar Rahman', '2020-02-03 09:03:38', '2020-02-03 09:03:38'),
(16, 8, 'Al Qudus', '2020-02-03 09:03:38', '2020-02-03 09:03:38'),
(21, 10, 'Messi', '2020-02-03 14:56:47', '2020-02-03 14:56:47'),
(22, 10, 'Ronaldo', '2020-02-03 14:56:47', '2020-02-03 14:56:47'),
(23, 10, 'Neymar', '2020-02-03 14:56:47', '2020-02-03 14:56:47'),
(24, 10, 'Salah', '2020-02-03 14:56:47', '2020-02-03 14:56:47'),
(25, 11, 'Marc Andre Ter Stegen', '2020-02-03 14:58:09', '2020-02-03 14:58:09'),
(26, 11, 'Thibaut Courtois', '2020-02-03 14:58:09', '2020-02-03 14:58:09'),
(27, 11, 'Jan Oblak', '2020-02-03 14:58:09', '2020-02-03 14:58:09'),
(28, 11, 'Manuel Neuer', '2020-02-03 14:58:09', '2020-02-03 14:58:09'),
(29, 12, 'Liverpool', '2020-02-03 14:59:13', '2020-02-03 14:59:13'),
(30, 12, 'RB Liepzig', '2020-02-03 14:59:13', '2020-02-03 14:59:13'),
(31, 12, 'Lazio', '2020-02-03 14:59:13', '2020-02-03 14:59:13'),
(32, 12, 'Borussia Dortmund', '2020-02-03 14:59:13', '2020-02-03 14:59:13'),
(33, 13, 'As Salam', '2020-02-04 10:05:33', '2020-02-04 10:05:33'),
(34, 13, 'Al Mumin', '2020-02-04 10:05:33', '2020-02-04 10:05:33'),
(35, 13, 'Al Mudatthir', '2020-02-04 10:05:34', '2020-02-04 10:05:34'),
(36, 13, 'Al Uthman', '2020-02-04 10:05:34', '2020-02-04 10:05:34'),
(37, 14, 'Very Good', '2020-02-04 10:34:48', '2020-02-04 10:34:48'),
(38, 14, 'Good', '2020-02-04 10:34:48', '2020-02-04 10:34:48'),
(39, 14, 'Okay', '2020-02-04 10:34:48', '2020-02-04 10:34:48'),
(40, 14, 'Poor', '2020-02-04 10:34:48', '2020-02-04 10:34:48'),
(41, 15, 'Lebron James', '2020-02-06 14:15:29', '2020-02-07 13:03:03'),
(42, 15, 'Larry Bird', '2020-02-06 14:15:29', '2020-02-07 13:03:03'),
(43, 15, 'Magic Johnson', '2020-02-06 14:15:29', '2020-02-07 13:03:03'),
(44, 15, 'Steph Curry', '2020-02-06 14:15:29', '2020-02-07 13:03:03'),
(45, 16, 'Steph Curry', '2020-02-06 14:22:56', '2020-02-06 14:22:56'),
(46, 16, 'Damian Lillard', '2020-02-06 14:22:56', '2020-02-06 14:22:56'),
(47, 16, 'LeBron James', '2020-02-06 14:22:56', '2020-02-06 14:22:56'),
(48, 16, 'Kevin Durant', '2020-02-06 14:22:56', '2020-02-06 14:22:56'),
(49, 17, 'Ike Shoronmu', '2020-02-06 15:19:22', '2020-02-06 15:19:22'),
(50, 17, 'Vincent Enyeama', '2020-02-06 15:19:23', '2020-02-06 15:19:23'),
(51, 17, 'Victor Oladosu', '2020-02-06 15:19:23', '2020-02-06 15:19:23'),
(52, 17, 'Peter Rufai', '2020-02-06 15:19:23', '2020-02-06 15:19:23'),
(53, 18, 'Taiye Taiwo', '2020-02-06 15:21:54', '2020-02-06 15:21:54'),
(54, 18, 'Victor Yobo', '2020-02-06 15:21:54', '2020-02-06 15:21:54'),
(55, 18, 'Taribo West', '2020-02-06 15:21:54', '2020-02-06 15:21:54'),
(56, 18, 'Kenneth Omeruo', '2020-02-06 15:21:54', '2020-02-06 15:21:54'),
(57, 19, 'Austin \"Jay Jay\" Okocha', '2020-02-06 15:22:51', '2020-02-06 15:22:51'),
(58, 19, 'John Mikel Obi', '2020-02-06 15:22:51', '2020-02-06 15:22:51'),
(59, 19, 'Wilfred Ndidi', '2020-02-06 15:22:51', '2020-02-06 15:22:51'),
(60, 19, 'Mr Garba Lawal', '2020-02-06 15:22:51', '2020-02-06 15:22:51'),
(61, 20, 'Osaze Odemwingie', '2020-02-06 15:24:14', '2020-02-06 15:24:14'),
(62, 20, 'Kanu Nwankwo', '2020-02-06 15:24:14', '2020-02-06 15:24:14'),
(63, 20, 'Rashidi Yekini', '2020-02-06 15:24:14', '2020-02-06 15:24:14'),
(64, 20, 'Ahmed Musa', '2020-02-06 15:24:14', '2020-02-06 15:24:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_30_185030_create_questionnaires_table', 1),
(5, '2020_01_31_090656_create_questions_table', 2),
(6, '2020_01_31_090914_create_answers_table', 2),
(7, '2020_02_03_124324_create_surveys_table', 3),
(8, '2020_02_03_124658_create_survey_responses_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ike@gmail.com', '$2y$10$DnOleDjDt3YQ93LhZRj/kuMoDJJg64dyrwmu.hUnHHMooN9DJaYSq', '2020-02-10 10:43:39'),
('ola@gmail.com', '$2y$10$OVR085pvyaBYeH4VONb.UuMAr/mSkefaKpHKdjwYsov1CMYneH0F2', '2020-02-11 16:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaires`
--

CREATE TABLE `questionnaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purpose` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionnaires`
--

INSERT INTO `questionnaires` (`id`, `user_id`, `title`, `purpose`, `created_at`, `updated_at`) VALUES
(5, 2, 'Eating Survey', 'Survey to know how people eat everyday', '2020-01-31 07:59:11', '2020-01-31 07:59:11'),
(6, 2, 'Purposeful Questionnaire', 'To get Purpose', '2020-01-31 08:22:07', '2020-01-31 08:22:07'),
(7, 2, '99 Names Of Allah', 'Giving glory to God', '2020-01-31 11:44:16', '2020-01-31 11:44:16'),
(8, 2, 'Football Questionnaire', 'To find out footballing opinions from different people', '2020-02-03 14:56:09', '2020-02-03 14:56:09'),
(9, 1, 'BasketBall Questionnaire', 'Finding out who the G.O.A.T is', '2020-02-06 14:14:38', '2020-02-06 14:14:38'),
(10, 1, 'Greatest Nigerian Footballers In Every Position', 'To get public opinion on who the greatest nigerian player is', '2020-02-06 15:16:56', '2020-02-06 15:16:56');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `questionnaire_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `questionnaire_id`, `question`, `created_at`, `updated_at`) VALUES
(1, 6, 'Who is The Loved One', '2020-01-31 11:31:59', '2020-01-31 11:31:59'),
(5, 6, 'Who is The Loved One', '2020-01-31 11:42:14', '2020-01-31 11:42:14'),
(8, 7, 'Names Of Allah', '2020-02-03 09:03:38', '2020-02-03 09:03:38'),
(10, 8, 'Who is the greatest player alive??', '2020-02-03 14:56:47', '2020-02-03 14:56:47'),
(11, 8, 'Who is the greatest goalkeeper right now?', '2020-02-03 14:58:09', '2020-02-03 14:58:09'),
(12, 8, 'Which Team Plays the best football right now??', '2020-02-03 14:59:13', '2020-02-03 14:59:13'),
(13, 7, 'Which of the following is nit amongst the 99 names of Allah', '2020-02-04 10:05:33', '2020-02-04 10:05:33'),
(14, 7, 'Rate Your Experience Staying in this Hotel', '2020-02-04 10:34:48', '2020-02-04 10:34:48'),
(15, 9, 'Greatest N.B.A Player of All Time??', '2020-02-06 14:15:29', '2020-02-07 12:57:49'),
(16, 9, 'Who is the best point guard in the N.B.A???', '2020-02-06 14:22:56', '2020-02-07 11:17:34'),
(17, 10, 'Best Ever Nigerian GoalKeeper', '2020-02-06 15:19:22', '2020-02-06 15:19:22'),
(18, 10, 'Best Ever Nigerian Defender', '2020-02-06 15:21:54', '2020-02-06 15:21:54'),
(19, 10, 'Best Ever Nigerian Midfileder', '2020-02-06 15:22:51', '2020-02-06 15:22:51'),
(20, 10, 'Best Ever Nigerian Striker', '2020-02-06 15:24:13', '2020-02-06 15:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `questionnaire_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `questionnaire_id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 7, 'Ola', 'Ola@gmail', '2020-02-03 13:04:05', '2020-02-03 13:04:05'),
(2, 7, 'Ola', 'Ola@gmail.com', '2020-02-03 13:05:31', '2020-02-03 13:05:31'),
(3, 7, 'Ola', 'Ola@gmail.com', '2020-02-03 13:07:28', '2020-02-03 13:07:28'),
(4, 7, 'Abo', 'abo@gmail.com', '2020-02-03 13:09:28', '2020-02-03 13:09:28'),
(5, 8, 'Uthman', 'Uthman@gmail.com', '2020-02-03 14:59:40', '2020-02-03 14:59:40'),
(6, 7, 'Ajala', 'ajala@jalingo.com', '2020-02-04 10:20:40', '2020-02-04 10:20:40'),
(7, 7, 'ade', 'ade@gmail.com', '2020-02-04 10:30:00', '2020-02-04 10:30:00'),
(8, 7, 'Ola', 'asd@asdf', '2020-02-04 10:31:41', '2020-02-04 10:31:41'),
(9, 8, 'Ola', 'Ola@gmail.com', '2020-02-04 10:36:21', '2020-02-04 10:36:21'),
(10, 8, 'Ada', 'ada@ada.com', '2020-02-04 16:57:20', '2020-02-04 16:57:20'),
(11, 4, 'Uthman', 'Ola@gmail', '2020-02-06 14:13:29', '2020-02-06 14:13:29'),
(12, 9, 'asdfghsdfgh', 'asdfgh@asdfgh', '2020-02-06 14:15:51', '2020-02-06 14:15:51'),
(13, 9, 'sxdgdffdvfd', 'asdfgh@dsfgh', '2020-02-06 14:23:35', '2020-02-06 14:23:35'),
(14, 9, 'xcccdc', 'dfsdfds@sadsad', '2020-02-06 14:27:42', '2020-02-06 14:27:42'),
(15, 9, 'sdd', 'zxcxc@ass', '2020-02-06 14:28:13', '2020-02-06 14:28:13'),
(16, 10, 'sdfd', 'sdcdsc@sdsf', '2020-02-06 15:25:19', '2020-02-06 15:25:19'),
(17, 10, 'xcvbn', 'dfghjk@sdfgh', '2020-02-07 13:24:12', '2020-02-07 13:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `survey_responses`
--

CREATE TABLE `survey_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `questions_id` bigint(20) UNSIGNED NOT NULL,
  `answers_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_responses`
--

INSERT INTO `survey_responses` (`id`, `survey_id`, `questions_id`, `answers_id`, `created_at`, `updated_at`) VALUES
(1, 2, 6, 5, '2020-02-03 13:05:31', '2020-02-03 13:05:31'),
(2, 2, 7, 9, '2020-02-03 13:05:31', '2020-02-03 13:05:31'),
(3, 2, 8, 15, '2020-02-03 13:05:31', '2020-02-03 13:05:31'),
(4, 2, 9, 20, '2020-02-03 13:05:32', '2020-02-03 13:05:32'),
(5, 3, 6, 5, '2020-02-03 13:07:28', '2020-02-03 13:07:28'),
(6, 3, 7, 9, '2020-02-03 13:07:28', '2020-02-03 13:07:28'),
(7, 3, 8, 15, '2020-02-03 13:07:28', '2020-02-03 13:07:28'),
(8, 3, 9, 20, '2020-02-03 13:07:28', '2020-02-03 13:07:28'),
(9, 4, 6, 6, '2020-02-03 13:09:28', '2020-02-03 13:09:28'),
(10, 4, 7, 10, '2020-02-03 13:09:28', '2020-02-03 13:09:28'),
(11, 4, 8, 16, '2020-02-03 13:09:28', '2020-02-03 13:09:28'),
(12, 4, 9, 18, '2020-02-03 13:09:28', '2020-02-03 13:09:28'),
(13, 5, 10, 22, '2020-02-03 14:59:40', '2020-02-03 14:59:40'),
(14, 5, 11, 26, '2020-02-03 14:59:40', '2020-02-03 14:59:40'),
(15, 5, 12, 32, '2020-02-03 14:59:40', '2020-02-03 14:59:40'),
(16, 6, 8, 13, '2020-02-04 10:20:40', '2020-02-04 10:20:40'),
(17, 6, 13, 34, '2020-02-04 10:20:40', '2020-02-04 10:20:40'),
(18, 7, 8, 15, '2020-02-04 10:30:00', '2020-02-04 10:30:00'),
(19, 7, 13, 36, '2020-02-04 10:30:00', '2020-02-04 10:30:00'),
(20, 8, 8, 13, '2020-02-04 10:31:41', '2020-02-04 10:31:41'),
(21, 8, 13, 36, '2020-02-04 10:31:41', '2020-02-04 10:31:41'),
(22, 9, 10, 21, '2020-02-04 10:36:21', '2020-02-04 10:36:21'),
(23, 9, 11, 25, '2020-02-04 10:36:21', '2020-02-04 10:36:21'),
(24, 9, 12, 32, '2020-02-04 10:36:21', '2020-02-04 10:36:21'),
(25, 10, 10, 23, '2020-02-04 16:57:20', '2020-02-04 16:57:20'),
(26, 10, 11, 27, '2020-02-04 16:57:20', '2020-02-04 16:57:20'),
(27, 10, 12, 31, '2020-02-04 16:57:20', '2020-02-04 16:57:20'),
(28, 12, 15, 42, '2020-02-06 14:15:51', '2020-02-06 14:15:51'),
(29, 13, 15, 44, '2020-02-06 14:23:35', '2020-02-06 14:23:35'),
(30, 13, 16, 45, '2020-02-06 14:23:35', '2020-02-06 14:23:35'),
(31, 14, 15, 42, '2020-02-06 14:27:42', '2020-02-06 14:27:42'),
(32, 14, 16, 46, '2020-02-06 14:27:42', '2020-02-06 14:27:42'),
(33, 15, 15, 42, '2020-02-06 14:28:13', '2020-02-06 14:28:13'),
(34, 15, 16, 45, '2020-02-06 14:28:14', '2020-02-06 14:28:14'),
(35, 16, 17, 50, '2020-02-06 15:25:19', '2020-02-06 15:25:19'),
(36, 16, 18, 55, '2020-02-06 15:25:19', '2020-02-06 15:25:19'),
(37, 16, 19, 57, '2020-02-06 15:25:19', '2020-02-06 15:25:19'),
(38, 16, 20, 64, '2020-02-06 15:25:19', '2020-02-06 15:25:19'),
(39, 17, 17, 49, '2020-02-07 13:24:12', '2020-02-07 13:24:12'),
(40, 17, 18, 55, '2020-02-07 13:24:12', '2020-02-07 13:24:12'),
(41, 17, 19, 57, '2020-02-07 13:24:12', '2020-02-07 13:24:12'),
(42, 17, 20, 63, '2020-02-07 13:24:12', '2020-02-07 13:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ike', 'ike@gmail.com', NULL, '$2y$10$DSGOrYp36sNhGNltehz5UuLyXBwZGr..8Jpv.GrTyDv29Fw9a7szG', '2lAvrd21VNqOytdoFcl9S4fxAVNOB2oQOHr0CR9L9t1RFWKP2WP9UTHNRlX9', '2020-01-30 18:02:42', '2020-01-30 18:02:42'),
(2, 'Ola', 'ola@gmail.com', NULL, '$2y$10$ld7zrl87Haqm5dxJuoC.P.ie2oru5NYDM7.k1QX1lWVCDfTxuw6EC', '8iYCjgbxg4GWFrjofM7fVBwleY4rt7ye8lDNLL7MpVm6tq3NLaG5HzpoSiUx', '2020-01-31 07:58:08', '2020-01-31 07:58:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_responses`
--
ALTER TABLE `survey_responses`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `questionnaires`
--
ALTER TABLE `questionnaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `survey_responses`
--
ALTER TABLE `survey_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
