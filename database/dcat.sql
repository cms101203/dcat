-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2020-07-02 18:36:33
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
(26, 23, 0, '齿轮油更换', NULL, NULL, NULL, '2020-06-26 00:57:25', '2020-06-26 00:57:25', NULL),
(27, 0, 0, '保险类型', NULL, NULL, NULL, '2020-06-27 21:38:48', '2020-06-27 21:38:48', NULL),
(28, 27, 0, '交强险', NULL, NULL, NULL, '2020-06-27 21:39:07', '2020-06-27 21:39:07', NULL),
(29, 27, 0, '商业保险', NULL, NULL, NULL, '2020-06-27 21:39:23', '2020-06-27 21:39:23', NULL),
(30, 0, 0, '员工类型', 'fa-address-book-o', NULL, NULL, '2020-06-29 00:14:32', '2020-06-29 00:14:32', NULL),
(31, 30, 0, '司机', NULL, NULL, NULL, '2020-06-29 00:14:44', '2020-06-29 00:14:44', NULL),
(32, 30, 0, '财务', NULL, NULL, NULL, '2020-06-29 00:15:02', '2020-06-29 00:15:02', NULL),
(33, 0, 0, '请假类型', NULL, NULL, NULL, '2020-06-29 01:38:57', '2020-06-29 01:38:57', NULL),
(34, 33, 0, '事假', NULL, NULL, NULL, '2020-06-29 01:39:21', '2020-06-29 01:39:21', NULL),
(35, 33, 0, '病假', NULL, NULL, NULL, '2020-06-29 01:39:33', '2020-06-29 01:39:33', NULL),
(36, 33, 0, '婚假', NULL, NULL, NULL, '2020-06-29 01:39:49', '2020-06-29 01:39:49', NULL),
(37, 33, 0, '丧嫁', NULL, NULL, NULL, '2020-06-29 01:40:09', '2020-06-29 01:40:09', NULL),
(38, 33, 0, '产假', NULL, NULL, NULL, '2020-06-29 01:40:24', '2020-06-29 01:40:24', NULL),
(39, 33, 0, '年假', NULL, NULL, NULL, '2020-06-29 01:40:42', '2020-06-29 01:40:42', NULL),
(40, 0, 0, '油量分类', NULL, NULL, NULL, '2020-06-30 07:05:17', '2020-06-30 07:06:15', '2020-06-30 07:06:15');

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
(15, 12, 13, '维修管理', NULL, 'carservicelog', '2020-06-28 02:44:17', '2020-06-28 02:44:43'),
(16, 12, 14, '保险缴纳记录', NULL, 'carsinsurancelog', '2020-06-28 06:40:00', '2020-06-28 06:40:00'),
(17, 0, 15, '员工管理', 'fa-user-secret', NULL, '2020-06-28 08:01:29', '2020-06-29 01:11:24'),
(18, 17, 16, '员工列表', 'fa-address-book-o', 'staffs', '2020-06-29 01:11:47', '2020-06-29 01:11:58'),
(19, 17, 17, '员工工资管理', 'fa-money', 'staffwage', '2020-06-29 01:12:55', '2020-06-29 01:12:55'),
(20, 17, 18, '请假管理', NULL, 'staffleave', '2020-06-29 02:52:48', '2020-06-29 02:52:48'),
(21, 0, 19, '租车管理', 'fa-address-book-o', NULL, '2020-06-29 21:28:26', '2020-06-29 21:28:26'),
(22, 21, 20, '租车订单列表', NULL, 'rentcars', '2020-06-29 21:28:52', '2020-06-29 21:28:52'),
(23, 0, 21, '还车管理', NULL, NULL, '2020-07-02 01:46:39', '2020-07-02 01:46:39'),
(24, 23, 22, '还车管理列表', NULL, 'returncars', '2020-07-02 01:46:58', '2020-07-02 01:46:58');

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
(619, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 02:46:31', '2020-06-28 02:46:31'),
(620, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"VK6JOigHFwG0oYEE4Iu0iQPJHpwzjc1Ave5ZOCu9\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-28 05:35:42', '2020-06-28 05:35:42'),
(621, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 05:35:42', '2020-06-28 05:35:42'),
(622, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 05:35:44', '2020-06-28 05:35:44'),
(623, 1, 'admin/carservicelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 05:35:45', '2020-06-28 05:35:45'),
(624, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 05:35:47', '2020-06-28 05:35:47'),
(625, 1, 'admin/cars/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 05:35:57', '2020-06-28 05:35:57'),
(626, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 05:36:05', '2020-06-28 05:36:05'),
(627, 1, 'admin/carservicelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 05:36:07', '2020-06-28 05:36:07'),
(628, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 05:36:08', '2020-06-28 05:36:08'),
(629, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 05:48:49', '2020-06-28 05:48:49'),
(630, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"car_insurance_log\",\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\"}', '2020-06-28 05:48:54', '2020-06-28 05:48:54'),
(631, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"car_insurance_log\"}', '2020-06-28 05:48:54', '2020-06-28 05:48:54');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(632, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"car_insurance_log\",\"exist-table\":\"dcat|car_insurance_log\",\"model_name\":\"App\\\\Models\\\\CarInsuranceLogModel\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CarInsuranceLogController\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"type\",\"translation\":\"\\u4fdd\\u9669\\u7c7b\\u578b\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u4fdd\\u9669\\u7c7b\\u578b\"},{\"name\":\"pay_at\",\"translation\":\"\\u7f34\\u7eb3\\u65e5\\u671f\",\"type\":\"date\",\"key\":null,\"default\":null,\"comment\":\"\\u7f34\\u7eb3\\u65e5\\u671f\"},{\"name\":\"cars_id\",\"translation\":\"\\u6240\\u5c5e\\u8f66\\u8f86\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u6240\\u5c5e\\u8f66\\u8f86\"},{\"name\":\"op_id\",\"translation\":\"\\u64cd\\u4f5c\\u4eba\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u64cd\\u4f5c\\u4eba\"},{\"name\":\"pay_money\",\"translation\":\"\\u7f34\\u7eb3\\u91d1\\u989d\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7f34\\u7eb3\\u91d1\\u989d\"},{\"name\":\"remark\",\"translation\":\"\\u5907\\u6ce8\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5907\\u6ce8\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"soft_deletes\":\"1\",\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\"}', '2020-06-28 05:49:06', '2020-06-28 05:49:06'),
(633, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-06-28 05:49:06', '2020-06-28 05:49:06'),
(634, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:04:33', '2020-06-28 06:04:33'),
(635, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:07:28', '2020-06-28 06:07:28'),
(636, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 06:07:28', '2020-06-28 06:07:28'),
(637, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 06:07:50', '2020-06-28 06:07:50'),
(638, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 06:09:03', '2020-06-28 06:09:03'),
(639, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 06:09:54', '2020-06-28 06:09:54'),
(640, 1, 'admin/carsinsurancelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 06:09:57', '2020-06-28 06:09:57'),
(641, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 06:10:15', '2020-06-28 06:10:15'),
(642, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 06:10:32', '2020-06-28 06:10:32'),
(643, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 06:12:11', '2020-06-28 06:12:11'),
(644, 1, 'admin/carsinsurancelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 06:12:24', '2020-06-28 06:12:24'),
(645, 1, 'admin/carsinsurancelog', 'POST', '127.0.0.1', '{\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\",\"type\":\"28\",\"pay_at\":\"2020-06-28\",\"cars_id\":\"1\",\"op_id\":\"1\",\"pay_money\":\"2,000.00\",\"remark\":null}', '2020-06-28 06:12:46', '2020-06-28 06:12:46'),
(646, 1, 'admin/carsinsurancelog', 'POST', '127.0.0.1', '{\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\",\"type\":\"28\",\"pay_at\":\"2020-06-28\",\"cars_id\":\"1\",\"op_id\":\"1\",\"pay_money\":\"2,000.00\",\"remark\":null}', '2020-06-28 06:12:50', '2020-06-28 06:12:50'),
(647, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 06:21:30', '2020-06-28 06:21:30'),
(648, 1, 'admin/carsinsurancelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 06:21:35', '2020-06-28 06:21:35'),
(649, 1, 'admin/carsinsurancelog', 'POST', '127.0.0.1', '{\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\",\"type\":\"28\",\"pay_at\":\"2020-06-28\",\"cars_id\":\"1\",\"op_id\":\"1\",\"pay_money\":\"1,200.00\",\"remark\":null}', '2020-06-28 06:21:46', '2020-06-28 06:21:46'),
(650, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:21:46', '2020-06-28 06:21:46'),
(651, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:25:01', '2020-06-28 06:25:01'),
(652, 1, 'admin/carsinsurancelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 06:25:03', '2020-06-28 06:25:03'),
(653, 1, 'admin/carsinsurancelog', 'POST', '127.0.0.1', '{\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\",\"type\":\"28\",\"pay_at\":\"2020-06-28\",\"cars_id\":\"1\",\"op_id\":\"1\",\"pay_money\":\"1,200.00\",\"remark\":null}', '2020-06-28 06:25:14', '2020-06-28 06:25:14'),
(654, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:25:14', '2020-06-28 06:25:14'),
(655, 1, 'admin/carsinsurancelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 06:25:32', '2020-06-28 06:25:32'),
(656, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 06:27:08', '2020-06-28 06:27:08'),
(657, 1, 'admin/cars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:27:25', '2020-06-28 06:27:25'),
(658, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:34:02', '2020-06-28 06:34:02'),
(659, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 06:34:04', '2020-06-28 06:34:04'),
(660, 1, 'admin/carsinsurancelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 06:34:05', '2020-06-28 06:34:05'),
(661, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 06:34:39', '2020-06-28 06:34:39'),
(662, 1, 'admin/carsinsurancelog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 06:34:41', '2020-06-28 06:34:41'),
(663, 1, 'admin/carsinsurancelog', 'POST', '127.0.0.1', '{\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\",\"type\":\"28\",\"pay_at\":\"2020-06-28\",\"start_at\":\"2020-06-28\",\"end_at\":\"2021-06-28\",\"cars_id\":\"1\",\"op_id\":\"1\",\"pay_money\":\"1,500.00\",\"remark\":null}', '2020-06-28 06:35:39', '2020-06-28 06:35:39'),
(664, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:35:39', '2020-06-28 06:35:39'),
(665, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 06:36:56', '2020-06-28 06:36:56'),
(666, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 06:37:12', '2020-06-28 06:37:12'),
(667, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 06:37:56', '2020-06-28 06:37:56'),
(668, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:38:48', '2020-06-28 06:38:48'),
(669, 1, 'admin/carservicelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:38:49', '2020-06-28 06:38:49'),
(670, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:38:50', '2020-06-28 06:38:50'),
(671, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:39:29', '2020-06-28 06:39:29'),
(672, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:39:30', '2020-06-28 06:39:30'),
(673, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u4fdd\\u9669\\u7f34\\u7eb3\\u8bb0\\u5f55\",\"icon\":null,\"uri\":\"carsinsurancelog\",\"roles\":[null],\"permissions\":null,\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\"}', '2020-06-28 06:40:00', '2020-06-28 06:40:00'),
(674, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:40:00', '2020-06-28 06:40:00'),
(675, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-28 06:40:07', '2020-06-28 06:40:07'),
(676, 1, 'admin/carsinsurancelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:40:13', '2020-06-28 06:40:13'),
(677, 1, 'admin/carsinsurancelog', 'GET', '127.0.0.1', '[]', '2020-06-28 06:45:40', '2020-06-28 06:45:40'),
(678, 1, 'admin/carsinsurancelog', 'GET', '127.0.0.1', '[]', '2020-06-28 06:46:02', '2020-06-28 06:46:02'),
(679, 1, 'admin/carsinsurancelog', 'GET', '127.0.0.1', '[]', '2020-06-28 06:49:11', '2020-06-28 06:49:11'),
(680, 1, 'admin/carsinsurancelog', 'GET', '127.0.0.1', '[]', '2020-06-28 06:49:35', '2020-06-28 06:49:35'),
(681, 1, 'admin/carsinsurancelog/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\"}', '2020-06-28 06:49:52', '2020-06-28 06:49:52'),
(682, 1, 'admin/carsinsurancelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:49:52', '2020-06-28 06:49:52'),
(683, 1, 'admin/carsinsurancelog/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:49:57', '2020-06-28 06:49:57'),
(684, 1, 'admin/carsinsurancelog/3', 'PUT', '127.0.0.1', '{\"type\":\"28\",\"pay_at\":\"2020-06-28\",\"start_at\":\"2020-06-28\",\"end_at\":\"2021-06-29\",\"cars_id\":\"1\",\"op_id\":\"1\",\"pay_money\":\"1,500.00\",\"remark\":null,\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/carsinsurancelog\"}', '2020-06-28 06:50:10', '2020-06-28 06:50:10'),
(685, 1, 'admin/carsinsurancelog/3', 'PUT', '127.0.0.1', '{\"type\":\"28\",\"pay_at\":\"2020-06-28\",\"start_at\":\"2020-06-28\",\"end_at\":\"2021-06-29\",\"cars_id\":\"1\",\"op_id\":\"1\",\"pay_money\":\"1,500.00\",\"remark\":null,\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/carsinsurancelog\"}', '2020-06-28 06:50:30', '2020-06-28 06:50:30'),
(686, 1, 'admin/carsinsurancelog/3/edit', 'GET', '127.0.0.1', '[]', '2020-06-28 06:54:34', '2020-06-28 06:54:34'),
(687, 1, 'admin/carsinsurancelog/3', 'PUT', '127.0.0.1', '{\"type\":\"28\",\"pay_at\":\"2020-06-28\",\"start_at\":\"2020-06-28\",\"end_at\":\"2021-06-29\",\"cars_id\":\"1\",\"op_id\":\"1\",\"pay_money\":\"1,500.00\",\"remark\":null,\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/carsinsurancelog\"}', '2020-06-28 06:54:45', '2020-06-28 06:54:45'),
(688, 1, 'admin/carsinsurancelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:54:45', '2020-06-28 06:54:45'),
(689, 1, 'admin/carsinsurancelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:55:46', '2020-06-28 06:55:46'),
(690, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:56:12', '2020-06-28 06:56:12'),
(691, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:56:15', '2020-06-28 06:56:15'),
(692, 1, 'admin/carservicelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:56:15', '2020-06-28 06:56:15'),
(693, 1, 'admin/carsinsurancelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:56:19', '2020-06-28 06:56:19'),
(694, 1, 'admin/carservicelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:56:20', '2020-06-28 06:56:20'),
(695, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:56:21', '2020-06-28 06:56:21'),
(696, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:56:22', '2020-06-28 06:56:22'),
(697, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 06:57:06', '2020-06-28 06:57:06'),
(698, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 07:40:08', '2020-06-28 07:40:08'),
(699, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 07:40:10', '2020-06-28 07:40:10'),
(700, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-28 07:41:21', '2020-06-28 07:41:21'),
(701, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 07:43:19', '2020-06-28 07:43:19'),
(702, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 07:45:11', '2020-06-28 07:45:11'),
(703, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 07:57:31', '2020-06-28 07:57:31'),
(704, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"driver_details\",\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\"}', '2020-06-28 07:57:38', '2020-06-28 07:57:38'),
(705, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"driver_details\"}', '2020-06-28 07:57:38', '2020-06-28 07:57:38'),
(706, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"driver_details\",\"exist-table\":\"dcat|driver_details\",\"model_name\":\"App\\\\Models\\\\DriverDetailModel\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\DriverDetailController\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"name\",\"translation\":\"\\u59d3\\u540d\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u59d3\\u540d\"},{\"name\":\"mobile\",\"translation\":\"\\u7535\\u8bdd\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u7535\\u8bdd\"},{\"name\":\"id_card\",\"translation\":\"\\u8eab\\u4efd\\u8bc1\\u53f7\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8eab\\u4efd\\u8bc1\\u53f7\"},{\"name\":\"photo_img\",\"translation\":\"\\u76f8\\u5173\\u8bc1\\u4ef6\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u76f8\\u5173\\u8bc1\\u4ef6\"},{\"name\":\"driver_status\",\"translation\":\"\\u53f8\\u673a\\u72b6\\u60010\\u7a7a\\u95f2\\u4e2d1\\u5de5\\u4f5c\\u4e2d2\\u4f11\\u606f\\u4e2d3\\u5df2\\u79bb\\u804c\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u53f8\\u673a\\u72b6\\u60010\\u7a7a\\u95f2\\u4e2d1\\u5de5\\u4f5c\\u4e2d2\\u4f11\\u606f\\u4e2d3\\u5df2\\u79bb\\u804c\"},{\"name\":\"type\",\"translation\":\"\\u53f8\\u673a\\u7c7b\\u578b1\\u672c\\u516c\\u53f8\\u81ea\\u5df12\\u5916\\u8c03\\u53f8\\u673a\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":\"1\",\"comment\":\"\\u53f8\\u673a\\u7c7b\\u578b1\\u672c\\u516c\\u53f8\\u81ea\\u5df12\\u5916\\u8c03\\u53f8\\u673a\"},{\"name\":\"op_id\",\"translation\":\"\\u6dfb\\u52a0\\u4eba\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u6dfb\\u52a0\\u4eba\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"soft_deletes\":\"1\",\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\"}', '2020-06-28 07:57:58', '2020-06-28 07:57:58'),
(707, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-06-28 07:57:58', '2020-06-28 07:57:58'),
(708, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 07:59:23', '2020-06-28 07:59:23'),
(709, 1, 'admin/carsinsurancelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 07:59:51', '2020-06-28 07:59:51'),
(710, 1, 'admin/carservicelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 07:59:52', '2020-06-28 07:59:52'),
(711, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 07:59:53', '2020-06-28 07:59:53'),
(712, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 07:59:53', '2020-06-28 07:59:53'),
(713, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 08:00:03', '2020-06-28 08:00:03'),
(714, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u53f8\\u673a\\u7ba1\\u7406\",\"icon\":\"fa-user-secret\",\"uri\":\"drivers\",\"roles\":[null],\"permissions\":null,\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\"}', '2020-06-28 08:01:29', '2020-06-28 08:01:29'),
(715, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 08:01:29', '2020-06-28 08:01:29'),
(716, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-28 08:01:35', '2020-06-28 08:01:35'),
(717, 1, 'admin/drivers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 08:01:38', '2020-06-28 08:01:38'),
(718, 1, 'admin/drivers', 'GET', '127.0.0.1', '[]', '2020-06-28 08:02:12', '2020-06-28 08:02:12'),
(719, 1, 'admin/drivers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 08:02:18', '2020-06-28 08:02:18'),
(720, 1, 'admin/drivers/create', 'GET', '127.0.0.1', '[]', '2020-06-28 08:07:51', '2020-06-28 08:07:51'),
(721, 1, 'admin/drivers', 'POST', '127.0.0.1', '{\"name\":\"\\u6b22\\u5b50\",\"mobile\":\"18310890223\",\"id_card\":null,\"photo_img\":null,\"file-photo_img\":null,\"_file_\":null,\"file\":null,\"driver_status\":\"0\",\"type\":\"1\",\"op_id\":\"1\",\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\"}', '2020-06-28 08:08:44', '2020-06-28 08:08:44'),
(722, 1, 'admin/drivers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 08:08:44', '2020-06-28 08:08:44'),
(723, 1, 'admin/drivers', 'GET', '127.0.0.1', '[]', '2020-06-28 08:10:25', '2020-06-28 08:10:25'),
(724, 1, 'admin/drivers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 08:10:35', '2020-06-28 08:10:35'),
(725, 1, 'admin/drivers/1/edit', 'GET', '127.0.0.1', '[]', '2020-06-28 08:14:57', '2020-06-28 08:14:57'),
(726, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 08:15:08', '2020-06-28 08:15:08'),
(727, 1, 'admin/client/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 08:15:10', '2020-06-28 08:15:10'),
(728, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 08:15:14', '2020-06-28 08:15:14'),
(729, 1, 'admin/client/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 08:15:18', '2020-06-28 08:15:18'),
(730, 1, 'admin/client/create', 'GET', '127.0.0.1', '[]', '2020-06-28 08:16:12', '2020-06-28 08:16:12'),
(731, 1, 'admin/client/create', 'GET', '127.0.0.1', '[]', '2020-06-28 08:16:28', '2020-06-28 08:16:28'),
(732, 1, 'admin/drivers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 08:18:41', '2020-06-28 08:18:41'),
(733, 1, 'admin/drivers/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 08:20:12', '2020-06-28 08:20:12'),
(734, 1, 'admin/drivers/1', 'GET', '127.0.0.1', '[]', '2020-06-28 08:20:13', '2020-06-28 08:20:13'),
(735, 1, 'admin/drivers/1', 'GET', '127.0.0.1', '[]', '2020-06-28 08:21:02', '2020-06-28 08:21:02'),
(736, 1, 'admin/drivers/1', 'GET', '127.0.0.1', '[]', '2020-06-28 08:21:04', '2020-06-28 08:21:04'),
(737, 1, 'admin/drivers/1', 'GET', '127.0.0.1', '[]', '2020-06-28 08:21:12', '2020-06-28 08:21:12'),
(738, 1, 'admin/drivers/1', 'GET', '127.0.0.1', '[]', '2020-06-28 08:21:37', '2020-06-28 08:21:37'),
(739, 1, 'admin/drivers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 08:21:44', '2020-06-28 08:21:44'),
(740, 1, 'admin/drivers', 'GET', '127.0.0.1', '[]', '2020-06-28 08:27:28', '2020-06-28 08:27:28'),
(741, 1, 'admin/drivers/1', 'PUT', '127.0.0.1', '{\"driver_status\":\"1\",\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\",\"_method\":\"PUT\"}', '2020-06-28 08:27:34', '2020-06-28 08:27:34'),
(742, 1, 'admin/drivers/1', 'PUT', '127.0.0.1', '{\"driver_status\":\"2\",\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\",\"_method\":\"PUT\"}', '2020-06-28 08:27:37', '2020-06-28 08:27:37'),
(743, 1, 'admin/drivers/1', 'PUT', '127.0.0.1', '{\"driver_status\":\"3\",\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\",\"_method\":\"PUT\"}', '2020-06-28 08:27:39', '2020-06-28 08:27:39'),
(744, 1, 'admin/drivers/1', 'PUT', '127.0.0.1', '{\"driver_status\":\"0\",\"_token\":\"ik8VlgksPC9DFun0QaPpExoPDr0SAO2mEZgVoS8Q\",\"_method\":\"PUT\"}', '2020-06-28 08:27:40', '2020-06-28 08:27:40'),
(745, 1, 'admin/drivers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 08:28:03', '2020-06-28 08:28:03'),
(746, 1, 'admin/drivers', 'GET', '127.0.0.1', '[]', '2020-06-28 08:30:48', '2020-06-28 08:30:48'),
(747, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-28 22:44:16', '2020-06-28 22:44:16'),
(748, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"mdQItiYaoVj9ykhDljadimeFsu4KEgV4EhzuLMfX\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-28 22:44:23', '2020-06-28 22:44:23'),
(749, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-28 22:44:24', '2020-06-28 22:44:24'),
(750, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-28 22:46:54', '2020-06-28 22:46:54'),
(751, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-28 22:46:54', '2020-06-28 22:46:54'),
(752, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:47:09', '2020-06-28 22:47:09'),
(753, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:47:11', '2020-06-28 22:47:11'),
(754, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:47:13', '2020-06-28 22:47:13'),
(755, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:47:17', '2020-06-28 22:47:17'),
(756, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:47:19', '2020-06-28 22:47:19'),
(757, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:47:23', '2020-06-28 22:47:23'),
(758, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:47:29', '2020-06-28 22:47:29'),
(759, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:47:30', '2020-06-28 22:47:30'),
(760, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:47:31', '2020-06-28 22:47:31'),
(761, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:47:36', '2020-06-28 22:47:36'),
(762, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:47:36', '2020-06-28 22:47:36'),
(763, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-28 22:48:25', '2020-06-28 22:48:25'),
(764, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-28 22:48:27', '2020-06-28 22:48:27'),
(765, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-28 22:49:14', '2020-06-28 22:49:14'),
(766, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:49:17', '2020-06-28 22:49:17'),
(767, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-28 22:51:32', '2020-06-28 22:51:32'),
(768, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-28 22:51:46', '2020-06-28 22:51:46'),
(769, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"0CVa6ibtZW3sf4OhXmmr1WG45Df5TUxhxXx3gwOi\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-28 22:51:50', '2020-06-28 22:51:50'),
(770, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-28 22:51:50', '2020-06-28 22:51:50'),
(771, 1, 'admin/drivers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:51:53', '2020-06-28 22:51:53'),
(772, 1, 'admin/drivers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:51:58', '2020-06-28 22:51:58'),
(773, 1, 'admin/drivers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:53:34', '2020-06-28 22:53:34'),
(774, 1, 'admin/drivers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:53:48', '2020-06-28 22:53:48'),
(775, 1, 'admin/drivers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 22:53:57', '2020-06-28 22:53:57'),
(776, 1, 'admin/drivers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 23:02:31', '2020-06-28 23:02:31'),
(777, 1, 'admin/drivers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 23:03:51', '2020-06-28 23:03:51'),
(778, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 23:22:48', '2020-06-28 23:22:48'),
(779, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"driver_wage\",\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-28 23:22:55', '2020-06-28 23:22:55'),
(780, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"driver_wage\"}', '2020-06-28 23:22:56', '2020-06-28 23:22:56'),
(781, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"driver_wage\",\"exist-table\":\"dcat|driver_wage\",\"model_name\":\"App\\\\Models\\\\DriverWageModel\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\DriverWageController\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"driver_id\",\"translation\":\"\\u6240\\u5c5e\\u53f8\\u673a\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u6240\\u5c5e\\u53f8\\u673a\"},{\"name\":\"basic_wage\",\"translation\":\"\\u57fa\\u672c\\u5de5\\u8d44\",\"type\":\"float\",\"key\":null,\"default\":null,\"comment\":\"\\u57fa\\u672c\\u5de5\\u8d44\"},{\"name\":\"tc_money\",\"translation\":\"\\u63d0\\u6210\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":\"0.00\",\"comment\":\"\\u63d0\\u6210\"},{\"name\":\"bonus\",\"translation\":\"\\u5956\\u91d1\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":\"0.00\",\"comment\":\"\\u5956\\u91d1\"},{\"name\":\"violate_num\",\"translation\":\"\\u8fdd\\u7ae0\\u6b21\\u6570\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u8fdd\\u7ae0\\u6b21\\u6570\"},{\"name\":\"deduction\",\"translation\":\"\\u6263\\u9664\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":\"0.00\",\"comment\":\"\\u6263\\u9664\"},{\"name\":\"surplus\",\"translation\":\"\\u73b0\\u91d1\\u7ed3\\u4f59\",\"type\":\"float\",\"key\":null,\"default\":null,\"comment\":\"\\u73b0\\u91d1\\u7ed3\\u4f59\"},{\"name\":\"cycle_start\",\"translation\":\"\\u5f00\\u59cb\\u65f6\\u95f4\",\"type\":\"date\",\"key\":null,\"default\":null,\"comment\":\"\\u5f00\\u59cb\\u65f6\\u95f4\"},{\"name\":\"cycle_end\",\"translation\":\"\\u7ed3\\u675f\\u65f6\\u95f4\",\"type\":\"date\",\"key\":null,\"default\":null,\"comment\":\"\\u7ed3\\u675f\\u65f6\\u95f4\"},{\"name\":\"remark\",\"translation\":\"\\u5907\\u6ce8\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5907\\u6ce8\"},{\"name\":\"op_id\",\"translation\":\"\\u64cd\\u4f5c\\u4eba\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u64cd\\u4f5c\\u4eba\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"soft_deletes\":\"1\",\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-28 23:23:09', '2020-06-28 23:23:09'),
(782, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-06-28 23:23:10', '2020-06-28 23:23:10'),
(783, 1, 'admin/drivers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 23:35:21', '2020-06-28 23:35:21'),
(784, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 23:35:31', '2020-06-28 23:35:31'),
(785, 1, 'admin/drivers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 23:36:25', '2020-06-28 23:36:25'),
(786, 1, 'admin/driverwage/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 23:36:27', '2020-06-28 23:36:27'),
(787, 1, 'admin/drivers', 'GET', '127.0.0.1', '[]', '2020-06-28 23:40:29', '2020-06-28 23:40:29'),
(788, 1, 'admin/driverwage/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 23:40:30', '2020-06-28 23:40:30'),
(789, 1, 'admin/drivers', 'GET', '127.0.0.1', '[]', '2020-06-28 23:41:59', '2020-06-28 23:41:59'),
(790, 1, 'admin/driverwage/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 23:42:01', '2020-06-28 23:42:01'),
(791, 1, 'admin/drivers', 'GET', '127.0.0.1', '[]', '2020-06-28 23:42:51', '2020-06-28 23:42:51'),
(792, 1, 'admin/driverwage/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 23:42:53', '2020-06-28 23:42:53'),
(793, 1, 'admin/drivers', 'GET', '127.0.0.1', '[]', '2020-06-28 23:43:44', '2020-06-28 23:43:44'),
(794, 1, 'admin/driverwage/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 23:43:46', '2020-06-28 23:43:46'),
(795, 1, 'admin/drivers', 'GET', '127.0.0.1', '[]', '2020-06-28 23:44:42', '2020-06-28 23:44:42'),
(796, 1, 'admin/driverwage/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 23:44:43', '2020-06-28 23:44:43'),
(797, 1, 'admin/drivers', 'GET', '127.0.0.1', '[]', '2020-06-28 23:44:58', '2020-06-28 23:44:58'),
(798, 1, 'admin/driverwage/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 23:45:00', '2020-06-28 23:45:00'),
(799, 1, 'admin/driverwage', 'POST', '127.0.0.1', '{\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\",\"driver_id\":\"1\",\"basic_wage\":\"5,000.00\",\"tc_money\":null,\"bonus\":null,\"violate_num\":\"0\",\"deduction\":null,\"surplus\":null,\"cycle_start\":\"2020-05-01\",\"cycle_end\":\"2020-05-31\",\"remark\":null,\"op_id\":\"1\"}', '2020-06-28 23:45:35', '2020-06-28 23:45:35'),
(800, 1, 'admin/driverwage', 'POST', '127.0.0.1', '{\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\",\"driver_id\":\"1\",\"basic_wage\":\"5,000.00\",\"tc_money\":null,\"bonus\":null,\"violate_num\":\"0\",\"deduction\":null,\"surplus\":null,\"cycle_start\":\"2020-05-01\",\"cycle_end\":\"2020-05-31\",\"remark\":null,\"op_id\":\"1\"}', '2020-06-28 23:45:50', '2020-06-28 23:45:50'),
(801, 1, 'admin/drivers', 'GET', '127.0.0.1', '[]', '2020-06-28 23:48:05', '2020-06-28 23:48:05'),
(802, 1, 'admin/driverwage/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 23:48:34', '2020-06-28 23:48:34'),
(803, 1, 'admin/driverwage', 'POST', '127.0.0.1', '{\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\",\"driver_id\":\"1\",\"basic_wage\":null,\"tc_money\":\"5,000.00\",\"bonus\":null,\"violate_num\":\"0\",\"deduction\":null,\"surplus\":\"5,000.00\",\"cycle_start\":\"2020-06-01\",\"cycle_end\":\"2020-06-30\",\"remark\":null,\"op_id\":\"1\"}', '2020-06-28 23:48:55', '2020-06-28 23:48:55'),
(804, 1, 'admin/driverwage', 'POST', '127.0.0.1', '{\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\",\"driver_id\":\"1\",\"basic_wage\":\"5,000.00\",\"tc_money\":null,\"bonus\":null,\"violate_num\":\"0\",\"deduction\":null,\"surplus\":\"5,000.00\",\"cycle_start\":\"2020-06-01\",\"cycle_end\":\"2020-06-30\",\"remark\":null,\"op_id\":\"1\"}', '2020-06-28 23:49:08', '2020-06-28 23:49:08'),
(805, 1, 'admin/drivers', 'GET', '127.0.0.1', '[]', '2020-06-28 23:50:26', '2020-06-28 23:50:26'),
(806, 1, 'admin/driverwage/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-28 23:50:29', '2020-06-28 23:50:29'),
(807, 1, 'admin/driverwage', 'POST', '127.0.0.1', '{\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\",\"driver_id\":\"1\",\"basic_wage\":\"5,000.00\",\"tc_money\":null,\"bonus\":null,\"violate_num\":\"0\",\"deduction\":null,\"surplus\":\"5,000.00\",\"cycle_start\":\"2020-06-01\",\"cycle_end\":\"2020-06-30\",\"remark\":null,\"op_id\":\"1\"}', '2020-06-28 23:50:54', '2020-06-28 23:50:54'),
(808, 1, 'admin/drivers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-28 23:50:54', '2020-06-28 23:50:54'),
(809, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 00:14:01', '2020-06-29 00:14:01'),
(810, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u5458\\u5de5\\u7c7b\\u578b\",\"remark\":null,\"icon\":\"fa-address-book-o\",\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-29 00:14:32', '2020-06-29 00:14:32'),
(811, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 00:14:32', '2020-06-29 00:14:32'),
(812, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"30\",\"title\":\"\\u53f8\\u673a\",\"remark\":null,\"icon\":null,\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-29 00:14:44', '2020-06-29 00:14:44'),
(813, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 00:14:44', '2020-06-29 00:14:44'),
(814, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"30\",\"title\":\"\\u8d22\\u52a1\",\"remark\":null,\"icon\":null,\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-29 00:15:02', '2020-06-29 00:15:02'),
(815, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 00:15:02', '2020-06-29 00:15:02'),
(816, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 00:41:55', '2020-06-29 00:41:55'),
(817, 1, 'admin/auth/menu/17/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-29 00:41:59', '2020-06-29 00:41:59'),
(818, 1, 'admin/auth/menu/17', 'PUT', '127.0.0.1', '{\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\",\"parent_id\":\"0\",\"title\":\"\\u5458\\u5de5\\u7ba1\\u7406\",\"icon\":\"fa-user-secret\",\"uri\":\"staffs\",\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/auth\\/menu\"}', '2020-06-29 00:42:17', '2020-06-29 00:42:17'),
(819, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 00:42:18', '2020-06-29 00:42:18'),
(820, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-29 00:42:20', '2020-06-29 00:42:20'),
(821, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 00:42:23', '2020-06-29 00:42:23'),
(822, 1, 'admin/staffs', 'GET', '127.0.0.1', '[]', '2020-06-29 00:42:53', '2020-06-29 00:42:53'),
(823, 1, 'admin/staffs/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 00:43:05', '2020-06-29 00:43:05'),
(824, 1, 'admin/staffs/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u6b22\\u5b50\",\"mobile\":\"18310890223\",\"id_card\":null,\"photo_img\":null,\"file-photo_img\":null,\"_file_\":null,\"file\":null,\"staff_type\":\"31\",\"staff_status\":\"1\",\"driver_status\":\"0\",\"type\":\"1\",\"op_id\":\"1\",\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/staffs\"}', '2020-06-29 00:43:22', '2020-06-29 00:43:22'),
(825, 1, 'admin/staffs/1/edit', 'GET', '127.0.0.1', '[]', '2020-06-29 00:44:06', '2020-06-29 00:44:06'),
(826, 1, 'admin/staffs/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u6b22\\u5b50\",\"mobile\":\"18310890223\",\"id_card\":null,\"photo_img\":null,\"file-photo_img\":null,\"_file_\":null,\"file\":null,\"staff_type\":\"31\",\"staff_status\":\"1\",\"driver_status\":\"0\",\"type\":\"1\",\"op_id\":\"1\",\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/staffs\"}', '2020-06-29 00:44:17', '2020-06-29 00:44:17'),
(827, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 00:44:17', '2020-06-29 00:44:17'),
(828, 1, 'admin/staffs', 'GET', '127.0.0.1', '[]', '2020-06-29 00:45:11', '2020-06-29 00:45:11'),
(829, 1, 'admin/driverwage/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-29 00:45:18', '2020-06-29 00:45:18'),
(830, 1, 'admin/staffs/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 00:45:32', '2020-06-29 00:45:32'),
(831, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 00:47:56', '2020-06-29 00:47:56'),
(832, 1, 'admin/staffs', 'GET', '127.0.0.1', '[]', '2020-06-29 00:47:56', '2020-06-29 00:47:56'),
(833, 1, 'admin/staffs', 'GET', '127.0.0.1', '[]', '2020-06-29 00:48:54', '2020-06-29 00:48:54'),
(834, 1, 'admin/staffs', 'GET', '127.0.0.1', '[]', '2020-06-29 00:49:54', '2020-06-29 00:49:54'),
(835, 1, 'admin/staffs', 'GET', '127.0.0.1', '[]', '2020-06-29 01:08:37', '2020-06-29 01:08:37'),
(836, 1, 'admin/staffwage/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-29 01:08:39', '2020-06-29 01:08:39'),
(837, 1, 'admin/staffs', 'GET', '127.0.0.1', '[]', '2020-06-29 01:09:16', '2020-06-29 01:09:16'),
(838, 1, 'admin/staffwage/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-29 01:09:18', '2020-06-29 01:09:18'),
(839, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:09:29', '2020-06-29 01:09:29'),
(840, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:11:09', '2020-06-29 01:11:09'),
(841, 1, 'admin/auth/menu/17/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-29 01:11:15', '2020-06-29 01:11:15'),
(842, 1, 'admin/auth/menu/17', 'PUT', '127.0.0.1', '{\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\",\"parent_id\":\"0\",\"title\":\"\\u5458\\u5de5\\u7ba1\\u7406\",\"icon\":\"fa-user-secret\",\"uri\":null,\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/auth\\/menu\"}', '2020-06-29 01:11:23', '2020-06-29 01:11:23'),
(843, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:11:24', '2020-06-29 01:11:24'),
(844, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"17\",\"title\":\"\\u5458\\u5de5\\u5217\\u8868\",\"icon\":\"fa-address-book-o\",\"uri\":null,\"roles\":[null],\"permissions\":null,\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-29 01:11:47', '2020-06-29 01:11:47'),
(845, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:11:47', '2020-06-29 01:11:47'),
(846, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-06-29 01:11:54', '2020-06-29 01:11:54'),
(847, 1, 'admin/auth/menu/18', 'PUT', '127.0.0.1', '{\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\",\"parent_id\":\"17\",\"title\":\"\\u5458\\u5de5\\u5217\\u8868\",\"icon\":\"fa-address-book-o\",\"uri\":\"staffs\",\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/auth\\/menu\"}', '2020-06-29 01:11:58', '2020-06-29 01:11:58'),
(848, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:11:58', '2020-06-29 01:11:58'),
(849, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"17\",\"title\":\"\\u5458\\u5de5\\u5de5\\u8d44\\u7ba1\\u7406\",\"icon\":\"fa-money\",\"uri\":\"staffwage\",\"roles\":[null],\"permissions\":null,\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-29 01:12:55', '2020-06-29 01:12:55'),
(850, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:12:55', '2020-06-29 01:12:55'),
(851, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:13:08', '2020-06-29 01:13:08'),
(852, 1, 'admin/staffs', 'GET', '127.0.0.1', '[]', '2020-06-29 01:13:11', '2020-06-29 01:13:11'),
(853, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:13:13', '2020-06-29 01:13:13'),
(854, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:13:19', '2020-06-29 01:13:19'),
(855, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:13:21', '2020-06-29 01:13:21'),
(856, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:13:22', '2020-06-29 01:13:22'),
(857, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:13:27', '2020-06-29 01:13:27'),
(858, 1, 'admin/staffwage', 'GET', '127.0.0.1', '[]', '2020-06-29 01:18:12', '2020-06-29 01:18:12'),
(859, 1, 'admin/staffwage/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:18:26', '2020-06-29 01:18:26'),
(860, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:20:15', '2020-06-29 01:20:15'),
(861, 1, 'admin/staffwage', 'GET', '127.0.0.1', '[]', '2020-06-29 01:21:09', '2020-06-29 01:21:09'),
(862, 1, 'admin/staffwage', 'GET', '127.0.0.1', '[]', '2020-06-29 01:21:39', '2020-06-29 01:21:39'),
(863, 1, 'admin/staffwage', 'GET', '127.0.0.1', '[]', '2020-06-29 01:22:15', '2020-06-29 01:22:15'),
(864, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:22:22', '2020-06-29 01:22:22'),
(865, 1, 'admin/staffs/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:22:24', '2020-06-29 01:22:24'),
(866, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:24:49', '2020-06-29 01:24:49'),
(867, 1, 'admin/staffs/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:24:55', '2020-06-29 01:24:55'),
(868, 1, 'admin/staffs/1', 'PUT', '127.0.0.1', '{\"_id\":\"gSiLUbkXMFU2gyhk\",\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\",\"upload_column\":\"photo_img\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"2.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Wed Jun 10 2020 07:53:32 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"23333\"}', '2020-06-29 01:25:03', '2020-06-29 01:25:03'),
(869, 1, 'admin/staffs/1', 'PUT', '127.0.0.1', '{\"_id\":\"gSiLUbkXMFU2gyhk\",\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\",\"_method\":\"PUT\",\"photo_img\":\"images\\/2.png\"}', '2020-06-29 01:25:03', '2020-06-29 01:25:03'),
(870, 1, 'admin/staffs/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u6b22\\u5b50\",\"mobile\":\"18310890223\",\"id_card\":null,\"photo_img\":\"images\\/2.png\",\"file-photo_img\":null,\"_file_\":null,\"file\":null,\"staff_type\":\"31\",\"staff_status\":\"1\",\"driver_status\":\"0\",\"type\":\"1\",\"op_id\":\"1\",\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/staffs\"}', '2020-06-29 01:25:07', '2020-06-29 01:25:07'),
(871, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:25:07', '2020-06-29 01:25:07'),
(872, 1, 'admin/staffs/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:25:12', '2020-06-29 01:25:12'),
(873, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:25:18', '2020-06-29 01:25:18'),
(874, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:25:19', '2020-06-29 01:25:19'),
(875, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:25:21', '2020-06-29 01:25:21'),
(876, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:25:22', '2020-06-29 01:25:22'),
(877, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:25:24', '2020-06-29 01:25:24'),
(878, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:25:50', '2020-06-29 01:25:50'),
(879, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:27:04', '2020-06-29 01:27:04'),
(880, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:28:45', '2020-06-29 01:28:45'),
(881, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:28:46', '2020-06-29 01:28:46'),
(882, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:28:47', '2020-06-29 01:28:47'),
(883, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:28:48', '2020-06-29 01:28:48'),
(884, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:38:18', '2020-06-29 01:38:18'),
(885, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u8bf7\\u5047\\u7c7b\\u578b\",\"remark\":null,\"icon\":null,\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-29 01:38:57', '2020-06-29 01:38:57'),
(886, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:38:57', '2020-06-29 01:38:57'),
(887, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"33\",\"title\":\"\\u4e8b\\u5047\",\"remark\":null,\"icon\":null,\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-29 01:39:21', '2020-06-29 01:39:21'),
(888, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:39:21', '2020-06-29 01:39:21'),
(889, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"33\",\"title\":\"\\u75c5\\u5047\",\"remark\":null,\"icon\":null,\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-29 01:39:33', '2020-06-29 01:39:33'),
(890, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:39:33', '2020-06-29 01:39:33'),
(891, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"33\",\"title\":\"\\u5a5a\\u5047\",\"remark\":null,\"icon\":null,\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-29 01:39:49', '2020-06-29 01:39:49'),
(892, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:39:49', '2020-06-29 01:39:49'),
(893, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"33\",\"title\":\"\\u4e27\\u5ac1\",\"remark\":null,\"icon\":null,\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-29 01:40:09', '2020-06-29 01:40:09'),
(894, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:40:09', '2020-06-29 01:40:09'),
(895, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"33\",\"title\":\"\\u4ea7\\u5047\",\"remark\":null,\"icon\":null,\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-29 01:40:24', '2020-06-29 01:40:24'),
(896, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:40:24', '2020-06-29 01:40:24'),
(897, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":\"33\",\"title\":\"\\u5e74\\u5047\",\"remark\":null,\"icon\":null,\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-29 01:40:42', '2020-06-29 01:40:42'),
(898, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:40:42', '2020-06-29 01:40:42'),
(899, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:41:13', '2020-06-29 01:41:13'),
(900, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:41:19', '2020-06-29 01:41:19'),
(901, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"staff_leave\",\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-29 01:41:27', '2020-06-29 01:41:27'),
(902, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"staff_leave\"}', '2020-06-29 01:41:27', '2020-06-29 01:41:27'),
(903, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"staff_leave\",\"exist-table\":\"dcat|staff_leave\",\"model_name\":\"App\\\\Models\\\\StaffLeaveModel\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\StaffLeaveController\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"staff_id\",\"translation\":\"\\u6240\\u5c5e\\u5458\\u5de5\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u6240\\u5c5e\\u5458\\u5de5\"},{\"name\":\"type\",\"translation\":\"\\u8bf7\\u5047\\u7c7b\\u578b\",\"type\":\"tinyInteger\",\"key\":null,\"default\":null,\"comment\":\"\\u8bf7\\u5047\\u7c7b\\u578b\"},{\"name\":\"duration\",\"translation\":\"\\u8bf7\\u5047\\u5929\\u6570\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u8bf7\\u5047\\u5929\\u6570\"},{\"name\":\"duration_strat\",\"translation\":\"\\u5047\\u671f\\u5f00\\u59cb\\u65f6\\u95f4\",\"type\":\"timestamp\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5047\\u671f\\u5f00\\u59cb\\u65f6\\u95f4\"},{\"name\":\"duration_end\",\"translation\":\"\\u5047\\u671f\\u7ed3\\u675f\\u65f6\\u95f4\",\"type\":\"timestamp\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5047\\u671f\\u7ed3\\u675f\\u65f6\\u95f4\"},{\"name\":\"remark\",\"translation\":\"\\u5907\\u6ce8\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5907\\u6ce8\"},{\"name\":\"op_id\",\"translation\":\"\\u64cd\\u4f5c\\u4eba\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u64cd\\u4f5c\\u4eba\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"soft_deletes\":\"1\",\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-29 01:41:40', '2020-06-29 01:41:40'),
(904, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-06-29 01:41:40', '2020-06-29 01:41:40'),
(905, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:48:18', '2020-06-29 01:48:18'),
(906, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 01:49:15', '2020-06-29 01:49:15'),
(907, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-29 01:49:18', '2020-06-29 01:49:18'),
(908, 1, 'admin/staffs', 'GET', '127.0.0.1', '[]', '2020-06-29 02:45:08', '2020-06-29 02:45:08'),
(909, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 02:45:09', '2020-06-29 02:45:09'),
(910, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 02:45:11', '2020-06-29 02:45:11'),
(911, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-29 02:45:15', '2020-06-29 02:45:15'),
(912, 1, 'admin/staffs', 'GET', '127.0.0.1', '[]', '2020-06-29 02:46:58', '2020-06-29 02:46:58'),
(913, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-29 02:47:04', '2020-06-29 02:47:04'),
(914, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 02:49:31', '2020-06-29 02:49:31'),
(915, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 02:50:33', '2020-06-29 02:50:33');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(916, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 02:50:33', '2020-06-29 02:50:33'),
(917, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-29 02:50:37', '2020-06-29 02:50:37'),
(918, 1, 'admin/staffs', 'GET', '127.0.0.1', '[]', '2020-06-29 02:51:01', '2020-06-29 02:51:01'),
(919, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-29 02:51:03', '2020-06-29 02:51:03'),
(920, 1, 'admin/staffs', 'GET', '127.0.0.1', '[]', '2020-06-29 02:51:38', '2020-06-29 02:51:38'),
(921, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-29 02:51:41', '2020-06-29 02:51:41'),
(922, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 02:51:47', '2020-06-29 02:51:47'),
(923, 1, 'admin/staffwage/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 02:51:50', '2020-06-29 02:51:50'),
(924, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 02:52:30', '2020-06-29 02:52:30'),
(925, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"17\",\"title\":\"\\u8bf7\\u5047\\u7ba1\\u7406\",\"icon\":null,\"uri\":\"staffleave\",\"roles\":[null],\"permissions\":null,\"_token\":\"UA5cqozB8Q0VWotylsgYPoM14uM4XzFoMt9Uzs6C\"}', '2020-06-29 02:52:48', '2020-06-29 02:52:48'),
(926, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 02:52:48', '2020-06-29 02:52:48'),
(927, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-29 02:52:52', '2020-06-29 02:52:52'),
(928, 1, 'admin/staffleave', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 02:52:55', '2020-06-29 02:52:55'),
(929, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 02:52:57', '2020-06-29 02:52:57'),
(930, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '[]', '2020-06-29 02:54:25', '2020-06-29 02:54:25'),
(931, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '[]', '2020-06-29 02:58:23', '2020-06-29 02:58:23'),
(932, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '[]', '2020-06-29 03:05:04', '2020-06-29 03:05:04'),
(933, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '[]', '2020-06-29 03:06:15', '2020-06-29 03:06:15'),
(934, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '[]', '2020-06-29 03:08:16', '2020-06-29 03:08:16'),
(935, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '[]', '2020-06-29 03:33:15', '2020-06-29 03:33:15'),
(936, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '[]', '2020-06-29 03:34:07', '2020-06-29 03:34:07'),
(937, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '[]', '2020-06-29 03:39:55', '2020-06-29 03:39:55'),
(938, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '[]', '2020-06-29 03:41:08', '2020-06-29 03:41:08'),
(939, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '[]', '2020-06-29 03:51:39', '2020-06-29 03:51:39'),
(940, 1, 'admin/staffleave/create', 'GET', '127.0.0.1', '[]', '2020-06-29 03:52:35', '2020-06-29 03:52:35'),
(941, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-29 21:23:33', '2020-06-29 21:23:33'),
(942, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"FVWSYOlybGJ5fkugEDHXLDas6YaYZbdsBve2Q6hV\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-29 21:23:38', '2020-06-29 21:23:38'),
(943, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-29 21:23:39', '2020-06-29 21:23:39'),
(944, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 21:23:58', '2020-06-29 21:23:58'),
(945, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 21:24:00', '2020-06-29 21:24:00'),
(946, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 21:24:03', '2020-06-29 21:24:03'),
(947, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"rent_car\",\"_token\":\"biXE52Bqba6WjCvJ5XbX15AnUxZBI92RTJcIw9pm\"}', '2020-06-29 21:24:10', '2020-06-29 21:24:10'),
(948, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"rent_car\"}', '2020-06-29 21:24:11', '2020-06-29 21:24:11'),
(949, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"rent_car\",\"exist-table\":\"dcat|rent_car\",\"model_name\":\"App\\\\Models\\\\RentCarModel\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\RentCarController\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"rent_num\",\"translation\":\"\\u79df\\u8d41\\u5355\\u53f7\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u79df\\u8d41\\u5355\\u53f7\"},{\"name\":\"client_id\",\"translation\":\"\\u5ba2\\u6237ID\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u5ba2\\u6237ID\"},{\"name\":\"staff_id\",\"translation\":\"\\u76f8\\u5173\\u53f8\\u673a\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u76f8\\u5173\\u53f8\\u673a\"},{\"name\":\"current_mileage\",\"translation\":\"\\u5f53\\u524d\\u5386\\u7a0b\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u5f53\\u524d\\u5386\\u7a0b\"},{\"name\":\"car_type\",\"translation\":\"\\u6c7d\\u8f66\\u7c7b\\u578b\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u6c7d\\u8f66\\u7c7b\\u578b\"},{\"name\":\"car_id\",\"translation\":\"\\u6c7d\\u8f66ID\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u6c7d\\u8f66ID\"},{\"name\":\"rent_type\",\"translation\":\"\\u79df\\u8d41\\u65b9\\u5f0f\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u79df\\u8d41\\u65b9\\u5f0f\"},{\"name\":\"rent_at\",\"translation\":\"\\u79df\\u8d41\\u65f6\\u95f4\",\"type\":\"timestamp\",\"key\":null,\"default\":\"CURRENT_TIMESTAMP\",\"comment\":\"\\u79df\\u8d41\\u65f6\\u95f4\"},{\"name\":\"rent_day\",\"translation\":\"\\u9884\\u79df\\u5929\\u6570\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u9884\\u79df\\u5929\\u6570\"},{\"name\":\"deposit\",\"translation\":\"\\u5df2\\u4ea4\\u62bc\\u91d1\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":\"0.00\",\"comment\":\"\\u5df2\\u4ea4\\u62bc\\u91d1\"},{\"name\":\"rent\",\"translation\":\"\\u5df2\\u4ed8\\u79df\\u91d1\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":\"0.00\",\"comment\":\"\\u5df2\\u4ed8\\u79df\\u91d1\"},{\"name\":\"oil_volume\",\"translation\":\"\\u5f53\\u524d\\u6cb9\\u91cf\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5f53\\u524d\\u6cb9\\u91cf\"},{\"name\":\"redriving\",\"translation\":\"\\u9650\\u9a76\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u9650\\u9a76\"},{\"name\":\"odrive_price\",\"translation\":\"\\u8d85\\u9a76\\u52a0\\u4ef7\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":\"0.00\",\"comment\":\"\\u8d85\\u9a76\\u52a0\\u4ef7\"},{\"name\":\"timeout_price\",\"translation\":\"\\u8d85\\u65f6\\u52a0\\u4ef7\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":\"0.00\",\"comment\":\"\\u8d85\\u65f6\\u52a0\\u4ef7\"},{\"name\":\"remark\",\"translation\":\"\\u5907\\u6ce8\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5907\\u6ce8\"},{\"name\":\"op_id\",\"translation\":\"\\u64cd\\u4f5c\\u4eba\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u64cd\\u4f5c\\u4eba\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"soft_deletes\":\"1\",\"_token\":\"biXE52Bqba6WjCvJ5XbX15AnUxZBI92RTJcIw9pm\"}', '2020-06-29 21:24:23', '2020-06-29 21:24:23'),
(950, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-06-29 21:24:25', '2020-06-29 21:24:25'),
(951, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 21:27:39', '2020-06-29 21:27:39'),
(952, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u79df\\u8f66\\u7ba1\\u7406\",\"icon\":\"fa-address-book-o\",\"uri\":null,\"roles\":[null],\"permissions\":null,\"_token\":\"biXE52Bqba6WjCvJ5XbX15AnUxZBI92RTJcIw9pm\"}', '2020-06-29 21:28:26', '2020-06-29 21:28:26'),
(953, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 21:28:26', '2020-06-29 21:28:26'),
(954, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"21\",\"title\":\"\\u79df\\u8f66\\u8ba2\\u5355\\u5217\\u8868\",\"icon\":null,\"uri\":\"rentcars\",\"roles\":[null],\"permissions\":null,\"_token\":\"biXE52Bqba6WjCvJ5XbX15AnUxZBI92RTJcIw9pm\"}', '2020-06-29 21:28:52', '2020-06-29 21:28:52'),
(955, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 21:28:53', '2020-06-29 21:28:53'),
(956, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-29 21:28:55', '2020-06-29 21:28:55'),
(957, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 21:28:58', '2020-06-29 21:28:58'),
(958, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 21:29:03', '2020-06-29 21:29:03'),
(959, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 21:37:30', '2020-06-29 21:37:30'),
(960, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 21:40:01', '2020-06-29 21:40:01'),
(961, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 21:40:03', '2020-06-29 21:40:03'),
(962, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 21:40:19', '2020-06-29 21:40:19'),
(963, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 21:52:37', '2020-06-29 21:52:37'),
(964, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:04:53', '2020-06-29 22:04:53'),
(965, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:05:20', '2020-06-29 22:05:20'),
(966, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:05:52', '2020-06-29 22:05:52'),
(967, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:05:54', '2020-06-29 22:05:54'),
(968, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:06:09', '2020-06-29 22:06:09'),
(969, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:06:45', '2020-06-29 22:06:45'),
(970, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:06:46', '2020-06-29 22:06:46'),
(971, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:06:46', '2020-06-29 22:06:46'),
(972, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:06:52', '2020-06-29 22:06:52'),
(973, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:06:52', '2020-06-29 22:06:52'),
(974, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:06:52', '2020-06-29 22:06:52'),
(975, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:06:52', '2020-06-29 22:06:52'),
(976, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:06:53', '2020-06-29 22:06:53'),
(977, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:06:53', '2020-06-29 22:06:53'),
(978, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:07:33', '2020-06-29 22:07:33'),
(979, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:11', '2020-06-29 22:09:11'),
(980, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:12', '2020-06-29 22:09:12'),
(981, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:12', '2020-06-29 22:09:12'),
(982, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:12', '2020-06-29 22:09:12'),
(983, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:12', '2020-06-29 22:09:12'),
(984, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:12', '2020-06-29 22:09:12'),
(985, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:12', '2020-06-29 22:09:12'),
(986, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:12', '2020-06-29 22:09:12'),
(987, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:13', '2020-06-29 22:09:13'),
(988, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:13', '2020-06-29 22:09:13'),
(989, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:13', '2020-06-29 22:09:13'),
(990, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:13', '2020-06-29 22:09:13'),
(991, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:13', '2020-06-29 22:09:13'),
(992, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:13', '2020-06-29 22:09:13'),
(993, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:13', '2020-06-29 22:09:13'),
(994, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:13', '2020-06-29 22:09:13'),
(995, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '[]', '2020-06-29 22:09:17', '2020-06-29 22:09:17'),
(996, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:39', '2020-06-29 22:09:39'),
(997, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:40', '2020-06-29 22:09:40'),
(998, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:40', '2020-06-29 22:09:40'),
(999, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:09:40', '2020-06-29 22:09:40'),
(1000, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:10:51', '2020-06-29 22:10:51'),
(1001, 1, 'admin/client/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:10:52', '2020-06-29 22:10:52'),
(1002, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:11:01', '2020-06-29 22:11:01'),
(1003, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:12:22', '2020-06-29 22:12:22'),
(1004, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:12:24', '2020-06-29 22:12:24'),
(1005, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:12:27', '2020-06-29 22:12:27'),
(1006, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:12:59', '2020-06-29 22:12:59'),
(1007, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:16:07', '2020-06-29 22:16:07'),
(1008, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:16:51', '2020-06-29 22:16:51'),
(1009, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:31:06', '2020-06-29 22:31:06'),
(1010, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:31:22', '2020-06-29 22:31:22'),
(1011, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-29 22:31:25', '2020-06-29 22:31:25'),
(1012, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:32:08', '2020-06-29 22:32:08'),
(1013, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-29 22:32:10', '2020-06-29 22:32:10'),
(1014, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"7\"}', '2020-06-29 22:32:18', '2020-06-29 22:32:18'),
(1015, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-29 22:32:21', '2020-06-29 22:32:21'),
(1016, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"7\"}', '2020-06-29 22:32:26', '2020-06-29 22:32:26'),
(1017, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-29 22:32:28', '2020-06-29 22:32:28'),
(1018, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:33:49', '2020-06-29 22:33:49'),
(1019, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-29 22:33:51', '2020-06-29 22:33:51'),
(1020, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:34:51', '2020-06-29 22:34:51'),
(1021, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-29 22:34:53', '2020-06-29 22:34:53'),
(1022, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:35:07', '2020-06-29 22:35:07'),
(1023, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:36:39', '2020-06-29 22:36:39'),
(1024, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:36:47', '2020-06-29 22:36:47'),
(1025, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:36:52', '2020-06-29 22:36:52'),
(1026, 1, 'admin/cars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:36:57', '2020-06-29 22:36:57'),
(1027, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:37:08', '2020-06-29 22:37:08'),
(1028, 1, 'admin/client/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:37:10', '2020-06-29 22:37:10'),
(1029, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:37:17', '2020-06-29 22:37:17'),
(1030, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:37:18', '2020-06-29 22:37:18'),
(1031, 1, 'admin/carservicelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:37:19', '2020-06-29 22:37:19'),
(1032, 1, 'admin/carservicelog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:37:20', '2020-06-29 22:37:20'),
(1033, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:37:21', '2020-06-29 22:37:21'),
(1034, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:37:23', '2020-06-29 22:37:23'),
(1035, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:42:04', '2020-06-29 22:42:04'),
(1036, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:42:06', '2020-06-29 22:42:06'),
(1037, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:55:32', '2020-06-29 22:55:32'),
(1038, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-29 22:55:38', '2020-06-29 22:55:38'),
(1039, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:55:45', '2020-06-29 22:55:45'),
(1040, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:55:52', '2020-06-29 22:55:52'),
(1041, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-29 22:56:06', '2020-06-29 22:56:06'),
(1042, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"current_mileage\":\"255,412.00\",\"car_type\":\"6\",\"car_id\":\"\\u4eacW12EWA\",\"rent_type\":\"21\",\"staff_id\":null,\"rent_at\":null,\"rent_day\":null,\"deposit\":null,\"rent\":null,\"oil_volume\":null,\"redriving\":null,\"odrive_price\":null,\"timeout_price\":null,\"remark\":null,\"op_id\":null,\"_token\":\"biXE52Bqba6WjCvJ5XbX15AnUxZBI92RTJcIw9pm\"}', '2020-06-29 22:56:22', '2020-06-29 22:56:22'),
(1043, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-06-29 22:56:28', '2020-06-29 22:56:28'),
(1044, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:56:34', '2020-06-29 22:56:34'),
(1045, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:57:00', '2020-06-29 22:57:00'),
(1046, 1, 'admin/staffs/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 22:57:05', '2020-06-29 22:57:05'),
(1047, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 22:57:48', '2020-06-29 22:57:48'),
(1048, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 22:57:52', '2020-06-29 22:57:52'),
(1049, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-29 22:58:00', '2020-06-29 22:58:00'),
(1050, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"current_mileage\":\"52,441.00\",\"car_type\":\"6\",\"car_id\":\"\\u4eacW12EWA\",\"rent_type\":\"21\",\"staff_id\":null,\"rent_at\":null,\"rent_day\":null,\"deposit\":null,\"rent\":null,\"oil_volume\":null,\"redriving\":null,\"odrive_price\":null,\"timeout_price\":null,\"remark\":null,\"op_id\":null,\"_token\":\"biXE52Bqba6WjCvJ5XbX15AnUxZBI92RTJcIw9pm\"}', '2020-06-29 22:58:15', '2020-06-29 22:58:15'),
(1051, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 23:01:51', '2020-06-29 23:01:51'),
(1052, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 23:01:59', '2020-06-29 23:01:59'),
(1053, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"8\"}', '2020-06-29 23:02:11', '2020-06-29 23:02:11'),
(1054, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-29 23:02:13', '2020-06-29 23:02:13'),
(1055, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"current_mileage\":\"252,251.00\",\"car_type\":\"6\",\"car_id\":\"\\u4eacW12EWA\",\"rent_type\":\"21\",\"staff_id\":null,\"rent_at\":null,\"rent_day\":null,\"deposit\":null,\"rent\":null,\"oil_volume\":null,\"redriving\":null,\"odrive_price\":null,\"timeout_price\":null,\"remark\":null,\"op_id\":null,\"_token\":\"biXE52Bqba6WjCvJ5XbX15AnUxZBI92RTJcIw9pm\"}', '2020-06-29 23:02:22', '2020-06-29 23:02:22'),
(1056, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 23:05:52', '2020-06-29 23:05:52'),
(1057, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 23:05:58', '2020-06-29 23:05:58'),
(1058, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-29 23:06:04', '2020-06-29 23:06:04'),
(1059, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"current_mileage\":\"52,554.00\",\"car_type\":\"6\",\"car_id\":\"\\u4eacW12EWA\",\"rent_type\":\"21\",\"staff_id\":null,\"rent_at\":null,\"rent_day\":null,\"deposit\":null,\"rent\":null,\"oil_volume\":null,\"redriving\":null,\"odrive_price\":null,\"timeout_price\":null,\"remark\":null,\"op_id\":null,\"_token\":\"biXE52Bqba6WjCvJ5XbX15AnUxZBI92RTJcIw9pm\"}', '2020-06-29 23:06:14', '2020-06-29 23:06:14'),
(1060, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 23:06:40', '2020-06-29 23:06:40'),
(1061, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 23:06:46', '2020-06-29 23:06:46'),
(1062, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-29 23:06:52', '2020-06-29 23:06:52'),
(1063, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"current_mileage\":\"5,525.00\",\"car_type\":\"6\",\"car_id\":\"\\u4eacW12EWA\",\"rent_type\":\"21\",\"staff_id\":null,\"rent_at\":null,\"rent_day\":null,\"deposit\":null,\"rent\":null,\"oil_volume\":null,\"redriving\":null,\"odrive_price\":null,\"timeout_price\":null,\"remark\":null,\"op_id\":null,\"_token\":\"biXE52Bqba6WjCvJ5XbX15AnUxZBI92RTJcIw9pm\"}', '2020-06-29 23:06:59', '2020-06-29 23:06:59'),
(1064, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 23:07:29', '2020-06-29 23:07:29'),
(1065, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 23:07:34', '2020-06-29 23:07:34'),
(1066, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-29 23:07:43', '2020-06-29 23:07:43'),
(1067, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"current_mileage\":\"66,665.00\",\"car_type\":\"6\",\"car_id\":\"\\u4eacW12EWA\",\"rent_type\":\"21\",\"staff_id\":null,\"rent_at\":null,\"rent_day\":null,\"deposit\":null,\"rent\":null,\"oil_volume\":null,\"redriving\":null,\"odrive_price\":null,\"timeout_price\":null,\"remark\":null,\"op_id\":null,\"_token\":\"biXE52Bqba6WjCvJ5XbX15AnUxZBI92RTJcIw9pm\"}', '2020-06-29 23:07:50', '2020-06-29 23:07:50'),
(1068, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-29 23:08:34', '2020-06-29 23:08:34'),
(1069, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-29 23:08:39', '2020-06-29 23:08:39'),
(1070, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-29 23:08:44', '2020-06-29 23:08:44'),
(1071, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 23:11:13', '2020-06-29 23:11:13'),
(1072, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 23:11:16', '2020-06-29 23:11:16'),
(1073, 1, 'admin/client', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-29 23:11:19', '2020-06-29 23:11:19'),
(1074, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-06-30 01:40:47', '2020-06-30 01:40:47'),
(1075, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"gD7h5bcp73QPQtXCXRvfkXTDh2CxmPLvCUeWOZHI\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-06-30 01:40:54', '2020-06-30 01:40:54'),
(1076, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-30 01:40:55', '2020-06-30 01:40:55'),
(1077, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 01:41:01', '2020-06-30 01:41:01'),
(1078, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 01:41:03', '2020-06-30 01:41:03'),
(1079, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 01:41:29', '2020-06-30 01:41:29'),
(1080, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-06-30 01:43:31', '2020-06-30 01:43:31'),
(1081, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 01:43:33', '2020-06-30 01:43:33'),
(1082, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-30 01:43:36', '2020-06-30 01:43:36'),
(1083, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 01:43:46', '2020-06-30 01:43:46'),
(1084, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"current_mileage\":\"5,552,244.00\",\"car_type\":\"6\",\"car_id\":\"\\u4eacW12EWA\",\"rent_type\":\"21\",\"staff_id\":null,\"rent_at\":null,\"rent_day\":null,\"deposit\":null,\"rent\":null,\"oil_volume\":null,\"redriving\":null,\"odrive_price\":null,\"timeout_price\":null,\"remark\":null,\"op_id\":null,\"_token\":\"NoDY1GmToR7EZ3toznAlHyDMPPiNNIFOdwZXhF9T\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/rentcars\"}', '2020-06-30 01:43:52', '2020-06-30 01:43:52'),
(1085, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 01:44:42', '2020-06-30 01:44:42'),
(1086, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 01:44:42', '2020-06-30 01:44:42'),
(1087, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 01:44:42', '2020-06-30 01:44:42'),
(1088, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 01:44:42', '2020-06-30 01:44:42'),
(1089, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 01:44:42', '2020-06-30 01:44:42'),
(1090, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 01:44:43', '2020-06-30 01:44:43'),
(1091, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 01:44:43', '2020-06-30 01:44:43'),
(1092, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 01:44:43', '2020-06-30 01:44:43'),
(1093, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 01:44:43', '2020-06-30 01:44:43'),
(1094, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 01:45:28', '2020-06-30 01:45:28'),
(1095, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-30 01:45:32', '2020-06-30 01:45:32'),
(1096, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 01:45:38', '2020-06-30 01:45:38'),
(1097, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 01:46:04', '2020-06-30 01:46:04'),
(1098, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 01:46:40', '2020-06-30 01:46:40'),
(1099, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 01:57:15', '2020-06-30 01:57:15'),
(1100, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 01:57:39', '2020-06-30 01:57:39'),
(1101, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 01:57:52', '2020-06-30 01:57:52'),
(1102, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 02:27:33', '2020-06-30 02:27:33'),
(1103, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-06-30 02:27:35', '2020-06-30 02:27:35'),
(1104, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-30 03:11:25', '2020-06-30 03:11:25'),
(1105, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 03:11:29', '2020-06-30 03:11:29'),
(1106, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 03:11:31', '2020-06-30 03:11:31'),
(1107, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-30 03:11:33', '2020-06-30 03:11:33'),
(1108, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-30 05:57:27', '2020-06-30 05:57:27'),
(1109, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 05:57:30', '2020-06-30 05:57:30'),
(1110, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 05:57:31', '2020-06-30 05:57:31'),
(1111, 1, 'admin/staffleave', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 05:57:32', '2020-06-30 05:57:32'),
(1112, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 05:57:33', '2020-06-30 05:57:33'),
(1113, 1, 'admin/staffleave', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 05:57:37', '2020-06-30 05:57:37'),
(1114, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 05:57:40', '2020-06-30 05:57:40'),
(1115, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 06:48:50', '2020-06-30 06:48:50'),
(1116, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-30 06:48:53', '2020-06-30 06:48:53'),
(1117, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 06:49:34', '2020-06-30 06:49:34'),
(1118, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 06:51:07', '2020-06-30 06:51:07'),
(1119, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 06:53:14', '2020-06-30 06:53:14'),
(1120, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 06:54:03', '2020-06-30 06:54:03'),
(1121, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 06:59:49', '2020-06-30 06:59:49'),
(1122, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 07:00:00', '2020-06-30 07:00:00'),
(1123, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 07:04:38', '2020-06-30 07:04:38'),
(1124, 1, 'admin/industry', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u6cb9\\u91cf\\u5206\\u7c7b\",\"remark\":null,\"icon\":null,\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:05:17', '2020-06-30 07:05:17'),
(1125, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 07:05:18', '2020-06-30 07:05:18'),
(1126, 1, 'admin/industry/40', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:06:15', '2020-06-30 07:06:15'),
(1127, 1, 'admin/industry', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 07:06:15', '2020-06-30 07:06:15'),
(1128, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 07:06:46', '2020-06-30 07:06:46'),
(1129, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 07:06:48', '2020-06-30 07:06:48'),
(1130, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 07:11:38', '2020-06-30 07:11:38'),
(1131, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 07:16:09', '2020-06-30 07:16:09'),
(1132, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 07:16:23', '2020-06-30 07:16:23'),
(1133, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-30 07:16:39', '2020-06-30 07:16:39'),
(1134, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 07:16:42', '2020-06-30 07:16:42'),
(1135, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"\\u4eacW12EWA\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"5,000.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"5,600.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"200.00\",\"odrive_price\":\"100.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u6d4b\\u8bd5\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:17:43', '2020-06-30 07:17:43'),
(1136, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"\\u4eacW12EWA\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"5,000.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"5,600.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"200.00\",\"odrive_price\":\"100.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u6d4b\\u8bd5\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:17:49', '2020-06-30 07:17:49'),
(1137, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"\\u4eacW12EWA\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"5,000.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"5,600.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"200.00\",\"odrive_price\":\"100.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u6d4b\\u8bd5\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:20:00', '2020-06-30 07:20:00'),
(1138, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"\\u4eacW12EWA\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"5,000.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"5,600.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"200.00\",\"odrive_price\":\"100.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u6d4b\\u8bd5\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:20:28', '2020-06-30 07:20:28'),
(1139, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"\\u4eacW12EWA\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"5,000.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"5,600.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"200.00\",\"odrive_price\":\"100.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u6d4b\\u8bd5\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:21:23', '2020-06-30 07:21:23'),
(1140, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"\\u4eacW12EWA\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"5,000.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"5,600.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"200.00\",\"odrive_price\":\"100.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u6d4b\\u8bd5\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:22:02', '2020-06-30 07:22:02'),
(1141, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 07:23:42', '2020-06-30 07:23:42'),
(1142, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-30 07:23:44', '2020-06-30 07:23:44'),
(1143, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 07:23:47', '2020-06-30 07:23:47'),
(1144, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"234.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u6d4b\\u8bd5\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:24:44', '2020-06-30 07:24:44'),
(1145, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-30 07:25:54', '2020-06-30 07:25:54'),
(1146, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 07:27:14', '2020-06-30 07:27:14'),
(1147, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-30 07:27:18', '2020-06-30 07:27:18'),
(1148, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 07:27:21', '2020-06-30 07:27:21'),
(1149, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"5,000.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"458.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"200.00\",\"remark\":\"\\u6d4b\\u8bd5\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:28:20', '2020-06-30 07:28:20'),
(1150, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"5,000.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"458.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"200.00\",\"remark\":\"\\u6d4b\\u8bd5\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:29:16', '2020-06-30 07:29:16'),
(1151, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 07:29:40', '2020-06-30 07:29:40'),
(1152, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-30 07:29:46', '2020-06-30 07:29:46'),
(1153, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 07:29:48', '2020-06-30 07:29:48'),
(1154, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":null,\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"5,000.00\",\"rent\":\"1,500.00\",\"current_mileage\":\"3,456.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"100.00\",\"remark\":\"\\u5907\\u6ce8\\r\\n\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:30:41', '2020-06-30 07:30:41'),
(1155, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":null,\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"5,000.00\",\"rent\":\"1,500.00\",\"current_mileage\":\"3,456.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"100.00\",\"remark\":\"\\u5907\\u6ce8\\r\\n\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:31:24', '2020-06-30 07:31:24'),
(1156, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":null,\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"5,000.00\",\"rent\":\"1,500.00\",\"current_mileage\":\"3,456.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"100.00\",\"remark\":\"\\u5907\\u6ce8\\r\\n\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:33:32', '2020-06-30 07:33:32'),
(1157, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":null,\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"5,000.00\",\"rent\":\"1,500.00\",\"current_mileage\":\"3,456.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"100.00\",\"remark\":\"\\u5907\\u6ce8\\r\\n\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:34:13', '2020-06-30 07:34:13'),
(1158, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 07:34:24', '2020-06-30 07:34:24'),
(1159, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-30 07:34:36', '2020-06-30 07:34:36'),
(1160, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 07:34:38', '2020-06-30 07:34:38'),
(1161, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"5,000.00\",\"rent\":\"4,000.00\",\"current_mileage\":\"2,345.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\r\\n\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:35:28', '2020-06-30 07:35:28'),
(1162, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-06-30 07:37:58', '2020-06-30 07:37:58'),
(1163, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-06-30 07:38:02', '2020-06-30 07:38:02'),
(1164, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 07:38:04', '2020-06-30 07:38:04'),
(1165, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":null,\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:38:48', '2020-06-30 07:38:48'),
(1166, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":null,\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:39:52', '2020-06-30 07:39:52'),
(1167, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":null,\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\"}', '2020-06-30 07:40:08', '2020-06-30 07:40:08'),
(1168, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 07:40:08', '2020-06-30 07:40:08'),
(1169, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-06-30 07:41:55', '2020-06-30 07:41:55'),
(1170, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-06-30 07:43:35', '2020-06-30 07:43:35'),
(1171, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-06-30 07:46:59', '2020-06-30 07:46:59'),
(1172, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-06-30 07:47:32', '2020-06-30 07:47:32'),
(1173, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-06-30 07:47:43', '2020-06-30 07:47:43'),
(1174, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-06-30 07:55:01', '2020-06-30 07:55:01'),
(1175, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"id\":null,\"rent_num\":\"ZC20200630634971\",\"client_id\":null,\"mobile\":null,\"staff_id\":null,\"car_type\":null,\"car_id\":null,\"rent_at\":\"2020-06-30\",\"_pjax\":\"#pjax-container\"}', '2020-06-30 07:55:34', '2020-06-30 07:55:34'),
(1176, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"rent_num\":\"ZC20200630634971\",\"client_id\":null,\"mobile\":null,\"staff_id\":null,\"car_type\":null,\"car_id\":null,\"rent_at\":\"2020-06-30\"}', '2020-06-30 07:55:52', '2020-06-30 07:55:52'),
(1177, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"rent_num\":\"ZC20200630634971\",\"client_id\":null,\"mobile\":null,\"staff_id\":null,\"car_type\":null,\"car_id\":null,\"rent_at\":\"2020-06-30\"}', '2020-06-30 07:55:53', '2020-06-30 07:55:53'),
(1178, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"rent_num\":\"ZC20200630634971\",\"client_id\":null,\"mobile\":null,\"staff_id\":null,\"car_type\":null,\"car_id\":null,\"rent_at\":null}', '2020-06-30 07:56:00', '2020-06-30 07:56:00'),
(1179, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 07:57:47', '2020-06-30 07:57:47'),
(1180, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 07:57:48', '2020-06-30 07:57:48'),
(1181, 1, 'admin/staffleave', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 07:57:49', '2020-06-30 07:57:49'),
(1182, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 07:57:52', '2020-06-30 07:57:52'),
(1183, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 07:57:53', '2020-06-30 07:57:53'),
(1184, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '[]', '2020-06-30 08:01:38', '2020-06-30 08:01:38'),
(1185, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:01:41', '2020-06-30 08:01:41'),
(1186, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:01:45', '2020-06-30 08:01:45'),
(1187, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:01:47', '2020-06-30 08:01:47'),
(1188, 1, 'admin/carsmaintainlog', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:02:22', '2020-06-30 08:02:22'),
(1189, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:02:31', '2020-06-30 08:02:31'),
(1190, 1, 'admin/rentcars/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:02:39', '2020-06-30 08:02:39'),
(1191, 1, 'admin/rentcars/1', 'GET', '127.0.0.1', '[]', '2020-06-30 08:05:22', '2020-06-30 08:05:22'),
(1192, 1, 'admin/rentcars/1', 'GET', '127.0.0.1', '[]', '2020-06-30 08:09:27', '2020-06-30 08:09:27'),
(1193, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:09:30', '2020-06-30 08:09:30'),
(1194, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:09:38', '2020-06-30 08:09:38'),
(1195, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 08:09:39', '2020-06-30 08:09:39'),
(1196, 1, 'admin/rentcars/1', 'PUT', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":\"ZC20200630634971\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-06-30 00:00:00\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-06-30 08:09:45', '2020-06-30 08:09:45'),
(1197, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:09:45', '2020-06-30 08:09:45'),
(1198, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:10:04', '2020-06-30 08:10:04'),
(1199, 1, 'admin/cars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:10:13', '2020-06-30 08:10:13'),
(1200, 1, 'admin/cars', 'GET', '127.0.0.1', '[]', '2020-06-30 08:11:18', '2020-06-30 08:11:18'),
(1201, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:11:40', '2020-06-30 08:11:40'),
(1202, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:12:29', '2020-06-30 08:12:29'),
(1203, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 08:12:29', '2020-06-30 08:12:29');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1204, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"7\"}', '2020-06-30 08:12:38', '2020-06-30 08:12:38'),
(1205, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"8\"}', '2020-06-30 08:12:40', '2020-06-30 08:12:40'),
(1206, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 08:12:42', '2020-06-30 08:12:42'),
(1207, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"7\"}', '2020-06-30 08:12:58', '2020-06-30 08:12:58'),
(1208, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 08:13:01', '2020-06-30 08:13:01'),
(1209, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-06-30 08:16:36', '2020-06-30 08:16:36'),
(1210, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 08:16:37', '2020-06-30 08:16:37'),
(1211, 1, 'admin/rentcars/1', 'PUT', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":\"ZC20200630567501\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 00:09:45\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\",\"_method\":\"PUT\"}', '2020-06-30 08:21:36', '2020-06-30 08:21:36'),
(1212, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:21:36', '2020-06-30 08:21:36'),
(1213, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:21:59', '2020-06-30 08:21:59'),
(1214, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-06-30 08:22:10', '2020-06-30 08:22:10'),
(1215, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 08:22:11', '2020-06-30 08:22:11'),
(1216, 1, 'admin/rentcars/1', 'PUT', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":\"ZC20200630567501\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 00:21:36\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-06-30 08:22:17', '2020-06-30 08:22:17'),
(1217, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:22:17', '2020-06-30 08:22:17'),
(1218, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:22:29', '2020-06-30 08:22:29'),
(1219, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 08:22:29', '2020-06-30 08:22:29'),
(1220, 1, 'admin/rentcars/1', 'PUT', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":\"ZC20200630567501\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 00:22:17\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-06-30 08:22:32', '2020-06-30 08:22:32'),
(1221, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:22:32', '2020-06-30 08:22:32'),
(1222, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:25:28', '2020-06-30 08:25:28'),
(1223, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 08:25:29', '2020-06-30 08:25:29'),
(1224, 1, 'admin/rentcars/1', 'PUT', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":\"ZC20200630567501\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 00:22:32\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-06-30 08:25:34', '2020-06-30 08:25:34'),
(1225, 1, 'admin/rentcars/1', 'PUT', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":\"ZC20200630567501\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 00:22:32\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-06-30 08:25:38', '2020-06-30 08:25:38'),
(1226, 1, 'admin/rentcars/1', 'PUT', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":\"ZC20200630567501\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 00:22:32\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-06-30 08:26:40', '2020-06-30 08:26:40'),
(1227, 1, 'admin/rentcars/1', 'PUT', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":\"ZC20200630567501\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 00:22:32\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-06-30 08:27:02', '2020-06-30 08:27:02'),
(1228, 1, 'admin/rentcars/1', 'PUT', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":\"ZC20200630567501\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 00:22:32\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-06-30 08:27:19', '2020-06-30 08:27:19'),
(1229, 1, 'admin/rentcars/1', 'PUT', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":\"ZC20200630567501\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 00:22:32\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-06-30 08:27:28', '2020-06-30 08:27:28'),
(1230, 1, 'admin/rentcars/1', 'PUT', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":\"ZC20200630567501\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 00:22:32\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-06-30 08:27:52', '2020-06-30 08:27:52'),
(1231, 1, 'admin/rentcars/1', 'PUT', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":\"ZC20200630567501\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 00:22:32\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-06-30 08:28:09', '2020-06-30 08:28:09'),
(1232, 1, 'admin/rentcars/1', 'PUT', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":\"ZC20200630567501\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 00:22:32\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"vSLxPsyZrpSZIfvVky2ikXsgb7YCQUAahaW7Ao3H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-06-30 08:30:52', '2020-06-30 08:30:52'),
(1233, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:30:52', '2020-06-30 08:30:52'),
(1234, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:31:01', '2020-06-30 08:31:01'),
(1235, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-06-30 08:31:01', '2020-06-30 08:31:01'),
(1236, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:32:11', '2020-06-30 08:32:11'),
(1237, 1, 'admin/rentcars/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-30 08:32:16', '2020-06-30 08:32:16'),
(1238, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-01 04:27:15', '2020-07-01 04:27:15'),
(1239, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"RauFAhvGIhJw1On6ST7JfZOIoT81pNTzyGE1Glp4\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-01 04:27:19', '2020-07-01 04:27:19'),
(1240, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-01 04:27:19', '2020-07-01 04:27:19'),
(1241, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 04:27:27', '2020-07-01 04:27:27'),
(1242, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 04:27:30', '2020-07-01 04:27:30'),
(1243, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-01 05:33:40', '2020-07-01 05:33:40'),
(1244, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 05:34:19', '2020-07-01 05:34:19'),
(1245, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 05:34:23', '2020-07-01 05:34:23'),
(1246, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2020-07-01 05:36:08', '2020-07-01 05:36:08'),
(1247, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-07-01 05:37:18', '2020-07-01 05:37:18'),
(1248, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-01 05:50:28', '2020-07-01 05:50:28'),
(1249, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '[]', '2020-07-01 05:56:10', '2020-07-01 05:56:10'),
(1250, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-01 05:56:13', '2020-07-01 05:56:13'),
(1251, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 05:56:16', '2020-07-01 05:56:16'),
(1252, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 05:56:19', '2020-07-01 05:56:19'),
(1253, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:57:11', '2020-07-01 05:57:11'),
(1254, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:57:19', '2020-07-01 05:57:19'),
(1255, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:57:29', '2020-07-01 05:57:29'),
(1256, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:57:29', '2020-07-01 05:57:29'),
(1257, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:57:30', '2020-07-01 05:57:30'),
(1258, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:57:30', '2020-07-01 05:57:30'),
(1259, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:57:30', '2020-07-01 05:57:30'),
(1260, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:59:21', '2020-07-01 05:59:21'),
(1261, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:59:42', '2020-07-01 05:59:42'),
(1262, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:59:46', '2020-07-01 05:59:46'),
(1263, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:59:47', '2020-07-01 05:59:47'),
(1264, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:59:47', '2020-07-01 05:59:47'),
(1265, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:59:47', '2020-07-01 05:59:47'),
(1266, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:59:47', '2020-07-01 05:59:47'),
(1267, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:59:47', '2020-07-01 05:59:47'),
(1268, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:59:48', '2020-07-01 05:59:48'),
(1269, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 05:59:48', '2020-07-01 05:59:48'),
(1270, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 06:00:01', '2020-07-01 06:00:01'),
(1271, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 06:00:12', '2020-07-01 06:00:12'),
(1272, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"type\":\"2?q=6\"}', '2020-07-01 06:02:01', '2020-07-01 06:02:01'),
(1273, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 06:04:34', '2020-07-01 06:04:34'),
(1274, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 06:05:15', '2020-07-01 06:05:15'),
(1275, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 06:05:48', '2020-07-01 06:05:48'),
(1276, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 06:06:28', '2020-07-01 06:06:28'),
(1277, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-07-01 06:06:28', '2020-07-01 06:06:28'),
(1278, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 06:08:24', '2020-07-01 06:08:24'),
(1279, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-07-01 06:08:24', '2020-07-01 06:08:24'),
(1280, 1, 'admin/rentcars/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-01 06:10:12', '2020-07-01 06:10:12'),
(1281, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-07-01 06:10:12', '2020-07-01 06:10:12'),
(1282, 1, 'admin/rentcars/1', 'PUT', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":\"ZC20200630567501\",\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 00:30:52\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"is_long\":\"0\",\"rush_type\":\"1\",\"deduction_num\":\"200.00\",\"current_mileage\":\"120.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"500.00\",\"timeout_price\":\"400.00\",\"remark\":\"\\u5907\\u6ce8\\u5907\\u6ce8\",\"op_id\":\"1\",\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"_method\":\"PUT\"}', '2020-07-01 06:11:15', '2020-07-01 06:11:15'),
(1283, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 06:11:15', '2020-07-01 06:11:15'),
(1284, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 06:31:59', '2020-07-01 06:31:59'),
(1285, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"rent_car_deduction_log\"}', '2020-07-01 06:32:03', '2020-07-01 06:32:03'),
(1286, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"rent_car_deduction_log\",\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\"}', '2020-07-01 06:32:13', '2020-07-01 06:32:13'),
(1287, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"rent_car_deduction_log\"}', '2020-07-01 06:32:14', '2020-07-01 06:32:14'),
(1288, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"rent_car_deduction_log\",\"exist-table\":\"dcat|rent_car_deduction_log\",\"model_name\":\"App\\\\Models\\\\RentCarDeductionLogModel\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\RentCarDeductionLogController\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"rent_id\",\"translation\":\"\\u6240\\u5c5e\\u79df\\u8d41\\u5355\\u53f7\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u6240\\u5c5e\\u79df\\u8d41\\u5355\\u53f7\"},{\"name\":\"rent_money\",\"translation\":\"\\u79df\\u91d1\\u6263\\u9664\\u6570\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u79df\\u91d1\\u6263\\u9664\\u6570\"},{\"name\":\"rent_over\",\"translation\":\"\\u79df\\u91d1\\u5269\\u4f59\\u6570\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u79df\\u91d1\\u5269\\u4f59\\u6570\"},{\"name\":\"deposit_money\",\"translation\":\"\\u62bc\\u91d1\\u6263\\u9664\\u6570\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u62bc\\u91d1\\u6263\\u9664\\u6570\"},{\"name\":\"deposit_over\",\"translation\":\"\\u62bc\\u91d1\\u5269\\u4f59\\u6570\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u62bc\\u91d1\\u5269\\u4f59\\u6570\"},{\"name\":\"next_at\",\"translation\":\"\\u4e0b\\u6b21\\u6263\\u9664\\u65f6\\u95f4\",\"type\":\"date\",\"key\":null,\"default\":null,\"comment\":\"\\u4e0b\\u6b21\\u6263\\u9664\\u65f6\\u95f4\"},{\"name\":\"remark\",\"translation\":\"\\u5907\\u6ce8\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5907\\u6ce8\"},{\"name\":\"op_id\",\"translation\":\"\\u64cd\\u4f5c\\u4eba\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u64cd\\u4f5c\\u4eba\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"soft_deletes\":\"1\",\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\"}', '2020-07-01 06:32:24', '2020-07-01 06:32:24'),
(1289, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-01 06:32:25', '2020-07-01 06:32:25'),
(1290, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 06:44:45', '2020-07-01 06:44:45'),
(1291, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:44:47', '2020-07-01 06:44:47'),
(1292, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:45:22', '2020-07-01 06:45:22'),
(1293, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:47:02', '2020-07-01 06:47:02'),
(1294, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:47:03', '2020-07-01 06:47:03'),
(1295, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:47:03', '2020-07-01 06:47:03'),
(1296, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:47:03', '2020-07-01 06:47:03'),
(1297, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:47:04', '2020-07-01 06:47:04'),
(1298, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:47:04', '2020-07-01 06:47:04'),
(1299, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:47:50', '2020-07-01 06:47:50'),
(1300, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:47:51', '2020-07-01 06:47:51'),
(1301, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:47:57', '2020-07-01 06:47:57'),
(1302, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:48:32', '2020-07-01 06:48:32'),
(1303, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:48:58', '2020-07-01 06:48:58'),
(1304, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:49:40', '2020-07-01 06:49:40'),
(1305, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:49:59', '2020-07-01 06:49:59'),
(1306, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:33', '2020-07-01 06:51:33'),
(1307, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:46', '2020-07-01 06:51:46'),
(1308, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:48', '2020-07-01 06:51:48'),
(1309, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:48', '2020-07-01 06:51:48'),
(1310, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:48', '2020-07-01 06:51:48'),
(1311, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:49', '2020-07-01 06:51:49'),
(1312, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:49', '2020-07-01 06:51:49'),
(1313, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:49', '2020-07-01 06:51:49'),
(1314, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:50', '2020-07-01 06:51:50'),
(1315, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:50', '2020-07-01 06:51:50'),
(1316, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:50', '2020-07-01 06:51:50'),
(1317, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:50', '2020-07-01 06:51:50'),
(1318, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:50', '2020-07-01 06:51:50'),
(1319, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:50', '2020-07-01 06:51:50'),
(1320, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:50', '2020-07-01 06:51:50'),
(1321, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:51', '2020-07-01 06:51:51'),
(1322, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:58', '2020-07-01 06:51:58'),
(1323, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:59', '2020-07-01 06:51:59'),
(1324, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:59', '2020-07-01 06:51:59'),
(1325, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:51:59', '2020-07-01 06:51:59'),
(1326, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:52:00', '2020-07-01 06:52:00'),
(1327, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:52:00', '2020-07-01 06:52:00'),
(1328, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:52:01', '2020-07-01 06:52:01'),
(1329, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:52:01', '2020-07-01 06:52:01'),
(1330, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:52:01', '2020-07-01 06:52:01'),
(1331, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:52:01', '2020-07-01 06:52:01'),
(1332, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:52:01', '2020-07-01 06:52:01'),
(1333, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:52:01', '2020-07-01 06:52:01'),
(1334, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:52:02', '2020-07-01 06:52:02'),
(1335, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:52:02', '2020-07-01 06:52:02'),
(1336, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:52:06', '2020-07-01 06:52:06'),
(1337, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:53:00', '2020-07-01 06:53:00'),
(1338, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:53:02', '2020-07-01 06:53:02'),
(1339, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:53:03', '2020-07-01 06:53:03'),
(1340, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:53:03', '2020-07-01 06:53:03'),
(1341, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:53:13', '2020-07-01 06:53:13'),
(1342, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:53:46', '2020-07-01 06:53:46'),
(1343, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:53:47', '2020-07-01 06:53:47'),
(1344, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:53:48', '2020-07-01 06:53:48'),
(1345, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:53:48', '2020-07-01 06:53:48'),
(1346, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:53:48', '2020-07-01 06:53:48'),
(1347, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:55:08', '2020-07-01 06:55:08'),
(1348, 1, 'admin/carsmaintainlog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-07-01 06:55:18', '2020-07-01 06:55:18'),
(1349, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:56:04', '2020-07-01 06:56:04'),
(1350, 1, 'admin/rentcarslog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-07-01 06:56:07', '2020-07-01 06:56:07'),
(1351, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:58:46', '2020-07-01 06:58:46'),
(1352, 1, 'admin/rentcarslog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-07-01 06:58:49', '2020-07-01 06:58:49'),
(1353, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 06:59:41', '2020-07-01 06:59:41'),
(1354, 1, 'admin/rentcarslog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-07-01 06:59:43', '2020-07-01 06:59:43'),
(1355, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 07:00:54', '2020-07-01 07:00:54'),
(1356, 1, 'admin/rentcarslog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-07-01 07:00:57', '2020-07-01 07:00:57'),
(1357, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 07:12:40', '2020-07-01 07:12:40'),
(1358, 1, 'admin/rentcarslog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-07-01 07:12:42', '2020-07-01 07:12:42'),
(1359, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 07:14:35', '2020-07-01 07:14:35'),
(1360, 1, 'admin/rentcarslog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-07-01 07:14:38', '2020-07-01 07:14:38'),
(1361, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"100.00\",\"deposit_money\":null,\"money\":null,\"next_at\":\"2020-07-02\",\"remark\":\"1www\",\"op_id\":\"1\"}', '2020-07-01 07:15:03', '2020-07-01 07:15:03'),
(1362, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"100.00\",\"deposit_money\":null,\"money\":null,\"next_at\":\"2020-07-02\",\"remark\":\"1www\",\"op_id\":\"1\"}', '2020-07-01 07:15:23', '2020-07-01 07:15:23'),
(1363, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"100.00\",\"deposit_money\":null,\"money\":null,\"next_at\":\"2020-07-02\",\"remark\":\"1www\",\"op_id\":\"1\"}', '2020-07-01 07:20:34', '2020-07-01 07:20:34'),
(1364, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"6,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":\"2020-07-02\",\"remark\":\"1www\",\"op_id\":\"1\"}', '2020-07-01 07:21:12', '2020-07-01 07:21:12'),
(1365, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"6,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":\"2020-07-02\",\"remark\":\"1www\",\"op_id\":\"1\"}', '2020-07-01 07:21:16', '2020-07-01 07:21:16'),
(1366, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"6,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":\"2020-07-02\",\"remark\":\"1www\",\"op_id\":\"1\"}', '2020-07-01 07:21:40', '2020-07-01 07:21:40'),
(1367, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"6,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":\"2020-07-02\",\"remark\":\"1www\",\"op_id\":\"1\"}', '2020-07-01 07:21:44', '2020-07-01 07:21:44'),
(1368, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"6,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":\"2020-07-02\",\"remark\":\"1www\",\"op_id\":\"1\"}', '2020-07-01 07:23:01', '2020-07-01 07:23:01'),
(1369, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 07:23:01', '2020-07-01 07:23:01'),
(1370, 1, 'admin/rentcarslog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-07-01 07:23:41', '2020-07-01 07:23:41'),
(1371, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"600.00\",\"deposit_money\":null,\"money\":null,\"next_at\":\"2020-07-17\",\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:24:27', '2020-07-01 07:24:27'),
(1372, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 07:24:27', '2020-07-01 07:24:27'),
(1373, 1, 'admin/rentcarslog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-07-01 07:25:00', '2020-07-01 07:25:00'),
(1374, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"777.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:25:07', '2020-07-01 07:25:07'),
(1375, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"777.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:25:10', '2020-07-01 07:25:10'),
(1376, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"777.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:25:37', '2020-07-01 07:25:37'),
(1377, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"777.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:26:03', '2020-07-01 07:26:03'),
(1378, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"6,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:26:31', '2020-07-01 07:26:31'),
(1379, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"6,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:26:54', '2020-07-01 07:26:54'),
(1380, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"6,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:28:16', '2020-07-01 07:28:16'),
(1381, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"6,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:28:36', '2020-07-01 07:28:36'),
(1382, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"6,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:31:36', '2020-07-01 07:31:36'),
(1383, 1, 'admin/rentcars', 'GET', '127.0.0.1', '[]', '2020-07-01 07:31:44', '2020-07-01 07:31:44'),
(1384, 1, 'admin/rentcarslog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-07-01 07:31:46', '2020-07-01 07:31:46'),
(1385, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"7,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:32:13', '2020-07-01 07:32:13'),
(1386, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"7,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:33:07', '2020-07-01 07:33:07'),
(1387, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"7,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:33:33', '2020-07-01 07:33:33'),
(1388, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"7,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:34:21', '2020-07-01 07:34:21'),
(1389, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"7,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:35:33', '2020-07-01 07:35:33'),
(1390, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"7,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:36:06', '2020-07-01 07:36:06'),
(1391, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"7,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:36:33', '2020-07-01 07:36:33'),
(1392, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"7,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:37:10', '2020-07-01 07:37:10'),
(1393, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"7,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:37:44', '2020-07-01 07:37:44'),
(1394, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"7,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:38:12', '2020-07-01 07:38:12'),
(1395, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"7,000.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:38:49', '2020-07-01 07:38:49'),
(1396, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"200.00\",\"deposit_money\":null,\"money\":null,\"next_at\":null,\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:39:13', '2020-07-01 07:39:13'),
(1397, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"200.00\",\"deposit_money\":null,\"money\":null,\"next_at\":\"2020-07-02\",\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:39:20', '2020-07-01 07:39:20'),
(1398, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 07:39:20', '2020-07-01 07:39:20'),
(1399, 1, 'admin/rentcarslog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-07-01 07:44:19', '2020-07-01 07:44:19'),
(1400, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"200.00\",\"deposit_money\":null,\"money\":null,\"rent_over\":null,\"deposit_over\":null,\"next_at\":\"2020-07-03\",\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:44:30', '2020-07-01 07:44:30'),
(1401, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 07:44:31', '2020-07-01 07:44:31'),
(1402, 1, 'admin/rentcarslog/create', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_dialog_form_\":\"1\"}', '2020-07-01 07:49:42', '2020-07-01 07:49:42'),
(1403, 1, 'admin/rentcarslog', 'POST', '127.0.0.1', '{\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"rent_id\":\"1\",\"rent_money\":\"200.00\",\"deposit_money\":null,\"money\":null,\"rent_over\":null,\"deposit_over\":null,\"next_at\":\"2020-07-04\",\"remark\":null,\"op_id\":\"1\"}', '2020-07-01 07:49:50', '2020-07-01 07:49:50'),
(1404, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 07:49:50', '2020-07-01 07:49:50'),
(1405, 1, 'admin/rentcars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 08:04:29', '2020-07-01 08:04:29'),
(1406, 1, 'admin/getclient', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-07-01 08:04:31', '2020-07-01 08:04:31'),
(1407, 1, 'admin/getcars', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-07-01 08:04:34', '2020-07-01 08:04:34'),
(1408, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":null,\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 16:04:29\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"2,000.00\",\"rent\":\"1,200.00\",\"is_long\":\"1\",\"rush_type\":\"2\",\"deduction_num\":\"1,000.00\",\"current_mileage\":\"22,445.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"200.00\",\"timeout_price\":\"120.00\",\"remark\":\"ssdd\",\"op_id\":\"1\",\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-07-01 08:05:39', '2020-07-01 08:05:39'),
(1409, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":null,\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 16:04:29\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"2,000.00\",\"rent\":\"1,200.00\",\"is_long\":\"1\",\"rush_type\":\"2\",\"deduction_num\":\"1,000.00\",\"current_mileage\":\"22,445.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"200.00\",\"timeout_price\":\"120.00\",\"remark\":\"ssdd\",\"op_id\":\"1\",\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-07-01 08:05:46', '2020-07-01 08:05:46'),
(1410, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":null,\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 16:04:29\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"2,000.00\",\"rent\":\"1,200.00\",\"is_long\":\"1\",\"rush_type\":\"2\",\"deduction_num\":\"1,000.00\",\"current_mileage\":\"22,445.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"200.00\",\"timeout_price\":\"120.00\",\"remark\":\"ssdd\",\"op_id\":\"1\",\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-07-01 08:06:31', '2020-07-01 08:06:31'),
(1411, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":null,\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 16:04:29\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"2,000.00\",\"rent\":\"1,200.00\",\"is_long\":\"1\",\"rush_type\":\"2\",\"deduction_num\":\"1,000.00\",\"current_mileage\":\"22,445.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"200.00\",\"timeout_price\":\"120.00\",\"remark\":\"ssdd\",\"op_id\":\"1\",\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-07-01 08:08:26', '2020-07-01 08:08:26'),
(1412, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":null,\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 16:04:29\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"2,000.00\",\"rent\":\"1,200.00\",\"is_long\":\"1\",\"rush_type\":\"2\",\"deduction_num\":\"1,000.00\",\"current_mileage\":\"22,445.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"200.00\",\"timeout_price\":\"120.00\",\"remark\":\"ssdd\",\"op_id\":\"1\",\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-07-01 08:09:57', '2020-07-01 08:09:57'),
(1413, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":null,\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 16:04:29\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"2,000.00\",\"rent\":\"1,200.00\",\"is_long\":\"1\",\"rush_type\":\"2\",\"deduction_num\":\"1,000.00\",\"current_mileage\":\"22,445.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"200.00\",\"timeout_price\":\"120.00\",\"remark\":\"ssdd\",\"op_id\":\"1\",\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-07-01 08:11:16', '2020-07-01 08:11:16'),
(1414, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":null,\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-01 16:04:29\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"2,000.00\",\"rent\":\"1,200.00\",\"is_long\":\"1\",\"rush_type\":\"2\",\"deduction_num\":\"1,000.00\",\"current_mileage\":\"22,445.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"200.00\",\"timeout_price\":\"120.00\",\"remark\":\"ssdd\",\"op_id\":\"1\",\"_token\":\"HzQmmhnVJOQKce3AgFh7fC6Mwio6fy0lqFPiEZTs\",\"_previous_\":\"http:\\/\\/dcat.com\\/admin\\/rentcars\"}', '2020-07-01 08:11:38', '2020-07-01 08:11:38'),
(1415, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 08:11:38', '2020-07-01 08:11:38'),
(1416, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 08:16:56', '2020-07-01 08:16:56'),
(1417, 1, 'admin/rentcars', 'POST', '127.0.0.1', '{\"client_id\":\"1\",\"rent_num\":null,\"mobile\":\"18321000001\",\"car_type\":\"6\",\"car_id\":\"1\",\"rent_type\":\"21\",\"staff_id\":\"1\",\"rent_at\":\"2020-07-02 06:33:14\",\"timexz\":\"1\",\"rent_day\":\"30\",\"deposit\":\"500.00\",\"rent\":\"1,200.00\",\"is_long\":\"1\",\"rush_type\":\"1\",\"deduction_num\":\"120.00\",\"current_mileage\":\"4,546.00\",\"oil_volume\":\"\\u6ee1\\u683c\",\"redriving\":\"120.00\",\"odrive_price\":\"100.00\",\"timeout_price\":\"120.00\",\"remark\":null,\"op_id\":\"1\",\"_token\":\"bkogDqxPHrUZr7YWplu9nIdo76YIshk234qOLjh9\",\"_previous_\":\"http:\\/\\/car.com\\/admin\\/rentcars\"}', '2020-07-01 22:37:24', '2020-07-01 22:37:24'),
(1418, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 22:37:25', '2020-07-01 22:37:25'),
(1419, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-01 22:43:39', '2020-07-01 22:43:39'),
(1420, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-02 00:48:43', '2020-07-02 00:48:43'),
(1421, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"ERSrcq0sAobUfkXJcvg8huo3eNGLwwGgj2dNWQRk\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-02 00:48:47', '2020-07-02 00:48:47'),
(1422, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-02 00:48:48', '2020-07-02 00:48:48'),
(1423, 1, 'admin/staffs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 01:08:46', '2020-07-02 01:08:46'),
(1424, 1, 'admin/staffwage', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 01:08:46', '2020-07-02 01:08:46'),
(1425, 1, 'admin/staffleave', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 01:08:48', '2020-07-02 01:08:48'),
(1426, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 01:08:50', '2020-07-02 01:08:50'),
(1427, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 01:24:11', '2020-07-02 01:24:11'),
(1428, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"return_car\",\"_token\":\"zzOYudkyzKgPmbXXvBpt63aPwQuYQa57JIVle3fu\"}', '2020-07-02 01:24:19', '2020-07-02 01:24:19'),
(1429, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"return_car\"}', '2020-07-02 01:24:20', '2020-07-02 01:24:20'),
(1430, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"return_car\",\"exist-table\":\"dcat|return_car\",\"model_name\":\"App\\\\Models\\\\ReturnCarModel\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ReturnCarController\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"rent_id\",\"translation\":\"\\u5173\\u8054\\u79df\\u8f66\\u5355\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u5173\\u8054\\u79df\\u8f66\\u5355\"},{\"name\":\"is_checkout\",\"translation\":\"\\u662f\\u5426\\u5df2\\u7ed3\\u5e10\",\"type\":\"tinyInteger\",\"key\":null,\"default\":null,\"comment\":\"\\u662f\\u5426\\u5df2\\u7ed3\\u5e10\"},{\"name\":\"return_at\",\"translation\":\"\\u8fd8\\u8f66\\u65f6\\u95f4\",\"type\":\"timestamp\",\"key\":null,\"default\":null,\"comment\":\"\\u8fd8\\u8f66\\u65f6\\u95f4\"},{\"name\":\"return_mileage\",\"translation\":\"\\u8fd8\\u8f66\\u91cc\\u7a0b\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u8fd8\\u8f66\\u91cc\\u7a0b\"},{\"name\":\"return_oil\",\"translation\":\"\\u8fd8\\u8f66\\u6cb9\\u91cf\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u8fd8\\u8f66\\u6cb9\\u91cf\"},{\"name\":\"is_odrive\",\"translation\":\"\\u662f\\u5426\\u8d85\\u9a76\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u662f\\u5426\\u8d85\\u9a76\"},{\"name\":\"is_time\",\"translation\":\"\\u662f\\u5426\\u8d85\\u65f6\",\"type\":\"tinyInteger\",\"nullable\":\"on\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u662f\\u5426\\u8d85\\u65f6\"},{\"name\":\"oy_price\",\"translation\":\"\\u6865\\u8def\\u8d39\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":\"0.00\",\"comment\":\"\\u6865\\u8def\\u8d39\"},{\"name\":\"wz_deposit\",\"translation\":\"\\u8fdd\\u7ae0\\u62bc\\u91d1\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":\"0.00\",\"comment\":\"\\u8fdd\\u7ae0\\u62bc\\u91d1\"},{\"name\":\"receivable\",\"translation\":\"\\u5e94\\u6536\\u91d1\\u989d\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":\"0.00\",\"comment\":\"\\u5e94\\u6536\\u91d1\\u989d\"},{\"name\":\"paid\",\"translation\":\"\\u5b9e\\u6536\\u91d1\\u989d\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":\"0.00\",\"comment\":\"\\u5b9e\\u6536\\u91d1\\u989d\"},{\"name\":\"remark\",\"translation\":\"\\u5907\\u6ce8\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5907\\u6ce8\"},{\"name\":\"op_id\",\"translation\":\"\\u64cd\\u4f5c\\u4eba\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u64cd\\u4f5c\\u4eba\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"soft_deletes\":\"1\",\"_token\":\"zzOYudkyzKgPmbXXvBpt63aPwQuYQa57JIVle3fu\"}', '2020-07-02 01:24:31', '2020-07-02 01:24:31'),
(1431, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-02 01:24:32', '2020-07-02 01:24:32'),
(1432, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 01:46:24', '2020-07-02 01:46:24'),
(1433, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u8fd8\\u8f66\\u7ba1\\u7406\",\"icon\":null,\"uri\":null,\"roles\":[null],\"permissions\":null,\"_token\":\"zzOYudkyzKgPmbXXvBpt63aPwQuYQa57JIVle3fu\"}', '2020-07-02 01:46:39', '2020-07-02 01:46:39'),
(1434, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 01:46:40', '2020-07-02 01:46:40');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1435, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"23\",\"title\":\"\\u8fd8\\u8f66\\u7ba1\\u7406\\u5217\\u8868\",\"icon\":null,\"uri\":\"returncars\",\"roles\":[null],\"permissions\":null,\"_token\":\"zzOYudkyzKgPmbXXvBpt63aPwQuYQa57JIVle3fu\"}', '2020-07-02 01:46:58', '2020-07-02 01:46:58'),
(1436, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 01:46:58', '2020-07-02 01:46:58'),
(1437, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 01:47:00', '2020-07-02 01:47:00'),
(1438, 1, 'admin/returncars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 01:47:07', '2020-07-02 01:47:07'),
(1439, 1, 'admin/returncars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 01:47:10', '2020-07-02 01:47:10'),
(1440, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 01:47:22', '2020-07-02 01:47:22'),
(1441, 1, 'admin/returncars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 01:59:32', '2020-07-02 01:59:32'),
(1442, 1, 'admin/returncars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 01:59:34', '2020-07-02 01:59:34'),
(1443, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 02:00:04', '2020-07-02 02:00:04'),
(1444, 1, 'admin/returncars/create', 'GET', '127.0.0.1', '{\"id\":\"9\",\"_pjax\":\"#pjax-container\"}', '2020-07-02 02:00:06', '2020-07-02 02:00:06'),
(1445, 1, 'admin/returncars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 02:25:03', '2020-07-02 02:25:03'),
(1446, 1, 'admin/returncars/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 02:25:07', '2020-07-02 02:25:07'),
(1447, 1, 'admin/rentcars', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 02:25:41', '2020-07-02 02:25:41'),
(1448, 1, 'admin/returncars/create', 'GET', '127.0.0.1', '{\"id\":\"9\",\"_pjax\":\"#pjax-container\"}', '2020-07-02 02:25:43', '2020-07-02 02:25:43');

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
  `cp_id` int(11) NOT NULL COMMENT '所属公司',
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
  `cly_status` tinyint(2) DEFAULT '0' COMMENT '齿轮油是否需要更换0否1是',
  `car_status` tinyint(2) DEFAULT '0' COMMENT '车辆状态0空闲中1租赁中2维修中3已报废'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='汽车管理表';

--
-- 转存表中的数据 `cars`
--

INSERT INTO `cars` (`id`, `car_type`, `cp_id`, `car_num`, `car_engine_num`, `car_spot_num`, `car_img`, `op_id`, `inspection_at`, `hinsure_at`, `binsure_at`, `created_at`, `updated_at`, `deleted_at`, `by_mileage`, `pd_mileage`, `cly_mileage`, `by_status`, `pd_status`, `cly_status`, `car_status`) VALUES
(1, 6, 0, '京W12EWA', NULL, NULL, '[]', 1, '2020-06-30', NULL, NULL, '2020-06-26 02:56:37', '2020-07-01 22:37:24', NULL, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `cars_insurance_log`
--

CREATE TABLE `cars_insurance_log` (
  `id` int(11) NOT NULL COMMENT '自增id',
  `type` int(11) NOT NULL COMMENT '保险类型',
  `pay_at` date NOT NULL COMMENT '缴纳日期',
  `start_at` date DEFAULT NULL COMMENT '保险有效开始时间',
  `end_at` date DEFAULT NULL COMMENT '保险有效到期时间',
  `cars_id` int(11) NOT NULL COMMENT '所属车辆',
  `op_id` int(11) NOT NULL COMMENT '操作人',
  `pay_money` float(10,2) DEFAULT NULL COMMENT '缴纳金额',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='车辆保险管理表';

--
-- 转存表中的数据 `cars_insurance_log`
--

INSERT INTO `cars_insurance_log` (`id`, `type`, `pay_at`, `start_at`, `end_at`, `cars_id`, `op_id`, `pay_money`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 28, '2020-06-28', NULL, NULL, 1, 1, 1200.00, NULL, '2020-06-28 06:25:14', '2020-06-28 06:49:52', '2020-06-28 06:49:52'),
(3, 28, '2020-06-28', '2020-06-28', '2021-06-29', 1, 1, 1500.00, NULL, '2020-06-28 06:35:39', '2020-06-28 06:54:45', NULL);

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
-- 表的结构 `driver_details`
--

CREATE TABLE `driver_details` (
  `id` int(11) NOT NULL COMMENT '自增id',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `mobile` varchar(50) NOT NULL COMMENT '电话',
  `id_card` varchar(25) DEFAULT NULL COMMENT '身份证号',
  `photo_img` json DEFAULT NULL COMMENT '相关证件',
  `driver_status` tinyint(2) DEFAULT '0' COMMENT '司机状态0空闲中1工作中2休息中3已离职',
  `type` int(11) DEFAULT '1' COMMENT '司机类型1本公司自己2外调司机',
  `op_id` int(11) NOT NULL COMMENT '添加人',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='司机管理表';

--
-- 转存表中的数据 `driver_details`
--

INSERT INTO `driver_details` (`id`, `name`, `mobile`, `id_card`, `photo_img`, `driver_status`, `type`, `op_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '欢子', '18310890223', NULL, '[]', 0, 1, 1, '2020-06-28 08:08:44', '2020-06-28 08:27:40', NULL);

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
  `mobile` varchar(20) NOT NULL COMMENT '联系方式',
  `staff_id` int(11) NOT NULL COMMENT '相关司机',
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
  `rush_type` tinyint(2) DEFAULT '1' COMMENT '催租类型1天2月3年',
  `deduction_num` float DEFAULT NULL COMMENT '扣除数',
  `is_long` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否是长期0否1是',
  `op_id` int(11) NOT NULL COMMENT '操作人',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租赁单管理表';

--
-- 转存表中的数据 `rent_car`
--

INSERT INTO `rent_car` (`id`, `rent_num`, `client_id`, `mobile`, `staff_id`, `current_mileage`, `car_type`, `car_id`, `rent_type`, `rent_at`, `rent_day`, `deposit`, `rent`, `oil_volume`, `redriving`, `odrive_price`, `timeout_price`, `remark`, `rush_type`, `deduction_num`, `is_long`, `op_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'ZC20200702564141', 1, '18321000001', 1, 4546, 6, 1, 21, '2020-07-02 06:37:25', 30, 500.00, 1080.00, '满格', '120.00', 100.00, 120.00, NULL, 1, 120, 1, 1, '2020-07-01 22:37:24', '2020-07-01 22:37:25', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `rent_car_deduction_log`
--

CREATE TABLE `rent_car_deduction_log` (
  `id` int(11) NOT NULL COMMENT '自增id',
  `rent_id` int(11) NOT NULL COMMENT '所属租赁单号',
  `rent_money` float DEFAULT NULL COMMENT '租金扣除数',
  `rent_over` float DEFAULT NULL COMMENT '租金剩余数',
  `deposit_money` float DEFAULT NULL COMMENT '押金扣除数',
  `deposit_over` float DEFAULT NULL COMMENT '押金剩余数',
  `money` float DEFAULT NULL COMMENT '单独收取钱',
  `next_at` date NOT NULL COMMENT '下次扣除时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `op_id` int(11) DEFAULT '0' COMMENT '操作人',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租车租金记录日志';

--
-- 转存表中的数据 `rent_car_deduction_log`
--

INSERT INTO `rent_car_deduction_log` (`id`, `rent_id`, `rent_money`, `rent_over`, `deposit_money`, `deposit_over`, `money`, `next_at`, `remark`, `op_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 9, 120, 1080, NULL, 500, NULL, '2020-07-03', '系统扣除', 0, '2020-07-01 22:37:24', '2020-07-01 22:37:24', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `return_car`
--

CREATE TABLE `return_car` (
  `id` int(11) NOT NULL COMMENT '自增id',
  `rent_id` int(11) NOT NULL COMMENT '关联租车单',
  `is_checkout` tinyint(2) NOT NULL COMMENT '是否已结帐',
  `return_at` timestamp NOT NULL COMMENT '还车时间',
  `return_mileage` int(11) DEFAULT '0' COMMENT '还车里程',
  `return_oil` varchar(50) DEFAULT '0' COMMENT '还车油量',
  `is_odrive` tinyint(2) DEFAULT '0' COMMENT '是否超驶',
  `is_time` tinyint(2) DEFAULT '0' COMMENT '是否超时',
  `oy_price` float(10,2) DEFAULT '0.00' COMMENT '桥路费',
  `wz_deposit` float(10,2) DEFAULT '0.00' COMMENT '违章押金',
  `receivable` float(10,2) DEFAULT '0.00' COMMENT '应收金额',
  `paid` float(10,2) DEFAULT '0.00' COMMENT '实收金额',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `op_id` int(11) NOT NULL COMMENT '操作人',
  `created_at` timestamp NOT NULL COMMENT '添加时间',
  `updated_at` timestamp NOT NULL COMMENT '修改时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='还车记录管理表';

-- --------------------------------------------------------

--
-- 表的结构 `staff_details`
--

CREATE TABLE `staff_details` (
  `id` int(11) NOT NULL COMMENT '自增id',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `mobile` varchar(50) NOT NULL COMMENT '电话',
  `id_card` varchar(25) DEFAULT NULL COMMENT '身份证号',
  `photo_img` json DEFAULT NULL COMMENT '相关证件',
  `staff_status` tinyint(2) DEFAULT '1' COMMENT '员工状态1工作中2休假中3已离职',
  `driver_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '司机状态0空闲中１已外派',
  `staff_type` int(11) NOT NULL COMMENT '员工类型',
  `type` int(11) DEFAULT '1' COMMENT '司机类型1公司司机2外调司机3临时司机',
  `op_id` int(11) NOT NULL COMMENT '添加人',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='司机管理表';

--
-- 转存表中的数据 `staff_details`
--

INSERT INTO `staff_details` (`id`, `name`, `mobile`, `id_card`, `photo_img`, `staff_status`, `driver_status`, `staff_type`, `type`, `op_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '欢子', '18310890223', NULL, '[\"images/2.png\"]', 1, 1, 31, 1, 1, '2020-06-28 08:08:44', '2020-07-01 22:37:24', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `staff_leave`
--

CREATE TABLE `staff_leave` (
  `id` int(11) NOT NULL COMMENT '自增id',
  `staff_id` int(11) NOT NULL COMMENT '所属员工',
  `type` tinyint(2) NOT NULL COMMENT '请假类型',
  `duration` int(11) NOT NULL DEFAULT '0' COMMENT '请假天数',
  `duration_strat` timestamp NULL DEFAULT NULL COMMENT '假期开始时间',
  `duration_end` timestamp NULL DEFAULT NULL COMMENT '假期结束时间',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `op_id` int(11) NOT NULL COMMENT '操作人',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='员工请假管理表';

-- --------------------------------------------------------

--
-- 表的结构 `staff_wage`
--

CREATE TABLE `staff_wage` (
  `id` int(11) NOT NULL COMMENT '自增id',
  `staff_id` int(11) NOT NULL COMMENT '所属员工',
  `basic_wage` float(10,2) NOT NULL COMMENT '基本工资',
  `tc_money` float(10,2) DEFAULT '0.00' COMMENT '提成',
  `bonus` float(10,2) DEFAULT '0.00' COMMENT '奖金',
  `violate_num` int(11) DEFAULT '0' COMMENT '违章次数',
  `deduction` float(10,2) DEFAULT '0.00' COMMENT '扣除',
  `surplus` float(10,2) NOT NULL COMMENT '现金结余',
  `cycle_start` date NOT NULL COMMENT '开始时间',
  `cycle_end` date NOT NULL COMMENT '结束时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `op_id` int(11) NOT NULL COMMENT '操作人',
  `work_days` int(11) DEFAULT '0' COMMENT '考勤天数',
  `leave_days` int(11) DEFAULT '0' COMMENT '请假天数',
  `public_days` int(11) DEFAULT '0' COMMENT '公休天数',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='员工工资管理表';

--
-- 转存表中的数据 `staff_wage`
--

INSERT INTO `staff_wage` (`id`, `staff_id`, `basic_wage`, `tc_money`, `bonus`, `violate_num`, `deduction`, `surplus`, `cycle_start`, `cycle_end`, `remark`, `op_id`, `work_days`, `leave_days`, `public_days`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5000.00, 0.00, 0.00, 0, 0.00, 5000.00, '2020-06-01', '2020-06-30', NULL, 1, 0, 0, 0, '2020-06-28 23:50:54', '2020-06-28 23:50:54', NULL);

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
-- 表的索引 `cars_insurance_log`
--
ALTER TABLE `cars_insurance_log`
  ADD PRIMARY KEY (`id`);

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
-- 表的索引 `driver_details`
--
ALTER TABLE `driver_details`
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
-- 表的索引 `rent_car_deduction_log`
--
ALTER TABLE `rent_car_deduction_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `return_car`
--
ALTER TABLE `return_car`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `staff_details`
--
ALTER TABLE `staff_details`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `staff_leave`
--
ALTER TABLE `staff_leave`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `staff_wage`
--
ALTER TABLE `staff_wage`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用表AUTO_INCREMENT `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用表AUTO_INCREMENT `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1449;

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
-- 使用表AUTO_INCREMENT `cars_insurance_log`
--
ALTER TABLE `cars_insurance_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=4;

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
-- 使用表AUTO_INCREMENT `driver_details`
--
ALTER TABLE `driver_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '租赁ID', AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `rent_car_deduction_log`
--
ALTER TABLE `rent_car_deduction_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `return_car`
--
ALTER TABLE `return_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id';

--
-- 使用表AUTO_INCREMENT `staff_details`
--
ALTER TABLE `staff_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `staff_leave`
--
ALTER TABLE `staff_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id';

--
-- 使用表AUTO_INCREMENT `staff_wage`
--
ALTER TABLE `staff_wage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
