-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Generation Time: Apr 01, 2020 at 02:30 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airlines`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_login_count` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`username`),
  UNIQUE KEY `admin_login_count` (`admin_login_count`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `admin_login_count`) VALUES
('admin', 'admin', 32);

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
CREATE TABLE IF NOT EXISTS `airports` (
  `stn_code` varchar(6) NOT NULL,
  `airport_name` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  PRIMARY KEY (`stn_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`stn_code`, `airport_name`, `city`) VALUES
('HYD', 'Rajiv Gandhi International Airport', 'Hyderabad'),
('BOM', 'Chhatrapati Shivaji International Airport', 'Mumbai'),
('TRV', 'Trivandrum International Airport', 'Trivandrum'),
('BLR', 'Bengaluru International Airport', 'Bengaluru'),
('CCU', 'Netaji Subhash Chandra Bose International Airport', 'Kolkata'),
('DEL', 'Indira Gandhi International Airport', 'Delhi'),
('COK', 'Cochin International Airport', 'Cochin'),
('GOI', 'Goa International Airport', 'Goa'),
('BBI', 'Biju Patnaik International Airport', 'Bhubaneswar'),
('PNQ', 'Pune Airport', 'Pune'),
('MMA', 'Meenambarkkam International Airport', 'Chennai'),
('AMD', 'Sardar Vallabhbhai Patel International Airport', 'Ahmedabad'),
('ATL', 'Atlanta International Airport', 'Atlanta,Georgia'),
('PEK', 'Beijing Capital International Airport', 'Beijing'),
('LAX', 'Los Angeles International Airport', 'Los Angeles'),
('HND', 'Tokyo Haneda Airport', 'Tokyo'),
('DXB', 'Dubai International Airport', 'Dubai'),
('HKG', 'Hong Kong International Airport', 'Chek Lap Kok'),
('DFW', 'Dallas/Fort Worth International Airport', 'Texas'),
('JFK', 'John F.Kennedy International Airport', 'NewYork'),
('SIN', 'Singapore Changi Airport', 'Singapore'),
('KUL', 'Kuala Lumpur International Airport', 'Sepang');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `booking_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `booking_name` varchar(50) NOT NULL,
  `Age` int(11) NOT NULL,
  `type_of_identification` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `phone_number` bigint(255) NOT NULL,
  `class` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `halt_station` varchar(20) DEFAULT NULL,
  `plane_id1` varchar(20) NOT NULL,
  `plane_id2` varchar(20) DEFAULT NULL,
  `total_fare` int(100) NOT NULL,
  `anum` int(11) NOT NULL,
  `cnum` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dtd1` datetime NOT NULL,
  `dta1` datetime NOT NULL,
  `dtd2` datetime DEFAULT NULL,
  `dta2` datetime DEFAULT NULL,
  PRIMARY KEY (`booking_id`,`email`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`booking_id`, `email`, `booking_name`, `Age`, `type_of_identification`, `id_number`, `phone_number`, `class`, `source`, `destination`, `halt_station`, `plane_id1`, `plane_id2`, `total_fare`, `anum`, `cnum`, `timestamp`, `dtd1`, `dta1`, `dtd2`, `dta2`) VALUES
(000052, 'demo@gmail.com', 'demo', 21, 'aadhar', '1875469321549', 8974569312, 'first', 'HYD', 'DEL', NULL, 'SpiceJet03', NULL, 20700, 3, 0, '2020-03-30 09:30:20', '2020-03-31 13:00:00', '2020-03-31 15:00:00', NULL, NULL),
(000053, 'demo@gmail.com', 'shivakumar', 21, 'aadhar', '1236547986541', 8974563126, 'first', 'HYD', 'DEL', 'BBI', 'IndiGo01', 'IndiGo02', 65000, 5, 2, '2020-03-30 09:31:45', '2020-03-31 08:00:00', '2020-03-31 10:00:00', '2020-03-31 11:00:00', '2020-03-31 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
CREATE TABLE IF NOT EXISTS `flights` (
  `flight_id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `stops` int(20) NOT NULL DEFAULT 0,
  `halt_station` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_id`, `source`, `destination`, `stops`, `halt_station`) VALUES
(76, 'PNQ', 'GOI', 0, NULL),
(75, 'HYD', 'PNQ', 0, NULL),
(73, 'HYD', 'GOI', 0, NULL),
(72, 'HYD', 'DEL', 0, NULL),
(71, 'HYD', 'DEL', 0, NULL),
(70, 'BBI', 'DEL', 0, NULL),
(69, 'HYD', 'BBI', 0, NULL),
(68, 'HYD', 'DEL', 1, 'BBI'),
(67, 'BBI', 'DEL', 0, NULL),
(64, 'HYD', 'CCU', 0, NULL),
(65, 'HYD', 'DEL', 1, 'BBI'),
(66, 'HYD', 'BBI', 0, NULL),
(60, 'DXB', 'ATL', 0, NULL),
(59, 'HYD', 'DXB', 0, NULL),
(58, 'HYD', 'ATL', 1, 'DXB'),
(48, 'BBI', 'CCU', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `from_to_intermediate`
--

DROP TABLE IF EXISTS `from_to_intermediate`;
CREATE TABLE IF NOT EXISTS `from_to_intermediate` (
  `flight_id` int(11) NOT NULL,
  `stn_code` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `has_booked_seats_in_plane`
--

DROP TABLE IF EXISTS `has_booked_seats_in_plane`;
CREATE TABLE IF NOT EXISTS `has_booked_seats_in_plane` (
  `flight_id` int(11) NOT NULL,
  `plane_id` varchar(50) NOT NULL,
  `booked_economy_seats` int(11) DEFAULT 0,
  `booked_business_seats` int(11) NOT NULL DEFAULT 0,
  `booked_first_seats` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `has_booked_seats_in_plane`
--

INSERT INTO `has_booked_seats_in_plane` (`flight_id`, `plane_id`, `booked_economy_seats`, `booked_business_seats`, `booked_first_seats`) VALUES
(48, 'AirIndia01', 7, 0, 0),
(64, 'SpiceJet01', 0, 0, 0),
(63, 'UN02', 0, 0, 0),
(62, 'UN01', 0, 0, 0),
(61, 'UN02', 0, 0, 0),
(61, 'UN01', 0, 0, 0),
(60, 'Quatar02', 2, 0, 6),
(59, 'Quatar01', 0, 1, 6),
(58, 'Quatar02', 2, 0, 6),
(58, 'Quatar01', 0, 1, 6),
(65, 'IndiGo01', 5, 0, 5),
(65, 'IndiGo02', 5, 0, 5),
(66, 'IndiGo01', 5, 0, 5),
(67, 'IndiGo02', 5, 0, 5),
(68, 'AirIndia01', 0, 0, 0),
(68, 'AirIndia02', 0, 0, 0),
(69, 'AirIndia01', 0, 0, 0),
(70, 'AirIndia02', 0, 0, 0),
(71, 'GoAir01', 0, 0, 0),
(72, 'SpiceJet03', 0, 0, 40),
(73, 'Emirates02', 0, 0, 0),
(74, 'AirIndiaExpress01', 0, 0, 0),
(74, 'AirIndiaExpress02', 0, 0, 0),
(75, 'AirIndiaExpress01', 0, 0, 0),
(76, 'AirIndiaExpress02', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `planes`
--

DROP TABLE IF EXISTS `planes`;
CREATE TABLE IF NOT EXISTS `planes` (
  `plane_id` varchar(50) NOT NULL,
  `airlines` varchar(50) NOT NULL,
  `total_economy_seats` int(11) NOT NULL,
  `total_business_seats` int(11) NOT NULL,
  `total_first_seats` int(11) NOT NULL,
  PRIMARY KEY (`plane_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `planes`
--

INSERT INTO `planes` (`plane_id`, `airlines`, `total_economy_seats`, `total_business_seats`, `total_first_seats`) VALUES
('SpiceJet01', 'SpiceJet', 60, 50, 40),
('IndiGo03', 'IndiGo', 60, 50, 40),
('IndiGo02', 'IndiGo', 40, 30, 20),
('IndiGo01', 'IndiGo', 80, 60, 40),
('AirIndiaExpress03', 'Air India Express', 80, 60, 40),
('AirIndiaExpress02', 'Air India Express', 60, 40, 30),
('AirIndiaExpress01', 'Air India Express', 50, 30, 20),
('AirIndia03', 'AirIndia', 50, 30, 20),
('AirIndia02', 'AirIndia', 80, 60, 40),
('AirIndia01', 'AirIndia', 80, 60, 40),
('SpiceJet02', 'SpiceJet', 60, 50, 40),
('SpiceJet03', 'SpiceJet', 60, 50, 40),
('GoAir01', 'GoAir', 80, 50, 40),
('GoAir02', 'GoAir', 90, 70, 50),
('GoAir03', 'GoAir', 90, 70, 50),
('Quatar01', 'Qatar Airways', 90, 70, 50),
('Quatar02', 'Qatar Airways', 100, 80, 40),
('Quatar03', 'Qatar Airways', 50, 60, 40),
('Singapore01', 'Singapore Airlines', 100, 70, 70),
('Singapore02', 'Singapore Airlines', 100, 70, 70),
('Singapore03', 'Singapore Airlines', 80, 60, 40),
('Emirates01', 'Emirates', 80, 60, 40),
('Emirates02', 'Emirates', 80, 60, 40),
('Emirates03', 'Emirates', 80, 60, 40),
('Thai01', 'Thai Airways', 80, 60, 40),
('Thai02', 'Thai Airways', 80, 60, 40),
('UN01', 'United Airways', 80, 60, 40),
('UN02', 'United Airways', 80, 60, 40);

-- --------------------------------------------------------

--
-- Table structure for table `taken_by_plane`
--

DROP TABLE IF EXISTS `taken_by_plane`;
CREATE TABLE IF NOT EXISTS `taken_by_plane` (
  `flight_id` int(11) NOT NULL,
  `plane_id` varchar(20) NOT NULL,
  `path` int(10) NOT NULL,
  `path_desc` varchar(100) NOT NULL,
  `date_of_depart` date NOT NULL,
  `time_of_depart` time NOT NULL,
  `date_of_arrival` date NOT NULL,
  `time_of_arrival` time NOT NULL,
  `economy_fare` int(11) NOT NULL,
  `business_fare` int(11) NOT NULL,
  `first_fare` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taken_by_plane`
--

INSERT INTO `taken_by_plane` (`flight_id`, `plane_id`, `path`, `path_desc`, `date_of_depart`, `time_of_depart`, `date_of_arrival`, `time_of_arrival`, `economy_fare`, `business_fare`, `first_fare`) VALUES
(48, 'AirIndia01', 0, 'D irect', '2020-03-30', '08:00:00', '2023-03-30', '10:00:00', 3000, 6000, 10000),
(65, 'IndiGo01', 1, 'HYD to BBI', '2020-03-31', '08:00:00', '2023-03-31', '10:00:00', 2000, 3000, 5000),
(65, 'IndiGo02', 2, 'BBI to DEL', '2020-03-31', '11:00:00', '2023-03-31', '12:00:00', 2086, 5614, 8000),
(66, 'IndiGo01', 0, 'Direct', '2020-03-31', '08:00:00', '2023-09-31', '10:00:00', 2000, 3000, 5000),
(67, 'IndiGo02', 0, 'Direct', '2020-03-31', '11:00:00', '2020-09-31', '12:00:00', 2086, 5614, 8000),
(60, 'Quatar02', 0, 'Direct', '2020-03-30', '17:00:00', '2020-09-31', '08:00:00', 80000, 100000, 125000),
(59, 'Quatar01', 0, 'Direct', '2020-03-30', '11:00:00', '2020-09-30', '15:00:00', 14982, 24982, 34982),
(58, 'Quatar02', 2, 'DXB to ATL', '2020-03-30', '17:00:00', '2020-09-31', '08:00:00', 80000, 100000, 125000),
(58, 'Quatar01', 1, 'HYD to DXB', '2020-03-30', '11:00:00', '2020-09-30', '15:00:00', 14982, 24982, 34982);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `login_count` int(255) NOT NULL DEFAULT 0,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `password`, `login_count`) 
VALUES 
  ('John Doe', 'john@example.com', 'hashed_password_1', 0),
  ('Jane Smith', 'jane@example.com', 'hashed_password_2', 0),
  ('Bob Johnson', 'bob@example.com', 'hashed_password_3', 0);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
