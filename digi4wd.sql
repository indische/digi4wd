-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2014 at 10:39 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `digi4wd`
--

-- --------------------------------------------------------

--
-- Table structure for table `blueprint`
--

CREATE TABLE IF NOT EXISTS `blueprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chassis` int(11) NOT NULL,
  `dynamo` int(11) NOT NULL,
  `tire_front` int(11) NOT NULL,
  `tire_back` int(11) NOT NULL,
  `bumper` int(11) NOT NULL,
  `battery_A` int(11) NOT NULL,
  `battery_B` int(11) NOT NULL,
  `body` int(11) NOT NULL,
  `antenna` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `component`
--

CREATE TABLE IF NOT EXISTS `component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `weight` double NOT NULL COMMENT 'weight is in gram',
  `price` double NOT NULL COMMENT 'price in shop, write in currency',
  `chance` double NOT NULL COMMENT 'chance in pachinko machine, write in double',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `component`
--

INSERT INTO `component` (`id`, `type`, `description`, `weight`, `price`, `chance`) VALUES
(1, 'chassis', 'chassis', 20, 200, 10),
(2, 'dynamo', 'dynamo standard', 35, 300, 4),
(3, 'tireFront', 'Front Tire standard', 35, 300, 4),
(4, 'tireBack', 'Back Tire standard', 35, 300, 4),
(5, 'bumper', 'bumper standard', 35, 300, 4),
(6, 'battery', 'Battery standard', 15, 100, 12),
(7, 'body', 'body standard', 15, 200, 4),
(8, 'antenna', 'antenna standard', 35, 300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `durability` double NOT NULL,
  `unique_value` double NOT NULL,
  `unique_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `user_id`, `component_id`, `durability`, `unique_value`, `unique_description`) VALUES
(1, 1, 1, 100, 0, '-'),
(2, 1, 2, 100, 0, ''),
(3, 1, 3, 100, 0, ''),
(4, 1, 4, 100, 0, ''),
(5, 1, 5, 100, 0, ''),
(6, 1, 6, 100, 0, ''),
(7, 1, 7, 100, 0, ''),
(8, 1, 8, 100, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `phone` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `phone`) VALUES
(1, 'user1', 'user1', '0813456789');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
