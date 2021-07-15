-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2021 at 06:56 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restapi`
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
  `item_in_stock` int(11) NOT NULL DEFAULT 1
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
  `rtime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `authorized`, `rtime`) VALUES
(1, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"8182d11f-5269-4665-99a0-df24b7b064fa\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626243385', '1', ''),
(2, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"0535771f-e00b-4060-ae37-fa645b7cb9b2\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626243438', '1', '0.054003000259399'),
(3, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"8f5cd5ee-dde2-4447-92f8-2a93e760884d\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245023', '1', '0.39602303504944'),
(4, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"639ebb2b-f9d1-4a15-b78a-b903ca733d5f\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245075', '1', '0.28201603889465'),
(5, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"cf561542-f381-4275-abe2-fa880b41c32a\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245109', '1', '0.20701193809509'),
(6, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"57f732f6-e01d-42df-991e-427707be08d2\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245132', '1', '0.23401284217834'),
(7, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"defd162e-09ea-4ed1-a8ef-95a2d5f6c3c0\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245162', '1', '0.23501396179199'),
(8, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"ffe5fcf0-d4bb-4ef9-b8e2-c8d7836717b9\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245197', '1', '0.39602208137512'),
(9, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"869f5dc4-8a3e-4701-9971-02bde0971c6e\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245229', '1', '0.32801914215088'),
(10, 'login/userlogin', 'post', 'a:12:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"8f080f5a-e396-4f40-81a4-f9daf0a707aa\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626245255', '1', '0.099005937576294'),
(11, 'login/userlogin', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"03ef86d0-7176-49b7-9084-0842610dc6cf\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626260382', '1', '0.83104705810547'),
(12, 'login/checkphone', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"9f8b7738-5133-4794-bf5b-15edb0cc3488\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626260445', '1', '0.098004817962646'),
(13, 'login/checkphone', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"197c7b20-5f31-4b39-87c9-ead7cd9225a2\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626260481', '1', '0.14300799369812'),
(14, 'login/checkphone', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"6c6d57eb-9271-478d-ae0d-ee35c32642ef\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626260577', '1', '0.13100695610046'),
(15, 'login/checkphone', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"f9a4e2bb-99a2-4043-9a39-194bf271a030\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626260587', '1', '0.080003976821899'),
(16, 'login/checkphone', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"828b8c0b-e0bb-48d6-b059-6279ef6a6616\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626260617', '1', '0.28001594543457'),
(17, 'login/checkphone', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"06ee05fa-e693-4c75-b02b-ba9b9dbf6de1\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626260682', '1', '0.22901296615601'),
(18, 'login/sendotp', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"5e49c17e-81c0-4f83-a032-e7223c22883b\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626264835', '1', '0.2440140247345'),
(19, 'login/sendotp', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"6c1913ab-bb84-4f97-94a4-0c591e7a383f\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626264948', '1', '2.4701411724091'),
(20, 'login/sendotp', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"4803d48d-7934-458d-a757-727c5dfb67ef\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626265157', '1', '0.8510479927063'),
(21, 'login/sendotp', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"fc75dde0-bee9-4e49-9edb-1d64da5000b8\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626265251', '1', '1.5110869407654'),
(22, 'login/sendotp', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"6f028a35-8367-4980-aaca-e0dccdfee44c\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626265561', '1', '0.17600989341736'),
(23, 'login/sendotp', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"204b9c51-9526-40de-9289-21b8165bc9f2\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626265620', '1', '0.36202096939087'),
(24, 'login/sendotp', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"57334825-4ebf-4302-b768-c3c0e43a1276\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626265656', '1', '0.19301104545593'),
(25, 'login/sendotp', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"7bebdec8-1ec1-4367-8158-35ac65ecac41\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626265677', '1', '0.76904392242432'),
(26, 'login/sendotp', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"533fa8ac-2ede-4cfc-a9f9-301764d48341\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626267007', '1', '0.59703397750854'),
(27, 'login/sendotp', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"ece6c08b-9e51-4f04-823d-8dabff4b36be\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626267029', '1', '0.74104189872742'),
(28, 'login/sendotp', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"5b350996-44a1-48d0-a67a-25fb0840fb33\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626267586', '1', '0.75904297828674'),
(29, 'login/sendotp', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"6e49758b-91c6-4255-80c0-f4820e19613a\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626267873', '1', '0.77004408836365'),
(30, 'login/sendotp', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"51fd4794-7fa3-4c5a-a9ae-5e134335af8e\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626267887', '1', '0.65303683280945'),
(31, 'login/sendotp', 'post', 'a:11:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"89865aaa-fc46-4c9a-a8ef-5771d9d77642\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626267949', '1', '2.3711349964142'),
(32, 'login/sendotp', 'post', 'a:10:{s:9:\"x-api-key\";s:3:\"123\";s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"3eaf40d6-0955-4c16-86b6-72f1135d097b\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Enco', '123', '::1', '1626322918', '1', '1.7240989208221');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_shop_id` int(11) NOT NULL,
  `order_date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_status` int(11) NOT NULL DEFAULT 1,
  `order_image_present` tinyint(1) NOT NULL DEFAULT 0,
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
(1, '9526774276', 123456, 1),
(2, '9446509164', 5574, 1),
(3, '9446509164', 9784, 1),
(4, '9446509164', 1944, 1),
(5, '9446509164', 8160, 1),
(6, '9446509164', 1746, 1),
(7, '9446509164', 8901, 1),
(8, '9446509164', 5860, 1),
(9, '9446509164', 3191, 1),
(10, '9446509164', 2941, 1),
(11, '9446509164', 7858, 1),
(12, '9446509164', 2801, 1),
(13, '9446509164', 2266, 1),
(14, '9446509164', 8971, 1),
(15, '9446509164', 3207, 1);

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
-- Indexes for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
-- AUTO_INCREMENT for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
