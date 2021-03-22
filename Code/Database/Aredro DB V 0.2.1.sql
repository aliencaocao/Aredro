-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2017 at 05:41 AM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id1713642_hcifoodordering`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--
-- Creation: Jul 16, 2017 at 05:39 AM
-- Last update: Jul 16, 2017 at 05:39 AM
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The name of the item for sale',
  `price` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The price of the item for sale in S$',
  `choices` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'None' COMMENT 'The choices provided for the item',
  `collectionvenue` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Where to collect this item after ordering',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The timestamp of adding the item UTC'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='The list of items available for ordering';

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--
-- Creation: Jul 11, 2017 at 12:58 PM
-- Last update: Jul 13, 2017 at 12:41 AM
-- Last check: Jul 16, 2017 at 01:50 AM
--

CREATE TABLE `managers` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The username of the manager',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The password of the manager'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='The list of manager accounts';

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--
-- Creation: Jul 12, 2017 at 03:32 PM
-- Last update: Jul 16, 2017 at 02:32 AM
-- Last check: Jul 16, 2017 at 01:51 AM
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL COMMENT 'id',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'name of the pupil',
  `class` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'class of the pupil',
  `indexnumber` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'index number of the pupil',
  `item` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'item wanted',
  `quatity` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'how many such item wanted',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp of placing the order UTC'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='The list of received orders';

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Jul 11, 2017 at 12:58 PM
-- Last update: Jul 13, 2017 at 08:24 AM
-- Last check: Jul 16, 2017 at 01:51 AM
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The username of the student',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The password of the student'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='The list of student accounts';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
