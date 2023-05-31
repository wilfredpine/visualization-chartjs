-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 31, 2023 at 02:28 PM
-- Server version: 8.0.31
-- PHP Version: 8.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `stud_info`
--

DROP TABLE IF EXISTS `stud_info`;
CREATE TABLE IF NOT EXISTS `stud_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ID_Number` varchar(25) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Program` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stud_info`
--

INSERT INTO `stud_info` (`id`, `ID_Number`, `Full_Name`, `Address`, `Program`) VALUES
(1, 'MCC2020-1932', 'Juan dela Cruz', 'Naujan', 'BSIT'),
(2, 'MCC2020-2313', 'Cora Zon', 'Calapan', 'BSED'),
(3, 'MCC2020-1264', 'Nice Wan', 'Calapan', 'BSIT'),
(4, 'MCC2020-1234', 'Noa Honor', 'Calapan', 'AB-English'),
(5, 'MCC2020-1235', 'Went Wong', 'Baco', 'BSED'),
(6, 'MCC2020-1111', 'Aba Ayos', 'Naujan', 'BSIT'),
(7, 'MCC2020-1933', 'Nene Benene', 'Naujan', 'BSED'),
(8, 'MCC2020-1932', 'Hey You', 'Calapan', 'BSCrim');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
