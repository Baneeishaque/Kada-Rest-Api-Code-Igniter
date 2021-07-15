-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 15, 2021 at 01:07 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wahylnhz_kada_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_maximum_retail_price` double NOT NULL,
  `item_selling_price` double NOT NULL,
  `item_category` int(11) NOT NULL,
  `item_description` varchar(50) NOT NULL,
  `item_varients` varchar(50) NOT NULL,
  `item_shop_id` int(11) NOT NULL,
  `item_in_stock` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_maximum_retail_price`, `item_selling_price`, `item_category`, `item_description`, `item_varients`, `item_shop_id`, `item_in_stock`) VALUES
(15, 'Item 1', 56, 52, 2, 'Item 1 description', 'Item 1 varient', 10, 1),
(16, 'Item 2', 52, 50, 2, 'Item2 description', 'Item2 varient', 10, 1),
(17, 'Item 4', 75, 70, 2, 'Item4 Description', 'Item4 Varient', 10, 0),
(18, 'Item 5', 45, 42, 2, 'Item5 des', 'Item5 var', 10, 1),
(19, 'abc', 100, 80, 1, '', '', 12, 1),
(20, 'kadala', 60, 55, 3, '', '', 13, 1),
(21, 'hhhh', 66, 66, 3, 'Uu', 'jj', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE `item_images` (
  `item_image_id` int(11) NOT NULL,
  `item_image_item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_images`
--

INSERT INTO `item_images` (`item_image_id`, `item_image_item_id`) VALUES
(17, 15),
(18, 15),
(19, 15),
(20, 16),
(21, 16),
(22, 17),
(23, 17),
(24, 18),
(25, 18);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(50) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `date_created` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `key`, `controller`, `date_created`, `date_modified`) VALUES
(1, '123', 'REST_Controller.php', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `params` varchar(255) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `authorized` varchar(100) NOT NULL,
  `rtime` varchar(100) NOT NULL,
  `response_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `authorized`, `rtime`, `response_code`) VALUES
(1, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"8182d11f-5269-4665-99a0-df24b7b064fa\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626243385', '1', '', ''),
(2, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"0535771f-e00b-4060-ae37-fa645b7cb9b2\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626243438', '1', '0.054003000259399', ''),
(3, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"8f5cd5ee-dde2-4447-92f8-2a93e760884d\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245023', '1', '0.39602303504944', ''),
(4, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"639ebb2b-f9d1-4a15-b78a-b903ca733d5f\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245075', '1', '0.28201603889465', ''),
(5, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"cf561542-f381-4275-abe2-fa880b41c32a\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245109', '1', '0.20701193809509', ''),
(6, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"57f732f6-e01d-42df-991e-427707be08d2\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245132', '1', '0.23401284217834', ''),
(7, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"defd162e-09ea-4ed1-a8ef-95a2d5f6c3c0\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245162', '1', '0.23501396179199', ''),
(8, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"ffe5fcf0-d4bb-4ef9-b8e2-c8d7836717b9\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245197', '1', '0.39602208137512', ''),
(9, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"869f5dc4-8a3e-4701-9971-02bde0971c6e\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245229', '1', '0.32801914215088', ''),
(10, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"8f080f5a-e396-4f40-81a4-f9daf0a707aa\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245255', '1', '0.099005937576294', ''),
(11, 'login/userlogin', 'post', 'a:15:{s:14:\"Content-Length\";s:2:\"47\";s:12:\"Content-Type\";s:16:\"application/json\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:0:\"\";s:6:\"Cookie\";s:51:\"ci_session=b4af864746d7d423192837f05d3670c3f6cc7d76\";s:4:\"H', '123', '137.97.85.126', '1626248590', '1', '0.0077989101409912', ''),
(12, 'login/userlogin', 'post', 'a:15:{s:14:\"Content-Length\";s:2:\"47\";s:12:\"Content-Type\";s:16:\"application/json\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:0:\"\";s:6:\"Cookie\";s:51:\"ci_session=b4af864746d7d423192837f05d3670c3f6cc7d76\";s:4:\"H', '123', '137.97.85.126', '1626248615', '1', '0.0044689178466797', ''),
(13, 'login/userlogin', 'get', 'a:12:{s:6:\"Accept\";s:135:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:14:\"en-US,en;q=0.9\";s:1', '', '27.61.12.99', '1626249142', '0', '0.0058839321136475', ''),
(14, 'login/userlogin', 'get', 'a:13:{s:6:\"Accept\";s:135:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:14:\"en-US,en;q=0.9\";s:1', '', '27.61.12.99', '1626249292', '0', '0.0038421154022217', ''),
(15, 'login/userlogin', 'get', 'a:12:{s:6:\"Accept\";s:135:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:14:\"en-US,en;q=0.9\";s:1', '', '137.97.85.126', '1626249517', '0', '0.0041799545288086', ''),
(16, 'login/userlogin', 'get', 'a:12:{s:6:\"Accept\";s:135:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:14:\"en-US,en;q=0.9\";s:1', '', '137.97.85.126', '1626249526', '0', '0.0047869682312012', ''),
(17, 'login/userlogin', 'get', 'a:13:{s:6:\"Accept\";s:135:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:14:\"en-US,en;q=0.9\";s:1', '', '137.97.85.126', '1626249598', '0', '0.038199901580811', '403'),
(18, 'login/userlogin', 'get', 'a:12:{s:6:\"Accept\";s:135:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:14:\"en-US,en;q=0.9\";s:1', '', '137.97.85.126', '1626263551', '0', '0.0069959163665771', '403'),
(19, 'login/userlogin', 'get', 'a:12:{s:6:\"Accept\";s:135:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:14:\"en-US,en;q=0.9\";s:1', '', '106.200.61.37', '1626266648', '0', '0.0039920806884766', '403'),
(20, 'login/checkphone', 'post', 'a:13:{s:14:\"Content-Length\";s:2:\"28\";s:12:\"Content-Type\";s:16:\"application/json\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:0:\"\";s:4:\"Host\";s:11:\"wahylab.com\";s:13:\"Postman-Token\";s:36:\"4bde6f19-8444-4cf2-be', '123', '137.97.85.126', '1626279644', '1', '0.02187705039978', ''),
(21, 'login/checkphone', 'post', 'a:14:{s:14:\"Content-Length\";s:2:\"28\";s:12:\"Content-Type\";s:16:\"application/json\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:0:\"\";s:6:\"Cookie\";s:51:\"ci_session=1d9251a4d57abcf13df845acfffa15527bb244fe\";s:4:\"H', '123', '137.97.85.126', '1626279771', '1', '0.0095131397247314', ''),
(22, 'login/userlogin', 'get', 'a:11:{s:6:\"Accept\";s:135:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:14:\"en-US,en;q=0.9\";s:1', '', '49.15.219.5', '1626326933', '0', '0.082803964614868', '403'),
(23, 'login/userlogin', 'get', 'a:12:{s:6:\"Accept\";s:135:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:14:\"en-US,en;q=0.9\";s:1', '', '27.61.63.253', '1626332291', '0', '0.004237174987793', '403');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_shop_id` int(11) NOT NULL,
  `order_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_status` int(11) NOT NULL DEFAULT '1',
  `order_image_present` tinyint(1) NOT NULL DEFAULT '0',
  `order_given_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_shop_id`, `order_date_time`, `order_status`, `order_image_present`, `order_given_by`) VALUES
(1, 10, '2021-07-07 13:42:52', 1, 0, 26),
(2, 10, '2021-07-07 14:06:31', 1, 1, 26),
(3, 10, '2021-07-07 14:08:27', 1, 0, 26),
(4, 10, '2021-07-07 14:09:40', 1, 0, 26),
(5, 10, '2021-07-07 19:40:41', 1, 1, 26),
(6, 10, '2021-07-07 19:42:11', 1, 0, 26);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(50) NOT NULL,
  `shop_owner_id` int(11) NOT NULL,
  `shop_location_latitude` double NOT NULL,
  `shop_location_longitude` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`shop_id`, `shop_name`, `shop_owner_id`, `shop_location_latitude`, `shop_location_longitude`) VALUES
(11, 'Banee\'s Kada 2', 28, 10.9636107, 75.9025898),
(10, 'Banee\'s Kada', 26, 10.9633172, 75.9036788),
(12, 'abc', 30, 9.7202307, 76.8340754),
(13, 'ik traders', 31, 11.2647647, 75.8593576),
(14, 'athi Store ', 32, 11.2648047, 75.8592705);

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `shop_category_id` int(11) NOT NULL,
  `shop_category_name` varchar(50) NOT NULL,
  `shop_category_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_categories`
--

INSERT INTO `shop_categories` (`shop_category_id`, `shop_category_name`, `shop_category_type`) VALUES
(1, 'Vegetables', 0),
(2, 'Boutique', 1),
(3, 'Stationary', 0),
(4, 'Furniture', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_category_maps`
--

CREATE TABLE `shop_category_maps` (
  `shop_category_map_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `shop_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_category_maps`
--

INSERT INTO `shop_category_maps` (`shop_category_map_id`, `shop_id`, `shop_category_id`) VALUES
(11, 10, 1),
(12, 10, 2),
(13, 10, 3),
(14, 11, 1),
(15, 11, 2),
(16, 12, 1),
(17, 13, 1),
(18, 13, 3),
(19, 14, 2);

-- --------------------------------------------------------

--
-- Table structure for table `shop_images`
--

CREATE TABLE `shop_images` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_images`
--

INSERT INTO `shop_images` (`id`, `shop_id`, `image`, `status`) VALUES
(1, 16, '162634413316.png', 1),
(2, 17, '17.png', 1),
(3, 18, '162634825718.png', 1),
(4, 18, '162634825718.png', 1),
(5, 21, '162634845521.png', 1),
(6, 21, '162634845521.png', 1),
(7, 22, '022.png', 1),
(8, 22, '122.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otp`
--

CREATE TABLE `tbl_otp` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `otp_generated` int(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_otp`
--

INSERT INTO `tbl_otp` (`id`, `phone_number`, `otp_generated`, `status`) VALUES
(1, '9526774276', 123456, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_mobile_number` varchar(10) NOT NULL,
  `user_location_latitude` double NOT NULL,
  `user_location_longitude` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_mobile_number`, `user_location_latitude`, `user_location_longitude`) VALUES
(26, 'Banee Ishaque K', '9446827218', 10.9633172, 75.9036788),
(27, 'Banee Ishaque K 2', '9895204814', 10.256256, 10.256256),
(28, 'Banee Ishaque K Home', '9895624669', 10.9636107, 75.9025898),
(30, 'Sneha', '8310353744', 9.7202307, 76.8340754),
(31, 'sooraj', '9809422111', 11.2647647, 75.8593576),
(32, 'sona', '9539263625', 9.6448798, 76.7179593);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`item_image_id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`shop_category_id`);

--
-- Indexes for table `shop_category_maps`
--
ALTER TABLE `shop_category_maps`
  ADD PRIMARY KEY (`shop_category_map_id`);

--
-- Indexes for table `shop_images`
--
ALTER TABLE `shop_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UNIQUE` (`user_mobile_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `item_images`
--
ALTER TABLE `item_images`
  MODIFY `item_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `shop_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shop_category_maps`
--
ALTER TABLE `shop_category_maps`
  MODIFY `shop_category_map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `shop_images`
--
ALTER TABLE `shop_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
