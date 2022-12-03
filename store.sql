-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 04:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_cart`
--

CREATE TABLE `app_cart` (
  `id` bigint(20) NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_cart`
--

INSERT INTO `app_cart` (`id`, `quantity`, `product_id`, `user_id`) VALUES
(14, 4, 11, 2),
(19, 1, 6, 3),
(20, 1, 2, 3),
(21, 1, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `app_customer`
--

CREATE TABLE `app_customer` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `locality` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `pincode` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `landmark` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_customer`
--

INSERT INTO `app_customer` (`id`, `name`, `locality`, `city`, `pincode`, `user_id`, `landmark`) VALUES
(1, 'Honey', 'Thengana', 'Changry', 686536, 2, 'Opposite Canara Bank'),
(2, 'Mary Grace Joseph', 'Cherthala', 'Alappuzha', 686545, 3, 'Opposite Canara Bank'),
(3, 'Mary Grace Joseph', 'Kuttikkanam', 'Mundakayam', 686556, 3, 'Marian College Kuttikkanam'),
(4, 'molgy', 'cgvhbnm', 'cvgvb', 565656, 4, 'gvhbnjkm'),
(5, 'Mary Grace', 'Cherthala', 'Alappuzha', 686536, 3, 'Beach');

-- --------------------------------------------------------

--
-- Table structure for table `app_orderplaced`
--

CREATE TABLE `app_orderplaced` (
  `id` bigint(20) NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `ordered_date` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `Customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_orderplaced`
--

INSERT INTO `app_orderplaced` (`id`, `quantity`, `ordered_date`, `status`, `Customer_id`, `product_id`, `user_id`) VALUES
(1, 7, '2022-11-01 15:22:48.563600', 'Pending', 1, 1, 2),
(2, 1, '2022-11-01 15:22:49.110578', 'Pending', 1, 2, 2),
(3, 9, '2022-11-19 17:38:47.971631', 'Pending', 4, 13, 4),
(4, 1, '2022-11-19 17:38:48.338328', 'Pending', 4, 7, 4),
(5, 1, '2022-11-19 17:50:51.124159', 'Pending', 4, 7, 4),
(6, 1, '2022-11-19 17:50:51.228969', 'Pending', 4, 5, 4),
(7, 3, '2022-11-19 17:51:32.200262', 'Pending', 5, 7, 3),
(8, 1, '2022-11-19 17:51:32.374265', 'Pending', 5, 9, 3),
(9, 1, '2022-11-19 17:51:32.526261', 'Pending', 5, 3, 3),
(10, 1, '2022-11-28 09:53:10.115975', 'Pending', 1, 2, 2),
(11, 1, '2022-11-28 09:53:10.325187', 'Pending', 1, 2, 2),
(12, 1, '2022-11-28 17:19:47.624826', 'Pending', 5, 1, 3),
(13, 1, '2022-11-28 17:19:51.137174', 'Pending', 5, 10, 3),
(14, 1, '2022-11-28 17:19:52.273347', 'Pending', 5, 2, 3),
(15, 1, '2022-11-28 17:19:53.329902', 'Pending', 5, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `app_product`
--

CREATE TABLE `app_product` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `selling_price` double NOT NULL,
  `discounted_price` double NOT NULL,
  `description` longtext NOT NULL,
  `brand` varchar(100) NOT NULL,
  `category` varchar(5) NOT NULL,
  `product_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_product`
--

INSERT INTO `app_product` (`id`, `title`, `selling_price`, `discounted_price`, `description`, `brand`, `category`, `product_image`) VALUES
(1, 'steel kadayi', 300, 60, '100% steel', 'presitge', 'Men', 'productimg/1656247164_aluminum-kadai-500x500.jpg'),
(2, 'cooker', 399, 50, 'fghjkghjgvhgvh', 'presitge', 'Men', 'productimg/1656299654_51EwzMyO5iL._SX569_.jpg'),
(3, 'Mini Springform Cake Tin', 249, 40, 'dfghjgfvhbnjkfhbnjkchbj', 'nolta', 'Women', 'productimg/1656311565_jamie-oliver-mini-springform-cake-tin-set-of-4-atlantic-green-368_sJ4yDfH.webp'),
(4, 'Prestige Dinnerset', 289, 20, 'sdfghjdfcghhfghj', 'nolta', 'Women', 'productimg/1656353293_g5.jpg'),
(5, 'Nolta Dinnerset', 289, 280, 'dfghjfvghbnjgvh', 'nolta', 'Women', 'productimg/1656309805_b1.jpg'),
(6, 'plate', 388, 350, 'fcgvhbnjkmfgvhb', 'pigeon', 'Women', 'productimg/1656309917_b3.jpg'),
(7, 'Solimo 3-Piece Aluminium Non-Stick Cookware Set', 1299, 1200, 'fcgvhbnjkmgvhbnj', 'nolta', 'Men', 'productimg/1658686858_71bwxsfTaeL._SX569_.jpg'),
(8, 'Nirlon Premium Non Stick Aluminium Kitchen Ware 4', 2034, 2000, 'fcgvhbnjkgfgvhbnjjgfcgh', 'nirlon', 'Men', 'productimg/1662881007_81rQPDUxGOL._AC_UL320_.webp'),
(9, 'Nonstick Frying Pan', 500, 399, 'fghjhgfdfcvghb', 'presitge', 'Men', 'productimg/1662881260_31Yp5Vae4wL._AC_SR320320_.jpg'),
(10, 'Cello Non-Stick 12 Cavity Grill Appam Patra', 3333, 2999, 'Brand	Cello\r\nMaterial	Stainless Stee', 'cello', 'Men', 'productimg/1662881400_41EEe5g0L._AC_SR320320_.webp'),
(11, 'cello dinnerset', 2000, 1999, 'fcvghbnjkmbv', 'cello', 'Women', 'productimg/white_dinnerset.jpg'),
(12, 'Steel Dinnerset', 3000, 2599, 'fgvhbnjkmjhgvfg', 'pigeon', 'Women', 'productimg/Tulip_dinnerset.jpg'),
(13, 'Bake Plate', 1500, 1199, 'fgvhbnjf', 'nirlon', 'Women', 'productimg/Bakeware1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add customer', 7, 'add_customer'),
(26, 'Can change customer', 7, 'change_customer'),
(27, 'Can delete customer', 7, 'delete_customer'),
(28, 'Can view customer', 7, 'view_customer'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add order placed', 9, 'add_orderplaced'),
(34, 'Can change order placed', 9, 'change_orderplaced'),
(35, 'Can delete order placed', 9, 'delete_orderplaced'),
(36, 'Can view order placed', 9, 'view_orderplaced'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$bCUWAVlYc3JrKKqn4Rev0A$qhhVlcYeqs36uViVMsElOGn0hcO5aC5kZYDvJ9X8Gs0=', '2022-11-19 17:44:32.283443', 1, 'admin', '', '', '', 1, 1, '2022-11-01 12:45:19.167765'),
(2, 'pbkdf2_sha256$390000$rSsocMLQwFm9OQy2WceXEb$IMNyggIrazKQeCXW7pdrnsguTn/LWmmzyYhSTHkjp6Q=', '2022-11-28 09:53:00.270079', 0, 'Honey_Sebastian', '', '', 'honey@gmail.com', 0, 1, '2022-11-01 14:05:46.003907'),
(3, 'pbkdf2_sha256$390000$gGOolPZpzNbZBBywE02L2C$bzl40tLH681zp3vQ+z3M8lCchpPxEYCsJksnijcVKG0=', '2022-11-28 17:35:40.592048', 0, 'Mary_Grace', '', '', 'mary@gmail.com', 0, 1, '2022-11-01 18:55:14.139093'),
(4, 'pbkdf2_sha256$390000$g3MlOWeRruleZ6I4kc2sL5$GfjccWbzQSYnVKI86rzpYWeBF1wDpTOrR2rlECfQ2Ac=', '2022-11-19 17:48:59.428090', 0, 'Molgy', '', '', 'molgy123@gmail.com', 0, 1, '2022-11-19 05:40:03.326904'),
(5, 'pbkdf2_sha256$390000$opltFLIKNmebHDIbtgAySb$ECRlJSI5M0ZyG5dK2zQAwFChJCk9Kb8ciuyOneWMpiE=', NULL, 0, 'Treesa', '', '', 'treesa123@gmail.com', 0, 1, '2022-11-19 05:40:37.161771'),
(6, 'pbkdf2_sha256$390000$SKxMsQ6jxuoFHIgW50YUKb$HyEp05Z8j+Qq3HipNqjZltAZflBgfxrmm5ZJiViBgrE=', NULL, 0, 'Joseph', '', '', 'joseph123@gmail.com', 0, 1, '2022-11-19 05:40:59.715454'),
(7, 'pbkdf2_sha256$390000$ylJEwJmk1JZm52fAhuhfYB$voKvYv1vF2A6N8MdEaskRvY910oHfdmpAeFL0GVOAgI=', NULL, 0, 'Jinsmon', '', '', 'jinsmon123@gmail.com', 0, 1, '2022-11-19 05:41:23.083867'),
(8, 'pbkdf2_sha256$390000$eseGFVfMj3KYN1zSTtxakz$i1whEHGGEmogMQE8PhUV0ahcCZqlxIJtyMHQcRx2x4Y=', NULL, 0, 'Monica', '', '', 'monica123@gmail.com', 0, 1, '2022-11-19 05:42:49.746591');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-11-01 13:36:33.813977', '1', '1', 1, '[{\"added\": {}}]', 8, 1),
(2, '2022-11-01 13:37:53.062946', '2', '2', 1, '[{\"added\": {}}]', 8, 1),
(3, '2022-11-01 13:44:01.128573', '3', '3', 1, '[{\"added\": {}}]', 8, 1),
(4, '2022-11-01 13:48:14.950743', '4', '4', 1, '[{\"added\": {}}]', 8, 1),
(5, '2022-11-01 18:09:31.767903', '5', '5', 1, '[{\"added\": {}}]', 8, 1),
(6, '2022-11-01 18:12:37.310042', '6', '6', 1, '[{\"added\": {}}]', 8, 1),
(7, '2022-11-01 18:14:28.161675', '7', '7', 1, '[{\"added\": {}}]', 8, 1),
(8, '2022-11-01 18:16:13.743025', '8', '8', 1, '[{\"added\": {}}]', 8, 1),
(9, '2022-11-01 18:17:26.718217', '9', '9', 1, '[{\"added\": {}}]', 8, 1),
(10, '2022-11-01 18:19:49.414696', '10', '10', 1, '[{\"added\": {}}]', 8, 1),
(11, '2022-11-01 18:26:39.520412', '11', '11', 1, '[{\"added\": {}}]', 8, 1),
(12, '2022-11-01 18:27:17.628910', '12', '12', 1, '[{\"added\": {}}]', 8, 1),
(13, '2022-11-01 18:27:52.062072', '13', '13', 1, '[{\"added\": {}}]', 8, 1),
(14, '2022-11-19 17:46:05.290590', '3', 'Mary_Grace', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(10, 'app', 'cart'),
(7, 'app', 'customer'),
(9, 'app', 'orderplaced'),
(8, 'app', 'product'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-01 12:28:00.628257'),
(2, 'auth', '0001_initial', '2022-11-01 12:28:15.388365'),
(3, 'admin', '0001_initial', '2022-11-01 12:28:19.391949'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-01 12:28:19.515861'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-01 12:28:19.587869'),
(6, 'app', '0001_initial', '2022-11-01 12:28:36.691961'),
(7, 'app', '0002_alter_orderplaced_status', '2022-11-01 12:28:36.892941'),
(8, 'app', '0003_alter_orderplaced_status', '2022-11-01 12:28:36.980934'),
(9, 'app', '0004_customer_landmark_alter_orderplaced_status', '2022-11-01 12:28:38.873419'),
(10, 'app', '0005_alter_orderplaced_status', '2022-11-01 12:28:39.043075'),
(11, 'app', '0006_alter_orderplaced_status', '2022-11-01 12:28:39.139064'),
(12, 'contenttypes', '0002_remove_content_type_name', '2022-11-01 12:28:40.680936'),
(13, 'auth', '0002_alter_permission_name_max_length', '2022-11-01 12:28:43.638773'),
(14, 'auth', '0003_alter_user_email_max_length', '2022-11-01 12:28:44.075552'),
(15, 'auth', '0004_alter_user_username_opts', '2022-11-01 12:28:44.179939'),
(16, 'auth', '0005_alter_user_last_login_null', '2022-11-01 12:28:46.158600'),
(17, 'auth', '0006_require_contenttypes_0002', '2022-11-01 12:28:46.432584'),
(18, 'auth', '0007_alter_validators_add_error_messages', '2022-11-01 12:28:46.680020'),
(19, 'auth', '0008_alter_user_username_max_length', '2022-11-01 12:28:46.923880'),
(20, 'auth', '0009_alter_user_last_name_max_length', '2022-11-01 12:28:47.250659'),
(21, 'auth', '0010_alter_group_name_max_length', '2022-11-01 12:28:47.754619'),
(22, 'auth', '0011_update_proxy_permissions', '2022-11-01 12:28:47.863420'),
(23, 'auth', '0012_alter_user_first_name_max_length', '2022-11-01 12:28:48.150819'),
(24, 'sessions', '0001_initial', '2022-11-01 12:28:50.092008');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_cart`
--
ALTER TABLE `app_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_cart_product_id_a4171918_fk_app_product_id` (`product_id`),
  ADD KEY `app_cart_user_id_2bf07879_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `app_customer`
--
ALTER TABLE `app_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_customer_user_id_e6e52921_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `app_orderplaced`
--
ALTER TABLE `app_orderplaced`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_orderplaced_Customer_id_ad016e6b_fk_app_customer_id` (`Customer_id`),
  ADD KEY `app_orderplaced_product_id_90c7863a_fk_app_product_id` (`product_id`),
  ADD KEY `app_orderplaced_user_id_3c6fe1e1_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `app_product`
--
ALTER TABLE `app_product`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_cart`
--
ALTER TABLE `app_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `app_customer`
--
ALTER TABLE `app_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app_orderplaced`
--
ALTER TABLE `app_orderplaced`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `app_product`
--
ALTER TABLE `app_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_cart`
--
ALTER TABLE `app_cart`
  ADD CONSTRAINT `app_cart_product_id_a4171918_fk_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`id`),
  ADD CONSTRAINT `app_cart_user_id_2bf07879_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `app_customer`
--
ALTER TABLE `app_customer`
  ADD CONSTRAINT `app_customer_user_id_e6e52921_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `app_orderplaced`
--
ALTER TABLE `app_orderplaced`
  ADD CONSTRAINT `app_orderplaced_Customer_id_ad016e6b_fk_app_customer_id` FOREIGN KEY (`Customer_id`) REFERENCES `app_customer` (`id`),
  ADD CONSTRAINT `app_orderplaced_product_id_90c7863a_fk_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`id`),
  ADD CONSTRAINT `app_orderplaced_user_id_3c6fe1e1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
