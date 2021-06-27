-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2020 at 06:51 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `advance_salaries`
--

CREATE TABLE `advance_salaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_id` int(11) NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `advanced_salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advance_salaries`
--

INSERT INTO `advance_salaries` (`id`, `emp_id`, `month`, `year`, `advanced_salary`, `created_at`, `updated_at`) VALUES
(1, 2, 'February', '2019', '10000', NULL, NULL),
(2, 4, 'March', '2019', '12000', '2019-05-20 13:30:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendences`
--

CREATE TABLE `attendences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `att_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `att_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attendence` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendences`
--

INSERT INTO `attendences` (`id`, `user_id`, `att_date`, `att_year`, `attendence`, `edit_date`, `month`, `created_at`, `updated_at`) VALUES
(5, 2, '22/05/19', '2019', 'Present', '22_05_19', 'May', '2019-05-22 16:46:52', NULL),
(6, 3, '22/05/19', '2019', 'Absence', '22_05_19', 'May', '2019-05-22 16:46:52', NULL),
(7, 4, '22/05/19', '2019', 'Present', '22_05_19', 'May', '2019-05-22 16:46:52', NULL),
(8, 5, '22/05/19', '2019', 'Present', '22_05_19', 'May', '2019-05-22 16:46:52', NULL),
(9, 2, '23/05/19', '2019', 'Present', '23_05_19', 'May', '2019-05-23 20:52:49', NULL),
(10, 3, '23/05/19', '2019', 'Present', '23_05_19', 'May', '2019-05-23 20:52:49', NULL),
(11, 4, '23/05/19', '2019', 'Absence', '23_05_19', 'May', '2019-05-23 20:52:49', NULL),
(12, 5, '23/05/19', '2019', 'Present', '23_05_19', 'May', '2019-05-23 20:52:49', NULL),
(13, 2, '24/05/19', '2019', 'Present', '24_05_19', 'May', '2019-05-24 08:53:38', NULL),
(14, 3, '24/05/19', '2019', 'Present', '24_05_19', 'May', '2019-05-24 08:53:38', NULL),
(15, 4, '24/05/19', '2019', 'Present', '24_05_19', 'May', '2019-05-24 08:53:38', NULL),
(16, 5, '24/05/19', '2019', 'Present', '24_05_19', 'May', '2019-05-24 08:53:38', NULL),
(17, 2, '13/09/19', '2019', 'Present', '13_09_19', 'September', '2019-09-13 17:20:50', NULL),
(18, 3, '13/09/19', '2019', 'Present', '13_09_19', 'September', '2019-09-13 17:20:50', NULL),
(19, 4, '13/09/19', '2019', 'Absence', '13_09_19', 'September', '2019-09-13 17:20:50', NULL),
(20, 5, '13/09/19', '2019', 'Present', '13_09_19', 'September', '2019-09-13 17:20:50', NULL),
(21, 2, '10/11/19', '2019', 'Present', '10_11_19', NULL, '2019-11-10 15:35:38', '2019-11-10 09:35:54'),
(22, 3, '10/11/19', '2019', 'Present', '10_11_19', NULL, '2019-11-10 15:35:38', '2019-11-10 09:35:54'),
(23, 4, '10/11/19', '2019', 'Present', '10_11_19', NULL, '2019-11-10 15:35:38', '2019-11-10 09:35:54'),
(24, 5, '10/11/19', '2019', 'Present', '10_11_19', NULL, '2019-11-10 15:35:38', '2019-11-10 09:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(2, 'RFL', NULL, NULL),
(3, 'Motorbike', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `shopname`, `photo`, `account_holder`, `account_number`, `bank_name`, `bank_branch`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Ibrahim', 'eme.pust@gmail.com', '0199283229', 'village:Lokkhidangri,veluya, sribordii, sherpur', '60 fit', 'public/customer/L7598jV4bLjZbOiSy97s.jpg', 'Ibrahim', '0192345697639', 'Exim Bank', 'Mirpur-14', 'dhaka', NULL, NULL),
(2, 'sujon', 'suja@gmail.com', '01930834874', 'sherpur sadar', 'Suja Enter Prizr', 'public/customer/v15fA.jpg', 'suja avi', '0192345697633', 'Exim Bank', 'Mirpur-14, 60 fit', 'Rajshahi', '2019-05-24 10:08:38', NULL),
(3, 'Aditto', 'aditto@gmail.com', '0193908348', 'sherpur sadar', 'Suja Enter Prizr', 'public/customer/TbXpX.jpg', 'suja avi', '01923456976397', 'Exim Bank', 'Mirpur-14, 60 fit', 'dhaka', '2019-07-09 17:42:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vacation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `address`, `experience`, `photo`, `nid_no`, `salary`, `vacation`, `city`, `created_at`, `updated_at`) VALUES
(2, 'Ibrahim', 'eme.pust@gmail.com', '0199283229', 'sherpur sadar', '3 years', 'public/employee/BJeMLW5SUXGK9iHZtSEW.jpg', '4805849640343', '12000', '10', 'dhaka', '2019-05-18 19:06:41', NULL),
(3, 'ammar khan', 'hazera49@gmail.com', '0193908348', 'sherpur', '1 year', 'public/employee/miTLW.jpg', '4805849640675', '10000', '14', 'Rajshahi', '2019-05-18 19:16:24', NULL),
(4, 'Aditto', 'ibrahim@gmail.com', '0193908348', 'dhaka', 'fresher', 'public/employee/5f8i7.jpg', '480584964034095', '12000', '10', 'Rajshahi', '2019-05-18 19:35:56', NULL),
(5, 'Aditto', 'aditto@gmail.com', '0193908348', 'village:Lokkhidangri,veluya, sribordii, sherpur', 'fresher', 'public/employee/og1Sc.jpg', '48058496403', '50000', '15', 'mirpur-14, dhaka-1600', '2019-05-18 20:01:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `details`, `amount`, `month`, `date`, `year`, `created_at`, `updated_at`) VALUES
(2, '1 ups sales in 4000 tk', '4000', 'May', '21/05/19', '2019', '2019-05-21 17:57:49', NULL),
(3, '2 laptop sales by 80000 tk', '800000', 'May', '21/05/19', '2019', '2019-05-21 19:17:18', NULL),
(4, '1 batery sales for 3000 tk', '3000', 'May', '21/05/19', '2019', '2019-05-21 19:17:52', NULL),
(5, '1 tyre sales 3000 tk', '3000', 'September', '13/09/19', '2019', '2019-09-13 17:17:01', NULL);

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
(3, '2019_05_18_100651_create_employees_table', 2),
(4, '2019_05_19_094623_create_customers_table', 3),
(5, '2019_05_19_160508_create_suppliers_table', 4),
(6, '2019_05_20_101636_create_salaries_table', 5),
(7, '2019_05_20_133939_create_salaries_table', 6),
(8, '2019_05_20_165431_create_categories_table', 7),
(9, '2019_05_20_173009_create_products_table', 8),
(10, '2019_05_21_165706_create_expenses_table', 9),
(11, '2019_05_22_091334_create_attendences_table', 10),
(12, '2019_05_22_091751_create_attendences_table', 11),
(13, '2019_05_22_171242_create_settings_table', 12),
(14, '2019_05_23_163247_create_orders_table', 13),
(15, '2019_05_23_163648_create_orderdetails_table', 14),
(16, '2017_06_26_000000_create_shopping_cart_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unitcost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `quantity`, `unitcost`, `total`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '1', '3500', '4235', NULL, NULL),
(2, 3, 1, '1', '3500', '4235', NULL, NULL),
(3, 3, 4, '2', '3500', '8470', NULL, NULL),
(4, 4, 1, '1', '3500', '4235', NULL, NULL),
(5, 5, 1, '1', '3500', '4235', NULL, NULL),
(6, 6, 4, '1', '3500', '4235', NULL, NULL),
(7, 6, 1, '1', '3500', '4235', NULL, NULL),
(8, 7, 4, '1', '3500', '4235', NULL, NULL),
(9, 8, 4, '1', '3500', '4235', NULL, NULL),
(10, 9, 4, '1', '3500', '4235', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_products` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `order_status`, `total_products`, `sub_total`, `vat`, `total`, `payment_status`, `pay`, `due`, `created_at`, `updated_at`) VALUES
(5, 1, '13/09/19', 'success', '1', '3,500.00', '735.00', '4,235.00', 'Due', '4000', '235', NULL, NULL),
(8, 3, '18/10/19', 'success', '1', '3,500.00', '735.00', '4,235.00', 'Handcash', '4235', '00', NULL, NULL),
(9, 2, '18/10/19', 'success', '1', '3,500.00', '735.00', '4,235.00', 'Cheque', '4235', '00', NULL, NULL);

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
('eme.pust@gmail.com', '$2y$10$CFR47s6V7vzq/YCNp2iXVOLecb8.JsA4VD9jIMH1QQbPfXKhK2vdS', '2019-09-12 21:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sup_id` int(11) NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_garage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_route` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `cat_id`, `sup_id`, `product_code`, `product_garage`, `product_route`, `product_image`, `buy_date`, `expire_date`, `buying_price`, `selling_price`, `created_at`, `updated_at`) VALUES
(4, 'piston silver', 2, 2, 'G1200', 'A', '3', 'public/Products/pistonsilver.jpg', '2019-05-21', '2024-05-21', '3000', '3500', '2019-05-23 04:13:21', '2019-05-23 04:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `salary_month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `company_address`, `company_email`, `company_phone`, `company_logo`, `company_mobile`, `company_city`, `company_country`, `company_zipcode`, `created_at`, `updated_at`) VALUES
(1, 'Echovel', 'Mirpur-14, purbokazipara,Dhaka', 'ebrahim@gmail.com', '01929843947', 'public/company/1zUBwnAyL4vXdYuz5Kkz.jpg', '1273744', 'Dhaka', 'Bangladesh', '3621', '2019-05-21 18:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountnumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branchname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `type`, `photo`, `shop`, `accountholder`, `accountnumber`, `bankname`, `branchname`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Sujon Ahmed', 'sujan@gmail.com', '01929843947', 'village:Lokkhidangri,veluya, sribordii, sherpur', 'WholeSeller', 'public/supplier/nUnK51fTvqxGKV64ukcn.jpg', 'Bari dhara shope', 'Sujon Islam', '102039484757', 'exim bank', 'uttara', 'dhaka', NULL, NULL),
(2, 'Ibrahim', 'eme.pust@gmail.com', '01929843937', 'village:Lokkhidangri,veluya, sribordii, sherpur', 'WholeSeller', 'public/supplier/hmlpg.jpg', 'Bari dhara shope', 'Ibrahim', 'Ibrahim', 'exim bank', 'pabna', 'dhaka', NULL, NULL);

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
(1, 'Ibrahim', 'eme.pust@gmail.com', '2019-05-10 04:28:54', '$2y$10$fgqXLXgDQr96xjp44tvu4e3Sis85L7lqKgag1VEV0eTclgMtLt4fO', 'be2Xqr4431BLy4Ej2MyizVi62n0cC8ZBXp7uusduqNv8IfK4eZrNBp2rHh12', '2019-05-09 05:39:28', '2019-05-10 04:28:54'),
(3, 'Ebrahim', 'ebrahim@gmail.com', NULL, '$2y$10$A1bh2aBa7sjA8L6gZlWIw.kkLxU0D9Z.Yd/c7yhVvUbtP5hWvUfXi', NULL, '2019-07-09 08:34:44', '2019-07-09 08:34:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendences`
--
ALTER TABLE `attendences`
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
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`,`instance`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
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
-- AUTO_INCREMENT for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendences`
--
ALTER TABLE `attendences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
