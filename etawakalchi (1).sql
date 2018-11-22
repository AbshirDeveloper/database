-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 04, 2018 at 05:50 PM
-- Server version: 5.7.15
-- PHP Version: 7.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `Dayn` int(11) NOT NULL,
  `amaano` int(11) NOT NULL,
  `expenses` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `cash` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`Dayn`, `amaano`, `expenses`, `balance`, `date`, `id`, `id_customer`, `cash`) VALUES
(3, 4, 5, 6, 'today', 1, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cash`
--

CREATE TABLE `cash` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `uniq` int(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checks`
--

CREATE TABLE `checks` (
  `id` int(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `uniq` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `phone`, `address`) VALUES
(1, 'abshir', '3125322109', '4359 N ELSTON AVE CHICAGO, IL 60641');

-- --------------------------------------------------------

--
-- Table structure for table `dayn`
--

CREATE TABLE `dayn` (
  `id` int(30) NOT NULL,
  `id_customer` int(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `amount` int(30) DEFAULT NULL,
  `paid` int(30) DEFAULT NULL,
  `balance` int(30) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `due_date` varchar(55) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `directory`
--

CREATE TABLE `directory` (
  `id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directory`
--

INSERT INTO `directory` (`id`, `name`, `phone`) VALUES
(42, 'Abshir', '3124093514'),
(43, 'Siciid', '876876979'),
(44, 'geedi farah', '87987978');

-- --------------------------------------------------------

--
-- Table structure for table `drope`
--

CREATE TABLE `drope` (
  `id` int(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drope`
--

INSERT INTO `drope` (`id`, `date`, `amount`) VALUES
(1, '1533092458', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_login`
--

CREATE TABLE `employee_login` (
  `id` int(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `initial` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `description_r` varchar(100) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `r_balance` int(100) DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `idbalance` int(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `histor`
--

CREATE TABLE `histor` (
  `id` int(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `pertain` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `transaction` int(100) NOT NULL,
  `new_balance` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `histor`
--

INSERT INTO `histor` (`id`, `time`, `pertain`, `status`, `transaction`, `new_balance`) VALUES
(238, '1533422081', 'Dayn to Abshir', 'Unknown', 77, 78),
(239, '1533422694', 'Dayn Customer Deletion', 'Unknown', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `deposit` int(100) NOT NULL,
  `debit` int(100) NOT NULL,
  `balance` int(100) DEFAULT NULL,
  `date` varchar(100) NOT NULL,
  `id_customer` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `initial`
--

CREATE TABLE `initial` (
  `id` int(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `id_customer` int(100) DEFAULT NULL,
  `amount` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `first_name` varchar(50) NOT NULL,
  `id` int(30) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` char(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `initial` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`first_name`, `id`, `last_name`, `password`, `email`, `initial`) VALUES
('Abshir', 1, 'Jama', '$2y$10$Salt22charactersormorehQsd1pn43YIAd0jnqOJUQaRBwpy8Xrq', 'etawakalchi@gmail.com', 'aj');

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id_customer` int(100) NOT NULL,
  `navigation` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`id`, `name`, `message`, `time`) VALUES
(1, 'Directory', 'Hello world', '1516743926');

-- --------------------------------------------------------

--
-- Table structure for table `ready`
--

CREATE TABLE `ready` (
  `id` int(50) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `count` int(100) NOT NULL,
  `total` int(100) NOT NULL,
  `initials` varchar(100) NOT NULL,
  `uniq` int(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ready`
--

INSERT INTO `ready` (`id`, `date`, `type`, `count`, `total`, `initials`, `uniq`, `state`) VALUES
(10, '1533093106', 'Cash', 2, 165, 'MS', 167, 'confirmed'),
(11, '1533093119', 'Checks', 2, 165, 'MS', 167, 'confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(100) NOT NULL,
  `send` varchar(100) DEFAULT NULL,
  `passcode` int(100) DEFAULT NULL,
  `pin_one` int(100) DEFAULT NULL,
  `pin_two` int(100) NOT NULL,
  `sent_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `send`, `passcode`, `pin_one`, `pin_two`, `sent_email`) VALUES
(1, '', 4359, 773, 312, '07-31-2018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amano`
--
ALTER TABLE `amano`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash`
--
ALTER TABLE `cash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checks`
--
ALTER TABLE `checks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dayn`
--
ALTER TABLE `dayn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directory`
--
ALTER TABLE `directory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drope`
--
ALTER TABLE `drope`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_login`
--
ALTER TABLE `employee_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histor`
--
ALTER TABLE `histor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `initial`
--
ALTER TABLE `initial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ready`
--
ALTER TABLE `ready`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amano`
--
ALTER TABLE `amano`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=818;
--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cash`
--
ALTER TABLE `cash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `checks`
--
ALTER TABLE `checks`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dayn`
--
ALTER TABLE `dayn`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `directory`
--
ALTER TABLE `directory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `drope`
--
ALTER TABLE `drope`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employee_login`
--
ALTER TABLE `employee_login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;
--
-- AUTO_INCREMENT for table `histor`
--
ALTER TABLE `histor`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `initial`
--
ALTER TABLE `initial`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ready`
--
ALTER TABLE `ready`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
