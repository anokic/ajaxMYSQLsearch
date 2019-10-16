-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 05:14 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `search`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(255) NOT NULL,
  `ime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prezime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uloga_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `ime`, `prezime`, `email`, `password`, `uloga_id`) VALUES
(2, 'Milena', 'Vesic', 'milena@gmail.com', '1b52a583020088fad8cc06fd0e67910e', 1),
(3, 'Danijela', 'Nikitin', 'danijela@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(4, 'Milica', 'Vesic', 'milica@gmail.com', '1b52a583020088fad8cc06fd0e67910e', 2),
(5, 'Dusan', 'Nikitin', 'dusan@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(6, 'John', 'Conor', 'john@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(7, 'Stacey', 'Neithen', 'stacey@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(8, 'Nevena', 'Alavanje', 'nevena@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(9, 'Tristan', 'Reid', 'tristran@gmail.com', '1b52a583020088fad8cc06fd0e67910e', 2),
(10, 'Jimmy', 'Brooks', 'jimmy@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(11, 'Marco', 'Polo', 'marco@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(12, 'Harry', 'Roberston', 'harry@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(13, 'Barney', 'Gray', 'barney@gmail.com', '1b52a583020088fad8cc06fd0e67910e', 2),
(14, 'Lucian', 'Carter', 'lucian@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(16, 'Charlie', 'Holland', 'charlie@gmail.com', 'diablo2lod', 2),
(59, 'Kerry', 'Khan', 'kerry@gmail.com', '1b52a583020088fad8cc06fd0e67910e', 1),
(60, 'Eli', 'Watts', 'eli@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(61, 'Ray', 'Campbell', 'ray@gmail.com', '1b52a583020088fad8cc06fd0e67910e', 2),
(62, 'Vic', 'Elliott', 'vic@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(63, 'Lane', 'Riley', 'lane@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(64, 'Jody', 'Williams', 'jody@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(65, 'Lesley', 'Day', 'lesley@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(66, 'Jess', 'White', 'jess@gmail.com', '1b52a583020088fad8cc06fd0e67910e', 2),
(67, 'Jaden', 'Young', 'jaden@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(68, 'Riley', 'Sharp', 'riley@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(69, 'Raylee', 'Allen', 'raylee@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(70, 'Bret', 'Butler', 'bret@gmail.com', '1b52a583020088fad8cc06fd0e67910e', 2),
(71, 'Drew', 'Williams', 'drew@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(72, 'Jamie', 'Mcdonald', 'jamie@gmail.com', 'diablo2lod', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `uloga_id` (`uloga_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`uloga_id`) REFERENCES `php1termin7`.`uloge` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
