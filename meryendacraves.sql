-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 04:51 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meryendacraves`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(14, 'admin', 'admin1', 'f6fdffe48c908deb0f4c3bd36c032e72'),
(15, 'ADMIN2', 'ADMIN2', '94c4a26622fa0b7f1aafe9b2d4fe2c17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(2, 'Sweets', 'Food_Category_438.jpg', 'Yes', 'Yes'),
(3, 'Meryenda', 'Food_Category_578.jpg', 'Yes', 'Yes'),
(4, 'Viands', 'Food_Category_213.jpg', 'Yes', 'Yes'),
(5, 'Milktea', 'Food_Category_354.jpeg', 'Yes', 'Yes'),
(11, 'Sweets', 'Food_Category_659.jpeg', 'Yes', 'Yes'),
(12, 'Sweets', 'Food_Category_721.jpeg', 'Yes', 'Yes'),
(13, 'Sweets', 'Food_Category_314.jpeg', 'Yes', 'Yes'),
(15, 'Sweets', 'Food_Category_264.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `full_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_no` int(15) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `full_name`, `username`, `address`, `contact_no`, `password`) VALUES
(0, 'Casale', 'Angelique', 'putik', 2147483647, '6489cb781e01d57e2b45b1146831190f');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(65,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(3, 'Palitaw w/ Yema', 'Avail this for only  12 pesos each, palitaw with Yema.', '12.00', 'Food-Name-5266.jpg', 0, 'Yes', 'Yes'),
(4, 'Suman Kamanting with Bukayo', 'PHP 15.00 each Suman Kamanting Kamanting.', '15.00', 'Food-Name-4808.jpg', 3, 'Yes', 'Yes'),
(5, 'Puto Cheese', '12 PCS for PHP 60.00 Puto Cheese', '60.00', 'Food-Name-8596.jpg', 3, 'Yes', 'Yes'),
(6, 'Sweets', 'uiuyi', '200.00', 'Food-Name-861.jpg', 2, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(255) NOT NULL,
  `price` decimal(65,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(65,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_contact` varchar(100) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_payment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`, `customer_payment`) VALUES
(1, 'Palitaw w/ Yema', '12.00', 8, '96.00', '2021-06-03 02:55:05', 'On Delivery', 'Angelique Rose', '09056363152', 'casaleangeliquerose@gmail.com', 'Putik', '0'),
(2, 'Sweets', '200.00', 2, '400.00', '2021-06-04 01:03:45', 'Ordered', 'Angelique Rose', '09056363152', 'casaleangelique@yahoo.com', 'Putik', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
