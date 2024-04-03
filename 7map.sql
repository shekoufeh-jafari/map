-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2020 at 08:52 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `7map`
--

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(512) CHARACTER SET utf8 NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `user_id`, `title`, `lat`, `lng`, `type`, `verified`, `created_at`) VALUES
(3, 0, 'دانشگاه علمی کاربردی منطقه 2 تهران', 35.7219, 51.3291, 7, 1, '2020-04-25 05:44:11'),
(4, 0, 'دفتر مرکزی سون لرن', 35.7221, 51.3318, 1, 1, '2020-05-15 06:15:41'),
(5, 0, 'آتلیه نگاه فیلم', 35.7228, 51.3316, 4, 1, '2020-05-15 06:16:06'),
(7, 0, 'قنادی لونا', 35.7231, 51.3317, 0, 1, '2020-05-15 06:16:25'),
(8, 0, 'فست فود مت پیتزا', 35.7229, 51.3275, 2, 1, '2020-05-15 06:17:04'),
(9, 0, 'ورزشگاه آزادی', 35.7242, 51.2754, 0, 1, '2020-05-15 08:15:40'),
(10, 0, 'دانشگاه علامه طباطبایی دو', 35.7241, 51.257, 7, 1, '2020-05-15 08:16:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 NOT NULL,
  `email` varchar(256) NOT NULL,
  `is_verified` bit(1) NOT NULL DEFAULT b'0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
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
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
