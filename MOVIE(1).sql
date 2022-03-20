-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 20, 2022 at 03:04 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `MOVIE`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE IF NOT EXISTS `actor` (
  `actor` varchar(30) NOT NULL,
  `ayear` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`actor`, `ayear`) VALUES
('Cage', 1964),
('Hanks', 1956),
('Maguire', 1957),
('McDormand', 1957);

-- --------------------------------------------------------

--
-- Table structure for table `acts`
--

CREATE TABLE IF NOT EXISTS `acts` (
  `actor` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acts`
--

INSERT INTO `acts` (`actor`, `title`) VALUES
('Cage', 'Raising Arizon'),
('Maguire', 'Spiderman'),
('Maguire', 'Wonder boys'),
('McDormand', 'Fargo'),
('McDormand', 'Raising Arizon'),
('McDormand', 'Wonder boys');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE IF NOT EXISTS `directors` (
  `director` varchar(30) NOT NULL,
  `dyear` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`director`, `dyear`) VALUES
('Coen', 1954),
('Hanson', 1945),
('Raimi', 1959);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `title` varchar(30) NOT NULL,
  `director` varchar(30) NOT NULL,
  `myear` year(4) NOT NULL,
  `rating` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`title`, `director`, `myear`, `rating`) VALUES
('spiderman', 'Raimi', 2002, 7.4),
('Raising Arizona', 'Coen', 1987, 7.6),
('Fargo', 'Coen', 1996, 8.2),
('Wonder Boys', 'Hanson', 2002, 7.6);
