-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2018 at 08:26 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(4, 'GUCCI', 'All GUCCI Product', 1, '2018-03-24 23:02:54', '2018-03-24 23:58:03'),
(6, 'Yellow', 'All Yellow Brand', 1, '2018-03-24 23:06:23', '2018-03-24 23:58:49'),
(7, 'Aarong', 'All Aarong Brands', 1, '2018-03-24 23:06:51', '2018-03-24 23:58:51'),
(8, 'Richman', 'All Richman  Brands', 1, '2018-03-24 23:07:13', '2018-03-24 23:58:53'),
(9, 'Rang', 'All  Rang  Brands', 1, '2018-03-24 23:07:44', '2018-03-24 23:58:54'),
(10, 'Dorjibari', 'All Dorjibari  Brand', 1, '2018-03-24 23:08:09', '2018-03-24 23:58:57'),
(17, 'sdfs', 'sfsdf', 0, '2018-03-25 00:36:55', '2018-03-25 00:37:06'),
(19, 'Samsung', 'SamsungSamsung', 1, '2018-03-26 10:12:43', '2018-03-26 10:12:43'),
(20, 'Cannon', 'Cannon', 1, '2018-03-26 10:21:02', '2018-03-26 10:21:02'),
(21, 'Walton', 'Walton', 1, '2018-03-26 10:25:58', '2018-03-26 10:25:58'),
(22, 'Singer', 'Singer', 1, '2018-03-26 10:26:25', '2018-03-26 10:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(5, 'Men\'s', 'All Men\'s Fashion', 1, '2018-03-24 22:53:53', '2018-03-26 11:24:35'),
(6, 'Women\'s', 'All Women\'s Fashion', 1, '2018-03-24 22:54:24', '2018-03-26 11:24:27'),
(7, 'Phone & Tablets', 'All Phone & Tablets', 1, '2018-03-24 22:54:57', '2018-03-24 22:54:57'),
(8, 'Tvs,Audio & Cameras', 'All Tvs,Audio & Cameras', 1, '2018-03-24 22:55:32', '2018-03-24 22:55:32'),
(9, 'Appliances', 'All Appliances', 1, '2018-03-24 22:56:56', '2018-03-24 22:56:56'),
(10, 'Home & Living', 'All Home & Living', 1, '2018-03-24 22:57:17', '2018-04-09 05:59:20'),
(11, 'Sports & Travel', 'All Sports & Travel', 0, '2018-03-24 22:57:41', '2018-03-26 11:19:35'),
(12, 'Beauty & Health', 'All Beauty & Health', 1, '2018-03-24 22:58:37', '2018-03-24 22:58:37'),
(13, 'Baby,Kids,& Toys', 'All Baby,Kids,& Toys', 0, '2018-03-24 22:59:04', '2018-03-26 11:16:22'),
(16, 'adsad', 'adsad', 0, '2018-03-25 00:36:26', '2018-03-25 00:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email_address`, `password`, `phone_number`, `created_at`, `updated_at`) VALUES
(14, 'Md', 'Riyadul', 'f3017585@nwytg.com', '$2y$10$yW6ljl.CBbNg1uCYOLFn/uoIKOKaUH1nahlpjm.SjIFWMvwlX2rEG', '12312312', '2018-04-04 05:37:17', '2018-04-04 05:37:17'),
(24, 'Riyadul', 'Islam', 'zigab@mailtrix.net', '$2y$10$YTyy5dVKg7vGSKkSdLp0W.gBBXOkB2ekXCPanQVSTN.H9O3lRmQt.', '333333333', '2018-04-04 07:55:53', '2018-04-04 07:55:53'),
(56, 'A', 'B', 'juijaarrin@gmail.com', '$2y$10$Mv/L6R5kaHVXD8BufLzbm.MjzcKKgoQytg32XZ1RMBL44UhRfUGCu', '1321312', '2018-04-06 04:45:36', '2018-04-06 04:45:36'),
(58, 'Alamin', 'Hossain', 'abc@gmail.com', '$2y$10$ZdeCp6yR97nKgOxL/hZWnuQk2fM08.FS8JmUrwUI2HmiHFrS2C9gK', '1111111111111', '2018-04-08 11:35:35', '2018-04-08 11:35:35'),
(59, 'Md', 'Riyadul', 'rukacuresu@emailure.net', '$2y$10$8UV036IXHaZwtD38x48tlO3gcQewTbGn3/KUCGdE3yR1Whm9N2vQy', '123456789', '2018-04-10 00:24:57', '2018-04-10 00:24:57'),
(60, 'Dipto', 'Hussain', 'ab@gmail.com', '$2y$10$2z5XkJk5SH/ioy4mBAEUoubmlzfhZ/jUGjaudTRDmeC0KjFDjYAJC', '1231', '2018-04-10 02:16:18', '2018-04-10 02:16:18'),
(61, 'Tonmoy', 'Ajize', 'tonmoy@tontri.com', '$2y$10$0m2qs..ge8esVdJ9SAiNnelint5lXn7yFIF4dAxUmxsE9kaaHUKO.', '09765433', '2018-04-10 07:20:01', '2018-04-10 07:20:01'),
(62, 'rwrdrdr', 'rwdrdr', 'abtttt@gmail.com', '$2y$10$Mp7cuOVuYNrMTqjjepQKo.FI/RNjXTENrHVN8t5/kIgsGAlap2tV.', '44444444', '2018-04-10 07:20:47', '2018-04-10 07:20:47'),
(63, 'Riyadul', 'werfoefje', 'abffff@gmail.com', '$2y$10$e7WdH0xGbo5SDhp94S3..ub6nm/D7C/TGZKNxu8zRrX6kEFcUJRLu', '234234e23', '2018-04-10 07:21:21', '2018-04-10 07:21:21'),
(64, 'md', 'shawon', 'mamunshawon49@gmail.com', '$2y$10$ALpnRZtxStUebUGp2Wkl3e7mjnnW020NEG1RXqVDhU05nqZft9kXy', '111111111111', '2018-04-13 07:19:27', '2018-04-13 07:19:27'),
(65, 'Md', 'Tuhin', 'aaa@gmail.com', '$2y$10$mmW.wI2T5udFswjYFPYD3u9N2mQLLVBR6ltC4PfJrj6VYO55FCtsK', '32213123', '2018-04-13 07:33:42', '2018-04-13 07:33:42'),
(66, 'AA', 'AAA', 'vujefiduc@web2mailco.com', '$2y$10$eUghCTeH/FLH.a.Kwe8UkOaHgRgt0BXNah5iIIhuKUXabO2isZTc6', '132131', '2018-04-13 08:19:00', '2018-04-13 08:19:00'),
(67, 'mac', 'jac', 'bappymafil@gmail.com', '$2y$10$.hqcNfPhHN/iofX5f5WuaOlJHB9pnh3NLlzBvQXjqiL2eI8vDlbXC', '23e2e2e32e', '2018-04-13 08:22:14', '2018-04-13 08:22:14'),
(68, 'Rahi', 'vai', 'rahivai@gmail.com', '$2y$10$z6Hy5sgZLSg/29jo.MLTGecSaOKw.YzIyIFof0kibtkkL8AvGDbWG', '1231321', '2018-04-19 09:10:45', '2018-04-19 09:10:45'),
(69, 'rofiq', 'ahamd', 'rofiqmia@gmail.com', '$2y$10$XjDdo3.dVXxiuMX1AF6xmOKD3wLKli3HTpS1hS9g54.9BuFqzGpR.', '2342423432', '2018-04-19 11:03:55', '2018-04-19 11:03:55'),
(70, 'Faijul', 'Islam', 'vujefiduc@web2mailco.com', '$2y$10$hBAeuZ4l7KLd2q8URoz/HOZHhXnpxPY7d9tM6rUl/e1nyT0P6Y32y', '13213123', '2018-04-19 11:46:50', '2018-04-19 11:46:50');

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
(3, '2018_03_12_094550_create_categories_table', 1),
(4, '2018_03_22_163533_create_brands_table', 2),
(5, '2018_03_24_133759_create_products_table', 3),
(6, '2018_04_02_170012_create_customers_table', 4),
(7, '2018_04_04_170121_create_shippings_table', 5),
(8, '2018_04_08_113936_create_orders_table', 6),
(9, '2018_04_08_114036_create_payments_table', 6),
(10, '2018_04_08_114051_create_order_details_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(8,2) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 57, 8, 122.00, 'Pending', '2018-04-08 08:03:33', '2018-04-08 08:03:33'),
(2, 57, 8, 122.00, 'Pending', '2018-04-08 08:04:00', '2018-04-08 08:04:00'),
(3, 57, 8, 122.00, 'Pending', '2018-04-08 08:04:16', '2018-04-08 08:04:16'),
(4, 57, 8, 122.00, 'Pending', '2018-04-08 08:04:27', '2018-04-08 08:04:27'),
(5, 57, 8, 122.00, 'Pending', '2018-04-08 08:04:48', '2018-04-08 08:04:48'),
(6, 57, 8, 122.00, 'Pending', '2018-04-08 08:06:04', '2018-04-08 08:06:04'),
(7, 57, 8, 122.00, 'Pending', '2018-04-08 08:06:42', '2018-04-08 08:06:42'),
(8, 57, 8, 122.00, 'Pending', '2018-04-08 08:06:54', '2018-04-08 08:06:54'),
(9, 57, 9, 122.00, 'Pending', '2018-04-08 08:10:22', '2018-04-08 08:10:22'),
(10, 58, 10, 198122.00, 'Pending', '2018-04-08 11:37:14', '2018-04-08 11:37:14'),
(11, 58, 11, 122.00, 'Pending', '2018-04-08 12:30:04', '2018-04-08 12:30:04'),
(12, 58, 12, 160000.00, 'Pending', '2018-04-09 03:45:40', '2018-04-09 03:45:40'),
(13, 59, 13, 220000.00, 'Pending', '2018-04-10 00:25:46', '2018-04-10 00:25:46'),
(14, 60, 14, 144000.00, 'Pending', '2018-04-10 02:16:34', '2018-04-10 02:16:34'),
(15, 63, 15, 72001.00, 'Pending', '2018-04-10 07:22:02', '2018-04-10 07:22:02'),
(16, 64, 16, 252000.00, 'Pending', '2018-04-13 07:20:05', '2018-04-13 07:20:05'),
(17, 67, 17, 324000.00, 'Pending', '2018-04-13 08:22:50', '2018-04-13 08:22:50'),
(18, 68, 18, 120122.00, 'Pending', '2018-04-19 09:11:41', '2018-04-19 09:11:41'),
(19, 69, 19, 600000.00, 'Pending', '2018-04-19 11:05:33', '2018-04-19 11:05:33'),
(20, 70, 20, 78000.00, 'Pending', '2018-04-19 11:48:09', '2018-04-19 11:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 7, 9, 'Saree', 122.00, 1, '2018-04-08 08:06:42', '2018-04-08 08:06:42'),
(2, 9, 20, 'Saree', 122.00, 1, '2018-04-08 08:10:22', '2018-04-08 08:10:22'),
(3, 10, 18, 'Fridge', 18000.00, 1, '2018-04-08 11:37:14', '2018-04-08 11:37:14'),
(4, 10, 20, 'Saree', 122.00, 1, '2018-04-08 11:37:14', '2018-04-08 11:37:14'),
(5, 10, 12, 'samsung glaxy s2', 180000.00, 1, '2018-04-08 11:37:14', '2018-04-08 11:37:14'),
(6, 11, 20, 'Saree', 122.00, 1, '2018-04-08 12:30:04', '2018-04-08 12:30:04'),
(7, 12, 15, 'Cannon DSLR', 60000.00, 1, '2018-04-09 03:45:40', '2018-04-09 03:45:40'),
(8, 12, 17, 'Air Conditioner', 100000.00, 1, '2018-04-09 03:45:40', '2018-04-09 03:45:40'),
(9, 13, 17, 'Air Conditioner', 100000.00, 1, '2018-04-10 00:25:46', '2018-04-10 00:25:46'),
(10, 13, 15, 'Cannon DSLR', 60000.00, 2, '2018-04-10 00:25:47', '2018-04-10 00:25:47'),
(11, 14, 16, 'Cannon Digital Camera', 12000.00, 2, '2018-04-10 02:16:34', '2018-04-10 02:16:34'),
(12, 14, 14, 'Samsung mobile', 120000.00, 1, '2018-04-10 02:16:34', '2018-04-10 02:16:34'),
(13, 15, 16, 'Cannon Digital Camera', 12000.00, 1, '2018-04-10 07:22:02', '2018-04-10 07:22:02'),
(14, 15, 15, 'Cannon DSLR', 60000.00, 1, '2018-04-10 07:22:02', '2018-04-10 07:22:02'),
(15, 15, 19, 'Shirt', 1.00, 1, '2018-04-10 07:22:02', '2018-04-10 07:22:02'),
(16, 16, 14, 'Samsung mobile', 120000.00, 2, '2018-04-13 07:20:05', '2018-04-13 07:20:05'),
(17, 16, 16, 'Cannon Digital Camera', 12000.00, 1, '2018-04-13 07:20:05', '2018-04-13 07:20:05'),
(18, 17, 16, 'Cannon Digital Camera', 12000.00, 2, '2018-04-13 08:22:50', '2018-04-13 08:22:50'),
(19, 17, 14, 'Samsung mobile', 120000.00, 1, '2018-04-13 08:22:50', '2018-04-13 08:22:50'),
(20, 17, 12, 'samsung glaxy s2', 180000.00, 1, '2018-04-13 08:22:50', '2018-04-13 08:22:50'),
(21, 18, 20, 'Saree', 122.00, 1, '2018-04-19 09:11:41', '2018-04-19 09:11:41'),
(22, 18, 14, 'Samsung mobile', 120000.00, 1, '2018-04-19 09:11:41', '2018-04-19 09:11:41'),
(23, 19, 14, 'Samsung mobile', 120000.00, 5, '2018-04-19 11:05:33', '2018-04-19 11:05:33'),
(24, 20, 18, 'Fridge', 18000.00, 1, '2018-04-19 11:48:09', '2018-04-19 11:48:09'),
(25, 20, 15, 'Cannon DSLR', 60000.00, 1, '2018-04-19 11:48:09', '2018-04-19 11:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Cash', 'Pending', '2018-04-08 08:04:00', '2018-04-08 08:04:00'),
(2, 3, 'Cash', 'Pending', '2018-04-08 08:04:16', '2018-04-08 08:04:16'),
(3, 4, 'Cash', 'Pending', '2018-04-08 08:04:27', '2018-04-08 08:04:27'),
(4, 5, 'Cash', 'Pending', '2018-04-08 08:04:48', '2018-04-08 08:04:48'),
(5, 6, 'Cash', 'Pending', '2018-04-08 08:06:04', '2018-04-08 08:06:04'),
(6, 7, 'Cash', 'Pending', '2018-04-08 08:06:42', '2018-04-08 08:06:42'),
(7, 8, 'Cash', 'Pending', '2018-04-08 08:06:54', '2018-04-08 08:06:54'),
(8, 9, 'Cash', 'Pending', '2018-04-08 08:10:22', '2018-04-08 08:10:22'),
(9, 10, 'Cash', 'Pending', '2018-04-08 11:37:14', '2018-04-08 11:37:14'),
(10, 11, 'Cash', 'Pending', '2018-04-08 12:30:04', '2018-04-08 12:30:04'),
(11, 12, 'Cash', 'Pending', '2018-04-09 03:45:40', '2018-04-09 03:45:40'),
(12, 13, 'Cash', 'Pending', '2018-04-10 00:25:46', '2018-04-10 00:25:46'),
(13, 14, 'Cash', 'Pending', '2018-04-10 02:16:34', '2018-04-10 02:16:34'),
(14, 15, 'Cash', 'Pending', '2018-04-10 07:22:02', '2018-04-10 07:22:02'),
(15, 16, 'Cash', 'Pending', '2018-04-13 07:20:05', '2018-04-13 07:20:05'),
(16, 17, 'Cash', 'Pending', '2018-04-13 08:22:50', '2018-04-13 08:22:50'),
(17, 18, 'Cash', 'Pending', '2018-04-19 09:11:41', '2018-04-19 09:11:41'),
(18, 19, 'Cash', 'Pending', '2018-04-19 11:05:33', '2018-04-19 11:05:33'),
(19, 20, 'Cash', 'Pending', '2018-04-19 11:48:09', '2018-04-19 11:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `product_price`, `product_quantity`, `short_description`, `long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(9, 6, 7, 'Saree', 122.00, 11, 'sssssssss', '<p>dddddddddddd</p>', 'product-images/i10.jpg', 1, '2018-03-25 11:30:05', '2018-03-25 11:30:05'),
(12, 7, 19, 'samsung glaxy s2', 180000.00, 3, 'samsung glaxy s2 samsung glaxy s2', '<p>samsung glaxy s2 samsung glaxy s2</p>', 'product-images/downloazd.jpg', 1, '2018-03-26 10:16:23', '2018-03-26 10:16:23'),
(13, 5, 4, 'T-Shirt', 300.00, 12, 'sdfsfs', '<p>xcvxcv</p>', 'product-images/woo4.jpg', 0, '2018-03-26 10:17:29', '2018-03-27 02:17:11'),
(14, 7, 19, 'Samsung mobile', 120000.00, 3, 'ssfs', '<p>dfssf</p>', 'product-images/download.jpg', 1, '2018-03-26 10:18:33', '2018-03-26 10:18:33'),
(15, 8, 20, 'Cannon DSLR', 60000.00, 60, 'Cannon DSLR Cannon DSLR', '<p>Cannon DSLR Cannon DSLR</p>', 'product-images/5dmkiv_3q_300x300.jpg', 1, '2018-03-26 10:23:15', '2018-03-27 12:12:30'),
(16, 8, 20, 'Cannon Digital Camera', 12000.00, 9, 'Cannon Digital Camera', '<p>Cannon Digital Camera</p>', 'product-images/Cannon DSLR.jpg', 1, '2018-03-26 10:23:57', '2018-03-26 10:23:57'),
(17, 9, 21, 'Air Conditioner', 100000.00, 54, 'Air Conditioner', '<p>Air Conditioner</p>', 'product-images/Ac.jpg', 1, '2018-03-26 10:27:25', '2018-03-27 12:12:07'),
(18, 9, 22, 'Fridge', 18000.00, 40, 'Fridge', '<p>Fridge</p>', 'product-images/ffffffff.png', 1, '2018-03-26 10:31:28', '2018-03-28 00:42:26'),
(19, 6, 4, 'Watch', 300.00, 10, 'Watch', '<p>Watch Watch</p>', 'product-images/Watch.jpg', 1, '2018-03-28 00:58:37', '2018-04-19 12:07:39'),
(20, 6, 7, 'Saree', 122.00, 1111, 'sseww', '<p>we</p>', 'product-images/Saree.jpg', 1, '2018-03-28 01:24:43', '2018-03-28 02:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `full_name`, `email_address`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'SSDD', 'ab@gmail.com', '3234', 'sfsdsdfs', '2018-04-04 11:53:31', '2018-04-04 11:53:31'),
(2, 'SSDD', 'ab@gmail.com', '3234', 'sfsdsdfs', '2018-04-04 11:54:44', '2018-04-04 11:54:44'),
(3, 'SSDD', 'ab@gmail.com', '3234', 'sfsdsdfs', '2018-04-04 11:58:50', '2018-04-04 11:58:50'),
(4, 'ShawonHassan', 'zigab@mailtrix.net', '12345667', 'kandarcor', '2018-04-04 12:04:57', '2018-04-04 12:04:57'),
(5, 'AB', 'juijaarrin@gmail.com', '1321312', 'dvxcvdvx', '2018-04-06 04:45:54', '2018-04-06 04:45:54'),
(6, 'AB', 'juijaarrin@gmail.com', '1321312', 'dvxcvdvxsfsdfs', '2018-04-06 05:01:16', '2018-04-06 05:01:16'),
(7, 'RiyadulIslam', 'sfdsdscd@gmail.com', '12321312', 'zczcsdfs', '2018-04-08 07:51:46', '2018-04-08 07:51:46'),
(8, 'RiyadulIslam', 'sfdsdscd@gmail.com', '12321312', 'sfsds', '2018-04-08 08:03:29', '2018-04-08 08:03:29'),
(9, 'RiyadulIslam', 'sfdsdscd@gmail.com', '12321312', 'adasd', '2018-04-08 08:10:17', '2018-04-08 08:10:17'),
(10, 'AlaminHossain', 'abc@gmail.com', '1111111111111', 'sfsdf', '2018-04-08 11:37:11', '2018-04-08 11:37:11'),
(11, 'AlaminHossain', 'abc@gmail.com', '1111111111111', 'dsafsdsd', '2018-04-08 12:29:59', '2018-04-08 12:29:59'),
(12, 'AlaminHossain', 'abc@gmail.com', '1111111111111', 'Mirpur', '2018-04-09 03:45:36', '2018-04-09 03:45:36'),
(13, 'RIyadul', 'rukacuresu@emailure.net', '123456789', 'Savar', '2018-04-10 00:25:41', '2018-04-10 00:25:41'),
(14, 'DiptoHussain', 'ab@gmail.com', '1231', 'sfdsfdssd', '2018-04-10 02:16:31', '2018-04-10 02:16:31'),
(15, 'Riyadulwerfoefje', 'abffff@gmail.com', '234234e23', 'bogura', '2018-04-10 07:21:56', '2018-04-10 07:21:56'),
(16, 'mdshawon', 'mamunshawon49@gmail.com', '111111111111', 'hemayetpur', '2018-04-13 07:20:01', '2018-04-13 07:20:01'),
(17, 'macjac', 'bappymafil@gmail.com', '23e2e2e32e', 'joyna', '2018-04-13 08:22:43', '2018-04-13 08:22:43'),
(18, 'Rahivai', 'rahivai@gmail.com', '1231321', 'mirpur', '2018-04-19 09:11:37', '2018-04-19 09:11:37'),
(19, 'rofiqahamd', 'rofiqmia@gmail.com', '2342423432', 'house# 2E\r\nRoad#29\r\nFloor#C1', '2018-04-19 11:05:29', '2018-04-19 11:05:29'),
(20, 'FaijulIslam', 'vujefiduc@web2mailco.com', '13213123', 'Mirpur 10', '2018-04-19 11:47:58', '2018-04-19 11:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Riyadul Islam', 'ab@gmail.com', '$2y$10$7TfZ56OREC55Yh3U5WXVPeLvHgj6hS1tQgMKhxGOoN4LvUP/YeL/W', 'YfYJ0KL9IEe4bEmh4G7RaXw5I6K2pTN3nSC03r96BS3AUQ0ZrbEmYiQLEy92', '2018-03-21 00:26:16', '2018-03-21 00:26:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
