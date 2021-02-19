-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2021 at 06:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `azmiunanistore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` tinyint(5) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `email`, `password`, `image`, `status`, `timestamp`) VALUES
(2, 'Azmi Unani Store', 'azmiunanistore', 'azmiunanistore@gmail.com', '$2y$10$mj40jM/kQRLg2Y5scscBouzna/e5I2RxyJSeRhbWjdAMm5vhg.h86', '', 1, '2020-12-21 10:05:47'),
(194, 'Umair', 'Umair Farooqui', 'info.umairfarooqui@gmail.com', '$2y$10$mj40jM/kQRLg2Y5scscBouzna/e5I2RxyJSeRhbWjdAMm5vhg.h86', '', 1, '2021-01-06 16:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `created_at`) VALUES
(17, 'DEHLVI', '2020-12-21 12:30:15'),
(18, 'HAMDARD', '2020-12-21 12:31:29'),
(19, 'OEBA', '2020-12-21 12:35:52'),
(20, 'MEGHDOOT', '2021-01-01 15:34:40'),
(21, 'SHAMA', '2021-01-02 16:02:15'),
(22, 'SADAR', '2021-01-03 13:45:54'),
(23, 'HBM', '2021-01-06 13:08:19'),
(24, 'FHC', '2021-01-11 15:47:52'),
(25, 'FHC', '2021-01-16 16:37:28'),
(28, 'REX', '2021-01-18 13:38:33'),
(29, 'TMC', '2021-01-19 14:15:44'),
(30, 'MAHBOOBIA', '2021-01-19 14:46:19'),
(31, 'TIBBIYA', '2021-01-22 14:36:11'),
(32, 'TAYYEBI', '2021-01-24 06:50:09'),
(33, 'FALCON', '2021-01-25 13:13:13'),
(34, 'BYAZ E KABIR', '2021-02-06 14:59:08'),
(35, 'AIMS', '2021-02-06 15:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `created_at`) VALUES
(12, 'SHARBAT', '2020-12-21 12:30:33'),
(13, 'SYRUP', '2020-12-21 12:31:41'),
(14, 'MAJOON', '2020-12-21 12:31:46'),
(15, 'SHAMPOO', '2021-01-01 15:37:32'),
(16, 'ROGHAN', '2021-01-01 16:00:30'),
(17, 'TABLET', '2021-01-02 15:52:14'),
(18, 'HABBE', '2021-01-07 14:23:50'),
(19, 'CAPSULE', '2021-01-11 12:21:09'),
(20, 'CHOORAN', '2021-01-11 15:48:27'),
(21, 'KHAMIRA', '2021-01-12 16:16:23'),
(22, 'ARAQ', '2021-01-17 11:25:39'),
(23, 'JADI BOOTI', '2021-01-18 14:13:28'),
(24, 'MANJAN', '2021-01-24 06:50:48'),
(25, 'MARHAM', '2021-01-24 09:36:40'),
(26, 'SOAP', '2021-01-25 14:53:36'),
(27, 'CREAM', '2021-01-25 15:25:02'),
(28, 'SAFOOF', '2021-02-06 15:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `creditors`
--

CREATE TABLE `creditors` (
  `creditorId` int(11) NOT NULL,
  `creditorName` varchar(50) NOT NULL,
  `creditorMobile` varchar(15) NOT NULL,
  `creditorAddress` varchar(700) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `creditors`
--

INSERT INTO `creditors` (`creditorId`, `creditorName`, `creditorMobile`, `creditorAddress`, `timestamp`) VALUES
(1, 'Umair', '9867503256', 'Mumbra', '2021-02-17 07:36:08'),
(2, 'Firdos Abbasi', '7236901464', 'Sipah', '2021-02-18 19:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `creditpayments`
--

CREATE TABLE `creditpayments` (
  `paymentId` int(11) NOT NULL,
  `paymentMode` varchar(100) NOT NULL,
  `paymentDate` datetime NOT NULL,
  `paymentAmount` int(100) NOT NULL,
  `paymentReciever` int(200) NOT NULL,
  `creditId` int(100) NOT NULL,
  `creditorId` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `creditpayments`
--

INSERT INTO `creditpayments` (`paymentId`, `paymentMode`, `paymentDate`, `paymentAmount`, `paymentReciever`, `creditId`, `creditorId`, `created_at`) VALUES
(1, 'CASH', '2021-02-17 13:06:08', 300, 194, 0, 0, '2021-02-17 07:38:31'),
(2, 'CASH', '2021-02-19 00:51:41', 310, 194, 2, 2, '2021-02-18 19:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `creditId` int(11) NOT NULL,
  `creditorId` int(44) NOT NULL,
  `salesId` varchar(500) NOT NULL,
  `creditDescription` varchar(1000) NOT NULL,
  `creditTime` datetime NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`creditId`, `creditorId`, `salesId`, `creditDescription`, `creditTime`, `timestamp`) VALUES
(1, 0, '[\"7\"]', 'Desc', '2021-02-17 13:06:08', '2021-02-17 07:37:20'),
(2, 2, '[\"29\",\"30\",\"31\"]', 'Firdos WIll Pay THis amount soon', '2021-02-19 00:51:41', '2021-02-18 19:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoice_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `seller_id` int(100) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_url` varchar(600) NOT NULL,
  `total_amount` int(100) NOT NULL DEFAULT 0,
  `paid_amount` int(100) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoice_id`, `invoice_number`, `seller_id`, `invoice_date`, `invoice_url`, `total_amount`, `paid_amount`, `created_at`) VALUES
(30, 'FHC10001', 2, '2021-02-19', 'uploads/invoices/FHC1000149235671416.pdf', 0, 0, '2021-02-18 19:29:55'),
(36, 'FHC10002', 2, '2021-02-19', '', 0, 0, '2021-02-19 04:55:05'),
(38, 'FHC10003', 2, '2021-02-19', '', 0, 0, '2021-02-19 04:56:30'),
(39, 'FHC10004', 2, '2021-02-19', '', 0, 0, '2021-02-19 04:58:57'),
(41, 'FHC10005', 1, '2021-02-19', '', 0, 0, '2021-02-19 04:59:23'),
(58, 'FHC10006', 2, '2021-02-19', '', 0, 0, '2021-02-19 05:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemId` int(11) NOT NULL,
  `itemName` varchar(60) NOT NULL,
  `itemDescription` varchar(1000) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemId`, `itemName`, `itemDescription`, `created_at`, `updated_at`) VALUES
(1, 'PYTHON', 'PROGRAMMING LANGUAGE', '0000-00-00 00:00:00', '2021-02-16 04:27:57'),
(2, 'ANDROID', 'PROGRAMMING LANGUAGE', '0000-00-00 00:00:00', '2021-02-16 04:27:57'),
(3, 'JAVA', 'PROGRAMMING LANGUAGE', '0000-00-00 00:00:00', '2021-02-16 04:27:57'),
(4, 'Umair Farooqui Item Name', 'Umair Farooqui Item Description', '0000-00-00 00:00:00', '2021-02-17 20:19:53'),
(5, 'rtyewrtewr ewr', '', '0000-00-00 00:00:00', '2021-02-17 20:20:02'),
(6, 'FAROOQUI MASSAGE OIL', 'A PAIN RELIEF OIL', '0000-00-00 00:00:00', '2021-02-17 21:37:40'),
(7, 'Firdos Abbasi', 'Umair Farooqui Weds Firdos Abbasi', '0000-00-00 00:00:00', '2021-02-17 21:39:28'),
(8, 'Umair Firdos', 'Firdos Weds Umair', '0000-00-00 00:00:00', '2021-02-17 21:40:24'),
(9, 'Item Called Or Not', 'Item', '0000-00-00 00:00:00', '2021-02-17 21:42:19'),
(10, 'Love You Firdos', 'Firdos Is Mine Life', '0000-00-00 00:00:00', '2021-02-17 21:43:06'),
(11, 'Name', '', '0000-00-00 00:00:00', '2021-02-17 21:44:57'),
(12, 'Expired Product', 'The product which has been already expired', '0000-00-00 00:00:00', '2021-02-18 02:50:00'),
(13, 'Expiring Product', 'The Product which is near expiry', '0000-00-00 00:00:00', '2021-02-18 02:50:15'),
(14, 'Testing Product', 'This product is for testing', '0000-00-00 00:00:00', '2021-02-18 02:50:48'),
(15, 'This is an item name', '0ko', '0000-00-00 00:00:00', '2021-02-19 05:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `location_name`, `created_at`) VALUES
(23, 'A1', '2020-12-21 12:31:10'),
(24, 'A2', '2020-12-21 12:31:14'),
(25, 'A3', '2020-12-21 12:31:18'),
(26, 'A4', '2020-12-21 12:31:21'),
(27, 'D1', '2021-01-01 15:39:11'),
(28, 'D2', '2021-01-01 15:39:13'),
(29, 'D3', '2021-01-01 15:39:16'),
(30, 'B1', '2021-01-02 14:33:37'),
(31, 'B2', '2021-01-02 14:33:41'),
(32, 'C1', '2021-01-04 08:12:41'),
(33, 'D3', '2021-01-04 08:12:51'),
(34, 'D4', '2021-01-04 08:12:53'),
(35, 'E1', '2021-01-04 08:12:58'),
(36, 'E2', '2021-01-04 08:13:00'),
(37, 'F1', '2021-01-04 08:13:02'),
(38, 'F2', '2021-01-04 08:13:06'),
(39, 'F3', '2021-01-04 08:13:09'),
(40, 'C2', '2021-01-07 14:24:33'),
(42, 'UNDEFINED', '2021-01-11 15:48:04'),
(43, 'D5', '2021-01-17 11:26:32'),
(44, 'D6', '2021-01-17 11:26:34'),
(50, 'A0', '2021-01-18 16:17:14'),
(51, 'B0', '2021-01-18 16:17:17'),
(52, 'C0', '2021-01-18 16:17:20'),
(53, 'D0', '2021-01-18 16:17:22'),
(54, 'E0', '2021-01-18 16:17:24'),
(55, 'F0', '2021-01-18 16:17:26'),
(56, 'G0', '2021-01-19 15:55:03'),
(57, 'G1', '2021-01-19 15:55:06'),
(58, 'G2', '2021-01-19 15:55:08'),
(59, 'G3', '2021-01-19 15:55:11'),
(60, 'G4', '2021-01-19 15:55:13'),
(61, 'G5', '2021-01-19 15:55:15'),
(62, 'G6', '2021-01-19 15:55:22'),
(63, 'ALM0', '2021-01-23 15:40:57'),
(64, 'ALM1', '2021-01-23 15:41:03'),
(65, 'ALM2', '2021-01-23 17:03:20'),
(66, 'ALM3', '2021-01-23 17:03:29'),
(67, 'ALM4', '2021-01-23 17:03:32'),
(68, 'ALM5', '2021-01-23 17:03:34'),
(69, 'ALM6', '2021-01-23 17:03:35'),
(71, 'TBL1', '2021-01-25 12:18:15'),
(72, 'TBL2', '2021-01-25 12:18:17'),
(73, 'TBL3', '2021-01-25 12:18:20'),
(74, 'TBL4', '2021-01-25 12:18:23'),
(75, 'TBL5', '2021-01-26 10:07:12'),
(76, 'TBL6', '2021-01-26 10:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `payment_date` datetime NOT NULL,
  `payment_amount` int(100) NOT NULL,
  `payment_receiver` int(200) NOT NULL,
  `invoice_number` varchar(200) NOT NULL,
  `seller_id` int(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category_id` int(200) NOT NULL,
  `item_id` int(200) NOT NULL,
  `size_id` int(200) NOT NULL,
  `brand_id` int(200) NOT NULL,
  `product_price` int(200) NOT NULL,
  `product_quantity` int(200) NOT NULL,
  `location_id` int(200) NOT NULL,
  `product_manufacture` date NOT NULL,
  `product_expire` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `item_id`, `size_id`, `brand_id`, `product_price`, `product_quantity`, `location_id`, `product_manufacture`, `product_expire`, `created_at`) VALUES
(13, 16, 6, 17, 25, 280, 10, 42, '2014-03-01', '2021-04-01', '2021-02-18 02:18:48'),
(14, 16, 6, 17, 25, 280, 5, 42, '2016-03-01', '2021-04-01', '2021-02-18 02:18:53'),
(15, 16, 6, 15, 24, 80, 12, 42, '2020-03-01', '2024-04-01', '2021-02-18 01:24:31'),
(16, 16, 6, 16, 25, 150, 5, 42, '2014-03-01', '2019-04-01', '2021-02-18 02:27:49'),
(17, 22, 12, 33, 35, 100, 20, 50, '2013-04-01', '2019-03-01', '2021-02-18 02:51:20'),
(18, 22, 13, 33, 35, 100, 20, 50, '2013-04-01', '2021-04-01', '2021-02-18 02:51:36'),
(19, 14, 6, 22, 17, 100, 200, 53, '2022-01-01', '2024-03-01', '2021-02-18 17:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `products_record`
--

CREATE TABLE `products_record` (
  `product_id` int(11) NOT NULL,
  `category_id` int(200) NOT NULL,
  `item_id` int(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `size_id` int(200) NOT NULL,
  `brand_id` int(200) NOT NULL,
  `product_price` int(200) NOT NULL,
  `product_quantity` int(200) NOT NULL,
  `location_id` int(200) NOT NULL,
  `product_manufacture` date NOT NULL,
  `product_expire` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_record`
--

INSERT INTO `products_record` (`product_id`, `category_id`, `item_id`, `product_name`, `size_id`, `brand_id`, `product_price`, `product_quantity`, `location_id`, `product_manufacture`, `product_expire`, `created_at`) VALUES
(0, 19, 0, 'demo', 30, 25, 401, 54, 23, '2016-07-01', '2019-06-01', '2021-02-16 04:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `quantities`
--

CREATE TABLE `quantities` (
  `quantity_id` int(11) NOT NULL,
  `quantity` int(200) NOT NULL,
  `product_id` int(200) NOT NULL,
  `size_id` int(200) NOT NULL,
  `brand_id` int(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `seller_id` int(11) NOT NULL,
  `seller_fname` varchar(50) NOT NULL,
  `seller_lname` varchar(50) NOT NULL,
  `seller_email` varchar(50) NOT NULL,
  `seller_contact` varchar(12) NOT NULL,
  `seller_contact_1` varchar(12) NOT NULL,
  `seller_image` varchar(100) NOT NULL,
  `seller_address` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`seller_id`, `seller_fname`, `seller_lname`, `seller_email`, `seller_contact`, `seller_contact_1`, `seller_image`, `seller_address`) VALUES
(1, 'aasdf', 'asdfasdf', '', '9867503256', '', '', 'asdfasdf'),
(2, 'Umair', 'Farooqui', 'info.mufazmi@gmail.com', '9867503256', '', 'uploads/602ebf8d4d963.png', 'Khardi Village Road, Kausa, Mumbra');

-- --------------------------------------------------------

--
-- Table structure for table `sellers_sells`
--

CREATE TABLE `sellers_sells` (
  `sellers_sell_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `product_id` int(200) NOT NULL,
  `sell_quantity` int(200) NOT NULL,
  `sell_discount` float NOT NULL,
  `sell_price` int(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellers_sells`
--

INSERT INTO `sellers_sells` (`sellers_sell_id`, `invoice_number`, `product_id`, `sell_quantity`, `sell_discount`, `sell_price`, `created_at`, `updated_at`) VALUES
(13, 'FHC10001', 14, 2, 40, 336, '2021-02-18 19:29:07', NULL),
(14, 'FHC10001', 15, 10, 40, 480, '2021-02-18 19:29:10', NULL),
(15, 'FHC10001', 13, 5, 40, 840, '2021-02-18 19:29:15', NULL),
(24, 'FHC10006', 18, 1, 0, 100, '2021-02-19 05:33:13', NULL),
(25, 'FHCf10006', 16, 1, 0, 150, '2021-02-19 05:33:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sells`
--

CREATE TABLE `sells` (
  `sell_id` int(11) NOT NULL,
  `product_id` int(200) NOT NULL,
  `sell_quantity` int(200) NOT NULL,
  `sell_discount` int(200) NOT NULL DEFAULT 0,
  `sell_price` int(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sells`
--

INSERT INTO `sells` (`sell_id`, `product_id`, `sell_quantity`, `sell_discount`, `sell_price`, `created_at`, `updated_at`) VALUES
(28, 17, 20, 0, 2000, '2021-01-13 19:13:32', NULL),
(29, 16, 1, 0, 150, '2021-01-05 19:19:48', NULL),
(30, 15, 1, 0, 80, '2021-01-04 19:20:17', NULL),
(31, 13, 1, 0, 280, '2021-01-04 19:20:18', NULL),
(32, 13, 1, 0, 280, '2021-02-19 04:31:00', NULL),
(33, 19, 1, 0, 100, '2021-02-19 04:31:02', NULL),
(34, 14, 1, 0, 280, '2021-01-05 04:31:04', NULL),
(35, 19, 10, 0, 1000, '2021-02-17 04:33:46', NULL),
(36, 13, 1, 0, 280, '2021-01-13 04:31:15', NULL),
(37, 19, 1, 0, 100, '2021-01-27 04:31:16', NULL),
(38, 14, 1, 0, 280, '2021-02-19 04:31:18', NULL),
(39, 19, 1, 0, 100, '2020-12-23 04:31:55', NULL),
(40, 18, 1, 0, 100, '2021-01-12 04:31:57', NULL),
(41, 13, 1, 0, 280, '2020-12-23 04:31:59', NULL),
(42, 16, 1, 0, 150, '2021-02-19 04:32:01', NULL),
(43, 18, 1, 0, 100, '2021-01-06 04:32:03', NULL),
(44, 19, 1, 0, 100, '2021-02-17 04:32:05', NULL),
(45, 16, 1, 0, 150, '2020-12-30 04:32:07', NULL),
(46, 13, 1, 0, 280, '2021-01-12 04:32:08', NULL),
(47, 14, 1, 0, 280, '2021-02-19 04:32:10', NULL),
(48, 16, 1, 0, 150, '2021-01-05 04:32:12', NULL),
(49, 15, 1, 0, 80, '2021-01-13 04:32:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(200) NOT NULL,
  `size_type` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`size_id`, `size_name`, `size_type`, `created_at`) VALUES
(14, '25ML', 0, '2020-12-28 12:39:36'),
(15, '50ML', 0, '2020-12-28 12:39:39'),
(16, '100ML', 0, '2020-12-28 12:39:42'),
(17, '200ML', 0, '2020-12-28 12:39:46'),
(18, '500ML', 0, '2020-12-28 12:39:52'),
(19, '300ML', 0, '2021-01-01 15:35:49'),
(20, '40 TABLET', 0, '2021-01-02 16:03:01'),
(21, '50 TABLET', 0, '2021-01-02 16:06:34'),
(22, '100 TABLET', 0, '2021-01-02 16:07:43'),
(23, '125GM', 0, '2021-01-04 08:03:41'),
(24, '150GM', 0, '2021-01-04 08:34:44'),
(25, '300GM', 0, '2021-01-05 11:23:25'),
(26, '200GM', 0, '2021-01-06 12:10:34'),
(27, '250GM', 0, '2021-01-06 14:50:26'),
(28, '500GM', 0, '2021-01-06 16:20:08'),
(29, '50 PILLS', 0, '2021-01-07 14:23:05'),
(30, '100 PILLS', 0, '2021-01-09 16:17:23'),
(31, '25 PILLS', 0, '2021-01-10 09:29:47'),
(32, '15 PILLS', 0, '2021-01-10 09:33:32'),
(33, '10 PILLS', 0, '2021-01-10 12:02:42'),
(34, '5 PILLS', 0, '2021-01-10 12:18:18'),
(35, '20 PILLS', 0, '2021-01-10 12:44:47'),
(36, '30 PILLS', 0, '2021-01-10 13:23:13'),
(37, '40 PILLS', 0, '2021-01-10 16:01:21'),
(38, '20ML', 0, '2021-01-11 12:15:25'),
(39, '50 CAPSULE', 0, '2021-01-11 12:21:34'),
(40, '50GM', 0, '2021-01-11 15:49:53'),
(41, '100GM', 0, '2021-01-11 15:49:57'),
(42, '60GM', 0, '2021-01-12 14:58:14'),
(43, '75GM', 0, '2021-01-12 16:19:02'),
(44, '60 PILLS', 0, '2021-01-13 10:53:01'),
(45, '120 PILLS', 0, '2021-01-13 10:54:54'),
(46, '60 TABLET', 0, '2021-01-13 11:05:49'),
(47, '60 CAPSULE', 0, '2021-01-18 13:29:01'),
(48, '80 TABLET', 0, '2021-01-18 13:47:09'),
(49, '33GM', 0, '2021-01-18 14:12:31'),
(50, '280GM', 0, '2021-01-18 16:23:00'),
(51, '6GMS', 0, '2021-01-19 16:13:24'),
(52, '80 PILLS', 0, '2021-01-22 11:56:33'),
(53, '380GM', 0, '2021-01-22 14:35:43'),
(54, '380ML', 0, '2021-01-23 16:25:51'),
(55, '125ML', 0, '2021-01-23 16:32:41'),
(61, '1kgs', 0, '2021-01-24 08:05:10'),
(62, '10ML', 0, '2021-01-24 11:21:18'),
(63, '10GM', 0, '2021-01-24 12:25:17'),
(64, 'TBL1', 0, '2021-01-25 12:18:01'),
(65, 'TBL2', 0, '2021-01-25 12:18:05'),
(66, 'TBL3', 0, '2021-01-25 12:18:08'),
(67, '400 PILLS', 0, '2021-01-25 13:32:46'),
(68, '15ML', 0, '2021-01-25 15:08:12'),
(69, '20GM', 0, '2021-01-25 16:09:55'),
(70, '25GM', 0, '2021-01-25 16:13:46'),
(71, '30GM', 0, '2021-01-29 16:18:09'),
(72, '15gm', 0, '2021-02-05 15:07:01'),
(73, '250ML', 0, '2021-02-06 15:02:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `creditors`
--
ALTER TABLE `creditors`
  ADD PRIMARY KEY (`creditorId`);

--
-- Indexes for table `creditpayments`
--
ALTER TABLE `creditpayments`
  ADD PRIMARY KEY (`paymentId`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`creditId`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemId`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products_record`
--
ALTER TABLE `products_record`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `quantities`
--
ALTER TABLE `quantities`
  ADD PRIMARY KEY (`quantity_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `sellers_sells`
--
ALTER TABLE `sellers_sells`
  ADD PRIMARY KEY (`sellers_sell_id`);

--
-- Indexes for table `sells`
--
ALTER TABLE `sells`
  ADD PRIMARY KEY (`sell_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`size_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `creditors`
--
ALTER TABLE `creditors`
  MODIFY `creditorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `creditpayments`
--
ALTER TABLE `creditpayments`
  MODIFY `paymentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `creditId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sellers_sells`
--
ALTER TABLE `sellers_sells`
  MODIFY `sellers_sell_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sells`
--
ALTER TABLE `sells`
  MODIFY `sell_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
