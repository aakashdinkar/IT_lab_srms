-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 09:07 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-11-29 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'First', 1, 'C', '2020-11-29 16:52:33', '2020-11-29 16:53:47'),
(2, 'Second', 2, 'A', '2020-11-29 17:21:20', '2020-11-29 17:21:38'),
(4, 'Fourth', 4, 'C', '2020-11-29 17:24:23', '2020-11-29 17:26:29'),
(5, 'Sixth', 6, 'A', '2020-11-29 17:35:08', '2020-11-29 17:36:33'),
(6, 'Sixth', 6, 'B', '2020-11-29 18:42:41', '2020-11-29 18:43:02'),
(7, 'Seventh', 7, 'B', '2020-11-29 18:52:00', '2020-11-29 18:52:15'),
(8, 'Eight', 8, 'A', '2020-11-29 19:21:05', '2020-11-29 19:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 2, 100, '2020-11-29 17:54:09', '2020-11-29 18:34:32'),
(3, 1, 1, 1, 80, '2020-11-29 17:54:09', '2020-11-29 18:34:25'),
(4, 1, 1, 5, 78, '2020-11-29 17:54:09', '2020-11-29 18:34:26'),
(5, 1, 1, 4, 60, '2020-11-29 17:54:09', '2020-11-29 18:34:26'),
(6, 2, 4, 2, 90, '2020-11-29 18:38:18', NULL),
(7, 2, 4, 1, 75, '2020-11-29 18:38:18', NULL),
(8, 2, 4, 5, 56, '2020-11-29 18:38:18', '2020-11-29 19:26:42'),
(9, 2, 4, 4, 80, '2020-11-29 18:38:18', '2020-11-29 19:26:42'),
(10, 4, 7, 2, 54, '2020-11-29 18:56:21', '2020-11-29 19:03:10'),
(11, 4, 7, 1, 85, '2020-11-29 18:56:21', NULL),
(12, 4, 7, 5, 55, '2020-11-29 18:56:21', '2020-11-29 19:03:10'),
(13, 4, 7, 7, 65, '2020-11-29 18:56:21', '2020-11-29 19:03:10'),
(14, 5, 8, 2, 75, '2020-11-29 19:25:07', NULL),
(15, 5, 8, 1, 56, '2020-11-29 19:25:07', NULL),
(16, 5, 8, 5, 52, '2020-11-29 19:25:07', NULL),
(17, 5, 8, 4, 80, '2020-11-29 19:25:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Sarita', '46456', 'info@phpgurukul.com', 'Female', '1995-03-03', 1, '2020-11-29 10:30:57', '2020-11-29 04:36:37', 1),
(2, 'Anuj kumar', '10861', 'anuj@gmail.co', 'Male', '1995-02-02', 4, '2020-11-29 19:18:28', '2020-11-29 04:59:17', 0),
(3, 'amit kumar', '2626', 'amit@gmail.com', 'Male', '2014-08-06', 6, '2020-11-29 18:45:31', '2020-11-29 18:46:02', 1),
(4, 'rahul kumar', '990', 'rahul01@gmail.com', 'Male', '2001-02-03', 7, '2020-11-29 18:54:58', '2020-11-29 18:55:20', 1),
(5, 'sanjeev singh', '122', 'sanjeev01@gmail.com', 'Male', '2002-02-03', 8, '2020-11-29 19:23:53', '2020-11-29 19:24:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 2, 5, 1, '2020-11-29 11:16:56', '2020-11-29 11:16:56'),
(4, 1, 2, 1, '2020-11-29 06:46:32', '2020-11-29 06:46:32'),
(5, 1, 4, 1, '2020-11-29 06:46:35', '2020-11-29 06:46:35'),
(6, 1, 5, 1, '2020-11-29 06:46:40', '2020-11-29 06:46:40'),
(8, 4, 4, 1, '2020-11-29 03:21:27', '2020-11-29 03:21:27'),
(10, 4, 1, 1, '2020-11-29 03:22:05', '2020-11-29 03:22:05'),
(12, 4, 2, 1, '2020-11-29 03:22:15', '2020-11-29 03:22:15'),
(13, 4, 5, 1, '2020-11-29 03:22:20', '2020-11-29 03:22:20'),
(14, 6, 1, 1, '2020-11-29 18:44:06', '2020-11-29 18:44:06'),
(15, 6, 2, 1, '2020-11-29 18:44:12', '2020-11-29 18:44:12'),
(16, 6, 4, 1, '2020-11-29 18:44:18', '2020-11-29 18:44:18'),
(17, 6, 6, 1, '2020-11-29 18:44:23', '2020-11-29 18:44:23'),
(18, 7, 1, 1, '2020-11-29 18:53:12', '2020-11-29 18:53:12'),
(19, 7, 7, 1, '2020-11-29 18:53:19', '2020-11-29 18:53:19'),
(20, 7, 2, 1, '2020-11-29 18:53:38', '2020-11-29 18:53:38'),
(21, 7, 6, 1, '2020-11-29 18:53:44', '2020-11-29 18:53:44'),
(22, 7, 5, 0, '2020-11-29 18:53:50', '2020-11-29 18:53:50'),
(23, 8, 1, 1, '2020-11-29 19:22:25', '2020-11-29 19:22:25'),
(24, 8, 2, 1, '2020-11-29 19:22:31', '2020-11-29 19:22:31'),
(25, 8, 4, 1, '2020-11-29 19:22:36', '2020-11-29 19:22:36'),
(26, 8, 6, 1, '2020-11-29 19:22:42', '2020-11-29 19:22:42'),
(27, 8, 5, 0, '2020-11-29 19:22:47', '2020-11-29 19:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Maths', 'MTH01', '2020-11-29 09:23:57', '2020-11-29 09:46:54'),
(2, 'English', 'ENG11', '2020-11-29 09:24:25', '2020-11-29 09:27:24'),
(4, 'Science', 'SC1', '2020-11-29 09:36:15', '2020-11-29 09:46:50'),
(5, 'Music', 'MS', '2020-11-29 09:36:23', '2020-11-29 09:37:52'),
(6, 'Social Studies', 'SS08', '2020-11-29 18:43:29', '2020-11-29 18:43:45'),
(7, 'Physics', 'PH03', '2020-11-29 18:52:41', '2020-11-29 18:52:55'),
(8, 'Chemistry', 'CH65', '2020-11-29 19:21:46', '2020-11-29 19:22:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
