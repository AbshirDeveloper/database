-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 20, 2018 at 08:54 PM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etawakalchi`
--

-- --------------------------------------------------------

--
-- Table structure for table `amano`
--

CREATE TABLE `amano` (
  `id` int(100) NOT NULL,
  `r_balance` int(50) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `deposit` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `idbalance` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amano`
--

INSERT INTO `amano` (`id`, `r_balance`, `firstname`, `lastname`, `phone`, `balance`, `debit`, `deposit`, `date`, `customer_id`, `idbalance`, `description`, `type`) VALUES
(758, NULL, NULL, NULL, NULL, -100, 100, 0, '1532140979', 756, 0, 'qaatay', NULL),
(756, 0, 'Abshir', 'Jama', '3124093514', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(757, NULL, NULL, NULL, NULL, 100, 0, 100, '1532140975', 756, 100, 'cadaan', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amano`
--
ALTER TABLE `amano`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amano`
--
ALTER TABLE `amano`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=759;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
