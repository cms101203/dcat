-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2020-06-25 19:26:35
-- 服务器版本： 5.7.28-log
-- PHP 版本： 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `dcat`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_industry`
--

CREATE TABLE `admin_industry` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_industry`
--

INSERT INTO `admin_industry` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 0, '租车渠道', 'fa-arrows', NULL, '', '2020-06-24 21:49:29', '2020-06-24 21:49:29', NULL),
(2, 1, 0, '悟空', 'fa-automobile', NULL, '', '2020-06-24 21:49:54', '2020-06-24 21:49:54', NULL),
(3, 1, 0, '平台', NULL, NULL, '', '2020-06-24 21:50:24', '2020-06-24 21:50:24', NULL),
(4, 1, 0, '朋友介绍', NULL, NULL, '', '2020-06-24 21:50:49', '2020-06-24 21:50:49', NULL),
(5, 0, 0, '车型', NULL, NULL, '', '2020-06-24 21:52:08', '2020-06-24 21:52:08', NULL),
(6, 5, 0, 'GL8', NULL, NULL, '', '2020-06-24 21:52:21', '2020-06-24 21:52:21', NULL),
(7, 5, 0, '凯美瑞', NULL, NULL, '', '2020-06-24 21:52:44', '2020-06-24 21:52:44', NULL),
(8, 5, 0, '传祺', NULL, NULL, '', '2020-06-24 21:53:13', '2020-06-24 21:53:13', NULL),
(9, 5, 0, '金杯', NULL, NULL, '', '2020-06-24 21:53:23', '2020-06-24 21:53:23', NULL),
(10, 0, 0, '车辆所属公司', NULL, NULL, '', '2020-06-24 21:53:48', '2020-06-24 21:53:48', NULL),
(11, 10, 0, '九通', NULL, NULL, '', '2020-06-24 21:54:12', '2020-06-24 21:54:12', NULL),
(12, 10, 0, '鑫瑞', NULL, NULL, '', '2020-06-24 21:54:35', '2020-06-24 21:54:35', NULL),
(13, 10, 0, '个人', NULL, NULL, '欢欢', '2020-06-24 21:58:34', '2020-06-24 21:58:34', NULL),
(14, 10, 0, '个人', NULL, NULL, '欢子', '2020-06-24 21:59:15', '2020-06-24 21:59:15', NULL),
(19, 0, 0, '租赁方式', NULL, NULL, NULL, '2020-06-25 02:12:14', '2020-06-25 02:12:14', NULL),
(20, 19, 0, '自驾', NULL, NULL, NULL, '2020-06-25 02:12:55', '2020-06-25 02:12:55', NULL),
(21, 19, 0, '司机(本公司司机)', NULL, NULL, NULL, '2020-06-25 02:14:01', '2020-06-25 02:14:01', NULL),
(22, 19, 0, '外调(临时司机)', NULL, NULL, NULL, '2020-06-25 02:16:02', '2020-06-25 02:16:02', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Index', 'feather icon-bar-chart-2', '/', '2020-06-01 01:29:00', NULL),
(2, 0, 2, 'Admin', 'feather icon-settings', '', '2020-06-01 01:29:00', NULL),
(3, 2, 3, 'Users', '', 'auth/users', '2020-06-01 01:29:00', NULL),
(4, 2, 4, 'Roles', '', 'auth/roles', '2020-06-01 01:29:00', NULL),
(5, 2, 5, 'Permission', '', 'auth/permissions', '2020-06-01 01:29:00', NULL),
(6, 2, 6, 'Menu', '', 'auth/menu', '2020-06-01 01:29:00', NULL),
(7, 2, 7, 'Operation log', '', 'auth/logs', '2020-06-01 01:29:00', NULL),
(10, 0, 8, '客户管理列表', 'fa-address-card', 'client', '2020-06-24 22:29:05', '2020-06-24 22:29:29'),
(11, 2, 9, '分类管理', NULL, 'industry', '2020-06-25 00:00:15', '2020-06-25 00:00:15'),
(12, 0, 10, '车辆管理', 'fa-automobile', 'cars', '2020-06-25 02:52:21', '2020-06-25 02:53:08');

-- --------------------------------------------------------

--
-- 表的结构 `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"ZsSnqcta4XdLH2J5OZ77JCqYB1B1quvJPaIGd6gr\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-01 01:39:50', '2020-06-01 01:39:50'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-01 01:39:51', '2020-06-01 01:39:51'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-01 01:40:03', '2020-06-01 01:40:03'),
(4, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-01 01:40:09', '2020-06-01 01:40:09'),
(5, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-01 01:40:10', '2020-06-01 01:40:10'),
(6, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-01 01:40:11', '2020-06-01 01:40:11'),
(7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-01 01:40:13', '2020-06-01 01:40:13'),
(8, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-11 19:50:37', '2020-06-11 19:50:37'),
(9, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"ABinEB18Fxe459gntg4CXXFh8cAlXp2zVt9pACqu\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-11 19:50:43', '2020-06-11 19:50:43'),
(10, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-11 19:50:44', '2020-06-11 19:50:44'),
(11, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-11 19:50:48', '2020-06-11 19:50:48'),
(12, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-18 17:38:28', '2020-06-18 17:38:28'),
(13, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"PlRTqvOalbYEcZr1kWYcu8EuEaUs31TRBcyQ5l70\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-18 17:38:33', '2020-06-18 17:38:33'),
(14, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-18 17:38:33', '2020-06-18 17:38:33'),
(15, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-18 17:38:39', '2020-06-18 17:38:39'),
(16, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-24 19:42:56', '2020-06-24 19:42:56'),
(17, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"GY7A4pWLSaROEgSiMZcPgjgoZS8NET7yz7fG6Ydm\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-24 19:43:01', '2020-06-24 19:43:01'),
(18, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-24 19:43:01', '2020-06-24 19:43:01'),
(19, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:43:08', '2020-06-24 19:43:08'),
(20, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:43:09', '2020-06-24 19:43:09'),
(21, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:43:10', '2020-06-24 19:43:10'),
(22, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:43:11', '2020-06-24 19:43:11'),
(23, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:43:30', '2020-06-24 19:43:30'),
(24, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:43:31', '2020-06-24 19:43:31'),
(25, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-24 19:43:35', '2020-06-24 19:43:35'),
(26, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:43:41', '2020-06-24 19:43:41'),
(27, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:43:47', '2020-06-24 19:43:47'),
(28, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:43:48', '2020-06-24 19:43:48'),
(29, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:43:50', '2020-06-24 19:43:50'),
(30, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:52:54', '2020-06-24 19:52:54'),
(31, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:52:57', '2020-06-24 19:52:57'),
(32, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:53:03', '2020-06-24 19:53:03'),
(33, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:53:03', '2020-06-24 19:53:03'),
(34, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:58:46', '2020-06-24 19:58:46'),
(35, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 19:58:48', '2020-06-24 19:58:48'),
(36, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"admin\"}', '2020-06-24 19:58:54', '2020-06-24 19:58:54'),
(37, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"admin_\"}', '2020-06-24 19:58:55', '2020-06-24 19:58:55'),
(38, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":null}', '2020-06-24 19:59:03', '2020-06-24 19:59:03'),
(39, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"admin_industry\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 19:59:05', '2020-06-24 19:59:05'),
(40, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"admin_industry\"}', '2020-06-24 19:59:05', '2020-06-24 19:59:05'),
(41, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"admin_industry\",\"exist-table\":\"dcat|admin_industry\",\"model_name\":\"App\\\\Models\\\\AdminIndustry\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\AdminIndustryController\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"parent_id\",\"translation\":null,\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":null},{\"name\":\"order\",\"translation\":null,\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":null},{\"name\":\"title\",\"translation\":null,\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"icon\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"uri\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 19:59:35', '2020-06-24 19:59:35'),
(42, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-06-24 19:59:35', '2020-06-24 19:59:35'),
(43, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"admin_industry\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 20:00:16', '2020-06-24 20:00:16'),
(44, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"admin_industry\"}', '2020-06-24 20:00:16', '2020-06-24 20:00:16'),
(45, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"admin_industry\",\"exist-table\":\"dcat|admin_industry\",\"model_name\":\"App\\\\Models\\\\AdminIndustry\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\AdminIndustryController\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"parent_id\",\"translation\":null,\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":null},{\"name\":\"order\",\"translation\":null,\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":null},{\"name\":\"title\",\"translation\":null,\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"icon\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"uri\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 20:00:21', '2020-06-24 20:00:21'),
(46, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-06-24 20:00:22', '2020-06-24 20:00:22'),
(47, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 20:07:05', '2020-06-24 20:07:05'),
(48, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 20:13:55', '2020-06-24 20:13:55'),
(49, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 20:29:29', '2020-06-24 20:29:29'),
(50, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:02:17', '2020-06-24 21:02:17'),
(51, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:03:48', '2020-06-24 21:03:48'),
(52, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:03:51', '2020-06-24 21:03:51'),
(53, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:08:18', '2020-06-24 21:08:18'),
(54, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:10:51', '2020-06-24 21:10:51'),
(55, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:11:28', '2020-06-24 21:11:28'),
(56, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:13:59', '2020-06-24 21:13:59'),
(57, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:14:52', '2020-06-24 21:14:52'),
(58, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:16:32', '2020-06-24 21:16:32'),
(59, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:16:54', '2020-06-24 21:16:54'),
(60, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:17:49', '2020-06-24 21:17:49'),
(61, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:18:07', '2020-06-24 21:18:07'),
(62, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:20:08', '2020-06-24 21:20:08'),
(63, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:22:15', '2020-06-24 21:22:15'),
(64, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:22:51', '2020-06-24 21:22:51'),
(65, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:23:46', '2020-06-24 21:23:46'),
(66, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:24:11', '2020-06-24 21:24:11'),
(67, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:25:20', '2020-06-24 21:25:20'),
(68, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:25:44', '2020-06-24 21:25:44'),
(69, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:25:52', '2020-06-24 21:25:52'),
(70, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:26:35', '2020-06-24 21:26:35'),
(71, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:27:06', '2020-06-24 21:27:06'),
(72, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:27:36', '2020-06-24 21:27:36'),
(73, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:28:15', '2020-06-24 21:28:15'),
(74, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:29:35', '2020-06-24 21:29:35'),
(75, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u6d4b\\u8bd5\",\"icon\":\"fa-address-book\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:29:55', '2020-06-24 21:29:55'),
(76, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:29:55', '2020-06-24 21:29:55'),
(77, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-24 21:30:00', '2020-06-24 21:30:00'),
(78, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-24 21:30:02', '2020-06-24 21:30:02'),
(79, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:30:04', '2020-06-24 21:30:04'),
(80, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:30:06', '2020-06-24 21:30:06'),
(81, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:30:18', '2020-06-24 21:30:18'),
(82, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:31:11', '2020-06-24 21:31:11'),
(83, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u6d4b\\u8bd5\",\"icon\":\"fa-adjust\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:31:30', '2020-06-24 21:31:30'),
(84, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u6d4b\\u8bd5\",\"icon\":\"fa-adjust\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:33:34', '2020-06-24 21:33:34'),
(85, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u6d4b\\u8bd5\",\"icon\":\"fa-adjust\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:33:50', '2020-06-24 21:33:50'),
(86, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:39:28', '2020-06-24 21:39:28'),
(87, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u6d4b\\u8bd5\",\"icon\":\"fa-address-card-o\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:39:42', '2020-06-24 21:39:42'),
(88, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:39:42', '2020-06-24 21:39:42'),
(89, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-24 21:40:08', '2020-06-24 21:40:08'),
(90, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:40:14', '2020-06-24 21:40:14'),
(91, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u6d4b\\u8bd5\",\"icon\":\"fa-adjust\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:40:40', '2020-06-24 21:40:40'),
(92, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:41:10', '2020-06-24 21:41:10'),
(93, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u6d4b\\u8bd5\",\"icon\":\"fa-address-book-o\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:41:19', '2020-06-24 21:41:19'),
(94, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:41:21', '2020-06-24 21:41:21'),
(95, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:41:23', '2020-06-24 21:41:23'),
(96, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:44:05', '2020-06-24 21:44:05'),
(97, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:44:35', '2020-06-24 21:44:35'),
(98, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"\\u6d4b\\u8bd51\",\"icon\":\"fa-align-justify\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:44:47', '2020-06-24 21:44:47'),
(99, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:44:49', '2020-06-24 21:44:49'),
(100, 1, 'admin/industry/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:45:02', '2020-06-24 21:45:02'),
(101, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:45:03', '2020-06-24 21:45:03'),
(102, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:45:04', '2020-06-24 21:45:04'),
(103, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u79df\\u8f66\\u6e20\\u9053\",\"icon\":\"fa-arrows\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:49:29', '2020-06-24 21:49:29'),
(104, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:49:30', '2020-06-24 21:49:30'),
(105, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"\\u609f\\u7a7a\",\"icon\":\"fa-automobile\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:49:54', '2020-06-24 21:49:54'),
(106, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:49:54', '2020-06-24 21:49:54'),
(107, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"\\u5e73\\u53f0\",\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:50:24', '2020-06-24 21:50:24'),
(108, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:50:24', '2020-06-24 21:50:24'),
(109, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"\\u670b\\u53cb\\u4ecb\\u7ecd\",\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:50:49', '2020-06-24 21:50:49'),
(110, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:50:49', '2020-06-24 21:50:49'),
(111, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u8f66\\u578b\",\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:52:08', '2020-06-24 21:52:08'),
(112, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:52:08', '2020-06-24 21:52:08'),
(113, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"5\",\"title\":\"GL8\",\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:52:21', '2020-06-24 21:52:21'),
(114, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:52:21', '2020-06-24 21:52:21'),
(115, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"5\",\"title\":\"\\u51ef\\u7f8e\\u745e\",\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:52:44', '2020-06-24 21:52:44'),
(116, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:52:44', '2020-06-24 21:52:44'),
(117, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"5\",\"title\":\"\\u4f20\\u797a\",\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:53:13', '2020-06-24 21:53:13'),
(118, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:53:14', '2020-06-24 21:53:14'),
(119, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"5\",\"title\":\"\\u91d1\\u676f\",\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:53:23', '2020-06-24 21:53:23'),
(120, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:53:23', '2020-06-24 21:53:23'),
(121, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u8f66\\u8f86\\u6240\\u5c5e\\u516c\\u53f8\",\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:53:48', '2020-06-24 21:53:48'),
(122, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:53:48', '2020-06-24 21:53:48'),
(123, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u4e5d\\u901a\",\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:54:12', '2020-06-24 21:54:12'),
(124, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:54:13', '2020-06-24 21:54:13'),
(125, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u946b\\u745e\",\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:54:35', '2020-06-24 21:54:35'),
(126, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:54:36', '2020-06-24 21:54:36'),
(127, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 21:57:46', '2020-06-24 21:57:46'),
(128, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u4e2a\\u4eba\",\"remark\":\"\\u6b22\\u6b22\",\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:58:34', '2020-06-24 21:58:34'),
(129, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:58:34', '2020-06-24 21:58:34'),
(130, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u4e2a\\u4eba\",\"remark\":\"\\u6b22\\u5b50\",\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 21:59:15', '2020-06-24 21:59:15'),
(131, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 21:59:16', '2020-06-24 21:59:16'),
(132, 1, 'admin/industry', 'GET', '127.0.0.1', '[]', '2020-06-24 22:01:02', '2020-06-24 22:01:02'),
(133, 1, 'admin/industry/14/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-24 22:01:14', '2020-06-24 22:01:14'),
(134, 1, 'admin/industry/14', 'PUT', '127.0.0.1', '{\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"parent_id\":\"10\",\"title\":\"\\u4e2a\\u4eba\",\"remark\":\"\\u6b22\\u5b50\",\"icon\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/industry\"}', '2020-06-24 22:01:23', '2020-06-24 22:01:23'),
(135, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 22:01:23', '2020-06-24 22:01:23'),
(136, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u53f8\\u673a\",\"remark\":null,\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:02:17', '2020-06-24 22:02:17'),
(137, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u53f8\\u673a\",\"remark\":null,\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:02:36', '2020-06-24 22:02:36'),
(138, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u53f8\\u673a\",\"remark\":null,\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:02:58', '2020-06-24 22:02:58'),
(139, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 22:02:58', '2020-06-24 22:02:58'),
(140, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u6b22\\u6b22\",\"remark\":null,\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:03:39', '2020-06-24 22:03:39'),
(141, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 22:03:39', '2020-06-24 22:03:39'),
(142, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u6b22\\u5b50\",\"remark\":null,\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:03:47', '2020-06-24 22:03:47'),
(143, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 22:03:48', '2020-06-24 22:03:48'),
(144, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u6b22\\u5929\\u559c\\u5730\",\"remark\":null,\"icon\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:04:20', '2020-06-24 22:04:20'),
(145, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 22:04:21', '2020-06-24 22:04:21'),
(146, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 22:25:21', '2020-06-24 22:25:21'),
(147, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"client_detail\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:25:28', '2020-06-24 22:25:28'),
(148, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"client_detail\"}', '2020-06-24 22:25:29', '2020-06-24 22:25:29'),
(149, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"client_detail\",\"exist-table\":\"dcat|client_detail\",\"model_name\":\"App\\\\Models\\\\ClientDetailModel\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ClientDetailController\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"client_name\",\"translation\":\"\\u5ba2\\u6237\\u540d\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u5ba2\\u6237\\u540d\"},{\"name\":\"client_mobile\",\"translation\":\"\\u5ba2\\u6237\\u8054\\u7cfb\\u65b9\\u5f0f\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5ba2\\u6237\\u8054\\u7cfb\\u65b9\\u5f0f\"},{\"name\":\"client_wechat\",\"translation\":\"\\u5ba2\\u6237\\u5fae\\u4fe1\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5ba2\\u6237\\u5fae\\u4fe1\"},{\"name\":\"client_qq\",\"translation\":\"\\u5ba2\\u6237qq\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5ba2\\u6237qq\"},{\"name\":\"client_email\",\"translation\":\"\\u5ba2\\u6237\\u90ae\\u7bb1\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5ba2\\u6237\\u90ae\\u7bb1\"},{\"name\":\"id_card\",\"translation\":\"\\u5ba2\\u6237\\u8eab\\u4efd\\u8bc1\\u53f7\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5ba2\\u6237\\u8eab\\u4efd\\u8bc1\\u53f7\"},{\"name\":\"prove_img\",\"translation\":\"\\u8bc1\\u4ef6\\u56fe\\u7247\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8bc1\\u4ef6\\u56fe\\u7247\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"soft_deletes\":\"1\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:26:10', '2020-06-24 22:26:10'),
(150, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-06-24 22:26:13', '2020-06-24 22:26:13'),
(151, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 22:26:32', '2020-06-24 22:26:32'),
(152, 1, 'admin/auth/menu/9', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:26:36', '2020-06-24 22:26:36'),
(153, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 22:26:37', '2020-06-24 22:26:37'),
(154, 1, 'admin/auth/menu/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:26:40', '2020-06-24 22:26:40'),
(155, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 22:26:41', '2020-06-24 22:26:41'),
(156, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u5ba2\\u6237\\u7ba1\\u7406\\u5217\\u8868\",\"icon\":\"fa-address-card\",\"uri\":\"\\/client\",\"roles\":[null],\"permissions\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:29:05', '2020-06-24 22:29:05'),
(157, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 22:29:06', '2020-06-24 22:29:06'),
(158, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-24 22:29:17', '2020-06-24 22:29:17'),
(159, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-24 22:29:25', '2020-06-24 22:29:25'),
(160, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"parent_id\":\"0\",\"title\":\"\\u5ba2\\u6237\\u7ba1\\u7406\\u5217\\u8868\",\"icon\":\"fa-address-card\",\"uri\":\"client\",\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\"}', '2020-06-24 22:29:29', '2020-06-24 22:29:29'),
(161, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 22:29:30', '2020-06-24 22:29:30'),
(162, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-24 22:29:33', '2020-06-24 22:29:33'),
(163, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 22:29:37', '2020-06-24 22:29:37'),
(164, 1, 'admin/client/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 22:29:51', '2020-06-24 22:29:51'),
(165, 1, 'admin/client/create', 'GET', '127.0.0.1', '[]', '2020-06-24 22:39:15', '2020-06-24 22:39:15'),
(166, 1, 'admin/client', 'POST', '127.0.0.1', '{\"_id\":\"FE2hnhQRTVbguSgZ\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"upload_column\":\"prove_img\",\"id\":\"WU_FILE_0\",\"name\":\"\\u5fae\\u4fe1\\u56fe\\u7247_20200625114703.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Thu Jun 25 2020 11:47:19 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"43445\"}', '2020-06-24 22:39:37', '2020-06-24 22:39:37'),
(167, 1, 'admin/client/create', 'GET', '127.0.0.1', '[]', '2020-06-24 22:40:35', '2020-06-24 22:40:35'),
(168, 1, 'admin/client', 'POST', '127.0.0.1', '{\"_id\":\"h0KSKlohyJ9si8Bk\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"upload_column\":\"prove_img\",\"id\":\"WU_FILE_1\",\"name\":\"\\u622a\\u56fe\\u5f55\\u5c4f_\\u9009\\u62e9\\u533a\\u57df_20200623174410.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Tue Jun 23 2020 17:44:10 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"50204\"}', '2020-06-24 22:41:11', '2020-06-24 22:41:11'),
(169, 1, 'admin/client', 'POST', '127.0.0.1', '{\"_id\":\"h0KSKlohyJ9si8Bk\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"upload_column\":\"prove_img\",\"id\":\"WU_FILE_0\",\"name\":\"\\u5fae\\u4fe1\\u56fe\\u7247_20200625114703.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Thu Jun 25 2020 11:47:19 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"43445\"}', '2020-06-24 22:41:11', '2020-06-24 22:41:11'),
(170, 1, 'admin/client/create', 'GET', '127.0.0.1', '[]', '2020-06-24 22:43:19', '2020-06-24 22:43:19'),
(171, 1, 'admin/client', 'POST', '127.0.0.1', '{\"_id\":\"mmUlBHscl8bCTxoO\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"upload_column\":\"prove_img\",\"id\":\"WU_FILE_0\",\"name\":\"\\u5fae\\u4fe1\\u56fe\\u7247_20200625114703.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Thu Jun 25 2020 11:47:19 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"43445\"}', '2020-06-24 22:43:28', '2020-06-24 22:43:28'),
(172, 1, 'admin/client', 'POST', '127.0.0.1', '{\"_id\":\"mmUlBHscl8bCTxoO\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"upload_column\":\"prove_img\",\"id\":\"WU_FILE_1\",\"name\":\"\\u622a\\u56fe\\u5f55\\u5c4f_\\u9009\\u62e9\\u533a\\u57df_20200623174410.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Tue Jun 23 2020 17:44:10 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"50204\"}', '2020-06-24 22:43:38', '2020-06-24 22:43:38'),
(173, 1, 'admin/client', 'POST', '127.0.0.1', '{\"client_name\":\"\\u6b22\\u5b50\\u5927\\u91d1\\u4e3b\",\"client_mobile\":\"18356421458\",\"client_wechat\":null,\"client_qq\":null,\"client_email\":null,\"id_card\":null,\"prove_img\":\"images\\/\\u5fae\\u4fe1\\u56fe\\u7247_20200625114703.png,images\\/\\u622a\\u56fe\\u5f55\\u5c4f_\\u9009\\u62e9\\u533a\\u57df_20200623174410.png\",\"file-prove_img\":null,\"_file_\":null,\"file\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:45:04', '2020-06-24 22:45:04'),
(174, 1, 'admin/client', 'POST', '127.0.0.1', '{\"client_name\":\"\\u6b22\\u5b50\\u5927\\u91d1\\u4e3b\",\"client_mobile\":\"18356421458\",\"client_wechat\":null,\"client_qq\":null,\"client_email\":null,\"id_card\":null,\"prove_img\":\"images\\/\\u5fae\\u4fe1\\u56fe\\u7247_20200625114703.png,images\\/\\u622a\\u56fe\\u5f55\\u5c4f_\\u9009\\u62e9\\u533a\\u57df_20200623174410.png\",\"file-prove_img\":null,\"_file_\":null,\"file\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:45:13', '2020-06-24 22:45:13'),
(175, 1, 'admin/client/create', 'GET', '127.0.0.1', '[]', '2020-06-24 22:47:41', '2020-06-24 22:47:41'),
(176, 1, 'admin/client/create', 'GET', '127.0.0.1', '[]', '2020-06-24 22:47:51', '2020-06-24 22:47:51'),
(177, 1, 'admin/client', 'POST', '127.0.0.1', '{\"_id\":\"WfE0iZkfzNgiOuKs\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"upload_column\":\"prove_img\",\"id\":\"WU_FILE_1\",\"name\":\"\\u622a\\u56fe\\u5f55\\u5c4f_Opera_20200619143807.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Fri Jun 19 2020 14:38:07 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"315135\"}', '2020-06-24 22:48:30', '2020-06-24 22:48:30'),
(178, 1, 'admin/client', 'POST', '127.0.0.1', '{\"_id\":\"WfE0iZkfzNgiOuKs\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"upload_column\":\"prove_img\",\"id\":\"WU_FILE_0\",\"name\":\"\\u5fae\\u4fe1\\u56fe\\u7247_20200625114703.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Thu Jun 25 2020 11:47:19 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"43445\"}', '2020-06-24 22:48:30', '2020-06-24 22:48:30'),
(179, 1, 'admin/client', 'POST', '127.0.0.1', '{\"client_name\":\"\\u6b22\\u5b50\\u5927\\u91d1\\u4e3b\",\"client_mobile\":\"18321000001\",\"client_wechat\":null,\"client_qq\":null,\"client_email\":null,\"id_card\":null,\"prove_img\":\"images\\/\\u622a\\u56fe\\u5f55\\u5c4f_Opera_20200619143807.png,images\\/0ac6677277d8c384b865864b1f0465a5.png\",\"file-prove_img\":null,\"_file_\":null,\"file\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:48:47', '2020-06-24 22:48:47'),
(180, 1, 'admin/client', 'POST', '127.0.0.1', '{\"client_name\":\"\\u6b22\\u5b50\\u5927\\u91d1\\u4e3b\",\"client_mobile\":\"18321000001\",\"client_wechat\":null,\"client_qq\":null,\"client_email\":null,\"id_card\":null,\"prove_img\":\"images\\/\\u622a\\u56fe\\u5f55\\u5c4f_Opera_20200619143807.png,images\\/0ac6677277d8c384b865864b1f0465a5.png\",\"file-prove_img\":null,\"_file_\":null,\"file\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:51:42', '2020-06-24 22:51:42'),
(181, 1, 'admin/client', 'POST', '127.0.0.1', '{\"client_name\":\"\\u6b22\\u5b50\\u5927\\u91d1\\u4e3b\",\"client_mobile\":\"18321000001\",\"client_wechat\":null,\"client_qq\":null,\"client_email\":null,\"id_card\":null,\"prove_img\":\"images\\/\\u622a\\u56fe\\u5f55\\u5c4f_Opera_20200619143807.png,images\\/0ac6677277d8c384b865864b1f0465a5.png\",\"file-prove_img\":null,\"_file_\":null,\"file\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-24 22:52:20', '2020-06-24 22:52:20'),
(182, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 22:52:21', '2020-06-24 22:52:21'),
(183, 1, 'admin/client', 'GET', '127.0.0.1', '[]', '2020-06-24 22:54:35', '2020-06-24 22:54:35'),
(184, 1, 'admin/client', 'GET', '127.0.0.1', '[]', '2020-06-24 22:54:55', '2020-06-24 22:54:55'),
(185, 1, 'admin/client', 'GET', '127.0.0.1', '[]', '2020-06-24 22:54:59', '2020-06-24 22:54:59'),
(186, 1, 'admin/client', 'GET', '127.0.0.1', '[]', '2020-06-24 22:55:23', '2020-06-24 22:55:23'),
(187, 1, 'admin/client', 'GET', '127.0.0.1', '[]', '2020-06-24 22:55:42', '2020-06-24 22:55:42'),
(188, 1, 'admin/client', 'GET', '127.0.0.1', '[]', '2020-06-24 22:57:12', '2020-06-24 22:57:12'),
(189, 1, 'admin/client/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 22:57:25', '2020-06-24 22:57:25'),
(190, 1, 'admin/client/1', 'GET', '127.0.0.1', '[]', '2020-06-24 23:01:08', '2020-06-24 23:01:08'),
(191, 1, 'admin/client/1', 'GET', '127.0.0.1', '[]', '2020-06-24 23:02:49', '2020-06-24 23:02:49'),
(192, 1, 'admin/client/1', 'GET', '127.0.0.1', '[]', '2020-06-24 23:03:18', '2020-06-24 23:03:18'),
(193, 1, 'admin/client/1', 'GET', '127.0.0.1', '[]', '2020-06-24 23:07:58', '2020-06-24 23:07:58'),
(194, 1, 'admin/client/1', 'GET', '127.0.0.1', '[]', '2020-06-24 23:09:51', '2020-06-24 23:09:51'),
(195, 1, 'admin/client/1', 'GET', '127.0.0.1', '[]', '2020-06-24 23:10:07', '2020-06-24 23:10:07'),
(196, 1, 'admin/client/1', 'GET', '127.0.0.1', '[]', '2020-06-24 23:11:46', '2020-06-24 23:11:46'),
(197, 1, 'admin/client/1', 'GET', '127.0.0.1', '[]', '2020-06-24 23:13:44', '2020-06-24 23:13:44'),
(198, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 23:38:36', '2020-06-24 23:38:36'),
(199, 1, 'admin/client/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 23:38:44', '2020-06-24 23:38:44'),
(200, 1, 'admin/client', 'POST', '127.0.0.1', '{\"_id\":\"JeLGqkzIDBg9vZ9o\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"upload_column\":\"prove_img\",\"id\":\"WU_FILE_0\",\"name\":\"\\u5fae\\u4fe1\\u56fe\\u7247_20200625114703.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Thu Jun 25 2020 11:47:19 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"43445\"}', '2020-06-24 23:39:37', '2020-06-24 23:39:37'),
(201, 1, 'admin/client', 'POST', '127.0.0.1', '{\"_id\":\"JeLGqkzIDBg9vZ9o\",\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"upload_column\":\"prove_img\",\"id\":\"WU_FILE_1\",\"name\":\"\\u622a\\u56fe\\u5f55\\u5c4f_Opera_20200619143807.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Fri Jun 19 2020 14:38:07 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"315135\"}', '2020-06-24 23:39:37', '2020-06-24 23:39:37'),
(202, 1, 'admin/client', 'POST', '127.0.0.1', '{\"client_name\":\"\\u6b22\\u6b22\\u4e50\\u4e50\",\"client_mobile\":\"18542101241\",\"client_wechat\":null,\"client_qq\":null,\"client_email\":null,\"id_card\":null,\"prove_img\":\"images\\/0d37dbbe280a06e70b858641e0f1fdda.png\",\"file-prove_img\":null,\"_file_\":null,\"file\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/client\"}', '2020-06-24 23:39:42', '2020-06-24 23:39:42'),
(203, 1, 'admin/client', 'POST', '127.0.0.1', '{\"client_name\":\"\\u6b22\\u6b22\\u4e50\\u4e50\",\"client_mobile\":\"18542101241\",\"client_wechat\":null,\"client_qq\":null,\"client_email\":null,\"id_card\":null,\"prove_img\":\"images\\/0d37dbbe280a06e70b858641e0f1fdda.png\",\"file-prove_img\":null,\"_file_\":null,\"file\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/client\"}', '2020-06-24 23:39:50', '2020-06-24 23:39:50'),
(204, 1, 'admin/client', 'POST', '127.0.0.1', '{\"client_name\":\"\\u6b22\\u6b22\\u4e50\\u4e50\",\"client_mobile\":\"18542101241\",\"client_wechat\":null,\"client_qq\":null,\"client_email\":null,\"id_card\":null,\"prove_img\":\"images\\/0d37dbbe280a06e70b858641e0f1fdda.png\",\"file-prove_img\":null,\"_file_\":null,\"file\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/client\"}', '2020-06-24 23:40:22', '2020-06-24 23:40:22'),
(205, 1, 'admin/client', 'POST', '127.0.0.1', '{\"client_name\":\"\\u6b22\\u6b22\\u4e50\\u4e50\",\"client_mobile\":\"18542101241\",\"client_wechat\":null,\"client_qq\":null,\"client_email\":null,\"id_card\":null,\"prove_img\":\"images\\/0d37dbbe280a06e70b858641e0f1fdda.png\",\"file-prove_img\":null,\"_file_\":null,\"file\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/client\"}', '2020-06-24 23:40:48', '2020-06-24 23:40:48'),
(206, 1, 'admin/client', 'POST', '127.0.0.1', '{\"client_name\":\"\\u6b22\\u6b22\\u4e50\\u4e50\",\"client_mobile\":\"18542101241\",\"client_wechat\":null,\"client_qq\":null,\"client_email\":null,\"id_card\":null,\"prove_img\":\"images\\/0d37dbbe280a06e70b858641e0f1fdda.png\",\"file-prove_img\":null,\"_file_\":null,\"file\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/client\"}', '2020-06-24 23:44:17', '2020-06-24 23:44:17'),
(207, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 23:44:18', '2020-06-24 23:44:18'),
(208, 1, 'admin/client/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 23:44:27', '2020-06-24 23:44:27'),
(209, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 23:44:48', '2020-06-24 23:44:48'),
(210, 1, 'admin/client', 'GET', '127.0.0.1', '[]', '2020-06-24 23:46:21', '2020-06-24 23:46:21'),
(211, 1, 'admin/client', 'GET', '127.0.0.1', '[]', '2020-06-24 23:49:10', '2020-06-24 23:49:10'),
(212, 1, 'admin/client', 'GET', '127.0.0.1', '{\"id\":null,\"client_name\":null,\"client_mobile\":null,\"id_card\":null,\"created_at\":{\"start\":\"2020-06-25 15:50:17\",\"end\":\"2020-06-30 15:49:12\"},\"_pjax\":\"#pjax-container\"}', '2020-06-24 23:50:38', '2020-06-24 23:50:38'),
(213, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 23:50:42', '2020-06-24 23:50:42'),
(214, 1, 'admin/client', 'GET', '127.0.0.1', '[]', '2020-06-24 23:53:32', '2020-06-24 23:53:32'),
(215, 1, 'admin/client', 'GET', '127.0.0.1', '[]', '2020-06-24 23:53:42', '2020-06-24 23:53:42'),
(216, 1, 'admin/client', 'GET', '127.0.0.1', '[]', '2020-06-24 23:57:05', '2020-06-24 23:57:05'),
(217, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-24 23:59:29', '2020-06-24 23:59:29'),
(218, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":null,\"uri\":\"industry\",\"roles\":[null],\"permissions\":null,\"_token\":\"wmfPKbzHfoxKITKjIPxgLgDg6TreEh6HfhJvPd7I\"}', '2020-06-25 00:00:15', '2020-06-25 00:00:15'),
(219, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 00:00:16', '2020-06-25 00:00:16'),
(220, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-25 00:00:20', '2020-06-25 00:00:20'),
(221, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 00:00:23', '2020-06-25 00:00:23'),
(222, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 00:01:17', '2020-06-25 00:01:17'),
(223, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 00:01:26', '2020-06-25 00:01:26'),
(224, 1, 'admin/client/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 00:05:04', '2020-06-25 00:05:04'),
(225, 1, 'admin/client/1/edit', 'GET', '127.0.0.1', '[]', '2020-06-25 00:05:57', '2020-06-25 00:05:57'),
(226, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 00:06:01', '2020-06-25 00:06:01'),
(227, 1, 'admin/client/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 00:06:07', '2020-06-25 00:06:07'),
(228, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-25 02:08:28', '2020-06-25 02:08:28'),
(229, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-25 02:09:13', '2020-06-25 02:09:13'),
(230, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"LpH0uQsbqYdrJCgI9J7snPkRCFW4fNxkrilYJe7l\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-25 02:09:39', '2020-06-25 02:09:39'),
(231, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-25 02:09:49', '2020-06-25 02:09:49'),
(232, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 02:10:17', '2020-06-25 02:10:17'),
(233, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u79df\\u8d41\\u65b9\\u5f0f\",\"remark\":null,\"icon\":null,\"_token\":\"vLpFuyhYr6mhjrlujY77qsUkdK9PfhYDrgu8P2iM\"}', '2020-06-25 02:12:14', '2020-06-25 02:12:14'),
(234, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 02:12:25', '2020-06-25 02:12:25'),
(235, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"19\",\"title\":\"\\u81ea\\u9a7e\",\"remark\":null,\"icon\":null,\"_token\":\"vLpFuyhYr6mhjrlujY77qsUkdK9PfhYDrgu8P2iM\"}', '2020-06-25 02:12:53', '2020-06-25 02:12:53'),
(236, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 02:13:03', '2020-06-25 02:13:03'),
(237, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"19\",\"title\":\"\\u53f8\\u673a(\\u672c\\u516c\\u53f8\\u53f8\\u673a)\",\"remark\":null,\"icon\":null,\"_token\":\"vLpFuyhYr6mhjrlujY77qsUkdK9PfhYDrgu8P2iM\"}', '2020-06-25 02:14:00', '2020-06-25 02:14:00'),
(238, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 02:14:20', '2020-06-25 02:14:20'),
(239, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"19\",\"title\":\"\\u5916\\u8c03(\\u4e34\\u65f6\\u53f8\\u673a)\",\"remark\":null,\"icon\":null,\"_token\":\"vLpFuyhYr6mhjrlujY77qsUkdK9PfhYDrgu8P2iM\"}', '2020-06-25 02:16:01', '2020-06-25 02:16:01'),
(240, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 02:16:14', '2020-06-25 02:16:14'),
(241, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 02:47:49', '2020-06-25 02:47:49'),
(242, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"cars\",\"_token\":\"vLpFuyhYr6mhjrlujY77qsUkdK9PfhYDrgu8P2iM\"}', '2020-06-25 02:48:08', '2020-06-25 02:48:08'),
(243, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"cars\"}', '2020-06-25 02:48:09', '2020-06-25 02:48:09'),
(244, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"cars\",\"exist-table\":\"dcat|cars\",\"model_name\":\"App\\\\Models\\\\CarsModel\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CarsController\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"car_type\",\"translation\":\"\\u6c7d\\u8f66\\u7c7b\\u578b\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u6c7d\\u8f66\\u7c7b\\u578b\"},{\"name\":\"car_num\",\"translation\":\"\\u8f66\\u724c\\u53f7\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u8f66\\u724c\\u53f7\"},{\"name\":\"car_engine_num\",\"translation\":\"\\u53d1\\u52a8\\u673a\\u53f7\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u53d1\\u52a8\\u673a\\u53f7\"},{\"name\":\"car_spot_num\",\"translation\":\"\\u8f66\\u8f86\\u8bc6\\u522b\\u53f7\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8f66\\u8f86\\u8bc6\\u522b\\u53f7\"},{\"name\":\"car_img\",\"translation\":\"\\u8f66\\u8f86\\u56fe\\u7247\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8f66\\u8f86\\u56fe\\u7247\"},{\"name\":\"op_id\",\"translation\":\"\\u64cd\\u4f5c\\u4eba\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u64cd\\u4f5c\\u4eba\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"soft_deletes\":\"1\",\"_token\":\"vLpFuyhYr6mhjrlujY77qsUkdK9PfhYDrgu8P2iM\"}', '2020-06-25 02:48:37', '2020-06-25 02:48:37'),
(245, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-06-25 02:48:42', '2020-06-25 02:48:42'),
(246, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 02:51:23', '2020-06-25 02:51:23'),
(247, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 02:51:31', '2020-06-25 02:51:31'),
(248, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u8f66\\u8f86\\u7ba1\\u7406\",\"icon\":null,\"uri\":\"cars\",\"roles\":[null],\"permissions\":null,\"_token\":\"vLpFuyhYr6mhjrlujY77qsUkdK9PfhYDrgu8P2iM\"}', '2020-06-25 02:52:20', '2020-06-25 02:52:20'),
(249, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 02:52:22', '2020-06-25 02:52:22'),
(250, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-25 02:52:27', '2020-06-25 02:52:27'),
(251, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-25 02:52:49', '2020-06-25 02:52:49'),
(252, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"_token\":\"vLpFuyhYr6mhjrlujY77qsUkdK9PfhYDrgu8P2iM\",\"parent_id\":\"0\",\"title\":\"\\u8f66\\u8f86\\u7ba1\\u7406\",\"icon\":\"fa-automobile\",\"uri\":\"cars\",\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/auth\\/menu\"}', '2020-06-25 02:53:07', '2020-06-25 02:53:07'),
(253, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 02:53:09', '2020-06-25 02:53:09'),
(254, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-25 02:53:16', '2020-06-25 02:53:16'),
(255, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 02:53:40', '2020-06-25 02:53:40'),
(256, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-25 02:54:12', '2020-06-25 02:54:12'),
(257, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-25 02:56:04', '2020-06-25 02:56:04'),
(258, 1, 'admin/cars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 02:56:21', '2020-06-25 02:56:21'),
(259, 1, 'admin/cars/create', 'GET', '127.0.0.1', '[]', '2020-06-25 03:02:32', '2020-06-25 03:02:32'),
(260, 1, 'admin/cars/create', 'GET', '127.0.0.1', '[]', '2020-06-25 03:25:18', '2020-06-25 03:25:18');

-- --------------------------------------------------------

--
-- 表的结构 `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `order`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Auth management', 'auth-management', '', '', 1, 0, '2020-06-01 01:29:00', NULL),
(2, 'Users', 'users', '', '/auth/users*', 2, 1, '2020-06-01 01:29:00', NULL),
(3, 'Roles', 'roles', '', '/auth/roles*', 3, 1, '2020-06-01 01:29:00', NULL),
(4, 'Permissions', 'permissions', '', '/auth/permissions*', 4, 1, '2020-06-01 01:29:00', NULL),
(5, 'Menu', 'menu', '', '/auth/menu*', 5, 1, '2020-06-01 01:29:00', NULL),
(6, 'Operation log', 'operation-log', '', '/auth/logs*', 6, 1, '2020-06-01 01:29:00', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_permission_menu`
--

CREATE TABLE `admin_permission_menu` (
  `permission_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-06-01 01:29:00', '2020-06-01 01:29:01');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$g7HJmKWafH3rWx6CPv11FehK0eYGYKwaiHWc4LHm.1y.kuxTAkJa6', 'Administrator', NULL, NULL, '2020-06-01 01:29:00', '2020-06-01 01:29:00');

-- --------------------------------------------------------

--
-- 表的结构 `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL COMMENT '自增id',
  `car_type` int(11) NOT NULL COMMENT '汽车类型',
  `car_num` varchar(50) NOT NULL COMMENT '车牌号',
  `car_engine_num` varchar(50) DEFAULT NULL COMMENT '发动机号',
  `car_spot_num` varchar(50) DEFAULT NULL COMMENT '车辆识别号',
  `car_img` json DEFAULT NULL COMMENT '车辆图片',
  `op_id` int(11) NOT NULL COMMENT '操作人',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='汽车管理表';

-- --------------------------------------------------------

--
-- 表的结构 `client_detail`
--

CREATE TABLE `client_detail` (
  `id` int(11) NOT NULL COMMENT '自增id',
  `client_name` varchar(255) NOT NULL COMMENT '客户名',
  `client_mobile` varchar(20) DEFAULT NULL COMMENT '客户联系方式',
  `client_wechat` varchar(20) DEFAULT NULL COMMENT '客户微信',
  `client_qq` varchar(20) DEFAULT NULL COMMENT '客户qq',
  `client_email` varchar(50) DEFAULT NULL COMMENT '客户邮箱',
  `id_card` varchar(20) DEFAULT NULL COMMENT '客户身份证号',
  `prove_img` json DEFAULT NULL COMMENT '证件图片',
  `op_id` int(11) NOT NULL COMMENT '操作人id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='客户信息管理表';

--
-- 转存表中的数据 `client_detail`
--

INSERT INTO `client_detail` (`id`, `client_name`, `client_mobile`, `client_wechat`, `client_qq`, `client_email`, `id_card`, `prove_img`, `op_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '欢子大金主', '18321000001', NULL, NULL, NULL, NULL, '[\"images/截图录屏_Opera_20200619143807.png\", \"images/0ac6677277d8c384b865864b1f0465a5.png\"]', 0, '2020-06-24 22:52:20', '2020-06-24 22:52:20', NULL),
(2, '欢欢乐乐', '18542101241', NULL, NULL, NULL, NULL, '[\"images/0d37dbbe280a06e70b858641e0f1fdda.png\"]', 0, '2020-06-24 23:44:17', '2020-06-24 23:44:17', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `failed_jobs`
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
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_01_04_173148_create_admin_tables', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- 表的结构 `rent_car`
--

CREATE TABLE `rent_car` (
  `id` int(11) NOT NULL COMMENT '租赁ID',
  `rent_num` varchar(50) NOT NULL COMMENT '租赁单号',
  `client_id` int(11) NOT NULL COMMENT '客户ID',
  `current_mileage` int(11) DEFAULT '0' COMMENT '当前历程',
  `car_type` int(11) NOT NULL DEFAULT '0' COMMENT '汽车类型',
  `car_id` int(11) NOT NULL DEFAULT '0' COMMENT '汽车ID',
  `rent_type` int(11) NOT NULL DEFAULT '0' COMMENT '租赁方式',
  `rent_at` timestamp NOT NULL COMMENT '租赁时间',
  `rent_day` int(11) NOT NULL DEFAULT '0' COMMENT '预租天数',
  `deposit` float(10,2) DEFAULT '0.00' COMMENT '已交押金',
  `rent` float(10,2) DEFAULT '0.00' COMMENT '已付租金',
  `oil_volume` varchar(100) DEFAULT NULL COMMENT '当前油量',
  `redriving` varchar(50) DEFAULT NULL COMMENT '限驶',
  `odrive_price` float(10,2) DEFAULT '0.00' COMMENT '超驶加价',
  `timeout_price` float(10,2) DEFAULT '0.00' COMMENT '超时加价',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `op_id` int(11) NOT NULL COMMENT '操作人',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租赁单管理表';

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转储表的索引
--

--
-- 表的索引 `admin_industry`
--
ALTER TABLE `admin_industry`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- 表的索引 `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- 表的索引 `admin_permission_menu`
--
ALTER TABLE `admin_permission_menu`
  ADD UNIQUE KEY `admin_permission_menu_permission_id_menu_id_unique` (`permission_id`,`menu_id`);

--
-- 表的索引 `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- 表的索引 `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD UNIQUE KEY `admin_role_menu_role_id_menu_id_unique` (`role_id`,`menu_id`);

--
-- 表的索引 `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD UNIQUE KEY `admin_role_permissions_role_id_permission_id_unique` (`role_id`,`permission_id`);

--
-- 表的索引 `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD UNIQUE KEY `admin_role_users_role_id_user_id_unique` (`role_id`,`user_id`);

--
-- 表的索引 `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- 表的索引 `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_type` (`car_type`);

--
-- 表的索引 `client_detail`
--
ALTER TABLE `client_detail`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `rent_car`
--
ALTER TABLE `rent_car`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin_industry`
--
ALTER TABLE `admin_industry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用表AUTO_INCREMENT `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- 使用表AUTO_INCREMENT `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id';

--
-- 使用表AUTO_INCREMENT `client_detail`
--
ALTER TABLE `client_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `rent_car`
--
ALTER TABLE `rent_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '租赁ID';

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
