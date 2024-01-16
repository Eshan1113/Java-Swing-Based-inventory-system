-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 07:00 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java`
--

-- --------------------------------------------------------

--
-- Table structure for table `jd`
--

CREATE TABLE `jd` (
  `id` int(11) NOT NULL,
  `iduser` varchar(11) NOT NULL,
  `usename` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jd`
--

INSERT INTO `jd` (`id`, `iduser`, `usename`, `password`, `role`, `name`) VALUES
(45, '1234', 'eshan', '123456', 'admin', 'eshan'),
(49, '1231', 'eshan123', '1234', 'user', 'Eshan'),
(50, '35', 'gg123', '1234', 'admin', 'eshan');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `OrderID` int(255) NOT NULL,
  `ProductID` int(255) NOT NULL,
  `Quntity` int(255) NOT NULL,
  `OrderDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`OrderID`, `ProductID`, `Quntity`, `OrderDate`) VALUES
(2, 12, 2, '2023-11-22'),
(13, 1, 2, '2023-11-26'),
(14, 1, 2, '2023-11-26'),
(15, 1, 2, '2023-11-26'),
(16, 3, 2, '2023-11-07'),
(17, 3, 2, '2023-11-07'),
(18, 3, 2, '2023-11-07'),
(19, 1, 4, '2023-11-28'),
(20, 1, 2, '2023-11-17'),
(21, 1, 2, '2023-11-17'),
(22, 1, 4, '2023-11-25'),
(23, 1, 4, '2023-11-25'),
(24, 1, 4, '2023-11-07'),
(25, 1, 4, '2023-11-03'),
(26, 1, 4, '2023-11-03'),
(27, 1, 4, '2023-11-03'),
(28, 3, 4, '2023-12-02'),
(29, 1, 2, '2023-11-25'),
(31, 13, 2, '2023-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `ProductID` int(234) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `Quntity` int(255) NOT NULL,
  `ProductCatgory` varchar(244) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `suppliername` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `ProductID`, `ProductName`, `Quntity`, `ProductCatgory`, `Price`, `suppliername`) VALUES
(2, 1, 'tv', 500, 'Electronic', '24000.00', 'Eshan'),
(4, 13, 'Laptop', 43, 'Electronic', '50000.00', 'Eshan'),
(5, 3, 'cake', 40, 'Food', '975.00', 'Eshan'),
(6, 12, 'Troser', 70, 'Clothing', '1250.00', 'Eshan');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(255) NOT NULL,
  `supplierid` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `supplierid`, `name`, `contact`, `phone`, `email`) VALUES
(4, '1234', 'Eshan', 'A Store', '0778519383', 'eshan@gmail.com'),
(7, '1234', 'Eshan', 'A Store', '0778519383', 'eshan@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jd`
--
ALTER TABLE `jd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jd`
--
ALTER TABLE `jd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `OrderID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
