-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2023 at 09:35 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newlms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin1`
--

CREATE TABLE `admin1` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin1`
--

INSERT INTO `admin1` (`admin_id`, `admin_name`, `password`) VALUES
(1, 'mehul', 'mehul123'),
(2, 'shubham', 'shubham1'),
(3, 'dhairy', 'dhairy12'),
(4, 'prem', 'prem123'),
(5, 'yash', '123456'),
(10, 'prem', '1234556');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_pincode` int(11) NOT NULL,
  `area_name` varchar(50) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_pincode`, `area_name`, `city_id`) VALUES
(38002, 'maninagar', 1),
(380008, 'Bapunagar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add admin1', 7, 'add_admin1'),
(26, 'Can change admin1', 7, 'change_admin1'),
(27, 'Can delete admin1', 7, 'delete_admin1'),
(28, 'Can view admin1', 7, 'view_admin1'),
(29, 'Can add area', 8, 'add_area'),
(30, 'Can change area', 8, 'change_area'),
(31, 'Can delete area', 8, 'delete_area'),
(32, 'Can view area', 8, 'view_area'),
(33, 'Can add billing', 9, 'add_billing'),
(34, 'Can change billing', 9, 'change_billing'),
(35, 'Can delete billing', 9, 'delete_billing'),
(36, 'Can view billing', 9, 'view_billing'),
(37, 'Can add billing details', 10, 'add_billingdetails'),
(38, 'Can change billing details', 10, 'change_billingdetails'),
(39, 'Can delete billing details', 10, 'delete_billingdetails'),
(40, 'Can view billing details', 10, 'view_billingdetails'),
(41, 'Can add booking', 11, 'add_booking'),
(42, 'Can change booking', 11, 'change_booking'),
(43, 'Can delete booking', 11, 'delete_booking'),
(44, 'Can view booking', 11, 'view_booking'),
(45, 'Can add booking details', 12, 'add_bookingdetails'),
(46, 'Can change booking details', 12, 'change_bookingdetails'),
(47, 'Can delete booking details', 12, 'delete_bookingdetails'),
(48, 'Can view booking details', 12, 'view_bookingdetails'),
(49, 'Can add city', 13, 'add_city'),
(50, 'Can change city', 13, 'change_city'),
(51, 'Can delete city', 13, 'delete_city'),
(52, 'Can view city', 13, 'view_city'),
(53, 'Can add customer', 14, 'add_customer'),
(54, 'Can change customer', 14, 'change_customer'),
(55, 'Can delete customer', 14, 'delete_customer'),
(56, 'Can view customer', 14, 'view_customer'),
(57, 'Can add customer type', 15, 'add_customertype'),
(58, 'Can change customer type', 15, 'change_customertype'),
(59, 'Can delete customer type', 15, 'delete_customertype'),
(60, 'Can view customer type', 15, 'view_customertype'),
(61, 'Can add employee', 16, 'add_employee'),
(62, 'Can change employee', 16, 'change_employee'),
(63, 'Can delete employee', 16, 'delete_employee'),
(64, 'Can view employee', 16, 'view_employee'),
(65, 'Can add item', 17, 'add_item'),
(66, 'Can change item', 17, 'change_item'),
(67, 'Can delete item', 17, 'delete_item'),
(68, 'Can view item', 17, 'view_item'),
(69, 'Can add item charges', 18, 'add_itemcharges'),
(70, 'Can change item charges', 18, 'change_itemcharges'),
(71, 'Can delete item charges', 18, 'delete_itemcharges'),
(72, 'Can view item charges', 18, 'view_itemcharges'),
(73, 'Can add payment', 19, 'add_payment'),
(74, 'Can change payment', 19, 'change_payment'),
(75, 'Can delete payment', 19, 'delete_payment'),
(76, 'Can view payment', 19, 'view_payment'),
(77, 'Can add schedule', 20, 'add_schedule'),
(78, 'Can change schedule', 20, 'change_schedule'),
(79, 'Can delete schedule', 20, 'delete_schedule'),
(80, 'Can view schedule', 20, 'view_schedule'),
(81, 'Can add schedule details', 21, 'add_scheduledetails'),
(82, 'Can change schedule details', 21, 'change_scheduledetails'),
(83, 'Can delete schedule details', 21, 'delete_scheduledetails'),
(84, 'Can view schedule details', 21, 'view_scheduledetails'),
(85, 'Can add service', 22, 'add_service'),
(86, 'Can change service', 22, 'change_service'),
(87, 'Can delete service', 22, 'delete_service'),
(88, 'Can view service', 22, 'view_service'),
(89, 'Can add service for', 23, 'add_servicefor'),
(90, 'Can change service for', 23, 'change_servicefor'),
(91, 'Can delete service for', 23, 'delete_servicefor'),
(92, 'Can view service for', 23, 'view_servicefor'),
(93, 'Can add service type', 24, 'add_servicetype'),
(94, 'Can change service type', 24, 'change_servicetype'),
(95, 'Can delete service type', 24, 'delete_servicetype'),
(96, 'Can view service type', 24, 'view_servicetype'),
(97, 'Can add unit', 25, 'add_unit'),
(98, 'Can change unit', 25, 'change_unit'),
(99, 'Can delete unit', 25, 'delete_unit'),
(100, 'Can view unit', 25, 'view_unit'),
(101, 'Can add admin1', 26, 'add_admin1'),
(102, 'Can change admin1', 26, 'change_admin1'),
(103, 'Can delete admin1', 26, 'delete_admin1'),
(104, 'Can view admin1', 26, 'view_admin1'),
(105, 'Can add area', 27, 'add_area'),
(106, 'Can change area', 27, 'change_area'),
(107, 'Can delete area', 27, 'delete_area'),
(108, 'Can view area', 27, 'view_area'),
(109, 'Can add auth group', 28, 'add_authgroup'),
(110, 'Can change auth group', 28, 'change_authgroup'),
(111, 'Can delete auth group', 28, 'delete_authgroup'),
(112, 'Can view auth group', 28, 'view_authgroup'),
(113, 'Can add auth group permissions', 29, 'add_authgrouppermissions'),
(114, 'Can change auth group permissions', 29, 'change_authgrouppermissions'),
(115, 'Can delete auth group permissions', 29, 'delete_authgrouppermissions'),
(116, 'Can view auth group permissions', 29, 'view_authgrouppermissions'),
(117, 'Can add auth permission', 30, 'add_authpermission'),
(118, 'Can change auth permission', 30, 'change_authpermission'),
(119, 'Can delete auth permission', 30, 'delete_authpermission'),
(120, 'Can view auth permission', 30, 'view_authpermission'),
(121, 'Can add auth user', 31, 'add_authuser'),
(122, 'Can change auth user', 31, 'change_authuser'),
(123, 'Can delete auth user', 31, 'delete_authuser'),
(124, 'Can view auth user', 31, 'view_authuser'),
(125, 'Can add auth user groups', 32, 'add_authusergroups'),
(126, 'Can change auth user groups', 32, 'change_authusergroups'),
(127, 'Can delete auth user groups', 32, 'delete_authusergroups'),
(128, 'Can view auth user groups', 32, 'view_authusergroups'),
(129, 'Can add auth user user permissions', 33, 'add_authuseruserpermissions'),
(130, 'Can change auth user user permissions', 33, 'change_authuseruserpermissions'),
(131, 'Can delete auth user user permissions', 33, 'delete_authuseruserpermissions'),
(132, 'Can view auth user user permissions', 33, 'view_authuseruserpermissions'),
(133, 'Can add billing', 34, 'add_billing'),
(134, 'Can change billing', 34, 'change_billing'),
(135, 'Can delete billing', 34, 'delete_billing'),
(136, 'Can view billing', 34, 'view_billing'),
(137, 'Can add billing details', 35, 'add_billingdetails'),
(138, 'Can change billing details', 35, 'change_billingdetails'),
(139, 'Can delete billing details', 35, 'delete_billingdetails'),
(140, 'Can view billing details', 35, 'view_billingdetails'),
(141, 'Can add booking', 36, 'add_booking'),
(142, 'Can change booking', 36, 'change_booking'),
(143, 'Can delete booking', 36, 'delete_booking'),
(144, 'Can view booking', 36, 'view_booking'),
(145, 'Can add booking details', 37, 'add_bookingdetails'),
(146, 'Can change booking details', 37, 'change_bookingdetails'),
(147, 'Can delete booking details', 37, 'delete_bookingdetails'),
(148, 'Can view booking details', 37, 'view_bookingdetails'),
(149, 'Can add cart list', 38, 'add_cartlist'),
(150, 'Can change cart list', 38, 'change_cartlist'),
(151, 'Can delete cart list', 38, 'delete_cartlist'),
(152, 'Can view cart list', 38, 'view_cartlist'),
(153, 'Can add city', 39, 'add_city'),
(154, 'Can change city', 39, 'change_city'),
(155, 'Can delete city', 39, 'delete_city'),
(156, 'Can view city', 39, 'view_city'),
(157, 'Can add customer', 40, 'add_customer'),
(158, 'Can change customer', 40, 'change_customer'),
(159, 'Can delete customer', 40, 'delete_customer'),
(160, 'Can view customer', 40, 'view_customer'),
(161, 'Can add customer type', 41, 'add_customertype'),
(162, 'Can change customer type', 41, 'change_customertype'),
(163, 'Can delete customer type', 41, 'delete_customertype'),
(164, 'Can view customer type', 41, 'view_customertype'),
(165, 'Can add django admin log', 42, 'add_djangoadminlog'),
(166, 'Can change django admin log', 42, 'change_djangoadminlog'),
(167, 'Can delete django admin log', 42, 'delete_djangoadminlog'),
(168, 'Can view django admin log', 42, 'view_djangoadminlog'),
(169, 'Can add django content type', 43, 'add_djangocontenttype'),
(170, 'Can change django content type', 43, 'change_djangocontenttype'),
(171, 'Can delete django content type', 43, 'delete_djangocontenttype'),
(172, 'Can view django content type', 43, 'view_djangocontenttype'),
(173, 'Can add django migrations', 44, 'add_djangomigrations'),
(174, 'Can change django migrations', 44, 'change_djangomigrations'),
(175, 'Can delete django migrations', 44, 'delete_djangomigrations'),
(176, 'Can view django migrations', 44, 'view_djangomigrations'),
(177, 'Can add django session', 45, 'add_djangosession'),
(178, 'Can change django session', 45, 'change_djangosession'),
(179, 'Can delete django session', 45, 'delete_djangosession'),
(180, 'Can view django session', 45, 'view_djangosession'),
(181, 'Can add employee', 46, 'add_employee'),
(182, 'Can change employee', 46, 'change_employee'),
(183, 'Can delete employee', 46, 'delete_employee'),
(184, 'Can view employee', 46, 'view_employee'),
(185, 'Can add item', 47, 'add_item'),
(186, 'Can change item', 47, 'change_item'),
(187, 'Can delete item', 47, 'delete_item'),
(188, 'Can view item', 47, 'view_item'),
(189, 'Can add item charges', 48, 'add_itemcharges'),
(190, 'Can change item charges', 48, 'change_itemcharges'),
(191, 'Can delete item charges', 48, 'delete_itemcharges'),
(192, 'Can view item charges', 48, 'view_itemcharges'),
(193, 'Can add payment', 49, 'add_payment'),
(194, 'Can change payment', 49, 'change_payment'),
(195, 'Can delete payment', 49, 'delete_payment'),
(196, 'Can view payment', 49, 'view_payment'),
(197, 'Can add schedule', 50, 'add_schedule'),
(198, 'Can change schedule', 50, 'change_schedule'),
(199, 'Can delete schedule', 50, 'delete_schedule'),
(200, 'Can view schedule', 50, 'view_schedule'),
(201, 'Can add schedule details', 51, 'add_scheduledetails'),
(202, 'Can change schedule details', 51, 'change_scheduledetails'),
(203, 'Can delete schedule details', 51, 'delete_scheduledetails'),
(204, 'Can view schedule details', 51, 'view_scheduledetails'),
(205, 'Can add service for', 52, 'add_servicefor'),
(206, 'Can change service for', 52, 'change_servicefor'),
(207, 'Can delete service for', 52, 'delete_servicefor'),
(208, 'Can view service for', 52, 'view_servicefor'),
(209, 'Can add service type', 53, 'add_servicetype'),
(210, 'Can change service type', 53, 'change_servicetype'),
(211, 'Can delete service type', 53, 'delete_servicetype'),
(212, 'Can view service type', 53, 'view_servicetype'),
(213, 'Can add unit', 54, 'add_unit'),
(214, 'Can change unit', 54, 'change_unit'),
(215, 'Can delete unit', 54, 'delete_unit'),
(216, 'Can view unit', 54, 'view_unit'),
(217, 'Can add admin1', 55, 'add_admin1'),
(218, 'Can change admin1', 55, 'change_admin1'),
(219, 'Can delete admin1', 55, 'delete_admin1'),
(220, 'Can view admin1', 55, 'view_admin1'),
(221, 'Can add area', 56, 'add_area'),
(222, 'Can change area', 56, 'change_area'),
(223, 'Can delete area', 56, 'delete_area'),
(224, 'Can view area', 56, 'view_area'),
(225, 'Can add auth group', 57, 'add_authgroup'),
(226, 'Can change auth group', 57, 'change_authgroup'),
(227, 'Can delete auth group', 57, 'delete_authgroup'),
(228, 'Can view auth group', 57, 'view_authgroup'),
(229, 'Can add auth group permissions', 58, 'add_authgrouppermissions'),
(230, 'Can change auth group permissions', 58, 'change_authgrouppermissions'),
(231, 'Can delete auth group permissions', 58, 'delete_authgrouppermissions'),
(232, 'Can view auth group permissions', 58, 'view_authgrouppermissions'),
(233, 'Can add auth permission', 59, 'add_authpermission'),
(234, 'Can change auth permission', 59, 'change_authpermission'),
(235, 'Can delete auth permission', 59, 'delete_authpermission'),
(236, 'Can view auth permission', 59, 'view_authpermission'),
(237, 'Can add auth user', 60, 'add_authuser'),
(238, 'Can change auth user', 60, 'change_authuser'),
(239, 'Can delete auth user', 60, 'delete_authuser'),
(240, 'Can view auth user', 60, 'view_authuser'),
(241, 'Can add auth user groups', 61, 'add_authusergroups'),
(242, 'Can change auth user groups', 61, 'change_authusergroups'),
(243, 'Can delete auth user groups', 61, 'delete_authusergroups'),
(244, 'Can view auth user groups', 61, 'view_authusergroups'),
(245, 'Can add auth user user permissions', 62, 'add_authuseruserpermissions'),
(246, 'Can change auth user user permissions', 62, 'change_authuseruserpermissions'),
(247, 'Can delete auth user user permissions', 62, 'delete_authuseruserpermissions'),
(248, 'Can view auth user user permissions', 62, 'view_authuseruserpermissions'),
(249, 'Can add billing', 63, 'add_billing'),
(250, 'Can change billing', 63, 'change_billing'),
(251, 'Can delete billing', 63, 'delete_billing'),
(252, 'Can view billing', 63, 'view_billing'),
(253, 'Can add billing details', 64, 'add_billingdetails'),
(254, 'Can change billing details', 64, 'change_billingdetails'),
(255, 'Can delete billing details', 64, 'delete_billingdetails'),
(256, 'Can view billing details', 64, 'view_billingdetails'),
(257, 'Can add booking', 65, 'add_booking'),
(258, 'Can change booking', 65, 'change_booking'),
(259, 'Can delete booking', 65, 'delete_booking'),
(260, 'Can view booking', 65, 'view_booking'),
(261, 'Can add booking details', 66, 'add_bookingdetails'),
(262, 'Can change booking details', 66, 'change_bookingdetails'),
(263, 'Can delete booking details', 66, 'delete_bookingdetails'),
(264, 'Can view booking details', 66, 'view_bookingdetails'),
(265, 'Can add cart list', 67, 'add_cartlist'),
(266, 'Can change cart list', 67, 'change_cartlist'),
(267, 'Can delete cart list', 67, 'delete_cartlist'),
(268, 'Can view cart list', 67, 'view_cartlist'),
(269, 'Can add city', 68, 'add_city'),
(270, 'Can change city', 68, 'change_city'),
(271, 'Can delete city', 68, 'delete_city'),
(272, 'Can view city', 68, 'view_city'),
(273, 'Can add customer', 69, 'add_customer'),
(274, 'Can change customer', 69, 'change_customer'),
(275, 'Can delete customer', 69, 'delete_customer'),
(276, 'Can view customer', 69, 'view_customer'),
(277, 'Can add customer type', 70, 'add_customertype'),
(278, 'Can change customer type', 70, 'change_customertype'),
(279, 'Can delete customer type', 70, 'delete_customertype'),
(280, 'Can view customer type', 70, 'view_customertype'),
(281, 'Can add django admin log', 71, 'add_djangoadminlog'),
(282, 'Can change django admin log', 71, 'change_djangoadminlog'),
(283, 'Can delete django admin log', 71, 'delete_djangoadminlog'),
(284, 'Can view django admin log', 71, 'view_djangoadminlog'),
(285, 'Can add django content type', 72, 'add_djangocontenttype'),
(286, 'Can change django content type', 72, 'change_djangocontenttype'),
(287, 'Can delete django content type', 72, 'delete_djangocontenttype'),
(288, 'Can view django content type', 72, 'view_djangocontenttype'),
(289, 'Can add django migrations', 73, 'add_djangomigrations'),
(290, 'Can change django migrations', 73, 'change_djangomigrations'),
(291, 'Can delete django migrations', 73, 'delete_djangomigrations'),
(292, 'Can view django migrations', 73, 'view_djangomigrations'),
(293, 'Can add django session', 74, 'add_djangosession'),
(294, 'Can change django session', 74, 'change_djangosession'),
(295, 'Can delete django session', 74, 'delete_djangosession'),
(296, 'Can view django session', 74, 'view_djangosession'),
(297, 'Can add employee', 75, 'add_employee'),
(298, 'Can change employee', 75, 'change_employee'),
(299, 'Can delete employee', 75, 'delete_employee'),
(300, 'Can view employee', 75, 'view_employee'),
(301, 'Can add item', 76, 'add_item'),
(302, 'Can change item', 76, 'change_item'),
(303, 'Can delete item', 76, 'delete_item'),
(304, 'Can view item', 76, 'view_item'),
(305, 'Can add item charges', 77, 'add_itemcharges'),
(306, 'Can change item charges', 77, 'change_itemcharges'),
(307, 'Can delete item charges', 77, 'delete_itemcharges'),
(308, 'Can view item charges', 77, 'view_itemcharges'),
(309, 'Can add payment', 78, 'add_payment'),
(310, 'Can change payment', 78, 'change_payment'),
(311, 'Can delete payment', 78, 'delete_payment'),
(312, 'Can view payment', 78, 'view_payment'),
(313, 'Can add schedule', 79, 'add_schedule'),
(314, 'Can change schedule', 79, 'change_schedule'),
(315, 'Can delete schedule', 79, 'delete_schedule'),
(316, 'Can view schedule', 79, 'view_schedule'),
(317, 'Can add schedule details', 80, 'add_scheduledetails'),
(318, 'Can change schedule details', 80, 'change_scheduledetails'),
(319, 'Can delete schedule details', 80, 'delete_scheduledetails'),
(320, 'Can view schedule details', 80, 'view_scheduledetails'),
(321, 'Can add service for', 81, 'add_servicefor'),
(322, 'Can change service for', 81, 'change_servicefor'),
(323, 'Can delete service for', 81, 'delete_servicefor'),
(324, 'Can view service for', 81, 'view_servicefor'),
(325, 'Can add service type', 82, 'add_servicetype'),
(326, 'Can change service type', 82, 'change_servicetype'),
(327, 'Can delete service type', 82, 'delete_servicetype'),
(328, 'Can view service type', 82, 'view_servicetype'),
(329, 'Can add unit', 83, 'add_unit'),
(330, 'Can change unit', 83, 'change_unit'),
(331, 'Can delete unit', 83, 'delete_unit'),
(332, 'Can view unit', 83, 'view_unit'),
(333, 'Can add cart view', 84, 'add_cartview'),
(334, 'Can change cart view', 84, 'change_cartview'),
(335, 'Can delete cart view', 84, 'delete_cartview'),
(336, 'Can view cart view', 84, 'view_cartview'),
(337, 'Can add item charges view', 85, 'add_itemchargesview'),
(338, 'Can change item charges view', 85, 'change_itemchargesview'),
(339, 'Can delete item charges view', 85, 'delete_itemchargesview'),
(340, 'Can view item charges view', 85, 'view_itemchargesview'),
(341, 'Can add item charges view1', 86, 'add_itemchargesview1'),
(342, 'Can change item charges view1', 86, 'change_itemchargesview1'),
(343, 'Can delete item charges view1', 86, 'delete_itemchargesview1'),
(344, 'Can view item charges view1', 86, 'view_itemchargesview1'),
(345, 'Can add item charges view2', 87, 'add_itemchargesview2'),
(346, 'Can change item charges view2', 87, 'change_itemchargesview2'),
(347, 'Can delete item charges view2', 87, 'delete_itemchargesview2'),
(348, 'Can view item charges view2', 87, 'view_itemchargesview2');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `bill_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `bill_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`bill_id`, `customer_id`, `bill_date`) VALUES
(1, 1, '2023-06-02'),
(2, 1, '2023-06-02'),
(3, 1, '2023-06-02'),
(4, 1, '2023-06-02'),
(5, 1, '2023-06-02'),
(6, 1, '2023-06-02'),
(7, 1, '2023-06-02'),
(8, 1, '2023-06-02'),
(9, 1, '2023-06-02'),
(10, 1, '2023-06-02'),
(11, 1, '2023-06-02'),
(12, 1, '2023-06-02'),
(13, 1, '2023-06-02'),
(14, 1, '2023-06-02'),
(15, 1, '2023-06-02'),
(16, 1, '2023-06-03'),
(17, 1, '2023-06-03'),
(18, 1, '2023-06-03'),
(19, 1, '2023-06-03'),
(20, 1, '2023-06-03'),
(21, 1, '2023-06-03'),
(22, 1, '2023-06-03'),
(23, 1, '2023-06-03'),
(24, 1, '2023-06-03'),
(25, 1, '2023-06-03'),
(26, 1, '2023-06-03'),
(27, 1, '2023-06-03'),
(28, 1, '2023-06-03'),
(29, 1, '2023-06-03'),
(30, 1, '2023-06-03'),
(31, 1, '2023-06-03'),
(32, 1, '2023-06-03'),
(33, 1, '2023-06-03'),
(34, 1, '2023-06-03'),
(35, 1, '2023-06-03'),
(36, 1, '2023-06-03'),
(37, 1, '2023-06-03'),
(38, 1, '2023-06-03'),
(39, 1, '2023-06-03'),
(40, 1, '2023-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--

CREATE TABLE `billing_details` (
  `bill_details_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `item_charges_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `booking_date` datetime NOT NULL,
  `address` varchar(50) NOT NULL,
  `time_slote` varchar(50) NOT NULL,
  `payment` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `customer_id`, `booking_date`, `address`, `time_slote`, `payment`) VALUES
(52, 8, '2023-06-04 00:00:00', 'saraspur', '03:00 PM to 05:00 PM', 'Done'),
(53, 1, '2023-06-04 00:00:00', 'gags', '03:00 PM to 05:00 PM', 'Done'),
(54, 1, '2023-06-04 00:00:00', 'hbaa', '03:00 PM to 05:00 PM', 'Done'),
(55, 1, '2023-06-04 00:00:00', 'hava', '03:00 PM to 05:00 PM', 'Done'),
(56, 1, '2023-06-04 00:00:00', 'Maninagar', '03:00 PM to 05:00 PM', 'pandding'),
(57, 1, '2023-06-08 05:43:56', 'ghhhj', 'gugu', 'h'),
(58, 1, '0000-00-00 00:00:00', 'jashodanagar', '10:00 To 12:00', ''),
(59, 1, '2023-06-08 00:00:00', 'Maninagar, AHmedabad', '19:00 To 20:30', 'Pending'),
(60, 1, '2023-06-08 00:00:00', 'Maninagar, AHmedabad', '19:00 To 20:30', 'Pending'),
(61, 1, '2023-06-08 00:00:00', 'New Maninagar', '15:00 To 17:00', 'Pending'),
(66, 1, '2023-06-09 00:00:00', 'sdscs', '10:00 To 12:00', 'Pending'),
(67, 1, '2023-06-09 00:00:00', 'saraspuer', '15:00 To 17:00', 'Pending'),
(68, 1, '2023-06-09 00:00:00', 'maninagar', '15:00 To 17:00', 'Pending'),
(73, 2, '2023-06-19 00:00:00', 'maninagar', '10:00 To 12:00', 'Pending'),
(74, 14, '2023-07-19 00:00:00', 'shree sharan ', '10:00 To 12:00', 'Pending'),
(75, 14, '2023-07-20 00:00:00', 'zacjasdjagjdgaj', '10:00 To 12:00', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `booking_details_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `item_charges_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`booking_details_id`, `booking_id`, `quantity`, `item_charges_id`, `rate`) VALUES
(1, 60, 3, 11, 70),
(2, 60, 2, 11, 70),
(3, 60, 2, 12, 80),
(4, 60, 6, 20, 70),
(5, 60, 2, 11, 70),
(6, 60, 1, 55, 20),
(7, 60, 1, 11, 70),
(8, 60, 1, 11, 70),
(9, 61, 3, 11, 70),
(10, 61, 4, 19, 55),
(11, 61, 2, 55, 20),
(12, 62, 4, 106, 40),
(13, 62, 2, 11, 70),
(14, 62, 2, 17, 10),
(15, 63, 1, 11, 70),
(16, 64, 1, 11, 70),
(17, 65, 1, 11, 70),
(18, 66, 1, 11, 70),
(19, 67, 2, 11, 70),
(20, 68, 1, 11, 70),
(21, 68, 2, 30, 50),
(22, 69, 2, 20, 70),
(23, 72, 1, 11, 70),
(24, 73, 2, 11, 70),
(25, 74, 1, 115, 45),
(26, 75, 1, 115, 45),
(27, 75, 1, 115, 45),
(28, 75, 1, 115, 45);

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `cart_list_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `item_charges_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`cart_list_id`, `customer_id`, `item_charges_id`, `quantity`, `rate`) VALUES
(11, 4, 11, 1, 60),
(12, 4, 15, 1, 55),
(134, 2, 115, 2, 45),
(135, 2, 115, 1, 45),
(140, 14, 115, 1, 45);

-- --------------------------------------------------------

--
-- Table structure for table `cart_view`
--

CREATE TABLE `cart_view` (
  `cart_list_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `item_charges_id` int(11) DEFAULT NULL,
  `charges` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'ahmedabad'),
(2, 'surat'),
(3, 'jamnagar');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `phone_number`, `email`, `gender`, `password`) VALUES
(2, 'yash', 15272823, 'yash@mail.com', 'male', 'yashq2'),
(3, 'dhairy bh', 152627, 'dahiry@gmail.com', 'malehh', 'dh123'),
(4, 'Ashwin', 9601658454, 'abc@gmail.com', 'male', 'abc123'),
(5, 'trupti', 9662090070, 'trupti@gmail.com', 'male', 'trupti12'),
(7, 'abc', 9601990717, 'abc@gmail.com', 'Female', '55500'),
(10, 'prem', 9157044458, 'premmangnani48@gmail.com', 'male', '125647'),
(14, 'yash', 9723985236, 'yashjt080@gmail.com', 'male', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `customer_type`
--

CREATE TABLE `customer_type` (
  `type_id` int(11) NOT NULL,
  `type_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'appdemo', 'admin1'),
(8, 'appdemo', 'area'),
(9, 'appdemo', 'billing'),
(10, 'appdemo', 'billingdetails'),
(11, 'appdemo', 'booking'),
(12, 'appdemo', 'bookingdetails'),
(13, 'appdemo', 'city'),
(14, 'appdemo', 'customer'),
(15, 'appdemo', 'customertype'),
(16, 'appdemo', 'employee'),
(17, 'appdemo', 'item'),
(18, 'appdemo', 'itemcharges'),
(19, 'appdemo', 'payment'),
(20, 'appdemo', 'schedule'),
(21, 'appdemo', 'scheduledetails'),
(22, 'appdemo', 'service'),
(23, 'appdemo', 'servicefor'),
(24, 'appdemo', 'servicetype'),
(25, 'appdemo', 'unit'),
(26, 'Admin', 'admin1'),
(27, 'Admin', 'area'),
(28, 'Admin', 'authgroup'),
(29, 'Admin', 'authgrouppermissions'),
(30, 'Admin', 'authpermission'),
(31, 'Admin', 'authuser'),
(32, 'Admin', 'authusergroups'),
(33, 'Admin', 'authuseruserpermissions'),
(34, 'Admin', 'billing'),
(35, 'Admin', 'billingdetails'),
(36, 'Admin', 'booking'),
(37, 'Admin', 'bookingdetails'),
(38, 'Admin', 'cartlist'),
(39, 'Admin', 'city'),
(40, 'Admin', 'customer'),
(41, 'Admin', 'customertype'),
(42, 'Admin', 'djangoadminlog'),
(43, 'Admin', 'djangocontenttype'),
(44, 'Admin', 'djangomigrations'),
(45, 'Admin', 'djangosession'),
(46, 'Admin', 'employee'),
(47, 'Admin', 'item'),
(48, 'Admin', 'itemcharges'),
(49, 'Admin', 'payment'),
(50, 'Admin', 'schedule'),
(51, 'Admin', 'scheduledetails'),
(52, 'Admin', 'servicefor'),
(53, 'Admin', 'servicetype'),
(54, 'Admin', 'unit'),
(55, 'User_side', 'admin1'),
(56, 'User_side', 'area'),
(57, 'User_side', 'authgroup'),
(58, 'User_side', 'authgrouppermissions'),
(59, 'User_side', 'authpermission'),
(60, 'User_side', 'authuser'),
(61, 'User_side', 'authusergroups'),
(62, 'User_side', 'authuseruserpermissions'),
(63, 'User_side', 'billing'),
(64, 'User_side', 'billingdetails'),
(65, 'User_side', 'booking'),
(66, 'User_side', 'bookingdetails'),
(67, 'User_side', 'cartlist'),
(68, 'User_side', 'city'),
(69, 'User_side', 'customer'),
(70, 'User_side', 'customertype'),
(71, 'User_side', 'djangoadminlog'),
(72, 'User_side', 'djangocontenttype'),
(73, 'User_side', 'djangomigrations'),
(74, 'User_side', 'djangosession'),
(75, 'User_side', 'employee'),
(76, 'User_side', 'item'),
(77, 'User_side', 'itemcharges'),
(78, 'User_side', 'payment'),
(79, 'User_side', 'schedule'),
(80, 'User_side', 'scheduledetails'),
(81, 'User_side', 'servicefor'),
(82, 'User_side', 'servicetype'),
(83, 'User_side', 'unit'),
(84, 'User_side', 'cartview'),
(85, 'User_side', 'itemchargesview'),
(86, 'User_side', 'itemchargesview1'),
(87, 'User_side', 'itemchargesview2');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-14 08:25:43.355030'),
(2, 'auth', '0001_initial', '2023-05-14 08:25:44.480309'),
(3, 'admin', '0001_initial', '2023-05-14 08:25:44.828099'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-14 08:25:44.845358'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-14 08:25:44.860886'),
(6, 'appdemo', '0001_initial', '2023-05-14 08:25:44.896625'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-05-14 08:25:45.057535'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-05-14 08:25:45.145355'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-05-14 08:25:45.251230'),
(10, 'auth', '0004_alter_user_username_opts', '2023-05-14 08:25:45.267776'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-05-14 08:25:45.363739'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-05-14 08:25:45.372426'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-05-14 08:25:45.397835'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-05-14 08:25:45.477285'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-05-14 08:25:45.566098'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-05-14 08:25:45.648670'),
(17, 'auth', '0011_update_proxy_permissions', '2023-05-14 08:25:45.690118'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-05-14 08:25:45.786531'),
(19, 'sessions', '0001_initial', '2023-05-14 08:25:45.884414'),
(20, 'Admin', '0001_initial', '2023-06-09 05:55:43.474119'),
(21, 'User_side', '0001_initial', '2023-06-18 21:00:38.698169'),
(22, 'User_side', '0002_cartview_itemchargesview_itemchargesview1_and_more', '2023-06-18 21:00:38.707938');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8nd9veyao4bwzefqvg9aniv6g5r7g2fv', 'eyJjaWQiOjEsImFpZCI6MX0:1qAUMH:uEvw8UXfuffMrEm3j5a5WVIZGPBjjjtr_5xOR7ajW18', '2023-07-01 11:44:45.781316'),
('05d4ygwlg1ddwyeshny9anfb0etmsdw6', 'eyJjaWQiOjEsImFpZCI6MX0:1qAwYp:ChPvKyStwJrN6Ig-DZwp17tTxrNGvlf7C9oOp6Vc_FY', '2023-07-02 17:51:35.449117'),
('t785jdjucuc1aww8krwp2lkicraenxyc', 'eyJjaWQiOjJ9:1qB6KW:jsUZRcHOLwVJ9bsVd05lBhVqHAsuPe9zV_Ou0RDclHk', '2023-07-03 04:17:28.077418'),
('90xd489m5vns5rgwtsvxa3iwaxpjy0li', 'eyJhaWQiOjF9:1qDUCy:OoayC_wcSluT6Vy9iCkBBmq5pXucj9RJCWBr2EOS-1A', '2023-07-09 18:11:32.189210'),
('uqf62meuf37zb8q4fobwfqe1j68z7snb', 'eyJjaWQiOjIsImFpZCI6MX0:1qDrJO:Bdq9JoyRxr1MmCkNpm923wWW4unKL3ZjiVVf-eZcGbA', '2023-07-10 18:51:42.080436'),
('ug720jh35iheh7yofqe5w7i5ev3brnf9', 'eyJhaWQiOjEsImNpZCI6Mn0:1qLNsv:MzSPwz_CXYU19StBRlJWA4KbW4ts8S9sg34ufj3Vp8I', '2023-07-31 13:03:29.524963'),
('2jyztiok9z56bcdh8qramymodimufxzy', 'eyJjaWQiOjE0fQ:1qMB9s:1ohn_mvjEiavD-OzqKkcvjAxEug3uEgHABEntOpfptc', '2023-08-02 17:40:16.848637');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_image`) VALUES
(101, 'Pant', '/images/abcd.png'),
(107, 'T-shirt', '/images/tshirt.png'),
(108, 'Inner tshirt', '/images/inner-tshrit.jpeg'),
(110, 'Jeans', '/images/pant1.jpeg'),
(111, 'Trousers', '/images/Trousers1.jpeg'),
(112, 'Leggings', '/images/Leggings1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `item_charges`
--

CREATE TABLE `item_charges` (
  `item_charges_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `charges` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `service_for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_charges`
--

INSERT INTO `item_charges` (`item_charges_id`, `item_id`, `service_type_id`, `charges`, `unit_id`, `service_for_id`) VALUES
(115, 107, 1, 45, 2, 1),
(116, 108, 1, 150, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_charges_view`
--

CREATE TABLE `item_charges_view` (
  `item_charges_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `item_image` varchar(50) DEFAULT NULL,
  `service_type_id` int(11) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `charges` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_name` varchar(50) DEFAULT NULL,
  `service_for_id` int(11) DEFAULT NULL,
  `service_for_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_charges_view1`
--

CREATE TABLE `item_charges_view1` (
  `item_charges_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `item_image` varchar(50) DEFAULT NULL,
  `service_type_id` int(11) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `charges` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_name` varchar(50) DEFAULT NULL,
  `service_for_id` int(11) DEFAULT NULL,
  `service_for_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_charges_view2`
--

CREATE TABLE `item_charges_view2` (
  `item_charges_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `item_image` varchar(50) DEFAULT NULL,
  `service_type_id` int(11) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `charges` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_name` varchar(50) DEFAULT NULL,
  `service_for_id` int(11) DEFAULT NULL,
  `service_for_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `bill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_type` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_details`
--

CREATE TABLE `schedule_details` (
  `schedule_details_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `item_charges_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_for`
--

CREATE TABLE `service_for` (
  `service_for_id` int(11) NOT NULL,
  `service_for_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_for`
--

INSERT INTO `service_for` (`service_for_id`, `service_for_name`) VALUES
(1, 'Men'),
(2, 'Women'),
(3, 'Kides');

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE `service_type` (
  `service_id` int(11) NOT NULL,
  `service_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`service_id`, `service_type`) VALUES
(1, 'Wash'),
(2, 'Wash and Iron'),
(3, 'Iron'),
(4, 'Dry Clean');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`unit_id`, `unit_name`) VALUES
(1, 'KG'),
(2, 'Piece');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin1`
--
ALTER TABLE `admin1`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_pincode`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  ADD KEY `auth_user_groups_group_id_97559544` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  ADD KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `billing_details`
--
ALTER TABLE `billing_details`
  ADD PRIMARY KEY (`bill_details_id`),
  ADD KEY `bill_id` (`bill_id`),
  ADD KEY `item_charges_id` (`item_charges_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`booking_details_id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `item_charges_id` (`item_charges_id`);

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`cart_list_id`),
  ADD KEY `item_charges_id` (`item_charges_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_type`
--
ALTER TABLE `customer_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `item_charges`
--
ALTER TABLE `item_charges`
  ADD PRIMARY KEY (`item_charges_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `service_type_id` (`service_type_id`),
  ADD KEY `unit_id` (`unit_id`),
  ADD KEY `service_for_id` (`service_for_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `bill_id` (`bill_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `schedule_details`
--
ALTER TABLE `schedule_details`
  ADD PRIMARY KEY (`schedule_details_id`),
  ADD KEY `schedule_id` (`schedule_id`),
  ADD KEY `charges_id` (`item_charges_id`);

--
-- Indexes for table `service_for`
--
ALTER TABLE `service_for`
  ADD PRIMARY KEY (`service_for_id`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin1`
--
ALTER TABLE `admin1`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_pincode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380009;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `billing_details`
--
ALTER TABLE `billing_details`
  MODIFY `bill_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=825;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `booking_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `cart_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer_type`
--
ALTER TABLE `customer_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `item_charges`
--
ALTER TABLE `item_charges`
  MODIFY `item_charges_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule_details`
--
ALTER TABLE `schedule_details`
  MODIFY `schedule_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_for`
--
ALTER TABLE `service_for`
  MODIFY `service_for_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
