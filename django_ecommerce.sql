-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 05:57 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add catagory', 7, 'add_catagory'),
(26, 'Can change catagory', 7, 'change_catagory'),
(27, 'Can delete catagory', 7, 'delete_catagory'),
(28, 'Can view catagory', 7, 'view_catagory'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$GuZidRcaGOijnuJ0KRi3ed$v7rBMG10jRahQmMBnWMZQ+9T+a56Tf4EQT2xZ4w/Gpo=', '2023-11-13 05:34:35.956908', 1, 'menswear', '', '', 'godofjava1100@gmail.com', 1, 1, '2023-11-11 12:48:36.883408');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-11-11 13:01:20.744492', '1', 'shirts', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-11-11 13:09:56.652584', '1', 'Men Slim Fit Solid Spread Collar Formal Shirt', 1, '[{\"added\": {}}]', 8, 1),
(3, '2023-11-11 17:55:11.297985', '1', 'Men Slim Fit Solid Spread Collar Formal Shirt', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(4, '2023-11-11 17:58:48.285838', '1', 'Men Slim Fit Solid Spread Collar Formal Shirt from MILDIN', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(5, '2023-11-11 20:36:32.864955', '2', 'checked shirt', 1, '[{\"added\": {}}]', 7, 1),
(6, '2023-11-11 20:37:22.309263', '3', 'denim shirt', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-11-11 20:37:51.868771', '4', 'beach wear', 1, '[{\"added\": {}}]', 7, 1),
(8, '2023-11-11 20:38:30.763956', '5', 'printed t shirt', 1, '[{\"added\": {}}]', 7, 1),
(9, '2023-11-11 20:39:33.366432', '6', 'plan t shirt', 1, '[{\"added\": {}}]', 7, 1),
(10, '2023-11-11 20:40:21.238383', '7', 'hoodie', 1, '[{\"added\": {}}]', 7, 1),
(11, '2023-11-11 20:41:22.218708', '8', 'chinos pants', 1, '[{\"added\": {}}]', 7, 1),
(12, '2023-11-11 20:42:26.139963', '9', 'formal pants', 1, '[{\"added\": {}}]', 7, 1),
(13, '2023-11-13 05:34:52.639192', '1', 'shirts', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(14, '2023-11-13 05:35:12.221282', '1', 'formal shirts', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]', 7, 1),
(15, '2023-11-13 05:46:19.354816', '10', 'example', 1, '[{\"added\": {}}]', 7, 1),
(16, '2023-11-13 06:12:28.502587', '1', 'Men Slim Fit Solid Spread Collar Formal Shirt from MILDIN', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(17, '2023-11-13 06:12:38.349137', '1', 'Men Slim Fit Solid Spread Collar Formal Shirt from MILDIN', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(18, '2023-11-13 06:13:59.263466', '2', 'eg', 1, '[{\"added\": {}}]', 8, 1),
(19, '2023-11-13 07:14:53.232025', '3', 'rj', 1, '[{\"added\": {}}]', 8, 1),
(20, '2023-11-13 07:49:40.622937', '2', 'checked shirt', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(21, '2023-11-13 07:50:19.570373', '3', 'denim shirt', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(22, '2023-11-13 07:50:43.950207', '4', 'beach wear', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(23, '2023-11-13 07:51:10.766094', '5', 'printed t shirt', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(24, '2023-11-13 07:51:48.809176', '9', 'formal pants', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(25, '2023-11-13 07:52:11.279421', '8', 'chinos pants', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(26, '2023-11-13 07:52:27.662695', '8', 'chinos pants', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(27, '2023-11-13 07:52:40.377177', '8', 'chinos pants', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(28, '2023-11-13 07:56:06.297791', '1', 'formal shirts', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(29, '2023-11-13 07:56:14.355733', '1', 'formal shirts', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(30, '2023-11-13 08:08:47.996047', '7', 'hoodie', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(31, '2023-11-13 08:09:01.430425', '7', 'hoodie', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(32, '2023-11-13 08:09:07.765588', '7', 'hoodie', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(33, '2023-11-13 08:09:17.708736', '6', 'plan t shirt', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(34, '2023-11-13 08:15:38.654487', '6', 'plan t shirt', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(35, '2023-11-13 08:15:50.236166', '6', 'plan t shirt', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(36, '2023-11-13 08:25:27.100698', '7', 'hoodie', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(37, '2023-11-13 08:26:25.156272', '7', 'hoodie', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(38, '2023-11-13 09:02:12.678514', '10', 'sandals', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Image\", \"Description\"]}}]', 7, 1),
(39, '2023-11-13 09:02:44.575453', '10', 'sandals', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(40, '2023-11-13 09:03:51.624286', '11', 'Formal Shoes', 1, '[{\"added\": {}}]', 7, 1),
(41, '2023-11-13 09:04:05.170720', '11', 'Formal Shoes', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1),
(42, '2023-11-13 09:04:18.781981', '11', 'Formal Shoes', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1),
(43, '2023-11-13 09:05:18.016633', '12', 'Sneakers', 1, '[{\"added\": {}}]', 7, 1),
(44, '2023-11-13 12:31:13.246178', '1', 'formal shirts', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(45, '2023-11-13 12:35:17.700105', '1', 'formal shirts', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(46, '2023-11-13 12:45:06.559596', '3', 'Men Regular Fit Solid Formal Shirt', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Vandor\", \"Product image\", \"Quantity\", \"Original price\", \"Selling price\", \"Description\"]}}]', 8, 1),
(47, '2023-11-13 12:45:18.942509', '3', 'Men Regular Fit Solid Formal Shirt', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(48, '2023-11-13 12:46:53.567887', '2', 'Men Regular Fit Solid Button Down Collar Formal Shirt', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Vandor\", \"Product image\", \"Original price\", \"Selling price\", \"Description\"]}}]', 8, 1),
(49, '2023-11-13 12:47:10.658649', '2', 'Men Regular Fit Solid Button Down Collar Formal Shirt', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(50, '2023-11-13 12:48:36.651311', '1', 'Men Slim Fit Self Design Spread Collar Formal Shirt', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Vandor\", \"Product image\", \"Original price\", \"Selling price\"]}}]', 8, 1),
(51, '2023-11-13 12:49:25.026067', '1', 'Men Slim Fit Self Design Spread Collar Formal Shirt', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(52, '2023-11-13 12:50:59.004396', '4', 'Men Regular Fit Solid Spread Collar Formal Shirt', 1, '[{\"added\": {}}]', 8, 1),
(53, '2023-11-13 12:52:06.883799', '5', 'Men Regular Fit Solid Formal Shirt', 1, '[{\"added\": {}}]', 8, 1),
(54, '2023-11-13 12:53:12.911611', '5', 'Men Regular Fit Solid Formal Shirt', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(55, '2023-11-13 12:53:23.413491', '5', 'Men Regular Fit Solid Formal Shirt', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(56, '2023-11-13 15:56:59.825587', '6', 'Men Regular Fit Checkered Button Down Collar Casual Shirt', 1, '[{\"added\": {}}]', 8, 1),
(57, '2023-11-13 15:58:09.430071', '7', 'Men Slim Fit Checkered Spread Collar Casual Shirt', 1, '[{\"added\": {}}]', 8, 1),
(58, '2023-11-13 15:59:15.659308', '8', 'Men Regular Fit Checkered Spread Collar Casual Shirt', 1, '[{\"added\": {}}]', 8, 1),
(59, '2023-11-13 16:00:33.361977', '9', 'Men Slim Fit Checkered Slim Collar Casual Shirt', 1, '[{\"added\": {}}]', 8, 1),
(60, '2023-11-13 16:01:34.240386', '10', 'Men Regular Fit Checkered Built-up Collar Casual Shirt', 1, '[{\"added\": {}}]', 8, 1),
(61, '2023-11-13 16:03:54.572052', '11', 'Men Regular Fit Solid Cut Away Collar Casual Shirt', 1, '[{\"added\": {}}]', 8, 1),
(62, '2023-11-13 16:05:13.129583', '12', 'Men Regular Fit Washed Cut Away Collar Casual Shirt', 1, '[{\"added\": {}}]', 8, 1),
(63, '2023-11-13 16:06:19.012040', '13', 'Men Regular Fit Solid Casual Shirt', 1, '[{\"added\": {}}]', 8, 1),
(64, '2023-11-13 16:07:10.250361', '14', 'Men Slim Fit Solid Casual Shirt', 1, '[{\"added\": {}}]', 8, 1),
(65, '2023-11-13 16:08:11.893601', '15', 'Men Regular Fit Solid Cut Away Collar Casual Shirt', 1, '[{\"added\": {}}]', 8, 1),
(66, '2023-11-13 16:10:55.799902', '16', 'Men Regular Fit Printed Lapel Collar Beach Wear Shirt', 1, '[{\"added\": {}}]', 8, 1),
(67, '2023-11-13 16:11:52.473336', '17', 'Men Regular Fit Geometric Print Cut Away Collar Beach Wear Shirt', 1, '[{\"added\": {}}]', 8, 1),
(68, '2023-11-13 16:13:31.070870', '18', 'Men Regular Fit Printed Spread Collar Beach Wear Shirt', 1, '[{\"added\": {}}]', 8, 1),
(69, '2023-11-13 16:16:10.350946', '19', 'Men Regular Fit Printed Spread Collar Beach Wear Shirt', 1, '[{\"added\": {}}]', 8, 1),
(70, '2023-11-13 16:17:15.240747', '20', 'Men Regular Fit Printed Spread Collar Beach Wear Shirt', 1, '[{\"added\": {}}]', 8, 1),
(71, '2023-11-13 16:18:13.032133', '21', 'Men Regular Fit Printed Spread Collar Beach Wear Shirt', 1, '[{\"added\": {}}]', 8, 1),
(72, '2023-11-13 16:21:50.390158', '22', 'Men Printed Round Neck Poly Cotton Green T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(73, '2023-11-13 16:23:24.679564', '23', 'Men Printed Round Neck Poly Cotton Dark Green T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(74, '2023-11-13 16:24:51.730720', '24', 'Men Printed, Typography Round Neck Cotton Blend Black T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(75, '2023-11-13 16:25:38.051538', '25', 'Men Printed, Typography Round Neck Cotton Blend Black T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(76, '2023-11-13 16:26:54.290186', '26', 'Men Printed Round Neck Cotton Blend Light Blue T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(77, '2023-11-13 16:28:36.551391', '27', 'Men Printed Round Neck Polyester Grey T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(78, '2023-11-13 16:30:02.990217', '28', 'Men Printed Round Neck Cotton Blend Black T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(79, '2023-11-13 16:31:13.793844', '29', 'Men Printed Round Neck Poly Cotton Blue T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(80, '2023-11-13 16:34:06.945385', '30', 'Men Printed Round Neck Cotton Blend Black T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(81, '2023-11-13 16:35:18.322344', '31', 'Indian Cricket Team Official Jersey Men Printed Polo Neck Polyester Blue T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(82, '2023-11-13 16:46:34.140501', '32', 'Men Full Sleeve Graphic Print Hooded Sweatshirt', 1, '[{\"added\": {}}]', 8, 1),
(83, '2023-11-13 16:47:21.516031', '33', 'Men Full Sleeve Graphic Print Hooded Sweatshirt', 1, '[{\"added\": {}}]', 8, 1),
(84, '2023-11-13 16:48:33.956116', '34', 'Men Full Sleeve Printed Hooded Sweatshirt', 1, '[{\"added\": {}}]', 8, 1),
(85, '2023-11-13 16:49:30.987757', '35', 'Men Full Sleeve Printed Hooded Sweatshirt', 1, '[{\"added\": {}}]', 8, 1),
(86, '2023-11-13 16:50:25.914206', '36', 'Men Full Sleeve Graphic Print Hooded Sweatshirt', 1, '[{\"added\": {}}]', 8, 1),
(87, '2023-11-13 16:51:34.693757', '37', 'Men Full Sleeve Solid Hooded Sweatshirt', 1, '[{\"added\": {}}]', 8, 1),
(88, '2023-11-13 16:52:41.210248', '38', 'Men Full Sleeve Solid Hooded Sweatshirt', 1, '[{\"added\": {}}]', 8, 1),
(89, '2023-11-13 16:53:19.244340', '39', 'xx', 1, '[{\"added\": {}}]', 8, 1),
(90, '2023-11-13 16:54:09.167098', '40', 'xx', 1, '[{\"added\": {}}]', 8, 1),
(91, '2023-11-13 16:59:28.051652', '41', 'Men Slim Fit Beige Polyester Trousers', 1, '[{\"added\": {}}]', 8, 1),
(92, '2023-11-13 17:00:13.655386', '42', 'Men Regular Fit Black Cotton Blend Trousers', 1, '[{\"added\": {}}]', 8, 1),
(93, '2023-11-13 17:01:32.249083', '43', 'Men Slim Fit Light Green Lycra Blend Trousers', 1, '[{\"added\": {}}]', 8, 1),
(94, '2023-11-13 17:02:21.349384', '44', 'Men Slim Fit Grey Viscose Rayon Trousers', 1, '[{\"added\": {}}]', 8, 1),
(95, '2023-11-13 17:03:33.615331', '45', 'Men Slim Fit Khaki Lycra Blend Trousers', 1, '[{\"added\": {}}]', 8, 1),
(96, '2023-11-13 17:04:20.130217', '46', 'Men Regular Fit Grey Cotton Blend With Attached Dupatta Trousers', 1, '[{\"added\": {}}]', 8, 1),
(97, '2023-11-13 17:06:37.745141', '47', 'Men Skinny Fit Grey Cotton Blend Trousers', 1, '[{\"added\": {}}]', 8, 1),
(98, '2023-11-13 17:07:49.943886', '48', 'Men Regular Fit Brown Cotton Blend Trousers', 1, '[{\"added\": {}}]', 8, 1),
(99, '2023-11-13 17:09:00.774771', '49', 'Men Slim Fit Orange Pure Cotton Trousers', 1, '[{\"added\": {}}]', 8, 1),
(100, '2023-11-13 17:10:04.190550', '50', 'Men Slim Fit Green Cotton Blend Trousers', 1, '[{\"added\": {}}]', 8, 1),
(101, '2023-11-13 17:11:01.897597', '51', 'Men Slim Fit Grey Cotton Blend Trousers', 1, '[{\"added\": {}}]', 8, 1),
(102, '2023-11-13 17:11:58.392088', '52', 'Men Slim Fit Dark Blue Cotton Blend Trousers', 1, '[{\"added\": {}}]', 8, 1),
(103, '2023-11-13 17:22:21.399326', '6', 'plain t shirt', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(104, '2023-11-13 17:27:33.929404', '53', 'Oversize Men Typography Round Neck Pure Cotton Black T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(105, '2023-11-13 17:28:59.419871', '54', 'Men Colorblock Polo Neck Poly Cotton Pink T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(106, '2023-11-13 17:30:10.563093', '55', 'Pack of 2 Men Self Design Round Neck Pure Cotton Dark Blue, Grey T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(107, '2023-11-13 17:31:32.999208', '56', 'Men Solid Round Neck Pure Cotton Maroon T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(108, '2023-11-13 17:32:39.355406', '57', 'Pack of 2 Men Colorblock Round Neck Cotton Blend Multicolor T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(109, '2023-11-13 17:33:41.570094', '58', 'Men Solid Round Neck Polyester White T-Shirt', 1, '[{\"added\": {}}]', 8, 1),
(110, '2023-11-13 17:34:38.999268', '59', 'xxx', 1, '[{\"added\": {}}]', 8, 1),
(111, '2023-11-13 17:39:22.667501', '60', 'Synthetic Leather Black Formal Office Shoes Slip On For Men  (Black)', 1, '[{\"added\": {}}]', 8, 1),
(112, '2023-11-13 17:40:37.558366', '61', 'Slip On For Men  (Maroon)', 1, '[{\"added\": {}}]', 8, 1),
(113, '2023-11-13 17:42:30.134015', '62', 'Fortune LUCIO-201 Oxford For Men  (Brown)', 1, '[{\"added\": {}}]', 8, 1),
(114, '2023-11-13 17:43:34.474008', '63', 'ROBERT-2 Derby For Men  (Black)', 1, '[{\"added\": {}}]', 8, 1),
(115, '2023-11-13 17:45:19.935739', '64', 'Lace Up For Men  (Black)', 1, '[{\"added\": {}}]', 8, 1),
(116, '2023-11-13 17:46:43.919288', '65', 'Slip On For Men  (Black)', 1, '[{\"added\": {}}]', 8, 1),
(117, '2023-11-13 17:47:58.336354', '66', 'Synthetic Leather For Men  (Black)', 1, '[{\"added\": {}}]', 8, 1),
(118, '2023-11-13 17:49:42.929410', '67', 'New Premium formal leather derby shoes for men Derby For Men  (Black)', 1, '[{\"added\": {}}]', 8, 1),
(119, '2023-11-13 17:51:28.268955', '68', 'Party Wear Long Shoes For Men Long Boots Lace Up For Men  (Brown)', 1, '[{\"added\": {}}]', 8, 1),
(120, '2023-11-13 17:56:43.630156', '69', 'Sneakers For Men  (White)', 1, '[{\"added\": {}}]', 8, 1),
(121, '2023-11-13 17:57:44.194043', '70', 'Combo Pack Of 4 Casual Sneakers With Sneakers For Men  (Multicolor)', 1, '[{\"added\": {}}]', 8, 1),
(122, '2023-11-13 17:59:34.285110', '71', 'Sneakers For Men  (White)', 1, '[{\"added\": {}}]', 8, 1),
(123, '2023-11-13 18:00:45.562298', '72', 'Casual Sneakers ColourFul Block Shoes For Boys And Men Sneakers For Men  (Brown, White)', 1, '[{\"added\": {}}]', 8, 1),
(124, '2023-11-13 18:03:27.190281', '73', 'Men Black Sandal Special price', 1, '[{\"added\": {}}]', 8, 1),
(125, '2023-11-13 18:04:33.101627', '74', 'Men Brown Casual Sandal', 1, '[{\"added\": {}}]', 8, 1),
(126, '2023-11-13 18:06:06.347075', '75', 'Men Black Sandal', 1, '[{\"added\": {}}]', 8, 1),
(127, '2023-11-13 18:07:00.712521', '69', 'Men LPMXT-810 Off White Clogs Sandal', 2, '[{\"changed\": {\"fields\": [\"Catagory\", \"Name\", \"Vandor\", \"Product image\"]}}]', 8, 1),
(128, '2023-11-13 18:07:15.553522', '69', 'Men LPMXT-810 Off White Clogs Sandal', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(129, '2023-11-13 18:07:59.807336', '70', 'Men Black Sandal', 2, '[{\"changed\": {\"fields\": [\"Catagory\", \"Name\", \"Vandor\"]}}]', 8, 1),
(130, '2023-11-13 18:08:36.720856', '71', 'Men Maroon Sandal', 2, '[{\"changed\": {\"fields\": [\"Catagory\", \"Name\", \"Vandor\", \"Product image\"]}}]', 8, 1),
(131, '2023-11-13 18:08:45.467072', '71', 'Men Maroon Sandal', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(132, '2023-11-13 18:10:34.677848', '72', 'Men 2GC-07 Navy, Grey Casual Sandal', 2, '[{\"changed\": {\"fields\": [\"Catagory\", \"Name\", \"Vandor\", \"Product image\"]}}]', 8, 1),
(133, '2023-11-13 18:10:44.144175', '72', 'Men 2GC-07 Navy, Grey Casual Sandal', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(134, '2023-11-13 18:14:17.712612', '76', 'Sneakers For Men  (White) Special price', 1, '[{\"added\": {}}]', 8, 1),
(135, '2023-11-13 18:15:18.326273', '77', 'Combo Pack Of 4 Casual Sneakers With Sneakers For Men  (Multicolor)', 1, '[{\"added\": {}}]', 8, 1),
(136, '2023-11-13 18:16:38.958687', '78', 'Sneakers For Men  (White) Special price', 1, '[{\"added\": {}}]', 8, 1),
(137, '2023-11-13 18:17:34.310570', '79', 'Casual Sneakers ColourFul Block Shoes For Boys And Men Sneakers For Men  (Brown, White)', 1, '[{\"added\": {}}]', 8, 1),
(138, '2023-11-13 18:19:20.637716', '80', 'Sneakers For Men  (White)', 1, '[{\"added\": {}}]', 8, 1),
(139, '2023-11-13 18:20:29.350661', '81', 'Trending Stylish Casual Outdoor Sneakers Shoes For Men Sneakers For Men  (White, Black)', 1, '[{\"added\": {}}]', 8, 1),
(140, '2023-11-13 18:21:53.280486', '82', 'Synthetic Leather |Lightweight|Comfort|Summer|Trendy|Walking|Outdoor|Daily Use Sneakers For Men  (White)', 1, '[{\"added\": {}}]', 8, 1),
(141, '2023-11-13 18:22:54.249972', '83', 'Fashionable Canvas Casual Partywear Outdoor Sneakers white Shoes For Mens Sneakers For Men  (Black) Special price', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'shop', 'catagory'),
(8, 'shop', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-11 12:42:45.533151'),
(2, 'auth', '0001_initial', '2023-11-11 12:42:45.959733'),
(3, 'admin', '0001_initial', '2023-11-11 12:42:46.074957'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-11 12:42:46.090584'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-11 12:42:46.110931'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-11-11 12:42:46.194020'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-11-11 12:42:46.324939'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-11-11 12:42:46.343321'),
(9, 'auth', '0004_alter_user_username_opts', '2023-11-11 12:42:46.373453'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-11-11 12:42:46.429051'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-11-11 12:42:46.449603'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-11 12:42:46.465599'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-11-11 12:42:46.499530'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-11 12:42:46.533064'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-11-11 12:42:46.558409'),
(16, 'auth', '0011_update_proxy_permissions', '2023-11-11 12:42:46.580341'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-11-11 12:42:46.615242'),
(18, 'sessions', '0001_initial', '2023-11-11 12:42:46.666131'),
(19, 'shop', '0001_initial', '2023-11-11 12:42:46.774853');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('pkvlm1mchkq4exccaavjmmth6fcpb5yq', '.eJxVjMsOgjAUBf-la9PQXkupS_d8Q3NfFdRAQmFl_HclYaHbMzPnZTJu65C3qksexVyMM6ffjZAfOu1A7jjdZsvztC4j2V2xB622n0Wf18P9OxiwDt-6k65A24ADUnTMvvhCEMjjWUMKpEzQxqKYMCYfS4wcAFJoRLhEUfP-APvAOM0:1r2Pal:OdQ-9us0bvngRcH_ThzfPQI-w1e93kVHw3b3wBvyt9c', '2023-11-27 05:34:35.962825');

-- --------------------------------------------------------

--
-- Table structure for table `shop_catagory`
--

CREATE TABLE `shop_catagory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_catagory`
--

INSERT INTO `shop_catagory` (`id`, `name`, `image`, `description`, `status`, `created_at`) VALUES
(1, 'formal shirts', 'uploads/20231113180517f-shirt-1.webp', 'All kinds of formlshirts', 0, '2023-11-11 13:01:20.744492'),
(2, 'checked shirt', 'uploads/20231113131940c-shirt1.webp', 'All kinds of checked shirts', 0, '2023-11-11 20:36:32.852936'),
(3, 'denim shirt', 'uploads/20231113132019d-shirt_1.webp', 'All kind of denim shirts', 0, '2023-11-11 20:37:22.299332'),
(4, 'beach wear', 'uploads/20231113132043beachwear1.webp', 'All kinds of beach wear', 0, '2023-11-11 20:37:51.864470'),
(5, 'printed t shirt', 'uploads/20231113132110printed-t-shirt-1.webp', 'All kinds of printed t shirt', 0, '2023-11-11 20:38:30.758397'),
(6, 'plain t shirt', 'uploads/20231113134550p-t-shirt-1.jpg', 'All kinds of plan t shirt', 0, '2023-11-11 20:39:33.357041'),
(7, 'hoodie', 'uploads/20231113135625hoodie-2.webp', 'All kinds of hoodie', 0, '2023-11-11 20:40:21.238383'),
(8, 'chinos pants', 'uploads/20231113132240c-pants-6.webp', 'All kinds of Chinos Pants', 0, '2023-11-11 20:41:22.218708'),
(9, 'formal pants', 'uploads/20231113132148pants-1.webp', 'All kinds of formal pants', 0, '2023-11-11 20:42:26.131964'),
(10, 'sandals', 'uploads/20231113143244sandal-1.webp', 'All kinds of sandals', 0, '2023-11-13 05:46:19.354816'),
(11, 'Formal Shoes', 'uploads/20231113143351formal-shoe-1.webp', 'All kinds of formal shoes', 0, '2023-11-13 09:03:51.624286'),
(12, 'Sneakers', 'uploads/20231113143518sneakers-3.webp', 'All kinds of sneakers', 0, '2023-11-13 09:05:18.016633');

-- --------------------------------------------------------

--
-- Table structure for table `shop_product`
--

CREATE TABLE `shop_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `vandor` varchar(150) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `catagory_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_product`
--

INSERT INTO `shop_product` (`id`, `name`, `vandor`, `product_image`, `quantity`, `original_price`, `selling_price`, `description`, `status`, `trending`, `created_at`, `catagory_id`) VALUES
(1, 'Men Slim Fit Self Design Spread Collar Formal Shirt', 'Raymond', 'uploads/20231113181925f-shirt-5.webp', 10, 2099, 699, 'The Men Slim-fit formal shirt is made from high-quality cotton-blend fabric that comprises 60% cotton—making it ideal for wearing in the summer. Additionally, the shirt being slim fit helps you achieve a smart, professional look.', 0, 1, '2023-11-11 13:09:56.644560', 1),
(2, 'Men Regular Fit Solid Button Down Collar Formal Shirt', 'VeBNoR', 'uploads/20231113181710f-shirt-2.webp', 24, 999, 399, 'Meticulously crafted with a focus on refined details, this formal shirt boasts a classic fit with modern sophistication. Its high-quality fabric and precise tailoring ensure both comfort and an immaculate, professional appearance.', 0, 0, '2023-11-13 06:13:59.263466', 1),
(3, 'Men Regular Fit Solid Formal Shirt', 'Kevaens', 'uploads/20231113181518f-shirt-1.webp', 20, 1999, 799, 'A refined, classic formal shirt designed with sleek lines and tailored for a sophisticated fit. Crafted from high-quality, breathable fabric, it exudes elegance and versatility, making it an ideal choice for various formal occasions.', 0, 0, '2023-11-13 07:14:53.232025', 1),
(4, 'Men Regular Fit Solid Spread Collar Formal Shirt', 'VTEXX', 'uploads/20231113182059f-shirt-4.webp', 15, 1299, 399, 'A quintessential garment for the discerning professional. This formal shirt combines a timeless design with a contemporary edge, featuring a crisp collar and a sleek, streamlined silhouette. Its versatility effortlessly transitions from the boardroom to formal events.', 0, 0, '2023-11-13 12:50:59.004396', 1),
(5, 'Men Regular Fit Solid Formal Shirt', 'Allen Solly', 'uploads/20231113182323f-shirt-3.webp', 10, 2099, 999, 'Elevate your style with this meticulously designed formal shirt. The attention to detail is evident in its clean lines and impeccable construction, ensuring a smart and polished look. Ideal for occasions demanding a touch of refined elegance', 0, 0, '2023-11-13 12:52:06.883799', 1),
(6, 'Men Regular Fit Checkered Button Down Collar Casual Shirt', 'Trend Transfit', 'uploads/20231113212659c-shirt1.webp', 15, 999, 399, 'This shirt embodies a blend of classic charm and contemporary style. The timeless checkered pattern pairs harmoniously with its modern, tailored fit, creating a versatile piece suitable for casual outings or semi-formal gatherings.', 0, 0, '2023-11-13 15:56:59.819639', 2),
(7, 'Men Slim Fit Checkered Spread Collar Casual Shirt', 'Majestic Man', 'uploads/20231113212809c-shirt2.webp', 20, 1099, 449, 'Evoking a sense of tradition and sophistication, this checkered shirt boasts a refined plaid design. Crafted with attention to detail, it harmonizes a vintage aesthetic with a comfortable, contemporary silhouette, making it a go-to choice for a relaxed yet refined look.', 0, 0, '2023-11-13 15:58:09.426546', 2),
(8, 'Men Regular Fit Checkered Spread Collar Casual Shirt', 'Roadster', 'uploads/20231113212915c-shirt3.webp', 25, 1199, 589, 'Infusing urban flair with a laid-back vibe, this shirt showcases a smart checkered design. Its relaxed fit and subtle color contrasts offer a stylish option for everyday wear, effortlessly transitioning from work to weekend outings.', 0, 0, '2023-11-13 15:59:15.656210', 2),
(9, 'Men Slim Fit Checkered Slim Collar Casual Shirt', 'Dennis Lingo', 'uploads/20231113213033c-shirt4.webp', 10, 2499, 449, 'An embodiment of modernity, this grid-patterned checked shirt exudes contemporary elegance. Its clean lines and structured design complement a sleek silhouette, delivering a sophisticated and versatile addition to any wardrobe.', 0, 0, '2023-11-13 16:00:33.353996', 2),
(10, 'Men Regular Fit Checkered Built-up Collar Casual Shirt', 'Garry Richards', 'uploads/20231113213134c-shirt5.webp', 10, 1699, 489, 'This shirt stands as a versatile wardrobe essential. The classic checkered pattern, coupled with its comfortable and durable fabric, offers an adaptable style suitable for diverse occasions, ensuring a timeless yet trendy look.', 0, 0, '2023-11-13 16:01:34.236871', 2),
(11, 'Men Regular Fit Solid Cut Away Collar Casual Shirt', 'MAGICIAN', 'uploads/20231113213354d-shirt_1.webp', 20, 2199, 499, 'A timeless denim shirt that seamlessly merges rugged durability with casual sophistication. Its soft, worn-in fabric and classic design make it a staple piece for relaxed yet stylish everyday wear.', 0, 0, '2023-11-13 16:03:54.572052', 3),
(12, 'Men Regular Fit Washed Cut Away Collar Casual Shirt', 'SMILE STONE', 'uploads/20231113213513d-shirt_2.webp', 25, 1899, 489, 'This shirt pays homage to retro Americana with its distressed denim and authentic design. Its vintage appeal, complete with faded accents, evokes a sense of timeless style and laid-back charm.', 0, 0, '2023-11-13 16:05:13.129583', 3),
(13, 'Men Regular Fit Solid Casual Shirt', 'Regrowth', 'uploads/20231113213618d-shirt_3.webp', 21, 1999, 469, 'An urban take on the classic denim shirt, featuring a tailored fit and clean lines. Its versatility effortlessly transitions from a casual day look to a more refined style for evenings, offering a contemporary twist on a traditional favorite.', 0, 0, '2023-11-13 16:06:19.007484', 3),
(14, 'Men Slim Fit Solid Casual Shirt', 'Devils Fashion', 'uploads/20231113213710d-shirt_4.webp', 12, 1299, 449, 'A structured denim shirt designed for a sleek silhouette and a polished appearance. Its refined finish and sturdy denim fabric make it an ideal choice for those seeking a sophisticated yet relaxed outfit option.', 0, 0, '2023-11-13 16:07:10.250361', 3),
(15, 'Men Regular Fit Solid Cut Away Collar Casual Shirt', 'AIDAN PAUL', 'uploads/20231113213811d-shirt_5.webp', 10, 1999, 499, 'This denim shirt is a go-to piece for its adaptability. Its timeless design and durable fabric allow it to effortlessly pair with various styles, serving as an essential layer for both casual and semi-formal ensembles.', 0, 0, '2023-11-13 16:08:11.893601', 3),
(16, 'Men Regular Fit Printed Lapel Collar Beach Wear Shirt', 'The Indian Garage Co', 'uploads/20231113214055beachwear1.webp', 10, 1999, 499, 'Imagine yourself strolling along the shoreline in this vibrant, flowy beach dress, adorned with exotic floral prints. Its lightweight fabric and playful design capture the essence of a tropical escape, perfect for lazy days under the sun.', 0, 0, '2023-11-13 16:10:55.799902', 4),
(17, 'Men Regular Fit Geometric Print Cut Away Collar Beach Wear Shirt', 'Prinza', 'uploads/20231113214152beachwear2.webp', 10, 999, 349, 'These board shorts embody the spirit of the ocean, crafted with quick-dry material and featuring lively, eye-catching patterns. Their durability and functional design make them an ideal companion for adventurous beach activities.', 0, 0, '2023-11-13 16:11:52.468293', 4),
(18, 'Men Regular Fit Printed Spread Collar Beach Wear Shirt', 'Marmic Fab', 'uploads/20231113214331beachwear3.webp', 11, 799, 299, 'A sheer, bohemian-inspired cover-up exuding an effortless, free-spirited vibe. Its relaxed fit and delicate detailing make it a versatile piece, easily transitioning from a beach cover-up to a chic ensemble for beachside cafes', 0, 0, '2023-11-13 16:13:31.070870', 4),
(19, 'Men Regular Fit Printed Spread Collar Beach Wear Shirt', 'SHOOLIN', 'uploads/20231113214610xl-signature-designs-cotton-blend-rayon-printed-shirt-for-men-ori_BYo4JGY.jpeg', 15, 1399, 449, 'Dive into style with a nautical-themed one-piece swimsuit featuring classic stripes and a flattering cut. Its maritime charm and supportive design ensure both comfort and a timeless, maritime flair.', 0, 0, '2023-11-13 16:16:10.350946', 4),
(20, 'Men Regular Fit Printed Spread Collar Beach Wear Shirt', 'chibra', 'uploads/20231113214715beachwear5.webp', 7, 1399, 439, 'Picture a flowing, tie-dye maxi skirt paired with a breezy, off-shoulder crop top—a perfect combination for a beach stroll or a sunset gathering. This ensemble radiates effortless beach elegance, creating a relaxed yet refined look.', 0, 0, '2023-11-13 16:17:15.240747', 4),
(21, 'Men Regular Fit Printed Spread Collar Beach Wear Shirt', 'THEBROSSCO', 'uploads/20231113214813beachwear6.webp', 10, 899, 400, 'Imagine yourself strolling along the shoreline in this vibrant, flowy beach dress, adorned with exotic floral prints. Its lightweight fabric and playful design capture the essence of a tropical escape, perfect for lazy days under the sun.', 0, 0, '2023-11-13 16:18:13.032133', 4),
(22, 'Men Printed Round Neck Poly Cotton Green T-Shirt', 'KAJARU', 'uploads/20231113215150printed-t-shirt-1.webp', 20, 1399, 159, 'A canvas of self-expression, this T-shirt showcases a bold and artistic print, blurring the lines between fashion and art. Its vibrant colors and intricate design make a statement that\'s both striking and unique.', 0, 0, '2023-11-13 16:21:50.380769', 5),
(23, 'Men Printed Round Neck Poly Cotton Dark Green T-Shirt', 'KAJARU', 'uploads/20231113215324printed-t-shirt-2.webp', 30, 1399, 259, 'Transporting you back in time, this T-shirt boasts a retro-inspired print, evoking nostalgia with its classic graphics and distressed finish. Its faded look exudes a timeless charm that stands out in modern fashion.', 0, 0, '2023-11-13 16:23:24.671550', 5),
(24, 'Men Printed, Typography Round Neck Cotton Blend Black T-Shirt', 'Smartees', 'uploads/20231113215451printed-t-shirt-3.webp', 12, 1299, 100, 'A fusion of simplicity and style, this T-shirt features a clean, minimalist print that speaks volumes without saying too much. Its understated design is perfect for those who appreciate subtlety.', 0, 0, '2023-11-13 16:24:51.730720', 5),
(25, 'Men Printed, Typography Round Neck Cotton Blend Black T-Shirt', 'Smartees', 'uploads/20231113215538printed-t-shirt-4.webp', 20, 1599, 100, 'Bringing the outdoors to your wardrobe, this T-shirt showcases a nature-themed print, be it a scenic landscape, wildlife, or botanical elements. It captures the essence of the great outdoors in wearable art.', 0, 0, '2023-11-13 16:25:38.048484', 5),
(26, 'Men Printed Round Neck Cotton Blend Light Blue T-Shirt', 'NB NICKY BOY', 'uploads/20231113215654printed-t-shirt-5.webp', 7, 666, 299, 'This T-shirt elevates the ordinary with its mesmerizing geometric patterns, offering a symphony of shapes and colors. Its modern and structured design adds a touch of sophistication to casual wear.', 0, 0, '2023-11-13 16:26:54.284171', 5),
(27, 'Men Printed Round Neck Polyester Grey T-Shirt', 'KAJARU', 'uploads/20231113215836printed-t-shirt-6.webp', 9, 1399, 129, 'Bold, witty, or motivational, this T-shirt speaks volumes with its printed text. Whether it\'s a catchy phrase, a quote, or a powerful message, it\'s an instant conversation starter and a reflection of personality.', 0, 0, '2023-11-13 16:28:36.539868', 5),
(28, 'Men Printed Round Neck Cotton Blend Black T-Shirt', 'Smartees', 'uploads/20231113220002printed-t-shirt-7.webp', 15, 1999, 100, 'Celebrating fandom, this T-shirt proudly displays symbols, logos, or icons from popular culture. From beloved movies and TV shows to iconic symbols, it\'s a nod to shared passions.', 0, 0, '2023-11-13 16:30:02.982131', 5),
(29, 'Men Printed Round Neck Poly Cotton Blue T-Shirt', 'VeBNoR', 'uploads/20231113220113printed-t-shirt-8.webp', 16, 1330, 299, 'Unconventional and avant-garde, this T-shirt showcases an abstract print, blurring boundaries and inviting interpretation. Its artful chaos or structured chaos makes it a wearable conversation piece.', 0, 0, '2023-11-13 16:31:13.782382', 5),
(30, 'Men Printed Round Neck Cotton Blend Black T-Shirt', 'FOREVER 21', 'uploads/20231113220406printed-t-shirt-9.webp', 13, 899, 719, 'Capturing moments in print, this T-shirt displays high-quality photographic imagery. Whether it\'s a scenic landscape, a mesmerizing portrait, or a snapshot of urban life, it adds a visual narrative to your attire.', 0, 0, '2023-11-13 16:34:06.943840', 5),
(31, 'Indian Cricket Team Official Jersey Men Printed Polo Neck Polyester Blue T-Shirt', 'ADIDAS', 'uploads/20231113220518printed-t-shirt-10.webp', 16, 1999, 999, 'A celebration of diversity and tradition, this T-shirt features prints inspired by various cultures and traditions. From intricate patterns to symbolic motifs, it’s a tribute to heritage and identity', 0, 0, '2023-11-13 16:35:18.319283', 5),
(32, 'Men Full Sleeve Graphic Print Hooded Sweatshirt', 'mfb', 'uploads/20231113221634hoodie-1.webp', 30, 999, 499, 'A timeless essential, this hoodie is crafted for comfort and warmth. Its soft, fleece-lined interior and simple design make it the go-to choice for a cozy day or a relaxed evening.', 0, 0, '2023-11-13 16:46:34.132433', 7),
(33, 'Men Full Sleeve Graphic Print Hooded Sweatshirt', 'TRIPR', 'uploads/20231113221721hoodie-2.webp', 10, 2499, 499, 'This zip-up hoodie blends functionality with style. Designed for an active lifestyle, its breathable fabric and versatile features make it ideal for workouts or casual wear.', 0, 0, '2023-11-13 16:47:21.516031', 7),
(34, 'Men Full Sleeve Printed Hooded Sweatshirt', 'Datalact', 'uploads/20231113221833hoodie-3.webp', 10, 1299, 399, 'Bold and expressive, this hoodie features eye-catching graphics or slogans that make a statement. It\'s a standout piece for those who love to flaunt their style.', 0, 0, '2023-11-13 16:48:33.946905', 7),
(35, 'Men Full Sleeve Printed Hooded Sweatshirt', 'GLITO', 'uploads/20231113221930hoodie-4.webp', 10, 1699, 499, 'Embracing the trend of oversized clothing, this hoodie offers a relaxed fit, creating an effortlessly cool and comfortable look.', 0, 0, '2023-11-13 16:49:30.979467', 7),
(36, 'Men Full Sleeve Graphic Print Hooded Sweatshirt', 'TRIPR', 'uploads/20231113222025hoodie-5.webp', 20, 2499, 449, 'Designed for the modern tech enthusiast, this hoodie might include features like built-in headphones or charging ports, blending comfort with innovation.', 0, 0, '2023-11-13 16:50:25.903851', 7),
(37, 'Men Full Sleeve Solid Hooded Sweatshirt', 'Mast & Harbour', 'uploads/20231113222134hoodie-6.webp', 20, 1899, 599, 'Luxurious and warm, this hoodie is lined with faux fur, providing a touch of elegance to a casual staple, perfect for chilly weather', 0, 0, '2023-11-13 16:51:34.682294', 7),
(38, 'Men Full Sleeve Solid Hooded Sweatshirt', 'Tdoc', 'uploads/20231113222241hoodie-7.webp', 16, 999, 399, 'Ready for outdoor escapades, this hoodie boasts a cozy sherpa lining, perfect for keeping warm during hiking trips or camping adventures', 0, 0, '2023-11-13 16:52:41.210248', 7),
(39, 'xx', 'xx', 'uploads/20231113222319hoodie-8.webp', 10, 0, 0, 'Fashion-forward and vibrant, this hoodie features contrasting colors in bold blocks, offering a contemporary twist to a classic style.', 0, 0, '2023-11-13 16:53:19.234896', 7),
(40, 'xx', 'xx', 'uploads/20231113222409hoodie-9.webp', 30, 0, 0, 'With added adornments like sequins, patches, or embroidery, this hoodie elevates casual wear to a more glamorous level.', 0, 0, '2023-11-13 16:54:09.156393', 7),
(41, 'Men Slim Fit Beige Polyester Trousers', 'Red Cherry', 'uploads/20231113222928pants-1.webp', 10, 2049, 685, 'These pants are meticulously crafted for a sleek, modern silhouette. With a tapered fit, they effortlessly blend sophistication with contemporary style, perfect for a professional yet fashionable look.', 0, 0, '2023-11-13 16:59:28.046637', 9),
(42, 'Men Regular Fit Black Cotton Blend Trousers', 'Raymond', 'uploads/20231113223013pants-2.webp', 10, 2499, 1249, 'A timeless choice for formal occasions, these pants boast a traditional straight-leg cut. Their versatile design and crisp lines offer a refined appearance suitable for a range of dress codes.', 0, 0, '2023-11-13 17:00:13.655386', 9),
(43, 'Men Slim Fit Light Green Lycra Blend Trousers', 'AD & AV', 'uploads/20231113223132pants-3.webp', 10, 1545, 419, 'A nod to vintage fashion, these high-waisted pants feature a wide-leg silhouette, adding a touch of retro elegance to formal wear. Their flowy design exudes sophistication and grace.', 0, 0, '2023-11-13 17:01:32.236902', 9),
(44, 'Men Slim Fit Grey Viscose Rayon Trousers', 'INDICLUB', 'uploads/20231113223221pants-4.webp', 20, 999, 399, 'Elevating the standard dress pants, these trousers feature subtle textures like herringbone or subtle patterns, adding depth and visual interest to a classic formal ensemble.', 0, 0, '2023-11-13 17:02:21.344399', 9),
(45, 'Men Slim Fit Khaki Lycra Blend Trousers', 'Maleno', 'uploads/20231113223333pants-5.webp', 10, 2199, 419, 'For a contemporary take on formal attire, these cropped pants feature a slight flare at the hem. Their chic and fashion-forward design offers a unique twist to traditional formal wear.', 0, 0, '2023-11-13 17:03:33.615331', 9),
(46, 'Men Regular Fit Grey Cotton Blend With Attached Dupatta Trousers', 'ELANHOOD', 'uploads/20231113223420pants-6.webp', 10, 1299, 429, 'These trousers exude refinement with their pleated front and tapered leg. The tailored details create a polished and distinguished look, ideal for a more sophisticated formal setting.', 0, 0, '2023-11-13 17:04:20.130217', 9),
(47, 'Men Skinny Fit Grey Cotton Blend Trousers', 'PETER ENGLAND', 'uploads/20231113223637c-pants-1.webp', 10, 1999, 1299, 'These chinos embody versatility and style, boasting a modern slim fit. With a clean, streamlined design, they effortlessly blend casual comfort with a tailored look.', 0, 0, '2023-11-13 17:06:37.745141', 8),
(48, 'Men Regular Fit Brown Cotton Blend Trousers', 'Roadster', 'uploads/20231113223749c-pants-2.webp', 20, 1499, 779, 'Designed for flexibility and comfort, these chinos feature a stretch fabric, allowing ease of movement without compromising on style. Ideal for those seeking a balance between casual and formal wear.', 0, 0, '2023-11-13 17:07:49.932486', 8),
(49, 'Men Slim Fit Orange Pure Cotton Trousers', 'The Indian Garage Co', 'uploads/20231113223900c-pants-3.webp', 15, 1899, 664, 'Offering a contemporary silhouette, these chinos feature a tapered leg design that narrows towards the ankle, creating a sleek and sophisticated look suitable for various settings.', 0, 0, '2023-11-13 17:09:00.767721', 8),
(50, 'Men Slim Fit Green Cotton Blend Trousers', 'HIGHLANDER', 'uploads/20231113224004c-pants-4.webp', 19, 999, 539, 'Blending athleisure with classic style, these chinos incorporate the comfortable elements of joggers while maintaining the structured appearance of chinos. Perfect for a relaxed yet stylish outfit.', 0, 0, '2023-11-13 17:10:04.190550', 8),
(51, 'Men Slim Fit Grey Cotton Blend Trousers', 'FUBAR', 'uploads/20231113224101c-pants-5.webp', 9, 1648, 479, 'Elevating the standard chinos, these pants feature subtle prints or patterns, adding a touch of uniqueness to the classic design. The prints provide a fresh and modern take on a timeless piece.', 0, 0, '2023-11-13 17:11:01.890062', 8),
(52, 'Men Slim Fit Dark Blue Cotton Blend Trousers', 'The Indian Garage Co.', 'uploads/20231113224158c-pants-6.webp', 8, 1599, 637, 'Distinctively stylish, these chinos boast a cuffed hem at the bottom, adding a casual yet refined touch to the traditional chino design. The cuff detail offers a subtle and fashionable edge.', 0, 0, '2023-11-13 17:11:58.390764', 8),
(53, 'Oversize Men Typography Round Neck Pure Cotton Black T-Shirt', 'Veirdo', 'uploads/20231113225733p-t-shirt-1.webp', 10, 1199, 479, 'A foundational piece for every wardrobe, this classic crew neck T-shirt offers simplicity and versatility. Its clean lines and minimalistic design make it a go-to choice for effortless, everyday style.', 0, 0, '2023-11-13 17:27:33.924390', 6),
(54, 'Men Colorblock Polo Neck Poly Cotton Pink T-Shirt', 'dyrectdeals', 'uploads/20231113225859p-t-shirt-2.webp', 15, 1299, 498, 'Providing a touch of sophistication, the V-neck tee offers a subtle twist on the classic crew neck. Its understated elegance makes it suitable for both casual and semi-formal occasions.', 0, 0, '2023-11-13 17:28:59.419871', 6),
(55, 'Pack of 2 Men Self Design Round Neck Pure Cotton Dark Blue, Grey T-Shirt', 'London Hills', 'uploads/20231113230010p-t-shirt-3.webp', 20, 2598, 499, 'Effortlessly chic, the scoop neck tee features a wider neckline for a relaxed, laid-back vibe. Its loose fit offers a casual yet stylish appearance.', 0, 0, '2023-11-13 17:30:10.556938', 6),
(56, 'Men Solid Round Neck Pure Cotton Maroon T-Shirt', 'My Swag', 'uploads/20231113230132p-t-shirt-4.webp', 10, 1199, 349, 'With an elongated hem, the longline tee adds a contemporary edge to the traditional T-shirt design. Its extended length offers versatility for layering or a trendy, relaxed look.', 0, 0, '2023-11-13 17:31:32.994694', 6),
(57, 'Pack of 2 Men Colorblock Round Neck Cotton Blend Multicolor T-Shirt', 'Pytton', 'uploads/20231113230239p-t-shirt-5.webp', 15, 1999, 499, 'Simple yet functional, this tee features a small chest pocket, adding a subtle detail to the otherwise plain design. The pocket accent provides a touch of utility and style.', 0, 0, '2023-11-13 17:32:39.351683', 6),
(58, 'Men Solid Round Neck Polyester White T-Shirt', 'avnoor enterprises', 'uploads/20231113230341p-t-shirt-6.webp', 20, 999, 199, 'Embracing a more feminine style, the cap sleeve tee features sleeves that cover just the shoulders, offering a delicate and flattering silhouette for a versatile and comfortable look.', 0, 0, '2023-11-13 17:33:41.570094', 6),
(59, 'xxx', 'xxx', '', 1, 0, 0, 'Adding a modern twist, the high-low hem tee features a longer back hem than the front. This design detail offers a stylish and dynamic silhouette, perfect for a fashion-forward ensemble', 0, 0, '2023-11-13 17:34:38.999268', 6),
(60, 'Synthetic Leather Black Formal Office Shoes Slip On For Men  (Black)', 'Stylelure', 'uploads/20231113230922formal-shoe-1.webp', 10, 499, 4792, 'An embodiment of timeless elegance, these Oxfords feature a sleek, closed lacing system and a structured silhouette, making them a quintessential choice for formal occasions.', 0, 0, '2023-11-13 17:39:22.659491', 11),
(61, 'Slip On For Men  (Maroon)', 'METRO', 'uploads/20231113231037formal-shoe-2.webp', 15, 2690, 1345, 'Exuding sophistication, these brogues showcase intricate perforations and wingtip detailing, adding a touch of ornate style to a formal outfit.', 0, 0, '2023-11-13 17:40:37.554216', 11),
(62, 'Fortune LUCIO-201 Oxford For Men  (Brown)', 'LIBERTY', 'uploads/20231113231230formal-shoe-3.webp', 20, 2999, 919, 'Unconventionally stylish, these shoes feature a monk strap closure, replacing laces with a distinct buckle, offering a refined and distinctive appearance', 0, 0, '2023-11-13 17:42:30.123500', 11),
(63, 'ROBERT-2 Derby For Men  (Black)', 'LIBERTY', 'uploads/20231113231334formal-shoe-4.webp', 20, 2499, 937, 'Versatile and elegant, these Derby shoes boast an open lacing system, providing both comfort and a formal look. Their streamlined design suits various formal settings.', 0, 0, '2023-11-13 17:43:34.466008', 11),
(64, 'Lace Up For Men  (Black)', 'MOCHI', 'uploads/20231113231519formal-shoe-5.webp', 10, 2990, 2002, 'Offering sophistication and ease, these formal loafers feature a clean, sleek design without elaborate detailing, making them a refined yet convenient choice for formal attire.', 0, 0, '2023-11-13 17:45:19.925893', 11),
(65, 'Slip On For Men  (Black)', 'Bata', 'uploads/20231113231643formal-shoe-6.webp', 20, 661, 1099, 'Timeless and understated, these Oxfords feature a subtle cap over the toe, adding a hint of sophistication without excessive ornamentation.', 0, 0, '2023-11-13 17:46:43.911146', 11),
(66, 'Synthetic Leather For Men  (Black)', 'aadi', 'uploads/20231113231758formal-shoe-7.webp', 6, 1999, 546, 'Elevating formality, patent leather shoes offer a glossy finish, ideal for black-tie events or formal settings that demand a polished, standout appearance.', 0, 0, '2023-11-13 17:47:58.335999', 11),
(67, 'New Premium formal leather derby shoes for men Derby For Men  (Black)', 'Hautton', 'uploads/20231113231942formal-shoe-8.webp', 4, 4999, 1669, 'A contemporary take on formal shoes, these Chelsea boots exude class with their ankle-high design and elastic side panels, blending both style and convenience for formal occasions.', 0, 0, '2023-11-13 17:49:42.929410', 11),
(68, 'Party Wear Long Shoes For Men Long Boots Lace Up For Men  (Brown)', 'Zixer', 'uploads/20231113232128formal-shoe-9.webp', 10, 999, 799, 'These shoes are crafted from a single piece of leather, offering a clean and minimalist look, elevating formal attire with their sleek and unbroken design.', 0, 0, '2023-11-13 17:51:28.260556', 11),
(69, 'Men LPMXT-810 Off White Clogs Sandal', 'LIBERTY', 'uploads/20231113233715sandal-1.webp', 7, 899, 679, 'Effortlessly chic, slide sandals offer a simple, one-band design, providing easy slip-on comfort and minimalistic style.', 0, 0, '2023-11-13 17:56:43.622166', 10),
(70, 'Men Black Sandal', 'METRO', 'uploads/20231113232744sandal-2.webp', 10, 3999, 849, 'Making a bold statement, gladiator sandals feature multiple straps that wrap intricately around the foot and ankle, invoking a sense of ancient style merged with modern fashion.', 0, 0, '2023-11-13 17:57:44.188805', 10),
(71, 'Men Maroon Sandal', 'METRO', 'uploads/20231113233845sandal-3.webp', 13, 999, 595, 'These sandals are designed for active wear, with durable materials, adjustable straps, and comfortable footbeds, making them perfect for outdoor adventures or casual outings.', 0, 0, '2023-11-13 17:59:34.285110', 10),
(72, 'Men 2GC-07 Navy, Grey Casual Sandal', 'CAMPUS', 'uploads/20231113234044sandal-4.webp', 4, 1249, 599, 'Adding height and style, wedge sandals feature an elevated platform heel, offering a fashion-forward option for both casual and semi-formal occasions.', 0, 0, '2023-11-13 18:00:45.546536', 10),
(73, 'Men Black Sandal Special price', 'MOCHI', 'uploads/20231113233327sandal-5.webp', 20, 2290, 1369, 'Infused with a touch of rustic charm, espadrille sandals feature rope or jute detailing on the sole, giving a relaxed and beachy vibe to any outfit.', 0, 0, '2023-11-13 18:03:27.183958', 10),
(74, 'Men Brown Casual Sandal', 'Dispatch', 'uploads/20231113233433sandal-6.webp', 18, 1875, 949, 'Recognizable for their contoured footbed and adjustable straps, these sandals prioritize comfort and support while maintaining a casual, laid-back look.', 0, 0, '2023-11-13 18:04:33.101627', 10),
(75, 'Men Black Sandal', 'BRUTON', 'uploads/20231113233606sandal-7.webp', 4, 1299, 279, 'Elegant and versatile, these sandals feature a strap wrapping around the ankle, offering both style and stability for various settings, from casual outings to more dressed-up occasions.', 0, 0, '2023-11-13 18:06:06.347075', 10),
(76, 'Sneakers For Men  (White) Special price', 'Sparx', 'uploads/20231113234417sneakers-1.webp', 6, 899, 679, 'Timeless and versatile, these low-top sneakers feature a canvas upper and a rubber sole, offering a casual yet stylish look suitable for various occasions.', 0, 0, '2023-11-13 18:14:17.712612', 12),
(77, 'Combo Pack Of 4 Casual Sneakers With Sneakers For Men  (Multicolor)', 'SKYMORE', 'uploads/20231113234518sneakers-2.webp', 10, 3999, 849, 'With a throwback to the \'90s, these chunky sneakers boast a bulky silhouette and exaggerated soles, adding a bold and trendy statement to any outfit.', 0, 0, '2023-11-13 18:15:18.326273', 12),
(78, 'Sneakers For Men  (White) Special price', 'RapidBox', 'uploads/20231113234638sneakers-3.webp', 13, 999, 595, 'Embodying comfort and modern style, these slip-on sneakers feature a knit upper, providing a snug, sock-like fit and a sleek, minimalistic appearance.', 0, 0, '2023-11-13 18:16:38.953530', 12),
(79, 'Casual Sneakers ColourFul Block Shoes For Boys And Men Sneakers For Men  (Brown, White)', 'Labbin', 'uploads/20231113234734sneakers-4.webp', 23, 1249, 599, 'Engineered for performance, these running shoes feature breathable mesh, cushioned soles, and support structures, perfect for workouts or daily comfort.', 0, 0, '2023-11-13 18:17:34.304297', 12),
(80, 'Sneakers For Men  (White)', 'Layasa', 'uploads/20231113234920sneakers-5.webp', 30, 999, 499, 'A fusion of luxury and sport, these high-top sneakers showcase a leather construction, blending sophistication with the relaxed nature of sneakers.', 0, 0, '2023-11-13 18:19:20.637716', 12),
(81, 'Trending Stylish Casual Outdoor Sneakers Shoes For Men Sneakers For Men  (White, Black)', 'URBANBOX', 'uploads/20231113235029sneakers-6.webp', 22, 999, 448, 'Blurring the line between sneakers and boots, these shoes combine a sneaker’s comfort with the elevated style of a boot, boasting a platform sole for added height and a fashion-forward look.', 0, 0, '2023-11-13 18:20:29.350661', 12),
(82, 'Synthetic Leather |Lightweight|Comfort|Summer|Trendy|Walking|Outdoor|Daily Use Sneakers For Men  (White)', 'aadi', 'uploads/20231113235153sneakers-7.webp', 16, 1999, 384, 'Crafted with recycled materials or sustainable practices, these sneakers prioritize environmental consciousness without compromising style or comfort.', 0, 0, '2023-11-13 18:21:53.280486', 12),
(83, 'Fashionable Canvas Casual Partywear Outdoor Sneakers white Shoes For Mens Sneakers For Men  (Black) Special price', 'kardam&sons', 'uploads/20231113235254sneakers-8.webp', 40, 1999, 349, 'Elevating the sneaker game, these designer shoes feature unique embellishments, such as studs, embroidery, or metallic details, offering a luxurious and standout aesthetic.', 0, 0, '2023-11-13 18:22:54.243736', 12);

--
-- Indexes for dumped tables
--

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
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

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
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `shop_catagory`
--
ALTER TABLE `shop_catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_product_catagory_id_3c067a4f_fk_shop_catagory_id` (`catagory_id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `shop_catagory`
--
ALTER TABLE `shop_catagory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD CONSTRAINT `shop_product_catagory_id_3c067a4f_fk_shop_catagory_id` FOREIGN KEY (`catagory_id`) REFERENCES `shop_catagory` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
