-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2019 at 06:39 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `addmoney`
--

CREATE TABLE `addmoney` (
  `date` varchar(12) DEFAULT NULL,
  `time` varchar(14) DEFAULT NULL,
  `user_id` varchar(25) DEFAULT NULL,
  `added_money` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addmoney`
--

INSERT INTO `addmoney` (`date`, `time`, `user_id`, `added_money`, `balance`) VALUES
('12.04.2019', '12:43:10 AM', 'R171217001', 3000, 3000),
('12.04.2019', '12:58:02 AM', 'R171217002', 4000, 4000),
('12.04.2019', '12:14:51 PM', 'R171217052', 5000, 5000),
('12.04.2019', '12:33:37 PM', 'R171217045', 500, 500),
('12.04.2019', '12:47:33 PM', 'R171217041', 5000, 5000),
('12.04.2019', '01:07:45 PM', 'R171217044', 4000, 4000),
('13.04.2019', '01:47:02 PM', 'R171217130', 5000, 5000),
('15.04.2019', '03:03:49 PM', 'R171217039', 600, 600),
('16.04.2019', '01:42:53 PM', 'R171217014', 3000, 3000),
('16.04.2019', '01:59:55 PM', 'R171217060', 6000, 6000),
('16.04.2019', '06:30:43 PM', 'Param', 67, 67),
('17.04.2019', '09:54:28 PM', 'Sunanda', 9000, 9000),
('30.04.2019', '11:22:42 PM', 'R171217044', 800, 4435),
('01.05.2019', '11:04:02 AM', '981752189', 4000, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `name` varchar(20) DEFAULT NULL,
  `DOB` varchar(14) DEFAULT NULL,
  `user_id` varchar(25) NOT NULL,
  `password` varchar(8) DEFAULT NULL,
  `balance` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`name`, `DOB`, `user_id`, `password`, `balance`) VALUES
('Puneet', '23rd june 1998', '981752189', 'tin', 3500),
('Paramjeet', '30-04-1999', 'Param', 'Param', 67),
('Shivam puri', '23rd May 1999', 'R171217001', 'fry', 5584),
('Utsav bharadwaj', '09 Jun 1999', 'R171217002', 'utsav', 3831),
('Balaram Patap', '24th jun 1999', 'R171217014', 'userid', 2800),
('Nirmal', '23rd jun 1999', 'R171217039', '1234', 550),
('Nishkarsh raj khare', '14th jun 1999', 'R171217041', 'hugdiya', 4600),
('Prajjawal', '24th may 1999', 'R171217044', 'hello', 4435),
('Prakhar', '23rd june 1999', 'R171217045', 'hello', 800),
('Saurabh Dimri', '6th jul 1998', 'R171217052', 'hello', 4800),
('Vedansh Singhal', '23rd Jun 1999', 'R171217060', '1234', 5700),
('Mrinal ', '21st May 1999', 'R171217130', 'mrinal', 4800),
('Sunanda', '31st Aug 1973', 'Sunanda', '123456', 8500);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `date` varchar(12) DEFAULT NULL,
  `time` varchar(14) DEFAULT NULL,
  `sent_to` varchar(25) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `admin` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`date`, `time`, `sent_to`, `amount`, `balance`, `admin`) VALUES
('12.04.2019', '12:58:18 AM', 'R171217001', 1000, 3000, 'R171217002'),
('12.04.2019', '12:15:02 PM', 'R171217001', 200, 4800, 'R171217052'),
('12.04.2019', '12:34:05 PM', 'R171217001', 100, 400, 'R171217045'),
('12.04.2019', '12:47:41 PM', 'R171217045', 400, 4600, 'R171217041'),
('12.04.2019', '01:08:03 PM', 'R171217002', 1, 3999, 'R171217044'),
('12.04.2019', '07:33:02 PM', 'R171217001', 100, 3899, 'R171217044'),
('12.04.2019', '07:36:40 PM', 'R171217001', 100, 3799, 'R171217044'),
('12.04.2019', '07:39:28 PM', 'R171217001', 100, 3699, 'R171217044'),
('12.04.2019', '07:44:09 PM', 'R171217001', 10, 3689, 'R171217044'),
('12.04.2019', '08:19:25 PM', 'R171217001', 11, 3678, 'R171217044'),
('12.04.2019', '08:23:45 PM', 'R171217001', 13, 3665, 'R171217044'),
('13.04.2019', '01:47:15 PM', 'R171217001', 200, 4800, 'R171217130'),
('15.04.2019', '02:23:17 PM', 'R171217001', 10, 3655, 'R171217044'),
('15.04.2019', '03:04:02 PM', 'R171217001', 20, 580, 'R171217039'),
('15.04.2019', '03:05:56 PM', 'R171217002', 30, 550, 'R171217039'),
('16.04.2019', '01:43:13 PM', 'R171217001', 200, 2800, 'R171217014'),
('16.04.2019', '02:00:10 PM', 'R171217002 ', 300, 5700, 'R171217060'),
('17.04.2019', '09:57:38 PM', 'R171217001', 500, 8500, 'Sunanda'),
('30.04.2019', '11:22:20 PM', 'R171217001', 20, 3635, 'R171217044'),
('01.05.2019', '11:04:40 AM', 'R171217002 ', 500, 3500, '981752189');

-- --------------------------------------------------------

--
-- Table structure for table `transactions2`
--

CREATE TABLE `transactions2` (
  `date` varchar(12) DEFAULT NULL,
  `time` varchar(14) DEFAULT NULL,
  `recieved_from` varchar(25) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `admin` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions2`
--

INSERT INTO `transactions2` (`date`, `time`, `recieved_from`, `amount`, `balance`, `admin`) VALUES
('12.04.2019', '12:58:18 AM', 'R171217002', 1000, 4000, 'R171217001'),
('12.04.2019', '12:15:02 PM', 'R171217052', 200, 4200, 'R171217001'),
('12.04.2019', '12:34:05 PM', 'R171217045', 100, 4300, 'R171217001'),
('12.04.2019', '12:47:41 PM', 'R171217041', 400, 800, 'R171217045'),
('12.04.2019', '01:08:03 PM', 'R171217044', 1, 3001, 'R171217002'),
('12.04.2019', '07:33:02 PM', 'R171217044', 100, 4400, 'R171217001'),
('12.04.2019', '07:36:40 PM', 'R171217044', 100, 4500, 'R171217001'),
('12.04.2019', '07:39:28 PM', 'R171217044', 100, 4600, 'R171217001'),
('12.04.2019', '07:44:09 PM', 'R171217044', 10, 4610, 'R171217001'),
('12.04.2019', '08:19:25 PM', 'R171217044', 11, 4621, 'R171217001'),
('12.04.2019', '08:23:45 PM', 'R171217044', 13, 4634, 'R171217001'),
('13.04.2019', '01:47:15 PM', 'R171217130', 200, 4834, 'R171217001'),
('15.04.2019', '02:23:17 PM', 'R171217044', 10, 4844, 'R171217001'),
('15.04.2019', '03:04:02 PM', 'R171217039', 20, 4864, 'R171217001'),
('15.04.2019', '03:05:56 PM', 'R171217039', 30, 3031, 'R171217002'),
('16.04.2019', '01:43:13 PM', 'R171217014', 200, 5064, 'R171217001'),
('16.04.2019', '02:00:10 PM', 'R171217060', 300, 3331, 'R171217002 '),
('17.04.2019', '09:57:38 PM', 'Sunanda', 500, 5564, 'R171217001'),
('30.04.2019', '11:22:20 PM', 'R171217044', 20, 5584, 'R171217001'),
('01.05.2019', '11:04:40 AM', '981752189', 500, 3831, 'R171217002 ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
