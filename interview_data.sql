-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 27, 2022 at 11:21 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interview_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `ID` int(11) NOT NULL,
  `street1` varchar(34) NOT NULL,
  `street2` varchar(34) NOT NULL,
  `city` varchar(34) NOT NULL,
  `state` varchar(34) NOT NULL,
  `zipcode` varchar(34) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`ID`, `street1`, `street2`, `city`, `state`, `zipcode`) VALUES
(1, '123 example st', 'null', 'nowhere', 'KS', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `street1` varchar(34) NOT NULL,
  `street2` varchar(34) NOT NULL,
  `city` varchar(34) NOT NULL,
  `state` varchar(34) NOT NULL,
  `Zipcode` varchar(34) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`street1`, `street2`, `city`, `state`, `Zipcode`) VALUES
('123 Example street', 'null', 'nowhere', 'KS', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `interview_final`
--

DROP TABLE IF EXISTS `interview_final`;
CREATE TABLE IF NOT EXISTS `interview_final` (
  `Username` int(11) NOT NULL,
  `Name` int(11) NOT NULL,
  `street1` int(11) NOT NULL,
  `street2` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `zipcode` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interview_final1`
--

DROP TABLE IF EXISTS `interview_final1`;
CREATE TABLE IF NOT EXISTS `interview_final1` (
  `username` varchar(34) NOT NULL,
  `name` varchar(34) NOT NULL,
  `street1` varchar(34) NOT NULL,
  `street2` varchar(34) NOT NULL,
  `city` varchar(34) NOT NULL,
  `state` varchar(34) NOT NULL,
  `zipcode` varchar(34) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interview_final1`
--

INSERT INTO `interview_final1` (`username`, `name`, `street1`, `street2`, `city`, `state`, `zipcode`) VALUES
('jdoe', 'John Doe', '123 example st', 'null', 'nowhere', 'KS', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `Username` varchar(34) NOT NULL,
  `Name` varchar(34) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Name`) VALUES
('jdoe', 'John Doe');

-- --------------------------------------------------------

--
-- Table structure for table `users1`
--

DROP TABLE IF EXISTS `users1`;
CREATE TABLE IF NOT EXISTS `users1` (
  `user_id` int(11) NOT NULL,
  `username` varchar(34) NOT NULL,
  `name` varchar(34) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users1`
--

INSERT INTO `users1` (`user_id`, `username`, `name`) VALUES
(1, 'jdoe', 'John Doe');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
