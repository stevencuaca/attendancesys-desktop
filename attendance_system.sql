-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2020 at 06:26 AM
-- Server version: 10.3.15-MariaDB
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
-- Database: `attendance_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(10) UNSIGNED NOT NULL,
  `face_id` smallint(6) NOT NULL,
  `attend_date` date DEFAULT NULL,
  `attend_time` time DEFAULT NULL,
  `return_time` time DEFAULT NULL,
  `is_late` tinyint(1) DEFAULT NULL,
  `deduction` int(11) DEFAULT NULL,
  `is_present` tinyint(1) DEFAULT NULL,
  `absence_reason` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `face_id`, `attend_date`, `attend_time`, `return_time`, `is_late`, `deduction`, `is_present`, `absence_reason`, `created_at`, `updated_at`) VALUES
(32, 1, '2020-03-07', '20:29:41', '23:20:09', 1, 10000, 1, NULL, NULL, NULL),
(33, 1, '2020-03-08', '09:15:53', '13:12:13', 1, 10000, 1, NULL, NULL, NULL),
(34, 2, '2020-03-08', '12:47:42', '12:49:38', 1, 10000, 1, NULL, NULL, NULL),
(36, 1, '2020-03-09', '17:18:50', '17:20:33', 1, 10000, 1, NULL, NULL, '2020-03-09 03:21:58'),
(37, 1, '2020-03-10', '21:05:34', NULL, 1, 10000, 1, NULL, NULL, NULL),
(42, 1, '2020-03-11', '17:22:10', '17:23:02', 1, 10000, 1, NULL, NULL, NULL),
(43, 1, '2020-03-12', '09:15:28', NULL, 1, 10000, 1, NULL, NULL, NULL),
(44, 1, '2020-03-14', '13:18:17', '17:10:01', 1, 10000, 1, NULL, NULL, NULL),
(45, 1, '2020-03-15', '08:27:57', NULL, 1, 0, 1, NULL, NULL, '2020-03-14 21:54:58'),
(46, 1, '2020-03-12', '08:30:00', '16:30:00', 1, 0, 0, 'Sakit', '2020-03-14 19:37:49', '2020-03-14 21:55:11'),
(47, 1, '2020-03-27', '09:01:00', '17:00:00', 1, 10000, 1, NULL, '2020-03-14 21:56:05', '2020-03-14 21:56:05'),
(48, 1, '2020-03-16', '08:48:57', '08:52:13', 1, 5000, 1, NULL, NULL, NULL),
(49, 1, '2020-03-17', '09:53:59', NULL, 1, 40000, 1, NULL, NULL, NULL),
(50, 1, '2020-03-18', '08:13:28', '20:16:43', 0, 0, 1, NULL, NULL, NULL),
(51, 1, '2020-03-19', '09:29:37', '09:30:17', 1, 25000, 1, NULL, NULL, NULL),
(52, 1, '2020-03-20', '09:56:34', '11:11:39', 1, 40000, 1, NULL, NULL, NULL),
(53, 1, '2020-03-21', '13:20:02', '18:26:51', 1, 60000, 1, NULL, NULL, NULL),
(56, 1, '2020-03-22', '12:12:32', '21:00:45', 1, 60000, 1, NULL, NULL, NULL),
(57, 1, '2020-03-23', '09:02:09', '16:15:30', 1, 15000, 1, NULL, NULL, NULL),
(58, 10, '2020-03-23', '13:52:22', '13:56:05', 1, 60000, 1, NULL, NULL, NULL),
(59, 1, '2020-03-24', '09:49:58', '18:27:27', 1, 70000, 1, NULL, NULL, NULL),
(60, 10, '2020-03-24', '18:14:03', '18:14:47', 1, 120000, 1, NULL, NULL, NULL),
(61, 1, '2020-03-25', '19:57:37', '22:01:25', 1, 120000, 1, NULL, NULL, NULL),
(62, 1, '2020-03-26', '12:14:01', '18:54:44', 1, 120000, 1, NULL, NULL, NULL),
(63, 1, '2020-03-29', '17:36:02', '20:03:25', 1, 120000, 1, NULL, NULL, NULL),
(64, 1, '2020-03-30', '18:28:40', '18:29:18', 1, 120000, 1, NULL, NULL, NULL),
(65, 1, '2020-04-01', '13:10:11', '13:13:16', 1, 120000, 1, NULL, NULL, NULL),
(66, 1, '2020-04-06', '08:54:44', '08:57:02', 1, 20000, 1, NULL, NULL, NULL),
(67, 1, '2020-04-08', '12:48:55', NULL, 1, 120000, 1, NULL, NULL, NULL),
(69, 1, '2020-04-21', '11:20:27', '11:24:11', 1, 120000, 1, NULL, NULL, NULL),
(71, 1, '2020-04-25', '09:06:17', NULL, 1, 30000, 1, NULL, NULL, NULL),
(73, 1, '2020-04-26', '11:45:39', '11:49:47', 1, 120000, 1, NULL, NULL, NULL),
(74, 1, '2020-04-28', '12:50:26', '12:51:19', 1, 120000, 1, NULL, NULL, NULL),
(75, 1, '2020-04-15', '08:30:00', '17:00:00', 0, 0, 0, 'Sakit', '2020-05-03 19:11:59', '2020-05-03 19:11:59'),
(76, 1, '2020-04-16', '08:33:00', '17:55:00', 0, NULL, 0, 'Izin', '2020-05-03 19:26:56', '2020-05-03 19:26:56'),
(77, 1, '2020-04-13', '04:23:00', '12:35:00', 0, NULL, 0, 'Sakit', '2020-05-03 19:27:15', '2020-05-03 19:27:15'),
(78, 1, '2020-04-24', '04:42:00', '14:45:00', 0, NULL, 0, 'Sakit', '2020-05-03 19:28:30', '2020-05-03 19:28:30'),
(80, 1, '2020-05-04', '09:34:37', NULL, 1, 0, 1, NULL, NULL, NULL),
(82, 1, '2020-05-08', '10:26:44', '10:44:04', 1, 50000, 1, NULL, '2020-05-08 03:26:44', '2020-05-08 03:44:04'),
(83, 1, '2020-05-13', '23:08:03', NULL, 1, 100000, 1, NULL, '2020-05-13 16:08:03', NULL),
(84, 1, '2020-05-19', '13:26:46', '21:54:31', 1, 100000, 1, NULL, '2020-05-19 06:26:46', '2020-05-19 14:54:31'),
(85, 1, '2020-05-20', '20:38:54', NULL, 1, 100000, 1, NULL, '2020-05-20 13:38:54', NULL),
(86, 1, '2020-05-21', '20:52:42', '21:27:06', 1, 100000, 1, NULL, '2020-05-21 13:52:42', '2020-05-21 14:27:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-02-23 21:23:45', '2020-02-23 21:23:45'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-02-23 21:23:45', '2020-02-23 21:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(89, 27, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(90, 27, 'employee_id', 'text', 'Employee Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(91, 27, 'first_name', 'text', 'First Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(92, 27, 'last_name', 'text', 'Last Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(93, 27, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(94, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(95, 27, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 10),
(96, 28, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(97, 28, 'attend_date', 'date', 'Attend Date', 0, 1, 1, 1, 1, 1, '{}', 4),
(98, 28, 'attend_time', 'time', 'Attend Time', 0, 1, 1, 1, 1, 1, '{}', 5),
(99, 28, 'return_time', 'time', 'Return Time', 0, 1, 1, 1, 1, 1, '{}', 7),
(100, 28, 'is_late', 'checkbox', 'Is Late', 0, 1, 1, 1, 1, 1, '{\"on\":\"Late\",\"off\":\"Not Late\",\"checked\":true}', 6),
(101, 28, 'deduction', 'number', 'Deduction', 0, 1, 1, 1, 1, 1, '{}', 8),
(102, 28, 'is_present', 'checkbox', 'Is Present', 0, 1, 1, 1, 1, 1, '{\"on\":\"Present\",\"off\":\"Not Present\",\"checked\":true}', 3),
(103, 28, 'absence_reason', 'text', 'Absence Reason', 0, 1, 1, 1, 1, 1, '{}', 9),
(105, 28, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 11),
(106, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(107, 28, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 13),
(110, 28, 'attendance_belongsto_employee_relationship', 'relationship', 'Employee', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Employee\",\"table\":\"employee\",\"type\":\"belongsTo\",\"column\":\"face_id\",\"key\":\"face_id\",\"label\":\"first_name\",\"pivot_table\":\"attendance\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(111, 27, 'face_id', 'number', 'Face Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:2\"},\"step\":1,\"min\":0,\"max\":99,\"description\":\"Face Id must be a number and unique. Ex: 1, 2, 3, etc.\"}', 7),
(112, 28, 'face_id', 'text', 'Face Id', 1, 1, 1, 1, 1, 1, '{}', 10),
(113, 29, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(114, 29, 'employee_id', 'text', 'Employee Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(115, 29, 'from_date', 'date', 'From Date', 0, 1, 1, 1, 1, 1, '{\"format\":\"%d-%m-%Y\"}', 4),
(116, 29, 'to_date', 'date', 'To Date', 0, 1, 1, 1, 1, 1, '{\"format\":\"%d-%m-%Y\"}', 5),
(117, 29, 'salary', 'number', 'Salary', 0, 1, 1, 1, 1, 1, '{}', 10),
(118, 29, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 11),
(119, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(122, 30, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(123, 30, 'start_time', 'time', 'Start Time', 0, 1, 1, 1, 1, 1, '{}', 2),
(124, 30, 'time', 'select_dropdown', 'Do Deduction Per', 0, 1, 1, 1, 1, 1, '{\"default\":\"10\",\"options\":{\"10\":\"\\/10 Mins\",\"15\":\"\\/15 Mins\",\"30\":\"\\/30 Mins\",\"45\":\"\\/45 Mins\",\"60\":\"\\/Hour\"},\"description\":\"Will deduct every based on selected time\"}', 4),
(125, 30, 'deduction_per_time', 'number', 'Ammount of Deduction for Late', 0, 1, 1, 1, 1, 1, '{\"description\":\"Set the deduction value for each selected late time.\"}', 3),
(126, 30, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(127, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(128, 30, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(129, 27, 'base_salary', 'number', 'Base Salary', 0, 1, 1, 1, 1, 1, '{}', 6),
(130, 30, 'max_late', 'select_dropdown', 'Max Late', 0, 1, 1, 1, 1, 1, '{\"default\":\"30\",\"options\":{\"30\":\"30 Mins\",\"45\":\"45 Mins\",\"60\":\"1 Hour\",\"90\":\"1.5 Hour\",\"120\":\"2 Hour\",\"180\":\"3 Hour\",\"240\":\"4 Hour\",\"300\":\"5 Hour\"},\"description\":\"Maximum late for deduction\"}', 5),
(132, 29, 'total_late', 'number', 'Total Late', 0, 1, 1, 1, 1, 1, '{}', 7),
(133, 29, 'total_deduction', 'number', 'Total Deduction', 0, 1, 1, 1, 1, 1, '{}', 8),
(134, 29, 'bonus', 'number', 'Bonus', 0, 1, 1, 1, 1, 1, '{}', 9),
(135, 30, 'bonus', 'number', 'Bonus', 0, 1, 1, 1, 1, 1, '{\"description\":\"Bonus will be paid each month if the employee has no absence.\"}', 6),
(137, 29, 'total_absence', 'number', 'Total Absence', 0, 1, 1, 1, 1, 1, '{}', 6),
(138, 27, 'position', 'text', 'Position', 0, 1, 1, 1, 1, 1, '{}', 5),
(139, 29, 'salary_belongsto_employee_relationship', 'relationship', 'Employee', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Employee\",\"table\":\"employee\",\"type\":\"belongsTo\",\"column\":\"employee_id\",\"key\":\"id\",\"label\":\"first_name\",\"pivot_table\":\"attendance\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-02-23 21:23:44', '2020-02-28 02:13:55'),
(27, 'employee', 'employee', 'Employee', 'Employees', 'voyager-people', 'App\\Employee', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"employee_id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-25 22:13:44', '2020-05-01 06:28:34'),
(28, 'attendance', 'attendance', 'Attendance', 'Attendances', 'voyager-calendar', 'App\\Attendance', NULL, '\\App\\Http\\Controllers\\Voyager\\AttendanceController', NULL, 1, 0, '{\"order_column\":\"attend_date\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-02-25 22:15:11', '2020-05-05 07:44:16'),
(29, 'salary', 'salary', 'Salary', 'Salaries', 'voyager-dollar', 'App\\Salary', NULL, '\\App\\Http\\Controllers\\Voyager\\SalaryController', NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-03-08 00:12:05', '2020-05-13 09:24:46'),
(30, 'office_rule', 'office-rule', 'Office Rule', 'Office Rules', 'voyager-settings', 'App\\OfficeRule', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-10 21:03:52', '2020-05-07 20:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `face_id` smallint(6) NOT NULL,
  `first_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `base_salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `employee_id`, `face_id`, `first_name`, `last_name`, `position`, `created_at`, `updated_at`, `base_salary`) VALUES
(7, 'a', 1, 'Steven', 'Cuaca', 'Programmer', '2020-02-26 04:27:57', '2020-05-19 07:26:00', 3000000),
(16, 'b', 2, 'Angeliny', NULL, NULL, '2020-05-19 07:26:32', '2020-05-19 07:26:32', NULL),
(17, 'c', 3, 'Jovin', NULL, NULL, '2020-05-19 07:26:45', '2020-05-19 07:26:45', NULL),
(18, 'd', 4, 'Mama', NULL, NULL, '2020-05-19 07:26:59', '2020-05-19 07:26:59', NULL),
(19, 'e', 5, 'Papa', NULL, NULL, '2020-05-19 07:27:10', '2020-05-19 07:27:10', NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-02-23 21:23:44', '2020-02-23 21:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-dashboard', '#000000', NULL, 1, '2020-02-23 21:23:44', '2020-03-07 07:34:49', 'voyager.dashboard', 'null'),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 7, '2020-02-23 21:23:44', '2020-03-10 21:13:14', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 6, '2020-02-23 21:23:44', '2020-03-10 21:13:14', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2020-02-23 21:23:44', '2020-03-10 21:13:14', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-02-23 21:23:44', '2020-02-23 21:47:58', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-02-23 21:23:44', '2020-02-23 21:47:58', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-02-23 21:23:44', '2020-02-25 22:18:10', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-02-23 21:23:44', '2020-02-25 22:18:10', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2020-02-23 21:23:44', '2020-03-10 21:13:14', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-02-23 21:23:46', '2020-02-25 22:18:10', 'voyager.hooks', NULL),
(24, 1, 'Employee', '', '_self', 'voyager-people', '#000000', NULL, 2, '2020-02-25 22:13:44', '2020-02-25 22:18:14', 'voyager.employee.index', 'null'),
(25, 1, 'Attendance', '', '_self', 'voyager-calendar', '#000000', NULL, 3, '2020-02-25 22:15:11', '2020-02-25 22:18:22', 'voyager.attendance.index', 'null'),
(27, 1, 'Salary', '', '_self', 'voyager-dollar', '#000000', NULL, 4, '2020-03-08 00:12:05', '2020-03-08 00:22:46', 'voyager.salary.index', 'null'),
(28, 1, 'Office Rules', '', '_self', 'voyager-settings', NULL, NULL, 5, '2020-03-10 21:03:52', '2020-03-10 21:13:14', 'voyager.office-rule.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `office_rule`
--

CREATE TABLE `office_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `time` tinyint(4) DEFAULT NULL,
  `deduction_per_time` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `max_late` tinyint(4) DEFAULT NULL,
  `bonus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `office_rule`
--

INSERT INTO `office_rule` (`id`, `start_time`, `time`, `deduction_per_time`, `created_at`, `updated_at`, `max_late`, `bonus`) VALUES
(4, '08:30:00', 60, 50000, '2020-03-11 03:10:12', '2020-05-07 20:38:13', 120, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-02-23 21:23:45', '2020-02-23 21:23:45');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(2, 'browse_bread', NULL, '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(3, 'browse_database', NULL, '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(4, 'browse_media', NULL, '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(5, 'browse_compass', NULL, '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(6, 'browse_menus', 'menus', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(7, 'read_menus', 'menus', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(8, 'edit_menus', 'menus', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(9, 'add_menus', 'menus', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(10, 'delete_menus', 'menus', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(11, 'browse_roles', 'roles', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(12, 'read_roles', 'roles', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(13, 'edit_roles', 'roles', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(14, 'add_roles', 'roles', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(15, 'delete_roles', 'roles', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(16, 'browse_users', 'users', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(17, 'read_users', 'users', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(18, 'edit_users', 'users', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(19, 'add_users', 'users', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(20, 'delete_users', 'users', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(21, 'browse_settings', 'settings', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(22, 'read_settings', 'settings', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(23, 'edit_settings', 'settings', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(24, 'add_settings', 'settings', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(25, 'delete_settings', 'settings', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(41, 'browse_hooks', NULL, '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(87, 'browse_employee', 'employee', '2020-02-25 22:13:44', '2020-02-25 22:13:44'),
(88, 'read_employee', 'employee', '2020-02-25 22:13:44', '2020-02-25 22:13:44'),
(89, 'edit_employee', 'employee', '2020-02-25 22:13:44', '2020-02-25 22:13:44'),
(90, 'add_employee', 'employee', '2020-02-25 22:13:44', '2020-02-25 22:13:44'),
(91, 'delete_employee', 'employee', '2020-02-25 22:13:44', '2020-02-25 22:13:44'),
(92, 'browse_attendance', 'attendance', '2020-02-25 22:15:11', '2020-02-25 22:15:11'),
(93, 'read_attendance', 'attendance', '2020-02-25 22:15:11', '2020-02-25 22:15:11'),
(94, 'edit_attendance', 'attendance', '2020-02-25 22:15:11', '2020-02-25 22:15:11'),
(95, 'add_attendance', 'attendance', '2020-02-25 22:15:11', '2020-02-25 22:15:11'),
(96, 'delete_attendance', 'attendance', '2020-02-25 22:15:11', '2020-02-25 22:15:11'),
(97, 'browse_salary', 'salary', '2020-03-08 00:12:05', '2020-03-08 00:12:05'),
(98, 'read_salary', 'salary', '2020-03-08 00:12:05', '2020-03-08 00:12:05'),
(99, 'edit_salary', 'salary', '2020-03-08 00:12:05', '2020-03-08 00:12:05'),
(100, 'add_salary', 'salary', '2020-03-08 00:12:05', '2020-03-08 00:12:05'),
(101, 'delete_salary', 'salary', '2020-03-08 00:12:05', '2020-03-08 00:12:05'),
(102, 'browse_office_rule', 'office_rule', '2020-03-10 21:03:52', '2020-03-10 21:03:52'),
(103, 'read_office_rule', 'office_rule', '2020-03-10 21:03:52', '2020-03-10 21:03:52'),
(104, 'edit_office_rule', 'office_rule', '2020-03-10 21:03:52', '2020-03-10 21:03:52'),
(105, 'add_office_rule', 'office_rule', '2020-03-10 21:03:52', '2020-03-10 21:03:52'),
(106, 'delete_office_rule', 'office_rule', '2020-03-10 21:03:52', '2020-03-10 21:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
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
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(15, 1),
(15, 3),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(41, 1),
(87, 1),
(87, 3),
(88, 1),
(88, 3),
(89, 1),
(89, 3),
(90, 1),
(90, 3),
(91, 1),
(91, 3),
(92, 1),
(92, 2),
(92, 3),
(93, 1),
(93, 2),
(93, 3),
(94, 1),
(94, 3),
(95, 1),
(95, 3),
(96, 1),
(96, 3),
(97, 1),
(97, 3),
(98, 1),
(98, 3),
(99, 1),
(99, 3),
(100, 1),
(100, 3),
(101, 1),
(101, 3),
(102, 1),
(102, 3),
(103, 1),
(103, 3),
(104, 1),
(104, 3),
(105, 1),
(106, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-02-23 21:23:45', '2020-02-23 21:23:45'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-02-23 21:23:45', '2020-02-23 21:23:45'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-02-23 21:23:45', '2020-02-23 21:23:45'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-02-23 21:23:45', '2020-02-23 21:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(2, 'user', 'Normal User', '2020-02-23 21:23:44', '2020-02-23 21:23:44'),
(3, 'headquarter', 'Head Quarter', '2020-03-07 09:43:06', '2020-03-07 09:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_late` tinyint(4) DEFAULT NULL,
  `total_deduction` int(11) DEFAULT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total_absence` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `employee_id`, `from_date`, `to_date`, `salary`, `created_at`, `updated_at`, `total_late`, `total_deduction`, `bonus`, `total_absence`) VALUES
(10, 'klpi_001', '2020-05-01', '2020-05-31', 3350000, '2020-05-13 09:24:14', '2020-05-13 09:24:14', 3, 150000, 500000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '319516659205-jkrnsn886ljtcpssthngeursodubo6m1.apps.googleusercontent.com', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\March2020\\QPkorzi0rs4tnIsR39sp.jpg', '', 'image', 6, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Attendancesys', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Attendance System. You can access attendance report, employee details, and count employee salary monthly.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\March2020\\2j3pGETjztqkPi36ZwnZ.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\March2020\\T4jnkAjfyWJVJYXDG0G5.png', '', 'image', 4, 'Admin'),
(12, 'admin.site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '319516659205-jkrnsn886ljtcpssthngeursodubo6m1.apps.googleusercontent.com', NULL, 'text', 5, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-02-23 21:23:45', '2020-02-23 21:23:45'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-02-23 21:23:45', '2020-02-23 21:23:45'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-02-23 21:23:46', '2020-02-23 21:23:46'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-02-23 21:23:46', '2020-02-23 21:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super User', 'superuser@klpi.com', 'users\\April2020\\D30attz5Ch2EcJRFOx7G.jpeg', NULL, '$2y$10$3gTFUUXk2ZWC8o5tAZ997uuBT.gio2x/TWi00fsW6u25pn1BtE0GG', 'oRJQSmAlt7KfaObXazwWXkBqoCYxVMnLT2EtiJMnA4nhwnQlQJQ5syDdoJRA', '{\"locale\":\"en\"}', '2020-02-23 21:23:45', '2020-04-20 21:34:59'),
(2, 2, 'Staff', 'staff@klpi.com', 'users\\March2020\\bY94TMUaJd88iSXSWMNR.jpeg', NULL, '$2y$10$NTtH9mlyjjFm/dJ.jSaMDO36WARvmDtp5H4Te4pbiAquKES9bw6vC', NULL, '{\"locale\":\"en\"}', '2020-02-26 00:39:45', '2020-03-07 09:38:39'),
(3, 3, 'HRD', 'hrd@klpi.com', 'users\\March2020\\ipqDMfNHfeSRnuQXg8sR.jpeg', NULL, '$2y$10$JO9RRt5iqcdEx6SWq1ZKFOE0/6eZYWGSIFBVCv8SDPAU3ZQ92ZTo2', NULL, '{\"locale\":\"en\"}', '2020-02-28 18:21:07', '2020-03-07 09:43:36'),
(4, 3, 'Head Quarter', 'hq@klpi.com', 'users\\March2020\\lTFKjUFf28g8hZZGDWPK.jpeg', NULL, '$2y$10$eyK865MMjxADGhbkx0xZW.Ndu.82lNFmirzX192fbyA3zGzNfSrCy', NULL, '{\"locale\":\"en\"}', '2020-03-07 09:39:14', '2020-03-07 09:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_face_id_unique` (`face_id`),
  ADD UNIQUE KEY `employee_employee_id_unique` (`employee_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_rule`
--
ALTER TABLE `office_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

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
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `office_rule`
--
ALTER TABLE `office_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
