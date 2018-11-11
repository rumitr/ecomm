-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 09, 2018 at 11:36 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Laptops'),
(2, 'Desktops'),
(3, 'Tablets'),
(4, 'Gaming'),
(5, 'Workstations'),
(6, 'Monitors');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_cat` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 'New Inspiron 15 5570 Laptop', 38000, 'Core i5 (8th Gen)/8GB RAM/2TB HDD/15.6\'\' ', '503262.jpg', 'inspiron laptops'),
(2, 1, 'Dell Vostro 3000 ', 30500, 'Core i3 - 6th Gen/4 GB RAM/1 TB HDD/15.6 Inch/DOS', 'vostro.png', 'dell laptops vostro'),
(3, 1, 'Inspiron 15 7572 Laptop', 72000, '2018 Dell Inspiron 15 7000 15.6\" FHD IPS Laptop Computer, Intel Quad Core i7-8550U up to 4.00GHz, 8GB DDR4 RAM, 256GB SSD, USB 3.0, HDMI, 802.11ac Wireless, Bluetooth 4.1, Windows 10 Home', '32029583_1SZ.jpg', 'dell laptops inspiron core i7'),
(4, 1, 'Dell Inspiron 13 5378 2-in-1 ', 52000, 'Core i3 (7th Gen)/4GB RAM/1TB HDD/33.78 cm (13.3)/Windows 10', 'u_10174163.jpg', 'laptops inspiron 2-in-1'),
(5, 1, 'XPS 13 Laptop', 91000, 'XPS 13 is the smallest 13.3 (33.8cm) laptop that has a virtually borderless InfinityEdge display — available with touch.', 'xps.jpg', ' dell laptops xps13'),
(6, 2, 'Dell Inspiron 3520 Desktop Computer', 38000, 'Dell Inspiron 3268 7th Gen Core i3/4 GB/1 TB/Ubuntu Linux', 'dell-inspiron-3520-desktop-500x500.jpg', 'dell desktop inspiron'),
(7, 2, 'XPS 8920 Desktop Tower', 65000, 'The Intel® i5 or Intel® i7 Quad Core™ processor and high-performance graphics gives speed and power for video editing, video playback and gaming.', 'xps_desktop.jpg', 'dell desktop xps tower'),
(8, 2, 'New Inspiron 22 3275 All-in-One', 37000, '55.8cm (22) all-in-one desktop delivers seamless streaming for video and chats all in one place with Full HD on a wide-angle IPS display with pop-up webcam.', 'intel-inspiron-3000-aio-video-en.jpg', 'dell desktop inspiron all-in-one'),
(9, 2, 'Inspiron 27 7000 All-in-One', 98500, 'The Inspiron 27 7000 All-in-One is Ready for VR with an InfinityEdge display and the rich, deep colors of up to 4K.', 'inspiron-27-7000-video-en.jpg', 'dell desktop inspiron 7000 all-in-one'),
(10, 3, 'Dell Venue 7 3741 Tablet ', 13000, '6.95 inch, 8GB, Wi-Fi+3G+Voice Calling, Black', '41JHK2aGagL.jpg', 'dell tablets venue 3741'),
(11, 3, 'Latitude Dell 5175 Tablet', 87000, '8GB 128GB OS Windows 10 ', '41oHfqUOdTL.jpg', 'dell tablets latitude'),
(12, 4, 'DELL Inspiron 7570 15.6-inch FHD Laptop', 92000, '8th Gen-Core i7-8550U/8GB/1TB HDD + 128 GB SSD/Windows 10/MS Office/Nvidia GeForce MX130 4GB Graphics', '419GX2cOPnL.jpg', 'dell gaming laptops inspiron 7570'),
(13, 4, 'Dell G3 15 Gaming Laptop', 70500, '38.1 cm (15) gaming laptop engineered with NVIDIA® GeForce® discrete graphics, 8th Gen Intel® processors and thin design for the ultimate immersive gaming experience.', 'notebook-g3-3579.jpg', 'dell gaming laptops g3 series'),
(14, 4, 'Dell G5 15 Gaming Laptop', 94000, 'G5 5587 Non-Touch Gaming Notebook', 'g-series-15-5587-nontouch-notebook.jpg', 'dell gaming laptops g5 series'),
(15, 4, 'Dell G7 15 Gaming Laptop', 124900, '38.1 cm (15) gaming laptop designed for a powerful, immersive in-game experience featuring NVIDIA® GeForce® GTX 1060 graphics and the latest 8th Gen Intel® Quad-and-Hex Core™ CPUs.', '61XHScwkpXL._SL1280_.jpg', 'dell gaming laptops g7 series'),
(16, 4, 'Dell Alienware 15 15.6\" Gaming Laptop ', 160700, '6thGen Corei5/8GB/1TB/2GB Graphics/Windows 10', 'alienware-laptop.jpg', 'dell gaming laptop alienware'),
(17, 5, 'Precision 5520 Mobile Workstation', 256000, 'The world’s thinnest, lightest, smallest 15\" mobile workstation with 7th Gen Intel® processors and PremierColor 4K InfinityEdge display.', 'workstation-precision.jpg', 'dell workstation precision'),
(19, 5, 'Dell G Series G7 7588 15.6-inch FHD Laptop', 124990, '8th gen Core i7-8750H/16GB/1TB + 128GB SSD/Windows 10 + Ms Office Home & Student 2016/6GB Graphics', '61XHScwkpXL._SX425_.jpg', 'dell workstation G Series'),
(20, 5, 'Dell Precision M5510 WorkStation Laptop', 151947, '15.6inch FHD IPS Display, Intel Core 6th Generation i7-6820HQ, 32 GB DDR4, 500 GB HDD, NVIDIA Quadro M1000M, Windows 10 Pro ', 'dell-precision.jpg', 'dell precision workstation'),
(21, 6, 'Dell 24 UltraSharp Monitor', 45800, 'The Dell UltraSharp 24 Monitor takes your view to the edge with a near-seamless multi-monitor experience and exceptional colour accuracy.', 'dell-u2415.jpg', 'dell monitor ultrasharp'),
(22, 6, 'Alienware 25 Gaming Monitor', 51300, 'Uninterrupted gaming with unbelievable views\r\nResponsive gameplay and rapid refresh\r\nAlienFX lighting and NVIDIA® G-SYNCTM technolo', '91EN10GQToL._SX425_.jpg', 'dell monitor alienware gaming'),
(23, 6, 'Dell UltraSharp 27 4K HDR Monitor ', 70290, 'Dell PremierColor—Exceptional for color professionals\r\nDetails even in the dark\r\nThe video editor’s choice\r\nCapture every nuance\r\nFine-tune with precision', 'dell-ultrasharp.jpg', 'dell monitor ultrasharp'),
(24, 6, 'Dell 27 Monitor', 30700, 'Experience every thrill in Dell HDR with integrated speakers in this beautiful 68.5cm (27) monitor featuring a virtually borderless InfinityEdge display.', 'monitor_dell.jpg', 'dell monitor S Models'),
(25, 6, 'Dell 24 Touch Monitor', 29750, 'Work efficiently without sacrificing comfort on the world’s best 23.8-inch touch monitor. Featuring an articulating stand and anti-glare touch screen.', 'monitor-p2418ht-touch-black.png', 'dell monitor touch P Models');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
