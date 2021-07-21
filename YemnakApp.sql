-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 21, 2021 at 02:50 AM
-- Server version: 5.6.51-cll-lve
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
-- Database: `YemnakApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `forget_password` varchar(255) NOT NULL,
  `added_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `username`, `email`, `mobile`, `password`, `address`, `status`, `profile_pic`, `forget_password`, `added_on`, `updated_on`) VALUES
(1, 'Yemank Admin', 'admin', 'demo@gmail.com', '9090909090', '$2a$08$lbbpZkmq3HZkhC0f6aFRAefBwKEoQBzIdgorRUmSyjh5atIkwQc5i', 'Kuwait', 0, 'http://ixorainfotech.in/YemnakApp/uploads/admin_profile_picture/profile1.png', 'da85a034cc689dbeb08101470ace519b', '0000-00-00 00:00:00', '2021-07-21 12:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `car_type`
--

CREATE TABLE `car_type` (
  `id` int(11) NOT NULL,
  `car_type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_type`
--

INSERT INTO `car_type` (`id`, `car_type`) VALUES
(1, 'Micro'),
(2, 'SEDAN'),
(3, 'CUV'),
(4, 'SUV'),
(5, 'HATCH BACK'),
(6, 'MIN VAN'),
(7, 'CARBIOLET'),
(8, 'COUPE'),
(9, 'ROADSTER'),
(10, 'SUPERCAR'),
(11, 'PICKUP'),
(12, 'VAN'),
(13, 'LIMOUSINE'),
(14, 'CAMPERVAN'),
(15, 'TRUCK');

-- --------------------------------------------------------

--
-- Table structure for table `driver_type`
--

CREATE TABLE `driver_type` (
  `id` int(11) NOT NULL,
  `driver_type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_type`
--

INSERT INTO `driver_type` (`id`, `driver_type`) VALUES
(1, 'In House'),
(2, 'Freelancer');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `subtask_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `booking_id`, `subtask_id`, `driver_id`, `note`, `date`, `time`) VALUES
(1, 1, 1, 1, 'arrived', '21/07/20', '21:20:09'),
(2, 1, 2, 1, 'done', '21/07/20', '21:20:42'),
(3, 6, 9, 1, 'ride complete', '21/07/21', '12:48:25'),
(4, 8, 11, 1, 'ffnujy', '21/07/21', '15:07:12'),
(5, 8, 11, 1, 'ffnujy', '21/07/21', '15:07:16'),
(6, 9, 12, 1, 'rhthwxtkyk', '21/07/21', '15:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` bigint(20) NOT NULL,
  `driver_id` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `driver_id`, `message`, `date`, `time`, `timestamp`) VALUES
(1, 1, 'Pickup the Cleaner', '2021-07-20', '21:21:33', '2021-07-20 15:51:34'),
(2, 1, 'Pickup the Cleaner', '2021-07-20', '21:37:22', '2021-07-20 16:07:22'),
(3, 1, 'Pickup the Cleaner', '2021-07-20', '21:38:21', '2021-07-20 16:08:21'),
(4, 1, 'Pickup the Cleaner', '2021-07-20', '21:49:06', '2021-07-20 16:19:06'),
(5, 1, 'Pickup the Cleaner', '2021-07-20', '21:52:50', '2021-07-20 16:22:50'),
(6, 1, 'Pickup the Cleaner', '2021-07-20', '22:08:04', '2021-07-20 16:38:04'),
(7, 1, 'Pickup the Cleaner', '2021-07-20', '22:12:24', '2021-07-20 16:42:24'),
(8, 1, 'Pickup the Cleaner', '2021-07-20', '22:21:36', '2021-07-20 16:51:36'),
(9, 1, 'Pickup the Cleaner', '2021-07-20', '22:36:38', '2021-07-20 17:06:38'),
(10, 1, 'Pickup the Cleaner', '2021-07-20', '22:52:04', '2021-07-20 17:22:04'),
(11, 1, 'Pickup the Cleaner', '2021-07-20', '23:07:33', '2021-07-20 17:37:33'),
(12, 1, 'Pickup the Cleaner', '2021-07-20', '23:21:37', '2021-07-20 17:51:37'),
(13, 1, 'Pickup the Cleaner', '2021-07-20', '23:36:35', '2021-07-20 18:06:35'),
(14, 1, 'Pickup the Cleaner', '2021-07-20', '23:51:34', '2021-07-20 18:21:35'),
(15, 1, 'Pickup the Cleaner', '2021-07-21', '00:06:50', '2021-07-20 18:36:50'),
(16, 1, 'Pickup the Cleaner', '2021-07-21', '00:21:51', '2021-07-20 18:51:51'),
(17, 1, 'Pickup the Cleaner', '2021-07-21', '00:37:05', '2021-07-20 19:07:05'),
(18, 1, 'Pickup the Cleaner', '2021-07-21', '00:52:08', '2021-07-20 19:22:08'),
(19, 1, 'Pickup the Cleaner', '2021-07-21', '01:06:37', '2021-07-20 19:36:37'),
(20, 1, 'Pickup the Cleaner', '2021-07-21', '01:21:52', '2021-07-20 19:51:52'),
(21, 1, 'Pickup the Cleaner', '2021-07-21', '01:36:52', '2021-07-20 20:06:52'),
(22, 1, 'Pickup the Cleaner', '2021-07-21', '01:51:54', '2021-07-20 20:21:54'),
(23, 1, 'Pickup the Cleaner', '2021-07-21', '02:06:32', '2021-07-20 20:36:32'),
(24, 1, 'Pickup the Cleaner', '2021-07-21', '02:24:05', '2021-07-20 20:54:05'),
(25, 1, 'Pickup the Cleaner', '2021-07-21', '02:39:09', '2021-07-20 21:09:09'),
(26, 1, 'Pickup the Cleaner', '2021-07-21', '02:54:08', '2021-07-20 21:24:08'),
(27, 1, 'Pickup the Cleaner', '2021-07-21', '03:09:04', '2021-07-20 21:39:04'),
(28, 1, 'Pickup the Cleaner', '2021-07-21', '03:25:34', '2021-07-20 21:55:34'),
(29, 1, 'Pickup the Cleaner', '2021-07-21', '03:37:06', '2021-07-20 22:07:06'),
(30, 1, 'Pickup the Cleaner', '2021-07-21', '03:56:16', '2021-07-20 22:26:16'),
(31, 1, 'Pickup the Cleaner', '2021-07-21', '04:11:16', '2021-07-20 22:41:16'),
(32, 1, 'Pickup the Cleaner', '2021-07-21', '04:26:15', '2021-07-20 22:56:15'),
(33, 1, 'Pickup the Cleaner', '2021-07-21', '04:41:16', '2021-07-20 23:11:16'),
(34, 1, 'Pickup the Cleaner', '2021-07-21', '04:56:30', '2021-07-20 23:26:30'),
(35, 1, 'Pickup the Cleaner', '2021-07-21', '05:12:39', '2021-07-20 23:42:39'),
(36, 1, 'Pickup the Cleaner', '2021-07-21', '05:26:16', '2021-07-20 23:56:16'),
(37, 1, 'Pickup the Cleaner', '2021-07-21', '05:41:16', '2021-07-21 00:11:16'),
(38, 1, 'Pickup the Cleaner', '2021-07-21', '05:57:06', '2021-07-21 00:27:06'),
(39, 1, 'Pickup the Cleaner', '2021-07-21', '06:11:14', '2021-07-21 00:41:15'),
(40, 1, 'Pickup the Cleaner', '2021-07-21', '06:27:23', '2021-07-21 00:57:23'),
(41, 1, 'Pickup the Cleaner', '2021-07-21', '06:41:16', '2021-07-21 01:11:16'),
(42, 1, 'Pickup the Cleaner', '2021-07-21', '06:56:22', '2021-07-21 01:26:22'),
(43, 1, 'Pickup the Cleaner', '2021-07-21', '07:11:15', '2021-07-21 01:41:15'),
(44, 1, 'Pickup the Cleaner', '2021-07-21', '07:27:12', '2021-07-21 01:57:12'),
(45, 1, 'Pickup the Cleaner', '2021-07-21', '07:41:17', '2021-07-21 02:11:17'),
(46, 1, 'Pickup the Cleaner', '2021-07-21', '07:56:15', '2021-07-21 02:26:15'),
(47, 1, 'Pickup the Cleaner', '2021-07-21', '08:11:16', '2021-07-21 02:41:16'),
(48, 1, 'Pickup the Cleaner', '2021-07-21', '08:21:36', '2021-07-21 02:51:36'),
(49, 1, 'Pickup the Cleaner', '2021-07-21', '08:37:59', '2021-07-21 03:07:59'),
(50, 1, 'Pickup the Cleaner', '2021-07-21', '08:56:29', '2021-07-21 03:26:29'),
(51, 1, 'Pickup the Cleaner', '2021-07-21', '09:07:20', '2021-07-21 03:37:20'),
(52, 1, 'Pickup the Cleaner', '2021-07-21', '10:38:58', '2021-07-21 05:08:59'),
(53, 1, 'Pickup the Cleaner', '2021-07-21', '10:51:32', '2021-07-21 05:21:32'),
(54, 1, 'Pickup the Cleaner', '2021-07-21', '11:13:43', '2021-07-21 05:43:43'),
(55, 1, 'Pickup the Cleaner', '2021-07-21', '11:29:48', '2021-07-21 05:59:48'),
(56, 1, 'Pickup the Cleaner', '2021-07-21', '11:44:01', '2021-07-21 06:14:01'),
(57, 1, 'Pickup the Cleaner', '2021-07-21', '12:25:39', '2021-07-21 06:55:39'),
(58, 1, 'Pickup the Cleaner', '2021-07-21', '12:52:12', '2021-07-21 07:22:13'),
(59, 1, 'Pickup the Cleaner', '2021-07-21', '13:07:10', '2021-07-21 07:37:10'),
(60, 1, 'Pickup the Cleaner', '2021-07-21', '13:22:12', '2021-07-21 07:52:12'),
(61, 1, 'Pickup the Cleaner', '2021-07-21', '13:37:09', '2021-07-21 08:07:09'),
(62, 1, 'Pickup the Cleaner', '2021-07-21', '13:52:09', '2021-07-21 08:22:09'),
(63, 1, 'Pickup the Cleaner', '2021-07-21', '14:41:15', '2021-07-21 09:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `rideCompleteStatus`
--

CREATE TABLE `rideCompleteStatus` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rideCompleteStatus`
--

INSERT INTO `rideCompleteStatus` (`id`, `booking_id`, `driver_id`, `status`, `date`, `time`) VALUES
(1, 1, 1, 1, '21/07/20', '21:20:10'),
(2, 1, 1, 1, '21/07/20', '21:20:42'),
(3, 6, 1, 1, '21/07/21', '12:48:26');

-- --------------------------------------------------------

--
-- Table structure for table `rideStatus`
--

CREATE TABLE `rideStatus` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rideStatus`
--

INSERT INTO `rideStatus` (`id`, `booking_id`, `driver_id`, `status`, `date`, `time`) VALUES
(1, 1, 1, 1, '21/07/20', '21:19:49'),
(2, 1, 1, 1, '21/07/20', '21:20:23'),
(3, 1, 1, 1, '21/07/20', '21:20:53'),
(4, 2, 1, 1, '21/07/21', '11:05:08'),
(5, 2, 1, 1, '21/07/21', '11:32:09'),
(6, 2, 1, 1, '21/07/21', '11:32:12'),
(7, 3, 1, 1, '21/07/21', '11:34:16'),
(8, 4, 1, 1, '21/07/21', '12:00:58'),
(9, 5, 1, 1, '21/07/21', '12:32:09'),
(10, 6, 1, 1, '21/07/21', '12:38:32'),
(11, 7, 1, 1, '21/07/21', '12:50:51'),
(12, 8, 1, 1, '21/07/21', '15:04:41'),
(13, 8, 1, 1, '21/07/21', '15:12:07'),
(14, 9, 1, 1, '21/07/21', '15:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `sub_task`
--

CREATE TABLE `sub_task` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `drop_point` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `is_conformed` enum('pending','complete','cancelled','progress') NOT NULL,
  `to_lat` varchar(255) NOT NULL,
  `to_long` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `service` varchar(255) NOT NULL,
  `registered_name` varchar(255) NOT NULL,
  `total_time` varchar(255) NOT NULL,
  `order_position` int(11) NOT NULL,
  `is_completed` int(11) NOT NULL,
  `is_start` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `cus_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_task`
--

INSERT INTO `sub_task` (`id`, `booking_id`, `drop_point`, `note`, `is_conformed`, `to_lat`, `to_long`, `user_id`, `service`, `registered_name`, `total_time`, `order_position`, `is_completed`, `is_start`, `phone`, `cus_id`) VALUES
(1, 1, '', 'arrived', 'complete', '', '', 1, 'home cleaning', '', '10', 0, 0, 1, '', 1),
(2, 1, '', 'done', 'complete', '', '', 1, 'home cleaning', '', '5', 0, 0, 1, '', 2),
(3, 2, '', 'car cleaning with sanatization', 'progress', '', '', 1, 'car cleaning', '', '30', 0, 0, 1, '', 1),
(4, 3, '', 'car cleaning with sanatization', 'progress', '', '', 1, 'car cleaning', '', '30', 0, 0, 1, '', 1),
(5, 4, '', 'car cleaning with sanatization', 'progress', '', '', 1, 'car cleaning', '', '30', 0, 0, 1, '', 1),
(7, 5, '', 'car cleaning with sanatization', 'progress', '', '', 1, 'car cleaning', '', '30', 0, 0, 1, '', 1),
(8, 5, '', 'fwdfwsf', 'pending', '', '', 1, 'adfwsf', '', '10', 0, 0, 0, '', 2),
(9, 6, '', 'ride complete', 'complete', '', '', 1, 'car cleaning', '', '30', 0, 0, 1, '', 1),
(10, 7, '', 'car cleaning with sanatization', 'progress', '', '', 1, 'car cleaning', '', '30', 0, 0, 1, '', 1),
(11, 8, '', 'ffnujy', 'progress', '', '', 1, 'car cleaning', '', '30', 0, 0, 1, '', 1),
(12, 9, '', 'rhthwxtkyk', 'progress', '', '', 1, 'home cleaning', '', '30', 0, 0, 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vbs_bookings`
--

CREATE TABLE `vbs_bookings` (
  `id` int(25) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_position` varchar(100) NOT NULL,
  `pick_date` date NOT NULL,
  `pick_time` varchar(512) NOT NULL,
  `pick_point` varchar(512) NOT NULL DEFAULT '',
  `drop_point` varchar(512) NOT NULL DEFAULT '',
  `from_lat` varchar(100) NOT NULL,
  `from_long` varchar(100) NOT NULL,
  `to_lat` varchar(100) NOT NULL,
  `to_long` varchar(100) NOT NULL,
  `distance` float NOT NULL,
  `distance_type` varchar(512) NOT NULL DEFAULT '',
  `total_time` varchar(50) DEFAULT NULL,
  `vehicle_selected` int(11) NOT NULL,
  `cost_of_journey` float NOT NULL,
  `payment_type` enum('cash','paypal','credit card','stripe','payu') NOT NULL DEFAULT 'cash',
  `payment_received` float NOT NULL DEFAULT '0',
  `is_conformed` enum('pending','complete','cancelled','In progress') NOT NULL DEFAULT 'pending',
  `bookdate` date NOT NULL,
  `cus_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `is_start` int(11) NOT NULL,
  `cln_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_bookings`
--

INSERT INTO `vbs_bookings` (`id`, `user_id`, `order_position`, `pick_date`, `pick_time`, `pick_point`, `drop_point`, `from_lat`, `from_long`, `to_lat`, `to_long`, `distance`, `distance_type`, `total_time`, `vehicle_selected`, `cost_of_journey`, `payment_type`, `payment_received`, `is_conformed`, `bookdate`, `cus_id`, `status`, `is_start`, `cln_id`) VALUES
(9, 1, '0', '2021-07-21', '15:12', 'Bengali Square, Goyal Nagar, Tilak Nagar, Indore, Madhya Pradesh, India', 'Vijay Nagar Square, Vijay Nagar, Indore, Madhya Pradesh, India', '22.7198365', '75.9059978', '22.7508362', '75.8957301', 0, '', '30', 0, 2, 'cash', 0, 'In progress', '2021-07-21', 0, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vbs_cleaner`
--

CREATE TABLE `vbs_cleaner` (
  `id` int(11) NOT NULL,
  `drop_point` varchar(255) NOT NULL,
  `to_lat` varchar(255) NOT NULL,
  `to_long` varchar(255) NOT NULL,
  `image` varchar(512) NOT NULL,
  `username` varchar(512) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_cleaner`
--

INSERT INTO `vbs_cleaner` (`id`, `drop_point`, `to_lat`, `to_long`, `image`, `username`, `phone`, `gender`, `address`, `email`) VALUES
(1, 'Ixora Infotech Private Limited, Kanadia Road, Sector A, Sanvid Nagar, Indore, Madhya Pradesh, India', '22.7207663', '75.90020369999999', 'http://ixorainfotech.in/YemnakApp/uploads/profile/95e16a401c7e39a7a5ac884328f77070.png', 'kunal malik', '5685985', 'Male', 'indore', 'kunal@gmail.com'),
(2, 'Bapat Square, Sector A, Sukhlia, Indore, Madhya Pradesh, India', '22.7550523', '75.87837379999999', 'http://ixorainfotech.in/YemnakApp/uploads/profile/', 'Kunal', '03216549870', 'Male', 'bapat', 'kunal@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_customers`
--

CREATE TABLE `vbs_customers` (
  `id` int(11) NOT NULL,
  `drop_point` varchar(255) NOT NULL,
  `to_lat` varchar(255) NOT NULL,
  `to_long` varchar(255) NOT NULL,
  `image` varchar(512) NOT NULL,
  `username` varchar(512) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_customers`
--

INSERT INTO `vbs_customers` (`id`, `drop_point`, `to_lat`, `to_long`, `image`, `username`, `phone`, `gender`, `address`, `email`) VALUES
(1, '267, Bajrang Nagar Road, Near majdoor chowk, Bajrang Nagar, Indore, Madhya Pradesh, India', '22.7459914', '75.8825087', 'http://ixorainfotech.in/YemnakApp/uploads/profile/c07052ea537aa5c554db80f0e40c20fb.png', 'manish', '02202020', 'Male', 'indore', 'manish@gmail.com'),
(2, 'Bengali Square, Indore, Madhya Pradesh, India', '22.7081414', '75.9229596', 'http://ixorainfotech.in/YemnakApp/uploads/profile/', 'Arpit', '8770148013', 'Male', 'Bengali square', 'arpit@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_payments`
--

CREATE TABLE `vbs_payments` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `payment_amount` decimal(10,2) NOT NULL,
  `transaction_id` varchar(512) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_status` enum('success','fail') NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vbs_users`
--

CREATE TABLE `vbs_users` (
  `id` int(25) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `secret_key` varchar(100) NOT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT '0',
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `driver_type` varchar(255) NOT NULL,
  `device_token` varchar(255) NOT NULL,
  `image` varchar(512) NOT NULL,
  `date_of_registration` date NOT NULL,
  `license` varchar(50) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `car_type` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `wallet` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_users`
--

INSERT INTO `vbs_users` (`id`, `username`, `email`, `secret_key`, `created_on`, `active`, `first_name`, `last_name`, `phone`, `driver_type`, `device_token`, `image`, `date_of_registration`, `license`, `gender`, `address`, `car_type`, `dob`, `wallet`) VALUES
(1, 'kuwait client', 'kuwaitclient@gmail.com', '3462', 0, 1, NULL, NULL, '22242424', 'Freelancer', 'f7WYPbKVQvu_Vphqs_04HA:APA91bHMHH3idXBnIG7qSs5x4ug5w9nbnZymZnA1Hqo9yL0uO5QtM6iAxBINDj91OuiGFU1u51IYPHV2_ICv6yVq1QyX2bDO0G8iuGU7507anP8LNaFxaTVi4dWQ8lMw9XUAuU8DvLvW', 'http://ixorainfotech.in/YemnakApp/uploads/profile/e5a78466f5f7a881459d8cf3f4b457fb.png', '0000-00-00', NULL, 'Male', 'indore', 'HATCH BACK', '0000-00-00', '0'),
(2, 'Nitesh', 'nitesh@gmail.com', '5778', 0, 0, NULL, NULL, '856525', 'In House', '', 'http://ixorainfotech.in/YemnakApp/uploads/profile/86cb1f25aa096ebc1f81c764733ca671.png', '0000-00-00', NULL, 'Male', 'nitesh', 'SUV', '2021-07-20', '0'),
(3, 'Manish Test', 'manish@gmail.com', '', 0, 0, NULL, NULL, '0123456789', 'In house', '', 'http://ixorainfotech.in/YemnakApp/uploads/profile/', '0000-00-00', NULL, 'Male', 'sanvid nagar', 'SUV', '2021-07-20', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_type`
--
ALTER TABLE `car_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_type`
--
ALTER TABLE `driver_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `rideCompleteStatus`
--
ALTER TABLE `rideCompleteStatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rideStatus`
--
ALTER TABLE `rideStatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_task`
--
ALTER TABLE `sub_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_bookings`
--
ALTER TABLE `vbs_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_cleaner`
--
ALTER TABLE `vbs_cleaner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_customers`
--
ALTER TABLE `vbs_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_payments`
--
ALTER TABLE `vbs_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_users`
--
ALTER TABLE `vbs_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `car_type`
--
ALTER TABLE `car_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `driver_type`
--
ALTER TABLE `driver_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `rideCompleteStatus`
--
ALTER TABLE `rideCompleteStatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rideStatus`
--
ALTER TABLE `rideStatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sub_task`
--
ALTER TABLE `sub_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vbs_bookings`
--
ALTER TABLE `vbs_bookings`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vbs_cleaner`
--
ALTER TABLE `vbs_cleaner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vbs_customers`
--
ALTER TABLE `vbs_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vbs_payments`
--
ALTER TABLE `vbs_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vbs_users`
--
ALTER TABLE `vbs_users`
  MODIFY `id` int(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
