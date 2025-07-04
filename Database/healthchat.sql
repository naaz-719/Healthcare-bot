-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 08:11 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `healthchat`
--

CREATE TABLE `healthchat` (
  `id` int(11) NOT NULL,
  `messages` mediumtext NOT NULL,
  `response` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `healthchat`
--

INSERT INTO `healthchat` (`id`, `messages`, `response`) VALUES
(1, 'hi|hey|hello', 'Hello !!! Welcome to Healthcare Chatbot!!'),
(3, 'what is your name?', 'I am Healthcare Chatbot!!'),
(4, 'Where do you live?', 'In a Computer!!!'),
(6, 'doctor|doc', 'General practitioner<br/>\r\nPediatrician<br/>\r\nPediatrics<br/>\r\nInternal medicine<br/>\r\nDermatologist<br/>\r\nNeurologist<br/>\r\nFamily medicine<br/>\r\nSurgeon<br/>\r\nOphthalmology<br/>\r\nRadiologist<br/>\r\nUrologist<br/>\r\nPsychiatrist<br/>\r\nGastroenterologist<br/>\r\nAnesthesiologist<br/>\r\nOncologist<br/>\r\nCardiologist<br/>\r\nUrology<br/>\r\nEndocrinologi<br/>'),
(7, 'Is there any cardiologists/ cardiology doctors?', 'Yes.. we have mr. Perera mr gayan mr damayantha and ms miinu as cardiologists'),
(8, 'How can i make a appointment for meet doctor', 'Very simple fill the document on the menu as accordingly and submit'),
(9, 'Can I cancel appointment|Can i cancel appointment|Can i cancel the appointment', 'You can cancel appointment only before 12 hours'),
(10, 'Is there any demonologist doctors', 'Yes we have mr samaraweera, ms ayesha, ms samanthi as demonologists'),
(11, 'Is there physicians available', 'Yes we have physicians as mr tharaka, ms harsha, mr bogalla, and ms prarthana');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `healthchat`
--
ALTER TABLE `healthchat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `healthchat`
--
ALTER TABLE `healthchat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
