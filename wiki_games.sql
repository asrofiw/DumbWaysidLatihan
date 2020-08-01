-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2020 at 04:24 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wiki_games`
--

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

CREATE TABLE `heroes` (
  `id` int(10) NOT NULL,
  `heroes_name` varchar(50) DEFAULT NULL,
  `id_type` int(10) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`id`, `heroes_name`, `id_type`, `photo`) VALUES
(6, 'Nunchaku', 1, NULL),
(7, 'Holy Knight Escanor', 2, NULL),
(8, 'The Grizzly Sin Of Sloth', 3, NULL),
(9, 'Heart Of The Land', 1, NULL),
(10, 'A New Adventure', 3, NULL),
(11, 'Bringer Of Disaster', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id_type` int(10) NOT NULL,
  `types_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id_type`, `types_name`) VALUES
(1, 'Strength'),
(2, 'HP'),
(3, 'Agility');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `heroes`
--
ALTER TABLE `heroes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
