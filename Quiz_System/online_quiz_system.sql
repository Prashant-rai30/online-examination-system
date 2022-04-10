-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2020 at 01:22 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_quiz_system`
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
(1, 'smg10@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin');

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
('5e22ad5e24f83', '5e22ad5e39356'),
('5f1e940adaeab', '5f1e940b013bc'),
('5f1e940b572a6', '5f1e940b5ffef'),
('5f1e940b9b034', '5f1e940ba3d6f'),
('5f1e940be6f66', '5f1e940c040df'),
('5f1e940c6f3f2', '5f1e940c92dbd'),
('5f1e940cc1b3b', '5f1e940ccbd22'),
('5f1e940d09326', '5f1e940d13564'),
('5f1e940d4f090', '5f1e940d5854b'),
('5f1e940d92d8e', '5f1e940d9bb81'),
('5f1e940dd22ef', '5f1e940dd96d2'),
('5f1e940e14449', '5f1e940e1b7d2'),
('5f1e9cbb25358', '5f1e9cbb45ac5'),
('5f1e9cbb98f43', '5f1e9cbba1a64');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
('admin@admin.com', '5f1e913faf039', 19, 11, 10, 1, '2020-07-27 08:47:09'),
('admin@admin.com', '5f1e9ca61b06e', 2, 2, 2, 0, '2020-07-27 09:22:14'),
('test@test.com', '5f1e913faf039', 4, 5, 3, 2, '2020-07-27 10:35:08');

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
('5e22ad5e24f83', '1', '5e22ad5e39356'),
('5e22ad5e24f83', '2', '5e22ad5e3935c'),
('5e22ad5e24f83', '3', '5e22ad5e3935d'),
('5e22ad5e24f83', '4', '5e22ad5e3935e'),
('5f1e940adaeab', '15', '5f1e940b013b2'),
('5f1e940adaeab', '20', '5f1e940b013b9'),
('5f1e940adaeab', '10', '5f1e940b013bb'),
('5f1e940adaeab', '30', '5f1e940b013bc'),
('5f1e940b572a6', '35', '5f1e940b5ffef'),
('5f1e940b572a6', '20', '5f1e940b5fff8'),
('5f1e940b572a6', '10', '5f1e940b5fff9'),
('5f1e940b572a6', '15', '5f1e940b5fffb'),
('5f1e940b9b034', '-24', '5f1e940ba3d62'),
('5f1e940b9b034', '24', '5f1e940ba3d6f'),
('5f1e940b9b034', '20', '5f1e940ba3d72'),
('5f1e940b9b034', '10', '5f1e940ba3d74'),
('5f1e940be6f66', '16', '5f1e940c040df'),
('5f1e940be6f66', '20', '5f1e940c040e6'),
('5f1e940be6f66', '10', '5f1e940c040e8'),
('5f1e940be6f66', '11', '5f1e940c040e9'),
('5f1e940c6f3f2', '200', '5f1e940c92db4'),
('5f1e940c6f3f2', '300', '5f1e940c92dbb'),
('5f1e940c6f3f2', '400', '5f1e940c92dbc'),
('5f1e940c6f3f2', '-200', '5f1e940c92dbd'),
('5f1e940cc1b3b', '4', '5f1e940ccbd22'),
('5f1e940cc1b3b', '3', '5f1e940ccbd2b'),
('5f1e940cc1b3b', '5', '5f1e940ccbd2c'),
('5f1e940cc1b3b', '1', '5f1e940ccbd2d'),
('5f1e940d09326', '100', '5f1e940d1355a'),
('5f1e940d09326', '20', '5f1e940d13561'),
('5f1e940d09326', '30', '5f1e940d13563'),
('5f1e940d09326', '50', '5f1e940d13564'),
('5f1e940d4f090', '1', '5f1e940d58539'),
('5f1e940d4f090', '23', '5f1e940d58546'),
('5f1e940d4f090', '26', '5f1e940d58549'),
('5f1e940d4f090', '28', '5f1e940d5854b'),
('5f1e940d92d8e', '42', '5f1e940d9bb81'),
('5f1e940d92d8e', '14', '5f1e940d9bb89'),
('5f1e940d92d8e', '43', '5f1e940d9bb8a'),
('5f1e940d92d8e', '52', '5f1e940d9bb8b'),
('5f1e940dd22ef', '6', '5f1e940dd96c5'),
('5f1e940dd22ef', '8', '5f1e940dd96d2'),
('5f1e940dd22ef', '10', '5f1e940dd96d4'),
('5f1e940dd22ef', '12', '5f1e940dd96d7'),
('5f1e940e14449', '17', '5f1e940e1b7c7'),
('5f1e940e14449', '30', '5f1e940e1b7d1'),
('5f1e940e14449', '32', '5f1e940e1b7d2'),
('5f1e940e14449', '0', '5f1e940e1b7d3'),
('5f1e9cbb25358', 'dfd', '5f1e9cbb45ac5'),
('5f1e9cbb25358', 'sdfs', '5f1e9cbb45acd'),
('5f1e9cbb25358', 'sdfs', '5f1e9cbb45ace'),
('5f1e9cbb25358', 'dfssd', '5f1e9cbb45ad0'),
('5f1e9cbb98f43', 'sfs', '5f1e9cbba1a64'),
('5f1e9cbb98f43', 'sfs', '5f1e9cbba1a70'),
('5f1e9cbb98f43', 'sfs', '5f1e9cbba1a73'),
('5f1e9cbb98f43', 'sfs', '5f1e9cbba1a75');

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
('5e22acc006591', '5e22ad5e24f83', 'test', 4, 1),
('5f1e913faf039', '5f1e940adaeab', '10+20= ?', 4, 1),
('5f1e913faf039', '5f1e940b572a6', '15+20 = ?', 4, 2),
('5f1e913faf039', '5f1e940b9b034', '12+12=?', 4, 3),
('5f1e913faf039', '5f1e940be6f66', '2*8=?', 4, 4),
('5f1e913faf039', '5f1e940c6f3f2', '(-10)*(20)=?', 4, 5),
('5f1e913faf039', '5f1e940cc1b3b', '8/2=?', 4, 6),
('5f1e913faf039', '5f1e940d09326', '100/2', 4, 7),
('5f1e913faf039', '5f1e940d4f090', '14*2=?', 4, 8),
('5f1e913faf039', '5f1e940d92d8e', '14+14+14=?', 4, 9),
('5f1e913faf039', '5f1e940dd22ef', '2*2*2*', 4, 10),
('5f1e913faf039', '5f1e940e14449', '15+2+15', 4, 11),
('5f1e9ca61b06e', '5f1e9cbb25358', 'test', 4, 1),
('5f1e9ca61b06e', '5f1e9cbb98f43', 'dfs', 4, 2);

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
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5f1e913faf039', 'Mathsi', 2, 1, 11, 1, '', '', '2020-07-27 08:33:03'),
('5f1e95782ef3e', 'Science', 1, 1, 4, 2, '', '', '2020-07-27 08:51:04'),
('5f1e9ca61b06e', 'Hindi', 1, 1, 2, 2, '', '', '2020-07-27 09:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` varchar(250) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Test', 'male', 'test', 'test@test.com', '12345', '827ccb0eea8a706c4c34a16891f84e7b');

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
