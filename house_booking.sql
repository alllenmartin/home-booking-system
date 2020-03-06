-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 06, 2020 at 06:34 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `house_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(200) NOT NULL,
  `total_adult` int(50) NOT NULL,
  `total_children` int(50) NOT NULL,
  `checkin_date` date NOT NULL,
  `checkout_date` date NOT NULL,
  `special_requirement` text NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `total_amount` double DEFAULT NULL,
  `deposit` double NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone_no` varchar(30) NOT NULL,
  `add_line1` varchar(100) NOT NULL,
  `add_line2` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `postcode` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `total_adult`, `total_children`, `checkin_date`, `checkout_date`, `special_requirement`, `payment_status`, `total_amount`, `deposit`, `booking_date`, `first_name`, `last_name`, `email`, `telephone_no`, `add_line1`, `add_line2`, `city`, `state`, `postcode`, `country`) VALUES
(129, 1, 0, '2014-12-05', '2014-12-07', '', 'pending', 240, 36, '2014-12-05 04:53:27', 'Mohd Zulkarnain', 'Jaranee', 'mrzulkarnine@gmail.com', '0128951744', '307 Kpg Kanchong Jaya Gedong', 'None', 'Serian', 'Sarawak', '50600', 'Malaysia'),
(130, 1, 0, '2014-12-05', '2014-12-07', '', 'pending', 480, 72, '2014-12-05 04:58:13', 'Mohd Zulkarnain', 'Jaranee', 'mrzulkarnine@gmail.com', '0128951744', '307 Kpg Kanchong Jaya Gedong', 'None', 'Serian', 'Sarawak', '50600', 'Malaysia'),
(131, 2, 0, '2015-05-21', '2015-05-23', '', 'pending', 240, 36, '2015-05-20 19:16:14', 'Mohd Zulkarnain', 'Jaranee', 'mrzulkarnine@gmail.com', '0128951744', '307 Kpg Kanchong Jaya Gedong', '', 'Serian', 'Sarawak', '50600', 'Malaysia'),
(132, 2, 0, '2015-05-21', '2015-05-23', '', 'pending', 920, 138, '2015-05-20 19:18:52', 'Mohd Zulkarnain', 'Jaranee', 'mrzulkarnine@gmail.com', '0128951744', '307 Kpg Kanchong Jaya Gedong', '', 'Serian', 'Sarawak', '50600', 'Malaysia'),
(135, 2, 0, '2020-02-15', '2020-02-22', '', 'pending', 1680, 252, '2020-02-15 20:39:49', 'Allen', 'Martin', 'martinallen722@gmail.com', '0712345678', 'Kisumu', 'Kisumu', 'Kisumu', 'Kisumu', '40100', 'Kitui  '),
(142, 1, 0, '2020-02-15', '2020-06-13', 'jksjvjkjkvjk', 'pending', 3480, 522, '2020-02-21 15:34:36', 'Allen', 'Martin', 'martinallen722@gmail.com', '0712345678', 'Kisumu', 'Kisumu', 'Kisumu', 'Kisumu', '401004', 'Embu '),
(143, 3, 0, '2020-02-12', '2020-02-29', 'fvfjhdsfj,', 'pending', 3400, 510, '2020-02-27 11:33:39', 'Hhhhh', 'Martin', 'martinallen722@gmail.com', '0712345678', 'Kisumu', 'Kisumu', 'Kisumu', 'Kisumu', '40100', 'Kitui  '),
(144, 3, 5, '2020-02-12', '2020-02-29', '', 'pending', 1700, 255, '2020-03-06 15:04:19', 'svvsv', 'Martin', 'martinallen722@gmail.com', '0712345678', 'Kisumu', 'Kisumu', 'Kisumu', 'Kisumu', '40100', 'Isiolo '),
(145, 4, 3, '2020-03-28', '2020-03-28', 'dfbdfdfb', 'pending', 0, 0, '2020-03-06 16:01:04', 'bvdfdfg', 'Martin', 'martinallen722@gmail.com', '0712345678', 'Kisumu', 'Kisumu', 'Kisumu', 'Kisumu', '40100', ' Meru    ');

-- --------------------------------------------------------

--
-- Table structure for table `counties`
--

CREATE TABLE `counties` (
  `code` int(30) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counties`
--

INSERT INTO `counties` (`code`, `name`) VALUES
(1, 'Mombasa'),
(2, 'Kwale  '),
(3, 'Kilifi  '),
(4, 'Tana River '),
(5, 'Lamu    '),
(6, 'TaitaTaveta '),
(7, 'Garissa '),
(8, 'Wajir'),
(9, 'Mandera '),
(10, ' Marsabit '),
(11, 'Isiolo '),
(12, ' Meru    '),
(13, 'Tharaka-Nithi'),
(14, 'Embu '),
(15, 'Kitui  '),
(16, 'Machakos'),
(17, 'Makueni '),
(19, 'Nyandarua'),
(21, 'Muranga'),
(22, 'Kiambu  '),
(23, 'Turkana'),
(24, 'West Pokot'),
(25, 'Samburu'),
(26, 'Trans-Nzoia'),
(27, 'Uasin Gishu'),
(28, 'Elgeyo-Marakwet '),
(29, 'Nandi'),
(30, 'Baringo '),
(31, 'Laikipia '),
(32, 'Nakuru'),
(33, 'Narok '),
(34, 'Kajiado '),
(35, 'Kericho '),
(36, 'Bomet  '),
(37, 'Kakamega'),
(38, 'Vihiga'),
(40, 'Busia   '),
(41, 'Siaya '),
(42, 'Kisumu'),
(44, 'Migori'),
(45, 'Kisii '),
(46, 'Nyamira '),
(47, 'Nairobi');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(255) NOT NULL,
  `total_room` int(255) NOT NULL,
  `occupancy` int(255) DEFAULT NULL,
  `size` varchar(30) DEFAULT NULL,
  `view` varchar(30) DEFAULT NULL,
  `room_name` varchar(50) NOT NULL,
  `descriptions` text,
  `rate` double NOT NULL,
  `imgpath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `total_room`, `occupancy`, `size`, `view`, `room_name`, `descriptions`, `rate`, `imgpath`) VALUES
(1, 5, 4, '10 sqft', 'city', 'Landi Mawe Houses', 'Velit in colour', 120, 'img/R.jpg'),
(2, 5, 3, '10 sqft', 'city', 'Donholm Houses', 'Blue', 100, 'img/Rop2.jpg'),
(3, 10, 10, '20 sqft', 'City', 'Kayole Houses', 'Suitable for honeymoon', 120, 'img/R2.jpg'),
(4, 2, 5, '20 sqft', 'Kisumu', 'Flat Rop', 'Flat', 120, 'img/R4.jpg'),
(5, 3, 4, '7785 sqft', 'Nairobi', 'Grey', 'Grey in colour', 150, 'img/R5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE `roombook` (
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `totalroombook` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roombook`
--

INSERT INTO `roombook` (`booking_id`, `room_id`, `totalroombook`, `id`) VALUES
(132, 1, 2, 0),
(129, 1, 1, 70),
(130, 1, 1, 71),
(131, 1, 1, 72),
(132, 2, 1, 74),
(0, 1, 2, 75),
(0, 1, 2, 76),
(0, 1, 1, 77),
(0, 1, 2, 78),
(0, 1, 2, 79),
(135, 1, 4, 80),
(0, 2, 3, 81),
(0, 2, 2, 82),
(0, 2, 2, 83),
(142, 1, 1, 84),
(143, 2, 2, 85),
(144, 2, 1, 86),
(145, 1, 2, 87);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'demo', 'demo'),
(2, 'allen', 'allen'),
(3, 'abuto', 'abuto'),
(4, 'abuto', 'abuto'),
(5, 'allen2', 'allen2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `counties`
--
ALTER TABLE `counties`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `counties`
--
ALTER TABLE `counties`
  MODIFY `code` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roombook`
--
ALTER TABLE `roombook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
