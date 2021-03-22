-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2017 at 11:47 AM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id1813186_aredro`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--
-- Creation: Jul 10, 2017 at 06:12 AM
-- Last update: Jul 10, 2017 at 06:12 AM
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `choices` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'None',
  `collectionvenue` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='The list of items provided to order';

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--
-- Creation: Jun 16, 2017 at 04:23 AM
-- Last update: Jul 10, 2017 at 06:17 AM
-- Last check: Jul 01, 2017 at 09:39 PM
--

CREATE TABLE `managers` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--
-- Creation: Jul 07, 2017 at 01:33 PM
-- Last update: Jul 10, 2017 at 05:55 AM
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL COMMENT 'id',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'name of the pupil',
  `class` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'class of the pupil',
  `indexnumber` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'index number of the pupil',
  `item` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'item wanted',
  `quatity` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'how many such item wanted',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'current date and time'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='orders';

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: May 30, 2017 at 03:50 AM
-- Last update: Jul 05, 2017 at 09:10 AM
-- Last check: Jul 01, 2017 at 09:39 PM
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
