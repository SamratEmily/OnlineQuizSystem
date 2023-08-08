-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2022 at 07:49 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(2, 'nayakemily50@gmail.com', 'emily123'),
(3, 'jrimi297@gmail.com', 'rimi123');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('6238c98f8ddeb', '6238c98f8e273'),
('6238c98f8f6d7', '6238c98f8f90a'),
('623957f0a5359', '623957f0a5b96'),
('623957f0a864d', '623957f0a8dd2'),
('623f570e6a9e8', '623f570e6b739'),
('623f570e6ddfe', '623f570e6e3d9'),
('623f570e70ae0', '623f570e71732');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('rimi123', '6239571d1bd77', 10, 2, 2, 0, '2022-03-22 05:28:00'),
('rimi123', '6238c8ca7745a', 5, 2, 1, 1, '2022-03-22 05:31:13'),
('emily123', '6239571d1bd77', 10, 2, 2, 0, '2022-03-22 05:38:06'),
('jrimi297@gmail.com', '6239571d1bd77', 10, 2, 2, 0, '2022-03-22 16:43:19'),
('saiful@gmail.com', '6239571d1bd77', 10, 2, 2, 0, '2022-03-22 17:09:28'),
('saiful@gmail.com', '6238c8ca7745a', 5, 2, 1, 1, '2022-03-22 17:13:43'),
('nayakemily50@gmail.com', '6238c8ca7745a', 10, 2, 2, 0, '2022-03-23 19:12:56'),
('eva2@gmail.com', '6238c8ca7745a', 10, 2, 2, 0, '2022-03-24 06:34:17'),
('eva2@gmail.com', '6239571d1bd77', 10, 2, 2, 0, '2022-03-24 06:34:46'),
('nayakemily50@gmail.com', '6239571d1bd77', 10, 2, 2, 0, '2022-03-24 06:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('6238c98f8ddeb', 'Database', '6238c98f8e273'),
('6238c98f8ddeb', 'Spreadsheet', '6238c98f8e27a'),
('6238c98f8ddeb', 'Management information system', '6238c98f8e27d'),
('6238c98f8ddeb', 'Text file', '6238c98f8e27e'),
('6238c98f8f6d7', 'Database created using DBMS package', '6238c98f8f90a'),
('6238c98f8f6d7', ' Database created in MS-Word', '6238c98f8f90c'),
('6238c98f8f6d7', 'Database created in EXCEL', '6238c98f8f90d'),
('6238c98f8f6d7', 'All of the above', '6238c98f8f90e'),
('623957f0a5359', 'TCL ', '623957f0a5b96'),
('623957f0a5359', 'DML', '623957f0a5ba5'),
('623957f0a5359', 'DCL', '623957f0a5ba7'),
('623957f0a5359', 'DDL', '623957f0a5ba8'),
('623957f0a864d', 'permits many-to-many relationships', '623957f0a8dd2'),
('623957f0a864d', ' stores data in tables', '623957f0a8dd8'),
('623957f0a864d', ' restricts the structure to a one-to-many relationship', '623957f0a8dd9'),
('623957f0a864d', 'None of these', '623957f0a8dda'),
('623f570e6a9e8', 'Database Management System', '623f570e6b739'),
('623f570e6a9e8', 'Data of Binary Management System', '623f570e6b741'),
('623f570e6a9e8', ' Database Management Service', '623f570e6b742'),
('623f570e6a9e8', 'Data Backup Management System', '623f570e6b743'),
('623f570e6ddfe', ' Charles Bachman', '623f570e6e3d9'),
('623f570e6ddfe', 'Edgar Frank Codd', '623f570e6e3dd'),
('623f570e6ddfe', ' Charles Babbage', '623f570e6e3de'),
('623f570e6ddfe', 'Sharon B. Codd', '623f570e6e3df'),
('623f570e70ae0', 'DBMS stores, modifies and retrieves data', '623f570e71732'),
('623f570e70ae0', 'DBMS is a collection of queries', '623f570e71734'),
('623f570e70ae0', ' DBMS is a high-level language', '623f570e71735'),
('623f570e70ae0', ' DBMS is a programming language', '623f570e71736');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', 4, 1),
('6238c8ca7745a', '6238c98f8ddeb', 'A collection of interrelated records is called a\r\n\r\n', 4, 1),
('6238c8ca7745a', '6238c98f8f6d7', 'External database is\r\n\r\n', 4, 2),
('6239571d1bd77', '623957f0a5359', 'ROLLBACK in a database is ____ statement.TC', 4, 1),
('6239571d1bd77', '623957f0a864d', 'A network schema\r\n\r\n', 4, 2),
('623f56125a14e', '623f570e6a9e8', 'What is the full form of DBMS?', 4, 1),
('623f56125a14e', '623f570e6ddfe', 'Who created the first DBMS?', 4, 2),
('623f56125a14e', '623f570e70ae0', ' What is DBMS?', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('6238c8ca7745a', 'Dbms-01', 5, 0, 2, '2022-03-21 18:49:46'),
('6239571d1bd77', 'Dbms-02', 5, 1, 2, '2022-03-22 04:57:01'),
('623f56125a14e', 'Dbms-03', 5, 2, 3, '2022-03-26 18:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('jrimi297@gmail.com', 10, '2022-03-22 16:43:19'),
('saiful@gmail.com', 15, '2022-03-22 17:13:43'),
('nayakemily50@gmail.com', 16, '2022-03-24 06:57:00'),
('eva2@gmail.com', 20, '2022-03-24 06:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('Eva', 'CoU', 'eva2@gmail.com', 'eva123'),
('Rimi', 'CoU', 'jrimi297@gmail.com', 'rimi123'),
('Mehedi', 'DU', 'mehedi@gmail.com', 'mehedi123'),
('Emily', 'CoU', 'nayakemily50@gmail.com', 'emily123'),
('SaifulIslam', 'JU', 'saiful@gmail.com', 'saiful123'),
('Tuhin Mia', 'CoU', 'tuhin@gmail.com', 'tuhin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
