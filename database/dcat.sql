-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2020-06-28 19:39:58
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
(22, 19, 0, '外调(临时司机)', NULL, NULL, NULL, '2020-06-25 02:16:02', '2020-06-25 02:16:02', NULL),
(23, 0, 0, '保养分类', NULL, NULL, NULL, '2020-06-26 00:55:37', '2020-06-26 00:55:37', NULL),
(24, 23, 0, '汽车保养', NULL, NULL, NULL, '2020-06-26 00:55:59', '2020-06-26 00:55:59', NULL),
(25, 23, 0, '正时皮带更换', NULL, NULL, NULL, '2020-06-26 00:57:07', '2020-06-26 00:57:07', NULL),
(26, 23, 0, '齿轮油更换', NULL, NULL, NULL, '2020-06-26 00:57:25', '2020-06-26 00:57:25', NULL);

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
(12, 0, 10, '车辆管理', 'fa-automobile', NULL, '2020-06-25 02:52:21', '2020-06-28 02:01:10'),
(13, 12, 11, '车辆管理列表', NULL, 'cars', '2020-06-28 02:00:19', '2020-06-28 02:01:46'),
(14, 12, 12, '保养管理', NULL, 'carsmaintainlog', '2020-06-28 02:02:35', '2020-06-28 02:02:35'),
(15, 12, 13, '维修管理', NULL, 'carservicelog', '2020-06-28 02:44:17', '2020-06-28 02:44:43');

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
(260, 1, 'admin/cars/create', 'GET', '127.0.0.1', '[]', '2020-06-25 03:25:18', '2020-06-25 03:25:18'),
(261, 0, 'admin/auth/login', 'GET', '219.143.149.53', '[]', '2020-06-25 21:53:49', '2020-06-25 21:53:49'),
(262, 0, 'admin/auth/login', 'POST', '219.143.149.53', '{\"_token\":\"hDJnBXan05ytnRndWc8DgHbG98ZubJA2nZHmdciM\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-25 21:53:53', '2020-06-25 21:53:53'),
(263, 1, 'admin', 'GET', '219.143.149.53', '[]', '2020-06-25 21:53:53', '2020-06-25 21:53:53'),
(264, 1, 'admin/auth/users', 'GET', '219.143.149.53', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 21:54:00', '2020-06-25 21:54:00'),
(265, 1, 'admin/auth/roles', 'GET', '219.143.149.53', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 21:54:01', '2020-06-25 21:54:01'),
(266, 1, 'admin/auth/permissions', 'GET', '219.143.149.53', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 21:54:02', '2020-06-25 21:54:02'),
(267, 1, 'admin/auth/menu', 'GET', '219.143.149.53', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 21:54:03', '2020-06-25 21:54:03'),
(268, 1, 'admin/auth/menu', 'GET', '219.143.149.53', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 21:54:50', '2020-06-25 21:54:50'),
(269, 1, 'admin/auth/permissions', 'GET', '219.143.149.53', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 21:54:51', '2020-06-25 21:54:51'),
(270, 1, 'admin/industry', 'GET', '219.143.149.53', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 21:54:53', '2020-06-25 21:54:53'),
(271, 0, 'admin/auth/login', 'GET', '219.143.149.53', '[]', '2020-06-26 00:48:25', '2020-06-26 00:48:25'),
(272, 0, 'admin/auth/login', 'POST', '219.143.149.53', '{\"_token\":\"yLv3RSH1Dq1rJjfTtIHgT82nX82Xqhts9BkcrJsF\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-26 00:48:29', '2020-06-26 00:48:29'),
(273, 1, 'admin', 'GET', '219.143.149.53', '[]', '2020-06-26 00:48:29', '2020-06-26 00:48:29'),
(274, 1, 'admin/cars', 'GET', '219.143.149.53', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 00:48:31', '2020-06-26 00:48:31'),
(275, 1, 'admin/cars/create', 'GET', '219.143.149.53', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 00:48:35', '2020-06-26 00:48:35');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(276, 1, 'admin/cars/create', 'GET', '219.143.149.53', '[]', '2020-06-26 00:48:55', '2020-06-26 00:48:55'),
(277, 1, 'admin/cars/create', 'GET', '219.143.149.53', '[]', '2020-06-26 00:48:55', '2020-06-26 00:48:55'),
(278, 1, 'admin/cars/create', 'GET', '219.143.149.53', '[]', '2020-06-26 00:48:55', '2020-06-26 00:48:55'),
(279, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-26 02:52:22', '2020-06-26 02:52:22'),
(280, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 02:52:24', '2020-06-26 02:52:24'),
(281, 1, 'admin/cars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 02:52:26', '2020-06-26 02:52:26'),
(282, 1, 'admin/cars/create', 'GET', '127.0.0.1', '[]', '2020-06-26 02:52:34', '2020-06-26 02:52:34'),
(283, 1, 'admin/cars/create', 'GET', '127.0.0.1', '[]', '2020-06-26 02:52:35', '2020-06-26 02:52:35'),
(284, 1, 'admin/cars/create', 'GET', '127.0.0.1', '[]', '2020-06-26 02:52:35', '2020-06-26 02:52:35'),
(285, 1, 'admin/cars/create', 'GET', '127.0.0.1', '[]', '2020-06-26 02:52:35', '2020-06-26 02:52:35'),
(286, 1, 'admin/cars/create', 'GET', '127.0.0.1', '[]', '2020-06-26 02:52:35', '2020-06-26 02:52:35'),
(287, 1, 'admin/cars/create', 'GET', '127.0.0.1', '[]', '2020-06-26 02:52:35', '2020-06-26 02:52:35'),
(288, 1, 'admin/cars', 'POST', '127.0.0.1', '{\"car_type\":\"6\",\"car_num\":\"\\u4eacW12EWA\",\"inspection_at\":\"2020-06-30\",\"car_engine_num\":null,\"car_spot_num\":null,\"car_img\":null,\"file-car_img\":null,\"_file_\":null,\"file\":null,\"op_id\":\"1\",\"_token\":\"Be1AhxWi2te6qAFKvzbgTNWxiGC5wY6c6e1dYj7E\"}', '2020-06-26 02:56:37', '2020-06-26 02:56:37'),
(289, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 02:56:37', '2020-06-26 02:56:37'),
(290, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 03:19:30', '2020-06-26 03:19:30'),
(291, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 03:19:58', '2020-06-26 03:19:58'),
(292, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 03:19:59', '2020-06-26 03:19:59'),
(293, 1, 'admin/cars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 03:20:01', '2020-06-26 03:20:01'),
(294, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 03:20:06', '2020-06-26 03:20:06'),
(295, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 03:20:19', '2020-06-26 03:20:19'),
(296, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 03:20:21', '2020-06-26 03:20:21'),
(297, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 03:23:29', '2020-06-26 03:23:29'),
(298, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 03:24:12', '2020-06-26 03:24:12'),
(299, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 03:24:13', '2020-06-26 03:24:13'),
(300, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 03:24:13', '2020-06-26 03:24:13'),
(301, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 03:24:38', '2020-06-26 03:24:38'),
(302, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 03:24:39', '2020-06-26 03:24:39'),
(303, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 03:24:40', '2020-06-26 03:24:40'),
(304, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 03:24:40', '2020-06-26 03:24:40'),
(305, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 03:24:40', '2020-06-26 03:24:40'),
(306, 1, 'admin/cars/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 03:24:44', '2020-06-26 03:24:44'),
(307, 1, 'admin/cars/1', 'GET', '127.0.0.1', '[]', '2020-06-26 03:24:58', '2020-06-26 03:24:58'),
(308, 1, 'admin/cars/1', 'GET', '127.0.0.1', '[]', '2020-06-26 03:25:25', '2020-06-26 03:25:25'),
(309, 1, 'admin/cars/1', 'GET', '127.0.0.1', '[]', '2020-06-26 03:25:42', '2020-06-26 03:25:42'),
(310, 1, 'admin/cars/1', 'GET', '127.0.0.1', '[]', '2020-06-26 03:26:17', '2020-06-26 03:26:17'),
(311, 1, 'admin/cars/1', 'GET', '127.0.0.1', '[]', '2020-06-26 03:26:19', '2020-06-26 03:26:19'),
(312, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 03:27:39', '2020-06-26 03:27:39'),
(313, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"car_type\":null,\"car_num\":null,\"inspection_at\":{\"start\":\"2020-06-26\",\"end\":\"2020-06-26\"},\"created_at\":{\"start\":null,\"end\":null}}', '2020-06-26 03:28:56', '2020-06-26 03:28:56'),
(314, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 04:26:16', '2020-06-26 04:26:16'),
(315, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"cars_maintain_log\"}', '2020-06-26 04:26:19', '2020-06-26 04:26:19'),
(316, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":null}', '2020-06-26 04:26:20', '2020-06-26 04:26:20'),
(317, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"cars_maintain_log\"}', '2020-06-26 04:26:21', '2020-06-26 04:26:21'),
(318, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":null}', '2020-06-26 04:26:27', '2020-06-26 04:26:27'),
(319, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"cars_maintain_log\",\"_token\":\"Be1AhxWi2te6qAFKvzbgTNWxiGC5wY6c6e1dYj7E\"}', '2020-06-26 04:26:32', '2020-06-26 04:26:32'),
(320, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"cars_maintain_log\"}', '2020-06-26 04:26:33', '2020-06-26 04:26:33'),
(321, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"cars_maintain_log\",\"exist-table\":\"dcat|cars_maintain_log\",\"model_name\":\"App\\\\Models\\\\CarsMaintainLogModel\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CarsMaintainLogController\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"type\",\"translation\":\"\\u4fdd\\u517b\\u7c7b\\u578b\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u4fdd\\u517b\\u7c7b\\u578b\"},{\"name\":\"by_at\",\"translation\":\"\\u4fdd\\u517b\\u65f6\\u95f4\",\"type\":\"date\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u4fdd\\u517b\\u65f6\\u95f4\"},{\"name\":\"car_mileage\",\"translation\":\"\\u6c7d\\u8f66\\u91cc\\u7a0b\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u6c7d\\u8f66\\u91cc\\u7a0b\"},{\"name\":\"op_id\",\"translation\":\"\\u6dfb\\u52a0\\u4eba\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u6dfb\\u52a0\\u4eba\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"soft_deletes\":\"1\",\"_token\":\"Be1AhxWi2te6qAFKvzbgTNWxiGC5wY6c6e1dYj7E\"}', '2020-06-26 04:26:51', '2020-06-26 04:26:51'),
(322, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-06-26 04:26:52', '2020-06-26 04:26:52'),
(323, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 04:43:05', '2020-06-26 04:43:05'),
(324, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 04:43:07', '2020-06-26 04:43:07'),
(325, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 04:43:08', '2020-06-26 04:43:08'),
(326, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 04:43:08', '2020-06-26 04:43:08'),
(327, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 04:43:08', '2020-06-26 04:43:08'),
(328, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 04:43:08', '2020-06-26 04:43:08'),
(329, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 04:43:08', '2020-06-26 04:43:08'),
(330, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 04:43:35', '2020-06-26 04:43:35'),
(331, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 04:46:46', '2020-06-26 04:46:46'),
(332, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 04:53:05', '2020-06-26 04:53:05'),
(333, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-26 09:04:08', '2020-06-26 09:04:08'),
(334, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"RTZNSeuCI3q4CurugT1sIKKan35Y2qLGPcKJpTmU\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-26 09:04:11', '2020-06-26 09:04:11'),
(335, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:04:11', '2020-06-26 09:04:11'),
(336, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:04:21', '2020-06-26 09:04:21'),
(337, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:04:21', '2020-06-26 09:04:21'),
(338, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:04:21', '2020-06-26 09:04:21'),
(339, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:04:22', '2020-06-26 09:04:22'),
(340, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:04:22', '2020-06-26 09:04:22'),
(341, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-26 09:04:54', '2020-06-26 09:04:54'),
(342, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-26 09:04:55', '2020-06-26 09:04:55'),
(343, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-26 09:04:55', '2020-06-26 09:04:55'),
(344, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"DHsOi0QHDRZHycv5Rr0m4BuOWHB7BFgVPztgG7g3\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-26 09:04:57', '2020-06-26 09:04:57'),
(345, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-26 09:04:57', '2020-06-26 09:04:57'),
(346, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-26 09:04:59', '2020-06-26 09:04:59'),
(347, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:06:39', '2020-06-26 09:06:39'),
(348, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:07:08', '2020-06-26 09:07:08'),
(349, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:07:10', '2020-06-26 09:07:10'),
(350, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:07:10', '2020-06-26 09:07:10'),
(351, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:07:10', '2020-06-26 09:07:10'),
(352, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:07:11', '2020-06-26 09:07:11'),
(353, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:07:11', '2020-06-26 09:07:11'),
(354, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:07:12', '2020-06-26 09:07:12'),
(355, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:07:12', '2020-06-26 09:07:12'),
(356, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:11:50', '2020-06-26 09:11:50'),
(357, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:11:50', '2020-06-26 09:11:50'),
(358, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:11:51', '2020-06-26 09:11:51'),
(359, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:11:51', '2020-06-26 09:11:51'),
(360, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:11:51', '2020-06-26 09:11:51'),
(361, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:11:51', '2020-06-26 09:11:51'),
(362, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:11:52', '2020-06-26 09:11:52'),
(363, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:11:52', '2020-06-26 09:11:52'),
(364, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:12:10', '2020-06-26 09:12:10'),
(365, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:12:10', '2020-06-26 09:12:10'),
(366, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:12:11', '2020-06-26 09:12:11'),
(367, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:12:11', '2020-06-26 09:12:11'),
(368, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:15:27', '2020-06-26 09:15:27'),
(369, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:15:27', '2020-06-26 09:15:27'),
(370, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-26 09:15:27', '2020-06-26 09:15:27'),
(371, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-27 07:13:20', '2020-06-27 07:13:20'),
(372, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"GZxMwyKryNdK3GcuykWsAAtIfFXq3pwzECkHSzSa\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-27 07:13:25', '2020-06-27 07:13:25'),
(373, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-27 07:13:26', '2020-06-27 07:13:26'),
(374, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 07:13:44', '2020-06-27 07:13:44'),
(375, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 07:14:39', '2020-06-27 07:14:39'),
(376, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 07:29:00', '2020-06-27 07:29:00'),
(377, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-27 07:29:09', '2020-06-27 07:29:09'),
(378, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 07:29:43', '2020-06-27 07:29:43'),
(379, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-27 07:29:48', '2020-06-27 07:29:48'),
(380, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 07:31:41', '2020-06-27 07:31:41'),
(381, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 07:31:44', '2020-06-27 07:31:44'),
(382, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 07:31:50', '2020-06-27 07:31:50'),
(383, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-27 07:31:55', '2020-06-27 07:31:55'),
(384, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 07:33:02', '2020-06-27 07:33:02'),
(385, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-27 07:33:06', '2020-06-27 07:33:06'),
(386, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"Xs5cBsdZm5HJCCNdV4hxCQpL86Nh9qL85CYlA59f\",\"type\":\"24\",\"by_at\":\"2020-06-27\",\"car_mileage\":\"55667\",\"op_id\":\"1\"}', '2020-06-27 07:33:28', '2020-06-27 07:33:28'),
(387, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"Xs5cBsdZm5HJCCNdV4hxCQpL86Nh9qL85CYlA59f\",\"type\":\"24\",\"by_at\":\"2020-06-27\",\"car_mileage\":\"55667\",\"op_id\":\"1\"}', '2020-06-27 07:33:53', '2020-06-27 07:33:53'),
(388, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 07:46:15', '2020-06-27 07:46:15'),
(389, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 07:48:30', '2020-06-27 07:48:30'),
(390, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-27 07:48:34', '2020-06-27 07:48:34'),
(391, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 07:55:36', '2020-06-27 07:55:36'),
(392, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-27 07:55:41', '2020-06-27 07:55:41'),
(393, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 07:57:19', '2020-06-27 07:57:19'),
(394, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-27 07:57:24', '2020-06-27 07:57:24'),
(395, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 08:01:10', '2020-06-27 08:01:10'),
(396, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-27 08:01:14', '2020-06-27 08:01:14'),
(397, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 08:14:19', '2020-06-27 08:14:19'),
(398, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 08:14:21', '2020-06-27 08:14:21'),
(399, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 08:14:27', '2020-06-27 08:14:27'),
(400, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 08:15:04', '2020-06-27 08:15:04'),
(401, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 08:16:19', '2020-06-27 08:16:19'),
(402, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 08:16:23', '2020-06-27 08:16:23'),
(403, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 08:16:29', '2020-06-27 08:16:29'),
(404, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-27 18:50:52', '2020-06-27 18:50:52'),
(405, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-27 18:50:52', '2020-06-27 18:50:52'),
(406, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"umEwqiKCePd66O9vuQqASj8mY5kxjvHJnkgU1ggx\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-27 18:50:56', '2020-06-27 18:50:56'),
(407, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-27 18:50:56', '2020-06-27 18:50:56'),
(408, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 18:51:02', '2020-06-27 18:51:02'),
(409, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 18:51:07', '2020-06-27 18:51:07'),
(410, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 18:51:19', '2020-06-27 18:51:19'),
(411, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 18:51:21', '2020-06-27 18:51:21'),
(412, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"7an5Tk7mXhCoXJ8rev9dsiMQQA1LSRGzjX3LFlqn\",\"type\":\"24\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"10000\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-27 18:51:43', '2020-06-27 18:51:43'),
(413, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 18:51:44', '2020-06-27 18:51:44'),
(414, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 18:51:47', '2020-06-27 18:51:47'),
(415, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 18:52:22', '2020-06-27 18:52:22'),
(416, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:02:57', '2020-06-27 19:02:57'),
(417, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:10:45', '2020-06-27 19:10:45'),
(418, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:12:23', '2020-06-27 19:12:23'),
(419, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 19:12:25', '2020-06-27 19:12:25'),
(420, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 19:12:25', '2020-06-27 19:12:25'),
(421, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:12:43', '2020-06-27 19:12:43'),
(422, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:12:44', '2020-06-27 19:12:44'),
(423, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:12:45', '2020-06-27 19:12:45'),
(424, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:13:26', '2020-06-27 19:13:26'),
(425, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:19:12', '2020-06-27 19:19:12'),
(426, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:19:13', '2020-06-27 19:19:13'),
(427, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:19:13', '2020-06-27 19:19:13'),
(428, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:19:13', '2020-06-27 19:19:13'),
(429, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:19:14', '2020-06-27 19:19:14'),
(430, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:19:57', '2020-06-27 19:19:57'),
(431, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:22:57', '2020-06-27 19:22:57'),
(432, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 19:23:00', '2020-06-27 19:23:00'),
(433, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:23:45', '2020-06-27 19:23:45'),
(434, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 19:23:46', '2020-06-27 19:23:46'),
(435, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 19:23:59', '2020-06-27 19:23:59'),
(436, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 19:24:08', '2020-06-27 19:24:08'),
(437, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 19:24:20', '2020-06-27 19:24:20'),
(438, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:24:22', '2020-06-27 19:24:22'),
(439, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 19:24:23', '2020-06-27 19:24:23'),
(440, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:29:52', '2020-06-27 19:29:52'),
(441, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:31:51', '2020-06-27 19:31:51'),
(442, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 19:31:58', '2020-06-27 19:31:58'),
(443, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"7an5Tk7mXhCoXJ8rev9dsiMQQA1LSRGzjX3LFlqn\",\"type\":\"24\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"5222\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-27 19:32:12', '2020-06-27 19:32:12'),
(444, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 19:34:43', '2020-06-27 19:34:43'),
(445, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 19:34:47', '2020-06-27 19:34:47'),
(446, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"7an5Tk7mXhCoXJ8rev9dsiMQQA1LSRGzjX3LFlqn\",\"type\":\"24\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"5000\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-27 19:35:01', '2020-06-27 19:35:01'),
(447, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 19:36:36', '2020-06-27 19:36:36'),
(448, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 19:36:44', '2020-06-27 19:36:44'),
(449, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"7an5Tk7mXhCoXJ8rev9dsiMQQA1LSRGzjX3LFlqn\",\"type\":\"24\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-27 19:36:54', '2020-06-27 19:36:54'),
(450, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:36:55', '2020-06-27 19:36:55'),
(451, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 19:36:56', '2020-06-27 19:36:56'),
(452, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"7an5Tk7mXhCoXJ8rev9dsiMQQA1LSRGzjX3LFlqn\",\"type\":\"24\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-27 19:37:07', '2020-06-27 19:37:07'),
(453, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:37:07', '2020-06-27 19:37:07'),
(454, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 19:38:01', '2020-06-27 19:38:01'),
(455, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"7an5Tk7mXhCoXJ8rev9dsiMQQA1LSRGzjX3LFlqn\",\"type\":\"24\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-27 19:38:21', '2020-06-27 19:38:21'),
(456, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 19:38:37', '2020-06-27 19:38:37'),
(457, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 19:38:39', '2020-06-27 19:38:39'),
(458, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"7an5Tk7mXhCoXJ8rev9dsiMQQA1LSRGzjX3LFlqn\",\"type\":\"24\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-27 19:38:49', '2020-06-27 19:38:49'),
(459, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:38:49', '2020-06-27 19:38:49'),
(460, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 19:38:58', '2020-06-27 19:38:58'),
(461, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"7an5Tk7mXhCoXJ8rev9dsiMQQA1LSRGzjX3LFlqn\",\"type\":\"24\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-27 19:39:28', '2020-06-27 19:39:28'),
(462, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"7an5Tk7mXhCoXJ8rev9dsiMQQA1LSRGzjX3LFlqn\",\"type\":\"24\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-27 19:39:49', '2020-06-27 19:39:49'),
(463, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"7an5Tk7mXhCoXJ8rev9dsiMQQA1LSRGzjX3LFlqn\",\"type\":\"24\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-27 19:41:14', '2020-06-27 19:41:14'),
(464, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"7an5Tk7mXhCoXJ8rev9dsiMQQA1LSRGzjX3LFlqn\",\"type\":\"24\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-27 19:41:19', '2020-06-27 19:41:19'),
(465, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 19:41:22', '2020-06-27 19:41:22'),
(466, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 19:41:26', '2020-06-27 19:41:26'),
(467, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 19:41:49', '2020-06-27 19:41:49'),
(468, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 19:41:54', '2020-06-27 19:41:54'),
(469, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"7an5Tk7mXhCoXJ8rev9dsiMQQA1LSRGzjX3LFlqn\",\"type\":\"24\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-27 19:42:03', '2020-06-27 19:42:03'),
(470, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 19:45:02', '2020-06-27 19:45:02'),
(471, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 19:45:33', '2020-06-27 19:45:33'),
(472, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"7an5Tk7mXhCoXJ8rev9dsiMQQA1LSRGzjX3LFlqn\",\"type\":\"24\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-27 19:45:44', '2020-06-27 19:45:44'),
(473, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:59:17', '2020-06-27 19:59:17'),
(474, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 19:59:49', '2020-06-27 19:59:49'),
(475, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 19:59:50', '2020-06-27 19:59:50'),
(476, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 21:09:42', '2020-06-27 21:09:42'),
(477, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 21:09:44', '2020-06-27 21:09:44'),
(478, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 21:09:44', '2020-06-27 21:09:44'),
(479, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 21:09:45', '2020-06-27 21:09:45'),
(480, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 21:09:45', '2020-06-27 21:09:45'),
(481, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 21:09:46', '2020-06-27 21:09:46'),
(482, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 21:10:27', '2020-06-27 21:10:27'),
(483, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 21:10:59', '2020-06-27 21:10:59'),
(484, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 21:19:32', '2020-06-27 21:19:32'),
(485, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 21:19:51', '2020-06-27 21:19:51'),
(486, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 22:46:12', '2020-06-27 22:46:12'),
(487, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-27 23:33:08', '2020-06-27 23:33:08'),
(488, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"LC3WBhqPhqCEzJgWFORqygGGw23Cd6DQzY6PKXv7\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-27 23:33:11', '2020-06-27 23:33:11'),
(489, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 23:33:11', '2020-06-27 23:33:11'),
(490, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 23:35:04', '2020-06-27 23:35:04'),
(491, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 23:35:43', '2020-06-27 23:35:43'),
(492, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 23:35:56', '2020-06-27 23:35:56'),
(493, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\",\"type\":\"25\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-27 23:36:05', '2020-06-27 23:36:05'),
(494, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 23:36:06', '2020-06-27 23:36:06'),
(495, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-27 23:36:50', '2020-06-27 23:36:50'),
(496, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-27 23:36:52', '2020-06-27 23:36:52'),
(497, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 23:37:28', '2020-06-27 23:37:28'),
(498, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 23:37:52', '2020-06-27 23:37:52'),
(499, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 23:37:54', '2020-06-27 23:37:54'),
(500, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\",\"type\":\"25\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-27 23:38:14', '2020-06-27 23:38:14'),
(501, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 23:40:33', '2020-06-27 23:40:33'),
(502, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 23:40:35', '2020-06-27 23:40:35'),
(503, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-27 23:41:54', '2020-06-27 23:41:54'),
(504, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-27 23:41:55', '2020-06-27 23:41:55'),
(505, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:01:40', '2020-06-28 01:01:40'),
(506, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:01:43', '2020-06-28 01:01:43'),
(507, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\",\"type\":\"26\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"remark\":null,\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-28 01:01:54', '2020-06-28 01:01:54'),
(508, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\",\"type\":\"26\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"remark\":null,\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-28 01:02:02', '2020-06-28 01:02:02'),
(509, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\",\"type\":\"26\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"remark\":null,\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-28 01:03:21', '2020-06-28 01:03:21'),
(510, 1, 'admin/carsmaintainlog', 'POST', '127.0.0.1', '{\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\",\"type\":\"26\",\"by_at\":\"2020-06-28\",\"car_mileage\":\"522\",\"remark\":null,\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-28 01:03:46', '2020-06-28 01:03:46'),
(511, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 01:03:47', '2020-06-28 01:03:47'),
(512, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 01:25:17', '2020-06-28 01:25:17'),
(513, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"cars_service_log\",\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\"}', '2020-06-28 01:25:24', '2020-06-28 01:25:24'),
(514, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"cars_service_log\"}', '2020-06-28 01:25:24', '2020-06-28 01:25:24'),
(515, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"cars_service_log\",\"exist-table\":\"dcat|cars_service_log\",\"model_name\":\"App\\\\Models\\\\CarsServiceLogModel\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CarsServiceLogController\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"service_at\",\"translation\":\"\\u7ef4\\u4fee\\u65f6\\u95f4\",\"type\":\"date\",\"key\":null,\"default\":null,\"comment\":\"\\u7ef4\\u4fee\\u65f6\\u95f4\"},{\"name\":\"service_moeny\",\"translation\":\"\\u7ef4\\u4fee\\u82b1\\u8d39\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7ef4\\u4fee\\u82b1\\u8d39\"},{\"name\":\"remark\",\"translation\":\"\\u7ef4\\u4fee\\u5907\\u6ce8\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7ef4\\u4fee\\u5907\\u6ce8\"},{\"name\":\"op_id\",\"translation\":\"\\u64cd\\u4f5c\\u4eba\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u64cd\\u4f5c\\u4eba\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"soft_deletes\":\"1\",\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\"}', '2020-06-28 01:25:40', '2020-06-28 01:25:40'),
(516, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-06-28 01:25:41', '2020-06-28 01:25:41'),
(517, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 01:32:44', '2020-06-28 01:32:44'),
(518, 1, 'admin/carservicelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:32:47', '2020-06-28 01:32:47'),
(519, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:35:54', '2020-06-28 01:35:54'),
(520, 1, 'admin/carservicelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:35:55', '2020-06-28 01:35:55'),
(521, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:36:04', '2020-06-28 01:36:04'),
(522, 1, 'admin/carservicelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:36:06', '2020-06-28 01:36:06'),
(523, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:36:41', '2020-06-28 01:36:41'),
(524, 1, 'admin/carservicelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:36:42', '2020-06-28 01:36:42'),
(525, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:36:47', '2020-06-28 01:36:47'),
(526, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:36:47', '2020-06-28 01:36:47'),
(527, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:36:48', '2020-06-28 01:36:48'),
(528, 1, 'admin/carservicelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:36:50', '2020-06-28 01:36:50'),
(529, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 01:36:58', '2020-06-28 01:36:58'),
(530, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 01:36:59', '2020-06-28 01:36:59'),
(531, 1, 'admin/carservicelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:37:02', '2020-06-28 01:37:02'),
(532, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:37:59', '2020-06-28 01:37:59'),
(533, 1, 'admin/carservicelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:38:01', '2020-06-28 01:38:01'),
(534, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:38:17', '2020-06-28 01:38:17'),
(535, 1, 'admin/carservicelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:38:19', '2020-06-28 01:38:19'),
(536, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:39:25', '2020-06-28 01:39:25'),
(537, 1, 'admin/carservicelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:39:29', '2020-06-28 01:39:29'),
(538, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:40:46', '2020-06-28 01:40:46'),
(539, 1, 'admin/carservicelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:40:49', '2020-06-28 01:40:49'),
(540, 1, 'admin/carservicelog', 'POST', '127.0.0.1', '{\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\",\"service_at\":\"2020-06-28\",\"service_moeny\":\"500.00\",\"remark\":\"\\u7ef4\\u4fee\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-28 01:41:08', '2020-06-28 01:41:08'),
(541, 1, 'admin/carservicelog', 'POST', '127.0.0.1', '{\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\",\"service_at\":\"2020-06-28\",\"service_moeny\":\"500.00\",\"remark\":\"\\u7ef4\\u4fee\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-28 01:41:12', '2020-06-28 01:41:12'),
(542, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:42:42', '2020-06-28 01:42:42'),
(543, 1, 'admin/carservicelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:42:44', '2020-06-28 01:42:44'),
(544, 1, 'admin/carservicelog', 'POST', '127.0.0.1', '{\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\",\"service_at\":\"2020-06-28\",\"service_moeny\":\"500.00\",\"remark\":\"\\u6c7d\\u8f66\\u7ef4\\u4fee\",\"op_id\":\"1\",\"cars_id\":\"1\"}', '2020-06-28 01:42:58', '2020-06-28 01:42:58'),
(545, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 01:42:58', '2020-06-28 01:42:58'),
(546, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:45:32', '2020-06-28 01:45:32'),
(547, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:45:51', '2020-06-28 01:45:51'),
(548, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:46:25', '2020-06-28 01:46:25'),
(549, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 01:47:38', '2020-06-28 01:47:38'),
(550, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 01:49:48', '2020-06-28 01:49:48'),
(551, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:49:53', '2020-06-28 01:49:53'),
(552, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:50:16', '2020-06-28 01:50:16'),
(553, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:50:17', '2020-06-28 01:50:17'),
(554, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:51:12', '2020-06-28 01:51:12'),
(555, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:51:13', '2020-06-28 01:51:13'),
(556, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:51:15', '2020-06-28 01:51:15'),
(557, 1, 'admin/carservicelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 01:51:44', '2020-06-28 01:51:44'),
(558, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:54:36', '2020-06-28 01:54:36'),
(559, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:55:24', '2020-06-28 01:55:24'),
(560, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:56:05', '2020-06-28 01:56:05'),
(561, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 01:56:53', '2020-06-28 01:56:53'),
(562, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 01:59:10', '2020-06-28 01:59:10'),
(563, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 01:59:12', '2020-06-28 01:59:12'),
(564, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 01:59:13', '2020-06-28 01:59:13'),
(565, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 01:59:20', '2020-06-28 01:59:20'),
(566, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 01:59:24', '2020-06-28 01:59:24'),
(567, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 01:59:29', '2020-06-28 01:59:29'),
(568, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u4fdd\\u517b\\u8bb0\\u5f55\",\"icon\":null,\"uri\":\"carsmaintainlog\",\"roles\":[null],\"permissions\":null,\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\"}', '2020-06-28 02:00:19', '2020-06-28 02:00:19'),
(569, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:00:19', '2020-06-28 02:00:19'),
(570, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:00:25', '2020-06-28 02:00:25'),
(571, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:00:35', '2020-06-28 02:00:35'),
(572, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:00:36', '2020-06-28 02:00:36'),
(573, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:00:48', '2020-06-28 02:00:48'),
(574, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:00:51', '2020-06-28 02:00:51'),
(575, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-28 02:00:59', '2020-06-28 02:00:59'),
(576, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\",\"parent_id\":\"0\",\"title\":\"\\u8f66\\u8f86\\u7ba1\\u7406\",\"icon\":\"fa-automobile\",\"uri\":null,\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/auth\\/menu\"}', '2020-06-28 02:01:09', '2020-06-28 02:01:09'),
(577, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:01:10', '2020-06-28 02:01:10'),
(578, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-28 02:01:20', '2020-06-28 02:01:20'),
(579, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\",\"parent_id\":\"12\",\"title\":\"\\u8f66\\u8f86\\u7ba1\\u7406\\u5217\\u8868\",\"icon\":null,\"uri\":\"cars\",\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/auth\\/menu\"}', '2020-06-28 02:01:45', '2020-06-28 02:01:45'),
(580, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:01:46', '2020-06-28 02:01:46'),
(581, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u4fdd\\u517b\\u7ba1\\u7406\",\"icon\":null,\"uri\":\"carsmaintainlog\",\"roles\":[null],\"permissions\":null,\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\"}', '2020-06-28 02:02:35', '2020-06-28 02:02:35'),
(582, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:02:35', '2020-06-28 02:02:35'),
(583, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-28 02:02:36', '2020-06-28 02:02:36'),
(584, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-28 02:02:38', '2020-06-28 02:02:38'),
(585, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:02:41', '2020-06-28 02:02:41'),
(586, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:02:43', '2020-06-28 02:02:43'),
(587, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '[]', '2020-06-28 02:06:51', '2020-06-28 02:06:51'),
(588, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '[]', '2020-06-28 02:17:48', '2020-06-28 02:17:48'),
(589, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '[]', '2020-06-28 02:18:43', '2020-06-28 02:18:43'),
(590, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '[]', '2020-06-28 02:23:05', '2020-06-28 02:23:05'),
(591, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '[]', '2020-06-28 02:25:49', '2020-06-28 02:25:49'),
(592, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '[]', '2020-06-28 02:28:30', '2020-06-28 02:28:30'),
(593, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '[]', '2020-06-28 02:31:00', '2020-06-28 02:31:00'),
(594, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '[]', '2020-06-28 02:31:47', '2020-06-28 02:31:47'),
(595, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"type\":\"24\",\"cars_id\":\"1\",\"by_at\":{\"start\":null,\"end\":null},\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:31:57', '2020-06-28 02:31:57'),
(596, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"type\":\"24\",\"cars_id\":\"1\",\"by_at\":{\"start\":null,\"end\":null}}', '2020-06-28 02:32:09', '2020-06-28 02:32:09'),
(597, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"type\":\"24\",\"cars_id\":\"1\",\"by_at\":{\"start\":null,\"end\":null}}', '2020-06-28 02:32:43', '2020-06-28 02:32:43'),
(598, 1, 'admin/carsmaintainlog/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:32:50', '2020-06-28 02:32:50'),
(599, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:38:50', '2020-06-28 02:38:50'),
(600, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:38:51', '2020-06-28 02:38:51'),
(601, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '[]', '2020-06-28 02:43:06', '2020-06-28 02:43:06'),
(602, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:43:57', '2020-06-28 02:43:57'),
(603, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u8f66\\u8f86\\u7ef4\\u4fee\\u8bb0\\u5f55\",\"icon\":null,\"uri\":\"carservicelog\",\"roles\":[null],\"permissions\":null,\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\"}', '2020-06-28 02:44:17', '2020-06-28 02:44:17'),
(604, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:44:17', '2020-06-28 02:44:17'),
(605, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-28 02:44:23', '2020-06-28 02:44:23'),
(606, 1, 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-28 02:44:32', '2020-06-28 02:44:32'),
(607, 1, 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"_token\":\"PPabXEBjs2k2dKrA8vyRQvs9iaPuEUnhkLj4kEJS\",\"parent_id\":\"12\",\"title\":\"\\u7ef4\\u4fee\\u7ba1\\u7406\",\"icon\":null,\"uri\":\"carservicelog\",\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/auth\\/menu\"}', '2020-06-28 02:44:43', '2020-06-28 02:44:43'),
(608, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:44:43', '2020-06-28 02:44:43'),
(609, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:44:46', '2020-06-28 02:44:46'),
(610, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:44:47', '2020-06-28 02:44:47'),
(611, 1, 'admin/carservicelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:44:49', '2020-06-28 02:44:49'),
(612, 1, 'admin/carservicelog', 'GET', '127.0.0.1', '[]', '2020-06-28 02:45:54', '2020-06-28 02:45:54'),
(613, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:45:57', '2020-06-28 02:45:57'),
(614, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:45:58', '2020-06-28 02:45:58'),
(615, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:46:00', '2020-06-28 02:46:00'),
(616, 1, 'admin/carservicelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:46:00', '2020-06-28 02:46:00'),
(617, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:46:01', '2020-06-28 02:46:01'),
(618, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:46:28', '2020-06-28 02:46:28'),
(619, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:46:31', '2020-06-28 02:46:31');

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
  `inspection_at` date DEFAULT NULL COMMENT '检车到期日',
  `hinsure_at` date DEFAULT NULL COMMENT '交强险到期日',
  `binsure_at` date DEFAULT NULL COMMENT '商业险到期日',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间',
  `by_mileage` int(11) DEFAULT '0' COMMENT '保养里程',
  `pd_mileage` int(11) DEFAULT '0' COMMENT '正时皮带更换里程',
  `cly_mileage` int(11) DEFAULT '0' COMMENT '齿轮油更换里程',
  `by_status` tinyint(2) DEFAULT '0' COMMENT '保养0否1是',
  `pd_status` tinyint(2) DEFAULT '0' COMMENT '皮带是否需要更换0否1是',
  `cly_status` tinyint(2) DEFAULT '0' COMMENT '齿轮油是否需要更换0否1是'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='汽车管理表';

--
-- 转存表中的数据 `cars`
--

INSERT INTO `cars` (`id`, `car_type`, `car_num`, `car_engine_num`, `car_spot_num`, `car_img`, `op_id`, `inspection_at`, `hinsure_at`, `binsure_at`, `created_at`, `updated_at`, `deleted_at`, `by_mileage`, `pd_mileage`, `cly_mileage`, `by_status`, `pd_status`, `cly_status`) VALUES
(1, 6, '京W12EWA', NULL, NULL, '[]', 1, '2020-06-30', NULL, NULL, '2020-06-26 02:56:37', '2020-06-28 01:03:46', NULL, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `cars_maintain_log`
--

CREATE TABLE `cars_maintain_log` (
  `id` int(11) NOT NULL COMMENT '自增id',
  `type` int(11) NOT NULL COMMENT '保养类型',
  `by_at` date DEFAULT NULL COMMENT '保养时间',
  `car_mileage` int(11) NOT NULL DEFAULT '0' COMMENT '汽车里程',
  `cars_id` int(11) NOT NULL COMMENT '汽车ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间',
  `op_id` int(11) NOT NULL COMMENT '添加人',
  `remark` varchar(255) DEFAULT NULL COMMENT '保养备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='汽车保养记录表';

--
-- 转存表中的数据 `cars_maintain_log`
--

INSERT INTO `cars_maintain_log` (`id`, `type`, `by_at`, `car_mileage`, `cars_id`, `created_at`, `updated_at`, `deleted_at`, `op_id`, `remark`) VALUES
(6, 24, '2020-06-28', 522, 1, '2020-06-27 19:38:49', '2020-06-27 19:38:49', NULL, 1, ''),
(7, 25, '2020-06-28', 522, 1, '2020-06-27 23:36:05', '2020-06-27 23:36:05', NULL, 1, ''),
(8, 26, '2020-06-28', 522, 1, '2020-06-28 01:03:46', '2020-06-28 01:03:46', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `cars_service_log`
--

CREATE TABLE `cars_service_log` (
  `id` int(11) NOT NULL COMMENT '自增id',
  `service_at` date NOT NULL COMMENT '维修时间',
  `service_moeny` float(10,2) DEFAULT NULL COMMENT '维修花费',
  `remark` varchar(255) DEFAULT NULL COMMENT '维修备注',
  `cars_id` int(11) NOT NULL COMMENT '所属车辆',
  `op_id` int(11) NOT NULL COMMENT '操作人',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='汽车维修管理表';

--
-- 转存表中的数据 `cars_service_log`
--

INSERT INTO `cars_service_log` (`id`, `service_at`, `service_moeny`, `remark`, `cars_id`, `op_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2020-06-28', 500.00, '汽车维修', 1, 1, '2020-06-28 01:42:58', '2020-06-28 01:42:58', NULL);

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
  `rent_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '租赁时间',
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
-- 表的索引 `cars_maintain_log`
--
ALTER TABLE `cars_maintain_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `cars_service_log`
--
ALTER TABLE `cars_service_log`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用表AUTO_INCREMENT `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=620;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `cars_maintain_log`
--
ALTER TABLE `cars_maintain_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `cars_service_log`
--
ALTER TABLE `cars_service_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=2;

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
