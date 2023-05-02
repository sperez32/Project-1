-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 12:54 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tapduc`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `firstName` varchar(150) NOT NULL,
  `lastName` varchar(150) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `phoneNum` bigint(10) NOT NULL,
  `Message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`firstName`, `lastName`, `Email`, `phoneNum`, `Message`) VALUES
('Laney', 'Morar', 'River81@gmail.com', 9307354390, 'Can\'t wait to try Tapduc'),
('Catherine', 'Cummerata', 'Luz55@gmail.com', 8434812726, 'Sounds Cool'),
('Astrid', 'Zulauf', 'Cordie.Bailey@hotmail.com', 9616454140, 'Looking forward to testing'),
('Ardith', 'Considine', 'Melyssa24@hotmail.com', 6234349391, 'Nice'),
('Jadon', 'Kuvalis', 'Quincy.Lubowitz@gmail.com', 4114893635, 'Hmmm interesting Tapduc');

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

CREATE TABLE `interest` (
  `firstName` varchar(150) NOT NULL,
  `lastName` varchar(150) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `phoneNum` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interest`
--

INSERT INTO `interest` (`firstName`, `lastName`, `Email`, `phoneNum`) VALUES
('Colby', 'Koepp', 'Koepp_colby@hotmail.com', 4364893215),
('Kelli', 'Goyette', 'k.goyette29@yahoo.com', 3187970367),
('Finn', 'Rau', 'Gaetano_Wunsch78@gmail.com', 5059037407),
('Morgan', 'Kozey', 'Richmond90@gmail.com', 3137311397),
('Clinton', 'Ruecker', 'Kaycee55@yahoo.com', 4135827645);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
