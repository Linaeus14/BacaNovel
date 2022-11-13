-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 03:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pa`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sta` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `username`, `pass`, `email`, `sta`) VALUES
(1, 'admin', '$2y$10$B51KOGL5ZHqDiFTnKDOjMOPNlAF1HeFw3o68aaxAMXct3RAMpsZd.', '-', 'admin'),
(2, 'user1', '$2y$10$gpKC3QLz/SbM55SCVAzIk.2z0EoqukEaNgyZnhhb9SrQcj1uYYRJ.', 'titoblack098@gmail.com', 'user'),
(4, 'ayu', '$2y$10$u5vYB4Q9TuUMqsghuFBYJe2Wb8Tsmm0a2GWFHZuXvo6T5d6UORpru', 'ayukd5@gmail.com', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(4) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `tanggal_up` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `filename`, `tanggal_up`) VALUES
(41, '4.png', '13/11/2022'),
(42, '3.png', '13/11/2022');

-- --------------------------------------------------------

--
-- Table structure for table `rekom`
--

CREATE TABLE `rekom` (
  `id` int(4) NOT NULL,
  `story_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekom`
--

INSERT INTO `rekom` (`id`, `story_id`) VALUES
(12, 54);

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE `story` (
  `id` int(4) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `penulis` varchar(30) NOT NULL,
  `sinopsis` text NOT NULL,
  `cerita` longtext NOT NULL,
  `file_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`id`, `judul`, `penulis`, `sinopsis`, `cerita`, `file_id`) VALUES
(53, 'test', 'lnn', 'test', 'test', 41),
(54, 'test2', 'lnn', 'test', 'test', 42);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekom`
--
ALTER TABLE `rekom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_story` (`story_id`);

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `rekom`
--
ALTER TABLE `rekom`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rekom`
--
ALTER TABLE `rekom`
  ADD CONSTRAINT `id_story` FOREIGN KEY (`story_id`) REFERENCES `story` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `story`
--
ALTER TABLE `story`
  ADD CONSTRAINT `id_file` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
