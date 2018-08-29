-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 14, 2017 at 07:54 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `foodshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_master`
--

CREATE TABLE IF NOT EXISTS `enquiry_master` (
  `eid` int(5) NOT NULL AUTO_INCREMENT,
  `uname` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `msg` text NOT NULL,
  `status` int(1) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `enquiry_master`
--

INSERT INTO `enquiry_master` (`eid`, `uname`, `email`, `phone`, `subject`, `msg`, `status`, `date`) VALUES
(2, 'sagar', 'sagarswtboy@gmail.com', '3242342', 'asd', 'asdadsaMessage', 1, '14-04-2017');

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE IF NOT EXISTS `order_master` (
  `oid` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `cusine` varchar(150) NOT NULL,
  `other` varchar(50) DEFAULT 'NA',
  `rest_loca` varchar(150) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `deliver_date` varchar(20) NOT NULL,
  `order_date` varchar(20) NOT NULL,
  `status` int(2) NOT NULL,
  `restname` varchar(150) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`oid`, `username`, `order_type`, `cusine`, `other`, `rest_loca`, `city`, `deliver_date`, `order_date`, `status`, `restname`) VALUES
(1, 'sagar', 'Delivery', 'Break Fast', 'NA', 'Sardar Patel Square', 'Rajkot', '2017-06-07', '11-06-2017', 0, 'Domino`s Pizza'),
(2, 'sagar', 'Delivery', 'Dinner', 'NA', 'Sardar Patel Square', 'Surat', '2017-06-22', '13-06-2017', 0, 'Domino`s Pizza'),
(3, 'mahesh', 'Take away', 'Lunch', 'NA', 'Subway', 'Ahmedabad', '2017-06-23', '13-06-2017', 0, 'Subway'),
(5, 'Pooja', 'Take away', '120.00', 'NA', NULL, 'Rajkot', '2017-06-21', '13-06-2017', 1, 'Pizz Hut');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `picture` varchar(20) NOT NULL,
  `price` double(6,2) NOT NULL DEFAULT '0.00',
  `proprice` double(6,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `isSpcl` int(2) DEFAULT '0',
  `spclprice` decimal(8,0) DEFAULT '0',
  `validaty` varchar(20) DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `resid` (`resid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `resid`, `name`, `details`, `picture`, `price`, `proprice`, `status`, `isSpcl`, `spclprice`, `validaty`) VALUES
(30, 1, 'Pizaa', 'pizaaa', 'whole-pizza.png', 120.00, 120.00, 0, 0, '0', ''),
(31, 3, 'BIG BURGER', 'SO BIG BURGER', '1.jpg', 50.00, 50.00, 0, 1, '40', '2017-06-15'),
(32, 3, 'Triple Treat Box Veg', 'Meal for 4. Any 2 Veg Medium pizza + 1 Garlic Bread stix + 1 Dip + 1 Potato Poppers + 1 Tandoori Paneer Stuffed Pocket', '1371860.png', 320.00, 320.00, 0, 1, '220', '2017-06-21'),
(33, 5, 'Exotica', 'Red Capsicum, Green Capsicum, Baby Corn, Black Olives, Jalapenos', '1371007.png', 490.00, 490.00, 0, 1, '400', '2017-06-27'),
(34, 3, '420 PUNJABI MASALA PAPAD', '420 PUNJABI MASALA PAPAD', 'masaa045_1_.jpg', 120.00, 120.00, 0, 1, '80', '2017-06-16'),
(35, 5, 'Margherita | Classic', 'Margherita | Classic', 'Farm_Fresh_1.jpg', 250.00, 250.00, 0, NULL, '0', ''),
(36, 5, 'Classic Veggie', 'lassic Veggie', 'Classic_Veggie.jpg', 250.00, 250.00, 0, NULL, '0', ''),
(37, 3, 'Egg & Cheese', 'A classic for a reason. Our Egg and Cheese is simply delicious. Enjoy a fluffy egg omelet with melte', 'as.jpg', 200.00, 200.00, 0, NULL, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `rest_master`
--

CREATE TABLE IF NOT EXISTS `rest_master` (
  `rid` int(5) NOT NULL AUTO_INCREMENT,
  `rest_name` varchar(50) NOT NULL,
  `rest_address` varchar(255) NOT NULL,
  `rest_phone` varchar(12) NOT NULL,
  `rest_logo` varchar(255) NOT NULL,
  `rest_city` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `createdate` varchar(20) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `rest_master`
--

INSERT INTO `rest_master` (`rid`, `rest_name`, `rest_address`, `rest_phone`, `rest_logo`, `rest_city`, `status`, `createdate`) VALUES
(1, 'Pizz Hut', 'SG Highway', '6565656', 'margherita3.jpg', 'Ahmedabad', 'True', '14-04-2017'),
(3, 'Subway', 'Subway', '135649898', 'restaurent-logo2.jpg', 'Surat', 'True', '29-03-2017'),
(4, 'Barista', 'Maninagar', '956655', 'restaurent-logo3.jpg', 'Ahmedabad', 'False', '29-03-2017'),
(5, 'Papa Johns', 'Gota Chowkdi', '999556556', 'restaurent-logo4.jpg', 'Vadodara', 'True', '29-03-2017'),
(6, 'Domino`s Pizza', 'Sardar Patel Square', '32343243243', 'restaurent-logo5.jpg', 'Ahmedabad', 'True', '29-03-2017');

-- --------------------------------------------------------

--
-- Table structure for table `special_offers`
--

CREATE TABLE IF NOT EXISTS `special_offers` (
  `sid` int(5) NOT NULL AUTO_INCREMENT,
  `offername` varchar(250) NOT NULL,
  `offer_date` varchar(20) NOT NULL,
  `restid` varchar(10) NOT NULL,
  `spcl_price` decimal(8,0) NOT NULL,
  `offer_img` varchar(250) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usermaster`
--

CREATE TABLE IF NOT EXISTS `usermaster` (
  `uid` int(5) NOT NULL AUTO_INCREMENT,
  `fname` varchar(150) NOT NULL,
  `lname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `role` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `usermaster`
--

INSERT INTO `usermaster` (`uid`, `fname`, `lname`, `email`, `password`, `role`, `date`) VALUES
(1, 'sagar', 'rathod', 'sagarswtboy@gmail.com', 'sagar', 'User', '29-03-2017'),
(2, 'deepak', 'asddddd', '123@123.123', '12345', 'User', '15-04-2017');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
