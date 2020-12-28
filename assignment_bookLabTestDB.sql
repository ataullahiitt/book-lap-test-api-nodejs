-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 28, 2020 at 12:44 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment_bookLabTestDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Carts`
--

CREATE TABLE `Carts` (
  `cartId` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `labTestId` int(11) NOT NULL,
  `quantity` int(5) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `LabTest`
--

CREATE TABLE `LabTest` (
  `id` int(10) UNSIGNED NOT NULL,
  `SN` int(11) NOT NULL,
  `itemId` varchar(100) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `bestSellers` varchar(255) NOT NULL,
  `testCount` int(11) NOT NULL,
  `includedTests` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `minPrice` decimal(10,2) NOT NULL,
  `labName` varchar(255) NOT NULL,
  `fasting` varchar(200) NOT NULL,
  `availableAt` int(11) NOT NULL,
  `popular` varchar(100) NOT NULL,
  `category` varchar(25) NOT NULL,
  `objectID` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `LabTest`
--

INSERT INTO `LabTest` (`id`, `SN`, `itemId`, `itemName`, `type`, `keyword`, `bestSellers`, `testCount`, `includedTests`, `url`, `minPrice`, `labName`, `fasting`, `availableAt`, `popular`, `category`, `objectID`, `createdAt`, `updatedAt`) VALUES
(2, 19956, 'DIANM11', 'COVID-19 Test', 'Test', 'covid-19-test', '', 1, '', 'covid-19-test', '4500.00', 'Metropolis', '0', 1, 'TRUE', 'path', '6045500', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(3, 1995, 'DIA2044', 'Eye Test- Vision Express', 'Test', 'eye,test', '', 1, '', 'eye_test', '49.00', 'Vision Express', '0', 1, 'TRUE', 'path', '4562', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(4, 1983, 'DIAR894', 'Yttrium Therapy', 'Test', 'Yttrium,Therapy', '', 1, '', 'Yttrium-Therapy-test-cost', '17500.00', '', '0', 2, 'false', 'radio', '4461302', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(5, 1982, 'DIAR893', 'X Ray Wrist Lateral View', 'Test', 'X,Ray,Wrist,Lateral,View', '', 1, '', 'X-Ray-Wrist-Lateral-View-test-cost', '120.00', '', '0', 2, 'false', 'radio', '4461292', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(6, 1981, 'DIAR892', 'X Ray Wrist AP View', 'Test', 'X,Ray,Wrist,AP,View', '', 1, '', 'X-Ray-Wrist-AP-View-test-cost', '120.00', '', '0', 2, 'false', 'radio', '4461282', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(7, 1980, 'DIAR891', 'X Ray Wrist AP and Lateral View', 'Test', 'X,Ray,Wrist,AP,and', '', 1, '', 'X-Ray-Wrist-AP-and-Lateral-View-test-cost', '240.00', '', '0', 2, 'false', 'radio', '4461272', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(8, 1979, 'DIAR890', 'X Ray Whole Spine Lateral View', 'Test', 'X,Ray,Whole,Spine,Lateral', '', 1, '', 'X-Ray-Whole-Spine-Lateral-View-test-cost', '320.00', '', '0', 2, 'false', 'radio', '4461262', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(9, 1978, 'DIAR889', 'X Ray Whole Spine Lateral and AP View', 'Test', 'X,Ray,Whole,Spine,Lateral', '', 1, '', 'X-Ray-Whole-Spine-Lateral-and-AP-View-test-cost', '560.00', '', '0', 2, 'false', 'radio', '4461252', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(10, 1977, 'DIAR888', 'X Ray Whole Spine AP View', 'Test', 'X,Ray,Whole,Spine,AP', '', 1, '', 'X-Ray-Whole-Spine-AP-View-test-cost', '320.00', '', '0', 2, 'false', 'radio', '4461242', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(11, 1976, 'DIAR887', 'X Ray Water View', 'Test', 'X,Ray,Water,View,', '', 1, '', 'X-Ray-Water-View-test-cost', '145.00', '', '0', 2, 'false', 'radio', '4461232', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(12, 1975, 'DIAR886', 'X Ray Tm Joint Lateral View', 'Test', 'X,Ray,Tm,Joint,Lateral', '', 1, '', 'X-Ray-Tm-Joint-Lateral-View-test-cost', '162.00', '', '0', 2, 'false', 'radio', '4461222', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(13, 1974, 'DIAR885', 'X Ray Tm Joint AP View', 'Test', 'X,Ray,Tm,Joint,AP', '', 1, '', 'X-Ray-Tm-Joint-AP-View-test-cost', '162.00', '', '0', 2, 'false', 'radio', '4461212', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(14, 1973, 'DIAR884', 'X Ray Tm Joint AP and Lateral View', 'Test', 'X,Ray,Tm,Joint,AP', '', 1, '', 'X-Ray-Tm-Joint-AP-and-Lateral-View-test-cost', '280.00', '', '0', 2, 'false', 'radio', '4461202', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(15, 1972, 'DIAR883', 'X Ray Thumb Lateral View', 'Test', 'X,Ray,Thumb,Lateral,View', '', 1, '', 'X-Ray-Thumb-Lateral-View-test-cost', '120.00', '', '0', 2, 'false', 'radio', '4461192', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(16, 1971, 'DIAR882', 'X Ray Thumb Lateral and AP View', 'Test', 'X,Ray,Thumb,Lateral,and', '', 1, '', 'X-Ray-Thumb-Lateral-and-AP-View-test-cost', '240.00', '', '0', 2, 'false', 'radio', '4461182', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(17, 1970, 'DIAR881', 'X Ray Thumb AP View', 'Test', 'X,Ray,Thumb,AP,View', '', 1, '', 'X-Ray-Thumb-AP-View-test-cost', '120.00', '', '0', 2, 'false', 'radio', '4461172', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(18, 1969, 'DIAR880', 'X Ray Thigh Lateral View', 'Test', 'X,Ray,Thigh,Lateral,View', '', 1, '', 'X-Ray-Thigh-Lateral-View-test-cost', '120.00', '', '0', 2, 'false', 'radio', '4461162', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(19, 1968, 'DIAR879', 'X Ray Thigh AP View', 'Test', 'X,Ray,Thigh,AP,View', '', 1, '', 'X-Ray-Thigh-AP-View-test-cost', '120.00', '', '0', 2, 'false', 'radio', '4461152', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(20, 1967, 'DIAR878', 'X Ray Thigh AP and Lateral View', 'Test', 'X,Ray,Thigh,AP,and', '', 1, '', 'X-Ray-Thigh-AP-and-Lateral-View-test-cost', '240.00', '', '0', 2, 'false', 'radio', '4461142', '2020-12-25 22:12:16', '2020-12-25 22:12:41'),
(21, 1966, 'DIAR877', 'X ray Temp', 'Test', 'X,ray,Temp', '', 1, '', 'X-ray-Temp-test-cost', '1330.00', '', '0', 2, 'false', 'radio', '4461132', '2020-12-25 22:12:16', '2020-12-26 23:07:18'),
(22, 1998, 'DIAR877', 'X ray Temp', 'Test', 'X,ray,Temp', '', 1, '', 'X-ray-Temp-test-cost', '1400.00', '', '0', 2, 'false', 'radio', '4461132', '2020-12-25 22:12:16', '2020-12-26 23:07:24'),
(23, 4455, 'DIAR877', 'X ray Temp', 'Test', 'X,ray,Temp', '', 1, '', 'X-ray-Temp-test-cost', '900.00', '', '0', 2, 'false', 'radio', '4461132', '2020-12-25 22:12:16', '2020-12-26 23:07:28'),
(24, 8787, 'DIAR877', 'X ray Temp', 'Test', 'X,ray,Temp', '', 1, '', 'X-ray-Temp-test-cost', '322.00', '', '0', 2, 'false', 'radio', '4461132', '2020-12-25 22:12:16', '2020-12-26 23:07:32'),
(25, 12349, 'DIAR877', 'X ray Temp', 'Test', 'X,ray,Temp', '', 1, '', 'X-ray-Temp-test-cost', '469.00', '', '0', 2, 'false', 'radio', '4461132', '2020-12-25 22:12:16', '2020-12-26 23:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `OrderItem`
--

CREATE TABLE `OrderItem` (
  `orderId` int(11) NOT NULL,
  `invoiceNo` int(11) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL DEFAULT 0,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `dateModified` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `OrderLabTest`
--

CREATE TABLE `OrderLabTest` (
  `orderProductId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `labTestId` int(11) NOT NULL,
  `labTestName` varchar(255) NOT NULL,
  `itemId` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `OrderLabTest`
--

INSERT INTO `OrderLabTest` (`orderProductId`, `orderId`, `labTestId`, `labTestName`, `itemId`, `quantity`, `price`, `total`) VALUES
(1, 1, 2, 'COVID-19 Test', 'DIANM11', 1, '4500.0000', '4500.0000'),
(2, 1, 4, 'Yttrium Therapy', 'DIAR894', 1, '17500.0000', '17500.0000'),
(3, 1, 9, 'X Ray Whole Spine Lateral and AP View', 'DIAR889', 1, '560.0000', '560.0000');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `firstName`, `lastName`, `username`, `email`, `hash`, `createdAt`, `updatedAt`) VALUES
(1, 'Ataullah', 'Khan', 'ataullah', 'ataullah@gmail.com', '$2a$10$ZFANj90Adf9F97IAY6mKp.yc82.a/98r5GCWVkBxMVPShH021h0zi', '2020-12-24 20:51:16', '2020-12-24 20:51:16'),
(2, 'Test', 'user', 'test', 'test@gmail.com', '$2a$10$JO0PPcQGWWBEu6zlPKPScO03qhZK1/EKwW3ytg7YX4NpBBNiCdqt2', '2020-12-24 20:55:17', '2020-12-24 20:55:17'),
(3, 'demo', 'user', 'demo', 'demo@gmail.com', '$2a$10$YrDBmNqhs2XUzRU4/HOWwenNZKfWWFZ5xj8xj9NiXtEPcifWsQ1k.', '2020-12-24 20:55:37', '2020-12-24 20:55:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Carts`
--
ALTER TABLE `Carts`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `LabTest`
--
ALTER TABLE `LabTest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `OrderItem`
--
ALTER TABLE `OrderItem`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `OrderLabTest`
--
ALTER TABLE `OrderLabTest`
  ADD PRIMARY KEY (`orderProductId`),
  ADD KEY `order_id` (`orderId`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Carts`
--
ALTER TABLE `Carts`
  MODIFY `cartId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `LabTest`
--
ALTER TABLE `LabTest`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `OrderItem`
--
ALTER TABLE `OrderItem`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `OrderLabTest`
--
ALTER TABLE `OrderLabTest`
  MODIFY `orderProductId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
