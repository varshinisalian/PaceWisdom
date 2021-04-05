-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2021 at 04:57 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`email`, `password`) VALUES
('admin1@gmail.com', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `health_inspector`
--

CREATE TABLE `health_inspector` (
  `insp_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `office_add` varchar(30) NOT NULL,
  `pincode` int(10) NOT NULL,
  `off_phone` int(20) NOT NULL,
  `per_contact` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `health_inspector`
--

INSERT INTO `health_inspector` (`insp_id`, `name`, `office_add`, `pincode`, `off_phone`, `per_contact`) VALUES
(100, 'Ravi', 'Mangalore', 671315, 2147483647, 2147483647),
(102, 'sagar', 'Mangalore', 671315, 2147483647, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(10) NOT NULL,
  `current_cond` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `pincode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `name`, `age`, `current_cond`, `address`, `phone`, `pincode`) VALUES
(100, 'sam', 20, 'under treatment', 'karnataka', '9999999999', '671315'),
(200, 'kumar', 28, 'under treatment', 'kerala', '9990099999', '671315'),
(600, 'Jerry', 50, 'Cured', 'Kannur', '8888888888', '677622');

-- --------------------------------------------------------

--
-- Table structure for table `quarantine`
--

CREATE TABLE `quarantine` (
  `person_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(20) NOT NULL,
  `start_date` varchar(20) NOT NULL,
  `end_date` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `pincode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quarantine`
--

INSERT INTO `quarantine` (`person_id`, `name`, `age`, `start_date`, `end_date`, `address`, `phone`, `pincode`) VALUES
(100, 'Santhosh', 21, '2019-09-29', '2019-12-31', 'Bangalore', '9999999999', '671315');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `name` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`name`, `password`, `email`) VALUES
('jkjk', 'ewfwef', 'ewfwef'),
('fewf', 'wefrw', 'fewf'),
('Admin', 'admin', 'admin'),
('Prajual P V', '12345', 'adminnew'),
('jerin', 'jerry345', 'jerinbinoy2000@gmail.com'),
('haripottan', '12345', 'harikuttan@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `health_inspector`
--
ALTER TABLE `health_inspector`
  ADD PRIMARY KEY (`insp_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `quarantine`
--
ALTER TABLE `quarantine`
  ADD PRIMARY KEY (`person_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
