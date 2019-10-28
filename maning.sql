-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2019 at 01:44 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `hot_name` varchar(45) NOT NULL,
  `cus_fullname` varchar(45) NOT NULL,
  `bill_dmg` int(11) DEFAULT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `check-in slip`
--

CREATE TABLE `check-in slip` (
  `id` int(11) NOT NULL,
  `slip_cin` datetime NOT NULL,
  `slip_cout` datetime NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `check-in slip`
--

INSERT INTO `check-in slip` (`id`, `slip_cin`, `slip_cout`, `employee_id`) VALUES
(4556565, '2019-10-01 00:00:00', '2019-10-02 00:00:00', 123452345),
(12324155, '2019-10-03 00:00:00', '2019-10-04 00:00:00', 123452345);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `cus_fname` varchar(45) DEFAULT NULL,
  `cus_lname` varchar(45) DEFAULT NULL,
  `cus_initial` varchar(45) DEFAULT NULL,
  `cus_fullname` varchar(45) NOT NULL,
  `cus_add` varchar(45) NOT NULL,
  `cus_cont` int(11) NOT NULL,
  `cus_email` varchar(45) DEFAULT NULL,
  `cus_crdt` int(11) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `check-in slip_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cus_fname`, `cus_lname`, `cus_initial`, `cus_fullname`, `cus_add`, `cus_cont`, `cus_email`, `cus_crdt`, `employee_id`, `check-in slip_id`) VALUES
(12324154, 'Ralph', 'Dedumo', 'A', 'Ralph A Dedumo', 'Calamba, Laguna', 818545454, 'radedumo@gmail.com', 180000356, 123452345, 4556565),
(12324156, 'Julian', 'Bass', 'M', 'Julian M Bass', 'Iloilo City', 87126582, 'julian@yahoo.com', 1800021326, 123452345, 12324155);

-- --------------------------------------------------------

--
-- Table structure for table `customer_has_room`
--

CREATE TABLE `customer_has_room` (
  `customer_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_hotel_id` int(11) NOT NULL,
  `room_key_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `emp_fname` varchar(45) DEFAULT NULL,
  `emp_lname` varchar(45) DEFAULT NULL,
  `emp_initial` varchar(45) DEFAULT NULL,
  `emp_fullname` varchar(45) NOT NULL,
  `emp_add` varchar(45) NOT NULL,
  `emp_cont` int(11) NOT NULL,
  `emp_email` varchar(45) NOT NULL,
  `emp_type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `emp_fname`, `emp_lname`, `emp_initial`, `emp_fullname`, `emp_add`, `emp_cont`, `emp_email`, `emp_type`) VALUES
(12324154, 'Andre ', 'Lagsac', 'M', 'Andre M Lagsac', 'Makati City', 524354542, 'lagsac@gmail.com', 'CEO'),
(123452345, 'Kyla', 'Lapid', 'A', 'Kyla A Lapid', 'Taguig City', 4545454, 'kylie@yahoo.com', 'receptionist');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `hot_name` varchar(45) DEFAULT NULL,
  `hot_type` varchar(45) DEFAULT NULL,
  `hot_add` varchar(255) DEFAULT NULL,
  `hot_cont` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `hot_name`, `hot_type`, `hot_add`, `hot_cont`) VALUES
(1, 'Shanri La Makati', 'Luxury and Luxury-End', 'Makati City', 87000),
(2, 'Shangri La Pasay', 'Budget and Value', 'Pasay City', 87001);

-- --------------------------------------------------------

--
-- Table structure for table `key`
--

CREATE TABLE `key` (
  `id` int(11) NOT NULL,
  `key_holder` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `key`
--

INSERT INTO `key` (`id`, `key_holder`) VALUES
(1, 'Key_holder 1'),
(2, 'Key_holder 2');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `room_type` varchar(45) NOT NULL,
  `room_cpcty` int(11) DEFAULT NULL,
  `room_cont` int(11) NOT NULL,
  `room_price` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `key_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `room_type`, `room_cpcty`, `room_cont`, `room_price`, `hotel_id`, `key_id`) VALUES
(1, 'Double', 2, 870003, 10, 2, 1),
(2, 'King', 4, 8565614, 8000, 1, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sample`
-- (See below for the actual view)
--
CREATE TABLE `sample` (
`cus_fname` varchar(45)
,`cus_lname` varchar(45)
,`id` int(11)
,`room_type` varchar(45)
);

-- --------------------------------------------------------

--
-- Structure for view `sample`
--
DROP TABLE IF EXISTS `sample`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sample`  AS  select `customer`.`cus_fname` AS `cus_fname`,`customer`.`cus_lname` AS `cus_lname`,`room`.`id` AS `id`,`room`.`room_type` AS `room_type` from (`customer` join `room`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`,`hotel_id`),
  ADD KEY `fk_bill_hotel1_idx` (`hotel_id`);

--
-- Indexes for table `check-in slip`
--
ALTER TABLE `check-in slip`
  ADD PRIMARY KEY (`id`,`employee_id`),
  ADD KEY `fk_check-in slip_employee1_idx` (`employee_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`,`employee_id`,`check-in slip_id`),
  ADD KEY `fk_customer_employee1_idx` (`employee_id`),
  ADD KEY `fk_customer_check-in slip1_idx` (`check-in slip_id`);

--
-- Indexes for table `customer_has_room`
--
ALTER TABLE `customer_has_room`
  ADD PRIMARY KEY (`customer_id`,`room_id`,`room_hotel_id`,`room_key_id`),
  ADD KEY `fk_customer_has_room_room1_idx` (`room_id`,`room_hotel_id`,`room_key_id`),
  ADD KEY `fk_customer_has_room_customer1_idx` (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `key`
--
ALTER TABLE `key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`,`hotel_id`,`key_id`),
  ADD KEY `fk_room_hotel_idx` (`hotel_id`),
  ADD KEY `fk_room_key1_idx` (`key_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_bill_hotel1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `check-in slip`
--
ALTER TABLE `check-in slip`
  ADD CONSTRAINT `fk_check-in slip_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `fk_customer_check-in slip1` FOREIGN KEY (`check-in slip_id`) REFERENCES `check-in slip` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_customer_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customer_has_room`
--
ALTER TABLE `customer_has_room`
  ADD CONSTRAINT `fk_customer_has_room_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_customer_has_room_room1` FOREIGN KEY (`room_id`,`room_hotel_id`,`room_key_id`) REFERENCES `room` (`id`, `hotel_id`, `key_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `fk_room_hotel` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_room_key1` FOREIGN KEY (`key_id`) REFERENCES `key` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
