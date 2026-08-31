-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2026 at 06:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `runtracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `race_goal`
--

CREATE TABLE `race_goal` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `target_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `race_goal`
--

INSERT INTO `race_goal` (`id`, `category`, `target_time`) VALUES
(1, '3km', '00:11:50'),
(2, '5km', '00:19:50'),
(3, '10km', '00:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `race_stats`
--

CREATE TABLE `race_stats` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `race_stats`
--

INSERT INTO `race_stats` (`id`, `category`, `time`) VALUES
(1, '1KM', '00:03:38'),
(2, '3KM', '00:12:26'),
(3, '5KM', '00:22:45'),
(4, '10KM', '00:47:46'),
(5, '15KM', '01:26:59'),
(6, '21KM', '02:02:34'),
(7, '42KM', '05:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_races`
--

CREATE TABLE `upcoming_races` (
  `id` int(11) NOT NULL,
  `race_name` varchar(50) NOT NULL,
  `race_date` date NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upcoming_races`
--

INSERT INTO `upcoming_races` (`id`, `race_name`, `race_date`, `category`) VALUES
(1, 'CCM', '2027-02-01', '21km');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `race_goal`
--
ALTER TABLE `race_goal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `race_stats`
--
ALTER TABLE `race_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_races`
--
ALTER TABLE `upcoming_races`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `race_goal`
--
ALTER TABLE `race_goal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `race_stats`
--
ALTER TABLE `race_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `upcoming_races`
--
ALTER TABLE `upcoming_races`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
