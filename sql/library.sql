-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2017 at 01:45 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `ashwin`
--

CREATE TABLE `ashwin` (
  `name` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `mobile` bigint(10) DEFAULT NULL,
  `landline` bigint(10) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `public` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `authid` int(5) NOT NULL,
  `authname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`authid`, `authname`) VALUES
(1, 'michiel smid');

-- --------------------------------------------------------

--
-- Table structure for table `bharath`
--

CREATE TABLE `bharath` (
  `name` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `mobile` bigint(10) DEFAULT NULL,
  `landline` bigint(10) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `public` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookid` int(5) NOT NULL,
  `title` varchar(50) NOT NULL,
  `authid` int(5) NOT NULL,
  `libid` int(5) NOT NULL,
  `isbn` int(20) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `pubdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookid`, `title`, `authid`, `libid`, `isbn`, `publisher`, `pubdate`) VALUES
(5, 'applied combinatorics', 1, 1, 5689, 'creative publisher', '2017-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `borrowid` int(5) NOT NULL,
  `bookid` int(5) NOT NULL,
  `id` int(5) NOT NULL,
  `libid` int(5) NOT NULL,
  `reserveid` int(5) NOT NULL,
  `borrowdate` date NOT NULL,
  `returndate` datetime NOT NULL,
  `fine` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `harish`
--

CREATE TABLE `harish` (
  `name` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `mobile` bigint(10) DEFAULT NULL,
  `landline` bigint(10) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `public` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kiran`
--

CREATE TABLE `kiran` (
  `name` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `mobile` bigint(10) DEFAULT NULL,
  `landline` bigint(10) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `public` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lib`
--

CREATE TABLE `lib` (
  `libid` int(5) NOT NULL,
  `libname` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib`
--

INSERT INTO `lib` (`libid`, `libname`, `location`) VALUES
(1, 'ABS', 'newyork'),
(5, 'ABS', 'newjersey'),
(6, 'ABS', 'brooklyn'),
(8, 'ABS', 'harrison');

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `reserveid` int(5) NOT NULL,
  `id` int(5) NOT NULL,
  `bookid` int(5) NOT NULL,
  `libid` int(5) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `s@gmail.com`
--

CREATE TABLE `s@gmail.com` (
  `name` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `mobile` bigint(10) DEFAULT NULL,
  `landline` bigint(10) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `public` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `santosh`
--

CREATE TABLE `santosh` (
  `name` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `mobile` bigint(10) DEFAULT NULL,
  `landline` bigint(10) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `public` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `address`, `phone`, `password`) VALUES
(1, 'santosh', 'new', 2147483647, '6cb5d03d0c9a775bdce197a95c720e6b'),
(4, 'kiran', 'nj', 1234567890, '5d41402abc4b2a76b9719d911017c592'),
(6, 'bharath', 'harrison', 2147483647, '7616b81196ee6fe328497da3f1d9912d'),
(7, 'ashwin', 'jsq', 2147483647, '7cb6fa91c124913f7a75e3153339234f'),
(8, 'harish', 'india', 2147483647, '698c9634246010398e8c427bdd12d374');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`name`) VALUES
('santosh'),
('santosh'),
('kiran'),
('s@gmail.com'),
('bharath'),
('ashwin'),
('harish');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ashwin`
--
ALTER TABLE `ashwin`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`authid`);

--
-- Indexes for table `bharath`
--
ALTER TABLE `bharath`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookid`),
  ADD KEY `authid` (`authid`),
  ADD KEY `libid` (`libid`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrowid`),
  ADD KEY `bookid` (`bookid`),
  ADD KEY `id` (`id`),
  ADD KEY `libid` (`libid`),
  ADD KEY `reserveid` (`reserveid`);

--
-- Indexes for table `harish`
--
ALTER TABLE `harish`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `kiran`
--
ALTER TABLE `kiran`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `lib`
--
ALTER TABLE `lib`
  ADD PRIMARY KEY (`libid`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`reserveid`),
  ADD KEY `id` (`id`),
  ADD KEY `bookid` (`bookid`),
  ADD KEY `libid` (`libid`);

--
-- Indexes for table `s@gmail.com`
--
ALTER TABLE `s@gmail.com`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `santosh`
--
ALTER TABLE `santosh`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `authid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrowid` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lib`
--
ALTER TABLE `lib`
  MODIFY `libid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `reserveid` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`authid`) REFERENCES `author` (`authid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`libid`) REFERENCES `lib` (`libid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `borrow`
--
ALTER TABLE `borrow`
  ADD CONSTRAINT `borrow_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `book` (`bookid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_ibfk_2` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_ibfk_3` FOREIGN KEY (`libid`) REFERENCES `lib` (`libid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_ibfk_4` FOREIGN KEY (`reserveid`) REFERENCES `reserve` (`reserveid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reserve`
--
ALTER TABLE `reserve`
  ADD CONSTRAINT `reserve_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reserve_ibfk_2` FOREIGN KEY (`bookid`) REFERENCES `book` (`bookid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reserve_ibfk_3` FOREIGN KEY (`libid`) REFERENCES `lib` (`libid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
