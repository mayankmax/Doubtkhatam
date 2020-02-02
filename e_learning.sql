-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2020 at 08:05 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chatid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `chatroomid` int(11) NOT NULL,
  `message` varchar(200) NOT NULL,
  `chat_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chatid`, `userid`, `chatroomid`, `message`, `chat_date`) VALUES
(1, 4, 2, 'sdfe', '2020-02-01 16:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `chatroom`
--

CREATE TABLE `chatroom` (
  `chatroomid` int(11) NOT NULL,
  `chat_name` varchar(60) NOT NULL,
  `date_created` datetime NOT NULL,
  `chat_password` varchar(30) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatroom`
--

INSERT INTO `chatroom` (`chatroomid`, `chat_name`, `date_created`, `chat_password`, `userid`) VALUES
(1, 'My First Chat Room', '2017-09-11 13:20:18', 'leeann', 2),
(2, 'Free Entrance :)', '2017-09-11 13:20:51', '', 3),
(3, 'Admin Chat Room', '2017-09-11 13:21:24', '', 1),
(8, 'sdfgbnvh', '2020-02-01 22:23:39', 'adfgnhm', 6),
(9, 'Room1', '2020-02-01 23:00:16', 'room1', 4),
(10, 'room3', '2020-02-02 01:05:35', '1234', 4),
(11, 'room', '2020-02-02 11:25:18', '12345678', 11),
(12, 'group', '2020-02-02 11:59:37', '12345678', 4);

-- --------------------------------------------------------

--
-- Table structure for table `chat_member`
--

CREATE TABLE `chat_member` (
  `chat_memberid` int(11) NOT NULL,
  `chatroomid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_member`
--

INSERT INTO `chat_member` (`chat_memberid`, `chatroomid`, `userid`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 1),
(5, 2, 4),
(17, 8, 6),
(18, 9, 4),
(19, 10, 4),
(20, 3, 4),
(21, 11, 11),
(22, 11, 4),
(23, 12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `uname` varchar(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `access` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`uname`, `username`, `password`, `access`) VALUES
('abc', 'abcd', 'e10adc3949ba59abbe56e057f20f883e', '100'),
('asdfghj', 'asdfgh', '25d55ad283aa400af464c76d713c07ad', '100');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(150) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `uname`, `photo`, `access`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '', 1),
(2, 'lee', '7e0d7f8a5d96c24ffcc840f31bce72b2', 'lee', '', 2),
(3, 'julyn', 'bf70c261981e1708530982d56d2e8e01', 'julyn', '', 2),
(4, 'qwerty', '827ccb0eea8a706c4c34a16891f84e7b', 'shashank', '', 2),
(5, 'qwerty', '827ccb0eea8a706c4c34a16891f84e7b', 'sdfdd', '', 2),
(6, 'abhish12', '25d55ad283aa400af464c76d713c07ad', 'abhish', '', 2),
(7, 'pqrs', 'e10adc3949ba59abbe56e057f20f883e', 'pqr', '', 0),
(8, 'qwertyu', '25d55ad283aa400af464c76d713c07ad', 'qwerty', '', 0),
(9, 'abcde', '25d55ad283aa400af464c76d713c07ad', 'abcd', '', 0),
(10, 'shank', 'e10adc3949ba59abbe56e057f20f883e', 'shan', '', 0),
(11, 'asdfgh', 'e10adc3949ba59abbe56e057f20f883e', 'asdf', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `question`, `answer`) VALUES
(1, 'what is color of the sky', 'Blue');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatid`);

--
-- Indexes for table `chatroom`
--
ALTER TABLE `chatroom`
  ADD PRIMARY KEY (`chatroomid`);

--
-- Indexes for table `chat_member`
--
ALTER TABLE `chat_member`
  ADD PRIMARY KEY (`chat_memberid`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`answer`),
  ADD KEY `name` (`question`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chatroom`
--
ALTER TABLE `chatroom`
  MODIFY `chatroomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `chat_member`
--
ALTER TABLE `chat_member`
  MODIFY `chat_memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
