-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2019 at 08:00 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `Name`, `Description`) VALUES
(9, 'Clothing,Shoes,Jewelry &Watchs', 'The finest watches and the finest clothing and the most beautiful jewelry'),
(10, 'Electronics, Computers &Office', 'Everything related to electronic things, desktops, mobile phones and video games'),
(19, 'Beauty & Health', 'All that concerns the care of skin, hair and children'),
(21, 'Motor cycles & Cars', 'All kinds of cars, motorcycles and spare parts'),
(22, 'sports & outdoors', 'Everything about sports and outdoors');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Item_ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Add_Date` date NOT NULL,
  `Country_Made` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Approve` tinyint(4) NOT NULL DEFAULT '0',
  `Cat_ID` int(11) NOT NULL,
  `Member_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Item_ID`, `Name`, `Description`, `Price`, `Add_Date`, `Country_Made`, `Status`, `Approve`, `Cat_ID`, `Member_ID`) VALUES
(37, 'iphone x 256GB', 'this iphone is unlock for all GSM Network', '700', '2019-02-05', 'USA', '2', 1, 10, 35),
(38, 'LG Gram and Light laptop', 'Arrives with the latest technology and pleasing design', '1200', '2019-02-05', 'USA', '1', 1, 10, 33),
(39, 'Canon Digital SLR Camera', '[EOS Rebel T6] with EF-S ', '450', '2019-02-05', 'USA', '1', 0, 10, 35),
(40, 'Speedo junior Recreation Mask', 'Polycarbonate lenses with anti-fog', '15', '2019-02-05', 'USA', '1', 1, 22, 35),
(41, 'NBa street Basketball', 'Wide Channel Design for Incredible Grip & Fee', '5', '2019-02-05', 'USA', '1', 1, 22, 35),
(42, 'BMW', 'BMW 325i model 2010', '5000', '2019-02-05', 'Germany', '3', 1, 21, 33),
(43, 'Timex Weekend watch', 'this watch for  men', '50', '2019-02-05', 'Switzerland', '1', 1, 9, 35);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL COMMENT 'To Identify User',
  `Username` varchar(255) NOT NULL COMMENT 'Username To Login',
  `Password` varchar(255) NOT NULL COMMENT 'Password To Login',
  `Email` varchar(255) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0' COMMENT 'Identify User Group',
  `RegStatus` int(11) NOT NULL DEFAULT '0' COMMENT 'User Approval',
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `Email`, `FullName`, `GroupID`, `RegStatus`, `Date`) VALUES
(1, 'Osama', 'a8bb4c0a594e6b7288a0d2d040831b27f5cedd0d', 'o@elzero.info', 'Osama Mohamed', 1, 1, '0000-00-00'),
(24, 'Ahmed', '123123', 'ahmed@ahmed.com', 'Ahmed Sameh', 1, 1, '2016-05-06'),
(32, 'alib', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'drtcdtctrtfr@xooo.com', 'ali ben musa', 1, 1, '2019-01-21'),
(33, 'omer', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ahd@gamail.com', '', 1, 1, '2019-01-26'),
(35, 'abdo', '601f1889667efaebb33b8c12572835da3f027f78', 'abdo@aaa.com', 'abdo ahmed', 1, 1, '2019-01-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Item_ID`),
  ADD KEY `member_1` (`Member_ID`),
  ADD KEY `cat_1` (`Cat_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `Item_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'To Identify User', AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `cat_1` FOREIGN KEY (`Cat_ID`) REFERENCES `categories` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `member_1` FOREIGN KEY (`Member_ID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
