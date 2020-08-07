-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2019 at 08:08 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pp_l57_schoolsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin' COMMENT 'admin=every access,normal=not access teacher panel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin`, `pwd`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '12345', 'admin', '2019-02-26 06:18:03', '2019-02-26 06:18:03'),
(3, 'normal', '12345', 'normal', '2019-02-26 06:18:04', '2019-02-26 06:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `lrn` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appointment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `lrn`, `name`, `appointment`, `created_at`, `updated_at`) VALUES
(144, 3, 'Avarixia', 'GIS seminar', NULL, NULL),
(145, 4, 'Avarixia', 'GIS seminar', NULL, NULL),
(146, 5, 'Avarixia', 'GIS seminar', NULL, NULL),
(147, 6, 'Avarixia', 'GIS seminar', NULL, NULL),
(148, 7, 'Avarixia', 'GIS seminar', NULL, NULL),
(149, 8, 'Kyler', 'GIS seminar', NULL, NULL),
(150, 9, 'Kyler', 'Kainan', NULL, NULL),
(151, 10, 'Kyler', 'Kainan', NULL, NULL),
(152, 11, 'Kyler', 'Kainan', NULL, NULL),
(153, 12, 'Nestor', 'Kainan', NULL, NULL),
(154, 13, 'Nestor', 'Kainan', NULL, NULL),
(155, 14, 'Nestor', 'Counseling', NULL, NULL),
(156, 15, 'Nestor', 'Yeah', NULL, NULL),
(157, 1, 'Eugene Cabus', 'Nekkoya', NULL, NULL),
(158, 1, 'Eugene Cabus', 'Nekkoya', NULL, NULL),
(159, 1, 'Eugene Cabus', 'Nekkoya', NULL, NULL),
(160, 1, 'Eugene Cabus', 'Nekkoya', NULL, NULL),
(161, 1, 'eugene cabus', 'Capstone Dying', NULL, NULL),
(162, 1, 'eugene cabus', 'Capstone Dying', NULL, NULL),
(163, 192, 'eugene cabus', 'Capstone Dying', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `time_id` int(10) UNSIGNED NOT NULL,
  `LRN` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Grade` int(11) NOT NULL,
  `Section` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Attendance_Date` date NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`time_id`, `LRN`, `Name`, `Grade`, `Section`, `Attendance_Date`, `time_in`, `time_out`, `created_at`, `updated_at`) VALUES
(61, 4, 'Eugene Cabus', 12, 'Mag', '2019-01-27', '06:05:12', '12:34:01', NULL, NULL),
(62, 4, 'Carl Muyco', 12, 'Magtanggol', '2019-01-27', '06:58:24', '12:33:25', NULL, NULL),
(63, 14, 'Eugene Cabus', 12, 'Magtanggol', '2019-02-04', '06:08:02', '12:30:21', NULL, NULL),
(64, 15, 'Carl Muyco', 12, 'Magtanggol', '2019-02-04', '05:58:12', '12:30:21', NULL, NULL),
(65, 16, 'Randy Landicho', 12, 'Magtanggol', '2019-02-04', '05:30:29', '12:30:21', NULL, NULL),
(66, 14, 'Eugene Cabus', 12, 'Magtanggol', '2019-02-05', '06:01:03', '12:30:21', NULL, NULL),
(67, 15, 'Carl Muyco', 12, 'Magtanggol', '2019-02-05', '06:06:01', '12:30:21', NULL, NULL),
(68, 16, 'Randy Landicho', 12, 'Magtanggol', '2019-02-05', '06:12:54', '12:30:21', NULL, NULL),
(69, 14, 'Eugene Cabus', 12, 'Magtanggol', '2019-02-05', '05:56:02', '12:30:21', NULL, NULL),
(70, 15, 'Carl Muyco', 12, 'Magtanggol', '2019-02-05', '06:04:34', '12:30:21', NULL, NULL),
(71, 16, 'Randy Landicho', 12, 'Magtanggol', '2019-02-05', '06:02:19', '12:30:21', NULL, NULL),
(72, 14, 'Eugene Cabus', 12, 'Magtanggol', '2019-02-06', '05:40:22', '12:30:21', NULL, NULL),
(73, 15, 'Carl Muyco', 12, 'Magtanggol', '2019-02-06', '06:03:12', '12:30:21', NULL, NULL),
(74, 16, 'Randy Landicho', 12, 'Magtanggol', '2019-02-06', '06:03:17', '12:30:21', NULL, NULL),
(75, 14, 'Eugene Cabus', 12, 'Magtanggol', '2019-02-06', '06:03:25', '12:30:21', NULL, NULL),
(76, 15, 'Carl Muyco', 12, 'Magtanggol', '2019-02-06', '05:59:59', '12:30:21', NULL, NULL),
(77, 16, 'Randy Landicho', 12, 'Magtanggol', '2019-02-06', '06:09:17', '12:30:21', NULL, NULL),
(78, 14, 'Eugene Cabus', 12, 'Magtanggol', '2019-02-07', '05:44:49', '12:30:21', NULL, NULL),
(79, 15, 'Carl Muyco', 12, 'Magtanggol', '2019-02-07', '06:09:15', '12:30:21', NULL, NULL),
(80, 16, 'Randy Landicho', 12, 'Magtanggol', '2019-02-07', '06:09:25', '12:30:21', NULL, NULL),
(81, 14, 'Eugene Cabus', 12, 'Magtanggol', '2019-02-07', '06:09:40', '12:30:21', NULL, NULL),
(82, 15, 'Carl Muyco', 12, 'Magtanggol', '2019-02-07', '05:51:01', '12:30:21', NULL, NULL),
(83, 16, 'Randy Landicho', 12, 'Magtanggol', '2019-02-07', '06:03:02', '12:30:21', NULL, NULL),
(84, 14, 'Eugene Cabus', 12, 'Magtanggol', '2019-02-08', '05:48:02', '12:30:21', NULL, NULL),
(85, 15, 'Carl Muyco', 12, 'Magtanggol', '2019-02-08', '06:05:17', '12:30:21', NULL, NULL),
(86, 16, 'Randy Landicho', 12, 'Magtanggol', '2019-02-08', '06:05:42', '12:30:21', NULL, NULL),
(87, 14, 'Eugene Cabus', 12, 'Magtanggol', '2019-02-08', '05:57:52', '12:30:21', NULL, NULL),
(88, 15, 'Carl Muyco', 12, 'Magtanggol', '2019-02-08', '05:08:02', '12:30:21', NULL, NULL),
(89, 16, 'Randy Landicho', 12, 'Magtanggol', '2019-02-08', '05:08:02', '12:30:21', NULL, NULL),
(90, 14, 'Eugene Cabus', 12, 'Magtanggol', '2019-02-09', '05:59:59', '12:30:21', NULL, NULL),
(91, 15, 'Carl Muyco', 12, 'Magtanggol', '2019-02-09', '05:08:02', '12:30:21', NULL, NULL),
(92, 16, 'Randy Landicho', 12, 'Magtanggol', '2019-02-09', '06:08:02', '12:30:21', NULL, NULL),
(93, 14, 'Eugene Cabus', 12, 'Magtanggol', '2019-02-09', '05:08:02', '12:30:21', NULL, NULL),
(94, 15, 'Carl Muyco', 12, 'Magtanggol', '2019-02-09', '06:08:02', '12:30:21', NULL, NULL),
(95, 16, 'Randy Landicho', 12, 'Magtanggol', '2019-02-09', '05:08:02', '12:30:21', NULL, NULL),
(96, 14, 'Eugene Cabus', 12, 'Magtanggol', '2019-02-10', '06:23:21', '12:30:21', NULL, NULL),
(97, 15, 'Carl Muyco', 12, 'Magtanggol', '2019-02-01', '06:05:38', '12:30:21', NULL, NULL),
(98, 16, 'Randy Landicho', 12, 'Magtanggol', '2019-02-10', '05:40:22', '12:30:21', NULL, NULL),
(99, 15, 'Carl Muyco', 12, 'Magtanggol', '2019-02-10', '05:08:02', '12:30:21', NULL, NULL),
(100, 16, 'Randy Landicho', 12, 'Magtanggol', '2019-02-10', '05:08:02', '12:30:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `counsel`
--

CREATE TABLE `counsel` (
  `counsel_id` int(100) NOT NULL,
  `stu_id` int(100) NOT NULL,
  `Concern` varchar(250) DEFAULT NULL,
  `Want` varchar(250) DEFAULT NULL,
  `whattodo` varchar(250) DEFAULT NULL,
  `Other` varchar(250) DEFAULT NULL,
  `When` date DEFAULT NULL,
  `Will` varchar(250) DEFAULT NULL,
  `comeback` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counselling`
--

CREATE TABLE `counselling` (
  `stu_id` int(100) NOT NULL,
  `counsel_id` int(100) NOT NULL,
  `problem` varchar(240) NOT NULL,
  `sumofdata` varchar(250) NOT NULL,
  `intervention` varchar(250) NOT NULL,
  `reccomendation` varchar(250) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counselling`
--

INSERT INTO `counselling` (`stu_id`, `counsel_id`, `problem`, `sumofdata`, `intervention`, `reccomendation`, `created_at`, `updated_at`) VALUES
(9, 1, 'Being late many times', 'Come early to school.', 'Monitor the attendance of the student', 'Wake up early', '2019-07-04', '2019-07-04');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(10) UNSIGNED NOT NULL,
  `event_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` date NOT NULL,
  `event_start` time NOT NULL,
  `event_end` time NOT NULL,
  `event_information` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_location`, `event_date`, `event_start`, `event_end`, `event_information`, `created_at`, `updated_at`) VALUES
(3, 'Anti-Pollution Seminar for ACSHS', 'Building 5 104', '2019-02-14', '08:15:00', '12:30:00', 'asdasdasdasdasdasdasd', NULL, NULL),
(4, 'Career Orientation 2019 2', 'Building 4 204-205', '2019-02-03', '20:20:00', '21:20:00', '123', NULL, NULL),
(5, 'Mental Health Awareness Seminar', 'Room 501-502', '2019-08-07', '13:00:00', '16:00:00', 'This seminar will serve as a guidance to the students on how to handle mental health by seeking help from others. The Seminar will be organized by guidance office of Antipolo Senior High School along with DepEd.\r\n\r\nThe guest speaker is Mr. Edward Tan.', NULL, NULL),
(7, 'wddawwd', 'wadwawd', '2020-12-12', '00:00:00', '01:00:00', 'adwawdawdaw', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exitinterview`
--

CREATE TABLE `exitinterview` (
  `stu_id` int(100) NOT NULL,
  `question1` varchar(250) NOT NULL,
  `question2` varchar(250) NOT NULL,
  `Oppurtunities` varchar(250) NOT NULL,
  `Treatment` varchar(250) NOT NULL,
  `Recognition` varchar(250) NOT NULL,
  `Problems` varchar(250) NOT NULL,
  `Feedback` varchar(250) NOT NULL,
  `Development` varchar(250) NOT NULL,
  `Working` varchar(250) NOT NULL,
  `Concern` varchar(250) NOT NULL,
  `Correction` varchar(250) NOT NULL,
  `Activities` varchar(250) NOT NULL,
  `Responsibilities` varchar(250) NOT NULL,
  `Performance` varchar(250) NOT NULL,
  `question5` varchar(250) NOT NULL,
  `Higher_Education` varchar(250) DEFAULT NULL,
  `Target_School` varchar(250) DEFAULT NULL,
  `Course` varchar(250) DEFAULT NULL,
  `Entreprenuership` varchar(250) DEFAULT NULL,
  `Business` varchar(250) DEFAULT NULL,
  `Employment` varchar(250) DEFAULT NULL,
  `Nature` varchar(250) DEFAULT NULL,
  `Workplace` varchar(250) DEFAULT NULL,
  `Middleskill` varchar(250) DEFAULT NULL,
  `Skills` varchar(250) DEFAULT NULL,
  `Training` varchar(250) DEFAULT NULL,
  `Challenge` varchar(250) NOT NULL,
  `Recommend` varchar(250) NOT NULL,
  `Suggestion` varchar(250) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exitinterview`
--

INSERT INTO `exitinterview` (`stu_id`, `question1`, `question2`, `Oppurtunities`, `Treatment`, `Recognition`, `Problems`, `Feedback`, `Development`, `Working`, `Concern`, `Correction`, `Activities`, `Responsibilities`, `Performance`, `question5`, `Higher_Education`, `Target_School`, `Course`, `Entreprenuership`, `Business`, `Employment`, `Nature`, `Workplace`, `Middleskill`, `Skills`, `Training`, `Challenge`, `Recommend`, `Suggestion`, `created_at`, `updated_at`) VALUES
(7, 'wadwa', 'dawdawdawdawdaw', 'Always', 'Always', 'Always', 'Always', 'Always', 'Always', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'wdawdwdawad', 'True', 'wadwad', 'wdawdaw', 'True', 'dwadwda', 'True', 'awdwadwd', 'wadwda', 'True', 'wadwadwda', 'wadwad', 'awawddaw', 'awdwad', 'awdawdwdawda', '2019-05-22', '2019-05-22'),
(9, 'It\'s fun.', 'The school is clean and teachers are so professionals.', 'Always', 'Always', 'Always', 'Always', 'Always', 'Always', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'The equipments are complete', 'True', 'Technological Institute of the Philippines', 'BS Information Technology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Being a leader', 'Yes', 'More equipment', '2019-07-04', '2019-07-04'),
(109, 'awdawd', 'awawdawd', 'Always', 'Always', 'Always', 'Always', 'Always', 'Always', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'wadawawdawdawdwad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'awdawd', 'wadadw', 'awdawdwad', '2019-07-15', '2019-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `fees_card`
--

CREATE TABLE `fees_card` (
  `fees_id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `deposite_fees_amount` varchar(255) NOT NULL,
  `deposite_month` varchar(255) NOT NULL,
  `deposite_by` varchar(255) NOT NULL,
  `balance_fees` varchar(255) NOT NULL,
  `deposite_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grads`
--

CREATE TABLE `grads` (
  `adhaar_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `learner_midname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `strand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mother_tongue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_mobile_no` int(191) DEFAULT NULL,
  `email_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roll_no` int(191) DEFAULT NULL,
  `stu_id` int(191) NOT NULL,
  `grade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Graduated',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'antipolos2.png',
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '2018-2019'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grads`
--

INSERT INTO `grads` (`adhaar_no`, `lname`, `fname`, `learner_midname`, `gender`, `address`, `strand`, `dob`, `mother_tongue`, `religion`, `father_name`, `mother_name`, `guardian_name`, `mobile_no`, `created_at`, `updated_at`, `status`, `alternate_mobile_no`, `email_id`, `extra_note`, `roll_no`, `stu_id`, `grade`, `photo`, `class`) VALUES
('100075789064', 'Lerhinan', 'Winnah', 'Pargent', 'Female', '8540 Esker Lane', 'GAS', '2001-09-03', 'Tagalog', 'Christian', 'Winnah Pargent', 'Winnah Pargent', 'Winnah Pargent', 2147483647, '2016-09-12 10:16:12', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Graduated', 'antipolos2.png', '2018-2019'),
('100112467067', 'Pomeroy', 'Russell', 'Margiotta', 'Male', '5 La Follette Circle', 'GAS', '1999-07-10', 'Filipino', 'Christian', 'Russell Margiotta', 'Russell Margiotta', 'Russell Margiotta', 2147483647, '2016-01-02 22:38:37', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Graduated', 'antipolos2.png', '2018-2019'),
('100171498239', 'Noen', 'Kissiah', 'Gerlack', 'Female', '6 Clyde Gallagher Terrace', 'STEM', '1999-11-09', 'Chinese', 'Christian', 'Kissiah Gerlack', 'Kissiah Gerlack', 'Kissiah Gerlack', 2147483647, '2015-07-22 05:55:32', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Graduated', 'antipolos2.png', '2018-2019'),
('100188387388', 'Kingsland', 'Debbie', 'Winfrey', 'Female', '61002 Thompson Point', 'ABM', '2000-10-22', 'Filipino', 'Catholic', 'Debbie Winfrey', 'Debbie Winfrey', 'Debbie Winfrey', 2147483647, '2015-07-15 14:48:07', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Graduated', 'antipolos2.png', '2018-2019'),
('100309877435', 'Rackley', 'Delly', 'Quinane', 'Female', '07057 Burrows Plaza', 'ABM', '2000-06-25', 'Chinese', 'Catholic', 'Delly Quinane', 'Delly Quinane', 'Delly Quinane', 2147483647, '2016-04-15 19:01:01', NULL, NULL, NULL, NULL, NULL, NULL, 5, 'Graduated', 'antipolos2.png', '2018-2019'),
('100429225184', 'Abrahart', 'Trixi', 'Keston', 'Female', '4089 Donald Place', 'GAS', '1999-11-16', 'Chinese', 'Catholic', 'Trixi Keston', 'Trixi Keston', 'Trixi Keston', 2147483647, '2016-09-17 16:33:12', NULL, NULL, NULL, NULL, NULL, NULL, 6, 'Graduated', 'antipolos2.png', '2018-2019'),
('100452026590', 'Chaldecott', 'Tanny', 'Isacsson', 'Male', '0709 Village Green Road', 'GAS', '2001-01-02', 'Filipino', 'Christian', 'Tanny Isacsson', 'Tanny Isacsson', 'Tanny Isacsson', 2147483647, '2015-07-18 02:12:41', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'Graduated', 'antipolos2.png', '2018-2019'),
('100507102165', 'Plows', 'Boonie', 'Yoseloff', 'Male', '261 Monument Terrace', 'ABM', '2000-10-02', 'Tagalog', 'Catholic', 'Boonie Yoseloff', 'Boonie Yoseloff', 'Boonie Yoseloff', 2147483647, '2016-05-10 00:30:22', NULL, NULL, NULL, NULL, NULL, NULL, 8, 'Graduated', 'antipolos2.png', '2018-2019'),
('100560844804', 'McTrustram', 'Benny', 'Maltby', 'Female', '17 Dunning Alley', 'ABM', '2000-08-08', 'Tagalog', 'Catholic', 'Benny Maltby', 'Benny Maltby', 'Benny Maltby', 2147483647, '2015-12-16 17:10:12', NULL, NULL, NULL, NULL, NULL, NULL, 9, 'Graduated', 'antipolos2.png', '2018-2019'),
('100572864161', 'Weigh', 'Jean', 'Talman', 'Male', '46528 West Place', 'ABM', '1999-08-27', 'Malay', 'Christian', 'Jean Talman', 'Jean Talman', 'Jean Talman', 2147483647, '2015-09-28 19:57:40', NULL, NULL, NULL, NULL, NULL, NULL, 10, 'Graduated', 'antipolos2.png', '2018-2019'),
('100660353295', 'Rawdales', 'Kalvin', 'Rittelmeyer', 'Male', '65913 Hazelcrest Trail', 'GAS', '2000-10-10', 'English', 'Catholic', 'Kalvin Rittelmeyer', 'Kalvin Rittelmeyer', 'Kalvin Rittelmeyer', 2147483647, '2016-12-16 21:02:24', NULL, NULL, NULL, NULL, NULL, NULL, 11, 'Graduated', 'antipolos2.png', '2018-2019'),
('100676736970', 'Bonin', 'Jodie', 'Buddles', 'Female', '12351 Hanson Lane', 'ABM', '1999-04-29', 'Chinese', 'Christian', 'Jodie Buddles', 'Jodie Buddles', 'Jodie Buddles', 2147483647, '2015-10-17 15:10:21', NULL, NULL, NULL, NULL, NULL, NULL, 12, 'Graduated', 'antipolos2.png', '2018-2019'),
('100716823005', 'McIlherran', 'Hamid', 'Helin', 'Male', '7 Butternut Road', 'GAS', '1999-02-06', 'Malay', 'Christian', 'Hamid Helin', 'Hamid Helin', 'Hamid Helin', 2147483647, '2015-10-18 18:47:56', NULL, NULL, NULL, NULL, NULL, NULL, 13, 'Graduated', 'antipolos2.png', '2018-2019'),
('100770080126', 'Zannotelli', 'Anestassia', 'Gregan', 'Female', '21348 Becker Pass', 'ABM', '2001-07-22', 'Filipino', 'Catholic', 'Anestassia Gregan', 'Anestassia Gregan', 'Anestassia Gregan', 2147483647, '2016-11-24 09:09:55', NULL, NULL, NULL, NULL, NULL, NULL, 14, 'Graduated', 'antipolos2.png', '2018-2019'),
('100856178905', 'Leavold', 'Udall', 'Methuen', 'Male', '6225 Weeping Birch Circle', 'GAS', '2001-07-31', 'Filipino', 'Catholic', 'Udall Methuen', 'Udall Methuen', 'Udall Methuen', 2147483647, '2015-05-08 14:39:50', NULL, NULL, NULL, NULL, NULL, NULL, 15, 'Graduated', 'antipolos2.png', '2018-2019'),
('100996087071', 'Gwyneth', 'Carmela', 'Sawers', 'Female', '032 Kipling Parkway', 'GAS', '2000-04-10', 'Malay', 'Catholic', 'Carmela Sawers', 'Carmela Sawers', 'Carmela Sawers', 1568048266, '2016-04-19 14:30:37', NULL, NULL, NULL, NULL, NULL, NULL, 16, 'Graduated', 'antipolos2.png', '2018-2019'),
('101098258724', 'Bendixen', 'Maryanna', 'Moye', 'Female', '186 Scoville Parkway', 'ABM', '2000-11-19', 'Tagalog', 'Catholic', 'Maryanna Moye', 'Maryanna Moye', 'Maryanna Moye', 2147483647, '2015-08-11 00:45:58', NULL, NULL, NULL, NULL, NULL, NULL, 17, 'Graduated', 'antipolos2.png', '2018-2019'),
('101177027218', 'Colaton', 'Shanan', 'Capnor', 'Male', '45 Kings Way', 'STEM', '2001-11-28', 'English', 'Christian', 'Shanan Capnor', 'Shanan Capnor', 'Shanan Capnor', 2147483647, '2016-07-09 23:05:36', NULL, NULL, NULL, NULL, NULL, NULL, 18, 'Graduated', 'antipolos2.png', '2018-2019'),
('101226750149', 'Heddy', 'Kari', 'Lightbody', 'Female', '3 Southridge Trail', 'GAS', '1999-03-31', 'Chinese', 'Christian', 'Kari Lightbody', 'Kari Lightbody', 'Kari Lightbody', 2147483647, '2017-01-27 22:21:02', NULL, NULL, NULL, NULL, NULL, NULL, 19, 'Graduated', 'antipolos2.png', '2018-2019'),
('101267168142', 'Drogan', 'Micah', 'Riba', 'Male', '114 Randy Crossing', 'HUMMS', '2001-10-27', 'Filipino', 'Catholic', 'Micah Riba', 'Micah Riba', 'Micah Riba', 2147483647, '2015-06-06 06:38:20', NULL, NULL, NULL, NULL, NULL, NULL, 20, 'Graduated', 'antipolos2.png', '2018-2019'),
('101445707350', 'Trinder', 'Eveleen', 'Saladine', 'Female', '3974 Blaine Center', 'STEM', '2001-04-06', 'Tagalog', 'Christian', 'Eveleen Saladine', 'Eveleen Saladine', 'Eveleen Saladine', 2147483647, '2015-08-25 06:39:01', NULL, NULL, NULL, NULL, NULL, NULL, 21, 'Graduated', 'antipolos2.png', '2018-2019'),
('101563649963', 'Binge', 'Stanislaw', 'Helis', 'Male', '25 Comanche Court', 'ABM', '2000-02-28', 'Chinese', 'Christian', 'Stanislaw Helis', 'Stanislaw Helis', 'Stanislaw Helis', 2147483647, '2016-07-23 14:28:10', NULL, NULL, NULL, NULL, NULL, NULL, 22, 'Graduated', 'antipolos2.png', '2018-2019'),
('101592315837', 'Goucher', 'Brigida', 'Fessions', 'Female', '4 Myrtle Avenue', 'HUMMS', '2001-08-17', 'English', 'Catholic', 'Brigida Fessions', 'Brigida Fessions', 'Brigida Fessions', 1745567353, '2015-08-26 17:03:10', NULL, NULL, NULL, NULL, NULL, NULL, 23, 'Graduated', 'antipolos2.png', '2018-2019'),
('101701506450', 'Kimmince', 'Melessa', 'Ricold', 'Female', '61 Pennsylvania Street', 'ABM', '2000-06-09', 'Filipino', 'Catholic', 'Melessa Ricold', 'Melessa Ricold', 'Melessa Ricold', 2147483647, '2016-12-31 00:27:03', NULL, NULL, NULL, NULL, NULL, NULL, 24, 'Graduated', 'antipolos2.png', '2018-2019'),
('101706365796', 'McLaggan', 'Marvin', 'Mattioli', 'Male', '02806 Ohio Way', 'HUMMS', '2001-03-26', 'Malay', 'Catholic', 'Marvin Mattioli', 'Marvin Mattioli', 'Marvin Mattioli', 2147483647, '2015-10-09 07:25:20', NULL, NULL, NULL, NULL, NULL, NULL, 25, 'Graduated', 'antipolos2.png', '2018-2019'),
('101806925303', 'Canfield', 'Lisle', 'Uglow', 'Male', '4 Oneill Pass', 'HUMMS', '2001-06-15', 'Filipino', 'Christian', 'Lisle Uglow', 'Lisle Uglow', 'Lisle Uglow', 1818322302, '2015-03-31 02:01:27', NULL, NULL, NULL, NULL, NULL, NULL, 26, 'Graduated', 'antipolos2.png', '2018-2019'),
('101917263086', 'Paybody', 'Hogan', 'Lardier', 'Male', '61 Graedel Street', 'ABM', '1999-04-27', 'English', 'Catholic', 'Hogan Lardier', 'Hogan Lardier', 'Hogan Lardier', 2147483647, '2016-09-10 23:19:04', NULL, NULL, NULL, NULL, NULL, NULL, 27, 'Graduated', 'antipolos2.png', '2018-2019'),
('102087280753', 'Allmen', 'Dame', 'Rawling', 'Male', '63 Carioca Circle', 'HUMMS', '2000-03-03', 'Filipino', 'Catholic', 'Dame Rawling', 'Dame Rawling', 'Dame Rawling', 2147483647, '2015-09-10 20:27:42', NULL, NULL, NULL, NULL, NULL, NULL, 28, 'Graduated', 'antipolos2.png', '2018-2019'),
('102091170128', 'Dericot', 'Bendicty', 'Pinkney', 'Male', '27 Bellgrove Circle', 'STEM', '2001-01-14', 'Filipino', 'Catholic', 'Bendicty Pinkney', 'Bendicty Pinkney', 'Bendicty Pinkney', 2147483647, '2016-04-24 13:07:31', NULL, NULL, NULL, NULL, NULL, NULL, 29, 'Graduated', 'antipolos2.png', '2018-2019'),
('102139040017', 'Kettlestringes', 'Friedrich', 'Buglar', 'Male', '4 Gina Circle', 'ABM', '1999-12-17', 'English', 'Catholic', 'Friedrich Buglar', 'Friedrich Buglar', 'Friedrich Buglar', 2147483647, '2016-03-06 16:41:44', NULL, NULL, NULL, NULL, NULL, NULL, 30, 'Graduated', 'antipolos2.png', '2018-2019'),
('102203459980', 'Hursthouse', 'Nert', 'Squeers', 'Female', '15 Pearson Road', 'ABM', '1999-10-22', 'Tagalog', 'Catholic', 'Nert Squeers', 'Nert Squeers', 'Nert Squeers', 2147483647, '2016-05-04 17:31:00', NULL, NULL, NULL, NULL, NULL, NULL, 31, 'Graduated', 'antipolos2.png', '2018-2019'),
('102278732781', 'Cromb', 'Clevie', 'Burgwin', 'Male', '00 Schlimgen Lane', 'ABM', '1999-10-26', 'Chinese', 'Catholic', 'Clevie Burgwin', 'Clevie Burgwin', 'Clevie Burgwin', 2147483647, '2015-09-07 01:50:24', NULL, NULL, NULL, NULL, NULL, NULL, 32, 'Graduated', 'antipolos2.png', '2018-2019'),
('102296903864', 'Whitmarsh', 'Greer', 'Braley', 'Female', '7 Heffernan Court', 'GAS', '1999-12-08', 'Malay', 'Christian', 'Greer Braley', 'Greer Braley', 'Greer Braley', 2147483647, '2015-02-17 02:55:16', NULL, NULL, NULL, NULL, NULL, NULL, 33, 'Graduated', 'antipolos2.png', '2018-2019'),
('102429676607', 'McAlindon', 'Coral', 'Stanfield', 'Female', '64 Chive Hill', 'GAS', '2000-08-26', 'Malay', 'Christian', 'Coral Stanfield', 'Coral Stanfield', 'Coral Stanfield', 2147483647, '2017-01-20 14:58:21', NULL, NULL, NULL, NULL, NULL, NULL, 34, 'Graduated', 'antipolos2.png', '2018-2019'),
('102452821764', 'Jizhaki', 'Leonard', 'Noades', 'Male', '7382 Ludington Alley', 'ABM', '2001-05-25', 'Malay', 'Christian', 'Leonard Noades', 'Leonard Noades', 'Leonard Noades', 2147483647, '2016-11-02 18:09:15', NULL, NULL, NULL, NULL, NULL, NULL, 35, 'Graduated', 'antipolos2.png', '2018-2019'),
('102454686737', 'Atte-Stone', 'Marrissa', 'Gooders', 'Female', '36739 Ridgeview Pass', 'HUMMS', '2001-10-30', 'Filipino', 'Catholic', 'Marrissa Gooders', 'Marrissa Gooders', 'Marrissa Gooders', 2147483647, '2015-10-09 23:42:02', NULL, NULL, NULL, NULL, NULL, NULL, 36, 'Graduated', 'antipolos2.png', '2018-2019'),
('102508058076', 'Schutter', 'Tomasine', 'Yeaman', 'Female', '9 Trailsway Terrace', 'GAS', '2000-02-04', 'English', 'Christian', 'Tomasine Yeaman', 'Tomasine Yeaman', 'Tomasine Yeaman', 2147483647, '2016-05-26 03:34:47', NULL, NULL, NULL, NULL, NULL, NULL, 37, 'Graduated', 'antipolos2.png', '2018-2019'),
('102722291197', 'Welsh', 'Zorine', 'Gooding', 'Female', '8 Packers Center', 'GAS', '2000-02-27', 'Tagalog', 'Catholic', 'Zorine Gooding', 'Zorine Gooding', 'Zorine Gooding', 2147483647, '2016-08-30 07:33:04', NULL, NULL, NULL, NULL, NULL, NULL, 38, 'Graduated', 'antipolos2.png', '2018-2019'),
('102744259551', 'Labern', 'Allegra', 'Downage', 'Female', '63 Miller Terrace', 'STEM', '1999-07-21', 'Tagalog', 'Christian', 'Allegra Downage', 'Allegra Downage', 'Allegra Downage', 2147483647, '2016-05-28 08:51:38', NULL, NULL, NULL, NULL, NULL, NULL, 39, 'Graduated', 'antipolos2.png', '2018-2019'),
('102780830797', 'Antyshev', 'Bette', 'Vanini', 'Female', '229 Fordem Trail', 'ABM', '2000-01-28', 'Filipino', 'Christian', 'Bette Vanini', 'Bette Vanini', 'Bette Vanini', 2147483647, '2015-11-04 22:27:35', NULL, NULL, NULL, NULL, NULL, NULL, 40, 'Graduated', 'antipolos2.png', '2018-2019'),
('102788438456', 'Mollene', 'Danie', 'Danskine', 'Male', '42261 Shasta Hill', 'STEM', '2000-04-17', 'Tagalog', 'Christian', 'Danie Danskine', 'Danie Danskine', 'Danie Danskine', 2147483647, '2015-08-11 08:10:26', NULL, NULL, NULL, NULL, NULL, NULL, 41, 'Graduated', 'antipolos2.png', '2018-2019'),
('102834733777', 'Mulhall', 'Garrott', 'Tatteshall', 'Male', '0 Lakewood Gardens Alley', 'STEM', '1999-04-04', 'Malay', 'Christian', 'Garrott Tatteshall', 'Garrott Tatteshall', 'Garrott Tatteshall', 2147483647, '2015-03-07 20:47:58', NULL, NULL, NULL, NULL, NULL, NULL, 42, 'Graduated', 'antipolos2.png', '2018-2019'),
('102880412883', 'Bretherton', 'Gifford', 'Orwell', 'Male', '0146 Truax Lane', 'ABM', '2000-02-13', 'English', 'Catholic', 'Gifford Orwell', 'Gifford Orwell', 'Gifford Orwell', 2147483647, '2017-01-21 15:57:09', NULL, NULL, NULL, NULL, NULL, NULL, 43, 'Graduated', 'antipolos2.png', '2018-2019'),
('102967051086', 'Mendenhall', 'Hersh', 'MacPhee', 'Male', '26033 Clemons Place', 'STEM', '2000-05-31', 'English', 'Christian', 'Hersh MacPhee', 'Hersh MacPhee', 'Hersh MacPhee', 2147483647, '2016-06-22 05:29:06', NULL, NULL, NULL, NULL, NULL, NULL, 44, 'Graduated', 'antipolos2.png', '2018-2019'),
('103052102838', 'Wellwood', 'Myrwyn', 'Bettaney', 'Male', '8 Summit Place', 'GAS', '2000-12-20', 'English', 'Christian', 'Myrwyn Bettaney', 'Myrwyn Bettaney', 'Myrwyn Bettaney', 2147483647, '2016-06-12 08:43:08', NULL, NULL, NULL, NULL, NULL, NULL, 45, 'Graduated', 'antipolos2.png', '2018-2019'),
('103313802709', 'Hain', 'Claudell', 'Boddis', 'Male', '34929 Toban Lane', 'HUMMS', '2000-08-27', 'Chinese', 'Catholic', 'Claudell Boddis', 'Claudell Boddis', 'Claudell Boddis', 2147483647, '2015-07-21 19:24:55', NULL, NULL, NULL, NULL, NULL, NULL, 46, 'Graduated', 'antipolos2.png', '2018-2019'),
('103321901364', 'Polgreen', 'Sheelah', 'Pullman', 'Female', '002 Bluestem Pass', 'HUMMS', '2001-05-19', 'Tagalog', 'Catholic', 'Sheelah Pullman', 'Sheelah Pullman', 'Sheelah Pullman', 2147483647, '2016-05-07 05:07:50', NULL, NULL, NULL, NULL, NULL, NULL, 47, 'Graduated', 'antipolos2.png', '2018-2019'),
('103377722010', 'Askwith', 'Townsend', 'McKinless', 'Male', '21 Eagan Park', 'GAS', '2000-12-04', 'Malay', 'Catholic', 'Townsend McKinless', 'Townsend McKinless', 'Townsend McKinless', 2147483647, '2015-12-17 20:40:30', NULL, NULL, NULL, NULL, NULL, NULL, 48, 'Graduated', 'antipolos2.png', '2018-2019'),
('103676931731', 'Stedson', 'Malina', 'Willgoose', 'Female', '701 Southridge Court', 'HUMMS', '2000-02-22', 'Tagalog', 'Catholic', 'Malina Willgoose', 'Malina Willgoose', 'Malina Willgoose', 2147483647, '2016-12-23 12:18:09', NULL, NULL, NULL, NULL, NULL, NULL, 49, 'Graduated', 'antipolos2.png', '2018-2019'),
('103692016274', 'Doubleday', 'Marrilee', 'Cowe', 'Female', '28347 Lakeland Plaza', 'STEM', '1999-03-15', 'Malay', 'Catholic', 'Marrilee Cowe', 'Marrilee Cowe', 'Marrilee Cowe', 2147483647, '2015-08-31 18:16:18', NULL, NULL, NULL, NULL, NULL, NULL, 50, 'Graduated', 'antipolos2.png', '2018-2019'),
('103733143164', 'Spataro', 'Corie', 'Mahedy', 'Female', '72946 Dapin Street', 'STEM', '2000-12-11', 'Malay', 'Catholic', 'Corie Mahedy', 'Corie Mahedy', 'Corie Mahedy', 2147483647, '2017-01-08 20:10:53', NULL, NULL, NULL, NULL, NULL, NULL, 51, 'Graduated', 'antipolos2.png', '2018-2019'),
('103872958029', 'Hillam', 'Celina', 'Costin', 'Female', '255 Spohn Circle', 'HUMMS', '2001-03-02', 'English', 'Christian', 'Celina Costin', 'Celina Costin', 'Celina Costin', 2147483647, '2017-01-11 14:04:23', NULL, NULL, NULL, NULL, NULL, NULL, 52, 'Graduated', 'antipolos2.png', '2018-2019'),
('103899141559', 'Lafflina', 'Hyacinthe', 'Scoffham', 'Female', '4 Pawling Road', 'GAS', '1999-09-30', 'Filipino', 'Christian', 'Hyacinthe Scoffham', 'Hyacinthe Scoffham', 'Hyacinthe Scoffham', 2147483647, '2016-09-28 22:17:23', NULL, NULL, NULL, NULL, NULL, NULL, 53, 'Graduated', 'antipolos2.png', '2018-2019'),
('104109879615', 'Haylor', 'Edeline', 'Matschuk', 'Female', '45323 Ridgeview Circle', 'GAS', '1999-09-11', 'Filipino', 'Catholic', 'Edeline Matschuk', 'Edeline Matschuk', 'Edeline Matschuk', 2147483647, '2015-03-21 07:37:36', NULL, NULL, NULL, NULL, NULL, NULL, 54, 'Graduated', 'antipolos2.png', '2018-2019'),
('104179353284', 'Gascoigne', 'Shandeigh', 'McMearty', 'Female', '9944 Bartillon Lane', 'STEM', '2000-09-17', 'English', 'Catholic', 'Shandeigh McMearty', 'Shandeigh McMearty', 'Shandeigh McMearty', 2147483647, '2015-08-28 23:00:49', NULL, NULL, NULL, NULL, NULL, NULL, 55, 'Graduated', 'antipolos2.png', '2018-2019'),
('104205787270', 'Frenzl', 'Neddy', 'Sheals', 'Male', '3 Prairie Rose Alley', 'STEM', '2001-04-23', 'Filipino', 'Catholic', 'Neddy Sheals', 'Neddy Sheals', 'Neddy Sheals', 2147483647, '2016-03-16 08:29:52', NULL, NULL, NULL, NULL, NULL, NULL, 56, 'Graduated', 'antipolos2.png', '2018-2019'),
('104335086638', 'Casford', 'Cletus', 'Harwell', 'Male', '2157 Pawling Alley', 'STEM', '1999-02-13', 'English', 'Catholic', 'Cletus Harwell', 'Cletus Harwell', 'Cletus Harwell', 2147483647, '2016-07-03 21:58:05', NULL, NULL, NULL, NULL, NULL, NULL, 57, 'Graduated', 'antipolos2.png', '2018-2019'),
('104461547621', 'Pullar', 'Simon', 'Smardon', 'Male', '31276 Iowa Road', 'GAS', '1999-07-31', 'English', 'Catholic', 'Simon Smardon', 'Simon Smardon', 'Simon Smardon', 2147483647, '2016-08-12 10:37:49', NULL, NULL, NULL, NULL, NULL, NULL, 58, 'Graduated', 'antipolos2.png', '2018-2019'),
('104475062681', 'Doers', 'Amitie', 'Tessyman', 'Female', '27 Loftsgordon Crossing', 'STEM', '2000-12-15', 'English', 'Catholic', 'Amitie Tessyman', 'Amitie Tessyman', 'Amitie Tessyman', 2147483647, '2016-06-10 01:31:14', NULL, NULL, NULL, NULL, NULL, NULL, 59, 'Graduated', 'antipolos2.png', '2018-2019'),
('104533388561', 'Wisdom', 'Alon', 'Luckman', 'Male', '946 Londonderry Way', 'ABM', '1999-03-16', 'English', 'Christian', 'Alon Luckman', 'Alon Luckman', 'Alon Luckman', 2147483647, '2016-03-29 10:23:57', NULL, NULL, NULL, NULL, NULL, NULL, 60, 'Graduated', 'antipolos2.png', '2018-2019'),
('104591212473', 'Kelle', 'Jeremias', 'Fabry', 'Male', '423 Nobel Lane', 'HUMMS', '1999-04-04', 'English', 'Catholic', 'Jeremias Fabry', 'Jeremias Fabry', 'Jeremias Fabry', 2147483647, '2016-06-20 20:41:33', NULL, NULL, NULL, NULL, NULL, NULL, 61, 'Graduated', 'antipolos2.png', '2018-2019'),
('104764443311', 'Spurriar', 'Abdul', 'Coaker', 'Male', '60 Waywood Drive', 'ABM', '1999-06-15', 'Chinese', 'Christian', 'Abdul Coaker', 'Abdul Coaker', 'Abdul Coaker', 2147483647, '2015-05-24 18:38:12', NULL, NULL, NULL, NULL, NULL, NULL, 62, 'Graduated', 'antipolos2.png', '2018-2019'),
('104807285894', 'Wholesworth', 'Hazel', 'Riseley', 'Male', '3 Bluejay Lane', 'HUMMS', '2000-10-02', 'English', 'Catholic', 'Hazel Riseley', 'Hazel Riseley', 'Hazel Riseley', 2147483647, '2015-10-17 14:20:06', NULL, NULL, NULL, NULL, NULL, NULL, 63, 'Graduated', 'antipolos2.png', '2018-2019'),
('104931062093', 'Stode', 'Pete', 'Janik', 'Male', '6 Pennsylvania Plaza', 'HUMMS', '2001-05-08', 'Chinese', 'Christian', 'Pete Janik', 'Pete Janik', 'Pete Janik', 1511527268, '2016-01-28 20:33:07', NULL, NULL, NULL, NULL, NULL, NULL, 64, 'Graduated', 'antipolos2.png', '2018-2019'),
('104946783340', 'McRobb', 'Lavina', 'Joannic', 'Female', '168 Pearson Alley', 'ABM', '1999-05-15', 'Chinese', 'Christian', 'Lavina Joannic', 'Lavina Joannic', 'Lavina Joannic', 2147483647, '2015-05-04 16:11:06', NULL, NULL, NULL, NULL, NULL, NULL, 65, 'Graduated', 'antipolos2.png', '2018-2019'),
('105051043728', 'Chenery', 'Jenn', 'Fownes', 'Female', '7173 Katie Place', 'HUMMS', '2001-05-04', 'Filipino', 'Christian', 'Jenn Fownes', 'Jenn Fownes', 'Jenn Fownes', 2147483647, '2016-09-20 08:51:19', NULL, NULL, NULL, NULL, NULL, NULL, 66, 'Graduated', 'antipolos2.png', '2018-2019'),
('105056948553', 'Metzing', 'Ralph', 'Thewles', 'Male', '5825 Vahlen Pass', 'STEM', '2001-12-20', 'English', 'Catholic', 'Ralph Thewles', 'Ralph Thewles', 'Ralph Thewles', 2147483647, '2016-10-06 23:59:43', NULL, NULL, NULL, NULL, NULL, NULL, 67, 'Graduated', 'antipolos2.png', '2018-2019'),
('105097166791', 'Elford', 'Edna', 'Aleksich', 'Female', '9 Pennsylvania Lane', 'GAS', '1999-09-13', 'English', 'Christian', 'Edna Aleksich', 'Edna Aleksich', 'Edna Aleksich', 2147483647, '2015-10-10 07:40:23', NULL, NULL, NULL, NULL, NULL, NULL, 68, 'Graduated', 'antipolos2.png', '2018-2019'),
('105108467744', 'Fosbraey', 'Fanchon', 'Jodkowski', 'Female', '6 Darwin Park', 'HUMMS', '2001-03-15', 'Malay', 'Catholic', 'Fanchon Jodkowski', 'Fanchon Jodkowski', 'Fanchon Jodkowski', 2052600222, '2016-07-05 01:12:44', NULL, NULL, NULL, NULL, NULL, NULL, 69, 'Graduated', 'antipolos2.png', '2018-2019'),
('105134234476', 'Phair', 'Oralee', 'Aimeric', 'Female', '6 Sauthoff Point', 'ABM', '1999-09-03', 'English', 'Christian', 'Oralee Aimeric', 'Oralee Aimeric', 'Oralee Aimeric', 2147483647, '2015-07-13 12:27:48', NULL, NULL, NULL, NULL, NULL, NULL, 70, 'Graduated', 'antipolos2.png', '2018-2019'),
('105159232531', 'Gelder', 'Delaney', 'Quinlan', 'Male', '4 Gina Center', 'ABM', '1999-04-19', 'Tagalog', 'Catholic', 'Delaney Quinlan', 'Delaney Quinlan', 'Delaney Quinlan', 2147483647, '2016-08-12 19:16:26', NULL, NULL, NULL, NULL, NULL, NULL, 71, 'Graduated', 'antipolos2.png', '2018-2019'),
('105223675936', 'Latchmore', 'Joshua', 'Merton', 'Male', '95 Linden Point', 'STEM', '2000-09-22', 'Filipino', 'Catholic', 'Joshua Merton', 'Joshua Merton', 'Joshua Merton', 2147483647, '2015-02-24 08:32:17', NULL, NULL, NULL, NULL, NULL, NULL, 72, 'Graduated', 'antipolos2.png', '2018-2019'),
('105238002794', 'Lightbourn', 'Judy', 'Ackred', 'Female', '268 Ramsey Hill', 'ABM', '1999-12-19', 'Malay', 'Catholic', 'Judy Ackred', 'Judy Ackred', 'Judy Ackred', 2147483647, '2015-06-15 11:19:27', NULL, NULL, NULL, NULL, NULL, NULL, 73, 'Graduated', 'antipolos2.png', '2018-2019'),
('105305391896', 'Drohan', 'Alex', 'Poynter', 'Male', '4 Westend Terrace', 'HUMMS', '2001-08-30', 'Filipino', 'Christian', 'Alex Poynter', 'Alex Poynter', 'Alex Poynter', 2147483647, '2015-07-29 16:27:57', NULL, NULL, NULL, NULL, NULL, NULL, 74, 'Graduated', 'antipolos2.png', '2018-2019'),
('105311882131', 'Tidmas', 'Stillman', 'Rudledge', 'Male', '506 2nd Court', 'HUMMS', '2001-01-26', 'Chinese', 'Catholic', 'Stillman Rudledge', 'Stillman Rudledge', 'Stillman Rudledge', 2147483647, '2016-12-03 23:24:17', NULL, NULL, NULL, NULL, NULL, NULL, 75, 'Graduated', 'antipolos2.png', '2018-2019'),
('105312646833', 'Mant', 'Nadean', 'Vane', 'Female', '881 Maryland Road', 'HUMMS', '1999-06-04', 'Chinese', 'Catholic', 'Nadean Vane', 'Nadean Vane', 'Nadean Vane', 2147483647, '2016-07-10 07:03:34', NULL, NULL, NULL, NULL, NULL, NULL, 76, 'Graduated', 'antipolos2.png', '2018-2019'),
('105314532325', 'Challis', 'Thedrick', 'Goom', 'Male', '24 Kropf Alley', 'ABM', '2000-05-09', 'English', 'Christian', 'Thedrick Goom', 'Thedrick Goom', 'Thedrick Goom', 1798634038, '2016-04-12 05:21:31', NULL, NULL, NULL, NULL, NULL, NULL, 77, 'Graduated', 'antipolos2.png', '2018-2019'),
('105385961906', 'Iverson', 'Kevon', 'Pittwood', 'Male', '61 Lighthouse Bay Point', 'HUMMS', '2001-03-17', 'Tagalog', 'Catholic', 'Kevon Pittwood', 'Kevon Pittwood', 'Kevon Pittwood', 2147483647, '2015-02-20 08:08:22', NULL, NULL, NULL, NULL, NULL, NULL, 78, 'Graduated', 'antipolos2.png', '2018-2019'),
('105577614616', 'Phippin', 'Odelinda', 'Casillas', 'Female', '3105 Twin Pines Terrace', 'HUMMS', '2001-02-15', 'Chinese', 'Catholic', 'Odelinda Casillas', 'Odelinda Casillas', 'Odelinda Casillas', 2147483647, '2016-06-10 15:34:05', NULL, NULL, NULL, NULL, NULL, NULL, 79, 'Graduated', 'antipolos2.png', '2018-2019'),
('105931819042', 'Marchington', 'Ken', 'Phelips', 'Male', '58 Express Plaza', 'GAS', '2000-09-04', 'Malay', 'Catholic', 'Ken Phelips', 'Ken Phelips', 'Ken Phelips', 2147483647, '2015-12-20 15:48:25', NULL, NULL, NULL, NULL, NULL, NULL, 80, 'Graduated', 'antipolos2.png', '2018-2019'),
('106183438685', 'Treske', 'Carlen', 'Gaddesby', 'Female', '6815 Birchwood Place', 'HUMMS', '2000-11-09', 'Malay', 'Christian', 'Carlen Gaddesby', 'Carlen Gaddesby', 'Carlen Gaddesby', 2147483647, '2015-09-26 17:56:17', NULL, NULL, NULL, NULL, NULL, NULL, 81, 'Graduated', 'antipolos2.png', '2018-2019'),
('106205849481', 'Eckart', 'Adrianne', 'Debrett', 'Female', '8242 Artisan Hill', 'ABM', '1999-09-29', 'Malay', 'Christian', 'Adrianne Debrett', 'Adrianne Debrett', 'Adrianne Debrett', 2147483647, '2016-05-16 17:12:13', NULL, NULL, NULL, NULL, NULL, NULL, 82, 'Graduated', 'antipolos2.png', '2018-2019'),
('106454094277', 'Staden', 'Ruddie', 'Huddlestone', 'Male', '763 Goodland Road', 'GAS', '1999-08-05', 'Tagalog', 'Christian', 'Ruddie Huddlestone', 'Ruddie Huddlestone', 'Ruddie Huddlestone', 2147483647, '2016-09-16 12:31:23', NULL, NULL, NULL, NULL, NULL, NULL, 83, 'Graduated', 'antipolos2.png', '2018-2019'),
('106588130448', 'Beesley', 'Nerta', 'Doumerque', 'Female', '6 Derek Road', 'STEM', '2000-12-13', 'Malay', 'Christian', 'Nerta Doumerque', 'Nerta Doumerque', 'Nerta Doumerque', 2147483647, '2015-08-07 02:20:52', NULL, NULL, NULL, NULL, NULL, NULL, 84, 'Graduated', 'antipolos2.png', '2018-2019'),
('106629537694', 'Jaukovic', 'Trisha', 'Borsay', 'Female', '763 Hagan Lane', 'HUMMS', '1999-02-02', 'Tagalog', 'Christian', 'Trisha Borsay', 'Trisha Borsay', 'Trisha Borsay', 2147483647, '2015-03-23 03:41:23', NULL, NULL, NULL, NULL, NULL, NULL, 85, 'Graduated', 'antipolos2.png', '2018-2019'),
('106636992396', 'Bellerby', 'Inigo', 'Crossby', 'Male', '43 Briar Crest Plaza', 'ABM', '1999-08-11', 'Tagalog', 'Catholic', 'Inigo Crossby', 'Inigo Crossby', 'Inigo Crossby', 2147483647, '2016-10-21 16:53:40', NULL, NULL, NULL, NULL, NULL, NULL, 86, 'Graduated', 'antipolos2.png', '2018-2019'),
('106825277708', 'Sherrett', 'Scotti', 'Briton', 'Male', '6 Kings Court', 'ABM', '2001-01-21', 'Malay', 'Catholic', 'Scotti Briton', 'Scotti Briton', 'Scotti Briton', 2147483647, '2016-07-03 16:06:15', NULL, NULL, NULL, NULL, NULL, NULL, 87, 'Graduated', 'antipolos2.png', '2018-2019'),
('107227655200', 'Yarnell', 'Antonio', 'Stollenwerck', 'Male', '6864 Forster Circle', 'ABM', '2001-08-02', 'Filipino', 'Catholic', 'Antonio Stollenwerck', 'Antonio Stollenwerck', 'Antonio Stollenwerck', 2147483647, '2017-01-26 10:12:42', NULL, NULL, NULL, NULL, NULL, NULL, 88, 'Graduated', 'antipolos2.png', '2018-2019'),
('107434383457', 'Libby', 'Celene', 'O\'Cassidy', 'Female', '943 Oakridge Point', 'ABM', '1999-07-27', 'Malay', 'Christian', 'Celene O\'Cassidy', 'Celene O\'Cassidy', 'Celene O\'Cassidy', 2147483647, '2015-12-14 22:06:43', NULL, NULL, NULL, NULL, NULL, NULL, 89, 'Graduated', 'antipolos2.png', '2018-2019'),
('107550787124', 'Chevis', 'Lonnie', 'Cleatherow', 'Male', '507 Carpenter Crossing', 'ABM', '2000-04-08', 'English', 'Christian', 'Lonnie Cleatherow', 'Lonnie Cleatherow', 'Lonnie Cleatherow', 2147483647, '2015-12-01 14:01:14', NULL, NULL, NULL, NULL, NULL, NULL, 90, 'Graduated', 'antipolos2.png', '2018-2019'),
('107554585748', 'Towers', 'Renate', 'Tallow', 'Female', '9833 Tomscot Court', 'HUMMS', '2000-10-18', 'English', 'Catholic', 'Renate Tallow', 'Renate Tallow', 'Renate Tallow', 2147483647, '2016-10-26 11:15:38', NULL, NULL, NULL, NULL, NULL, NULL, 91, 'Graduated', 'antipolos2.png', '2018-2019'),
('107575902108', 'Rops', 'Mala', 'Alabone', 'Female', '989 Golf Point', 'GAS', '2000-06-11', 'English', 'Christian', 'Mala Alabone', 'Mala Alabone', 'Mala Alabone', 2147483647, '2017-01-03 03:02:07', NULL, NULL, NULL, NULL, NULL, NULL, 92, 'Graduated', 'antipolos2.png', '2018-2019'),
('107696918832', 'Dunford', 'Jillian', 'Stannas', 'Female', '0383 Commercial Junction', 'GAS', '2001-10-25', 'Chinese', 'Catholic', 'Jillian Stannas', 'Jillian Stannas', 'Jillian Stannas', 2147483647, '2016-07-06 22:22:10', NULL, NULL, NULL, NULL, NULL, NULL, 93, 'Graduated', 'antipolos2.png', '2018-2019'),
('107697089516', 'Shanks', 'Giana', 'Antliff', 'Female', '42 Parkside Pass', 'ABM', '2001-08-20', 'Malay', 'Catholic', 'Giana Antliff', 'Giana Antliff', 'Giana Antliff', 2147483647, '2016-03-28 13:19:05', NULL, NULL, NULL, NULL, NULL, NULL, 94, 'Graduated', 'antipolos2.png', '2018-2019'),
('108073566640', 'Bosward', 'Rosie', 'Scamerdine', 'Female', '6304 Hallows Park', 'GAS', '2000-01-16', 'Malay', 'Catholic', 'Rosie Scamerdine', 'Rosie Scamerdine', 'Rosie Scamerdine', 2147483647, '2016-08-31 01:08:10', NULL, NULL, NULL, NULL, NULL, NULL, 95, 'Graduated', 'antipolos2.png', '2018-2019'),
('108299121722', 'Bonifacio', 'Alfi', 'Dyer', 'Female', '419 Bonner Lane', 'STEM', '1999-09-29', 'Malay', 'Christian', 'Alfi Dyer', 'Alfi Dyer', 'Alfi Dyer', 2147483647, '2016-02-11 00:30:34', NULL, NULL, NULL, NULL, NULL, NULL, 96, 'Graduated', 'antipolos2.png', '2018-2019'),
('108319176561', 'Matyashev', 'Lurlene', 'Windaybank', 'Female', '6051 Shoshone Drive', 'ABM', '2000-07-23', 'Chinese', 'Christian', 'Lurlene Windaybank', 'Lurlene Windaybank', 'Lurlene Windaybank', 2147483647, '2015-07-27 05:40:27', NULL, NULL, NULL, NULL, NULL, NULL, 97, 'Graduated', 'antipolos2.png', '2018-2019'),
('108338334906', 'Fouracres', 'Chad', 'Starkey', 'Male', '4297 Old Shore Pass', 'HUMMS', '2001-03-21', 'English', 'Catholic', 'Chad Starkey', 'Chad Starkey', 'Chad Starkey', 2147483647, '2015-04-22 16:51:49', NULL, NULL, NULL, NULL, NULL, NULL, 98, 'Graduated', 'antipolos2.png', '2018-2019'),
('108362974572', 'Kuschke', 'Emmye', 'Caslane', 'Female', '6756 Southridge Road', 'ABM', '2002-01-02', 'Filipino', 'Catholic', 'Emmye Caslane', 'Emmye Caslane', 'Emmye Caslane', 2147483647, '2015-05-18 20:54:44', NULL, NULL, NULL, NULL, NULL, NULL, 99, 'Graduated', 'antipolos2.png', '2018-2019'),
('108395285447', 'Botten', 'Betta', 'Bletsoe', 'Female', '293 Atwood Plaza', 'GAS', '2001-11-19', 'Malay', 'Christian', 'Betta Bletsoe', 'Betta Bletsoe', 'Betta Bletsoe', 2147483647, '2015-12-31 23:12:48', NULL, NULL, NULL, NULL, NULL, NULL, 100, 'Graduated', 'antipolos2.png', '2018-2019'),
('108399737247', 'Lundie', 'Cully', 'Cranham', 'Male', '93899 Sherman Way', 'ABM', '2001-02-28', 'Tagalog', 'Christian', 'Cully Cranham', 'Cully Cranham', 'Cully Cranham', 2147483647, '2016-09-19 06:31:26', NULL, NULL, NULL, NULL, NULL, NULL, 101, 'Graduated', 'antipolos2.png', '2018-2019'),
('108424807441', 'Theodore', 'Alisa', 'Domerq', 'Female', '2 Towne Road', 'GAS', '2000-02-09', 'Malay', 'Catholic', 'Alisa Domerq', 'Alisa Domerq', 'Alisa Domerq', 2147483647, '2016-05-18 05:31:34', NULL, NULL, NULL, NULL, NULL, NULL, 102, 'Graduated', 'antipolos2.png', '2018-2019'),
('108451117831', 'Biddles', 'Sergei', 'Howbrook', 'Male', '2 Superior Junction', 'STEM', '2001-02-09', 'English', 'Catholic', 'Sergei Howbrook', 'Sergei Howbrook', 'Sergei Howbrook', 2147483647, '2016-11-08 14:44:51', NULL, NULL, NULL, NULL, NULL, NULL, 103, 'Graduated', 'antipolos2.png', '2018-2019'),
('108465611215', 'Coulthard', 'Hilarius', 'Miner', 'Male', '40 Ronald Regan Hill', 'HUMMS', '2002-01-15', 'Chinese', 'Christian', 'Hilarius Miner', 'Hilarius Miner', 'Hilarius Miner', 2147483647, '2015-05-24 18:32:33', NULL, NULL, NULL, NULL, NULL, NULL, 104, 'Graduated', 'antipolos2.png', '2018-2019'),
('108472803994', 'Ivanchikov', 'Juan', 'Ksandra', 'Male', '307 Eliot Park', 'HUMMS', '1999-03-30', 'English', 'Catholic', 'Juan Ksandra', 'Juan Ksandra', 'Juan Ksandra', 2147483647, '2017-01-15 00:50:16', NULL, NULL, NULL, NULL, NULL, NULL, 105, 'Graduated', 'antipolos2.png', '2018-2019'),
('108680680608', 'Thies', 'Renae', 'Hanington', 'Female', '97 David Terrace', 'GAS', '2000-03-07', 'Tagalog', 'Christian', 'Renae Hanington', 'Renae Hanington', 'Renae Hanington', 2147483647, '2016-02-21 19:05:01', NULL, NULL, NULL, NULL, NULL, NULL, 106, 'Graduated', 'antipolos2.png', '2018-2019'),
('108923612960', 'Lawless', 'Godfrey', 'Kunzelmann', 'Male', '14905 Crescent Oaks Way', 'STEM', '2000-10-29', 'Malay', 'Christian', 'Godfrey Kunzelmann', 'Godfrey Kunzelmann', 'Godfrey Kunzelmann', 2147483647, '2015-10-31 16:59:16', NULL, NULL, NULL, NULL, NULL, NULL, 107, 'Graduated', 'antipolos2.png', '2018-2019'),
('109007384880', 'Langeley', 'Marybelle', 'Hildred', 'Female', '29594 Starling Circle', 'ABM', '2000-08-13', 'English', 'Catholic', 'Marybelle Hildred', 'Marybelle Hildred', 'Marybelle Hildred', 2147483647, '2016-08-16 01:34:43', NULL, NULL, NULL, NULL, NULL, NULL, 108, 'Graduated', 'antipolos2.png', '2018-2019'),
('109252613165', 'Scholar', 'Nelia', 'Dunbobbin', 'Female', '22013 Redwing Lane', 'ABM', '2001-08-08', 'Filipino', 'Catholic', 'Nelia Dunbobbin', 'Nelia Dunbobbin', 'Nelia Dunbobbin', 2147483647, '2016-05-04 17:54:22', NULL, NULL, NULL, NULL, NULL, NULL, 109, 'Graduated', 'antipolos2.png', '2018-2019'),
('109281862686', 'Lawrey', 'Cozmo', 'Rowcliffe', 'Male', '87179 Londonderry Point', 'GAS', '2002-01-13', 'Filipino', 'Christian', 'Cozmo Rowcliffe', 'Cozmo Rowcliffe', 'Cozmo Rowcliffe', 2147483647, '2016-05-01 13:03:14', NULL, NULL, NULL, NULL, NULL, NULL, 110, 'Graduated', 'antipolos2.png', '2018-2019'),
('109558748215', 'Minot', 'Sheryl', 'Hurd', 'Female', '57123 Aberg Court', 'ABM', '2001-08-11', 'Malay', 'Catholic', 'Sheryl Hurd', 'Sheryl Hurd', 'Sheryl Hurd', 2147483647, '2015-11-20 06:40:59', NULL, NULL, NULL, NULL, NULL, NULL, 111, 'Graduated', 'antipolos2.png', '2018-2019'),
('109658784773', 'Beaves', 'Livvie', 'Chinnick', 'Female', '9286 Carioca Lane', 'GAS', '1999-07-22', 'Tagalog', 'Catholic', 'Livvie Chinnick', 'Livvie Chinnick', 'Livvie Chinnick', 2147483647, '2016-10-11 01:22:19', NULL, NULL, NULL, NULL, NULL, NULL, 112, 'Graduated', 'antipolos2.png', '2018-2019'),
('109733122064', 'Lacheze', 'Tonia', 'Wisdish', 'Female', '04 Kennedy Parkway', 'HUMMS', '2001-01-10', 'English', 'Catholic', 'Tonia Wisdish', 'Tonia Wisdish', 'Tonia Wisdish', 2147483647, '2015-12-31 05:21:29', NULL, NULL, NULL, NULL, NULL, NULL, 113, 'Graduated', 'antipolos2.png', '2018-2019'),
('110220668996', 'Farrington', 'Adelice', 'Furmedge', 'Female', '334 Chive Plaza', 'HUMMS', '2000-03-22', 'Filipino', 'Catholic', 'Adelice Furmedge', 'Adelice Furmedge', 'Adelice Furmedge', 2147483647, '2015-03-28 06:58:46', NULL, NULL, NULL, NULL, NULL, NULL, 114, 'Graduated', 'antipolos2.png', '2018-2019'),
('110234445121', 'Stearnes', 'Mikol', 'Bithell', 'Male', '44 Lakewood Hill', 'ABM', '2000-08-15', 'Malay', 'Catholic', 'Mikol Bithell', 'Mikol Bithell', 'Mikol Bithell', 1228156139, '2015-10-13 01:01:58', NULL, NULL, NULL, NULL, NULL, NULL, 115, 'Graduated', 'antipolos2.png', '2018-2019'),
('110247344658', 'Blanchflower', 'Brod', 'Insull', 'Male', '8 Thierer Road', 'STEM', '1999-02-05', 'Chinese', 'Christian', 'Brod Insull', 'Brod Insull', 'Brod Insull', 2147483647, '2015-03-17 11:29:28', NULL, NULL, NULL, NULL, NULL, NULL, 116, 'Graduated', 'antipolos2.png', '2018-2019'),
('110265299766', 'Allone', 'Rebekah', 'Gorrissen', 'Female', '5684 Debra Pass', 'ABM', '2001-02-01', 'Tagalog', 'Christian', 'Rebekah Gorrissen', 'Rebekah Gorrissen', 'Rebekah Gorrissen', 1333274547, '2016-08-09 21:17:14', NULL, NULL, NULL, NULL, NULL, NULL, 117, 'Graduated', 'antipolos2.png', '2018-2019'),
('110265451968', 'Beckles', 'Blane', 'Hollerin', 'Male', '2 Delladonna Point', 'STEM', '1999-10-15', 'Filipino', 'Catholic', 'Blane Hollerin', 'Blane Hollerin', 'Blane Hollerin', 2147483647, '2016-06-29 07:28:03', NULL, NULL, NULL, NULL, NULL, NULL, 118, 'Graduated', 'antipolos2.png', '2018-2019'),
('110608838298', 'Macklam', 'Trevor', 'Losbie', 'Male', '04086 Manufacturers Center', 'ABM', '1999-07-24', 'Malay', 'Catholic', 'Trevor Losbie', 'Trevor Losbie', 'Trevor Losbie', 2147483647, '2016-03-28 22:28:40', NULL, NULL, NULL, NULL, NULL, NULL, 119, 'Graduated', 'antipolos2.png', '2018-2019'),
('110624261062', 'Oakden', 'Tuesday', 'Berks', 'Female', '05139 Leroy Lane', 'ABM', '2000-11-08', 'Malay', 'Catholic', 'Tuesday Berks', 'Tuesday Berks', 'Tuesday Berks', 2147483647, '2016-04-06 14:33:02', NULL, NULL, NULL, NULL, NULL, NULL, 120, 'Graduated', 'antipolos2.png', '2018-2019'),
('110737508260', 'Haining', 'Sheffie', 'De Filippo', 'Male', '6 Reinke Alley', 'HUMMS', '1999-03-12', 'Chinese', 'Christian', 'Sheffie De Filippo', 'Sheffie De Filippo', 'Sheffie De Filippo', 2147483647, '2015-07-18 17:43:23', NULL, NULL, NULL, NULL, NULL, NULL, 121, 'Graduated', 'antipolos2.png', '2018-2019'),
('110900524454', 'Dietz', 'Giavani', 'Lurriman', 'Male', '51 Clove Parkway', 'GAS', '2001-10-04', 'Filipino', 'Christian', 'Giavani Lurriman', 'Giavani Lurriman', 'Giavani Lurriman', 2147483647, '2016-04-27 08:38:05', NULL, NULL, NULL, NULL, NULL, NULL, 122, 'Graduated', 'antipolos2.png', '2018-2019'),
('110909532718', 'Simon', 'Jarad', 'Coslitt', 'Male', '59662 Petterle Drive', 'GAS', '1999-07-02', 'Tagalog', 'Christian', 'Jarad Coslitt', 'Jarad Coslitt', 'Jarad Coslitt', 1204862691, '2015-10-06 05:00:20', NULL, NULL, NULL, NULL, NULL, NULL, 123, 'Graduated', 'antipolos2.png', '2018-2019'),
('110965820945', 'Mardling', 'Hildagard', 'Jentle', 'Female', '81747 Dawn Way', 'ABM', '1999-07-10', 'Filipino', 'Catholic', 'Hildagard Jentle', 'Hildagard Jentle', 'Hildagard Jentle', 2147483647, '2016-05-05 15:25:17', NULL, NULL, NULL, NULL, NULL, NULL, 124, 'Graduated', 'antipolos2.png', '2018-2019'),
('111103108596', 'Creyke', 'Matti', 'McVitie', 'Female', '8537 Crownhardt Pass', 'GAS', '2000-07-06', 'Filipino', 'Christian', 'Matti McVitie', 'Matti McVitie', 'Matti McVitie', 2147483647, '2016-08-11 08:42:46', NULL, NULL, NULL, NULL, NULL, NULL, 125, 'Graduated', 'antipolos2.png', '2018-2019'),
('111145058626', 'Bough', 'Kym', 'Pierri', 'Female', '99 Talmadge Place', 'GAS', '2001-06-06', 'Filipino', 'Christian', 'Kym Pierri', 'Kym Pierri', 'Kym Pierri', 2147483647, '2016-03-05 06:58:18', NULL, NULL, NULL, NULL, NULL, NULL, 126, 'Graduated', 'antipolos2.png', '2018-2019'),
('111328894649', 'Tift', 'Talbot', 'Loton', 'Male', '593 Thackeray Way', 'ABM', '2001-07-16', 'Chinese', 'Catholic', 'Talbot Loton', 'Talbot Loton', 'Talbot Loton', 2147483647, '2015-05-19 14:51:26', NULL, NULL, NULL, NULL, NULL, NULL, 127, 'Graduated', 'antipolos2.png', '2018-2019'),
('111412535050', 'Ruprich', 'Clarey', 'Ambrodi', 'Female', '2 Valley Edge Alley', 'ABM', '1999-03-24', 'Filipino', 'Christian', 'Clarey Ambrodi', 'Clarey Ambrodi', 'Clarey Ambrodi', 2147483647, '2015-03-11 01:15:12', NULL, NULL, NULL, NULL, NULL, NULL, 128, 'Graduated', 'antipolos2.png', '2018-2019'),
('111471687838', 'Claire', 'Olivette', 'MacPadene', 'Female', '67126 Almo Plaza', 'HUMMS', '2000-02-21', 'Filipino', 'Christian', 'Olivette MacPadene', 'Olivette MacPadene', 'Olivette MacPadene', 2147483647, '2016-09-23 19:42:48', NULL, NULL, NULL, NULL, NULL, NULL, 129, 'Graduated', 'antipolos2.png', '2018-2019'),
('111494584052', 'Bolmann', 'Austin', 'Tangye', 'Male', '271 Carberry Terrace', 'STEM', '2000-03-10', 'Chinese', 'Christian', 'Austin Tangye', 'Austin Tangye', 'Austin Tangye', 2147483647, '2016-10-24 13:50:51', NULL, NULL, NULL, NULL, NULL, NULL, 130, 'Graduated', 'antipolos2.png', '2018-2019'),
('111547308671', 'Ingleson', 'Jamison', 'Boick', 'Male', '4 Anderson Way', 'GAS', '2000-08-08', 'Filipino', 'Catholic', 'Jamison Boick', 'Jamison Boick', 'Jamison Boick', 2147483647, '2016-01-15 07:37:32', NULL, NULL, NULL, NULL, NULL, NULL, 131, 'Graduated', 'antipolos2.png', '2018-2019'),
('111583128721', 'Savine', 'Berkie', 'Ruck', 'Male', '202 Nova Avenue', 'ABM', '2000-08-31', 'Tagalog', 'Catholic', 'Berkie Ruck', 'Berkie Ruck', 'Berkie Ruck', 2072631295, '2016-12-10 17:59:52', NULL, NULL, NULL, NULL, NULL, NULL, 132, 'Graduated', 'antipolos2.png', '2018-2019'),
('111735938087', 'Hought', 'Taffy', 'Beri', 'Female', '738 Wayridge Terrace', 'ABM', '2002-01-24', 'Malay', 'Christian', 'Taffy Beri', 'Taffy Beri', 'Taffy Beri', 2147483647, '2016-10-21 19:52:34', NULL, NULL, NULL, NULL, NULL, NULL, 133, 'Graduated', 'antipolos2.png', '2018-2019'),
('111966336890', 'True', 'Goldina', 'Roddick', 'Female', '50 Merrick Place', 'ABM', '1999-06-18', 'Malay', 'Christian', 'Goldina Roddick', 'Goldina Roddick', 'Goldina Roddick', 2147483647, '2016-04-26 03:23:43', NULL, NULL, NULL, NULL, NULL, NULL, 134, 'Graduated', 'antipolos2.png', '2018-2019'),
('111992110941', 'Ramelet', 'Laverne', 'Woodgate', 'Female', '3 Arapahoe Terrace', 'HUMMS', '1999-12-14', 'Filipino', 'Christian', 'Laverne Woodgate', 'Laverne Woodgate', 'Laverne Woodgate', 2147483647, '2015-07-30 06:52:44', NULL, NULL, NULL, NULL, NULL, NULL, 135, 'Graduated', 'antipolos2.png', '2018-2019'),
('112218914628', 'Vlasin', 'Dylan', 'Pigeram', 'Male', '9783 Glendale Junction', 'ABM', '2001-04-03', 'Filipino', 'Catholic', 'Dylan Pigeram', 'Dylan Pigeram', 'Dylan Pigeram', 2147483647, '2015-11-05 08:34:28', NULL, NULL, NULL, NULL, NULL, NULL, 136, 'Graduated', 'antipolos2.png', '2018-2019'),
('112343518327', 'Gonnely', 'Diego', 'Langlais', 'Male', '02 Division Way', 'HUMMS', '2000-10-27', 'Malay', 'Christian', 'Diego Langlais', 'Diego Langlais', 'Diego Langlais', 2147483647, '2015-03-26 17:05:26', NULL, NULL, NULL, NULL, NULL, NULL, 137, 'Graduated', 'antipolos2.png', '2018-2019'),
('112404916645', 'Vogl', 'Jeffry', 'Meaddowcroft', 'Male', '7384 American Ash Center', 'GAS', '1999-07-31', 'Chinese', 'Catholic', 'Jeffry Meaddowcroft', 'Jeffry Meaddowcroft', 'Jeffry Meaddowcroft', 2147483647, '2016-03-03 01:06:40', NULL, NULL, NULL, NULL, NULL, NULL, 138, 'Graduated', 'antipolos2.png', '2018-2019'),
('112473205441', 'Raynton', 'Kirby', 'Peile', 'Female', '67 Wayridge Lane', 'ABM', '2000-11-05', 'Chinese', 'Catholic', 'Kirby Peile', 'Kirby Peile', 'Kirby Peile', 2147483647, '2015-10-21 13:59:47', NULL, NULL, NULL, NULL, NULL, NULL, 139, 'Graduated', 'antipolos2.png', '2018-2019'),
('112496893043', 'Grimme', 'Hyatt', 'Borges', 'Male', '712 Maple Crossing', 'STEM', '2001-05-30', 'Tagalog', 'Catholic', 'Hyatt Borges', 'Hyatt Borges', 'Hyatt Borges', 1981492817, '2016-04-16 15:09:50', NULL, NULL, NULL, NULL, NULL, NULL, 140, 'Graduated', 'antipolos2.png', '2018-2019'),
('112593424196', 'Foss', 'Reggis', 'Caseley', 'Male', '61 Pierstorff Trail', 'GAS', '2001-08-25', 'Chinese', 'Christian', 'Reggis Caseley', 'Reggis Caseley', 'Reggis Caseley', 2147483647, '2017-01-19 07:43:35', NULL, NULL, NULL, NULL, NULL, NULL, 141, 'Graduated', 'antipolos2.png', '2018-2019'),
('112611213853', 'Christofle', 'Manon', 'Letixier', 'Female', '358 Bonner Trail', 'ABM', '2001-11-27', 'Malay', 'Catholic', 'Manon Letixier', 'Manon Letixier', 'Manon Letixier', 2147483647, '2016-11-22 05:31:21', NULL, NULL, NULL, NULL, NULL, NULL, 142, 'Graduated', 'antipolos2.png', '2018-2019'),
('112735953459', 'Mort', 'Harmonia', 'Shay', 'Female', '9 Superior Way', 'ABM', '2001-09-15', 'English', 'Christian', 'Harmonia Shay', 'Harmonia Shay', 'Harmonia Shay', 1281847836, '2015-10-28 00:33:38', NULL, NULL, NULL, NULL, NULL, NULL, 143, 'Graduated', 'antipolos2.png', '2018-2019'),
('112869756882', 'Bollen', 'Easter', 'Aldcorne', 'Female', '1150 Talisman Circle', 'ABM', '2001-01-20', 'Tagalog', 'Catholic', 'Easter Aldcorne', 'Easter Aldcorne', 'Easter Aldcorne', 2147483647, '2015-02-22 13:06:28', NULL, NULL, NULL, NULL, NULL, NULL, 144, 'Graduated', 'antipolos2.png', '2018-2019'),
('112939860326', 'Hucker', 'Ginelle', 'Eskell', 'Female', '7894 Brentwood Court', 'GAS', '2000-04-16', 'Filipino', 'Christian', 'Ginelle Eskell', 'Ginelle Eskell', 'Ginelle Eskell', 2147483647, '2015-12-01 09:51:24', NULL, NULL, NULL, NULL, NULL, NULL, 145, 'Graduated', 'antipolos2.png', '2018-2019'),
('113302168395', 'Jobes', 'Fremont', 'Askham', 'Male', '951 Superior Place', 'HUMMS', '2001-02-01', 'Malay', 'Catholic', 'Fremont Askham', 'Fremont Askham', 'Fremont Askham', 2147483647, '2015-02-22 15:49:44', NULL, NULL, NULL, NULL, NULL, NULL, 146, 'Graduated', 'antipolos2.png', '2018-2019'),
('113305299417', 'Kasher', 'Dannel', 'Sturges', 'Male', '8 Southridge Junction', 'HUMMS', '2001-08-09', 'Tagalog', 'Catholic', 'Dannel Sturges', 'Dannel Sturges', 'Dannel Sturges', 1908657376, '2016-11-20 09:25:13', NULL, NULL, NULL, NULL, NULL, NULL, 147, 'Graduated', 'antipolos2.png', '2018-2019'),
('113307039502', 'Snel', 'Nanice', 'Bowick', 'Female', '54837 Cherokee Street', 'ABM', '2000-03-24', 'Malay', 'Catholic', 'Nanice Bowick', 'Nanice Bowick', 'Nanice Bowick', 2147483647, '2016-12-27 19:02:25', NULL, NULL, NULL, NULL, NULL, NULL, 148, 'Graduated', 'antipolos2.png', '2018-2019'),
('113582575891', 'Heathorn', 'Britni', 'Bradforth', 'Female', '07 Mayfield Trail', 'ABM', '1999-06-05', 'Filipino', 'Christian', 'Britni Bradforth', 'Britni Bradforth', 'Britni Bradforth', 2147483647, '2016-09-25 17:53:25', NULL, NULL, NULL, NULL, NULL, NULL, 149, 'Graduated', 'antipolos2.png', '2018-2019'),
('113632897283', 'Whittington', 'Isis', 'Melloy', 'Female', '640 Westridge Circle', 'STEM', '1999-12-21', 'Tagalog', 'Christian', 'Isis Melloy', 'Isis Melloy', 'Isis Melloy', 2147483647, '2016-04-16 14:32:16', NULL, NULL, NULL, NULL, NULL, NULL, 150, 'Graduated', 'antipolos2.png', '2018-2019'),
('113667970471', 'Peterkin', 'Amandie', 'Luby', 'Female', '2526 Springview Crossing', 'GAS', '2000-12-28', 'Malay', 'Catholic', 'Amandie Luby', 'Amandie Luby', 'Amandie Luby', 1703482011, '2015-06-19 18:09:53', NULL, NULL, NULL, NULL, NULL, NULL, 151, 'Graduated', 'antipolos2.png', '2018-2019'),
('114027853152', 'Coiley', 'Lavinia', 'Kyndred', 'Female', '43 Morningstar Point', 'STEM', '2000-10-06', 'Tagalog', 'Catholic', 'Lavinia Kyndred', 'Lavinia Kyndred', 'Lavinia Kyndred', 2147483647, '2016-08-08 06:02:58', NULL, NULL, NULL, NULL, NULL, NULL, 152, 'Graduated', 'antipolos2.png', '2018-2019'),
('114030983710', 'Laidler', 'Arvie', 'Kinastan', 'Male', '4 Schiller Avenue', 'HUMMS', '2000-04-24', 'Malay', 'Christian', 'Arvie Kinastan', 'Arvie Kinastan', 'Arvie Kinastan', 2147483647, '2015-05-23 02:29:07', NULL, NULL, NULL, NULL, NULL, NULL, 153, 'Graduated', 'antipolos2.png', '2018-2019'),
('114073869925', 'Graybeal', 'Wilton', 'Jurczak', 'Male', '583 Butternut Parkway', 'STEM', '2002-01-19', 'English', 'Catholic', 'Wilton Jurczak', 'Wilton Jurczak', 'Wilton Jurczak', 2147483647, '2016-04-22 02:39:29', NULL, NULL, NULL, NULL, NULL, NULL, 154, 'Graduated', 'antipolos2.png', '2018-2019'),
('114079962615', 'Mulvey', 'Reeva', 'Mannie', 'Female', '50 Ohio Pass', 'GAS', '2000-12-11', 'Tagalog', 'Christian', 'Reeva Mannie', 'Reeva Mannie', 'Reeva Mannie', 2147483647, '2015-08-10 14:13:28', NULL, NULL, NULL, NULL, NULL, NULL, 155, 'Graduated', 'antipolos2.png', '2018-2019'),
('114196477575', 'Brunini', 'Cissy', 'Byrnes', 'Female', '13264 Butterfield Street', 'GAS', '1999-09-10', 'English', 'Christian', 'Cissy Byrnes', 'Cissy Byrnes', 'Cissy Byrnes', 2147483647, '2016-08-18 11:49:21', NULL, NULL, NULL, NULL, NULL, NULL, 156, 'Graduated', 'antipolos2.png', '2018-2019'),
('114251205028', 'Uff', 'Merwin', 'Farnan', 'Male', '3834 Fulton Plaza', 'STEM', '2001-08-20', 'Filipino', 'Catholic', 'Merwin Farnan', 'Merwin Farnan', 'Merwin Farnan', 2147483647, '2016-08-06 17:29:49', NULL, NULL, NULL, NULL, NULL, NULL, 157, 'Graduated', 'antipolos2.png', '2018-2019'),
('114297232777', 'Rosenqvist', 'Tibold', 'Brewers', 'Male', '2 Summer Ridge Street', 'GAS', '2001-04-13', 'Filipino', 'Catholic', 'Tibold Brewers', 'Tibold Brewers', 'Tibold Brewers', 2147483647, '2015-09-28 19:50:55', NULL, NULL, NULL, NULL, NULL, NULL, 158, 'Graduated', 'antipolos2.png', '2018-2019'),
('114332704218', 'Wintringham', 'Sigfried', 'Tourry', 'Male', '72933 Thompson Alley', 'HUMMS', '2000-08-15', 'Chinese', 'Christian', 'Sigfried Tourry', 'Sigfried Tourry', 'Sigfried Tourry', 2147483647, '2015-09-26 02:21:35', NULL, NULL, NULL, NULL, NULL, NULL, 159, 'Graduated', 'antipolos2.png', '2018-2019'),
('114718183332', 'Salmen', 'Rae', 'Venes', 'Female', '6 Sunnyside Road', 'HUMMS', '2000-10-13', 'Tagalog', 'Catholic', 'Rae Venes', 'Rae Venes', 'Rae Venes', 2147483647, '2015-10-19 19:50:45', NULL, NULL, NULL, NULL, NULL, NULL, 160, 'Graduated', 'antipolos2.png', '2018-2019'),
('114734914958', 'Oxx', 'Annnora', 'Teacy', 'Female', '878 Red Cloud Road', 'STEM', '2000-03-01', 'Filipino', 'Catholic', 'Annnora Teacy', 'Annnora Teacy', 'Annnora Teacy', 2147483647, '2016-10-04 15:02:55', NULL, NULL, NULL, NULL, NULL, NULL, 161, 'Graduated', 'antipolos2.png', '2018-2019'),
('114916264130', 'Tivolier', 'Dyana', 'Solleme', 'Female', '19 North Road', 'GAS', '2001-01-12', 'English', 'Catholic', 'Dyana Solleme', 'Dyana Solleme', 'Dyana Solleme', 2147483647, '2015-07-12 17:30:59', NULL, NULL, NULL, NULL, NULL, NULL, 162, 'Graduated', 'antipolos2.png', '2018-2019'),
('115019417160', 'McGurgan', 'Chrisse', 'Waliszek', 'Male', '081 Farmco Center', 'HUMMS', '2001-05-23', 'Filipino', 'Christian', 'Chrisse Waliszek', 'Chrisse Waliszek', 'Chrisse Waliszek', 2147483647, '2015-04-02 13:44:09', NULL, NULL, NULL, NULL, NULL, NULL, 163, 'Graduated', 'antipolos2.png', '2018-2019'),
('115040507863', 'McKinstry', 'Ysabel', 'Bagguley', 'Female', '91 Hansons Drive', 'HUMMS', '2000-07-31', 'English', 'Christian', 'Ysabel Bagguley', 'Ysabel Bagguley', 'Ysabel Bagguley', 2147483647, '2015-04-03 04:14:08', NULL, NULL, NULL, NULL, NULL, NULL, 164, 'Graduated', 'antipolos2.png', '2018-2019'),
('115129771386', 'Walthall', 'Mort', 'Fielders', 'Male', '6 Merry Way', 'HUMMS', '2000-11-03', 'Tagalog', 'Catholic', 'Mort Fielders', 'Mort Fielders', 'Mort Fielders', 2147483647, '2015-09-17 00:11:06', NULL, NULL, NULL, NULL, NULL, NULL, 165, 'Graduated', 'antipolos2.png', '2018-2019'),
('115292525119', 'Jupp', 'Donnell', 'von Hagt', 'Male', '4 Arapahoe Point', 'HUMMS', '1999-10-31', 'English', 'Christian', 'Donnell von Hagt', 'Donnell von Hagt', 'Donnell von Hagt', 2147483647, '2015-06-03 21:12:05', NULL, NULL, NULL, NULL, NULL, NULL, 166, 'Graduated', 'antipolos2.png', '2018-2019'),
('115578132892', 'McGaw', 'Blaire', 'Caulder', 'Female', '51473 Westridge Plaza', 'STEM', '2001-06-21', 'Malay', 'Catholic', 'Blaire Caulder', 'Blaire Caulder', 'Blaire Caulder', 2147483647, '2017-01-27 17:42:31', NULL, NULL, NULL, NULL, NULL, NULL, 167, 'Graduated', 'antipolos2.png', '2018-2019');
INSERT INTO `grads` (`adhaar_no`, `lname`, `fname`, `learner_midname`, `gender`, `address`, `strand`, `dob`, `mother_tongue`, `religion`, `father_name`, `mother_name`, `guardian_name`, `mobile_no`, `created_at`, `updated_at`, `status`, `alternate_mobile_no`, `email_id`, `extra_note`, `roll_no`, `stu_id`, `grade`, `photo`, `class`) VALUES
('115773936084', 'Cappineer', 'Lexi', 'Robart', 'Female', '22808 Jay Road', 'GAS', '2000-11-06', 'Filipino', 'Catholic', 'Lexi Robart', 'Lexi Robart', 'Lexi Robart', 2147483647, '2016-10-13 09:25:11', NULL, NULL, NULL, NULL, NULL, NULL, 168, 'Graduated', 'antipolos2.png', '2018-2019'),
('116039479760', 'Burgher', 'Michelina', 'Bolesworth', 'Female', '90578 Sage Place', 'ABM', '2001-02-26', 'Malay', 'Catholic', 'Michelina Bolesworth', 'Michelina Bolesworth', 'Michelina Bolesworth', 2147483647, '2015-11-08 00:49:29', NULL, NULL, NULL, NULL, NULL, NULL, 169, 'Graduated', 'antipolos2.png', '2018-2019'),
('116048187241', 'Huxton', 'Demetre', 'Buzek', 'Male', '3025 Hansons Street', 'HUMMS', '2001-09-25', 'Malay', 'Catholic', 'Demetre Buzek', 'Demetre Buzek', 'Demetre Buzek', 2147483647, '2016-02-09 22:00:09', NULL, NULL, NULL, NULL, NULL, NULL, 170, 'Graduated', 'antipolos2.png', '2018-2019'),
('116346652385', 'Anchor', 'Chuck', 'McElrath', 'Male', '2627 Northwestern Avenue', 'STEM', '2000-07-31', 'Chinese', 'Christian', 'Chuck McElrath', 'Chuck McElrath', 'Chuck McElrath', 2147483647, '2016-06-21 23:57:40', NULL, NULL, NULL, NULL, NULL, NULL, 171, 'Graduated', 'antipolos2.png', '2018-2019'),
('116391039124', 'Gilpillan', 'Colleen', 'Bernadzki', 'Female', '1972 High Crossing Court', 'STEM', '2000-02-10', 'Chinese', 'Christian', 'Colleen Bernadzki', 'Colleen Bernadzki', 'Colleen Bernadzki', 2147483647, '2015-08-25 12:46:22', NULL, NULL, NULL, NULL, NULL, NULL, 172, 'Graduated', 'antipolos2.png', '2018-2019'),
('116532080396', 'Kibbe', 'Johnathon', 'Grene', 'Male', '47779 Morningstar Place', 'HUMMS', '2001-03-31', 'Filipino', 'Christian', 'Johnathon Grene', 'Johnathon Grene', 'Johnathon Grene', 2147483647, '2016-07-30 13:57:08', NULL, NULL, NULL, NULL, NULL, NULL, 173, 'Graduated', 'antipolos2.png', '2018-2019'),
('116789700088', 'Gookey', 'Culver', 'De Domenico', 'Male', '6 Dawn Parkway', 'ABM', '2000-01-30', 'Malay', 'Christian', 'Culver De Domenico', 'Culver De Domenico', 'Culver De Domenico', 2147483647, '2015-06-12 12:24:55', NULL, NULL, NULL, NULL, NULL, NULL, 174, 'Graduated', 'antipolos2.png', '2018-2019'),
('116828910896', 'Armfield', 'Lukas', 'Anderer', 'Male', '8 Hagan Trail', 'ABM', '1999-02-06', 'English', 'Catholic', 'Lukas Anderer', 'Lukas Anderer', 'Lukas Anderer', 2147483647, '2015-02-22 02:12:39', NULL, NULL, NULL, NULL, NULL, NULL, 175, 'Graduated', 'antipolos2.png', '2018-2019'),
('116885210256', 'Grogono', 'Charles', 'De Malchar', 'Male', '879 Hansons Road', 'HUMMS', '2001-04-08', 'English', 'Christian', 'Charles De Malchar', 'Charles De Malchar', 'Charles De Malchar', 2147483647, '2015-04-16 09:35:00', NULL, NULL, NULL, NULL, NULL, NULL, 176, 'Graduated', 'antipolos2.png', '2018-2019'),
('117002054509', 'McDonnell', 'Korry', 'Yushkin', 'Female', '050 Hazelcrest Alley', 'GAS', '1999-04-19', 'Tagalog', 'Catholic', 'Korry Yushkin', 'Korry Yushkin', 'Korry Yushkin', 2147483647, '2015-06-21 21:37:14', NULL, NULL, NULL, NULL, NULL, NULL, 177, 'Graduated', 'antipolos2.png', '2018-2019'),
('117054834942', 'Mardle', 'Goraud', 'Walewicz', 'Male', '18420 International Way', 'STEM', '2001-11-19', 'Tagalog', 'Christian', 'Goraud Walewicz', 'Goraud Walewicz', 'Goraud Walewicz', 2147483647, '2016-07-27 15:32:08', NULL, NULL, NULL, NULL, NULL, NULL, 178, 'Graduated', 'antipolos2.png', '2018-2019'),
('117088316470', 'Basire', 'Mack', 'Whitloe', 'Male', '36854 Messerschmidt Drive', 'ABM', '2000-07-29', 'Filipino', 'Catholic', 'Mack Whitloe', 'Mack Whitloe', 'Mack Whitloe', 2147483647, '2015-07-14 19:32:39', NULL, NULL, NULL, NULL, NULL, NULL, 179, 'Graduated', 'antipolos2.png', '2018-2019'),
('117147254139', 'Steedman', 'Dionis', 'Menary', 'Female', '94154 Truax Way', 'STEM', '1999-08-21', 'Tagalog', 'Catholic', 'Dionis Menary', 'Dionis Menary', 'Dionis Menary', 2147483647, '2016-09-22 14:46:31', NULL, NULL, NULL, NULL, NULL, NULL, 180, 'Graduated', 'antipolos2.png', '2018-2019'),
('117171078748', 'Alred', 'Flori', 'Ghione', 'Female', '4 Hansons Pass', 'HUMMS', '1999-01-31', 'Filipino', 'Christian', 'Flori Ghione', 'Flori Ghione', 'Flori Ghione', 2147483647, '2015-02-27 05:36:11', NULL, NULL, NULL, NULL, NULL, NULL, 181, 'Graduated', 'antipolos2.png', '2018-2019'),
('117206179953', 'Dudding', 'Karon', 'Stayt', 'Female', '7995 Erie Alley', 'STEM', '1999-09-26', 'Tagalog', 'Catholic', 'Karon Stayt', 'Karon Stayt', 'Karon Stayt', 1257175311, '2017-01-13 07:15:32', NULL, NULL, NULL, NULL, NULL, NULL, 182, 'Graduated', 'antipolos2.png', '2018-2019'),
('117242342349', 'Eymer', 'Michail', 'Maxfield', 'Male', '675 Johnson Point', 'ABM', '1999-04-28', 'Tagalog', 'Christian', 'Michail Maxfield', 'Michail Maxfield', 'Michail Maxfield', 2147483647, '2016-03-03 18:40:01', NULL, NULL, NULL, NULL, NULL, NULL, 183, 'Graduated', 'antipolos2.png', '2018-2019'),
('117311383546', 'Rolin', 'Katrinka', 'Laurenceau', 'Female', '15 Comanche Avenue', 'HUMMS', '2000-04-27', 'Chinese', 'Christian', 'Katrinka Laurenceau', 'Katrinka Laurenceau', 'Katrinka Laurenceau', 2147483647, '2016-09-01 21:50:16', NULL, NULL, NULL, NULL, NULL, NULL, 184, 'Graduated', 'antipolos2.png', '2018-2019'),
('117452259388', 'Sidebottom', 'Daffi', 'Cuthbertson', 'Female', '04 Manitowish Terrace', 'HUMMS', '2001-10-11', 'Malay', 'Christian', 'Daffi Cuthbertson', 'Daffi Cuthbertson', 'Daffi Cuthbertson', 2147483647, '2017-01-17 11:16:13', NULL, NULL, NULL, NULL, NULL, NULL, 185, 'Graduated', 'antipolos2.png', '2018-2019'),
('117455741553', 'Haugeh', 'Victoria', 'Imlin', 'Female', '08196 Sauthoff Road', 'GAS', '2000-11-13', 'Chinese', 'Christian', 'Victoria Imlin', 'Victoria Imlin', 'Victoria Imlin', 2147483647, '2015-03-24 06:17:00', NULL, NULL, NULL, NULL, NULL, NULL, 186, 'Graduated', 'antipolos2.png', '2018-2019'),
('117469565030', 'Cliffe', 'Hedvige', 'Asher', 'Female', '2059 Dryden Place', 'STEM', '2000-12-05', 'Chinese', 'Christian', 'Hedvige Asher', 'Hedvige Asher', 'Hedvige Asher', 2147483647, '2016-08-21 17:01:09', NULL, NULL, NULL, NULL, NULL, NULL, 187, 'Graduated', 'antipolos2.png', '2018-2019'),
('117486761986', 'Napper', 'Debbi', 'Tapper', 'Female', '15675 Manitowish Trail', 'ABM', '2000-06-23', 'Filipino', 'Christian', 'Debbi Tapper', 'Debbi Tapper', 'Debbi Tapper', 2147483647, '2015-05-07 21:19:03', NULL, NULL, NULL, NULL, NULL, NULL, 188, 'Graduated', 'antipolos2.png', '2018-2019'),
('117520330132', 'Baitey', 'Chic', 'Mouan', 'Male', '3526 Daystar Parkway', 'STEM', '2001-11-17', 'Malay', 'Catholic', 'Chic Mouan', 'Chic Mouan', 'Chic Mouan', 2147483647, '2016-02-08 03:33:28', NULL, NULL, NULL, NULL, NULL, NULL, 189, 'Graduated', 'antipolos2.png', '2018-2019'),
('117938166101', 'Teasdale-Markie', 'Lew', 'Chalmers', 'Male', '176 Sunnyside Terrace', 'ABM', '1999-08-24', 'Malay', 'Christian', 'Lew Chalmers', 'Lew Chalmers', 'Lew Chalmers', 2147483647, '2016-12-21 12:16:40', NULL, NULL, NULL, NULL, NULL, NULL, 190, 'Graduated', 'antipolos2.png', '2018-2019'),
('117966497285', 'Raynor', 'Sharleen', 'Kettlewell', 'Female', '76964 Linden Way', 'HUMMS', '1999-06-24', 'English', 'Christian', 'Sharleen Kettlewell', 'Sharleen Kettlewell', 'Sharleen Kettlewell', 2147483647, '2016-02-20 04:59:10', NULL, NULL, NULL, NULL, NULL, NULL, 191, 'Graduated', 'antipolos2.png', '2018-2019'),
('118029663881', 'Gorse', 'Phil', 'Zellick', 'Female', '8558 Becker Parkway', 'ABM', '2000-12-29', 'English', 'Christian', 'Phil Zellick', 'Phil Zellick', 'Phil Zellick', 2147483647, '2015-09-16 19:23:00', NULL, NULL, NULL, NULL, NULL, NULL, 192, 'Graduated', 'antipolos2.png', '2018-2019'),
('118140433417', 'Bunstone', 'Othello', 'Dawney', 'Male', '76178 Northland Park', 'ABM', '2001-09-16', 'English', 'Christian', 'Othello Dawney', 'Othello Dawney', 'Othello Dawney', 1596066481, '2015-05-16 11:46:01', NULL, NULL, NULL, NULL, NULL, NULL, 193, 'Graduated', 'antipolos2.png', '2018-2019'),
('118174124093', 'Reder', 'Tripp', 'Fraser', 'Male', '53 Helena Drive', 'HUMMS', '2001-08-03', 'Tagalog', 'Catholic', 'Tripp Fraser', 'Tripp Fraser', 'Tripp Fraser', 2147483647, '2016-02-08 12:55:15', NULL, NULL, NULL, NULL, NULL, NULL, 194, 'Graduated', 'antipolos2.png', '2018-2019'),
('118443624169', 'MacNelly', 'Mona', 'Pickrill', 'Female', '32166 Quincy Pass', 'STEM', '1999-08-30', 'Malay', 'Catholic', 'Mona Pickrill', 'Mona Pickrill', 'Mona Pickrill', 2147483647, '2015-04-05 14:11:14', NULL, NULL, NULL, NULL, NULL, NULL, 195, 'Graduated', 'antipolos2.png', '2018-2019'),
('118459559897', 'Seer', 'Isidor', 'Grahamslaw', 'Male', '6051 Katie Junction', 'ABM', '2000-09-16', 'Malay', 'Christian', 'Isidor Grahamslaw', 'Isidor Grahamslaw', 'Isidor Grahamslaw', 2147483647, '2015-08-02 11:17:57', NULL, NULL, NULL, NULL, NULL, NULL, 196, 'Graduated', 'antipolos2.png', '2018-2019'),
('118650428719', 'Gooderson', 'Elysee', 'Duddy', 'Female', '25 Roxbury Drive', 'STEM', '2000-01-07', 'English', 'Christian', 'Elysee Duddy', 'Elysee Duddy', 'Elysee Duddy', 2147483647, '2015-06-08 00:44:25', NULL, NULL, NULL, NULL, NULL, NULL, 197, 'Graduated', 'antipolos2.png', '2018-2019'),
('118725247062', 'Targetter', 'Marve', 'Guierre', 'Male', '1479 Bowman Drive', 'GAS', '2000-05-20', 'Tagalog', 'Christian', 'Marve Guierre', 'Marve Guierre', 'Marve Guierre', 2147483647, '2016-10-28 19:47:02', NULL, NULL, NULL, NULL, NULL, NULL, 198, 'Graduated', 'antipolos2.png', '2018-2019'),
('118817226667', 'Boch', 'Merralee', 'Pacht', 'Female', '97 Nevada Way', 'ABM', '2000-10-15', 'Chinese', 'Catholic', 'Merralee Pacht', 'Merralee Pacht', 'Merralee Pacht', 2147483647, '2015-06-20 23:08:51', NULL, NULL, NULL, NULL, NULL, NULL, 199, 'Graduated', 'antipolos2.png', '2018-2019'),
('118900735842', 'Blowfelde', 'Quinlan', 'Dunhill', 'Male', '043 7th Place', 'ABM', '2001-04-26', 'English', 'Christian', 'Quinlan Dunhill', 'Quinlan Dunhill', 'Quinlan Dunhill', 2147483647, '2016-07-26 10:13:57', NULL, NULL, NULL, NULL, NULL, NULL, 200, 'Graduated', 'antipolos2.png', '2018-2019'),
('118903690408', 'Bolderstone', 'Gilli', 'Swaton', 'Female', '8478 Farwell Point', 'STEM', '2001-01-31', 'Tagalog', 'Catholic', 'Gilli Swaton', 'Gilli Swaton', 'Gilli Swaton', 2147483647, '2015-03-18 03:03:26', NULL, NULL, NULL, NULL, NULL, NULL, 201, 'Graduated', 'antipolos2.png', '2018-2019'),
('118916756490', 'Catherall', 'Thaddus', 'Garrie', 'Male', '2894 American Street', 'HUMMS', '2000-08-23', 'Malay', 'Catholic', 'Thaddus Garrie', 'Thaddus Garrie', 'Thaddus Garrie', 2147483647, '2015-04-20 06:59:49', NULL, NULL, NULL, NULL, NULL, NULL, 202, 'Graduated', 'antipolos2.png', '2018-2019'),
('119040754097', 'Maundrell', 'Thain', 'Brixey', 'Male', '4 Mayer Plaza', 'STEM', '2001-05-18', 'Tagalog', 'Catholic', 'Thain Brixey', 'Thain Brixey', 'Thain Brixey', 2147483647, '2015-03-07 10:04:04', NULL, NULL, NULL, NULL, NULL, NULL, 203, 'Graduated', 'antipolos2.png', '2018-2019'),
('119048190952', 'Le Fevre', 'Roxanna', 'Annis', 'Female', '2 Dunning Court', 'ABM', '1999-03-31', 'Filipino', 'Christian', 'Roxanna Annis', 'Roxanna Annis', 'Roxanna Annis', 2147483647, '2016-04-27 13:37:57', NULL, NULL, NULL, NULL, NULL, NULL, 204, 'Graduated', 'antipolos2.png', '2018-2019'),
('119155602295', 'Tillyer', 'Bellanca', 'Fireman', 'Female', '167 Bluejay Street', 'HUMMS', '1999-09-21', 'Tagalog', 'Catholic', 'Bellanca Fireman', 'Bellanca Fireman', 'Bellanca Fireman', 2147483647, '2015-06-05 18:03:24', NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Graduated', 'antipolos2.png', '2018-2019'),
('119192054508', 'Foulis', 'Justen', 'Lilie', 'Male', '76 Saint Paul Alley', 'GAS', '2000-11-14', 'Malay', 'Christian', 'Justen Lilie', 'Justen Lilie', 'Justen Lilie', 2147483647, '2015-12-27 02:20:09', NULL, NULL, NULL, NULL, NULL, NULL, 206, 'Graduated', 'antipolos2.png', '2018-2019'),
('119236774161', 'Revey', 'Richard', 'Starking', 'Male', '8171 Jackson Trail', 'GAS', '1999-09-18', 'Tagalog', 'Christian', 'Richard Starking', 'Richard Starking', 'Richard Starking', 2147483647, '2015-04-02 02:52:42', NULL, NULL, NULL, NULL, NULL, NULL, 207, 'Graduated', 'antipolos2.png', '2018-2019'),
('119401207277', 'Catterall', 'Davida', 'Maharry', 'Female', '3 Vernon Parkway', 'HUMMS', '2000-09-10', 'Tagalog', 'Christian', 'Davida Maharry', 'Davida Maharry', 'Davida Maharry', 2147483647, '2016-09-17 02:47:34', NULL, NULL, NULL, NULL, NULL, NULL, 208, 'Graduated', 'antipolos2.png', '2018-2019'),
('119655518606', 'Bohden', 'Kalle', 'Rule', 'Male', '787 Sloan Point', 'STEM', '1999-02-06', 'Tagalog', 'Christian', 'Kalle Rule', 'Kalle Rule', 'Kalle Rule', 1275762694, '2016-04-19 04:28:55', NULL, NULL, NULL, NULL, NULL, NULL, 209, 'Graduated', 'antipolos2.png', '2018-2019'),
('119703113231', 'Budden', 'Albertina', 'Matusiak', 'Female', '5 Kings Junction', 'ABM', '1999-12-16', 'Tagalog', 'Catholic', 'Albertina Matusiak', 'Albertina Matusiak', 'Albertina Matusiak', 2147483647, '2015-10-05 14:01:32', NULL, NULL, NULL, NULL, NULL, NULL, 210, 'Graduated', 'antipolos2.png', '2018-2019'),
('119765299285', 'Pfaffe', 'Zelda', 'Clemendot', 'Female', '271 Jenna Court', 'STEM', '2001-05-22', 'Filipino', 'Christian', 'Zelda Clemendot', 'Zelda Clemendot', 'Zelda Clemendot', 2147483647, '2015-06-18 01:47:50', NULL, NULL, NULL, NULL, NULL, NULL, 211, 'Graduated', 'antipolos2.png', '2018-2019'),
('119813214639', 'Blumer', 'Celene', 'Altimas', 'Female', '93 Quincy Park', 'STEM', '2000-12-16', 'Chinese', 'Catholic', 'Celene Altimas', 'Celene Altimas', 'Celene Altimas', 2147483647, '2016-08-26 21:56:08', NULL, NULL, NULL, NULL, NULL, NULL, 212, 'Graduated', 'antipolos2.png', '2018-2019'),
('119936869656', 'Snooks', 'Eric', 'Mahaffey', 'Male', '9 Forest Dale Point', 'HUMMS', '2000-12-15', 'Chinese', 'Catholic', 'Eric Mahaffey', 'Eric Mahaffey', 'Eric Mahaffey', 2133743942, '2015-03-19 15:15:14', NULL, NULL, NULL, NULL, NULL, NULL, 213, 'Graduated', 'antipolos2.png', '2018-2019'),
('120040826827', 'Galliard', 'Carter', 'Cowlard', 'Male', '3 Crest Line Lane', 'ABM', '2000-03-06', 'Malay', 'Christian', 'Carter Cowlard', 'Carter Cowlard', 'Carter Cowlard', 2147483647, '2016-04-05 12:19:27', NULL, NULL, NULL, NULL, NULL, NULL, 214, 'Graduated', 'antipolos2.png', '2018-2019'),
('120178245710', 'Snufflebottom', 'Moyna', 'Birchill', 'Female', '53513 Green Ridge Junction', 'ABM', '2000-09-24', 'Malay', 'Christian', 'Moyna Birchill', 'Moyna Birchill', 'Moyna Birchill', 2147483647, '2015-04-09 08:22:54', NULL, NULL, NULL, NULL, NULL, NULL, 215, 'Graduated', 'antipolos2.png', '2018-2019'),
('120305104950', 'Gomery', 'Murray', 'Gregolin', 'Male', '05627 Barby Point', 'ABM', '2000-11-05', 'Tagalog', 'Catholic', 'Murray Gregolin', 'Murray Gregolin', 'Murray Gregolin', 2064129226, '2015-05-15 13:49:35', NULL, NULL, NULL, NULL, NULL, NULL, 216, 'Graduated', 'antipolos2.png', '2018-2019'),
('120479003790', 'Savege', 'Catina', 'LAbbet', 'Female', '21 Shasta Place', 'ABM', '1999-01-29', 'Tagalog', 'Christian', 'Catina LAbbet', 'Catina LAbbet', 'Catina LAbbet', 2147483647, '2016-10-27 22:02:10', NULL, NULL, NULL, NULL, NULL, NULL, 217, 'Graduated', 'antipolos2.png', '2018-2019'),
('120517174751', 'Kleszinski', 'Amaleta', 'Kirvin', 'Female', '0 Anthes Drive', 'GAS', '2000-04-27', 'Tagalog', 'Catholic', 'Amaleta Kirvin', 'Amaleta Kirvin', 'Amaleta Kirvin', 2147483647, '2016-03-14 20:46:59', NULL, NULL, NULL, NULL, NULL, NULL, 218, 'Graduated', 'antipolos2.png', '2018-2019'),
('120538608963', 'Rackley', 'Mallissa', 'McGaraghan', 'Female', '575 Wayridge Junction', 'STEM', '2001-05-22', 'Malay', 'Christian', 'Mallissa McGaraghan', 'Mallissa McGaraghan', 'Mallissa McGaraghan', 2147483647, '2015-04-16 15:25:09', NULL, NULL, NULL, NULL, NULL, NULL, 219, 'Graduated', 'antipolos2.png', '2018-2019'),
('120544605056', 'Abrahm', 'Gibbie', 'Blance', 'Male', '96 Lunder Park', 'ABM', '2001-12-16', 'English', 'Catholic', 'Gibbie Blance', 'Gibbie Blance', 'Gibbie Blance', 2147483647, '2015-12-21 05:58:04', NULL, NULL, NULL, NULL, NULL, NULL, 220, 'Graduated', 'antipolos2.png', '2018-2019'),
('120544935582', 'Corteis', 'Aloin', 'Swepstone', 'Male', '4530 Tennessee Place', 'ABM', '2001-07-01', 'Filipino', 'Catholic', 'Aloin Swepstone', 'Aloin Swepstone', 'Aloin Swepstone', 2147483647, '2016-05-30 10:47:29', NULL, NULL, NULL, NULL, NULL, NULL, 221, 'Graduated', 'antipolos2.png', '2018-2019'),
('120601648542', 'Aulsford', 'Sascha', 'Jentzsch', 'Female', '3484 Comanche Hill', 'STEM', '2002-01-23', 'English', 'Catholic', 'Sascha Jentzsch', 'Sascha Jentzsch', 'Sascha Jentzsch', 2147483647, '2015-08-12 17:25:04', NULL, NULL, NULL, NULL, NULL, NULL, 222, 'Graduated', 'antipolos2.png', '2018-2019'),
('120603336462', 'Tremethack', 'Roldan', 'Wagstaff', 'Male', '30157 Blaine Street', 'HUMMS', '2001-05-16', 'English', 'Christian', 'Roldan Wagstaff', 'Roldan Wagstaff', 'Roldan Wagstaff', 2147483647, '2016-05-06 22:29:40', NULL, NULL, NULL, NULL, NULL, NULL, 223, 'Graduated', 'antipolos2.png', '2018-2019'),
('120606139250', 'Baroche', 'Isis', 'Stenner', 'Female', '4785 Green Alley', 'ABM', '2000-02-04', 'Filipino', 'Christian', 'Isis Stenner', 'Isis Stenner', 'Isis Stenner', 2147483647, '2016-06-14 09:42:13', NULL, NULL, NULL, NULL, NULL, NULL, 224, 'Graduated', 'antipolos2.png', '2018-2019'),
('120764157545', 'Grimsdell', 'Thomasin', 'Twiddell', 'Female', '69627 Scofield Alley', 'STEM', '1999-04-09', 'English', 'Christian', 'Thomasin Twiddell', 'Thomasin Twiddell', 'Thomasin Twiddell', 2147483647, '2015-05-29 22:47:07', NULL, NULL, NULL, NULL, NULL, NULL, 225, 'Graduated', 'antipolos2.png', '2018-2019'),
('120837092848', 'Waddie', 'Gusti', 'Standbrooke', 'Female', '5 Mitchell Park', 'GAS', '1999-06-10', 'English', 'Catholic', 'Gusti Standbrooke', 'Gusti Standbrooke', 'Gusti Standbrooke', 1053516333, '2016-02-13 02:52:41', NULL, NULL, NULL, NULL, NULL, NULL, 226, 'Graduated', 'antipolos2.png', '2018-2019'),
('120986047244', 'Buston', 'Rodolfo', 'Strauss', 'Male', '889 Carpenter Alley', 'STEM', '2000-11-02', 'Malay', 'Catholic', 'Rodolfo Strauss', 'Rodolfo Strauss', 'Rodolfo Strauss', 2147483647, '2015-11-30 04:14:50', NULL, NULL, NULL, NULL, NULL, NULL, 227, 'Graduated', 'antipolos2.png', '2018-2019'),
('121062038897', 'Cleynaert', 'Brenden', 'Desport', 'Male', '6775 Monica Parkway', 'STEM', '2001-11-13', 'Tagalog', 'Catholic', 'Brenden Desport', 'Brenden Desport', 'Brenden Desport', 1053293426, '2016-04-20 15:13:47', NULL, NULL, NULL, NULL, NULL, NULL, 228, 'Graduated', 'antipolos2.png', '2018-2019'),
('121130145594', 'Pllu', 'Jaimie', 'Reolfi', 'Female', '6 Granby Junction', 'HUMMS', '2000-01-03', 'Malay', 'Christian', 'Jaimie Reolfi', 'Jaimie Reolfi', 'Jaimie Reolfi', 2147483647, '2016-09-25 01:50:05', NULL, NULL, NULL, NULL, NULL, NULL, 229, 'Graduated', 'antipolos2.png', '2018-2019'),
('121137701708', 'Baulk', 'Fanechka', 'Lucien', 'Female', '1688 Moulton Junction', 'ABM', '1999-08-07', 'Malay', 'Catholic', 'Fanechka Lucien', 'Fanechka Lucien', 'Fanechka Lucien', 1104060242, '2016-04-19 16:15:04', NULL, NULL, NULL, NULL, NULL, NULL, 230, 'Graduated', 'antipolos2.png', '2018-2019'),
('121260171034', 'Elflain', 'Saunder', 'Carbett', 'Male', '22 Declaration Crossing', 'STEM', '1999-06-10', 'Tagalog', 'Catholic', 'Saunder Carbett', 'Saunder Carbett', 'Saunder Carbett', 1437429688, '2015-11-02 12:36:05', NULL, NULL, NULL, NULL, NULL, NULL, 231, 'Graduated', 'antipolos2.png', '2018-2019'),
('121543595230', 'Bremley', 'Johanna', 'Ayree', 'Female', '7268 Ilene Drive', 'STEM', '1999-07-05', 'Malay', 'Christian', 'Johanna Ayree', 'Johanna Ayree', 'Johanna Ayree', 2147483647, '2015-12-13 11:11:52', NULL, NULL, NULL, NULL, NULL, NULL, 232, 'Graduated', 'antipolos2.png', '2018-2019'),
('121591420990', 'Gudger', 'Isa', 'Stucke', 'Female', '72 Kipling Pass', 'HUMMS', '1999-09-24', 'Tagalog', 'Catholic', 'Isa Stucke', 'Isa Stucke', 'Isa Stucke', 2147483647, '2016-03-27 09:35:17', NULL, NULL, NULL, NULL, NULL, NULL, 233, 'Graduated', 'antipolos2.png', '2018-2019'),
('121597082593', 'Slimmon', 'Rosina', 'Feldberger', 'Female', '26041 Sloan Road', 'HUMMS', '2000-07-16', 'Filipino', 'Catholic', 'Rosina Feldberger', 'Rosina Feldberger', 'Rosina Feldberger', 2147483647, '2015-08-11 00:52:09', NULL, NULL, NULL, NULL, NULL, NULL, 234, 'Graduated', 'antipolos2.png', '2018-2019'),
('121688132482', 'Venable', 'Rosette', 'Wilkie', 'Female', '596 Dottie Trail', 'ABM', '1999-06-13', 'English', 'Catholic', 'Rosette Wilkie', 'Rosette Wilkie', 'Rosette Wilkie', 2147483647, '2016-10-17 20:36:31', NULL, NULL, NULL, NULL, NULL, NULL, 235, 'Graduated', 'antipolos2.png', '2018-2019'),
('121709201541', 'Ourtic', 'Averell', 'Rubinsky', 'Male', '69 Dexter Lane', 'STEM', '1999-11-19', 'Tagalog', 'Catholic', 'Averell Rubinsky', 'Averell Rubinsky', 'Averell Rubinsky', 2147483647, '2016-01-31 19:28:41', NULL, NULL, NULL, NULL, NULL, NULL, 236, 'Graduated', 'antipolos2.png', '2018-2019'),
('121721897182', 'Hugett', 'Aurora', 'Waltering', 'Female', '489 Shoshone Avenue', 'STEM', '2001-06-09', 'Filipino', 'Catholic', 'Aurora Waltering', 'Aurora Waltering', 'Aurora Waltering', 2147483647, '2016-08-06 16:18:04', NULL, NULL, NULL, NULL, NULL, NULL, 237, 'Graduated', 'antipolos2.png', '2018-2019'),
('121731242798', 'Bulman', 'Trumann', 'Drust', 'Male', '09 Lakewood Lane', 'HUMMS', '2001-10-11', 'Chinese', 'Catholic', 'Trumann Drust', 'Trumann Drust', 'Trumann Drust', 2147483647, '2015-12-08 03:06:29', NULL, NULL, NULL, NULL, NULL, NULL, 238, 'Graduated', 'antipolos2.png', '2018-2019'),
('121933847868', 'Parsons', 'Shaw', 'Suthworth', 'Male', '58652 Rigney Parkway', 'ABM', '2000-01-08', 'Tagalog', 'Catholic', 'Shaw Suthworth', 'Shaw Suthworth', 'Shaw Suthworth', 2147483647, '2015-07-12 04:45:46', NULL, NULL, NULL, NULL, NULL, NULL, 239, 'Graduated', 'antipolos2.png', '2018-2019'),
('122000142673', 'Yorkston', 'Katleen', 'Minter', 'Female', '125 Golden Leaf Park', 'ABM', '2000-01-23', 'English', 'Catholic', 'Katleen Minter', 'Katleen Minter', 'Katleen Minter', 1506231414, '2016-04-14 19:49:21', NULL, NULL, NULL, NULL, NULL, NULL, 240, 'Graduated', 'antipolos2.png', '2018-2019'),
('122195868233', 'McWilliams', 'Dion', 'Dunbar', 'Male', '41969 Northview Junction', 'HUMMS', '1999-07-13', 'Malay', 'Christian', 'Dion Dunbar', 'Dion Dunbar', 'Dion Dunbar', 2147483647, '2015-09-07 08:22:33', NULL, NULL, NULL, NULL, NULL, NULL, 241, 'Graduated', 'antipolos2.png', '2018-2019'),
('122301067331', 'Benne', 'Rhianon', 'Olivera', 'Female', '902 Village Circle', 'GAS', '1999-06-10', 'Malay', 'Catholic', 'Rhianon Olivera', 'Rhianon Olivera', 'Rhianon Olivera', 1856100716, '2015-09-27 04:37:27', NULL, NULL, NULL, NULL, NULL, NULL, 242, 'Graduated', 'antipolos2.png', '2018-2019'),
('122330805151', 'Basilotta', 'Brynn', 'Levington', 'Female', '3793 David Center', 'ABM', '1999-07-20', 'Filipino', 'Catholic', 'Brynn Levington', 'Brynn Levington', 'Brynn Levington', 2147483647, '2016-11-28 07:00:38', NULL, NULL, NULL, NULL, NULL, NULL, 243, 'Graduated', 'antipolos2.png', '2018-2019'),
('122332251559', 'Roughley', 'Marielle', 'MacNeilage', 'Female', '3 Dryden Road', 'ABM', '2001-01-05', 'Tagalog', 'Christian', 'Marielle MacNeilage', 'Marielle MacNeilage', 'Marielle MacNeilage', 2147483647, '2015-05-16 07:11:13', NULL, NULL, NULL, NULL, NULL, NULL, 244, 'Graduated', 'antipolos2.png', '2018-2019'),
('122611794663', 'Jachimak', 'Emmit', 'Coatman', 'Male', '11242 Haas Plaza', 'GAS', '1999-12-17', 'Filipino', 'Catholic', 'Emmit Coatman', 'Emmit Coatman', 'Emmit Coatman', 2147483647, '2016-11-23 11:14:03', NULL, NULL, NULL, NULL, NULL, NULL, 245, 'Graduated', 'antipolos2.png', '2018-2019'),
('122693259917', 'Brawley', 'Abbe', 'Anster', 'Male', '47 Boyd Court', 'HUMMS', '1999-04-06', 'Chinese', 'Christian', 'Abbe Anster', 'Abbe Anster', 'Abbe Anster', 2147483647, '2016-01-27 12:13:07', NULL, NULL, NULL, NULL, NULL, NULL, 246, 'Graduated', 'antipolos2.png', '2018-2019'),
('122719714496', 'Roo', 'Merill', 'Presslee', 'Male', '557 Elka Circle', 'ABM', '2002-01-05', 'Filipino', 'Catholic', 'Merill Presslee', 'Merill Presslee', 'Merill Presslee', 2147483647, '2015-10-05 07:47:57', NULL, NULL, NULL, NULL, NULL, NULL, 247, 'Graduated', 'antipolos2.png', '2018-2019'),
('122757578032', 'Monteaux', 'Kienan', 'Reedie', 'Male', '79 Anniversary Terrace', 'STEM', '2001-06-14', 'Tagalog', 'Christian', 'Kienan Reedie', 'Kienan Reedie', 'Kienan Reedie', 2147483647, '2016-02-27 02:42:04', NULL, NULL, NULL, NULL, NULL, NULL, 248, 'Graduated', 'antipolos2.png', '2018-2019'),
('122852786854', 'Flatt', 'Godfrey', 'Glazzard', 'Male', '6312 Cascade Court', 'ABM', '1999-06-24', 'Tagalog', 'Christian', 'Godfrey Glazzard', 'Godfrey Glazzard', 'Godfrey Glazzard', 2147483647, '2016-12-27 17:25:34', NULL, NULL, NULL, NULL, NULL, NULL, 249, 'Graduated', 'antipolos2.png', '2018-2019'),
('122859281566', 'Anand', 'Tyson', 'MacCafferky', 'Male', '2333 North Pass', 'HUMMS', '2000-03-03', 'Filipino', 'Catholic', 'Tyson MacCafferky', 'Tyson MacCafferky', 'Tyson MacCafferky', 2147483647, '2015-10-20 14:00:42', NULL, NULL, NULL, NULL, NULL, NULL, 250, 'Graduated', 'antipolos2.png', '2018-2019'),
('123029270184', 'Heatlie', 'Kendrick', 'Frantz', 'Male', '44351 Columbus Terrace', 'STEM', '1999-05-02', 'English', 'Catholic', 'Kendrick Frantz', 'Kendrick Frantz', 'Kendrick Frantz', 2147483647, '2016-07-28 01:24:56', NULL, NULL, NULL, NULL, NULL, NULL, 251, 'Graduated', 'antipolos2.png', '2018-2019'),
('123113891206', 'Erie', 'Goddard', 'Escott', 'Male', '256 Esker Point', 'HUMMS', '2001-07-21', 'Chinese', 'Catholic', 'Goddard Escott', 'Goddard Escott', 'Goddard Escott', 2147483647, '2016-10-24 05:48:28', NULL, NULL, NULL, NULL, NULL, NULL, 252, 'Graduated', 'antipolos2.png', '2018-2019'),
('123203301766', 'Pargent', 'Zackariah', 'Shimman', 'Male', '70391 Elgar Road', 'GAS', '2000-01-03', 'Malay', 'Catholic', 'Zackariah Shimman', 'Zackariah Shimman', 'Zackariah Shimman', 2147483647, '2016-09-04 04:59:26', NULL, NULL, NULL, NULL, NULL, NULL, 253, 'Graduated', 'antipolos2.png', '2018-2019'),
('123408784364', 'McGiven', 'Jacquette', 'Sworne', 'Female', '57065 Menomonie Parkway', 'GAS', '2000-09-22', 'English', 'Catholic', 'Jacquette Sworne', 'Jacquette Sworne', 'Jacquette Sworne', 2147483647, '2016-10-10 15:09:55', NULL, NULL, NULL, NULL, NULL, NULL, 254, 'Graduated', 'antipolos2.png', '2018-2019'),
('123433794603', 'Robilart', 'Judy', 'Bagster', 'Female', '47867 Rowland Park', 'GAS', '2000-08-17', 'Chinese', 'Catholic', 'Judy Bagster', 'Judy Bagster', 'Judy Bagster', 2147483647, '2016-11-12 07:54:30', NULL, NULL, NULL, NULL, NULL, NULL, 255, 'Graduated', 'antipolos2.png', '2018-2019'),
('123488269552', 'McCollum', 'Davita', 'Barke', 'Female', '290 Lunder Center', 'ABM', '2001-10-29', 'Malay', 'Catholic', 'Davita Barke', 'Davita Barke', 'Davita Barke', 2147483647, '2015-10-09 19:04:23', NULL, NULL, NULL, NULL, NULL, NULL, 256, 'Graduated', 'antipolos2.png', '2018-2019'),
('123611305988', 'Downing', 'Constantia', 'Shier', 'Female', '9 Hermina Center', 'GAS', '2001-07-04', 'Chinese', 'Catholic', 'Constantia Shier', 'Constantia Shier', 'Constantia Shier', 2147483647, '2017-01-15 04:50:39', NULL, NULL, NULL, NULL, NULL, NULL, 257, 'Graduated', 'antipolos2.png', '2018-2019'),
('123613780476', 'Oglesbee', 'Izabel', 'Mayell', 'Female', '94769 Coleman Crossing', 'ABM', '2001-01-13', 'Tagalog', 'Christian', 'Izabel Mayell', 'Izabel Mayell', 'Izabel Mayell', 2147483647, '2016-06-23 10:06:22', NULL, NULL, NULL, NULL, NULL, NULL, 258, 'Graduated', 'antipolos2.png', '2018-2019'),
('123765048424', 'Landa', 'Waldemar', 'Colling', 'Male', '87429 Maple Pass', 'STEM', '2000-04-03', 'Chinese', 'Christian', 'Waldemar Colling', 'Waldemar Colling', 'Waldemar Colling', 2147483647, '2016-11-05 20:34:04', NULL, NULL, NULL, NULL, NULL, NULL, 259, 'Graduated', 'antipolos2.png', '2018-2019'),
('123856223660', 'Dyer', 'Cordelie', 'Hardy-Piggin', 'Female', '7 Katie Crossing', 'STEM', '2002-01-15', 'Malay', 'Catholic', 'Cordelie Hardy-Piggin', 'Cordelie Hardy-Piggin', 'Cordelie Hardy-Piggin', 2147483647, '2015-06-16 13:56:36', NULL, NULL, NULL, NULL, NULL, NULL, 260, 'Graduated', 'antipolos2.png', '2018-2019'),
('124332462065', 'Clausewitz', 'Finley', 'Sergeant', 'Male', '72805 Holy Cross Lane', 'GAS', '2000-08-08', 'Filipino', 'Christian', 'Finley Sergeant', 'Finley Sergeant', 'Finley Sergeant', 2147483647, '2015-02-19 15:16:00', NULL, NULL, NULL, NULL, NULL, NULL, 261, 'Graduated', 'antipolos2.png', '2018-2019'),
('124503911812', 'Cohr', 'Terri', 'Petegrew', 'Male', '4391 Haas Junction', 'HUMMS', '2000-10-24', 'Malay', 'Catholic', 'Terri Petegrew', 'Terri Petegrew', 'Terri Petegrew', 1051779238, '2016-07-28 06:59:53', NULL, NULL, NULL, NULL, NULL, NULL, 262, 'Graduated', 'antipolos2.png', '2018-2019'),
('124569362097', 'Backe', 'Karlee', 'MacKissack', 'Female', '6561 Burrows Point', 'GAS', '2001-09-05', 'English', 'Catholic', 'Karlee MacKissack', 'Karlee MacKissack', 'Karlee MacKissack', 2147483647, '2016-03-04 09:52:18', NULL, NULL, NULL, NULL, NULL, NULL, 263, 'Graduated', 'antipolos2.png', '2018-2019'),
('124660953424', 'Robley', 'Deeyn', 'Pirdue', 'Female', '23 Dixon Point', 'GAS', '2000-05-14', 'Chinese', 'Christian', 'Deeyn Pirdue', 'Deeyn Pirdue', 'Deeyn Pirdue', 1469669644, '2015-02-08 01:24:58', NULL, NULL, NULL, NULL, NULL, NULL, 264, 'Graduated', 'antipolos2.png', '2018-2019'),
('124690290324', 'Habberjam', 'Dasie', 'Studeart', 'Female', '272 Gale Hill', 'ABM', '2001-12-07', 'Malay', 'Christian', 'Dasie Studeart', 'Dasie Studeart', 'Dasie Studeart', 2147483647, '2015-09-05 18:33:33', NULL, NULL, NULL, NULL, NULL, NULL, 265, 'Graduated', 'antipolos2.png', '2018-2019'),
('124760194170', 'Dalli', 'Boris', 'Gogan', 'Male', '97 Manufacturers Point', 'GAS', '1999-11-13', 'Chinese', 'Catholic', 'Boris Gogan', 'Boris Gogan', 'Boris Gogan', 2147483647, '2015-07-10 05:50:35', NULL, NULL, NULL, NULL, NULL, NULL, 266, 'Graduated', 'antipolos2.png', '2018-2019'),
('124795948282', 'Kirkhouse', 'Costa', 'Jantet', 'Male', '92459 Annamark Parkway', 'GAS', '1999-07-19', 'Filipino', 'Christian', 'Costa Jantet', 'Costa Jantet', 'Costa Jantet', 2147483647, '2016-06-15 09:07:22', NULL, NULL, NULL, NULL, NULL, NULL, 267, 'Graduated', 'antipolos2.png', '2018-2019'),
('124824889389', 'Jonah', 'Orv', 'Lavigne', 'Male', '4 Mitchell Way', 'STEM', '2001-05-28', 'Tagalog', 'Catholic', 'Orv Lavigne', 'Orv Lavigne', 'Orv Lavigne', 2147483647, '2016-04-30 17:10:47', NULL, NULL, NULL, NULL, NULL, NULL, 268, 'Graduated', 'antipolos2.png', '2018-2019'),
('125227359049', 'Wallege', 'Hermann', 'Mattia', 'Male', '89 Morning Crossing', 'ABM', '2001-10-16', 'Filipino', 'Christian', 'Hermann Mattia', 'Hermann Mattia', 'Hermann Mattia', 2147483647, '2015-09-11 11:05:34', NULL, NULL, NULL, NULL, NULL, NULL, 269, 'Graduated', 'antipolos2.png', '2018-2019'),
('125622976375', 'Leaton', 'Fionna', 'Hymers', 'Female', '9 Hazelcrest Way', 'GAS', '2000-03-01', 'Malay', 'Christian', 'Fionna Hymers', 'Fionna Hymers', 'Fionna Hymers', 2147483647, '2015-10-23 23:48:32', NULL, NULL, NULL, NULL, NULL, NULL, 270, 'Graduated', 'antipolos2.png', '2018-2019'),
('125831815676', 'Wolfindale', 'Lutero', 'Ismail', 'Male', '8681 Merrick Parkway', 'HUMMS', '2001-09-24', 'Filipino', 'Christian', 'Lutero Ismail', 'Lutero Ismail', 'Lutero Ismail', 2147483647, '2015-02-13 22:33:55', NULL, NULL, NULL, NULL, NULL, NULL, 271, 'Graduated', 'antipolos2.png', '2018-2019'),
('125935620164', 'McGeouch', 'Mikael', 'Phillip', 'Male', '817 Milwaukee Alley', 'ABM', '2000-02-27', 'English', 'Catholic', 'Mikael Phillip', 'Mikael Phillip', 'Mikael Phillip', 2147483647, '2015-05-12 19:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 272, 'Graduated', 'antipolos2.png', '2018-2019'),
('125990006619', 'Niess', 'Alasdair', 'Longdon', 'Male', '41161 Badeau Avenue', 'ABM', '2000-11-30', 'English', 'Christian', 'Alasdair Longdon', 'Alasdair Longdon', 'Alasdair Longdon', 2147483647, '2016-01-13 06:22:52', NULL, NULL, NULL, NULL, NULL, NULL, 273, 'Graduated', 'antipolos2.png', '2018-2019'),
('126009187556', 'Hawke', 'Leighton', 'Pickering', 'Male', '2 La Follette Junction', 'HUMMS', '2001-01-10', 'Tagalog', 'Catholic', 'Leighton Pickering', 'Leighton Pickering', 'Leighton Pickering', 2147483647, '2016-11-23 22:17:50', NULL, NULL, NULL, NULL, NULL, NULL, 274, 'Graduated', 'antipolos2.png', '2018-2019'),
('126133910700', 'Palliser', 'Antoinette', 'Gruczka', 'Female', '6 Hanson Drive', 'GAS', '2000-05-19', 'English', 'Christian', 'Antoinette Gruczka', 'Antoinette Gruczka', 'Antoinette Gruczka', 2147483647, '2016-08-15 16:21:05', NULL, NULL, NULL, NULL, NULL, NULL, 275, 'Graduated', 'antipolos2.png', '2018-2019'),
('126157594819', 'Mullard', 'Thia', 'Marzello', 'Female', '86 Orin Plaza', 'STEM', '2000-07-29', 'Chinese', 'Christian', 'Thia Marzello', 'Thia Marzello', 'Thia Marzello', 1472497042, '2016-05-19 08:02:52', NULL, NULL, NULL, NULL, NULL, NULL, 276, 'Graduated', 'antipolos2.png', '2018-2019'),
('126299769610', 'Lepere', 'Alford', 'Dobeson', 'Male', '0 Northport Street', 'ABM', '2000-10-18', 'English', 'Christian', 'Alford Dobeson', 'Alford Dobeson', 'Alford Dobeson', 2147483647, '2016-08-10 01:45:39', NULL, NULL, NULL, NULL, NULL, NULL, 277, 'Graduated', 'antipolos2.png', '2018-2019'),
('126366098714', 'Eichmann', 'Andreas', 'Hasell', 'Male', '854 Monica Park', 'GAS', '2001-08-07', 'Filipino', 'Catholic', 'Andreas Hasell', 'Andreas Hasell', 'Andreas Hasell', 2147483647, '2016-05-20 22:48:39', NULL, NULL, NULL, NULL, NULL, NULL, 278, 'Graduated', 'antipolos2.png', '2018-2019'),
('126372513268', 'Cacacie', 'Leonanie', 'Rippingale', 'Female', '2443 Lakeland Parkway', 'GAS', '2001-09-12', 'Tagalog', 'Catholic', 'Leonanie Rippingale', 'Leonanie Rippingale', 'Leonanie Rippingale', 2147483647, '2015-04-24 16:09:13', NULL, NULL, NULL, NULL, NULL, NULL, 279, 'Graduated', 'antipolos2.png', '2018-2019'),
('126691088930', 'Wiggall', 'Corny', 'Dondon', 'Female', '5731 Bartelt Point', 'ABM', '2001-05-04', 'Malay', 'Catholic', 'Corny Dondon', 'Corny Dondon', 'Corny Dondon', 1006814811, '2015-11-04 02:15:48', NULL, NULL, NULL, NULL, NULL, NULL, 280, 'Graduated', 'antipolos2.png', '2018-2019'),
('126764111983', 'Beany', 'Daven', 'Heeks', 'Male', '15 Forest Run Court', 'ABM', '2000-08-17', 'Malay', 'Catholic', 'Daven Heeks', 'Daven Heeks', 'Daven Heeks', 2064698361, '2015-08-18 02:49:25', NULL, NULL, NULL, NULL, NULL, NULL, 281, 'Graduated', 'antipolos2.png', '2018-2019'),
('126845608603', 'Routledge', 'Ailsun', 'Giovannacci', 'Female', '1161 Shasta Terrace', 'ABM', '2001-12-24', 'Chinese', 'Catholic', 'Ailsun Giovannacci', 'Ailsun Giovannacci', 'Ailsun Giovannacci', 1929990820, '2016-08-12 18:33:14', NULL, NULL, NULL, NULL, NULL, NULL, 282, 'Graduated', 'antipolos2.png', '2018-2019'),
('127049148578', 'Beatey', 'Joel', 'Chasier', 'Male', '291 Shelley Place', 'HUMMS', '2001-09-06', 'Chinese', 'Catholic', 'Joel Chasier', 'Joel Chasier', 'Joel Chasier', 2147483647, '2016-12-01 19:41:07', NULL, NULL, NULL, NULL, NULL, NULL, 283, 'Graduated', 'antipolos2.png', '2018-2019'),
('127235508567', 'Lorenzo', 'Otis', 'Solan', 'Male', '5 Myrtle Junction', 'HUMMS', '2001-02-25', 'Tagalog', 'Catholic', 'Otis Solan', 'Otis Solan', 'Otis Solan', 2147483647, '2015-07-08 05:31:23', NULL, NULL, NULL, NULL, NULL, NULL, 284, 'Graduated', 'antipolos2.png', '2018-2019'),
('127722862521', 'Lafrentz', 'Tabbatha', 'Bunce', 'Female', '3938 Sunfield Crossing', 'STEM', '2000-12-11', 'Chinese', 'Catholic', 'Tabbatha Bunce', 'Tabbatha Bunce', 'Tabbatha Bunce', 2147483647, '2015-11-05 09:50:57', NULL, NULL, NULL, NULL, NULL, NULL, 285, 'Graduated', 'antipolos2.png', '2018-2019'),
('127871638363', 'Cockerill', 'Rouvin', 'Leborgne', 'Male', '91586 Jenifer Street', 'ABM', '1999-04-08', 'Malay', 'Catholic', 'Rouvin Leborgne', 'Rouvin Leborgne', 'Rouvin Leborgne', 1221168629, '2016-09-12 14:33:05', NULL, NULL, NULL, NULL, NULL, NULL, 286, 'Graduated', 'antipolos2.png', '2018-2019'),
('127881673551', 'Mallinar', 'Fredia', 'Callery', 'Female', '85779 Oneill Drive', 'STEM', '2001-01-17', 'Chinese', 'Catholic', 'Fredia Callery', 'Fredia Callery', 'Fredia Callery', 2147483647, '2015-12-21 16:45:54', NULL, NULL, NULL, NULL, NULL, NULL, 287, 'Graduated', 'antipolos2.png', '2018-2019'),
('127894402506', 'Woolis', 'Theobald', 'Degoe', 'Male', '76 Green Ridge Plaza', 'STEM', '2001-10-20', 'English', 'Christian', 'Theobald Degoe', 'Theobald Degoe', 'Theobald Degoe', 2147483647, '2015-09-24 05:02:47', NULL, NULL, NULL, NULL, NULL, NULL, 288, 'Graduated', 'antipolos2.png', '2018-2019'),
('128025838956', 'Mullis', 'Blaire', 'Daice', 'Female', '39 Forest Dale Pass', 'HUMMS', '2001-04-15', 'Filipino', 'Christian', 'Blaire Daice', 'Blaire Daice', 'Blaire Daice', 2147483647, '2016-02-27 20:38:09', NULL, NULL, NULL, NULL, NULL, NULL, 289, 'Graduated', 'antipolos2.png', '2018-2019'),
('128028984235', 'Daber', 'Phyllys', 'Dando', 'Female', '53 David Crossing', 'GAS', '2001-04-05', 'Tagalog', 'Christian', 'Phyllys Dando', 'Phyllys Dando', 'Phyllys Dando', 2147483647, '2015-02-14 12:49:48', NULL, NULL, NULL, NULL, NULL, NULL, 290, 'Graduated', 'antipolos2.png', '2018-2019'),
('128087026755', 'Vannuccinii', 'Mil', 'Ramet', 'Female', '815 Fair Oaks Junction', 'GAS', '2000-04-12', 'Malay', 'Christian', 'Mil Ramet', 'Mil Ramet', 'Mil Ramet', 2147483647, '2015-09-14 12:56:28', NULL, NULL, NULL, NULL, NULL, NULL, 291, 'Graduated', 'antipolos2.png', '2018-2019'),
('128158524081', 'Hankinson', 'Myrah', 'Birkby', 'Female', '0 Holmberg Lane', 'ABM', '1999-07-08', 'Filipino', 'Catholic', 'Myrah Birkby', 'Myrah Birkby', 'Myrah Birkby', 2147483647, '2015-07-05 03:46:45', NULL, NULL, NULL, NULL, NULL, NULL, 292, 'Graduated', 'antipolos2.png', '2018-2019'),
('128190041201', 'Furmage', 'Paulette', 'Derrett', 'Female', '9433 Carioca Center', 'HUMMS', '2001-12-06', 'Chinese', 'Christian', 'Paulette Derrett', 'Paulette Derrett', 'Paulette Derrett', 2147483647, '2015-10-14 21:30:10', NULL, NULL, NULL, NULL, NULL, NULL, 293, 'Graduated', 'antipolos2.png', '2018-2019'),
('128216087044', 'Scully', 'Lauraine', 'Standrin', 'Female', '8 Warrior Junction', 'GAS', '2001-06-02', 'Tagalog', 'Catholic', 'Lauraine Standrin', 'Lauraine Standrin', 'Lauraine Standrin', 2147483647, '2016-07-28 03:24:31', NULL, NULL, NULL, NULL, NULL, NULL, 294, 'Graduated', 'antipolos2.png', '2018-2019'),
('128235936471', 'Delion', 'Jeffrey', 'Sillis', 'Male', '3 Lien Alley', 'GAS', '2001-01-08', 'Filipino', 'Catholic', 'Jeffrey Sillis', 'Jeffrey Sillis', 'Jeffrey Sillis', 2147483647, '2017-01-17 18:45:13', NULL, NULL, NULL, NULL, NULL, NULL, 295, 'Graduated', 'antipolos2.png', '2018-2019'),
('128272282518', 'Tetsall', 'Nalani', 'Shotter', 'Female', '025 Pawling Place', 'GAS', '2001-11-28', 'Filipino', 'Christian', 'Nalani Shotter', 'Nalani Shotter', 'Nalani Shotter', 2147483647, '2016-03-20 17:34:48', NULL, NULL, NULL, NULL, NULL, NULL, 296, 'Graduated', 'antipolos2.png', '2018-2019'),
('128649011802', 'Goodship', 'Jolyn', 'Caccavale', 'Female', '3467 Tennyson Way', 'STEM', '1999-10-30', 'Malay', 'Christian', 'Jolyn Caccavale', 'Jolyn Caccavale', 'Jolyn Caccavale', 2147483647, '2015-10-19 17:49:58', NULL, NULL, NULL, NULL, NULL, NULL, 297, 'Graduated', 'antipolos2.png', '2018-2019'),
('128837669398', 'Sloy', 'Sully', 'Garr', 'Male', '1121 Cordelia Junction', 'HUMMS', '2000-11-09', 'Malay', 'Christian', 'Sully Garr', 'Sully Garr', 'Sully Garr', 2147483647, '2015-05-29 20:22:02', NULL, NULL, NULL, NULL, NULL, NULL, 298, 'Graduated', 'antipolos2.png', '2018-2019'),
('128859001269', 'Thornton', 'Jamey', 'Olden', 'Male', '55 Ilene Pass', 'STEM', '2001-08-19', 'Filipino', 'Christian', 'Jamey Olden', 'Jamey Olden', 'Jamey Olden', 1711392238, '2016-09-10 08:17:31', NULL, NULL, NULL, NULL, NULL, NULL, 299, 'Graduated', 'antipolos2.png', '2018-2019'),
('128905061095', 'Pool', 'Eran', 'Blampied', 'Female', '33932 Corry Point', 'GAS', '2001-08-17', 'Chinese', 'Catholic', 'Eran Blampied', 'Eran Blampied', 'Eran Blampied', 2147483647, '2015-10-10 03:18:11', NULL, NULL, NULL, NULL, NULL, NULL, 300, 'Graduated', 'antipolos2.png', '2018-2019'),
('128956875037', 'Mansuer', 'Lara', 'Naseby', 'Female', '3839 Lighthouse Bay Trail', 'ABM', '2001-08-05', 'English', 'Catholic', 'Lara Naseby', 'Lara Naseby', 'Lara Naseby', 2147483647, '2015-05-06 16:21:52', NULL, NULL, NULL, NULL, NULL, NULL, 301, 'Graduated', 'antipolos2.png', '2018-2019'),
('129029320580', 'Gotcliff', 'Philippe', 'Grunnell', 'Female', '55 Independence Junction', 'HUMMS', '2000-09-12', 'Filipino', 'Catholic', 'Philippe Grunnell', 'Philippe Grunnell', 'Philippe Grunnell', 2147483647, '2015-11-10 22:25:46', NULL, NULL, NULL, NULL, NULL, NULL, 302, 'Graduated', 'antipolos2.png', '2018-2019'),
('129241498780', 'Bennellick', 'Ram', 'Booth-Jarvis', 'Male', '7508 Kennedy Lane', 'STEM', '2001-09-01', 'Chinese', 'Catholic', 'Ram Booth-Jarvis', 'Ram Booth-Jarvis', 'Ram Booth-Jarvis', 2147483647, '2015-05-24 21:27:29', NULL, NULL, NULL, NULL, NULL, NULL, 303, 'Graduated', 'antipolos2.png', '2018-2019'),
('129403694239', 'Tapenden', 'Henri', 'Reuss', 'Male', '99493 Union Crossing', 'GAS', '1999-11-08', 'English', 'Catholic', 'Henri Reuss', 'Henri Reuss', 'Henri Reuss', 2147483647, '2016-06-06 15:38:55', NULL, NULL, NULL, NULL, NULL, NULL, 304, 'Graduated', 'antipolos2.png', '2018-2019'),
('129551709974', 'Farrow', 'Creigh', 'Draayer', 'Male', '52969 Harper Terrace', 'STEM', '1999-05-18', 'Chinese', 'Christian', 'Creigh Draayer', 'Creigh Draayer', 'Creigh Draayer', 1106732390, '2015-02-15 10:49:23', NULL, NULL, NULL, NULL, NULL, NULL, 305, 'Graduated', 'antipolos2.png', '2018-2019'),
('129563319540', 'Gentner', 'Cullie', 'Croal', 'Male', '65464 Eastlawn Street', 'HUMMS', '2000-06-28', 'Tagalog', 'Catholic', 'Cullie Croal', 'Cullie Croal', 'Cullie Croal', 1355604505, '2015-01-31 13:56:08', NULL, NULL, NULL, NULL, NULL, NULL, 306, 'Graduated', 'antipolos2.png', '2018-2019'),
('129573537903', 'Longhorne', 'Kent', 'Luxton', 'Male', '4831 Meadow Ridge Drive', 'GAS', '1999-11-11', 'Tagalog', 'Catholic', 'Kent Luxton', 'Kent Luxton', 'Kent Luxton', 2147483647, '2015-09-13 20:31:00', NULL, NULL, NULL, NULL, NULL, NULL, 307, 'Graduated', 'antipolos2.png', '2018-2019'),
('129827609050', 'McGeachey', 'Joete', 'Giovannazzi', 'Female', '26 Bultman Parkway', 'GAS', '2000-04-16', 'English', 'Christian', 'Joete Giovannazzi', 'Joete Giovannazzi', 'Joete Giovannazzi', 2147483647, '2015-10-04 14:25:37', NULL, NULL, NULL, NULL, NULL, NULL, 308, 'Graduated', 'antipolos2.png', '2018-2019'),
('129846344488', 'Erswell', 'Gale', 'Lubman', 'Male', '19 Comanche Point', 'GAS', '1999-10-10', 'Malay', 'Catholic', 'Gale Lubman', 'Gale Lubman', 'Gale Lubman', 2147483647, '2015-09-21 01:44:50', NULL, NULL, NULL, NULL, NULL, NULL, 309, 'Graduated', 'antipolos2.png', '2018-2019'),
('130038824975', 'Kilbourn', 'Marchelle', 'Paulack', 'Female', '13755 Fisk Hill', 'STEM', '1999-02-10', 'English', 'Christian', 'Marchelle Paulack', 'Marchelle Paulack', 'Marchelle Paulack', 2147483647, '2015-05-21 11:41:10', NULL, NULL, NULL, NULL, NULL, NULL, 310, 'Graduated', 'antipolos2.png', '2018-2019'),
('130216628086', 'Flewin', 'Felicdad', 'Persent', 'Female', '9 Sutherland Street', 'STEM', '2001-10-15', 'Tagalog', 'Christian', 'Felicdad Persent', 'Felicdad Persent', 'Felicdad Persent', 2147483647, '2016-11-28 00:14:45', NULL, NULL, NULL, NULL, NULL, NULL, 311, 'Graduated', 'antipolos2.png', '2018-2019'),
('130336406405', 'Durward', 'Bettye', 'Loughman', 'Female', '24443 Butternut Parkway', 'HUMMS', '1999-07-11', 'Malay', 'Catholic', 'Bettye Loughman', 'Bettye Loughman', 'Bettye Loughman', 2147483647, '2015-04-20 09:58:57', NULL, NULL, NULL, NULL, NULL, NULL, 312, 'Graduated', 'antipolos2.png', '2018-2019'),
('130380569712', 'McPhelimy', 'Ardine', 'Gedney', 'Female', '1328 Village Green Street', 'ABM', '2000-07-25', 'Tagalog', 'Christian', 'Ardine Gedney', 'Ardine Gedney', 'Ardine Gedney', 2147483647, '2015-12-25 02:59:56', NULL, NULL, NULL, NULL, NULL, NULL, 313, 'Graduated', 'antipolos2.png', '2018-2019'),
('130397379457', 'Allnatt', 'Garvin', 'Trevallion', 'Male', '45 Almo Center', 'GAS', '1999-11-04', 'Filipino', 'Catholic', 'Garvin Trevallion', 'Garvin Trevallion', 'Garvin Trevallion', 2147483647, '2015-07-18 16:24:19', NULL, NULL, NULL, NULL, NULL, NULL, 314, 'Graduated', 'antipolos2.png', '2018-2019'),
('130438277797', 'Gibbens', 'Christie', 'Meers', 'Male', '2163 Del Sol Lane', 'ABM', '2000-02-08', 'Chinese', 'Christian', 'Christie Meers', 'Christie Meers', 'Christie Meers', 2147483647, '2015-06-22 08:20:45', NULL, NULL, NULL, NULL, NULL, NULL, 315, 'Graduated', 'antipolos2.png', '2018-2019'),
('130469824598', 'Povlsen', 'Nonah', 'Lezemore', 'Female', '1 Forest Dale Park', 'STEM', '2001-04-19', 'Malay', 'Christian', 'Nonah Lezemore', 'Nonah Lezemore', 'Nonah Lezemore', 2147483647, '2015-09-10 03:27:40', NULL, NULL, NULL, NULL, NULL, NULL, 316, 'Graduated', 'antipolos2.png', '2018-2019'),
('130528684191', 'Westmoreland', 'Doralin', 'Challis', 'Female', '36778 Schlimgen Alley', 'GAS', '2000-07-18', 'Tagalog', 'Christian', 'Doralin Challis', 'Doralin Challis', 'Doralin Challis', 2147483647, '2017-01-10 04:48:56', NULL, NULL, NULL, NULL, NULL, NULL, 317, 'Graduated', 'antipolos2.png', '2018-2019'),
('130670171403', 'Fidock', 'Phillis', 'Mapledoram', 'Female', '8456 Corscot Plaza', 'STEM', '2000-10-13', 'Chinese', 'Christian', 'Phillis Mapledoram', 'Phillis Mapledoram', 'Phillis Mapledoram', 2147483647, '2016-04-19 03:24:29', NULL, NULL, NULL, NULL, NULL, NULL, 318, 'Graduated', 'antipolos2.png', '2018-2019'),
('130796766997', 'Olyfant', 'Torry', 'Ewan', 'Male', '9456 Surrey Alley', 'HUMMS', '1999-06-02', 'Chinese', 'Christian', 'Torry Ewan', 'Torry Ewan', 'Torry Ewan', 2147483647, '2016-04-03 00:30:45', NULL, NULL, NULL, NULL, NULL, NULL, 319, 'Graduated', 'antipolos2.png', '2018-2019'),
('130945475074', 'Gimbrett', 'Carny', 'Perigeaux', 'Male', '94 Hauk Pass', 'HUMMS', '2001-04-14', 'Malay', 'Catholic', 'Carny Perigeaux', 'Carny Perigeaux', 'Carny Perigeaux', 2147483647, '2015-05-14 01:25:25', NULL, NULL, NULL, NULL, NULL, NULL, 320, 'Graduated', 'antipolos2.png', '2018-2019'),
('131279170177', 'Vynehall', 'Cherye', 'Rabat', 'Female', '8162 Surrey Park', 'ABM', '2000-12-30', 'Chinese', 'Christian', 'Cherye Rabat', 'Cherye Rabat', 'Cherye Rabat', 2147483647, '2015-05-11 13:23:09', NULL, NULL, NULL, NULL, NULL, NULL, 321, 'Graduated', 'antipolos2.png', '2018-2019'),
('131387007988', 'Parratt', 'Clarisse', 'Jeremiah', 'Female', '19 Dixon Center', 'STEM', '2001-09-21', 'Chinese', 'Catholic', 'Clarisse Jeremiah', 'Clarisse Jeremiah', 'Clarisse Jeremiah', 1522661497, '2016-12-06 03:35:15', NULL, NULL, NULL, NULL, NULL, NULL, 322, 'Graduated', 'antipolos2.png', '2018-2019'),
('131484355498', 'Manger', 'Roderich', 'Winteringham', 'Male', '014 North Place', 'HUMMS', '2000-12-15', 'Tagalog', 'Christian', 'Roderich Winteringham', 'Roderich Winteringham', 'Roderich Winteringham', 2147483647, '2015-11-02 20:46:34', NULL, NULL, NULL, NULL, NULL, NULL, 323, 'Graduated', 'antipolos2.png', '2018-2019'),
('131819224175', 'Epgrave', 'Stephen', 'Witherby', 'Male', '4988 Amoth Way', 'HUMMS', '1999-06-04', 'Chinese', 'Catholic', 'Stephen Witherby', 'Stephen Witherby', 'Stephen Witherby', 2147483647, '2015-08-20 06:29:40', NULL, NULL, NULL, NULL, NULL, NULL, 324, 'Graduated', 'antipolos2.png', '2018-2019'),
('131820984023', 'Carass', 'Vilhelmina', 'Sweetman', 'Female', '768 Meadow Vale Trail', 'GAS', '1999-04-15', 'Chinese', 'Catholic', 'Vilhelmina Sweetman', 'Vilhelmina Sweetman', 'Vilhelmina Sweetman', 2147483647, '2015-10-27 18:42:44', NULL, NULL, NULL, NULL, NULL, NULL, 325, 'Graduated', 'antipolos2.png', '2018-2019'),
('132032537051', 'Aylesbury', 'Jessie', 'Jotham', 'Male', '759 School Way', 'HUMMS', '2000-03-22', 'Malay', 'Christian', 'Jessie Jotham', 'Jessie Jotham', 'Jessie Jotham', 2147483647, '2016-07-10 12:41:55', NULL, NULL, NULL, NULL, NULL, NULL, 326, 'Graduated', 'antipolos2.png', '2018-2019'),
('132296308095', 'Elsworth', 'Scotty', 'Crain', 'Male', '4 Roth Alley', 'HUMMS', '2001-12-15', 'Malay', 'Christian', 'Scotty Crain', 'Scotty Crain', 'Scotty Crain', 2147483647, '2016-02-23 03:21:54', NULL, NULL, NULL, NULL, NULL, NULL, 327, 'Graduated', 'antipolos2.png', '2018-2019'),
('132373004106', 'Pinnell', 'Sheryl', 'Langstaff', 'Female', '03362 Eastwood Lane', 'ABM', '2001-06-19', 'Filipino', 'Catholic', 'Sheryl Langstaff', 'Sheryl Langstaff', 'Sheryl Langstaff', 2147483647, '2015-09-21 06:26:48', NULL, NULL, NULL, NULL, NULL, NULL, 328, 'Graduated', 'antipolos2.png', '2018-2019'),
('132588929986', 'Newis', 'Madlin', 'Reaney', 'Female', '2 Eastlawn Lane', 'GAS', '2001-01-25', 'English', 'Catholic', 'Madlin Reaney', 'Madlin Reaney', 'Madlin Reaney', 2147483647, '2017-01-19 01:40:16', NULL, NULL, NULL, NULL, NULL, NULL, 329, 'Graduated', 'antipolos2.png', '2018-2019'),
('132697845112', 'Kubatsch', 'Jefferey', 'Gooms', 'Male', '29 Gulseth Parkway', 'GAS', '2000-07-01', 'Filipino', 'Catholic', 'Jefferey Gooms', 'Jefferey Gooms', 'Jefferey Gooms', 2147483647, '2015-08-09 22:37:04', NULL, NULL, NULL, NULL, NULL, NULL, 330, 'Graduated', 'antipolos2.png', '2018-2019'),
('132745870886', 'Lendrem', 'Jennifer', 'Mattys', 'Female', '41 Harbort Pass', 'ABM', '1999-04-17', 'Chinese', 'Christian', 'Jennifer Mattys', 'Jennifer Mattys', 'Jennifer Mattys', 2147483647, '2016-08-21 12:54:26', NULL, NULL, NULL, NULL, NULL, NULL, 331, 'Graduated', 'antipolos2.png', '2018-2019'),
('132748488710', 'Worling', 'Niels', 'Dureden', 'Male', '792 Tennyson Parkway', 'GAS', '2001-12-10', 'English', 'Catholic', 'Niels Dureden', 'Niels Dureden', 'Niels Dureden', 2147483647, '2015-05-18 04:16:33', NULL, NULL, NULL, NULL, NULL, NULL, 332, 'Graduated', 'antipolos2.png', '2018-2019'),
('132771056822', 'Collingworth', 'Sayres', 'Andreou', 'Male', '8735 Stuart Point', 'HUMMS', '1999-06-08', 'Chinese', 'Catholic', 'Sayres Andreou', 'Sayres Andreou', 'Sayres Andreou', 2147483647, '2016-06-29 11:08:19', NULL, NULL, NULL, NULL, NULL, NULL, 333, 'Graduated', 'antipolos2.png', '2018-2019');
INSERT INTO `grads` (`adhaar_no`, `lname`, `fname`, `learner_midname`, `gender`, `address`, `strand`, `dob`, `mother_tongue`, `religion`, `father_name`, `mother_name`, `guardian_name`, `mobile_no`, `created_at`, `updated_at`, `status`, `alternate_mobile_no`, `email_id`, `extra_note`, `roll_no`, `stu_id`, `grade`, `photo`, `class`) VALUES
('133068989915', 'Ilyenko', 'Maddalena', 'McNaughton', 'Female', '8636 East Crossing', 'STEM', '1999-08-04', 'Filipino', 'Catholic', 'Maddalena McNaughton', 'Maddalena McNaughton', 'Maddalena McNaughton', 2085215972, '2015-09-24 04:04:43', NULL, NULL, NULL, NULL, NULL, NULL, 334, 'Graduated', 'antipolos2.png', '2018-2019'),
('133130676461', 'Goatcher', 'Andonis', 'Baversor', 'Male', '15 Starling Hill', 'STEM', '2001-10-05', 'Malay', 'Catholic', 'Andonis Baversor', 'Andonis Baversor', 'Andonis Baversor', 2147483647, '2015-10-15 03:22:34', NULL, NULL, NULL, NULL, NULL, NULL, 335, 'Graduated', 'antipolos2.png', '2018-2019'),
('133219503551', 'Collecott', 'Pate', 'Swinfen', 'Male', '7084 Toban Alley', 'GAS', '2000-05-24', 'Tagalog', 'Catholic', 'Pate Swinfen', 'Pate Swinfen', 'Pate Swinfen', 2147483647, '2015-08-03 16:29:37', NULL, NULL, NULL, NULL, NULL, NULL, 336, 'Graduated', 'antipolos2.png', '2018-2019'),
('133384310122', 'Conway', 'Hillary', 'Innwood', 'Female', '35081 Manley Park', 'HUMMS', '2001-07-18', 'English', 'Christian', 'Hillary Innwood', 'Hillary Innwood', 'Hillary Innwood', 2147483647, '2016-10-25 20:54:51', NULL, NULL, NULL, NULL, NULL, NULL, 337, 'Graduated', 'antipolos2.png', '2018-2019'),
('133403475486', 'Keig', 'Garrik', 'Meaders', 'Male', '5 Portage Avenue', 'STEM', '2001-01-21', 'Malay', 'Catholic', 'Garrik Meaders', 'Garrik Meaders', 'Garrik Meaders', 2147483647, '2015-02-15 03:03:42', NULL, NULL, NULL, NULL, NULL, NULL, 338, 'Graduated', 'antipolos2.png', '2018-2019'),
('133642251740', 'O\'Luney', 'Knox', 'Moughtin', 'Male', '94 Prentice Place', 'ABM', '2001-03-08', 'English', 'Catholic', 'Knox Moughtin', 'Knox Moughtin', 'Knox Moughtin', 2147483647, '2015-12-07 09:06:33', NULL, NULL, NULL, NULL, NULL, NULL, 339, 'Graduated', 'antipolos2.png', '2018-2019'),
('133667981343', 'Doggett', 'Kyle', 'Ollerearnshaw', 'Female', '5420 Northfield Trail', 'ABM', '1999-10-05', 'English', 'Christian', 'Kyle Ollerearnshaw', 'Kyle Ollerearnshaw', 'Kyle Ollerearnshaw', 2147483647, '2015-12-13 21:52:49', NULL, NULL, NULL, NULL, NULL, NULL, 340, 'Graduated', 'antipolos2.png', '2018-2019'),
('133890111233', 'Malyj', 'Arlana', 'Tearny', 'Female', '41 Algoma Point', 'HUMMS', '1999-12-24', 'Malay', 'Catholic', 'Arlana Tearny', 'Arlana Tearny', 'Arlana Tearny', 2147483647, '2016-05-18 23:59:08', NULL, NULL, NULL, NULL, NULL, NULL, 341, 'Graduated', 'antipolos2.png', '2018-2019'),
('134054816679', 'Tallowin', 'Saxe', 'Givens', 'Male', '7060 Spohn Avenue', 'ABM', '1999-12-24', 'Tagalog', 'Christian', 'Saxe Givens', 'Saxe Givens', 'Saxe Givens', 2147483647, '2015-05-31 11:38:25', NULL, NULL, NULL, NULL, NULL, NULL, 342, 'Graduated', 'antipolos2.png', '2018-2019'),
('134114293450', 'Livock', 'Dulcine', 'Narramore', 'Female', '1 Manitowish Street', 'HUMMS', '2002-01-13', 'Tagalog', 'Christian', 'Dulcine Narramore', 'Dulcine Narramore', 'Dulcine Narramore', 2147483647, '2015-06-13 12:08:34', NULL, NULL, NULL, NULL, NULL, NULL, 343, 'Graduated', 'antipolos2.png', '2018-2019'),
('134240484593', 'McGeorge', 'Regan', 'Colebeck', 'Female', '44529 Sheridan Park', 'STEM', '2001-08-30', 'Filipino', 'Christian', 'Regan Colebeck', 'Regan Colebeck', 'Regan Colebeck', 2147483647, '2016-06-07 22:51:33', NULL, NULL, NULL, NULL, NULL, NULL, 344, 'Graduated', 'antipolos2.png', '2018-2019'),
('134332880219', 'Goude', 'Ferrel', 'Acey', 'Male', '576 Sommers Court', 'ABM', '2000-05-12', 'English', 'Christian', 'Ferrel Acey', 'Ferrel Acey', 'Ferrel Acey', 1787760502, '2015-07-28 12:31:28', NULL, NULL, NULL, NULL, NULL, NULL, 345, 'Graduated', 'antipolos2.png', '2018-2019'),
('134387902453', 'Schmidt', 'Cora', 'Stewartson', 'Female', '467 Glacier Hill Center', 'GAS', '1999-02-16', 'Malay', 'Catholic', 'Cora Stewartson', 'Cora Stewartson', 'Cora Stewartson', 2147483647, '2015-12-16 18:06:09', NULL, NULL, NULL, NULL, NULL, NULL, 346, 'Graduated', 'antipolos2.png', '2018-2019'),
('134402411458', 'Axton', 'Waneta', 'Snaddon', 'Female', '14874 Shasta Terrace', 'GAS', '1999-06-22', 'Chinese', 'Catholic', 'Waneta Snaddon', 'Waneta Snaddon', 'Waneta Snaddon', 2147483647, '2017-01-06 21:04:21', NULL, NULL, NULL, NULL, NULL, NULL, 347, 'Graduated', 'antipolos2.png', '2018-2019'),
('134619559466', 'Mapstone', 'Loretta', 'Gerb', 'Female', '77823 Aberg Terrace', 'ABM', '2000-05-13', 'Malay', 'Christian', 'Loretta Gerb', 'Loretta Gerb', 'Loretta Gerb', 2147483647, '2015-07-09 05:45:47', NULL, NULL, NULL, NULL, NULL, NULL, 348, 'Graduated', 'antipolos2.png', '2018-2019'),
('134645295672', 'Orringe', 'Garrott', 'Oldroyd', 'Male', '68 Milwaukee Road', 'STEM', '2001-10-06', 'Malay', 'Christian', 'Garrott Oldroyd', 'Garrott Oldroyd', 'Garrott Oldroyd', 2147483647, '2015-09-18 05:10:18', NULL, NULL, NULL, NULL, NULL, NULL, 349, 'Graduated', 'antipolos2.png', '2018-2019'),
('134798630884', 'Faherty', 'Christan', 'Gebbe', 'Female', '88 Dahle Hill', 'STEM', '2001-07-13', 'Malay', 'Catholic', 'Christan Gebbe', 'Christan Gebbe', 'Christan Gebbe', 2147483647, '2015-08-24 22:38:41', NULL, NULL, NULL, NULL, NULL, NULL, 350, 'Graduated', 'antipolos2.png', '2018-2019'),
('134858556427', 'Gauford', 'Kaiser', 'Besantie', 'Male', '64 Summerview Pass', 'GAS', '1999-06-11', 'Tagalog', 'Christian', 'Kaiser Besantie', 'Kaiser Besantie', 'Kaiser Besantie', 2147483647, '2015-04-05 16:48:19', NULL, NULL, NULL, NULL, NULL, NULL, 351, 'Graduated', 'antipolos2.png', '2018-2019'),
('135066538305', 'Aldiss', 'Skipp', 'Winmill', 'Male', '56 Truax Street', 'ABM', '2001-12-03', 'English', 'Catholic', 'Skipp Winmill', 'Skipp Winmill', 'Skipp Winmill', 2147483647, '2016-09-08 15:27:31', NULL, NULL, NULL, NULL, NULL, NULL, 352, 'Graduated', 'antipolos2.png', '2018-2019'),
('135084437080', 'Labden', 'Kelsey', 'Risbrough', 'Male', '73255 Westend Avenue', 'GAS', '1999-09-15', 'Tagalog', 'Christian', 'Kelsey Risbrough', 'Kelsey Risbrough', 'Kelsey Risbrough', 2147483647, '2016-12-25 14:00:51', NULL, NULL, NULL, NULL, NULL, NULL, 353, 'Graduated', 'antipolos2.png', '2018-2019'),
('135234518621', 'Dunphy', 'Pammy', 'Ronnay', 'Female', '6 Beilfuss Way', 'STEM', '2001-04-25', 'Tagalog', 'Catholic', 'Pammy Ronnay', 'Pammy Ronnay', 'Pammy Ronnay', 2147483647, '2016-06-02 20:36:03', NULL, NULL, NULL, NULL, NULL, NULL, 354, 'Graduated', 'antipolos2.png', '2018-2019'),
('135492064948', 'Stebbin', 'Lois', 'Felgat', 'Female', '442 Barnett Terrace', 'GAS', '1999-07-14', 'Tagalog', 'Catholic', 'Lois Felgat', 'Lois Felgat', 'Lois Felgat', 1971008069, '2015-07-20 10:26:31', NULL, NULL, NULL, NULL, NULL, NULL, 355, 'Graduated', 'antipolos2.png', '2018-2019'),
('135517759256', 'Van Rembrandt', 'Rosa', 'Zanuciolii', 'Female', '49 Lakeland Point', 'GAS', '1999-01-31', 'Filipino', 'Catholic', 'Rosa Zanuciolii', 'Rosa Zanuciolii', 'Rosa Zanuciolii', 2147483647, '2016-10-02 04:00:11', NULL, NULL, NULL, NULL, NULL, NULL, 356, 'Graduated', 'antipolos2.png', '2018-2019'),
('135626383267', 'Koppens', 'Hedi', 'Cranage', 'Female', '10593 Green Terrace', 'ABM', '1999-07-27', 'Tagalog', 'Catholic', 'Hedi Cranage', 'Hedi Cranage', 'Hedi Cranage', 1044853826, '2015-05-26 15:57:29', NULL, NULL, NULL, NULL, NULL, NULL, 357, 'Graduated', 'antipolos2.png', '2018-2019'),
('135641651444', 'Do Rosario', 'Row', 'Wadsworth', 'Female', '3008 Tomscot Point', 'ABM', '2001-03-29', 'English', 'Catholic', 'Row Wadsworth', 'Row Wadsworth', 'Row Wadsworth', 2147483647, '2015-05-01 08:13:50', NULL, NULL, NULL, NULL, NULL, NULL, 358, 'Graduated', 'antipolos2.png', '2018-2019'),
('135815731033', 'Flemming', 'Gae', 'Nuzzetti', 'Female', '1 Waxwing Drive', 'GAS', '1999-10-06', 'Malay', 'Christian', 'Gae Nuzzetti', 'Gae Nuzzetti', 'Gae Nuzzetti', 2147483647, '2015-10-31 23:54:40', NULL, NULL, NULL, NULL, NULL, NULL, 359, 'Graduated', 'antipolos2.png', '2018-2019'),
('135975416726', 'Feragh', 'Fredek', 'Dewsnap', 'Male', '026 Garrison Trail', 'STEM', '2000-06-22', 'English', 'Catholic', 'Fredek Dewsnap', 'Fredek Dewsnap', 'Fredek Dewsnap', 2147483647, '2015-05-06 02:50:13', NULL, NULL, NULL, NULL, NULL, NULL, 360, 'Graduated', 'antipolos2.png', '2018-2019'),
('136148441852', 'Sone', 'Hortense', 'Couthard', 'Female', '773 Brown Street', 'ABM', '2001-02-25', 'Malay', 'Catholic', 'Hortense Couthard', 'Hortense Couthard', 'Hortense Couthard', 2147483647, '2015-09-24 02:16:00', NULL, NULL, NULL, NULL, NULL, NULL, 361, 'Graduated', 'antipolos2.png', '2018-2019'),
('136192598385', 'Fogel', 'Kalindi', 'Gogie', 'Female', '5 Steensland Trail', 'HUMMS', '1999-12-28', 'Chinese', 'Catholic', 'Kalindi Gogie', 'Kalindi Gogie', 'Kalindi Gogie', 2147483647, '2016-04-22 11:58:31', NULL, NULL, NULL, NULL, NULL, NULL, 362, 'Graduated', 'antipolos2.png', '2018-2019'),
('136375703456', 'Sommerlin', 'Cass', 'Volet', 'Male', '2 Northport Drive', 'GAS', '2001-12-03', 'Tagalog', 'Christian', 'Cass Volet', 'Cass Volet', 'Cass Volet', 2147483647, '2015-07-20 22:25:15', NULL, NULL, NULL, NULL, NULL, NULL, 363, 'Graduated', 'antipolos2.png', '2018-2019'),
('136467793803', 'Houtby', 'Missy', 'Collingworth', 'Female', '086 Brickson Park Parkway', 'GAS', '2002-01-11', 'Chinese', 'Christian', 'Missy Collingworth', 'Missy Collingworth', 'Missy Collingworth', 2147483647, '2015-04-23 12:07:58', NULL, NULL, NULL, NULL, NULL, NULL, 364, 'Graduated', 'antipolos2.png', '2018-2019'),
('136525139384', 'O\' Quirk', 'Coral', 'Millmoe', 'Female', '67 Crest Line Junction', 'ABM', '2002-01-06', 'Malay', 'Christian', 'Coral Millmoe', 'Coral Millmoe', 'Coral Millmoe', 2147483647, '2016-09-19 13:47:07', NULL, NULL, NULL, NULL, NULL, NULL, 365, 'Graduated', 'antipolos2.png', '2018-2019'),
('136546331901', 'Spittle', 'Merridie', 'Moffet', 'Female', '8 Moulton Road', 'GAS', '2001-05-20', 'Malay', 'Catholic', 'Merridie Moffet', 'Merridie Moffet', 'Merridie Moffet', 1462650954, '2015-09-30 04:21:18', NULL, NULL, NULL, NULL, NULL, NULL, 366, 'Graduated', 'antipolos2.png', '2018-2019'),
('136631854569', 'Studdard', 'Berke', 'Zealander', 'Male', '9 Kropf Circle', 'ABM', '2001-04-03', 'Tagalog', 'Catholic', 'Berke Zealander', 'Berke Zealander', 'Berke Zealander', 2147483647, '2016-07-17 23:31:13', NULL, NULL, NULL, NULL, NULL, NULL, 367, 'Graduated', 'antipolos2.png', '2018-2019'),
('136651695465', 'Midford', 'Modestia', 'Rzehorz', 'Female', '0874 Stang Way', 'HUMMS', '1999-05-15', 'Malay', 'Christian', 'Modestia Rzehorz', 'Modestia Rzehorz', 'Modestia Rzehorz', 2147483647, '2016-03-20 11:24:58', NULL, NULL, NULL, NULL, NULL, NULL, 368, 'Graduated', 'antipolos2.png', '2018-2019'),
('136655703867', 'Maffucci', 'Clarice', 'Bockin', 'Female', '3 Namekagon Pass', 'ABM', '2000-03-14', 'Malay', 'Christian', 'Clarice Bockin', 'Clarice Bockin', 'Clarice Bockin', 2147483647, '2017-01-06 17:19:45', NULL, NULL, NULL, NULL, NULL, NULL, 369, 'Graduated', 'antipolos2.png', '2018-2019'),
('136935561324', 'Delete', 'Danette', 'Clackers', 'Female', '4 Valley Edge Trail', 'ABM', '1999-09-07', 'Chinese', 'Catholic', 'Danette Clackers', 'Danette Clackers', 'Danette Clackers', 2147483647, '2015-11-25 05:19:34', NULL, NULL, NULL, NULL, NULL, NULL, 370, 'Graduated', 'antipolos2.png', '2018-2019'),
('137064522679', 'Stollenwerck', 'Sharla', 'Mews', 'Female', '31920 Milwaukee Point', 'GAS', '2000-05-01', 'Chinese', 'Catholic', 'Sharla Mews', 'Sharla Mews', 'Sharla Mews', 2147483647, '2016-08-13 13:10:07', NULL, NULL, NULL, NULL, NULL, NULL, 371, 'Graduated', 'antipolos2.png', '2018-2019'),
('137076263084', 'Dabrowski', 'Kassi', 'Paske', 'Female', '60 Meadow Vale Parkway', 'ABM', '2000-05-14', 'English', 'Christian', 'Kassi Paske', 'Kassi Paske', 'Kassi Paske', 2147483647, '2016-10-02 08:19:44', NULL, NULL, NULL, NULL, NULL, NULL, 372, 'Graduated', 'antipolos2.png', '2018-2019'),
('137100825867', 'Smoth', 'Vinnie', 'Niemiec', 'Male', '4 Carey Street', 'HUMMS', '2001-01-09', 'Tagalog', 'Catholic', 'Vinnie Niemiec', 'Vinnie Niemiec', 'Vinnie Niemiec', 2147483647, '2016-05-24 16:53:00', NULL, NULL, NULL, NULL, NULL, NULL, 373, 'Graduated', 'antipolos2.png', '2018-2019'),
('137782208452', 'Tinmouth', 'Etti', 'Dorrity', 'Female', '31 Heffernan Parkway', 'HUMMS', '2000-10-05', 'Chinese', 'Christian', 'Etti Dorrity', 'Etti Dorrity', 'Etti Dorrity', 2147483647, '2016-12-12 14:43:15', NULL, NULL, NULL, NULL, NULL, NULL, 374, 'Graduated', 'antipolos2.png', '2018-2019'),
('137958391917', 'Chadband', 'Stevena', 'Sutherby', 'Female', '0191 Linden Place', 'GAS', '2001-01-19', 'Tagalog', 'Christian', 'Stevena Sutherby', 'Stevena Sutherby', 'Stevena Sutherby', 2147483647, '2015-02-19 03:57:59', NULL, NULL, NULL, NULL, NULL, NULL, 375, 'Graduated', 'antipolos2.png', '2018-2019'),
('137975790924', 'Aughtie', 'Therese', 'Scrannage', 'Female', '8 Cody Circle', 'ABM', '2000-11-22', 'Malay', 'Christian', 'Therese Scrannage', 'Therese Scrannage', 'Therese Scrannage', 2147483647, '2016-09-24 18:44:35', NULL, NULL, NULL, NULL, NULL, NULL, 376, 'Graduated', 'antipolos2.png', '2018-2019'),
('138125996812', 'Frostdyke', 'Meg', 'Sonschein', 'Female', '5608 Dunning Point', 'GAS', '1999-06-28', 'English', 'Catholic', 'Meg Sonschein', 'Meg Sonschein', 'Meg Sonschein', 2147483647, '2016-09-18 06:57:46', NULL, NULL, NULL, NULL, NULL, NULL, 377, 'Graduated', 'antipolos2.png', '2018-2019'),
('138133351563', 'Fearon', 'Jodi', 'Colhoun', 'Male', '65 Ramsey Street', 'STEM', '2001-01-03', 'Tagalog', 'Catholic', 'Jodi Colhoun', 'Jodi Colhoun', 'Jodi Colhoun', 2004439158, '2016-08-30 11:52:43', NULL, NULL, NULL, NULL, NULL, NULL, 378, 'Graduated', 'antipolos2.png', '2018-2019'),
('138134124552', 'Bumphries', 'Baxy', 'Elgey', 'Male', '02 Division Alley', 'STEM', '2000-07-28', 'Filipino', 'Christian', 'Baxy Elgey', 'Baxy Elgey', 'Baxy Elgey', 2147483647, '2016-12-02 12:50:50', NULL, NULL, NULL, NULL, NULL, NULL, 379, 'Graduated', 'antipolos2.png', '2018-2019'),
('138140003275', 'Thame', 'Heddi', 'Besnardeau', 'Female', '11 Oneill Court', 'HUMMS', '1999-12-01', 'English', 'Christian', 'Heddi Besnardeau', 'Heddi Besnardeau', 'Heddi Besnardeau', 2147483647, '2015-05-12 14:24:46', NULL, NULL, NULL, NULL, NULL, NULL, 380, 'Graduated', 'antipolos2.png', '2018-2019'),
('138187260662', 'Syme', 'Kirsti', 'Lamberts', 'Female', '3 Spenser Hill', 'STEM', '1999-06-12', 'Chinese', 'Catholic', 'Kirsti Lamberts', 'Kirsti Lamberts', 'Kirsti Lamberts', 2147483647, '2015-08-02 12:59:26', NULL, NULL, NULL, NULL, NULL, NULL, 381, 'Graduated', 'antipolos2.png', '2018-2019'),
('138244054731', 'Penritt', 'Sybyl', 'Furmage', 'Female', '218 Jay Plaza', 'GAS', '1999-12-23', 'Chinese', 'Catholic', 'Sybyl Furmage', 'Sybyl Furmage', 'Sybyl Furmage', 1977844670, '2016-11-04 09:14:21', NULL, NULL, NULL, NULL, NULL, NULL, 382, 'Graduated', 'antipolos2.png', '2018-2019'),
('138419103183', 'Linnock', 'Leighton', 'Gimblet', 'Male', '892 Upham Plaza', 'HUMMS', '2001-05-02', 'Malay', 'Catholic', 'Leighton Gimblet', 'Leighton Gimblet', 'Leighton Gimblet', 2147483647, '2015-05-01 02:21:06', NULL, NULL, NULL, NULL, NULL, NULL, 383, 'Graduated', 'antipolos2.png', '2018-2019'),
('138449034101', 'Lubman', 'Edith', 'Ruberry', 'Female', '92393 Meadow Valley Lane', 'GAS', '2000-10-09', 'Filipino', 'Christian', 'Edith Ruberry', 'Edith Ruberry', 'Edith Ruberry', 2147483647, '2015-04-30 12:43:06', NULL, NULL, NULL, NULL, NULL, NULL, 384, 'Graduated', 'antipolos2.png', '2018-2019'),
('138467002143', 'Hankard', 'Etan', 'Stancliffe', 'Male', '1 Ridgeview Street', 'HUMMS', '1999-07-25', 'Filipino', 'Catholic', 'Etan Stancliffe', 'Etan Stancliffe', 'Etan Stancliffe', 2147483647, '2016-01-18 06:21:09', NULL, NULL, NULL, NULL, NULL, NULL, 385, 'Graduated', 'antipolos2.png', '2018-2019'),
('138504899997', 'Brilleman', 'Geno', 'Cusworth', 'Male', '41 Kipling Drive', 'STEM', '2001-01-11', 'English', 'Christian', 'Geno Cusworth', 'Geno Cusworth', 'Geno Cusworth', 2147483647, '2015-07-25 22:40:53', NULL, NULL, NULL, NULL, NULL, NULL, 386, 'Graduated', 'antipolos2.png', '2018-2019'),
('138517852043', 'Blenkinsopp', 'Greggory', 'Vasyukov', 'Male', '89 David Drive', 'GAS', '1999-11-15', 'English', 'Catholic', 'Greggory Vasyukov', 'Greggory Vasyukov', 'Greggory Vasyukov', 2147483647, '2016-11-16 17:53:03', NULL, NULL, NULL, NULL, NULL, NULL, 387, 'Graduated', 'antipolos2.png', '2018-2019'),
('138612652133', 'Copcutt', 'Marget', 'Berry', 'Female', '56 Hazelcrest Crossing', 'STEM', '2002-01-20', 'Malay', 'Catholic', 'Marget Berry', 'Marget Berry', 'Marget Berry', 2147483647, '2015-04-29 18:11:38', NULL, NULL, NULL, NULL, NULL, NULL, 388, 'Graduated', 'antipolos2.png', '2018-2019'),
('138813447683', 'Klemps', 'Nancy', 'Headford', 'Female', '00 Roth Trail', 'ABM', '2001-09-10', 'Tagalog', 'Catholic', 'Nancy Headford', 'Nancy Headford', 'Nancy Headford', 2147483647, '2015-06-18 11:37:01', NULL, NULL, NULL, NULL, NULL, NULL, 389, 'Graduated', 'antipolos2.png', '2018-2019'),
('138839760298', 'Baggallay', 'Shaylynn', 'Postins', 'Female', '01356 Crowley Lane', 'HUMMS', '1999-09-11', 'Tagalog', 'Catholic', 'Shaylynn Postins', 'Shaylynn Postins', 'Shaylynn Postins', 2147483647, '2015-07-27 14:45:44', NULL, NULL, NULL, NULL, NULL, NULL, 390, 'Graduated', 'antipolos2.png', '2018-2019'),
('139000393985', 'Guilford', 'Mufinella', 'Clint', 'Female', '12655 Victoria Center', 'HUMMS', '1999-02-19', 'Filipino', 'Catholic', 'Mufinella Clint', 'Mufinella Clint', 'Mufinella Clint', 2147483647, '2016-09-27 06:11:22', NULL, NULL, NULL, NULL, NULL, NULL, 391, 'Graduated', 'antipolos2.png', '2018-2019'),
('139078714271', 'Bootherstone', 'Pren', 'Kinglake', 'Male', '6 Nova Crossing', 'GAS', '2000-05-12', 'Chinese', 'Catholic', 'Pren Kinglake', 'Pren Kinglake', 'Pren Kinglake', 2147483647, '2016-07-03 04:59:33', NULL, NULL, NULL, NULL, NULL, NULL, 392, 'Graduated', 'antipolos2.png', '2018-2019'),
('139120624938', 'Steuhlmeyer', 'Gisele', 'Plumtree', 'Female', '22 Sutteridge Alley', 'GAS', '2000-12-27', 'Tagalog', 'Catholic', 'Gisele Plumtree', 'Gisele Plumtree', 'Gisele Plumtree', 2147483647, '2016-03-18 08:02:14', NULL, NULL, NULL, NULL, NULL, NULL, 393, 'Graduated', 'antipolos2.png', '2018-2019'),
('139245199158', 'Clarycott', 'Kissiah', 'Top', 'Female', '22976 Larry Alley', 'ABM', '2001-01-07', 'Malay', 'Catholic', 'Kissiah Top', 'Kissiah Top', 'Kissiah Top', 2147483647, '2015-10-30 06:59:18', NULL, NULL, NULL, NULL, NULL, NULL, 394, 'Graduated', 'antipolos2.png', '2018-2019'),
('139246985615', 'Gelderd', 'Urson', 'Olfert', 'Male', '689 Daystar Hill', 'STEM', '1999-06-03', 'English', 'Christian', 'Urson Olfert', 'Urson Olfert', 'Urson Olfert', 2147483647, '2015-05-07 02:49:39', NULL, NULL, NULL, NULL, NULL, NULL, 395, 'Graduated', 'antipolos2.png', '2018-2019'),
('139410748809', 'Shoobridge', 'Bernardo', 'Towey', 'Male', '3750 Cody Trail', 'STEM', '1999-07-28', 'Filipino', 'Catholic', 'Bernardo Towey', 'Bernardo Towey', 'Bernardo Towey', 2147483647, '2015-08-10 07:46:45', NULL, NULL, NULL, NULL, NULL, NULL, 396, 'Graduated', 'antipolos2.png', '2018-2019'),
('139461846984', 'Habbema', 'Liane', 'Pieracci', 'Female', '7205 Killdeer Junction', 'ABM', '2000-08-09', 'Tagalog', 'Christian', 'Liane Pieracci', 'Liane Pieracci', 'Liane Pieracci', 2147483647, '2016-03-23 04:26:55', NULL, NULL, NULL, NULL, NULL, NULL, 397, 'Graduated', 'antipolos2.png', '2018-2019'),
('139542016445', 'Hallut', 'Mable', 'Rizzolo', 'Female', '0640 Kipling Crossing', 'STEM', '1999-02-09', 'Filipino', 'Catholic', 'Mable Rizzolo', 'Mable Rizzolo', 'Mable Rizzolo', 2147483647, '2016-12-17 16:02:25', NULL, NULL, NULL, NULL, NULL, NULL, 398, 'Graduated', 'antipolos2.png', '2018-2019'),
('139613880681', 'Pietraszek', 'Joeann', 'Lammerts', 'Female', '113 Westend Circle', 'STEM', '2000-04-05', 'English', 'Catholic', 'Joeann Lammerts', 'Joeann Lammerts', 'Joeann Lammerts', 2147483647, '2016-04-01 23:37:41', NULL, NULL, NULL, NULL, NULL, NULL, 399, 'Graduated', 'antipolos2.png', '2018-2019'),
('139767067936', 'Perle', 'Orran', 'Grigs', 'Male', '12 Russell Point', 'HUMMS', '2000-08-17', 'Filipino', 'Christian', 'Orran Grigs', 'Orran Grigs', 'Orran Grigs', 2147483647, '2015-05-13 22:22:12', NULL, NULL, NULL, NULL, NULL, NULL, 400, 'Graduated', 'antipolos2.png', '2018-2019'),
('139769649143', 'Jirus', 'Agosto', 'Bladge', 'Male', '0309 Susan Drive', 'HUMMS', '2001-11-14', 'English', 'Christian', 'Agosto Bladge', 'Agosto Bladge', 'Agosto Bladge', 2147483647, '2017-01-28 09:40:56', NULL, NULL, NULL, NULL, NULL, NULL, 401, 'Graduated', 'antipolos2.png', '2018-2019'),
('139802253431', 'Sharpe', 'Jamil', 'Merck', 'Male', '9802 Garrison Court', 'ABM', '1999-03-10', 'Filipino', 'Christian', 'Jamil Merck', 'Jamil Merck', 'Jamil Merck', 2147483647, '2016-04-08 06:33:00', NULL, NULL, NULL, NULL, NULL, NULL, 402, 'Graduated', 'antipolos2.png', '2018-2019'),
('139831753960', 'Noye', 'Mara', 'Yorath', 'Female', '11 Packers Plaza', 'HUMMS', '2000-10-09', 'Chinese', 'Christian', 'Mara Yorath', 'Mara Yorath', 'Mara Yorath', 2147483647, '2016-02-21 00:32:04', NULL, NULL, NULL, NULL, NULL, NULL, 403, 'Graduated', 'antipolos2.png', '2018-2019'),
('139981262941', 'Moodey', 'Dill', 'Banaszewski', 'Male', '5804 Union Alley', 'GAS', '2001-11-20', 'Filipino', 'Christian', 'Dill Banaszewski', 'Dill Banaszewski', 'Dill Banaszewski', 2147483647, '2016-12-15 18:48:44', NULL, NULL, NULL, NULL, NULL, NULL, 404, 'Graduated', 'antipolos2.png', '2018-2019'),
('139986667499', 'Simonsen', 'Mildrid', 'Winkless', 'Female', '78504 Jay Center', 'HUMMS', '2001-01-15', 'Tagalog', 'Catholic', 'Mildrid Winkless', 'Mildrid Winkless', 'Mildrid Winkless', 2147483647, '2015-02-26 21:29:29', NULL, NULL, NULL, NULL, NULL, NULL, 405, 'Graduated', 'antipolos2.png', '2018-2019'),
('140049733903', 'La Batie', 'Toby', 'Foddy', 'Female', '0741 Bluestem Point', 'GAS', '2000-07-24', 'Tagalog', 'Christian', 'Toby Foddy', 'Toby Foddy', 'Toby Foddy', 2147483647, '2016-01-09 17:55:21', NULL, NULL, NULL, NULL, NULL, NULL, 406, 'Graduated', 'antipolos2.png', '2018-2019'),
('140206125007', 'Ernke', 'Winthrop', 'Pegden', 'Male', '8541 Shelley Plaza', 'GAS', '2001-12-25', 'Tagalog', 'Catholic', 'Winthrop Pegden', 'Winthrop Pegden', 'Winthrop Pegden', 2147483647, '2017-01-05 02:40:42', NULL, NULL, NULL, NULL, NULL, NULL, 407, 'Graduated', 'antipolos2.png', '2018-2019'),
('140229200664', 'Domingues', 'Gage', 'Casado', 'Male', '3562 Holy Cross Center', 'GAS', '2001-07-30', 'English', 'Christian', 'Gage Casado', 'Gage Casado', 'Gage Casado', 2084748490, '2016-09-19 07:22:03', NULL, NULL, NULL, NULL, NULL, NULL, 408, 'Graduated', 'antipolos2.png', '2018-2019'),
('140405530845', 'Boards', 'Nathanial', 'Schruur', 'Male', '5 Fremont Parkway', 'GAS', '2001-04-02', 'Malay', 'Catholic', 'Nathanial Schruur', 'Nathanial Schruur', 'Nathanial Schruur', 2147483647, '2015-12-21 18:25:01', NULL, NULL, NULL, NULL, NULL, NULL, 409, 'Graduated', 'antipolos2.png', '2018-2019'),
('140413759813', 'Gillett', 'Giacomo', 'Jacketts', 'Male', '7374 Rockefeller Trail', 'ABM', '2000-10-14', 'Chinese', 'Catholic', 'Giacomo Jacketts', 'Giacomo Jacketts', 'Giacomo Jacketts', 2147483647, '2016-06-26 14:38:56', NULL, NULL, NULL, NULL, NULL, NULL, 410, 'Graduated', 'antipolos2.png', '2018-2019'),
('140545486911', 'Corps', 'Ezequiel', 'McNeilly', 'Male', '219 Forster Park', 'HUMMS', '2001-01-22', 'Chinese', 'Christian', 'Ezequiel McNeilly', 'Ezequiel McNeilly', 'Ezequiel McNeilly', 1625670195, '2016-10-20 02:14:25', NULL, NULL, NULL, NULL, NULL, NULL, 411, 'Graduated', 'antipolos2.png', '2018-2019'),
('140619189178', 'Perview', 'Tersina', 'Ackroyd', 'Female', '2645 Lake View Parkway', 'HUMMS', '2001-02-03', 'Tagalog', 'Christian', 'Tersina Ackroyd', 'Tersina Ackroyd', 'Tersina Ackroyd', 2147483647, '2016-12-26 22:47:18', NULL, NULL, NULL, NULL, NULL, NULL, 412, 'Graduated', 'antipolos2.png', '2018-2019'),
('140687367985', 'Bursnell', 'Hall', 'Aitcheson', 'Male', '87 Cambridge Park', 'ABM', '2000-03-02', 'Tagalog', 'Christian', 'Hall Aitcheson', 'Hall Aitcheson', 'Hall Aitcheson', 1733867906, '2015-11-16 07:48:58', NULL, NULL, NULL, NULL, NULL, NULL, 413, 'Graduated', 'antipolos2.png', '2018-2019'),
('140796671235', 'Bickford', 'Sophey', 'Caseri', 'Female', '7441 Hintze Junction', 'STEM', '1999-03-16', 'Chinese', 'Catholic', 'Sophey Caseri', 'Sophey Caseri', 'Sophey Caseri', 2147483647, '2015-10-20 17:23:05', NULL, NULL, NULL, NULL, NULL, NULL, 414, 'Graduated', 'antipolos2.png', '2018-2019'),
('141072195097', 'Andrag', 'Halsy', 'Brade', 'Male', '429 Sloan Avenue', 'STEM', '2001-05-14', 'English', 'Christian', 'Halsy Brade', 'Halsy Brade', 'Halsy Brade', 2147483647, '2017-01-24 05:53:32', NULL, NULL, NULL, NULL, NULL, NULL, 415, 'Graduated', 'antipolos2.png', '2018-2019'),
('141077999411', 'Skakunas', 'Cassi', 'Slowcock', 'Female', '98492 Shopko Pass', 'STEM', '1999-06-16', 'Chinese', 'Christian', 'Cassi Slowcock', 'Cassi Slowcock', 'Cassi Slowcock', 2147483647, '2016-08-17 01:20:59', NULL, NULL, NULL, NULL, NULL, NULL, 416, 'Graduated', 'antipolos2.png', '2018-2019'),
('141080589868', 'Olfert', 'Mic', 'Bouch', 'Male', '4 Milwaukee Lane', 'HUMMS', '2001-01-16', 'Malay', 'Catholic', 'Mic Bouch', 'Mic Bouch', 'Mic Bouch', 2147483647, '2015-02-13 10:47:32', NULL, NULL, NULL, NULL, NULL, NULL, 417, 'Graduated', 'antipolos2.png', '2018-2019'),
('141116848285', 'Hammerson', 'Noland', 'Patten', 'Male', '220 Doe Crossing Terrace', 'STEM', '1999-02-06', 'Chinese', 'Catholic', 'Noland Patten', 'Noland Patten', 'Noland Patten', 2147483647, '2016-10-11 14:06:51', NULL, NULL, NULL, NULL, NULL, NULL, 418, 'Graduated', 'antipolos2.png', '2018-2019'),
('141265786058', 'Byforth', 'Shane', 'Brickham', 'Male', '02 Duke Court', 'HUMMS', '2001-12-26', 'Tagalog', 'Catholic', 'Shane Brickham', 'Shane Brickham', 'Shane Brickham', 2147483647, '2015-04-05 15:40:36', NULL, NULL, NULL, NULL, NULL, NULL, 419, 'Graduated', 'antipolos2.png', '2018-2019'),
('141319036640', 'Hinken', 'Clayton', 'Risborough', 'Male', '064 Towne Center', 'STEM', '2002-01-05', 'Filipino', 'Catholic', 'Clayton Risborough', 'Clayton Risborough', 'Clayton Risborough', 2147483647, '2015-12-22 18:12:16', NULL, NULL, NULL, NULL, NULL, NULL, 420, 'Graduated', 'antipolos2.png', '2018-2019'),
('141363105142', 'Witherington', 'Charley', 'Gobat', 'Male', '748 Mallard Court', 'STEM', '1999-06-10', 'Tagalog', 'Catholic', 'Charley Gobat', 'Charley Gobat', 'Charley Gobat', 2147483647, '2016-05-24 07:20:19', NULL, NULL, NULL, NULL, NULL, NULL, 421, 'Graduated', 'antipolos2.png', '2018-2019'),
('141409749875', 'Stiven', 'Pavia', 'Aronowitz', 'Female', '87154 Macpherson Parkway', 'ABM', '2000-01-06', 'Chinese', 'Christian', 'Pavia Aronowitz', 'Pavia Aronowitz', 'Pavia Aronowitz', 1438104426, '2015-02-01 13:57:48', NULL, NULL, NULL, NULL, NULL, NULL, 422, 'Graduated', 'antipolos2.png', '2018-2019'),
('141464895583', 'Eyton', 'Titus', 'Adamsen', 'Male', '7 Crowley Lane', 'STEM', '1999-04-14', 'Chinese', 'Catholic', 'Titus Adamsen', 'Titus Adamsen', 'Titus Adamsen', 2147483647, '2015-05-08 12:14:06', NULL, NULL, NULL, NULL, NULL, NULL, 423, 'Graduated', 'antipolos2.png', '2018-2019'),
('141487291709', 'Wards', 'Jarib', 'Feldklein', 'Male', '6030 Aberg Place', 'ABM', '2000-04-10', 'Malay', 'Catholic', 'Jarib Feldklein', 'Jarib Feldklein', 'Jarib Feldklein', 1819752587, '2017-01-06 12:26:27', NULL, NULL, NULL, NULL, NULL, NULL, 424, 'Graduated', 'antipolos2.png', '2018-2019'),
('141637993767', 'Binnion', 'Oralla', 'Woolhouse', 'Female', '7586 Butterfield Center', 'GAS', '2000-02-24', 'Chinese', 'Christian', 'Oralla Woolhouse', 'Oralla Woolhouse', 'Oralla Woolhouse', 2147483647, '2015-08-02 02:21:00', NULL, NULL, NULL, NULL, NULL, NULL, 425, 'Graduated', 'antipolos2.png', '2018-2019'),
('141661007047', 'Ucchino', 'Jude', 'McEttigen', 'Male', '26551 Marcy Hill', 'HUMMS', '1999-07-04', 'Tagalog', 'Catholic', 'Jude McEttigen', 'Jude McEttigen', 'Jude McEttigen', 2147483647, '2015-05-29 01:31:09', NULL, NULL, NULL, NULL, NULL, NULL, 426, 'Graduated', 'antipolos2.png', '2018-2019'),
('141725133825', 'McGilvra', 'Valentijn', 'Jarrelt', 'Male', '031 Bay Center', 'STEM', '2001-03-19', 'Filipino', 'Catholic', 'Valentijn Jarrelt', 'Valentijn Jarrelt', 'Valentijn Jarrelt', 2147483647, '2016-05-11 06:10:01', NULL, NULL, NULL, NULL, NULL, NULL, 427, 'Graduated', 'antipolos2.png', '2018-2019'),
('141785807136', 'Poynzer', 'Robby', 'Stoile', 'Male', '564 Hoepker Junction', 'ABM', '2001-05-10', 'Malay', 'Christian', 'Robby Stoile', 'Robby Stoile', 'Robby Stoile', 2147483647, '2015-05-20 07:01:36', NULL, NULL, NULL, NULL, NULL, NULL, 428, 'Graduated', 'antipolos2.png', '2018-2019'),
('141801382691', 'Brackpool', 'Maddie', 'Vlies', 'Male', '667 Vermont Road', 'ABM', '2001-07-16', 'Tagalog', 'Catholic', 'Maddie Vlies', 'Maddie Vlies', 'Maddie Vlies', 1632656140, '2016-08-13 05:13:17', NULL, NULL, NULL, NULL, NULL, NULL, 429, 'Graduated', 'antipolos2.png', '2018-2019'),
('141864869573', 'Cattermole', 'Gram', 'Butterworth', 'Male', '86131 Pearson Lane', 'HUMMS', '2000-03-05', 'Chinese', 'Christian', 'Gram Butterworth', 'Gram Butterworth', 'Gram Butterworth', 2147483647, '2016-04-25 02:00:32', NULL, NULL, NULL, NULL, NULL, NULL, 430, 'Graduated', 'antipolos2.png', '2018-2019'),
('141888085166', 'Campagne', 'Renie', 'Munday', 'Female', '7 Acker Court', 'ABM', '2000-04-21', 'Malay', 'Catholic', 'Renie Munday', 'Renie Munday', 'Renie Munday', 2147483647, '2015-05-07 07:24:24', NULL, NULL, NULL, NULL, NULL, NULL, 431, 'Graduated', 'antipolos2.png', '2018-2019'),
('141941384860', 'Cobson', 'Cassandre', 'Wollers', 'Female', '19 Anniversary Crossing', 'ABM', '2001-04-05', 'Chinese', 'Christian', 'Cassandre Wollers', 'Cassandre Wollers', 'Cassandre Wollers', 2147483647, '2015-12-27 20:34:27', NULL, NULL, NULL, NULL, NULL, NULL, 432, 'Graduated', 'antipolos2.png', '2018-2019'),
('142043782004', 'Holligan', 'Dorris', 'Briztman', 'Female', '318 Thompson Terrace', 'HUMMS', '2000-10-04', 'English', 'Christian', 'Dorris Briztman', 'Dorris Briztman', 'Dorris Briztman', 2147483647, '2016-05-16 11:21:40', NULL, NULL, NULL, NULL, NULL, NULL, 433, 'Graduated', 'antipolos2.png', '2018-2019'),
('142087164666', 'Verchambre', 'Dickie', 'Capener', 'Male', '0239 Dottie Parkway', 'STEM', '2000-04-21', 'Chinese', 'Christian', 'Dickie Capener', 'Dickie Capener', 'Dickie Capener', 1509233708, '2016-04-04 14:41:21', NULL, NULL, NULL, NULL, NULL, NULL, 434, 'Graduated', 'antipolos2.png', '2018-2019'),
('142125615412', 'Columbell', 'Glen', 'Weeks', 'Female', '6 Westport Junction', 'ABM', '2001-07-02', 'Malay', 'Christian', 'Glen Weeks', 'Glen Weeks', 'Glen Weeks', 2147483647, '2015-05-09 01:32:51', NULL, NULL, NULL, NULL, NULL, NULL, 435, 'Graduated', 'antipolos2.png', '2018-2019'),
('142130683620', 'Starrs', 'Annalise', 'Bromby', 'Female', '32 Havey Trail', 'GAS', '2000-09-10', 'Malay', 'Christian', 'Annalise Bromby', 'Annalise Bromby', 'Annalise Bromby', 2147483647, '2016-06-06 03:38:52', NULL, NULL, NULL, NULL, NULL, NULL, 436, 'Graduated', 'antipolos2.png', '2018-2019'),
('142364556713', 'Creany', 'Darrell', 'Halfacree', 'Male', '3821 Tennyson Avenue', 'HUMMS', '1999-12-02', 'Malay', 'Christian', 'Darrell Halfacree', 'Darrell Halfacree', 'Darrell Halfacree', 2147483647, '2015-02-06 08:57:48', NULL, NULL, NULL, NULL, NULL, NULL, 437, 'Graduated', 'antipolos2.png', '2018-2019'),
('142368085627', 'Senton', 'Shantee', 'Pattinson', 'Female', '971 Barby Circle', 'HUMMS', '1999-10-24', 'English', 'Catholic', 'Shantee Pattinson', 'Shantee Pattinson', 'Shantee Pattinson', 2147483647, '2016-01-16 19:26:02', NULL, NULL, NULL, NULL, NULL, NULL, 438, 'Graduated', 'antipolos2.png', '2018-2019'),
('142435550664', 'Gravet', 'Eryn', 'Ninnis', 'Female', '4742 Hooker Avenue', 'HUMMS', '1999-03-06', 'Filipino', 'Catholic', 'Eryn Ninnis', 'Eryn Ninnis', 'Eryn Ninnis', 2147483647, '2015-12-16 04:33:22', NULL, NULL, NULL, NULL, NULL, NULL, 439, 'Graduated', 'antipolos2.png', '2018-2019'),
('143112470527', 'Nazaret', 'Anallise', 'Seabrocke', 'Female', '09988 Knutson Circle', 'HUMMS', '1999-09-06', 'English', 'Christian', 'Anallise Seabrocke', 'Anallise Seabrocke', 'Anallise Seabrocke', 2147483647, '2015-08-23 09:20:18', NULL, NULL, NULL, NULL, NULL, NULL, 440, 'Graduated', 'antipolos2.png', '2018-2019'),
('143259360941', 'Deans', 'Dionis', 'Nash', 'Female', '386 Heath Park', 'ABM', '2001-06-15', 'Chinese', 'Catholic', 'Dionis Nash', 'Dionis Nash', 'Dionis Nash', 2147483647, '2016-05-07 22:14:39', NULL, NULL, NULL, NULL, NULL, NULL, 441, 'Graduated', 'antipolos2.png', '2018-2019'),
('143689384080', 'MacAdam', 'Kore', 'Honnicott', 'Female', '0425 Larry Court', 'STEM', '1999-03-19', 'Filipino', 'Christian', 'Kore Honnicott', 'Kore Honnicott', 'Kore Honnicott', 2147483647, '2015-03-18 10:05:46', NULL, NULL, NULL, NULL, NULL, NULL, 442, 'Graduated', 'antipolos2.png', '2018-2019'),
('143702802380', 'Fishley', 'Ave', 'Ketton', 'Male', '794 Summit Hill', 'ABM', '1999-10-18', 'Filipino', 'Catholic', 'Ave Ketton', 'Ave Ketton', 'Ave Ketton', 2147483647, '2015-08-09 19:04:09', NULL, NULL, NULL, NULL, NULL, NULL, 443, 'Graduated', 'antipolos2.png', '2018-2019'),
('143758349322', 'Reade', 'Georgia', 'Readwood', 'Female', '510 Melody Hill', 'GAS', '2001-02-14', 'Malay', 'Catholic', 'Georgia Readwood', 'Georgia Readwood', 'Georgia Readwood', 2147483647, '2015-04-11 22:04:51', NULL, NULL, NULL, NULL, NULL, NULL, 444, 'Graduated', 'antipolos2.png', '2018-2019'),
('143807367082', 'Harron', 'Kerrie', 'McCrystal', 'Female', '9 La Follette Lane', 'HUMMS', '2002-01-05', 'Tagalog', 'Christian', 'Kerrie McCrystal', 'Kerrie McCrystal', 'Kerrie McCrystal', 2147483647, '2016-06-13 00:21:33', NULL, NULL, NULL, NULL, NULL, NULL, 445, 'Graduated', 'antipolos2.png', '2018-2019'),
('143825776216', 'Gerrans', 'Elvina', 'Velasquez', 'Female', '4 Haas Pass', 'STEM', '2002-01-16', 'English', 'Catholic', 'Elvina Velasquez', 'Elvina Velasquez', 'Elvina Velasquez', 2147483647, '2017-01-19 22:49:09', NULL, NULL, NULL, NULL, NULL, NULL, 446, 'Graduated', 'antipolos2.png', '2018-2019'),
('144009086663', 'Amorine', 'Agatha', 'Pollett', 'Female', '593 Karstens Junction', 'STEM', '2000-01-17', 'Malay', 'Christian', 'Agatha Pollett', 'Agatha Pollett', 'Agatha Pollett', 2147483647, '2015-12-27 14:37:00', NULL, NULL, NULL, NULL, NULL, NULL, 447, 'Graduated', 'antipolos2.png', '2018-2019'),
('144079243206', 'Wyvill', 'Torrey', 'Holston', 'Male', '887 Mesta Circle', 'STEM', '1999-01-30', 'English', 'Catholic', 'Torrey Holston', 'Torrey Holston', 'Torrey Holston', 2147483647, '2015-11-05 09:31:24', NULL, NULL, NULL, NULL, NULL, NULL, 448, 'Graduated', 'antipolos2.png', '2018-2019'),
('144206513767', 'Gossipin', 'Sigfrid', 'Longbone', 'Male', '04024 Colorado Alley', 'STEM', '2001-04-02', 'Filipino', 'Catholic', 'Sigfrid Longbone', 'Sigfrid Longbone', 'Sigfrid Longbone', 2147483647, '2015-10-03 19:41:55', NULL, NULL, NULL, NULL, NULL, NULL, 449, 'Graduated', 'antipolos2.png', '2018-2019'),
('144614192853', 'Willerstone', 'Yvor', 'Winslow', 'Male', '88526 Kim Crossing', 'ABM', '2000-02-28', 'Chinese', 'Catholic', 'Yvor Winslow', 'Yvor Winslow', 'Yvor Winslow', 2147483647, '2015-11-22 06:09:09', NULL, NULL, NULL, NULL, NULL, NULL, 450, 'Graduated', 'antipolos2.png', '2018-2019'),
('144687794932', 'Tytcomb', 'Nadia', 'Webland', 'Female', '11692 1st Hill', 'STEM', '2001-12-20', 'Filipino', 'Catholic', 'Nadia Webland', 'Nadia Webland', 'Nadia Webland', 2147483647, '2015-07-12 06:41:16', NULL, NULL, NULL, NULL, NULL, NULL, 451, 'Graduated', 'antipolos2.png', '2018-2019'),
('144760138197', 'Cawson', 'Adlai', 'Yewdall', 'Male', '5 Butterfield Junction', 'STEM', '1999-11-05', 'Filipino', 'Catholic', 'Adlai Yewdall', 'Adlai Yewdall', 'Adlai Yewdall', 2147483647, '2016-04-15 20:55:12', NULL, NULL, NULL, NULL, NULL, NULL, 452, 'Graduated', 'antipolos2.png', '2018-2019'),
('144980858754', 'Absolom', 'Rey', 'Gimson', 'Female', '271 Paget Circle', 'GAS', '2000-12-04', 'Chinese', 'Christian', 'Rey Gimson', 'Rey Gimson', 'Rey Gimson', 2147483647, '2015-08-21 14:11:34', NULL, NULL, NULL, NULL, NULL, NULL, 453, 'Graduated', 'antipolos2.png', '2018-2019'),
('145460963225', 'Chaffen', 'Antoine', 'Duiguid', 'Male', '4178 Elgar Hill', 'HUMMS', '2000-12-20', 'Malay', 'Christian', 'Antoine Duiguid', 'Antoine Duiguid', 'Antoine Duiguid', 2147483647, '2015-12-19 13:58:49', NULL, NULL, NULL, NULL, NULL, NULL, 454, 'Graduated', 'antipolos2.png', '2018-2019'),
('145632123825', 'Haslehurst', 'Jon', 'Blankley', 'Male', '0834 Haas Road', 'GAS', '2000-12-12', 'Malay', 'Christian', 'Jon Blankley', 'Jon Blankley', 'Jon Blankley', 2147483647, '2016-05-05 20:43:51', NULL, NULL, NULL, NULL, NULL, NULL, 455, 'Graduated', 'antipolos2.png', '2018-2019'),
('145783589133', 'Greed', 'Howey', 'Cromett', 'Male', '62 1st Pass', 'HUMMS', '2001-08-11', 'Tagalog', 'Christian', 'Howey Cromett', 'Howey Cromett', 'Howey Cromett', 2147483647, '2015-09-12 00:38:31', NULL, NULL, NULL, NULL, NULL, NULL, 456, 'Graduated', 'antipolos2.png', '2018-2019'),
('145885216521', 'Huntingdon', 'Janeta', 'Klossek', 'Female', '91797 Corben Trail', 'HUMMS', '2000-05-29', 'Malay', 'Christian', 'Janeta Klossek', 'Janeta Klossek', 'Janeta Klossek', 2147483647, '2017-01-25 17:53:49', NULL, NULL, NULL, NULL, NULL, NULL, 457, 'Graduated', 'antipolos2.png', '2018-2019'),
('145941086498', 'O\' Mulderrig', 'Page', 'Cantopher', 'Male', '4 Longview Park', 'GAS', '2000-01-04', 'Tagalog', 'Christian', 'Page Cantopher', 'Page Cantopher', 'Page Cantopher', 2147483647, '2015-02-25 23:44:14', NULL, NULL, NULL, NULL, NULL, NULL, 458, 'Graduated', 'antipolos2.png', '2018-2019'),
('145963113959', 'Brunning', 'Starr', 'Lofty', 'Female', '8843 Di Loreto Crossing', 'HUMMS', '2001-03-23', 'Malay', 'Christian', 'Starr Lofty', 'Starr Lofty', 'Starr Lofty', 2147483647, '2015-02-02 00:46:06', NULL, NULL, NULL, NULL, NULL, NULL, 459, 'Graduated', 'antipolos2.png', '2018-2019'),
('146090128708', 'Scholes', 'Mariette', 'Lenden', 'Female', '3258 Nova Circle', 'GAS', '1999-09-25', 'Filipino', 'Christian', 'Mariette Lenden', 'Mariette Lenden', 'Mariette Lenden', 2147483647, '2015-02-18 06:09:11', NULL, NULL, NULL, NULL, NULL, NULL, 460, 'Graduated', 'antipolos2.png', '2018-2019'),
('146112253036', 'Blazej', 'Carey', 'Adamiak', 'Male', '9 Schmedeman Court', 'ABM', '2001-04-16', 'Tagalog', 'Christian', 'Carey Adamiak', 'Carey Adamiak', 'Carey Adamiak', 2147483647, '2016-04-14 10:22:51', NULL, NULL, NULL, NULL, NULL, NULL, 461, 'Graduated', 'antipolos2.png', '2018-2019'),
('146126493016', 'Picton', 'Garwood', 'Laval', 'Male', '79040 Banding Point', 'ABM', '2001-11-22', 'Malay', 'Catholic', 'Garwood Laval', 'Garwood Laval', 'Garwood Laval', 2147483647, '2016-07-25 11:29:02', NULL, NULL, NULL, NULL, NULL, NULL, 462, 'Graduated', 'antipolos2.png', '2018-2019'),
('146222645898', 'Delgaty', 'Benoit', 'MacAllaster', 'Male', '7296 Ludington Trail', 'STEM', '2001-08-07', 'Tagalog', 'Christian', 'Benoit MacAllaster', 'Benoit MacAllaster', 'Benoit MacAllaster', 2147483647, '2015-02-05 07:30:07', NULL, NULL, NULL, NULL, NULL, NULL, 463, 'Graduated', 'antipolos2.png', '2018-2019'),
('146235015757', 'Scotchmor', 'Robers', 'Diggin', 'Male', '02710 Hintze Point', 'ABM', '1999-05-15', 'English', 'Catholic', 'Robers Diggin', 'Robers Diggin', 'Robers Diggin', 2147483647, '2015-08-02 22:10:22', NULL, NULL, NULL, NULL, NULL, NULL, 464, 'Graduated', 'antipolos2.png', '2018-2019'),
('146428435356', 'Snelgar', 'Teddy', 'Kumar', 'Female', '3886 Norway Maple Point', 'GAS', '2000-10-12', 'Chinese', 'Catholic', 'Teddy Kumar', 'Teddy Kumar', 'Teddy Kumar', 2147483647, '2016-06-15 03:46:03', NULL, NULL, NULL, NULL, NULL, NULL, 465, 'Graduated', 'antipolos2.png', '2018-2019'),
('146742663771', 'Monget', 'Clovis', 'Welbourn', 'Female', '37049 Ryan Center', 'ABM', '2000-02-24', 'Tagalog', 'Catholic', 'Clovis Welbourn', 'Clovis Welbourn', 'Clovis Welbourn', 2147483647, '2016-03-14 23:36:40', NULL, NULL, NULL, NULL, NULL, NULL, 466, 'Graduated', 'antipolos2.png', '2018-2019'),
('146811472330', 'Gudahy', 'Wain', 'McCadden', 'Male', '4 Lerdahl Trail', 'STEM', '2001-03-21', 'Malay', 'Catholic', 'Wain McCadden', 'Wain McCadden', 'Wain McCadden', 2147483647, '2016-06-10 18:45:54', NULL, NULL, NULL, NULL, NULL, NULL, 467, 'Graduated', 'antipolos2.png', '2018-2019'),
('146835543609', 'Leades', 'Phillida', 'Klementz', 'Female', '438 Carberry Plaza', 'GAS', '2001-01-01', 'English', 'Catholic', 'Phillida Klementz', 'Phillida Klementz', 'Phillida Klementz', 2147483647, '2015-09-21 21:09:34', NULL, NULL, NULL, NULL, NULL, NULL, 468, 'Graduated', 'antipolos2.png', '2018-2019'),
('146956727024', 'Faulds', 'Abel', 'Toynbee', 'Male', '41 Redwing Circle', 'GAS', '1999-05-03', 'Chinese', 'Christian', 'Abel Toynbee', 'Abel Toynbee', 'Abel Toynbee', 2147483647, '2016-04-08 12:54:17', NULL, NULL, NULL, NULL, NULL, NULL, 469, 'Graduated', 'antipolos2.png', '2018-2019'),
('147051245442', 'Perview', 'Denna', 'Copland', 'Female', '323 Miller Pass', 'HUMMS', '2000-07-06', 'Tagalog', 'Catholic', 'Denna Copland', 'Denna Copland', 'Denna Copland', 2147483647, '2015-11-19 04:21:56', NULL, NULL, NULL, NULL, NULL, NULL, 470, 'Graduated', 'antipolos2.png', '2018-2019'),
('147071518842', 'Battershall', 'Farlay', 'Cruddas', 'Male', '3378 Westport Drive', 'ABM', '1999-11-15', 'Chinese', 'Christian', 'Farlay Cruddas', 'Farlay Cruddas', 'Farlay Cruddas', 2147483647, '2016-08-26 20:41:46', NULL, NULL, NULL, NULL, NULL, NULL, 471, 'Graduated', 'antipolos2.png', '2018-2019'),
('147357611950', 'Riggs', 'Robinetta', 'Warrener', 'Female', '5786 Maple Wood Place', 'HUMMS', '1999-04-27', 'Tagalog', 'Catholic', 'Robinetta Warrener', 'Robinetta Warrener', 'Robinetta Warrener', 2147483647, '2015-04-06 04:28:14', NULL, NULL, NULL, NULL, NULL, NULL, 472, 'Graduated', 'antipolos2.png', '2018-2019'),
('147358255069', 'Barwis', 'Helsa', 'Whittam', 'Female', '1268 La Follette Avenue', 'STEM', '2001-07-16', 'Chinese', 'Christian', 'Helsa Whittam', 'Helsa Whittam', 'Helsa Whittam', 2147483647, '2015-08-08 05:26:09', NULL, NULL, NULL, NULL, NULL, NULL, 473, 'Graduated', 'antipolos2.png', '2018-2019'),
('147385464986', 'Pickerell', 'Robinet', 'Stronge', 'Female', '113 Pepper Wood Parkway', 'GAS', '2001-03-22', 'Malay', 'Christian', 'Robinet Stronge', 'Robinet Stronge', 'Robinet Stronge', 2147483647, '2016-09-04 22:06:25', NULL, NULL, NULL, NULL, NULL, NULL, 474, 'Graduated', 'antipolos2.png', '2018-2019'),
('147400543811', 'Currier', 'Cordelie', 'Tidder', 'Female', '1955 Gerald Hill', 'HUMMS', '2000-02-12', 'Filipino', 'Catholic', 'Cordelie Tidder', 'Cordelie Tidder', 'Cordelie Tidder', 2147483647, '2016-08-02 23:39:55', NULL, NULL, NULL, NULL, NULL, NULL, 475, 'Graduated', 'antipolos2.png', '2018-2019'),
('147560629142', 'Reveland', 'Inger', 'Sherrott', 'Male', '78 Steensland Trail', 'GAS', '2000-10-26', 'Chinese', 'Catholic', 'Inger Sherrott', 'Inger Sherrott', 'Inger Sherrott', 2147483647, '2017-01-16 16:14:54', NULL, NULL, NULL, NULL, NULL, NULL, 476, 'Graduated', 'antipolos2.png', '2018-2019'),
('147643394451', 'Boddington', 'Quentin', 'Logesdale', 'Male', '439 Dahle Hill', 'GAS', '2000-12-20', 'Filipino', 'Christian', 'Quentin Logesdale', 'Quentin Logesdale', 'Quentin Logesdale', 2147483647, '2016-07-19 22:06:57', NULL, NULL, NULL, NULL, NULL, NULL, 477, 'Graduated', 'antipolos2.png', '2018-2019'),
('147703660999', 'Braxton', 'Forster', 'Gouda', 'Male', '7 Bluejay Way', 'HUMMS', '2001-12-08', 'Filipino', 'Catholic', 'Forster Gouda', 'Forster Gouda', 'Forster Gouda', 2147483647, '2016-07-28 14:56:10', NULL, NULL, NULL, NULL, NULL, NULL, 478, 'Graduated', 'antipolos2.png', '2018-2019'),
('147818627957', 'Gurton', 'Cirillo', 'Argile', 'Male', '73 Holmberg Drive', 'HUMMS', '2001-07-20', 'English', 'Catholic', 'Cirillo Argile', 'Cirillo Argile', 'Cirillo Argile', 2147483647, '2016-03-18 14:04:40', NULL, NULL, NULL, NULL, NULL, NULL, 479, 'Graduated', 'antipolos2.png', '2018-2019'),
('147874204216', 'Dottrell', 'Hamlin', 'Brissard', 'Male', '642 Sauthoff Crossing', 'HUMMS', '1999-04-27', 'Filipino', 'Catholic', 'Hamlin Brissard', 'Hamlin Brissard', 'Hamlin Brissard', 2147483647, '2016-04-15 15:38:04', NULL, NULL, NULL, NULL, NULL, NULL, 480, 'Graduated', 'antipolos2.png', '2018-2019'),
('147879332964', 'Cicculi', 'Eugene', 'Baudou', 'Male', '51816 Crest Line Hill', 'ABM', '2001-03-10', 'English', 'Catholic', 'Eugene Baudou', 'Eugene Baudou', 'Eugene Baudou', 2147483647, '2015-12-22 15:12:38', NULL, NULL, NULL, NULL, NULL, NULL, 481, 'Graduated', 'antipolos2.png', '2018-2019'),
('148045748547', 'Beagen', 'Trudi', 'Trynor', 'Female', '6026 Old Gate Road', 'GAS', '2001-07-31', 'English', 'Catholic', 'Trudi Trynor', 'Trudi Trynor', 'Trudi Trynor', 2147483647, '2016-02-12 03:15:45', NULL, NULL, NULL, NULL, NULL, NULL, 482, 'Graduated', 'antipolos2.png', '2018-2019'),
('148057920291', 'Scargle', 'Bronson', 'Feeney', 'Male', '0086 Browning Point', 'GAS', '2001-07-23', 'Chinese', 'Catholic', 'Bronson Feeney', 'Bronson Feeney', 'Bronson Feeney', 2147483647, '2015-03-20 08:00:59', NULL, NULL, NULL, NULL, NULL, NULL, 483, 'Graduated', 'antipolos2.png', '2018-2019'),
('148337450633', 'Royle', 'Aubree', 'Rosebotham', 'Female', '1695 Welch Street', 'STEM', '2000-03-17', 'Chinese', 'Catholic', 'Aubree Rosebotham', 'Aubree Rosebotham', 'Aubree Rosebotham', 2147483647, '2016-03-01 07:02:34', NULL, NULL, NULL, NULL, NULL, NULL, 484, 'Graduated', 'antipolos2.png', '2018-2019'),
('148425530405', 'Heyburn', 'Josi', 'Satch', 'Female', '71307 Mayer Place', 'ABM', '1999-03-03', 'Malay', 'Catholic', 'Josi Satch', 'Josi Satch', 'Josi Satch', 2147483647, '2016-12-01 23:49:03', NULL, NULL, NULL, NULL, NULL, NULL, 485, 'Graduated', 'antipolos2.png', '2018-2019'),
('148437622062', 'Wrightem', 'Kaitlyn', 'Bisgrove', 'Female', '6020 Ruskin Lane', 'GAS', '2001-06-26', 'Chinese', 'Christian', 'Kaitlyn Bisgrove', 'Kaitlyn Bisgrove', 'Kaitlyn Bisgrove', 2147483647, '2016-10-13 15:43:15', NULL, NULL, NULL, NULL, NULL, NULL, 486, 'Graduated', 'antipolos2.png', '2018-2019'),
('148626378457', 'Cosham', 'Efrem', 'Labat', 'Male', '1 Eliot Park', 'HUMMS', '2001-02-21', 'Malay', 'Catholic', 'Efrem Labat', 'Efrem Labat', 'Efrem Labat', 2147483647, '2016-05-14 22:27:26', NULL, NULL, NULL, NULL, NULL, NULL, 487, 'Graduated', 'antipolos2.png', '2018-2019'),
('148626994915', 'Safell', 'Maxwell', 'Garnul', 'Male', '396 Rigney Trail', 'HUMMS', '1999-04-15', 'Chinese', 'Catholic', 'Maxwell Garnul', 'Maxwell Garnul', 'Maxwell Garnul', 2147483647, '2016-12-27 13:24:43', NULL, NULL, NULL, NULL, NULL, NULL, 488, 'Graduated', 'antipolos2.png', '2018-2019'),
('148694172733', 'Staines', 'Wang', 'Shrawley', 'Male', '5 Vahlen Crossing', 'HUMMS', '1999-08-15', 'Tagalog', 'Catholic', 'Wang Shrawley', 'Wang Shrawley', 'Wang Shrawley', 2147483647, '2016-06-01 20:40:22', NULL, NULL, NULL, NULL, NULL, NULL, 489, 'Graduated', 'antipolos2.png', '2018-2019'),
('148721120973', 'Marshland', 'Jimmie', 'Nottle', 'Male', '6051 Dahle Parkway', 'ABM', '1999-08-29', 'English', 'Christian', 'Jimmie Nottle', 'Jimmie Nottle', 'Jimmie Nottle', 2147483647, '2016-08-28 01:07:29', NULL, NULL, NULL, NULL, NULL, NULL, 490, 'Graduated', 'antipolos2.png', '2018-2019'),
('148791539466', 'Dowzell', 'Padgett', 'Attenburrow', 'Male', '099 Hudson Pass', 'HUMMS', '2000-04-13', 'English', 'Christian', 'Padgett Attenburrow', 'Padgett Attenburrow', 'Padgett Attenburrow', 2147483647, '2016-06-19 11:29:44', NULL, NULL, NULL, NULL, NULL, NULL, 491, 'Graduated', 'antipolos2.png', '2018-2019'),
('149311557911', 'Bezzant', 'Didi', 'Shawcroft', 'Female', '38548 Walton Alley', 'HUMMS', '1999-07-07', 'Chinese', 'Catholic', 'Didi Shawcroft', 'Didi Shawcroft', 'Didi Shawcroft', 2147483647, '2016-07-20 15:46:38', NULL, NULL, NULL, NULL, NULL, NULL, 492, 'Graduated', 'antipolos2.png', '2018-2019'),
('149495672033', 'Aggiss', 'Harald', 'McAneny', 'Male', '773 Morning Pass', 'HUMMS', '2000-08-10', 'Malay', 'Catholic', 'Harald McAneny', 'Harald McAneny', 'Harald McAneny', 2147483647, '2015-09-14 22:41:27', NULL, NULL, NULL, NULL, NULL, NULL, 493, 'Graduated', 'antipolos2.png', '2018-2019'),
('149593605193', 'Tuberfield', 'Dyanne', 'Kinglake', 'Female', '5330 Nova Terrace', 'ABM', '2000-09-10', 'Tagalog', 'Catholic', 'Dyanne Kinglake', 'Dyanne Kinglake', 'Dyanne Kinglake', 2147483647, '2015-09-09 08:47:16', NULL, NULL, NULL, NULL, NULL, NULL, 494, 'Graduated', 'antipolos2.png', '2018-2019'),
('149610004992', 'Maasze', 'Murray', 'Santo', 'Male', '66548 Lighthouse Bay Park', 'HUMMS', '2001-12-27', 'Malay', 'Catholic', 'Murray Santo', 'Murray Santo', 'Murray Santo', 2147483647, '2016-03-17 02:41:43', NULL, NULL, NULL, NULL, NULL, NULL, 495, 'Graduated', 'antipolos2.png', '2018-2019'),
('149853812676', 'Eaddy', 'Garrick', 'Dodgshon', 'Male', '71 6th Hill', 'STEM', '2001-06-19', 'Tagalog', 'Christian', 'Garrick Dodgshon', 'Garrick Dodgshon', 'Garrick Dodgshon', 2147483647, '2016-05-23 15:04:29', NULL, NULL, NULL, NULL, NULL, NULL, 496, 'Graduated', 'antipolos2.png', '2018-2019'),
('149980597015', 'Bennike', 'Rose', 'Dunnico', 'Female', '03202 Nancy Drive', 'GAS', '2001-05-15', 'English', 'Christian', 'Rose Dunnico', 'Rose Dunnico', 'Rose Dunnico', 2082024886, '2017-01-23 10:41:17', NULL, NULL, NULL, NULL, NULL, NULL, 497, 'Graduated', 'antipolos2.png', '2018-2019'),
('150084382986', 'Zukerman', 'Faith', 'Scammell', 'Female', '17 Dwight Place', 'STEM', '1999-03-03', 'Chinese', 'Catholic', 'Faith Scammell', 'Faith Scammell', 'Faith Scammell', 2147483647, '2017-01-20 10:12:54', NULL, NULL, NULL, NULL, NULL, NULL, 498, 'Graduated', 'antipolos2.png', '2018-2019'),
('150096563596', 'Iacovuzzi', 'Roselin', 'Gaughan', 'Female', '458 Meadow Valley Road', 'ABM', '2001-02-08', 'Chinese', 'Christian', 'Roselin Gaughan', 'Roselin Gaughan', 'Roselin Gaughan', 2147483647, '2016-01-01 02:43:31', NULL, NULL, NULL, NULL, NULL, NULL, 499, 'Graduated', 'antipolos2.png', '2018-2019');
INSERT INTO `grads` (`adhaar_no`, `lname`, `fname`, `learner_midname`, `gender`, `address`, `strand`, `dob`, `mother_tongue`, `religion`, `father_name`, `mother_name`, `guardian_name`, `mobile_no`, `created_at`, `updated_at`, `status`, `alternate_mobile_no`, `email_id`, `extra_note`, `roll_no`, `stu_id`, `grade`, `photo`, `class`) VALUES
('150313282531', 'McIndrew', 'Berne', 'Bloss', 'Male', '2523 Hanover Crossing', 'STEM', '2000-12-23', 'Tagalog', 'Catholic', 'Berne Bloss', 'Berne Bloss', 'Berne Bloss', 2147483647, '2016-02-20 00:50:04', NULL, NULL, NULL, NULL, NULL, NULL, 500, 'Graduated', 'antipolos2.png', '2018-2019'),
('150494425656', 'Teesdale', 'Nikita', 'Kennett', 'Male', '6319 Blue Bill Park Road', 'ABM', '2001-06-04', 'Filipino', 'Christian', 'Nikita Kennett', 'Nikita Kennett', 'Nikita Kennett', 2147483647, '2015-12-24 14:27:58', NULL, NULL, NULL, NULL, NULL, NULL, 501, 'Graduated', 'antipolos2.png', '2018-2019'),
('150570422205', 'Bricknell', 'Norby', 'Cavilla', 'Male', '03432 Anderson Place', 'ABM', '2001-06-04', 'English', 'Christian', 'Norby Cavilla', 'Norby Cavilla', 'Norby Cavilla', 2147483647, '2015-08-23 19:59:18', NULL, NULL, NULL, NULL, NULL, NULL, 502, 'Graduated', 'antipolos2.png', '2018-2019'),
('150602968558', 'Pumfrett', 'Ryun', 'Budgen', 'Male', '37265 Erie Crossing', 'STEM', '2000-11-24', 'Malay', 'Christian', 'Ryun Budgen', 'Ryun Budgen', 'Ryun Budgen', 2147483647, '2016-02-25 19:41:49', NULL, NULL, NULL, NULL, NULL, NULL, 503, 'Graduated', 'antipolos2.png', '2018-2019'),
('150711241224', 'Willisch', 'Heinrik', 'Webland', 'Male', '785 Kennedy Alley', 'HUMMS', '2001-03-09', 'Filipino', 'Christian', 'Heinrik Webland', 'Heinrik Webland', 'Heinrik Webland', 2147483647, '2016-07-11 15:31:08', NULL, NULL, NULL, NULL, NULL, NULL, 504, 'Graduated', 'antipolos2.png', '2018-2019'),
('150808363244', 'Islep', 'Kristin', 'Krysztowczyk', 'Female', '29700 Hoard Way', 'STEM', '1999-07-26', 'Filipino', 'Christian', 'Kristin Krysztowczyk', 'Kristin Krysztowczyk', 'Kristin Krysztowczyk', 2147483647, '2016-01-29 03:41:22', NULL, NULL, NULL, NULL, NULL, NULL, 505, 'Graduated', 'antipolos2.png', '2018-2019'),
('150875006018', 'Le Grand', 'Christophorus', 'Antonikov', 'Male', '915 Bay Crossing', 'STEM', '1999-09-28', 'Filipino', 'Christian', 'Christophorus Antonikov', 'Christophorus Antonikov', 'Christophorus Antonikov', 2147483647, '2015-02-23 15:18:40', NULL, NULL, NULL, NULL, NULL, NULL, 506, 'Graduated', 'antipolos2.png', '2018-2019'),
('150974152861', 'Pickrell', 'Emilio', 'MacCaull', 'Male', '23126 Meadow Valley Point', 'GAS', '1999-11-26', 'Filipino', 'Christian', 'Emilio MacCaull', 'Emilio MacCaull', 'Emilio MacCaull', 2147483647, '2016-03-27 12:30:46', NULL, NULL, NULL, NULL, NULL, NULL, 507, 'Graduated', 'antipolos2.png', '2018-2019'),
('151056221497', 'MacNeish', 'Rolando', 'Guilfoyle', 'Male', '3 Golf Junction', 'HUMMS', '2001-05-05', 'Tagalog', 'Christian', 'Rolando Guilfoyle', 'Rolando Guilfoyle', 'Rolando Guilfoyle', 2147483647, '2015-07-19 16:31:06', NULL, NULL, NULL, NULL, NULL, NULL, 508, 'Graduated', 'antipolos2.png', '2018-2019'),
('151077838734', 'Degan', 'Ad', 'Shewon', 'Male', '636 Kings Trail', 'STEM', '2000-07-21', 'Tagalog', 'Catholic', 'Ad Shewon', 'Ad Shewon', 'Ad Shewon', 2147483647, '2016-01-14 07:13:47', NULL, NULL, NULL, NULL, NULL, NULL, 509, 'Graduated', 'antipolos2.png', '2018-2019'),
('151129153296', 'Cases', 'Wilfrid', 'Perl', 'Male', '44660 Messerschmidt Way', 'ABM', '1999-10-23', 'Filipino', 'Catholic', 'Wilfrid Perl', 'Wilfrid Perl', 'Wilfrid Perl', 2147483647, '2017-01-14 17:19:54', NULL, NULL, NULL, NULL, NULL, NULL, 510, 'Graduated', 'antipolos2.png', '2018-2019'),
('151143205092', 'Belfitt', 'Nowell', 'Abson', 'Male', '93 Hudson Park', 'HUMMS', '2000-09-02', 'Filipino', 'Christian', 'Nowell Abson', 'Nowell Abson', 'Nowell Abson', 2147483647, '2015-02-25 14:27:33', NULL, NULL, NULL, NULL, NULL, NULL, 511, 'Graduated', 'antipolos2.png', '2018-2019'),
('151334929541', 'Stopher', 'Leah', 'Borth', 'Female', '2 Utah Trail', 'STEM', '2001-05-28', 'English', 'Catholic', 'Leah Borth', 'Leah Borth', 'Leah Borth', 2147483647, '2016-09-07 09:05:01', NULL, NULL, NULL, NULL, NULL, NULL, 512, 'Graduated', 'antipolos2.png', '2018-2019'),
('151398963330', 'Pressnell', 'Dill', 'Folca', 'Male', '4 Dorton Trail', 'STEM', '2002-01-02', 'English', 'Catholic', 'Dill Folca', 'Dill Folca', 'Dill Folca', 2147483647, '2015-11-06 11:33:44', NULL, NULL, NULL, NULL, NULL, NULL, 513, 'Graduated', 'antipolos2.png', '2018-2019'),
('151951700925', 'Laskey', 'Billy', 'Popham', 'Male', '752 Sachtjen Point', 'STEM', '2000-12-02', 'Chinese', 'Christian', 'Billy Popham', 'Billy Popham', 'Billy Popham', 2147483647, '2016-12-14 03:13:45', NULL, NULL, NULL, NULL, NULL, NULL, 514, 'Graduated', 'antipolos2.png', '2018-2019'),
('152186667659', 'Folke', 'Deidre', 'Candelin', 'Female', '749 Straubel Avenue', 'ABM', '2000-05-13', 'Chinese', 'Christian', 'Deidre Candelin', 'Deidre Candelin', 'Deidre Candelin', 1142090294, '2015-05-18 00:43:01', NULL, NULL, NULL, NULL, NULL, NULL, 515, 'Graduated', 'antipolos2.png', '2018-2019'),
('152361935867', 'Desouza', 'Othella', 'Callan', 'Female', '8 Waubesa Pass', 'HUMMS', '2001-01-02', 'Malay', 'Catholic', 'Othella Callan', 'Othella Callan', 'Othella Callan', 2147483647, '2015-10-29 00:16:04', NULL, NULL, NULL, NULL, NULL, NULL, 516, 'Graduated', 'antipolos2.png', '2018-2019'),
('152446634394', 'Fardon', 'Barbette', 'Keighley', 'Female', '4103 Anhalt Park', 'HUMMS', '1999-11-04', 'Chinese', 'Catholic', 'Barbette Keighley', 'Barbette Keighley', 'Barbette Keighley', 2147483647, '2016-12-05 23:01:07', NULL, NULL, NULL, NULL, NULL, NULL, 517, 'Graduated', 'antipolos2.png', '2018-2019'),
('152467043257', 'Garmons', 'Dalis', 'Martinolli', 'Male', '55214 Weeping Birch Way', 'STEM', '2000-08-02', 'Malay', 'Christian', 'Dalis Martinolli', 'Dalis Martinolli', 'Dalis Martinolli', 2147483647, '2015-10-03 19:19:01', NULL, NULL, NULL, NULL, NULL, NULL, 518, 'Graduated', 'antipolos2.png', '2018-2019'),
('152639678285', 'Ashbrook', 'Rafael', 'Minmagh', 'Male', '812 Marquette Road', 'ABM', '1999-12-08', 'Chinese', 'Catholic', 'Rafael Minmagh', 'Rafael Minmagh', 'Rafael Minmagh', 1339339655, '2015-02-01 00:41:40', NULL, NULL, NULL, NULL, NULL, NULL, 519, 'Graduated', 'antipolos2.png', '2018-2019'),
('152647173495', 'Foard', 'Christen', 'Delgado', 'Female', '31468 2nd Way', 'STEM', '1999-09-06', 'Tagalog', 'Catholic', 'Christen Delgado', 'Christen Delgado', 'Christen Delgado', 2147483647, '2015-03-25 06:35:54', NULL, NULL, NULL, NULL, NULL, NULL, 520, 'Graduated', 'antipolos2.png', '2018-2019'),
('152724312736', 'Braun', 'Cammi', 'Springford', 'Female', '402 Rieder Way', 'GAS', '2000-07-20', 'Filipino', 'Catholic', 'Cammi Springford', 'Cammi Springford', 'Cammi Springford', 2147483647, '2016-08-10 07:55:01', NULL, NULL, NULL, NULL, NULL, NULL, 521, 'Graduated', 'antipolos2.png', '2018-2019'),
('152732423743', 'Baudesson', 'Rorie', 'Attreed', 'Female', '03344 Laurel Park', 'ABM', '2001-10-08', 'Tagalog', 'Christian', 'Rorie Attreed', 'Rorie Attreed', 'Rorie Attreed', 2147483647, '2017-01-15 17:13:31', NULL, NULL, NULL, NULL, NULL, NULL, 522, 'Graduated', 'antipolos2.png', '2018-2019'),
('152817532338', 'Tague', 'Federico', 'Everiss', 'Male', '5561 Lotheville Plaza', 'STEM', '1999-12-27', 'Tagalog', 'Catholic', 'Federico Everiss', 'Federico Everiss', 'Federico Everiss', 2147483647, '2016-05-20 12:15:29', NULL, NULL, NULL, NULL, NULL, NULL, 523, 'Graduated', 'antipolos2.png', '2018-2019'),
('152962487079', 'Hurich', 'Dewey', 'Nottingam', 'Male', '359 Briar Crest Center', 'HUMMS', '2001-12-04', 'Malay', 'Christian', 'Dewey Nottingam', 'Dewey Nottingam', 'Dewey Nottingam', 2147483647, '2015-11-21 14:05:55', NULL, NULL, NULL, NULL, NULL, NULL, 524, 'Graduated', 'antipolos2.png', '2018-2019'),
('153037410557', 'Broadbury', 'Jacqui', 'Sainz', 'Female', '09576 Melrose Trail', 'HUMMS', '1999-09-22', 'Malay', 'Christian', 'Jacqui Sainz', 'Jacqui Sainz', 'Jacqui Sainz', 2062779188, '2015-04-14 01:56:51', NULL, NULL, NULL, NULL, NULL, NULL, 525, 'Graduated', 'antipolos2.png', '2018-2019'),
('153198277110', 'Giacobillo', 'Analiese', 'Teffrey', 'Female', '27082 Dryden Circle', 'HUMMS', '2000-02-25', 'Chinese', 'Catholic', 'Analiese Teffrey', 'Analiese Teffrey', 'Analiese Teffrey', 2147483647, '2015-07-01 19:28:54', NULL, NULL, NULL, NULL, NULL, NULL, 526, 'Graduated', 'antipolos2.png', '2018-2019'),
('153403462842', 'Blackett', 'Zachery', 'Gaskamp', 'Male', '11 Autumn Leaf Court', 'ABM', '1999-09-21', 'Tagalog', 'Christian', 'Zachery Gaskamp', 'Zachery Gaskamp', 'Zachery Gaskamp', 2147483647, '2015-07-27 09:07:16', NULL, NULL, NULL, NULL, NULL, NULL, 527, 'Graduated', 'antipolos2.png', '2018-2019'),
('153547458534', 'Corness', 'Boycey', 'Selland', 'Male', '72 International Pass', 'ABM', '1999-07-25', 'Malay', 'Christian', 'Boycey Selland', 'Boycey Selland', 'Boycey Selland', 1638026723, '2015-04-16 00:37:00', NULL, NULL, NULL, NULL, NULL, NULL, 528, 'Graduated', 'antipolos2.png', '2018-2019'),
('153552775734', 'Le Jean', 'Marvin', 'Letchmore', 'Male', '9304 Badeau Junction', 'GAS', '2000-05-05', 'Tagalog', 'Christian', 'Marvin Letchmore', 'Marvin Letchmore', 'Marvin Letchmore', 2147483647, '2016-09-22 21:53:47', NULL, NULL, NULL, NULL, NULL, NULL, 529, 'Graduated', 'antipolos2.png', '2018-2019'),
('153565094231', 'Tedman', 'Stacy', 'Hebborn', 'Female', '95171 Schurz Court', 'GAS', '2000-10-17', 'English', 'Christian', 'Stacy Hebborn', 'Stacy Hebborn', 'Stacy Hebborn', 2147483647, '2015-09-02 13:01:15', NULL, NULL, NULL, NULL, NULL, NULL, 530, 'Graduated', 'antipolos2.png', '2018-2019'),
('153650887793', 'Bagby', 'Franzen', 'Ferrarotti', 'Male', '1 Oneill Place', 'GAS', '2000-01-22', 'Malay', 'Catholic', 'Franzen Ferrarotti', 'Franzen Ferrarotti', 'Franzen Ferrarotti', 2147483647, '2015-12-18 23:33:31', NULL, NULL, NULL, NULL, NULL, NULL, 531, 'Graduated', 'antipolos2.png', '2018-2019'),
('153794498630', 'Goreisr', 'Tracie', 'Ashborn', 'Female', '26285 Tennyson Crossing', 'STEM', '1999-05-27', 'Filipino', 'Christian', 'Tracie Ashborn', 'Tracie Ashborn', 'Tracie Ashborn', 2147483647, '2015-09-05 02:14:29', NULL, NULL, NULL, NULL, NULL, NULL, 532, 'Graduated', 'antipolos2.png', '2018-2019'),
('153856677735', 'Armstrong', 'Camey', 'Crinage', 'Male', '44169 Bluejay Point', 'GAS', '2001-03-01', 'Malay', 'Christian', 'Camey Crinage', 'Camey Crinage', 'Camey Crinage', 2147483647, '2015-10-08 23:08:56', NULL, NULL, NULL, NULL, NULL, NULL, 533, 'Graduated', 'antipolos2.png', '2018-2019'),
('153887619728', 'Lermouth', 'Aryn', 'Swindells', 'Female', '0770 Sundown Park', 'HUMMS', '1999-06-19', 'Malay', 'Catholic', 'Aryn Swindells', 'Aryn Swindells', 'Aryn Swindells', 2147483647, '2015-12-19 00:38:35', NULL, NULL, NULL, NULL, NULL, NULL, 534, 'Graduated', 'antipolos2.png', '2018-2019'),
('154298387251', 'Brummitt', 'Doria', 'Martelet', 'Female', '672 Meadow Valley Alley', 'ABM', '2001-07-14', 'English', 'Christian', 'Doria Martelet', 'Doria Martelet', 'Doria Martelet', 2147483647, '2015-09-15 22:31:57', NULL, NULL, NULL, NULL, NULL, NULL, 535, 'Graduated', 'antipolos2.png', '2018-2019'),
('154359982772', 'Stearn', 'Coleen', 'Widdup', 'Female', '984 Carey Crossing', 'GAS', '2001-12-04', 'Chinese', 'Catholic', 'Coleen Widdup', 'Coleen Widdup', 'Coleen Widdup', 1442449532, '2015-11-13 10:39:43', NULL, NULL, NULL, NULL, NULL, NULL, 536, 'Graduated', 'antipolos2.png', '2018-2019'),
('154578449376', 'Gorton', 'Evin', 'Leijs', 'Male', '5441 Hovde Park', 'STEM', '1999-11-21', 'English', 'Christian', 'Evin Leijs', 'Evin Leijs', 'Evin Leijs', 2147483647, '2015-04-06 00:09:16', NULL, NULL, NULL, NULL, NULL, NULL, 537, 'Graduated', 'antipolos2.png', '2018-2019'),
('154889536970', 'Grissett', 'Bailey', 'Britner', 'Male', '832 Elmside Center', 'HUMMS', '2001-03-17', 'English', 'Catholic', 'Bailey Britner', 'Bailey Britner', 'Bailey Britner', 2147483647, '2016-02-24 01:29:47', NULL, NULL, NULL, NULL, NULL, NULL, 538, 'Graduated', 'antipolos2.png', '2018-2019'),
('154919417905', 'Aherne', 'Blondell', 'Bromby', 'Female', '35751 Cordelia Street', 'HUMMS', '2001-04-10', 'Filipino', 'Christian', 'Blondell Bromby', 'Blondell Bromby', 'Blondell Bromby', 2147483647, '2016-10-26 22:38:56', NULL, NULL, NULL, NULL, NULL, NULL, 539, 'Graduated', 'antipolos2.png', '2018-2019'),
('155199028240', 'Carde', 'Shaine', 'Kohrding', 'Male', '4 Fair Oaks Crossing', 'HUMMS', '1999-08-31', 'Tagalog', 'Catholic', 'Shaine Kohrding', 'Shaine Kohrding', 'Shaine Kohrding', 2147483647, '2016-11-01 10:38:35', NULL, NULL, NULL, NULL, NULL, NULL, 540, 'Graduated', 'antipolos2.png', '2018-2019'),
('155369836162', 'Cossor', 'Milka', 'Atwill', 'Female', '90647 Burrows Parkway', 'HUMMS', '2001-05-02', 'Filipino', 'Catholic', 'Milka Atwill', 'Milka Atwill', 'Milka Atwill', 2147483647, '2015-01-29 18:37:30', NULL, NULL, NULL, NULL, NULL, NULL, 541, 'Graduated', 'antipolos2.png', '2018-2019'),
('155523580915', 'Aidler', 'Cyrillus', 'Townsley', 'Male', '1 Stone Corner Circle', 'ABM', '1999-02-16', 'English', 'Christian', 'Cyrillus Townsley', 'Cyrillus Townsley', 'Cyrillus Townsley', 2147483647, '2016-08-22 17:30:36', NULL, NULL, NULL, NULL, NULL, NULL, 542, 'Graduated', 'antipolos2.png', '2018-2019'),
('155901264638', 'Alderton', 'Georgianne', 'Wilbud', 'Female', '653 Loeprich Pass', 'ABM', '2002-01-04', 'Chinese', 'Catholic', 'Georgianne Wilbud', 'Georgianne Wilbud', 'Georgianne Wilbud', 2147483647, '2015-09-23 04:39:54', NULL, NULL, NULL, NULL, NULL, NULL, 543, 'Graduated', 'antipolos2.png', '2018-2019'),
('156033419380', 'Baise', 'Tamqrah', 'Brient', 'Female', '5951 Bobwhite Crossing', 'ABM', '1999-11-29', 'Malay', 'Catholic', 'Tamqrah Brient', 'Tamqrah Brient', 'Tamqrah Brient', 2147483647, '2016-03-12 19:57:59', NULL, NULL, NULL, NULL, NULL, NULL, 544, 'Graduated', 'antipolos2.png', '2018-2019'),
('156078479987', 'Prium', 'Burg', 'Cowtherd', 'Male', '531 Hauk Street', 'HUMMS', '2001-04-21', 'Filipino', 'Catholic', 'Burg Cowtherd', 'Burg Cowtherd', 'Burg Cowtherd', 2147483647, '2016-01-02 06:42:22', NULL, NULL, NULL, NULL, NULL, NULL, 545, 'Graduated', 'antipolos2.png', '2018-2019'),
('156079222262', 'Berringer', 'Arty', 'Mateiko', 'Male', '0 Melvin Lane', 'GAS', '1999-10-09', 'Chinese', 'Christian', 'Arty Mateiko', 'Arty Mateiko', 'Arty Mateiko', 2147483647, '2015-04-12 10:07:37', NULL, NULL, NULL, NULL, NULL, NULL, 546, 'Graduated', 'antipolos2.png', '2018-2019'),
('156202316388', 'Cream', 'Carlin', 'McKyrrelly', 'Male', '31041 Artisan Place', 'STEM', '2001-05-08', 'Malay', 'Catholic', 'Carlin McKyrrelly', 'Carlin McKyrrelly', 'Carlin McKyrrelly', 2147483647, '2016-03-10 10:54:12', NULL, NULL, NULL, NULL, NULL, NULL, 547, 'Graduated', 'antipolos2.png', '2018-2019'),
('156240055378', 'Duxbury', 'Concettina', 'Bizzey', 'Female', '54596 Carberry Way', 'HUMMS', '1999-05-13', 'Chinese', 'Christian', 'Concettina Bizzey', 'Concettina Bizzey', 'Concettina Bizzey', 2147483647, '2015-08-19 20:27:46', NULL, NULL, NULL, NULL, NULL, NULL, 548, 'Graduated', 'antipolos2.png', '2018-2019'),
('156289925493', 'Stefanovic', 'Ebeneser', 'Gresty', 'Male', '1065 Hanover Crossing', 'ABM', '2001-06-08', 'Filipino', 'Christian', 'Ebeneser Gresty', 'Ebeneser Gresty', 'Ebeneser Gresty', 2147483647, '2016-02-19 14:21:40', NULL, NULL, NULL, NULL, NULL, NULL, 549, 'Graduated', 'antipolos2.png', '2018-2019'),
('156293362414', 'Hudspith', 'Dasie', 'De Malchar', 'Female', '471 Northland Parkway', 'STEM', '1999-03-18', 'English', 'Catholic', 'Dasie De Malchar', 'Dasie De Malchar', 'Dasie De Malchar', 2147483647, '2016-06-26 03:12:55', NULL, NULL, NULL, NULL, NULL, NULL, 550, 'Graduated', 'antipolos2.png', '2018-2019'),
('156351354165', 'Picardo', 'Kingsly', 'Drennan', 'Male', '692 Fairfield Place', 'HUMMS', '2001-10-05', 'Tagalog', 'Catholic', 'Kingsly Drennan', 'Kingsly Drennan', 'Kingsly Drennan', 2147483647, '2015-11-29 03:30:39', NULL, NULL, NULL, NULL, NULL, NULL, 551, 'Graduated', 'antipolos2.png', '2018-2019'),
('156558627892', 'Iceton', 'Ernie', 'Sevier', 'Male', '86 Oak Valley Trail', 'ABM', '1999-04-07', 'Tagalog', 'Christian', 'Ernie Sevier', 'Ernie Sevier', 'Ernie Sevier', 2147483647, '2015-03-07 00:28:45', NULL, NULL, NULL, NULL, NULL, NULL, 552, 'Graduated', 'antipolos2.png', '2018-2019'),
('156780248981', 'Brothwell', 'Marline', 'Greenhalf', 'Female', '90 Mccormick Pass', 'HUMMS', '2000-02-28', 'English', 'Catholic', 'Marline Greenhalf', 'Marline Greenhalf', 'Marline Greenhalf', 2147483647, '2016-09-16 07:30:31', NULL, NULL, NULL, NULL, NULL, NULL, 553, 'Graduated', 'antipolos2.png', '2018-2019'),
('156799070908', 'Semiraz', 'Robinette', 'Steabler', 'Female', '324 Forster Lane', 'HUMMS', '1999-05-05', 'Chinese', 'Christian', 'Robinette Steabler', 'Robinette Steabler', 'Robinette Steabler', 2147483647, '2016-03-15 02:56:29', NULL, NULL, NULL, NULL, NULL, NULL, 554, 'Graduated', 'antipolos2.png', '2018-2019'),
('156864074553', 'Grigoroni', 'Burlie', 'Kinworthy', 'Male', '8277 Vera Alley', 'STEM', '1999-04-13', 'Filipino', 'Christian', 'Burlie Kinworthy', 'Burlie Kinworthy', 'Burlie Kinworthy', 1734799725, '2016-05-11 12:02:28', NULL, NULL, NULL, NULL, NULL, NULL, 555, 'Graduated', 'antipolos2.png', '2018-2019'),
('156920105029', 'Casley', 'Raffarty', 'Snassell', 'Male', '7 Sullivan Alley', 'GAS', '2000-04-17', 'Chinese', 'Christian', 'Raffarty Snassell', 'Raffarty Snassell', 'Raffarty Snassell', 2147483647, '2015-11-13 20:07:20', NULL, NULL, NULL, NULL, NULL, NULL, 556, 'Graduated', 'antipolos2.png', '2018-2019'),
('156945546443', 'Paulat', 'Graig', 'Burgan', 'Male', '7065 Boyd Center', 'HUMMS', '1999-04-16', 'English', 'Christian', 'Graig Burgan', 'Graig Burgan', 'Graig Burgan', 2147483647, '2017-01-27 04:53:33', NULL, NULL, NULL, NULL, NULL, NULL, 557, 'Graduated', 'antipolos2.png', '2018-2019'),
('156987295082', 'Hanmer', 'Tedd', 'Matthias', 'Male', '4976 Artisan Avenue', 'ABM', '2000-03-04', 'Chinese', 'Christian', 'Tedd Matthias', 'Tedd Matthias', 'Tedd Matthias', 1957612893, '2015-09-09 09:32:23', NULL, NULL, NULL, NULL, NULL, NULL, 558, 'Graduated', 'antipolos2.png', '2018-2019'),
('156988072401', 'Mallam', 'Carolin', 'Lomansey', 'Female', '501 Bayside Park', 'HUMMS', '2001-05-28', 'Filipino', 'Catholic', 'Carolin Lomansey', 'Carolin Lomansey', 'Carolin Lomansey', 2147483647, '2016-06-29 04:23:10', NULL, NULL, NULL, NULL, NULL, NULL, 559, 'Graduated', 'antipolos2.png', '2018-2019'),
('157233545637', 'Riggott', 'Tallie', 'Palle', 'Male', '0 Sherman Center', 'ABM', '1999-09-22', 'Filipino', 'Christian', 'Tallie Palle', 'Tallie Palle', 'Tallie Palle', 2147483647, '2015-12-08 07:14:09', NULL, NULL, NULL, NULL, NULL, NULL, 560, 'Graduated', 'antipolos2.png', '2018-2019'),
('157255802522', 'Maevela', 'Graeme', 'Ledley', 'Male', '57 Eastwood Circle', 'HUMMS', '1999-05-05', 'Filipino', 'Christian', 'Graeme Ledley', 'Graeme Ledley', 'Graeme Ledley', 2147483647, '2016-11-09 02:31:48', NULL, NULL, NULL, NULL, NULL, NULL, 561, 'Graduated', 'antipolos2.png', '2018-2019'),
('157274801107', 'Cream', 'Guss', 'Camm', 'Male', '60376 Buena Vista Trail', 'GAS', '2000-06-30', 'Malay', 'Catholic', 'Guss Camm', 'Guss Camm', 'Guss Camm', 1057076934, '2016-12-28 10:38:33', NULL, NULL, NULL, NULL, NULL, NULL, 562, 'Graduated', 'antipolos2.png', '2018-2019'),
('157297551365', 'Swynfen', 'Maxie', 'Aireton', 'Male', '857 Porter Plaza', 'ABM', '2000-10-31', 'Tagalog', 'Christian', 'Maxie Aireton', 'Maxie Aireton', 'Maxie Aireton', 2147483647, '2015-06-20 06:05:49', NULL, NULL, NULL, NULL, NULL, NULL, 563, 'Graduated', 'antipolos2.png', '2018-2019'),
('157298938734', 'Watt', 'Tristan', 'Putson', 'Male', '9 Monument Circle', 'HUMMS', '2001-09-07', 'English', 'Christian', 'Tristan Putson', 'Tristan Putson', 'Tristan Putson', 2147483647, '2015-06-30 11:50:29', NULL, NULL, NULL, NULL, NULL, NULL, 564, 'Graduated', 'antipolos2.png', '2018-2019'),
('157388578692', 'Ketteman', 'Marjy', 'Downgate', 'Female', '7 Jay Place', 'ABM', '2000-07-19', 'Filipino', 'Catholic', 'Marjy Downgate', 'Marjy Downgate', 'Marjy Downgate', 1516825072, '2015-10-20 22:22:49', NULL, NULL, NULL, NULL, NULL, NULL, 565, 'Graduated', 'antipolos2.png', '2018-2019'),
('157423359472', 'Orchart', 'Susy', 'Jadczak', 'Female', '92608 Morrow Trail', 'GAS', '1999-09-15', 'Malay', 'Christian', 'Susy Jadczak', 'Susy Jadczak', 'Susy Jadczak', 2147483647, '2015-09-19 05:22:57', NULL, NULL, NULL, NULL, NULL, NULL, 566, 'Graduated', 'antipolos2.png', '2018-2019'),
('157686919973', 'Peasby', 'Juieta', 'Beine', 'Female', '9 Nobel Pass', 'HUMMS', '2000-06-21', 'Malay', 'Catholic', 'Juieta Beine', 'Juieta Beine', 'Juieta Beine', 1864754426, '2016-02-01 15:11:40', NULL, NULL, NULL, NULL, NULL, NULL, 567, 'Graduated', 'antipolos2.png', '2018-2019'),
('157718983338', 'Pulham', 'Kelila', 'Kimmons', 'Female', '0 Lien Hill', 'HUMMS', '2000-05-26', 'Malay', 'Christian', 'Kelila Kimmons', 'Kelila Kimmons', 'Kelila Kimmons', 2147483647, '2015-02-14 08:28:44', NULL, NULL, NULL, NULL, NULL, NULL, 568, 'Graduated', 'antipolos2.png', '2018-2019'),
('157747554037', 'Maryet', 'Glynn', 'Wakes', 'Male', '4623 Vernon Trail', 'STEM', '2000-06-06', 'Filipino', 'Catholic', 'Glynn Wakes', 'Glynn Wakes', 'Glynn Wakes', 2147483647, '2015-04-21 18:13:45', NULL, NULL, NULL, NULL, NULL, NULL, 569, 'Graduated', 'antipolos2.png', '2018-2019'),
('157749479021', 'Antonovic', 'Eliot', 'Larvor', 'Male', '80093 Kingsford Avenue', 'HUMMS', '1999-04-01', 'English', 'Christian', 'Eliot Larvor', 'Eliot Larvor', 'Eliot Larvor', 2147483647, '2016-02-05 20:51:54', NULL, NULL, NULL, NULL, NULL, NULL, 570, 'Graduated', 'antipolos2.png', '2018-2019'),
('157909187038', 'Coopman', 'Robbie', 'Boanas', 'Male', '50257 Cambridge Crossing', 'GAS', '2000-03-16', 'Tagalog', 'Christian', 'Robbie Boanas', 'Robbie Boanas', 'Robbie Boanas', 1838313819, '2015-10-28 16:49:07', NULL, NULL, NULL, NULL, NULL, NULL, 571, 'Graduated', 'antipolos2.png', '2018-2019'),
('158012801766', 'Sute', 'Towny', 'World', 'Male', '455 Stuart Drive', 'STEM', '1999-08-10', 'Filipino', 'Christian', 'Towny World', 'Towny World', 'Towny World', 2147483647, '2016-06-15 18:49:10', NULL, NULL, NULL, NULL, NULL, NULL, 572, 'Graduated', 'antipolos2.png', '2018-2019'),
('158238730112', 'Liffey', 'Dom', 'Vanderson', 'Male', '0 Forest Run Street', 'ABM', '2001-11-18', 'Chinese', 'Christian', 'Dom Vanderson', 'Dom Vanderson', 'Dom Vanderson', 2085362540, '2015-02-27 18:49:49', NULL, NULL, NULL, NULL, NULL, NULL, 573, 'Graduated', 'antipolos2.png', '2018-2019'),
('158270290655', 'Darleston', 'Bartolemo', 'Sizey', 'Male', '00 School Place', 'STEM', '2000-09-07', 'Malay', 'Christian', 'Bartolemo Sizey', 'Bartolemo Sizey', 'Bartolemo Sizey', 2147483647, '2016-11-16 10:54:55', NULL, NULL, NULL, NULL, NULL, NULL, 574, 'Graduated', 'antipolos2.png', '2018-2019'),
('158427800220', 'Beatty', 'Cordie', 'Larmour', 'Male', '83 Hanson Place', 'ABM', '1999-02-17', 'Filipino', 'Catholic', 'Cordie Larmour', 'Cordie Larmour', 'Cordie Larmour', 2147483647, '2016-11-12 23:55:50', NULL, NULL, NULL, NULL, NULL, NULL, 575, 'Graduated', 'antipolos2.png', '2018-2019'),
('158431748559', 'Bradtke', 'Bayard', 'Keyzor', 'Male', '9009 Green Ridge Center', 'ABM', '2000-04-07', 'Filipino', 'Catholic', 'Bayard Keyzor', 'Bayard Keyzor', 'Bayard Keyzor', 2147483647, '2016-11-08 11:22:28', NULL, NULL, NULL, NULL, NULL, NULL, 576, 'Graduated', 'antipolos2.png', '2018-2019'),
('158451151709', 'Breakwell', 'Gae', 'Riping', 'Female', '32 Gateway Junction', 'HUMMS', '2000-05-08', 'Tagalog', 'Catholic', 'Gae Riping', 'Gae Riping', 'Gae Riping', 2147483647, '2016-08-20 20:50:44', NULL, NULL, NULL, NULL, NULL, NULL, 577, 'Graduated', 'antipolos2.png', '2018-2019'),
('158460597491', 'Petrasek', 'Cassondra', 'Wiffill', 'Female', '147 Aberg Court', 'STEM', '1999-08-07', 'Tagalog', 'Catholic', 'Cassondra Wiffill', 'Cassondra Wiffill', 'Cassondra Wiffill', 2147483647, '2016-06-18 23:59:14', NULL, NULL, NULL, NULL, NULL, NULL, 578, 'Graduated', 'antipolos2.png', '2018-2019'),
('158557274279', 'York', 'Carmine', 'Reeds', 'Male', '02 Esch Pass', 'STEM', '1999-10-12', 'Tagalog', 'Catholic', 'Carmine Reeds', 'Carmine Reeds', 'Carmine Reeds', 2147483647, '2016-10-16 12:53:56', NULL, NULL, NULL, NULL, NULL, NULL, 579, 'Graduated', 'antipolos2.png', '2018-2019'),
('158600834854', 'O\'Lennane', 'Keeley', 'Yurygyn', 'Female', '508 Sycamore Park', 'GAS', '2001-05-20', 'Malay', 'Christian', 'Keeley Yurygyn', 'Keeley Yurygyn', 'Keeley Yurygyn', 2147483647, '2016-11-18 23:05:29', NULL, NULL, NULL, NULL, NULL, NULL, 580, 'Graduated', 'antipolos2.png', '2018-2019'),
('158605279535', 'Smither', 'Doralyn', 'Giovannazzi', 'Female', '73 Bay Junction', 'STEM', '2001-02-25', 'English', 'Catholic', 'Doralyn Giovannazzi', 'Doralyn Giovannazzi', 'Doralyn Giovannazzi', 2147483647, '2016-04-17 08:25:44', NULL, NULL, NULL, NULL, NULL, NULL, 581, 'Graduated', 'antipolos2.png', '2018-2019'),
('158703321146', 'Brabin', 'Abrahan', 'Izat', 'Male', '005 Bartelt Plaza', 'STEM', '1999-11-02', 'Chinese', 'Christian', 'Abrahan Izat', 'Abrahan Izat', 'Abrahan Izat', 2147483647, '2016-04-25 01:52:28', NULL, NULL, NULL, NULL, NULL, NULL, 582, 'Graduated', 'antipolos2.png', '2018-2019'),
('158708567461', 'Moynihan', 'Matthias', 'Faustin', 'Male', '1870 Montana Circle', 'STEM', '2001-09-22', 'Filipino', 'Catholic', 'Matthias Faustin', 'Matthias Faustin', 'Matthias Faustin', 2147483647, '2016-12-09 09:33:17', NULL, NULL, NULL, NULL, NULL, NULL, 583, 'Graduated', 'antipolos2.png', '2018-2019'),
('158790300684', 'De Pero', 'Wilmette', 'Vizard', 'Female', '4153 Dawn Place', 'HUMMS', '2000-02-08', 'English', 'Christian', 'Wilmette Vizard', 'Wilmette Vizard', 'Wilmette Vizard', 2147483647, '2016-11-04 13:03:08', NULL, NULL, NULL, NULL, NULL, NULL, 584, 'Graduated', 'antipolos2.png', '2018-2019'),
('159319745284', 'Stonnell', 'Georgie', 'Cartner', 'Male', '5166 Londonderry Crossing', 'HUMMS', '2000-09-26', 'Chinese', 'Christian', 'Georgie Cartner', 'Georgie Cartner', 'Georgie Cartner', 2147483647, '2015-09-05 16:24:45', NULL, NULL, NULL, NULL, NULL, NULL, 585, 'Graduated', 'antipolos2.png', '2018-2019'),
('159329632591', 'Goldston', 'Quill', 'Bellhanger', 'Male', '0 Cascade Parkway', 'STEM', '1999-06-24', 'Malay', 'Christian', 'Quill Bellhanger', 'Quill Bellhanger', 'Quill Bellhanger', 2147483647, '2016-07-23 10:45:23', NULL, NULL, NULL, NULL, NULL, NULL, 586, 'Graduated', 'antipolos2.png', '2018-2019'),
('159381549500', 'Trowill', 'Corie', 'Legat', 'Female', '0897 Caliangt Point', 'ABM', '2000-11-12', 'Filipino', 'Christian', 'Corie Legat', 'Corie Legat', 'Corie Legat', 2147483647, '2016-09-12 06:14:54', NULL, NULL, NULL, NULL, NULL, NULL, 587, 'Graduated', 'antipolos2.png', '2018-2019'),
('159520152893', 'Alten', 'Heinrik', 'MacAlpin', 'Male', '8470 Algoma Plaza', 'STEM', '2001-09-23', 'Chinese', 'Christian', 'Heinrik MacAlpin', 'Heinrik MacAlpin', 'Heinrik MacAlpin', 2147483647, '2016-01-11 12:41:24', NULL, NULL, NULL, NULL, NULL, NULL, 588, 'Graduated', 'antipolos2.png', '2018-2019'),
('159552564777', 'Capaldi', 'Jud', 'Osgordby', 'Male', '5 Acker Terrace', 'STEM', '2000-01-08', 'Malay', 'Catholic', 'Jud Osgordby', 'Jud Osgordby', 'Jud Osgordby', 2147483647, '2016-01-23 05:46:11', NULL, NULL, NULL, NULL, NULL, NULL, 589, 'Graduated', 'antipolos2.png', '2018-2019'),
('159577050060', 'Carletti', 'Gilbertina', 'Auden', 'Female', '0635 Katie Place', 'STEM', '2001-07-28', 'Malay', 'Christian', 'Gilbertina Auden', 'Gilbertina Auden', 'Gilbertina Auden', 1356572621, '2015-04-27 08:01:49', NULL, NULL, NULL, NULL, NULL, NULL, 590, 'Graduated', 'antipolos2.png', '2018-2019'),
('159708721798', 'Sewell', 'Tiler', 'Flewin', 'Male', '599 Pearson Plaza', 'ABM', '2001-04-09', 'Tagalog', 'Christian', 'Tiler Flewin', 'Tiler Flewin', 'Tiler Flewin', 2147483647, '2016-06-09 01:47:24', NULL, NULL, NULL, NULL, NULL, NULL, 591, 'Graduated', 'antipolos2.png', '2018-2019'),
('159822158412', 'Lamberti', 'Milo', 'Chellam', 'Male', '1 Claremont Center', 'GAS', '2000-08-03', 'Chinese', 'Christian', 'Milo Chellam', 'Milo Chellam', 'Milo Chellam', 2147483647, '2015-06-22 17:10:52', NULL, NULL, NULL, NULL, NULL, NULL, 592, 'Graduated', 'antipolos2.png', '2018-2019'),
('159854207605', 'Seamons', 'Arthur', 'Faust', 'Male', '07470 Everett Circle', 'STEM', '2000-04-25', 'Malay', 'Catholic', 'Arthur Faust', 'Arthur Faust', 'Arthur Faust', 2147483647, '2015-08-22 23:32:07', NULL, NULL, NULL, NULL, NULL, NULL, 593, 'Graduated', 'antipolos2.png', '2018-2019'),
('159960679663', 'Holbie', 'Brande', 'Edward', 'Female', '1396 Shopko Way', 'GAS', '1999-05-20', 'Filipino', 'Christian', 'Brande Edward', 'Brande Edward', 'Brande Edward', 1928699753, '2016-05-09 19:39:03', NULL, NULL, NULL, NULL, NULL, NULL, 594, 'Graduated', 'antipolos2.png', '2018-2019'),
('160183640308', 'Corriea', 'Merola', 'Gager', 'Female', '3 Hagan Avenue', 'STEM', '1999-10-09', 'Chinese', 'Christian', 'Merola Gager', 'Merola Gager', 'Merola Gager', 2147483647, '2016-02-03 19:56:20', NULL, NULL, NULL, NULL, NULL, NULL, 595, 'Graduated', 'antipolos2.png', '2018-2019'),
('160230953932', 'Donnersberg', 'Merwin', 'Buxton', 'Male', '672 Parkside Court', 'HUMMS', '2001-04-20', 'Filipino', 'Christian', 'Merwin Buxton', 'Merwin Buxton', 'Merwin Buxton', 1054811412, '2016-05-29 10:32:44', NULL, NULL, NULL, NULL, NULL, NULL, 596, 'Graduated', 'antipolos2.png', '2018-2019'),
('160240181875', 'Glanvill', 'Blanca', 'Maberley', 'Female', '6792 Ridgeview Drive', 'ABM', '2000-10-13', 'Filipino', 'Christian', 'Blanca Maberley', 'Blanca Maberley', 'Blanca Maberley', 2147483647, '2016-11-09 15:27:52', NULL, NULL, NULL, NULL, NULL, NULL, 597, 'Graduated', 'antipolos2.png', '2018-2019'),
('160465732539', 'Jowsey', 'Nichols', 'Dehmel', 'Male', '032 Dapin Trail', 'STEM', '1999-02-25', 'Tagalog', 'Catholic', 'Nichols Dehmel', 'Nichols Dehmel', 'Nichols Dehmel', 2147483647, '2016-03-08 03:49:33', NULL, NULL, NULL, NULL, NULL, NULL, 598, 'Graduated', 'antipolos2.png', '2018-2019'),
('160579919148', 'Teall', 'Lorens', 'Goble', 'Male', '036 Thierer Park', 'HUMMS', '1999-10-03', 'Malay', 'Christian', 'Lorens Goble', 'Lorens Goble', 'Lorens Goble', 1652247550, '2015-06-22 14:33:24', NULL, NULL, NULL, NULL, NULL, NULL, 599, 'Graduated', 'antipolos2.png', '2018-2019'),
('160825089805', 'Burkinshaw', 'Balduin', 'Ferencowicz', 'Male', '10531 Towne Plaza', 'STEM', '2000-04-28', 'Filipino', 'Christian', 'Balduin Ferencowicz', 'Balduin Ferencowicz', 'Balduin Ferencowicz', 2147483647, '2016-10-21 21:04:30', NULL, NULL, NULL, NULL, NULL, NULL, 600, 'Graduated', 'antipolos2.png', '2018-2019'),
('160907706896', 'Vanetti', 'Rosalinde', 'Fountain', 'Female', '08 Mesta Circle', 'GAS', '1999-06-06', 'Tagalog', 'Catholic', 'Rosalinde Fountain', 'Rosalinde Fountain', 'Rosalinde Fountain', 2147483647, '2015-06-07 23:20:23', NULL, NULL, NULL, NULL, NULL, NULL, 601, 'Graduated', 'antipolos2.png', '2018-2019'),
('160912592678', 'Elldred', 'Michaeline', 'Juster', 'Female', '4 Michigan Crossing', 'HUMMS', '1999-07-16', 'Chinese', 'Christian', 'Michaeline Juster', 'Michaeline Juster', 'Michaeline Juster', 2147483647, '2016-11-25 11:50:11', NULL, NULL, NULL, NULL, NULL, NULL, 602, 'Graduated', 'antipolos2.png', '2018-2019'),
('160991286495', 'Witul', 'Waverley', 'Jaquemar', 'Male', '15 Shasta Avenue', 'GAS', '2002-01-13', 'Filipino', 'Catholic', 'Waverley Jaquemar', 'Waverley Jaquemar', 'Waverley Jaquemar', 2147483647, '2015-05-13 18:08:17', NULL, NULL, NULL, NULL, NULL, NULL, 603, 'Graduated', 'antipolos2.png', '2018-2019'),
('161059861903', 'Calven', 'Bernadene', 'Balam', 'Female', '04 Sutherland Point', 'HUMMS', '1999-11-03', 'Malay', 'Catholic', 'Bernadene Balam', 'Bernadene Balam', 'Bernadene Balam', 1917899218, '2015-02-19 09:16:05', NULL, NULL, NULL, NULL, NULL, NULL, 604, 'Graduated', 'antipolos2.png', '2018-2019'),
('161365981137', 'McClosh', 'Celinka', 'Borrington', 'Female', '91458 Gateway Court', 'GAS', '1999-07-02', 'Tagalog', 'Catholic', 'Celinka Borrington', 'Celinka Borrington', 'Celinka Borrington', 2147483647, '2016-08-01 08:42:54', NULL, NULL, NULL, NULL, NULL, NULL, 605, 'Graduated', 'antipolos2.png', '2018-2019'),
('161642144746', 'Masselin', 'Mace', 'De Luna', 'Male', '98956 Ridge Oak Lane', 'ABM', '1999-11-04', 'English', 'Catholic', 'Mace De Luna', 'Mace De Luna', 'Mace De Luna', 2147483647, '2015-02-26 16:47:50', NULL, NULL, NULL, NULL, NULL, NULL, 606, 'Graduated', 'antipolos2.png', '2018-2019'),
('161662785857', 'Libri', 'Correy', 'Cordelle', 'Female', '69257 Starling Alley', 'HUMMS', '1999-04-02', 'English', 'Christian', 'Correy Cordelle', 'Correy Cordelle', 'Correy Cordelle', 2147483647, '2016-08-17 20:46:15', NULL, NULL, NULL, NULL, NULL, NULL, 607, 'Graduated', 'antipolos2.png', '2018-2019'),
('161835405462', 'Cobbled', 'Danette', 'Wilding', 'Female', '9403 Bobwhite Avenue', 'ABM', '2001-02-14', 'Filipino', 'Catholic', 'Danette Wilding', 'Danette Wilding', 'Danette Wilding', 2147483647, '2015-05-25 17:25:20', NULL, NULL, NULL, NULL, NULL, NULL, 608, 'Graduated', 'antipolos2.png', '2018-2019'),
('162125015648', 'Hindsberg', 'Gordan', 'Greetland', 'Male', '0 Monica Court', 'ABM', '2000-05-22', 'English', 'Catholic', 'Gordan Greetland', 'Gordan Greetland', 'Gordan Greetland', 2147483647, '2015-03-17 00:16:01', NULL, NULL, NULL, NULL, NULL, NULL, 609, 'Graduated', 'antipolos2.png', '2018-2019'),
('162334397452', 'Thwaite', 'Donni', 'Tolcher', 'Female', '2527 American Alley', 'GAS', '2001-12-04', 'Tagalog', 'Catholic', 'Donni Tolcher', 'Donni Tolcher', 'Donni Tolcher', 2147483647, '2016-05-24 15:00:42', NULL, NULL, NULL, NULL, NULL, NULL, 610, 'Graduated', 'antipolos2.png', '2018-2019'),
('162415094222', 'McConigal', 'Mathilda', 'Staynes', 'Female', '71556 Miller Way', 'STEM', '2001-12-17', 'Chinese', 'Catholic', 'Mathilda Staynes', 'Mathilda Staynes', 'Mathilda Staynes', 2147483647, '2015-04-29 17:14:46', NULL, NULL, NULL, NULL, NULL, NULL, 611, 'Graduated', 'antipolos2.png', '2018-2019'),
('162569834704', 'de Merida', 'Deanne', 'Mapledoore', 'Female', '29 Holy Cross Drive', 'GAS', '2000-08-14', 'Malay', 'Catholic', 'Deanne Mapledoore', 'Deanne Mapledoore', 'Deanne Mapledoore', 2147483647, '2015-02-04 08:17:25', NULL, NULL, NULL, NULL, NULL, NULL, 612, 'Graduated', 'antipolos2.png', '2018-2019'),
('163122341353', 'Fantini', 'Anjela', 'Rosendale', 'Female', '352 Sheridan Plaza', 'STEM', '2000-11-19', 'Chinese', 'Christian', 'Anjela Rosendale', 'Anjela Rosendale', 'Anjela Rosendale', 2147483647, '2016-06-11 04:55:56', NULL, NULL, NULL, NULL, NULL, NULL, 613, 'Graduated', 'antipolos2.png', '2018-2019'),
('163144350692', 'Helin', 'Aurelea', 'De la Feld', 'Female', '9 Weeping Birch Pass', 'HUMMS', '2000-11-08', 'Filipino', 'Catholic', 'Aurelea De la Feld', 'Aurelea De la Feld', 'Aurelea De la Feld', 2147483647, '2015-08-12 23:41:51', NULL, NULL, NULL, NULL, NULL, NULL, 614, 'Graduated', 'antipolos2.png', '2018-2019'),
('163233113706', 'Rodd', 'Willow', 'Ouchterlony', 'Female', '0 Weeping Birch Alley', 'ABM', '2000-10-08', 'Tagalog', 'Catholic', 'Willow Ouchterlony', 'Willow Ouchterlony', 'Willow Ouchterlony', 2147483647, '2016-05-20 07:35:52', NULL, NULL, NULL, NULL, NULL, NULL, 615, 'Graduated', 'antipolos2.png', '2018-2019'),
('163266429856', 'Wondraschek', 'Nikaniki', 'Defrain', 'Female', '7 Redwing Park', 'STEM', '2000-05-14', 'English', 'Catholic', 'Nikaniki Defrain', 'Nikaniki Defrain', 'Nikaniki Defrain', 2147483647, '2015-08-01 02:40:06', NULL, NULL, NULL, NULL, NULL, NULL, 616, 'Graduated', 'antipolos2.png', '2018-2019'),
('163412345864', 'Davidai', 'Nananne', 'Piwell', 'Female', '6687 Holy Cross Center', 'HUMMS', '1999-07-18', 'Filipino', 'Catholic', 'Nananne Piwell', 'Nananne Piwell', 'Nananne Piwell', 2147483647, '2015-11-21 13:32:32', NULL, NULL, NULL, NULL, NULL, NULL, 617, 'Graduated', 'antipolos2.png', '2018-2019'),
('163449966292', 'Rickwood', 'Myranda', 'Aizikov', 'Female', '8 Brentwood Terrace', 'STEM', '2000-04-05', 'Filipino', 'Christian', 'Myranda Aizikov', 'Myranda Aizikov', 'Myranda Aizikov', 2147483647, '2016-05-25 11:01:22', NULL, NULL, NULL, NULL, NULL, NULL, 618, 'Graduated', 'antipolos2.png', '2018-2019'),
('163709979373', 'Casely', 'Zacharie', 'Bushen', 'Male', '44334 Leroy Point', 'GAS', '1999-03-08', 'Chinese', 'Christian', 'Zacharie Bushen', 'Zacharie Bushen', 'Zacharie Bushen', 1401244956, '2016-12-14 01:59:05', NULL, NULL, NULL, NULL, NULL, NULL, 619, 'Graduated', 'antipolos2.png', '2018-2019'),
('163787279286', 'Gentner', 'Jonie', 'De Goey', 'Female', '2499 Dovetail Terrace', 'HUMMS', '2000-09-21', 'Filipino', 'Catholic', 'Jonie De Goey', 'Jonie De Goey', 'Jonie De Goey', 2147483647, '2015-08-17 12:13:51', NULL, NULL, NULL, NULL, NULL, NULL, 620, 'Graduated', 'antipolos2.png', '2018-2019'),
('164276637677', 'Weild', 'Tedmund', 'Gadesby', 'Male', '1 Thackeray Lane', 'HUMMS', '2001-07-18', 'Tagalog', 'Catholic', 'Tedmund Gadesby', 'Tedmund Gadesby', 'Tedmund Gadesby', 2147483647, '2016-11-16 06:21:32', NULL, NULL, NULL, NULL, NULL, NULL, 621, 'Graduated', 'antipolos2.png', '2018-2019'),
('164363280865', 'Ellaman', 'Gustav', 'Coners', 'Male', '580 Spohn Court', 'ABM', '2002-01-20', 'English', 'Christian', 'Gustav Coners', 'Gustav Coners', 'Gustav Coners', 2147483647, '2015-02-27 13:56:27', NULL, NULL, NULL, NULL, NULL, NULL, 622, 'Graduated', 'antipolos2.png', '2018-2019'),
('164407649142', 'Heathorn', 'Blakelee', 'Narramore', 'Female', '0496 Schlimgen Alley', 'HUMMS', '1999-05-26', 'English', 'Christian', 'Blakelee Narramore', 'Blakelee Narramore', 'Blakelee Narramore', 2147483647, '2015-12-03 02:37:54', NULL, NULL, NULL, NULL, NULL, NULL, 623, 'Graduated', 'antipolos2.png', '2018-2019'),
('164481747153', 'Bottomore', 'Shepard', 'Vallens', 'Male', '56417 Gulseth Avenue', 'STEM', '2001-12-21', 'Chinese', 'Christian', 'Shepard Vallens', 'Shepard Vallens', 'Shepard Vallens', 2147483647, '2015-08-06 15:04:13', NULL, NULL, NULL, NULL, NULL, NULL, 624, 'Graduated', 'antipolos2.png', '2018-2019'),
('164621223763', 'Winckle', 'Yule', 'Bickersteth', 'Male', '53341 Hayes Plaza', 'GAS', '2001-06-05', 'Malay', 'Christian', 'Yule Bickersteth', 'Yule Bickersteth', 'Yule Bickersteth', 2147483647, '2016-06-17 11:19:35', NULL, NULL, NULL, NULL, NULL, NULL, 625, 'Graduated', 'antipolos2.png', '2018-2019'),
('164637863724', 'Bruna', 'Darryl', 'Beechcraft', 'Male', '56453 Sunbrook Avenue', 'HUMMS', '2001-04-17', 'Filipino', 'Christian', 'Darryl Beechcraft', 'Darryl Beechcraft', 'Darryl Beechcraft', 2147483647, '2015-02-16 09:41:07', NULL, NULL, NULL, NULL, NULL, NULL, 626, 'Graduated', 'antipolos2.png', '2018-2019'),
('164671409018', 'Yirrell', 'Foster', 'Horribine', 'Male', '9 Luster Crossing', 'HUMMS', '1999-07-18', 'Chinese', 'Catholic', 'Foster Horribine', 'Foster Horribine', 'Foster Horribine', 2147483647, '2015-05-04 22:43:05', NULL, NULL, NULL, NULL, NULL, NULL, 627, 'Graduated', 'antipolos2.png', '2018-2019'),
('164987537096', 'Edlyne', 'Brier', 'Bellows', 'Female', '51309 Oakridge Parkway', 'HUMMS', '2001-12-31', 'English', 'Christian', 'Brier Bellows', 'Brier Bellows', 'Brier Bellows', 2147483647, '2017-01-19 16:21:28', NULL, NULL, NULL, NULL, NULL, NULL, 628, 'Graduated', 'antipolos2.png', '2018-2019'),
('165004356954', 'Gunson', 'Bank', 'Rubinsky', 'Male', '99116 Esker Circle', 'ABM', '2001-01-12', 'Filipino', 'Christian', 'Bank Rubinsky', 'Bank Rubinsky', 'Bank Rubinsky', 2147483647, '2015-07-03 20:44:07', NULL, NULL, NULL, NULL, NULL, NULL, 629, 'Graduated', 'antipolos2.png', '2018-2019'),
('165153220771', 'Showering', 'Tally', 'Hyndley', 'Female', '7 Onsgard Park', 'HUMMS', '2001-07-19', 'Chinese', 'Catholic', 'Tally Hyndley', 'Tally Hyndley', 'Tally Hyndley', 2147483647, '2016-07-08 10:27:59', NULL, NULL, NULL, NULL, NULL, NULL, 630, 'Graduated', 'antipolos2.png', '2018-2019'),
('165205967755', 'Jouandet', 'Bale', 'Benne', 'Male', '781 Butternut Pass', 'ABM', '2000-01-11', 'Filipino', 'Christian', 'Bale Benne', 'Bale Benne', 'Bale Benne', 2147483647, '2015-12-22 05:02:12', NULL, NULL, NULL, NULL, NULL, NULL, 631, 'Graduated', 'antipolos2.png', '2018-2019'),
('165300120480', 'Scoggins', 'Dorian', 'Casillis', 'Male', '1 Killdeer Junction', 'ABM', '2000-01-24', 'Chinese', 'Catholic', 'Dorian Casillis', 'Dorian Casillis', 'Dorian Casillis', 2147483647, '2016-02-08 02:39:11', NULL, NULL, NULL, NULL, NULL, NULL, 632, 'Graduated', 'antipolos2.png', '2018-2019'),
('165479616435', 'Hamblyn', 'Dar', 'Gealle', 'Male', '28418 Kings Parkway', 'HUMMS', '2001-05-22', 'English', 'Catholic', 'Dar Gealle', 'Dar Gealle', 'Dar Gealle', 2147483647, '2015-08-15 09:19:24', NULL, NULL, NULL, NULL, NULL, NULL, 633, 'Graduated', 'antipolos2.png', '2018-2019'),
('165533025766', 'Sumpter', 'Amber', 'Corless', 'Female', '98454 Victoria Drive', 'HUMMS', '2000-02-24', 'Filipino', 'Catholic', 'Amber Corless', 'Amber Corless', 'Amber Corless', 1903287478, '2016-12-01 12:17:19', NULL, NULL, NULL, NULL, NULL, NULL, 634, 'Graduated', 'antipolos2.png', '2018-2019'),
('165571368060', 'Orht', 'Warren', 'Maskill', 'Male', '2 Dorton Trail', 'ABM', '1999-05-10', 'Filipino', 'Christian', 'Warren Maskill', 'Warren Maskill', 'Warren Maskill', 2147483647, '2015-10-01 08:55:28', NULL, NULL, NULL, NULL, NULL, NULL, 635, 'Graduated', 'antipolos2.png', '2018-2019'),
('165901348068', 'Winterton', 'Bowie', 'Dollimore', 'Male', '7805 Hooker Road', 'GAS', '2000-03-03', 'English', 'Christian', 'Bowie Dollimore', 'Bowie Dollimore', 'Bowie Dollimore', 1089437707, '2016-05-13 07:22:01', NULL, NULL, NULL, NULL, NULL, NULL, 636, 'Graduated', 'antipolos2.png', '2018-2019'),
('166002938241', 'Eggins', 'Pebrook', 'Deam', 'Male', '6 Manitowish Park', 'HUMMS', '2001-04-21', 'Malay', 'Christian', 'Pebrook Deam', 'Pebrook Deam', 'Pebrook Deam', 2147483647, '2016-10-20 08:19:59', NULL, NULL, NULL, NULL, NULL, NULL, 637, 'Graduated', 'antipolos2.png', '2018-2019'),
('166005175603', 'McCurlye', 'Dulcea', 'McCrackem', 'Female', '427 Lyons Pass', 'HUMMS', '1999-09-01', 'Malay', 'Christian', 'Dulcea McCrackem', 'Dulcea McCrackem', 'Dulcea McCrackem', 1712452927, '2017-01-24 22:12:10', NULL, NULL, NULL, NULL, NULL, NULL, 638, 'Graduated', 'antipolos2.png', '2018-2019'),
('166072779898', 'Matijasevic', 'Nertie', 'Hinze', 'Female', '0083 Dixon Alley', 'HUMMS', '1999-05-01', 'English', 'Catholic', 'Nertie Hinze', 'Nertie Hinze', 'Nertie Hinze', 2147483647, '2016-08-18 09:37:12', NULL, NULL, NULL, NULL, NULL, NULL, 639, 'Graduated', 'antipolos2.png', '2018-2019'),
('166088700820', 'Beadon', 'Jeniffer', 'Carwithen', 'Female', '178 Sage Terrace', 'ABM', '2000-12-13', 'Filipino', 'Catholic', 'Jeniffer Carwithen', 'Jeniffer Carwithen', 'Jeniffer Carwithen', 2147483647, '2015-11-12 19:04:58', NULL, NULL, NULL, NULL, NULL, NULL, 640, 'Graduated', 'antipolos2.png', '2018-2019'),
('166499467457', 'Dionisetto', 'Quent', 'Riolfi', 'Male', '2592 International Center', 'STEM', '2000-09-12', 'English', 'Christian', 'Quent Riolfi', 'Quent Riolfi', 'Quent Riolfi', 2147483647, '2015-11-10 23:25:41', NULL, NULL, NULL, NULL, NULL, NULL, 641, 'Graduated', 'antipolos2.png', '2018-2019'),
('166508530947', 'Connold', 'Dwayne', 'Chatband', 'Male', '62225 Melby Trail', 'STEM', '1999-12-28', 'Malay', 'Christian', 'Dwayne Chatband', 'Dwayne Chatband', 'Dwayne Chatband', 2147483647, '2015-09-15 07:14:49', NULL, NULL, NULL, NULL, NULL, NULL, 642, 'Graduated', 'antipolos2.png', '2018-2019'),
('166567638075', 'Robley', 'Giulietta', 'Ivashin', 'Female', '964 West Place', 'STEM', '2001-07-13', 'Filipino', 'Christian', 'Giulietta Ivashin', 'Giulietta Ivashin', 'Giulietta Ivashin', 2147483647, '2016-12-22 08:02:08', NULL, NULL, NULL, NULL, NULL, NULL, 643, 'Graduated', 'antipolos2.png', '2018-2019'),
('166602441543', 'Edmott', 'Sigfrid', 'Insko', 'Male', '0 Stephen Point', 'GAS', '2000-04-30', 'English', 'Catholic', 'Sigfrid Insko', 'Sigfrid Insko', 'Sigfrid Insko', 2147483647, '2016-11-03 21:41:27', NULL, NULL, NULL, NULL, NULL, NULL, 644, 'Graduated', 'antipolos2.png', '2018-2019'),
('166670819373', 'Daal', 'Jeramey', 'Pietz', 'Male', '2 Logan Circle', 'ABM', '2001-07-25', 'Chinese', 'Christian', 'Jeramey Pietz', 'Jeramey Pietz', 'Jeramey Pietz', 2147483647, '2016-12-07 05:35:18', NULL, NULL, NULL, NULL, NULL, NULL, 645, 'Graduated', 'antipolos2.png', '2018-2019'),
('166726712337', 'Ferron', 'Jedidiah', 'Pudan', 'Male', '67140 Esker Junction', 'HUMMS', '2001-12-08', 'English', 'Catholic', 'Jedidiah Pudan', 'Jedidiah Pudan', 'Jedidiah Pudan', 2147483647, '2015-11-24 03:26:43', NULL, NULL, NULL, NULL, NULL, NULL, 646, 'Graduated', 'antipolos2.png', '2018-2019'),
('166749253523', 'Cowtherd', 'Nalani', 'Origin', 'Female', '2932 Graceland Drive', 'GAS', '1999-08-03', 'Tagalog', 'Christian', 'Nalani Origin', 'Nalani Origin', 'Nalani Origin', 2147483647, '2015-06-20 19:25:47', NULL, NULL, NULL, NULL, NULL, NULL, 647, 'Graduated', 'antipolos2.png', '2018-2019'),
('166768937622', 'Gurney', 'Godard', 'Castella', 'Male', '6 Dryden Pass', 'HUMMS', '1999-02-01', 'Chinese', 'Christian', 'Godard Castella', 'Godard Castella', 'Godard Castella', 2147483647, '2016-01-28 22:04:04', NULL, NULL, NULL, NULL, NULL, NULL, 648, 'Graduated', 'antipolos2.png', '2018-2019'),
('166814714631', 'Dunster', 'Selby', 'Argile', 'Male', '58170 Vahlen Crossing', 'STEM', '2001-01-25', 'Chinese', 'Catholic', 'Selby Argile', 'Selby Argile', 'Selby Argile', 2147483647, '2015-05-20 19:21:52', NULL, NULL, NULL, NULL, NULL, NULL, 649, 'Graduated', 'antipolos2.png', '2018-2019'),
('166948534946', 'D\'Aguanno', 'Aldous', 'Shawyers', 'Male', '1625 Pennsylvania Street', 'GAS', '2000-02-20', 'Malay', 'Christian', 'Aldous Shawyers', 'Aldous Shawyers', 'Aldous Shawyers', 2147483647, '2016-12-30 15:00:35', NULL, NULL, NULL, NULL, NULL, NULL, 650, 'Graduated', 'antipolos2.png', '2018-2019'),
('167083439005', 'Riggert', 'Clarice', 'Kinzett', 'Female', '42 Utah Parkway', 'STEM', '2000-10-19', 'English', 'Catholic', 'Clarice Kinzett', 'Clarice Kinzett', 'Clarice Kinzett', 2147483647, '2015-11-05 12:08:54', NULL, NULL, NULL, NULL, NULL, NULL, 651, 'Graduated', 'antipolos2.png', '2018-2019'),
('167132716966', 'Brandino', 'Otes', 'Manchett', 'Male', '9903 Birchwood Circle', 'ABM', '1999-05-17', 'Tagalog', 'Catholic', 'Otes Manchett', 'Otes Manchett', 'Otes Manchett', 2147483647, '2015-04-21 01:45:35', NULL, NULL, NULL, NULL, NULL, NULL, 652, 'Graduated', 'antipolos2.png', '2018-2019'),
('167160533351', 'Davidovici', 'Shep', 'Marushak', 'Male', '18131 Lakeland Trail', 'STEM', '2001-06-25', 'Chinese', 'Catholic', 'Shep Marushak', 'Shep Marushak', 'Shep Marushak', 2147483647, '2016-01-10 11:03:07', NULL, NULL, NULL, NULL, NULL, NULL, 653, 'Graduated', 'antipolos2.png', '2018-2019'),
('167180650145', 'Cartmill', 'Marty', 'Scotts', 'Female', '3 Vermont Terrace', 'STEM', '2001-09-10', 'Chinese', 'Christian', 'Marty Scotts', 'Marty Scotts', 'Marty Scotts', 2147483647, '2015-02-08 13:36:44', NULL, NULL, NULL, NULL, NULL, NULL, 654, 'Graduated', 'antipolos2.png', '2018-2019'),
('167208674109', 'Leele', 'Jeramey', 'Pamment', 'Male', '5 Beilfuss Way', 'STEM', '2001-06-01', 'Malay', 'Catholic', 'Jeramey Pamment', 'Jeramey Pamment', 'Jeramey Pamment', 2147483647, '2016-03-05 21:47:14', NULL, NULL, NULL, NULL, NULL, NULL, 655, 'Graduated', 'antipolos2.png', '2018-2019'),
('167451861021', 'Ollarenshaw', 'Tandie', 'Whalley', 'Female', '5032 Division Avenue', 'STEM', '2001-02-20', 'Tagalog', 'Christian', 'Tandie Whalley', 'Tandie Whalley', 'Tandie Whalley', 2147483647, '2016-06-15 10:38:14', NULL, NULL, NULL, NULL, NULL, NULL, 656, 'Graduated', 'antipolos2.png', '2018-2019'),
('167518867917', 'Schutze', 'Rosamund', 'Sinisbury', 'Female', '6604 Spenser Court', 'GAS', '1999-04-25', 'Filipino', 'Christian', 'Rosamund Sinisbury', 'Rosamund Sinisbury', 'Rosamund Sinisbury', 2147483647, '2015-05-18 21:07:29', NULL, NULL, NULL, NULL, NULL, NULL, 657, 'Graduated', 'antipolos2.png', '2018-2019'),
('167535236248', 'Vannini', 'Terencio', 'Twaite', 'Male', '4 Boyd Court', 'ABM', '2001-10-23', 'Malay', 'Catholic', 'Terencio Twaite', 'Terencio Twaite', 'Terencio Twaite', 1027162031, '2015-08-05 21:40:49', NULL, NULL, NULL, NULL, NULL, NULL, 658, 'Graduated', 'antipolos2.png', '2018-2019'),
('167679173093', 'Maycock', 'Remy', 'Kenrick', 'Female', '86 Susan Way', 'HUMMS', '2002-01-12', 'Tagalog', 'Christian', 'Remy Kenrick', 'Remy Kenrick', 'Remy Kenrick', 2147483647, '2016-03-27 12:08:02', NULL, NULL, NULL, NULL, NULL, NULL, 659, 'Graduated', 'antipolos2.png', '2018-2019'),
('167687535459', 'Tolotti', 'Dannye', 'Blaik', 'Female', '6368 Mesta Parkway', 'GAS', '1999-02-14', 'Chinese', 'Christian', 'Dannye Blaik', 'Dannye Blaik', 'Dannye Blaik', 2147483647, '2015-09-15 13:06:41', NULL, NULL, NULL, NULL, NULL, NULL, 660, 'Graduated', 'antipolos2.png', '2018-2019'),
('167737025352', 'Vann', 'Simonette', 'Mockes', 'Female', '54 Porter Terrace', 'GAS', '2001-02-26', 'Tagalog', 'Catholic', 'Simonette Mockes', 'Simonette Mockes', 'Simonette Mockes', 2147483647, '2015-11-15 19:45:20', NULL, NULL, NULL, NULL, NULL, NULL, 661, 'Graduated', 'antipolos2.png', '2018-2019'),
('167867916419', 'Twidell', 'Magnum', 'Kastel', 'Male', '935 Cody Street', 'STEM', '2001-04-16', 'Malay', 'Catholic', 'Magnum Kastel', 'Magnum Kastel', 'Magnum Kastel', 2147483647, '2015-03-31 15:38:07', NULL, NULL, NULL, NULL, NULL, NULL, 662, 'Graduated', 'antipolos2.png', '2018-2019'),
('167929989734', 'Ryall', 'Pepe', 'Eagle', 'Male', '9809 Dwight Parkway', 'STEM', '1999-08-18', 'English', 'Catholic', 'Pepe Eagle', 'Pepe Eagle', 'Pepe Eagle', 2147483647, '2016-09-04 20:21:00', NULL, NULL, NULL, NULL, NULL, NULL, 663, 'Graduated', 'antipolos2.png', '2018-2019'),
('167979557244', 'Benoist', 'Domenic', 'Vain', 'Male', '5 Grayhawk Drive', 'ABM', '1999-10-22', 'Chinese', 'Christian', 'Domenic Vain', 'Domenic Vain', 'Domenic Vain', 2147483647, '2016-10-06 00:11:17', NULL, NULL, NULL, NULL, NULL, NULL, 664, 'Graduated', 'antipolos2.png', '2018-2019'),
('168401306307', 'Kobes', 'Thekla', 'Lear', 'Female', '5931 Artisan Junction', 'HUMMS', '1999-08-11', 'Filipino', 'Christian', 'Thekla Lear', 'Thekla Lear', 'Thekla Lear', 2147483647, '2017-01-11 03:22:41', NULL, NULL, NULL, NULL, NULL, NULL, 665, 'Graduated', 'antipolos2.png', '2018-2019');
INSERT INTO `grads` (`adhaar_no`, `lname`, `fname`, `learner_midname`, `gender`, `address`, `strand`, `dob`, `mother_tongue`, `religion`, `father_name`, `mother_name`, `guardian_name`, `mobile_no`, `created_at`, `updated_at`, `status`, `alternate_mobile_no`, `email_id`, `extra_note`, `roll_no`, `stu_id`, `grade`, `photo`, `class`) VALUES
('168439623309', 'McIllroy', 'Gerardo', 'Berget', 'Male', '2479 Sugar Center', 'HUMMS', '1999-02-25', 'English', 'Christian', 'Gerardo Berget', 'Gerardo Berget', 'Gerardo Berget', 2147483647, '2016-02-28 22:42:14', NULL, NULL, NULL, NULL, NULL, NULL, 666, 'Graduated', 'antipolos2.png', '2018-2019'),
('168549936134', 'Parfitt', 'Hetti', 'Bedham', 'Female', '74 Lake View Pass', 'ABM', '2000-02-16', 'Tagalog', 'Christian', 'Hetti Bedham', 'Hetti Bedham', 'Hetti Bedham', 2147483647, '2015-04-13 01:31:39', NULL, NULL, NULL, NULL, NULL, NULL, 667, 'Graduated', 'antipolos2.png', '2018-2019'),
('168710268513', 'MacCroary', 'Eden', 'Corssen', 'Female', '99300 Aberg Point', 'STEM', '2000-05-21', 'Chinese', 'Catholic', 'Eden Corssen', 'Eden Corssen', 'Eden Corssen', 2147483647, '2015-08-30 03:41:00', NULL, NULL, NULL, NULL, NULL, NULL, 668, 'Graduated', 'antipolos2.png', '2018-2019'),
('168716144159', 'Cheake', 'Phedra', 'Grubbe', 'Female', '6 Macpherson Street', 'ABM', '2000-05-04', 'Filipino', 'Christian', 'Phedra Grubbe', 'Phedra Grubbe', 'Phedra Grubbe', 2147483647, '2016-03-08 06:07:58', NULL, NULL, NULL, NULL, NULL, NULL, 669, 'Graduated', 'antipolos2.png', '2018-2019'),
('168859239470', 'Ginnell', 'Berny', 'Grewes', 'Female', '0 Sutteridge Lane', 'ABM', '1999-05-06', 'Malay', 'Catholic', 'Berny Grewes', 'Berny Grewes', 'Berny Grewes', 2147483647, '2017-01-04 20:19:27', NULL, NULL, NULL, NULL, NULL, NULL, 670, 'Graduated', 'antipolos2.png', '2018-2019'),
('168883288139', 'Sellers', 'Westbrook', 'Spargo', 'Male', '796 Karstens Court', 'ABM', '2001-03-19', 'Malay', 'Catholic', 'Westbrook Spargo', 'Westbrook Spargo', 'Westbrook Spargo', 2147483647, '2015-06-26 14:38:01', NULL, NULL, NULL, NULL, NULL, NULL, 671, 'Graduated', 'antipolos2.png', '2018-2019'),
('168940012896', 'Doge', 'Boot', 'McParlin', 'Male', '782 Dixon Court', 'HUMMS', '2001-05-11', 'English', 'Catholic', 'Boot McParlin', 'Boot McParlin', 'Boot McParlin', 2147483647, '2016-03-30 11:58:26', NULL, NULL, NULL, NULL, NULL, NULL, 672, 'Graduated', 'antipolos2.png', '2018-2019'),
('168986610268', 'Steutly', 'Paulie', 'Treadaway', 'Female', '64 Blackbird Road', 'GAS', '1999-05-24', 'Chinese', 'Christian', 'Paulie Treadaway', 'Paulie Treadaway', 'Paulie Treadaway', 2147483647, '2016-06-03 10:37:23', NULL, NULL, NULL, NULL, NULL, NULL, 673, 'Graduated', 'antipolos2.png', '2018-2019'),
('169125675601', 'Angove', 'Hyacintha', 'Coulthurst', 'Female', '573 Bellgrove Drive', 'ABM', '2000-10-06', 'Chinese', 'Catholic', 'Hyacintha Coulthurst', 'Hyacintha Coulthurst', 'Hyacintha Coulthurst', 1638131682, '2016-06-11 02:37:58', NULL, NULL, NULL, NULL, NULL, NULL, 674, 'Graduated', 'antipolos2.png', '2018-2019'),
('169219904970', 'Niezen', 'Halimeda', 'Revelle', 'Female', '99688 Westerfield Way', 'HUMMS', '2000-01-14', 'Tagalog', 'Christian', 'Halimeda Revelle', 'Halimeda Revelle', 'Halimeda Revelle', 2147483647, '2015-08-12 05:51:16', NULL, NULL, NULL, NULL, NULL, NULL, 675, 'Graduated', 'antipolos2.png', '2018-2019'),
('169373035907', 'Bodicum', 'Jelene', 'Klampt', 'Female', '8013 Lakewood Plaza', 'GAS', '2000-06-07', 'English', 'Christian', 'Jelene Klampt', 'Jelene Klampt', 'Jelene Klampt', 2147483647, '2015-04-25 06:59:57', NULL, NULL, NULL, NULL, NULL, NULL, 676, 'Graduated', 'antipolos2.png', '2018-2019'),
('169422621582', 'Witham', 'Batholomew', 'Pershouse', 'Male', '368 Hollow Ridge Place', 'HUMMS', '1999-12-12', 'Filipino', 'Catholic', 'Batholomew Pershouse', 'Batholomew Pershouse', 'Batholomew Pershouse', 2147483647, '2016-10-02 21:19:27', NULL, NULL, NULL, NULL, NULL, NULL, 677, 'Graduated', 'antipolos2.png', '2018-2019'),
('169423860892', 'Demangeon', 'Brian', 'Camel', 'Male', '5 Rigney Lane', 'GAS', '1999-11-16', 'Chinese', 'Christian', 'Brian Camel', 'Brian Camel', 'Brian Camel', 2147483647, '2015-05-08 07:01:53', NULL, NULL, NULL, NULL, NULL, NULL, 678, 'Graduated', 'antipolos2.png', '2018-2019'),
('169468653005', 'Mintrim', 'Reuven', 'Vize', 'Male', '4 Doe Crossing Terrace', 'HUMMS', '2000-03-30', 'Chinese', 'Christian', 'Reuven Vize', 'Reuven Vize', 'Reuven Vize', 2147483647, '2016-10-18 08:06:05', NULL, NULL, NULL, NULL, NULL, NULL, 679, 'Graduated', 'antipolos2.png', '2018-2019'),
('169488659030', 'Copperwaite', 'Hazlett', 'Besset', 'Male', '98 Magdeline Point', 'HUMMS', '2001-12-20', 'Filipino', 'Christian', 'Hazlett Besset', 'Hazlett Besset', 'Hazlett Besset', 2147483647, '2017-01-13 23:15:48', NULL, NULL, NULL, NULL, NULL, NULL, 680, 'Graduated', 'antipolos2.png', '2018-2019'),
('169547610777', 'Birkbeck', 'Sherwood', 'Georghiou', 'Male', '33003 Moulton Pass', 'ABM', '2001-09-30', 'Malay', 'Catholic', 'Sherwood Georghiou', 'Sherwood Georghiou', 'Sherwood Georghiou', 2147483647, '2015-12-23 08:49:19', NULL, NULL, NULL, NULL, NULL, NULL, 681, 'Graduated', 'antipolos2.png', '2018-2019'),
('169584645619', 'Wickstead', 'Annemarie', 'Jarrell', 'Female', '7009 School Alley', 'HUMMS', '2001-03-02', 'Tagalog', 'Catholic', 'Annemarie Jarrell', 'Annemarie Jarrell', 'Annemarie Jarrell', 2147483647, '2016-06-09 03:43:17', NULL, NULL, NULL, NULL, NULL, NULL, 682, 'Graduated', 'antipolos2.png', '2018-2019'),
('169646144462', 'Challin', 'Emelyne', 'Caudray', 'Female', '396 Upham Road', 'ABM', '2001-04-12', 'English', 'Christian', 'Emelyne Caudray', 'Emelyne Caudray', 'Emelyne Caudray', 2147483647, '2015-02-03 08:48:23', NULL, NULL, NULL, NULL, NULL, NULL, 683, 'Graduated', 'antipolos2.png', '2018-2019'),
('169719025662', 'Muress', 'Shoshana', 'Scad', 'Female', '459 Hermina Street', 'GAS', '2000-10-26', 'Tagalog', 'Catholic', 'Shoshana Scad', 'Shoshana Scad', 'Shoshana Scad', 2147483647, '2015-04-26 09:03:05', NULL, NULL, NULL, NULL, NULL, NULL, 684, 'Graduated', 'antipolos2.png', '2018-2019'),
('169728800406', 'Collihole', 'Ashil', 'Tregent', 'Female', '36294 Waubesa Parkway', 'STEM', '1999-09-18', 'Malay', 'Catholic', 'Ashil Tregent', 'Ashil Tregent', 'Ashil Tregent', 2147483647, '2017-01-18 21:01:37', NULL, NULL, NULL, NULL, NULL, NULL, 685, 'Graduated', 'antipolos2.png', '2018-2019'),
('169872659967', 'Walklott', 'Shurlocke', 'Baudic', 'Male', '087 Mifflin Plaza', 'ABM', '1999-03-10', 'Chinese', 'Christian', 'Shurlocke Baudic', 'Shurlocke Baudic', 'Shurlocke Baudic', 2147483647, '2015-04-29 19:35:13', NULL, NULL, NULL, NULL, NULL, NULL, 686, 'Graduated', 'antipolos2.png', '2018-2019'),
('169922770187', 'Neachell', 'Del', 'Fauning', 'Female', '92 Luster Terrace', 'GAS', '2000-12-24', 'Tagalog', 'Christian', 'Del Fauning', 'Del Fauning', 'Del Fauning', 2147483647, '2017-01-04 17:18:37', NULL, NULL, NULL, NULL, NULL, NULL, 687, 'Graduated', 'antipolos2.png', '2018-2019'),
('170127788398', 'Flanne', 'Hadrian', 'Greatbanks', 'Male', '6 Pine View Terrace', 'STEM', '2000-03-06', 'Tagalog', 'Christian', 'Hadrian Greatbanks', 'Hadrian Greatbanks', 'Hadrian Greatbanks', 2147483647, '2015-07-25 21:03:42', NULL, NULL, NULL, NULL, NULL, NULL, 688, 'Graduated', 'antipolos2.png', '2018-2019'),
('170190439661', 'Mixter', 'Tanhya', 'McGrae', 'Female', '64 Michigan Court', 'ABM', '2002-01-11', 'Chinese', 'Catholic', 'Tanhya McGrae', 'Tanhya McGrae', 'Tanhya McGrae', 2147483647, '2015-11-15 18:01:33', NULL, NULL, NULL, NULL, NULL, NULL, 689, 'Graduated', 'antipolos2.png', '2018-2019'),
('170234466755', 'Baldacco', 'Gardner', 'Hendriksen', 'Male', '1193 Forest Run Place', 'GAS', '2001-10-25', 'Filipino', 'Christian', 'Gardner Hendriksen', 'Gardner Hendriksen', 'Gardner Hendriksen', 2147483647, '2015-05-02 06:47:12', NULL, NULL, NULL, NULL, NULL, NULL, 690, 'Graduated', 'antipolos2.png', '2018-2019'),
('170405298152', 'Flindall', 'Osbert', 'Reely', 'Male', '4012 Esch Drive', 'STEM', '2000-01-06', 'Tagalog', 'Catholic', 'Osbert Reely', 'Osbert Reely', 'Osbert Reely', 2036420530, '2015-03-04 18:29:04', NULL, NULL, NULL, NULL, NULL, NULL, 691, 'Graduated', 'antipolos2.png', '2018-2019'),
('170422743381', 'Bolwell', 'Warde', 'Ivanov', 'Male', '1989 Rieder Point', 'HUMMS', '2000-06-25', 'English', 'Christian', 'Warde Ivanov', 'Warde Ivanov', 'Warde Ivanov', 2147483647, '2016-11-04 01:40:34', NULL, NULL, NULL, NULL, NULL, NULL, 692, 'Graduated', 'antipolos2.png', '2018-2019'),
('170532861269', 'Steaning', 'Mayor', 'Frodsham', 'Male', '0408 Oneill Avenue', 'ABM', '1999-03-11', 'Malay', 'Christian', 'Mayor Frodsham', 'Mayor Frodsham', 'Mayor Frodsham', 2147483647, '2016-07-19 07:32:22', NULL, NULL, NULL, NULL, NULL, NULL, 693, 'Graduated', 'antipolos2.png', '2018-2019'),
('170553980815', 'Timmins', 'Codie', 'Klyn', 'Female', '4497 Havey Plaza', 'ABM', '2001-07-23', 'Chinese', 'Christian', 'Codie Klyn', 'Codie Klyn', 'Codie Klyn', 2147483647, '2016-06-06 08:22:45', NULL, NULL, NULL, NULL, NULL, NULL, 694, 'Graduated', 'antipolos2.png', '2018-2019'),
('170581783388', 'McKevitt', 'Willetta', 'Matzaitis', 'Female', '84989 Village Green Street', 'ABM', '2000-05-09', 'Malay', 'Catholic', 'Willetta Matzaitis', 'Willetta Matzaitis', 'Willetta Matzaitis', 2147483647, '2015-05-24 18:38:15', NULL, NULL, NULL, NULL, NULL, NULL, 695, 'Graduated', 'antipolos2.png', '2018-2019'),
('170650420681', 'Samart', 'Katusha', 'McNea', 'Female', '60 Vermont Crossing', 'STEM', '2002-01-03', 'Malay', 'Catholic', 'Katusha McNea', 'Katusha McNea', 'Katusha McNea', 2147483647, '2016-02-28 00:09:46', NULL, NULL, NULL, NULL, NULL, NULL, 696, 'Graduated', 'antipolos2.png', '2018-2019'),
('170709598647', 'Heape', 'Virgilio', 'Bowery', 'Male', '9 Lillian Alley', 'ABM', '2001-05-15', 'English', 'Catholic', 'Virgilio Bowery', 'Virgilio Bowery', 'Virgilio Bowery', 2147483647, '2016-01-18 04:56:33', NULL, NULL, NULL, NULL, NULL, NULL, 697, 'Graduated', 'antipolos2.png', '2018-2019'),
('170779070326', 'Annes', 'Lesya', 'Whyteman', 'Female', '33808 Nancy Alley', 'ABM', '1999-03-26', 'Filipino', 'Christian', 'Lesya Whyteman', 'Lesya Whyteman', 'Lesya Whyteman', 2147483647, '2015-07-30 10:21:21', NULL, NULL, NULL, NULL, NULL, NULL, 698, 'Graduated', 'antipolos2.png', '2018-2019'),
('170801532900', 'Goold', 'Benny', 'Gowanlock', 'Male', '75 Forest Dale Point', 'STEM', '1999-10-27', 'Tagalog', 'Catholic', 'Benny Gowanlock', 'Benny Gowanlock', 'Benny Gowanlock', 2147483647, '2015-03-29 12:45:25', NULL, NULL, NULL, NULL, NULL, NULL, 699, 'Graduated', 'antipolos2.png', '2018-2019'),
('170843712763', 'Davidovitz', 'Florrie', 'Beevens', 'Female', '06 Quincy Plaza', 'HUMMS', '1999-07-30', 'Malay', 'Christian', 'Florrie Beevens', 'Florrie Beevens', 'Florrie Beevens', 2147483647, '2015-12-12 12:09:26', NULL, NULL, NULL, NULL, NULL, NULL, 700, 'Graduated', 'antipolos2.png', '2018-2019'),
('171031404956', 'Duke', 'Patric', 'Petrushkevich', 'Male', '66 Randy Circle', 'STEM', '2000-01-29', 'Filipino', 'Catholic', 'Patric Petrushkevich', 'Patric Petrushkevich', 'Patric Petrushkevich', 2147483647, '2017-01-27 22:02:43', NULL, NULL, NULL, NULL, NULL, NULL, 701, 'Graduated', 'antipolos2.png', '2018-2019'),
('171287332165', 'Neno', 'Upton', 'Flockhart', 'Male', '30366 Ridgeway Alley', 'ABM', '2001-04-06', 'Tagalog', 'Christian', 'Upton Flockhart', 'Upton Flockhart', 'Upton Flockhart', 2147483647, '2016-02-14 04:13:38', NULL, NULL, NULL, NULL, NULL, NULL, 702, 'Graduated', 'antipolos2.png', '2018-2019'),
('171332814165', 'Chainey', 'Freddy', 'Sachno', 'Male', '68 Brentwood Drive', 'GAS', '2001-08-02', 'Malay', 'Catholic', 'Freddy Sachno', 'Freddy Sachno', 'Freddy Sachno', 2147483647, '2015-07-14 14:13:21', NULL, NULL, NULL, NULL, NULL, NULL, 703, 'Graduated', 'antipolos2.png', '2018-2019'),
('171372463094', 'Hundal', 'Bale', 'Armatidge', 'Male', '42625 Loftsgordon Drive', 'HUMMS', '2001-05-08', 'English', 'Catholic', 'Bale Armatidge', 'Bale Armatidge', 'Bale Armatidge', 2147483647, '2016-06-20 16:41:57', NULL, NULL, NULL, NULL, NULL, NULL, 704, 'Graduated', 'antipolos2.png', '2018-2019'),
('171399268399', 'Oran', 'Mychal', 'Bonner', 'Male', '0882 Meadow Vale Point', 'STEM', '1999-03-07', 'Malay', 'Christian', 'Mychal Bonner', 'Mychal Bonner', 'Mychal Bonner', 2147483647, '2015-05-18 16:35:17', NULL, NULL, NULL, NULL, NULL, NULL, 705, 'Graduated', 'antipolos2.png', '2018-2019'),
('171622002389', 'Illingworth', 'Eugen', 'Rattenberie', 'Male', '97602 Oak Park', 'GAS', '2000-09-28', 'English', 'Christian', 'Eugen Rattenberie', 'Eugen Rattenberie', 'Eugen Rattenberie', 2147483647, '2016-01-27 17:00:30', NULL, NULL, NULL, NULL, NULL, NULL, 706, 'Graduated', 'antipolos2.png', '2018-2019'),
('172014959037', 'Mirando', 'Lonnard', 'Sterndale', 'Male', '253 Ludington Road', 'HUMMS', '2000-03-06', 'English', 'Catholic', 'Lonnard Sterndale', 'Lonnard Sterndale', 'Lonnard Sterndale', 2147483647, '2016-02-03 13:35:10', NULL, NULL, NULL, NULL, NULL, NULL, 707, 'Graduated', 'antipolos2.png', '2018-2019'),
('172059954518', 'Gibb', 'Lottie', 'Ratazzi', 'Female', '74 Chinook Center', 'STEM', '2000-12-17', 'Chinese', 'Christian', 'Lottie Ratazzi', 'Lottie Ratazzi', 'Lottie Ratazzi', 1615457153, '2015-11-05 09:17:12', NULL, NULL, NULL, NULL, NULL, NULL, 708, 'Graduated', 'antipolos2.png', '2018-2019'),
('172485485702', 'Parr', 'Shela', 'Machan', 'Female', '6447 Jenna Hill', 'GAS', '2001-09-07', 'Malay', 'Catholic', 'Shela Machan', 'Shela Machan', 'Shela Machan', 2147483647, '2016-07-27 19:08:38', NULL, NULL, NULL, NULL, NULL, NULL, 709, 'Graduated', 'antipolos2.png', '2018-2019'),
('172513029167', 'Tudbald', 'Vassili', 'Hould', 'Male', '35 Thompson Park', 'GAS', '2000-05-13', 'Chinese', 'Catholic', 'Vassili Hould', 'Vassili Hould', 'Vassili Hould', 2147483647, '2016-12-19 05:06:03', NULL, NULL, NULL, NULL, NULL, NULL, 710, 'Graduated', 'antipolos2.png', '2018-2019'),
('172536667233', 'Keyzor', 'Cecilla', 'Bodill', 'Female', '3488 Warbler Junction', 'GAS', '1999-11-03', 'Tagalog', 'Christian', 'Cecilla Bodill', 'Cecilla Bodill', 'Cecilla Bodill', 2028748063, '2015-10-08 20:47:17', NULL, NULL, NULL, NULL, NULL, NULL, 711, 'Graduated', 'antipolos2.png', '2018-2019'),
('172543407236', 'France', 'Aubrette', 'Rochell', 'Female', '552 Wayridge Junction', 'ABM', '2001-06-29', 'Tagalog', 'Christian', 'Aubrette Rochell', 'Aubrette Rochell', 'Aubrette Rochell', 2147483647, '2015-08-13 16:28:25', NULL, NULL, NULL, NULL, NULL, NULL, 712, 'Graduated', 'antipolos2.png', '2018-2019'),
('172601312409', 'Dibden', 'Guthrey', 'Brearton', 'Male', '30 Clyde Gallagher Avenue', 'HUMMS', '2000-06-02', 'Chinese', 'Catholic', 'Guthrey Brearton', 'Guthrey Brearton', 'Guthrey Brearton', 2147483647, '2017-01-15 00:17:12', NULL, NULL, NULL, NULL, NULL, NULL, 713, 'Graduated', 'antipolos2.png', '2018-2019'),
('172785469278', 'Gergolet', 'Klemens', 'Crepel', 'Male', '8 Anzinger Avenue', 'HUMMS', '2001-04-29', 'Chinese', 'Christian', 'Klemens Crepel', 'Klemens Crepel', 'Klemens Crepel', 1098877117, '2015-10-29 01:48:19', NULL, NULL, NULL, NULL, NULL, NULL, 714, 'Graduated', 'antipolos2.png', '2018-2019'),
('172818875554', 'Thrift', 'Valenka', 'Bastone', 'Female', '19057 Delladonna Avenue', 'GAS', '1999-03-12', 'Chinese', 'Christian', 'Valenka Bastone', 'Valenka Bastone', 'Valenka Bastone', 2147483647, '2016-01-26 14:29:39', NULL, NULL, NULL, NULL, NULL, NULL, 715, 'Graduated', 'antipolos2.png', '2018-2019'),
('172837786273', 'Abramino', 'Candy', 'Sarll', 'Female', '266 Cherokee Street', 'GAS', '1999-11-30', 'Filipino', 'Christian', 'Candy Sarll', 'Candy Sarll', 'Candy Sarll', 2147483647, '2016-07-01 00:03:26', NULL, NULL, NULL, NULL, NULL, NULL, 716, 'Graduated', 'antipolos2.png', '2018-2019'),
('172851983381', 'Garthshore', 'Shana', 'De Miranda', 'Female', '958 Westend Pass', 'ABM', '2000-06-14', 'English', 'Catholic', 'Shana De Miranda', 'Shana De Miranda', 'Shana De Miranda', 2147483647, '2016-02-03 13:10:12', NULL, NULL, NULL, NULL, NULL, NULL, 717, 'Graduated', 'antipolos2.png', '2018-2019'),
('172950018661', 'Greenalf', 'Kurtis', 'Ledes', 'Male', '9 Kings Pass', 'ABM', '2001-12-06', 'English', 'Christian', 'Kurtis Ledes', 'Kurtis Ledes', 'Kurtis Ledes', 2147483647, '2015-03-04 13:59:15', NULL, NULL, NULL, NULL, NULL, NULL, 718, 'Graduated', 'antipolos2.png', '2018-2019'),
('172970674738', 'Lucock', 'Caddric', 'Pilger', 'Male', '434 Elgar Crossing', 'GAS', '1999-05-16', 'Filipino', 'Christian', 'Caddric Pilger', 'Caddric Pilger', 'Caddric Pilger', 2147483647, '2015-09-25 19:56:57', NULL, NULL, NULL, NULL, NULL, NULL, 719, 'Graduated', 'antipolos2.png', '2018-2019'),
('173109336234', 'Kinder', 'Clarabelle', 'Anning', 'Female', '624 Evergreen Avenue', 'STEM', '1999-09-14', 'Chinese', 'Catholic', 'Clarabelle Anning', 'Clarabelle Anning', 'Clarabelle Anning', 2147483647, '2016-09-01 17:31:34', NULL, NULL, NULL, NULL, NULL, NULL, 720, 'Graduated', 'antipolos2.png', '2018-2019'),
('173208936345', 'Drakeford', 'Kienan', 'Boffey', 'Male', '6907 Onsgard Drive', 'STEM', '1999-03-25', 'Filipino', 'Christian', 'Kienan Boffey', 'Kienan Boffey', 'Kienan Boffey', 2147483647, '2015-12-17 14:58:15', NULL, NULL, NULL, NULL, NULL, NULL, 721, 'Graduated', 'antipolos2.png', '2018-2019'),
('173285751169', 'Nasey', 'Thom', 'Comelli', 'Male', '504 Crowley Place', 'ABM', '2000-07-16', 'Tagalog', 'Christian', 'Thom Comelli', 'Thom Comelli', 'Thom Comelli', 2147483647, '2015-05-01 07:11:39', NULL, NULL, NULL, NULL, NULL, NULL, 722, 'Graduated', 'antipolos2.png', '2018-2019'),
('173364676021', 'Lainton', 'Rickard', 'Basezzi', 'Male', '9933 Shasta Center', 'STEM', '1999-04-24', 'Malay', 'Catholic', 'Rickard Basezzi', 'Rickard Basezzi', 'Rickard Basezzi', 2147483647, '2015-08-20 09:23:20', NULL, NULL, NULL, NULL, NULL, NULL, 723, 'Graduated', 'antipolos2.png', '2018-2019'),
('173390340009', 'Flores', 'Cherey', 'Flowers', 'Female', '2 Nelson Point', 'HUMMS', '2001-06-03', 'English', 'Christian', 'Cherey Flowers', 'Cherey Flowers', 'Cherey Flowers', 2147483647, '2015-12-09 21:21:49', NULL, NULL, NULL, NULL, NULL, NULL, 724, 'Graduated', 'antipolos2.png', '2018-2019'),
('173409785053', 'Wellstood', 'Storm', 'Maciaszczyk', 'Female', '6515 Tomscot Drive', 'STEM', '2001-06-08', 'Tagalog', 'Catholic', 'Storm Maciaszczyk', 'Storm Maciaszczyk', 'Storm Maciaszczyk', 2147483647, '2016-11-04 05:36:04', NULL, NULL, NULL, NULL, NULL, NULL, 725, 'Graduated', 'antipolos2.png', '2018-2019'),
('173511429895', 'Chsteney', 'Kenny', 'Hebden', 'Male', '51293 Fieldstone Junction', 'STEM', '2001-11-07', 'Filipino', 'Catholic', 'Kenny Hebden', 'Kenny Hebden', 'Kenny Hebden', 2147483647, '2016-04-08 11:33:01', NULL, NULL, NULL, NULL, NULL, NULL, 726, 'Graduated', 'antipolos2.png', '2018-2019'),
('173601965848', 'Bartoli', 'Palm', 'Rawcliff', 'Male', '97 Lotheville Road', 'STEM', '2001-04-05', 'Malay', 'Christian', 'Palm Rawcliff', 'Palm Rawcliff', 'Palm Rawcliff', 2147483647, '2016-10-07 16:46:58', NULL, NULL, NULL, NULL, NULL, NULL, 727, 'Graduated', 'antipolos2.png', '2018-2019'),
('173671797557', 'MacGilmartin', 'Cirilo', 'Clemencet', 'Male', '5519 Delaware Junction', 'ABM', '2001-05-26', 'English', 'Catholic', 'Cirilo Clemencet', 'Cirilo Clemencet', 'Cirilo Clemencet', 2147483647, '2015-10-12 10:40:53', NULL, NULL, NULL, NULL, NULL, NULL, 728, 'Graduated', 'antipolos2.png', '2018-2019'),
('173691961868', 'Wycliff', 'Tome', 'Hollow', 'Male', '4 Browning Point', 'GAS', '2001-12-10', 'Malay', 'Catholic', 'Tome Hollow', 'Tome Hollow', 'Tome Hollow', 2147483647, '2016-07-07 09:28:55', NULL, NULL, NULL, NULL, NULL, NULL, 729, 'Graduated', 'antipolos2.png', '2018-2019'),
('173706860060', 'Derisly', 'Bernard', 'Baress', 'Male', '5771 Atwood Circle', 'GAS', '2001-03-12', 'Tagalog', 'Catholic', 'Bernard Baress', 'Bernard Baress', 'Bernard Baress', 2147483647, '2015-07-30 23:34:12', NULL, NULL, NULL, NULL, NULL, NULL, 730, 'Graduated', 'antipolos2.png', '2018-2019'),
('174097389231', 'Le Noire', 'Sharline', 'Antoniak', 'Female', '3127 Laurel Way', 'STEM', '2000-08-29', 'Tagalog', 'Christian', 'Sharline Antoniak', 'Sharline Antoniak', 'Sharline Antoniak', 2147483647, '2016-11-05 14:01:10', NULL, NULL, NULL, NULL, NULL, NULL, 731, 'Graduated', 'antipolos2.png', '2018-2019'),
('174228547858', 'Zannetti', 'Sunny', 'McQueen', 'Male', '2916 Scoville Trail', 'STEM', '2001-12-09', 'English', 'Christian', 'Sunny McQueen', 'Sunny McQueen', 'Sunny McQueen', 2147483647, '2016-04-12 04:42:40', NULL, NULL, NULL, NULL, NULL, NULL, 732, 'Graduated', 'antipolos2.png', '2018-2019'),
('174383073720', 'Bosanko', 'Hilton', 'Mulhill', 'Male', '613 Hayes Court', 'GAS', '2001-04-04', 'Malay', 'Christian', 'Hilton Mulhill', 'Hilton Mulhill', 'Hilton Mulhill', 1686185174, '2016-11-16 02:03:45', NULL, NULL, NULL, NULL, NULL, NULL, 733, 'Graduated', 'antipolos2.png', '2018-2019'),
('174416863969', 'Moberley', 'Blaine', 'Alldre', 'Male', '0 Northridge Place', 'HUMMS', '2001-04-26', 'English', 'Catholic', 'Blaine Alldre', 'Blaine Alldre', 'Blaine Alldre', 2147483647, '2015-04-10 19:22:54', NULL, NULL, NULL, NULL, NULL, NULL, 734, 'Graduated', 'antipolos2.png', '2018-2019'),
('174721430140', 'Melan', 'Jareb', 'Stennine', 'Male', '389 Parkside Court', 'ABM', '1999-12-16', 'Chinese', 'Christian', 'Jareb Stennine', 'Jareb Stennine', 'Jareb Stennine', 2147483647, '2017-01-11 03:45:46', NULL, NULL, NULL, NULL, NULL, NULL, 735, 'Graduated', 'antipolos2.png', '2018-2019'),
('174824689480', 'Tringham', 'Elia', 'Scragg', 'Male', '54328 Golf View Point', 'STEM', '2001-01-07', 'Filipino', 'Christian', 'Elia Scragg', 'Elia Scragg', 'Elia Scragg', 1653239453, '2016-03-24 12:42:39', NULL, NULL, NULL, NULL, NULL, NULL, 736, 'Graduated', 'antipolos2.png', '2018-2019'),
('174842274565', 'Coverlyn', 'Charmion', 'Dominico', 'Female', '4648 Packers Circle', 'STEM', '1999-02-14', 'Tagalog', 'Catholic', 'Charmion Dominico', 'Charmion Dominico', 'Charmion Dominico', 2147483647, '2015-11-16 09:48:03', NULL, NULL, NULL, NULL, NULL, NULL, 737, 'Graduated', 'antipolos2.png', '2018-2019'),
('174860081071', 'Matura', 'Lenette', 'Lafferty', 'Female', '68 Upham Court', 'GAS', '2000-02-04', 'Tagalog', 'Catholic', 'Lenette Lafferty', 'Lenette Lafferty', 'Lenette Lafferty', 2147483647, '2015-05-19 04:02:43', NULL, NULL, NULL, NULL, NULL, NULL, 738, 'Graduated', 'antipolos2.png', '2018-2019'),
('174916732767', 'Doeg', 'Tresa', 'Davidavidovics', 'Female', '40 Waubesa Place', 'HUMMS', '2000-01-26', 'Tagalog', 'Christian', 'Tresa Davidavidovics', 'Tresa Davidavidovics', 'Tresa Davidavidovics', 2147483647, '2016-04-18 19:21:24', NULL, NULL, NULL, NULL, NULL, NULL, 739, 'Graduated', 'antipolos2.png', '2018-2019'),
('174917503267', 'Radage', 'Isabelita', 'Kleehuhler', 'Female', '56 Holy Cross Lane', 'GAS', '1999-10-21', 'Malay', 'Catholic', 'Isabelita Kleehuhler', 'Isabelita Kleehuhler', 'Isabelita Kleehuhler', 1739859935, '2016-10-13 09:10:50', NULL, NULL, NULL, NULL, NULL, NULL, 740, 'Graduated', 'antipolos2.png', '2018-2019'),
('175033483036', 'Birkmyr', 'Vincenty', 'Roddie', 'Male', '57143 Glendale Street', 'STEM', '2001-11-11', 'Filipino', 'Christian', 'Vincenty Roddie', 'Vincenty Roddie', 'Vincenty Roddie', 2147483647, '2017-01-15 04:36:43', NULL, NULL, NULL, NULL, NULL, NULL, 741, 'Graduated', 'antipolos2.png', '2018-2019'),
('175128523297', 'Sheers', 'Elwood', 'Leythley', 'Male', '3 Park Meadow Park', 'GAS', '2001-08-30', 'Tagalog', 'Christian', 'Elwood Leythley', 'Elwood Leythley', 'Elwood Leythley', 2147483647, '2016-03-16 11:59:57', NULL, NULL, NULL, NULL, NULL, NULL, 742, 'Graduated', 'antipolos2.png', '2018-2019'),
('175253525245', 'McKeurton', 'Kienan', 'Lambe', 'Male', '18 East Way', 'HUMMS', '1999-02-10', 'Chinese', 'Christian', 'Kienan Lambe', 'Kienan Lambe', 'Kienan Lambe', 2147483647, '2015-06-10 04:14:05', NULL, NULL, NULL, NULL, NULL, NULL, 743, 'Graduated', 'antipolos2.png', '2018-2019'),
('175368391269', 'Trevaskis', 'Davon', 'Vatini', 'Male', '115 West Parkway', 'STEM', '2001-08-28', 'Tagalog', 'Catholic', 'Davon Vatini', 'Davon Vatini', 'Davon Vatini', 2147483647, '2017-01-24 00:04:04', NULL, NULL, NULL, NULL, NULL, NULL, 744, 'Graduated', 'antipolos2.png', '2018-2019'),
('175420247335', 'Coldicott', 'Lulu', 'Pedersen', 'Female', '34 Kenwood Lane', 'GAS', '1999-03-28', 'Tagalog', 'Christian', 'Lulu Pedersen', 'Lulu Pedersen', 'Lulu Pedersen', 2147483647, '2015-03-30 12:25:00', NULL, NULL, NULL, NULL, NULL, NULL, 745, 'Graduated', 'antipolos2.png', '2018-2019'),
('175480183782', 'McCague', 'Anne-corinne', 'Braunton', 'Female', '35 Oxford Alley', 'HUMMS', '1999-04-10', 'Tagalog', 'Christian', 'Anne-corinne Braunton', 'Anne-corinne Braunton', 'Anne-corinne Braunton', 2147483647, '2016-11-04 13:08:25', NULL, NULL, NULL, NULL, NULL, NULL, 746, 'Graduated', 'antipolos2.png', '2018-2019'),
('175589950186', 'Sibyllina', 'Anita', 'Coltart', 'Female', '2044 Scoville Street', 'GAS', '2001-05-14', 'Malay', 'Christian', 'Anita Coltart', 'Anita Coltart', 'Anita Coltart', 2147483647, '2015-11-08 05:09:37', NULL, NULL, NULL, NULL, NULL, NULL, 747, 'Graduated', 'antipolos2.png', '2018-2019'),
('175626856287', 'Ivannikov', 'Marcellus', 'McGirr', 'Male', '86949 Spaight Park', 'STEM', '2000-04-01', 'Filipino', 'Christian', 'Marcellus McGirr', 'Marcellus McGirr', 'Marcellus McGirr', 2147483647, '2015-12-20 23:27:04', NULL, NULL, NULL, NULL, NULL, NULL, 748, 'Graduated', 'antipolos2.png', '2018-2019'),
('175632808948', 'Opdenort', 'Lucy', 'Besset', 'Female', '492 Prentice Point', 'ABM', '2000-02-15', 'Chinese', 'Christian', 'Lucy Besset', 'Lucy Besset', 'Lucy Besset', 2147483647, '2016-09-09 14:19:43', NULL, NULL, NULL, NULL, NULL, NULL, 749, 'Graduated', 'antipolos2.png', '2018-2019'),
('175832541532', 'Gehricke', 'Lenora', 'Steet', 'Female', '83 Haas Court', 'STEM', '1999-05-05', 'Tagalog', 'Christian', 'Lenora Steet', 'Lenora Steet', 'Lenora Steet', 2147483647, '2016-08-30 04:37:08', NULL, NULL, NULL, NULL, NULL, NULL, 750, 'Graduated', 'antipolos2.png', '2018-2019'),
('175868016717', 'Saunders', 'Marcelline', 'Ivens', 'Female', '65739 Kim Avenue', 'ABM', '2001-11-05', 'English', 'Christian', 'Marcelline Ivens', 'Marcelline Ivens', 'Marcelline Ivens', 2147483647, '2016-10-03 12:23:51', NULL, NULL, NULL, NULL, NULL, NULL, 751, 'Graduated', 'antipolos2.png', '2018-2019'),
('176063203996', 'Arnet', 'Locke', 'Macura', 'Male', '93 Basil Trail', 'STEM', '1999-03-08', 'Malay', 'Catholic', 'Locke Macura', 'Locke Macura', 'Locke Macura', 2147483647, '2016-04-03 11:22:37', NULL, NULL, NULL, NULL, NULL, NULL, 752, 'Graduated', 'antipolos2.png', '2018-2019'),
('176115004191', 'Heritege', 'Lek', 'Hadingham', 'Male', '1601 Nobel Center', 'GAS', '2001-11-22', 'Filipino', 'Catholic', 'Lek Hadingham', 'Lek Hadingham', 'Lek Hadingham', 2147483647, '2015-12-17 05:30:54', NULL, NULL, NULL, NULL, NULL, NULL, 753, 'Graduated', 'antipolos2.png', '2018-2019'),
('176174598984', 'Gierhard', 'Ardelia', 'Boothe', 'Female', '3579 Susan Street', 'ABM', '1999-11-05', 'Tagalog', 'Christian', 'Ardelia Boothe', 'Ardelia Boothe', 'Ardelia Boothe', 2147483647, '2016-12-19 08:46:14', NULL, NULL, NULL, NULL, NULL, NULL, 754, 'Graduated', 'antipolos2.png', '2018-2019'),
('176278830010', 'Wallach', 'Starlene', 'Shaefer', 'Female', '24547 Lawn Circle', 'ABM', '2001-07-10', 'Filipino', 'Christian', 'Starlene Shaefer', 'Starlene Shaefer', 'Starlene Shaefer', 2147483647, '2017-01-22 14:18:26', NULL, NULL, NULL, NULL, NULL, NULL, 755, 'Graduated', 'antipolos2.png', '2018-2019'),
('176305136058', 'Mersey', 'Ulrich', 'Treske', 'Male', '50039 Steensland Point', 'ABM', '2000-04-23', 'Filipino', 'Christian', 'Ulrich Treske', 'Ulrich Treske', 'Ulrich Treske', 2046136279, '2015-03-22 12:33:50', NULL, NULL, NULL, NULL, NULL, NULL, 756, 'Graduated', 'antipolos2.png', '2018-2019'),
('176310933915', 'Clemas', 'Sayer', 'McBrearty', 'Male', '5607 Blaine Terrace', 'ABM', '1999-03-17', 'Tagalog', 'Catholic', 'Sayer McBrearty', 'Sayer McBrearty', 'Sayer McBrearty', 2147483647, '2015-08-10 09:45:03', NULL, NULL, NULL, NULL, NULL, NULL, 757, 'Graduated', 'antipolos2.png', '2018-2019'),
('176573011022', 'O\'Heyne', 'Nessi', 'Gladebeck', 'Female', '8204 Almo Pass', 'HUMMS', '1999-05-27', 'Chinese', 'Catholic', 'Nessi Gladebeck', 'Nessi Gladebeck', 'Nessi Gladebeck', 2099373622, '2016-04-01 10:20:23', NULL, NULL, NULL, NULL, NULL, NULL, 758, 'Graduated', 'antipolos2.png', '2018-2019'),
('176882367118', 'Dybell', 'Cosmo', 'O\'Hartnett', 'Male', '0322 Buhler Circle', 'STEM', '2000-03-28', 'Malay', 'Christian', 'Cosmo O\'Hartnett', 'Cosmo O\'Hartnett', 'Cosmo O\'Hartnett', 2147483647, '2016-07-03 07:30:49', NULL, NULL, NULL, NULL, NULL, NULL, 759, 'Graduated', 'antipolos2.png', '2018-2019'),
('177055602434', 'Castiglioni', 'Ario', 'Hawkett', 'Male', '169 Glendale Way', 'GAS', '2000-11-11', 'English', 'Catholic', 'Ario Hawkett', 'Ario Hawkett', 'Ario Hawkett', 2147483647, '2016-06-07 21:38:45', NULL, NULL, NULL, NULL, NULL, NULL, 760, 'Graduated', 'antipolos2.png', '2018-2019'),
('177148336416', 'Harral', 'Davis', 'Croy', 'Male', '075 Maywood Drive', 'GAS', '1999-10-19', 'Tagalog', 'Christian', 'Davis Croy', 'Davis Croy', 'Davis Croy', 2147483647, '2016-09-06 02:02:20', NULL, NULL, NULL, NULL, NULL, NULL, 761, 'Graduated', 'antipolos2.png', '2018-2019'),
('177200468882', 'Bright', 'Ivett', 'McAsgill', 'Female', '52 Service Crossing', 'HUMMS', '1999-05-20', 'Tagalog', 'Christian', 'Ivett McAsgill', 'Ivett McAsgill', 'Ivett McAsgill', 2147483647, '2016-11-20 09:25:13', NULL, NULL, NULL, NULL, NULL, NULL, 762, 'Graduated', 'antipolos2.png', '2018-2019'),
('177228484181', 'Adelman', 'Jan', 'Kasparski', 'Male', '6022 Kennedy Pass', 'ABM', '2000-04-27', 'English', 'Christian', 'Jan Kasparski', 'Jan Kasparski', 'Jan Kasparski', 2147483647, '2015-05-05 22:17:16', NULL, NULL, NULL, NULL, NULL, NULL, 763, 'Graduated', 'antipolos2.png', '2018-2019'),
('177310571657', 'Annell', 'Shamus', 'Guest', 'Male', '0637 Montana Park', 'STEM', '2000-07-12', 'Chinese', 'Christian', 'Shamus Guest', 'Shamus Guest', 'Shamus Guest', 2147483647, '2015-10-10 18:55:20', NULL, NULL, NULL, NULL, NULL, NULL, 764, 'Graduated', 'antipolos2.png', '2018-2019'),
('177315443461', 'Gaydon', 'Adriaens', 'Hindenburg', 'Female', '9 Darwin Park', 'HUMMS', '2001-10-25', 'English', 'Christian', 'Adriaens Hindenburg', 'Adriaens Hindenburg', 'Adriaens Hindenburg', 2147483647, '2015-11-20 12:30:14', NULL, NULL, NULL, NULL, NULL, NULL, 765, 'Graduated', 'antipolos2.png', '2018-2019'),
('177438851577', 'Petrasek', 'Jamesy', 'Cottie', 'Male', '2 Amoth Street', 'GAS', '2000-04-21', 'English', 'Catholic', 'Jamesy Cottie', 'Jamesy Cottie', 'Jamesy Cottie', 2147483647, '2016-03-23 08:53:13', NULL, NULL, NULL, NULL, NULL, NULL, 766, 'Graduated', 'antipolos2.png', '2018-2019'),
('177451076809', 'O\'Sheils', 'Greg', 'Woodberry', 'Male', '81156 Bunting Park', 'GAS', '2001-01-28', 'Chinese', 'Catholic', 'Greg Woodberry', 'Greg Woodberry', 'Greg Woodberry', 2147483647, '2016-06-04 17:47:06', NULL, NULL, NULL, NULL, NULL, NULL, 767, 'Graduated', 'antipolos2.png', '2018-2019'),
('177669491113', 'Cackett', 'Errol', 'Welling', 'Male', '3839 Butterfield Trail', 'HUMMS', '2001-12-03', 'Filipino', 'Christian', 'Errol Welling', 'Errol Welling', 'Errol Welling', 2147483647, '2016-06-10 04:11:14', NULL, NULL, NULL, NULL, NULL, NULL, 768, 'Graduated', 'antipolos2.png', '2018-2019'),
('177739917333', 'Fremantle', 'Rayner', 'Billington', 'Male', '2 Anniversary Circle', 'STEM', '1999-09-17', 'Malay', 'Catholic', 'Rayner Billington', 'Rayner Billington', 'Rayner Billington', 2147483647, '2015-10-19 18:25:38', NULL, NULL, NULL, NULL, NULL, NULL, 769, 'Graduated', 'antipolos2.png', '2018-2019'),
('177785378059', 'Allkins', 'Parrnell', 'Skip', 'Male', '0 Oakridge Place', 'GAS', '1999-07-24', 'Malay', 'Christian', 'Parrnell Skip', 'Parrnell Skip', 'Parrnell Skip', 2147483647, '2016-05-23 14:27:12', NULL, NULL, NULL, NULL, NULL, NULL, 770, 'Graduated', 'antipolos2.png', '2018-2019'),
('177788756762', 'Starte', 'Sarette', 'Paulton', 'Female', '29 Kipling Lane', 'ABM', '2001-07-21', 'Filipino', 'Christian', 'Sarette Paulton', 'Sarette Paulton', 'Sarette Paulton', 1282722987, '2016-04-27 21:49:23', NULL, NULL, NULL, NULL, NULL, NULL, 771, 'Graduated', 'antipolos2.png', '2018-2019'),
('177903519456', 'Starkey', 'Ade', 'MacScherie', 'Male', '6 Manufacturers Circle', 'HUMMS', '2001-09-17', 'Tagalog', 'Christian', 'Ade MacScherie', 'Ade MacScherie', 'Ade MacScherie', 1135827974, '2015-11-27 04:35:07', NULL, NULL, NULL, NULL, NULL, NULL, 772, 'Graduated', 'antipolos2.png', '2018-2019'),
('178178616569', 'Matiasek', 'Donny', 'Crooks', 'Male', '79 Crownhardt Center', 'STEM', '1999-11-11', 'English', 'Catholic', 'Donny Crooks', 'Donny Crooks', 'Donny Crooks', 2147483647, '2016-04-12 19:24:50', NULL, NULL, NULL, NULL, NULL, NULL, 773, 'Graduated', 'antipolos2.png', '2018-2019'),
('178243577298', 'Farenden', 'Erin', 'Peregrine', 'Female', '0512 Onsgard Junction', 'HUMMS', '1999-07-15', 'Filipino', 'Catholic', 'Erin Peregrine', 'Erin Peregrine', 'Erin Peregrine', 2147483647, '2016-01-07 02:23:00', NULL, NULL, NULL, NULL, NULL, NULL, 774, 'Graduated', 'antipolos2.png', '2018-2019'),
('178248957126', 'Lorenzin', 'Nollie', 'Hearle', 'Male', '2093 Ohio Alley', 'GAS', '2001-11-16', 'Filipino', 'Christian', 'Nollie Hearle', 'Nollie Hearle', 'Nollie Hearle', 2147483647, '2015-07-25 12:32:57', NULL, NULL, NULL, NULL, NULL, NULL, 775, 'Graduated', 'antipolos2.png', '2018-2019'),
('178464980311', 'Sonner', 'Gawain', 'Treker', 'Male', '7452 East Drive', 'STEM', '2000-09-23', 'English', 'Christian', 'Gawain Treker', 'Gawain Treker', 'Gawain Treker', 2147483647, '2015-06-07 06:43:08', NULL, NULL, NULL, NULL, NULL, NULL, 776, 'Graduated', 'antipolos2.png', '2018-2019'),
('178468825454', 'Dignum', 'Sibbie', 'Du Pre', 'Female', '087 Florence Terrace', 'ABM', '1999-08-09', 'Malay', 'Christian', 'Sibbie Du Pre', 'Sibbie Du Pre', 'Sibbie Du Pre', 2147483647, '2016-03-26 16:00:18', NULL, NULL, NULL, NULL, NULL, NULL, 777, 'Graduated', 'antipolos2.png', '2018-2019'),
('178473170033', 'Bakewell', 'Juliane', 'M\'Quharge', 'Female', '416 Mesta Plaza', 'HUMMS', '2000-07-03', 'Filipino', 'Christian', 'Juliane M\'Quharge', 'Juliane M\'Quharge', 'Juliane M\'Quharge', 2147483647, '2015-08-06 09:43:18', NULL, NULL, NULL, NULL, NULL, NULL, 778, 'Graduated', 'antipolos2.png', '2018-2019'),
('178694491523', 'Pendergrast', 'Evelin', 'Mussotti', 'Male', '206 Buell Junction', 'GAS', '1999-05-08', 'Filipino', 'Catholic', 'Evelin Mussotti', 'Evelin Mussotti', 'Evelin Mussotti', 2147483647, '2015-03-20 16:21:45', NULL, NULL, NULL, NULL, NULL, NULL, 779, 'Graduated', 'antipolos2.png', '2018-2019'),
('178958506152', 'Slingsby', 'Felix', 'Fuzzard', 'Male', '890 Bunker Hill Circle', 'HUMMS', '2000-08-04', 'Malay', 'Christian', 'Felix Fuzzard', 'Felix Fuzzard', 'Felix Fuzzard', 2147483647, '2017-01-09 10:51:14', NULL, NULL, NULL, NULL, NULL, NULL, 780, 'Graduated', 'antipolos2.png', '2018-2019'),
('179046003326', 'Kleinplatz', 'Bethena', 'Misselbrook', 'Female', '7170 Pearson Street', 'STEM', '1999-09-01', 'Malay', 'Christian', 'Bethena Misselbrook', 'Bethena Misselbrook', 'Bethena Misselbrook', 2147483647, '2016-10-30 21:45:09', NULL, NULL, NULL, NULL, NULL, NULL, 781, 'Graduated', 'antipolos2.png', '2018-2019'),
('179097262981', 'MacAlaster', 'Dwight', 'Rickwood', 'Male', '6 Stoughton Point', 'STEM', '2001-01-30', 'Malay', 'Catholic', 'Dwight Rickwood', 'Dwight Rickwood', 'Dwight Rickwood', 2147483647, '2015-11-12 19:43:30', NULL, NULL, NULL, NULL, NULL, NULL, 782, 'Graduated', 'antipolos2.png', '2018-2019'),
('179160931460', 'Rudderham', 'Eldon', 'Filippov', 'Male', '73501 Armistice Drive', 'ABM', '1999-01-30', 'Malay', 'Christian', 'Eldon Filippov', 'Eldon Filippov', 'Eldon Filippov', 2147483647, '2016-05-06 06:06:14', NULL, NULL, NULL, NULL, NULL, NULL, 783, 'Graduated', 'antipolos2.png', '2018-2019'),
('179193729177', 'Mussalli', 'Denni', 'Deplacido', 'Female', '45172 Jana Junction', 'STEM', '2001-07-28', 'Tagalog', 'Catholic', 'Denni Deplacido', 'Denni Deplacido', 'Denni Deplacido', 2147483647, '2017-01-04 09:52:33', NULL, NULL, NULL, NULL, NULL, NULL, 784, 'Graduated', 'antipolos2.png', '2018-2019'),
('179267811735', 'Beardsall', 'Rayner', 'Bruckmann', 'Male', '0 Rockefeller Circle', 'GAS', '1999-08-21', 'Filipino', 'Catholic', 'Rayner Bruckmann', 'Rayner Bruckmann', 'Rayner Bruckmann', 2147483647, '2016-04-11 15:06:34', NULL, NULL, NULL, NULL, NULL, NULL, 785, 'Graduated', 'antipolos2.png', '2018-2019'),
('179327469392', 'Kytter', 'Luciano', 'Challener', 'Male', '002 Corscot Street', 'GAS', '2001-03-30', 'Malay', 'Christian', 'Luciano Challener', 'Luciano Challener', 'Luciano Challener', 1798277628, '2015-12-07 05:52:54', NULL, NULL, NULL, NULL, NULL, NULL, 786, 'Graduated', 'antipolos2.png', '2018-2019'),
('179402947887', 'Pitchers', 'Ruthann', 'Wildt', 'Female', '03 Meadow Valley Avenue', 'GAS', '2000-07-28', 'English', 'Christian', 'Ruthann Wildt', 'Ruthann Wildt', 'Ruthann Wildt', 2147483647, '2015-04-25 13:52:00', NULL, NULL, NULL, NULL, NULL, NULL, 787, 'Graduated', 'antipolos2.png', '2018-2019'),
('179448598275', 'Bracken', 'Harriet', 'South', 'Female', '039 Bashford Circle', 'STEM', '2000-11-10', 'Malay', 'Catholic', 'Harriet South', 'Harriet South', 'Harriet South', 2147483647, '2016-03-11 19:33:29', NULL, NULL, NULL, NULL, NULL, NULL, 788, 'Graduated', 'antipolos2.png', '2018-2019'),
('179525434739', 'Cleminson', 'Jeffrey', 'Sallan', 'Male', '25 Becker Pass', 'STEM', '2001-06-05', 'Filipino', 'Christian', 'Jeffrey Sallan', 'Jeffrey Sallan', 'Jeffrey Sallan', 1662860425, '2016-05-15 07:45:19', NULL, NULL, NULL, NULL, NULL, NULL, 789, 'Graduated', 'antipolos2.png', '2018-2019'),
('179579229607', 'Drogan', 'Noella', 'Bracegirdle', 'Female', '84600 North Terrace', 'HUMMS', '2001-07-30', 'Filipino', 'Catholic', 'Noella Bracegirdle', 'Noella Bracegirdle', 'Noella Bracegirdle', 2147483647, '2015-04-12 06:04:48', NULL, NULL, NULL, NULL, NULL, NULL, 790, 'Graduated', 'antipolos2.png', '2018-2019'),
('179698197592', 'Lawrenson', 'Spenser', 'Miller', 'Male', '6835 Gerald Terrace', 'STEM', '1999-04-08', 'Malay', 'Catholic', 'Spenser Miller', 'Spenser Miller', 'Spenser Miller', 2147483647, '2015-06-15 21:30:16', NULL, NULL, NULL, NULL, NULL, NULL, 791, 'Graduated', 'antipolos2.png', '2018-2019'),
('179736419314', 'Gillopp', 'Robin', 'Burbidge', 'Male', '1537 Badeau Crossing', 'STEM', '2001-05-26', 'English', 'Christian', 'Robin Burbidge', 'Robin Burbidge', 'Robin Burbidge', 2147483647, '2015-06-20 14:06:50', NULL, NULL, NULL, NULL, NULL, NULL, 792, 'Graduated', 'antipolos2.png', '2018-2019'),
('179796187472', 'Dewhurst', 'Brigg', 'Cuesta', 'Male', '3081 Granby Street', 'ABM', '2000-09-22', 'Malay', 'Catholic', 'Brigg Cuesta', 'Brigg Cuesta', 'Brigg Cuesta', 2147483647, '2016-08-03 16:20:49', NULL, NULL, NULL, NULL, NULL, NULL, 793, 'Graduated', 'antipolos2.png', '2018-2019'),
('179828051454', 'Aizikovitz', 'Rourke', 'Emons', 'Male', '45056 Westport Park', 'ABM', '1999-09-15', 'English', 'Catholic', 'Rourke Emons', 'Rourke Emons', 'Rourke Emons', 2147483647, '2016-10-23 23:02:31', NULL, NULL, NULL, NULL, NULL, NULL, 794, 'Graduated', 'antipolos2.png', '2018-2019'),
('179832686548', 'Soanes', 'Jerrylee', 'Mouland', 'Female', '646 Golf View Circle', 'ABM', '2000-02-01', 'English', 'Catholic', 'Jerrylee Mouland', 'Jerrylee Mouland', 'Jerrylee Mouland', 2147483647, '2016-08-19 06:25:16', NULL, NULL, NULL, NULL, NULL, NULL, 795, 'Graduated', 'antipolos2.png', '2018-2019'),
('179910798568', 'Manwaring', 'Abbe', 'Houlson', 'Male', '261 Schurz Place', 'HUMMS', '2001-03-16', 'Malay', 'Catholic', 'Abbe Houlson', 'Abbe Houlson', 'Abbe Houlson', 2147483647, '2016-06-28 19:46:23', NULL, NULL, NULL, NULL, NULL, NULL, 796, 'Graduated', 'antipolos2.png', '2018-2019'),
('179924513378', 'Housin', 'Zachariah', 'Duckitt', 'Male', '5 Petterle Crossing', 'GAS', '2001-05-28', 'Tagalog', 'Catholic', 'Zachariah Duckitt', 'Zachariah Duckitt', 'Zachariah Duckitt', 2147483647, '2015-07-27 06:30:30', NULL, NULL, NULL, NULL, NULL, NULL, 797, 'Graduated', 'antipolos2.png', '2018-2019'),
('179930119007', 'Grigolashvill', 'Myrlene', 'Lesslie', 'Female', '77130 Brickson Park Center', 'HUMMS', '2000-03-14', 'Tagalog', 'Christian', 'Myrlene Lesslie', 'Myrlene Lesslie', 'Myrlene Lesslie', 2147483647, '2015-11-26 03:17:43', NULL, NULL, NULL, NULL, NULL, NULL, 798, 'Graduated', 'antipolos2.png', '2018-2019'),
('179962212677', 'Gillhespy', 'Therine', 'Cargo', 'Female', '01 Loeprich Park', 'ABM', '1999-04-16', 'Malay', 'Christian', 'Therine Cargo', 'Therine Cargo', 'Therine Cargo', 2147483647, '2015-05-15 06:12:23', NULL, NULL, NULL, NULL, NULL, NULL, 799, 'Graduated', 'antipolos2.png', '2018-2019'),
('179965086297', 'Deverson', 'Vivyan', 'Scarlet', 'Female', '575 Haas Parkway', 'GAS', '2000-12-13', 'Tagalog', 'Catholic', 'Vivyan Scarlet', 'Vivyan Scarlet', 'Vivyan Scarlet', 2147483647, '2016-11-08 00:33:45', NULL, NULL, NULL, NULL, NULL, NULL, 800, 'Graduated', 'antipolos2.png', '2018-2019'),
('180183226137', 'Fears', 'Lizbeth', 'Weyman', 'Female', '492 Park Meadow Place', 'ABM', '2000-06-02', 'Filipino', 'Christian', 'Lizbeth Weyman', 'Lizbeth Weyman', 'Lizbeth Weyman', 2147483647, '2017-01-27 05:24:20', NULL, NULL, NULL, NULL, NULL, NULL, 801, 'Graduated', 'antipolos2.png', '2018-2019'),
('180218600945', 'Sandercroft', 'Maury', 'De Filippi', 'Male', '1 Menomonie Parkway', 'ABM', '2000-12-07', 'Chinese', 'Catholic', 'Maury De Filippi', 'Maury De Filippi', 'Maury De Filippi', 2147483647, '2016-12-20 17:45:42', NULL, NULL, NULL, NULL, NULL, NULL, 802, 'Graduated', 'antipolos2.png', '2018-2019'),
('180230824716', 'Binne', 'Burch', 'Firminger', 'Male', '174 Elgar Pass', 'STEM', '2001-12-05', 'Malay', 'Catholic', 'Burch Firminger', 'Burch Firminger', 'Burch Firminger', 2147483647, '2017-01-17 22:23:02', NULL, NULL, NULL, NULL, NULL, NULL, 803, 'Graduated', 'antipolos2.png', '2018-2019'),
('180254664828', 'Larvin', 'Cyndy', 'Ridoutt', 'Female', '794 Express Lane', 'HUMMS', '2001-07-07', 'Malay', 'Catholic', 'Cyndy Ridoutt', 'Cyndy Ridoutt', 'Cyndy Ridoutt', 2085370528, '2015-07-16 13:55:37', NULL, NULL, NULL, NULL, NULL, NULL, 804, 'Graduated', 'antipolos2.png', '2018-2019'),
('180348862891', 'Glaysher', 'Elaina', 'McCarrell', 'Female', '259 Jana Point', 'HUMMS', '2001-01-08', 'English', 'Catholic', 'Elaina McCarrell', 'Elaina McCarrell', 'Elaina McCarrell', 2147483647, '2016-04-16 03:45:24', NULL, NULL, NULL, NULL, NULL, NULL, 805, 'Graduated', 'antipolos2.png', '2018-2019'),
('180423583645', 'Jakubovicz', 'Tristam', 'Killoran', 'Male', '9 Rowland Street', 'HUMMS', '1999-04-06', 'Chinese', 'Christian', 'Tristam Killoran', 'Tristam Killoran', 'Tristam Killoran', 1417652116, '2017-01-05 15:22:26', NULL, NULL, NULL, NULL, NULL, NULL, 806, 'Graduated', 'antipolos2.png', '2018-2019'),
('180509753115', 'Cantillion', 'Gaby', 'Ranns', 'Male', '1639 Claremont Street', 'ABM', '2000-08-18', 'Tagalog', 'Catholic', 'Gaby Ranns', 'Gaby Ranns', 'Gaby Ranns', 2147483647, '2015-09-19 08:33:51', NULL, NULL, NULL, NULL, NULL, NULL, 807, 'Graduated', 'antipolos2.png', '2018-2019'),
('180528402548', 'Attarge', 'Katine', 'Timewell', 'Female', '37 Truax Drive', 'STEM', '2000-11-27', 'English', 'Catholic', 'Katine Timewell', 'Katine Timewell', 'Katine Timewell', 2147483647, '2016-11-11 12:59:03', NULL, NULL, NULL, NULL, NULL, NULL, 808, 'Graduated', 'antipolos2.png', '2018-2019'),
('180734674725', 'Kunzler', 'Amanda', 'Kintish', 'Female', '14018 Homewood Parkway', 'HUMMS', '1999-03-05', 'English', 'Catholic', 'Amanda Kintish', 'Amanda Kintish', 'Amanda Kintish', 2147483647, '2016-03-22 16:23:21', NULL, NULL, NULL, NULL, NULL, NULL, 809, 'Graduated', 'antipolos2.png', '2018-2019'),
('180916397556', 'Castelain', 'Madelina', 'Taillard', 'Female', '27102 Ryan Street', 'STEM', '2000-05-21', 'English', 'Catholic', 'Madelina Taillard', 'Madelina Taillard', 'Madelina Taillard', 2147483647, '2016-04-21 17:43:32', NULL, NULL, NULL, NULL, NULL, NULL, 810, 'Graduated', 'antipolos2.png', '2018-2019'),
('180949699759', 'Popov', 'Elfreda', 'Renish', 'Female', '0 Northport Court', 'ABM', '2001-01-25', 'Chinese', 'Christian', 'Elfreda Renish', 'Elfreda Renish', 'Elfreda Renish', 2147483647, '2015-09-24 11:56:41', NULL, NULL, NULL, NULL, NULL, NULL, 811, 'Graduated', 'antipolos2.png', '2018-2019'),
('181032666294', 'Hotchkin', 'Marion', 'Screase', 'Male', '17194 Loomis Pass', 'HUMMS', '2000-10-23', 'Tagalog', 'Christian', 'Marion Screase', 'Marion Screase', 'Marion Screase', 2147483647, '2016-08-25 07:55:53', NULL, NULL, NULL, NULL, NULL, NULL, 812, 'Graduated', 'antipolos2.png', '2018-2019'),
('181434139362', 'Blaxeland', 'West', 'Ecob', 'Male', '11720 Namekagon Trail', 'ABM', '1999-03-21', 'Malay', 'Christian', 'West Ecob', 'West Ecob', 'West Ecob', 2147483647, '2016-05-07 02:06:19', NULL, NULL, NULL, NULL, NULL, NULL, 813, 'Graduated', 'antipolos2.png', '2018-2019'),
('181441677501', 'Brunel', 'Lynnett', 'Grund', 'Female', '960 Ilene Parkway', 'GAS', '2000-11-06', 'English', 'Christian', 'Lynnett Grund', 'Lynnett Grund', 'Lynnett Grund', 2147483647, '2015-12-18 03:46:18', NULL, NULL, NULL, NULL, NULL, NULL, 814, 'Graduated', 'antipolos2.png', '2018-2019'),
('181596808993', 'Ameer-Beg', 'Mata', 'Turrill', 'Male', '04 Blackbird Parkway', 'STEM', '1999-02-09', 'Chinese', 'Christian', 'Mata Turrill', 'Mata Turrill', 'Mata Turrill', 2147483647, '2016-08-24 15:20:49', NULL, NULL, NULL, NULL, NULL, NULL, 815, 'Graduated', 'antipolos2.png', '2018-2019'),
('181612926707', 'Patrone', 'Tabbatha', 'Spottiswood', 'Female', '6 Ilene Lane', 'STEM', '1999-03-18', 'Malay', 'Catholic', 'Tabbatha Spottiswood', 'Tabbatha Spottiswood', 'Tabbatha Spottiswood', 2147483647, '2015-10-02 12:18:31', NULL, NULL, NULL, NULL, NULL, NULL, 816, 'Graduated', 'antipolos2.png', '2018-2019'),
('181626857904', 'Diegan', 'Tabbi', 'Reding', 'Female', '811 Troy Park', 'GAS', '2001-10-22', 'Filipino', 'Christian', 'Tabbi Reding', 'Tabbi Reding', 'Tabbi Reding', 2147483647, '2015-12-01 17:36:54', NULL, NULL, NULL, NULL, NULL, NULL, 817, 'Graduated', 'antipolos2.png', '2018-2019'),
('181682683708', 'Scatchar', 'Valaree', 'Dudenie', 'Female', '934 Anderson Lane', 'STEM', '2001-07-26', 'Filipino', 'Christian', 'Valaree Dudenie', 'Valaree Dudenie', 'Valaree Dudenie', 2147483647, '2015-10-27 19:02:41', NULL, NULL, NULL, NULL, NULL, NULL, 818, 'Graduated', 'antipolos2.png', '2018-2019'),
('181838374770', 'Dorward', 'Bobby', 'Robertz', 'Male', '95099 Farwell Point', 'HUMMS', '2000-06-06', 'Malay', 'Christian', 'Bobby Robertz', 'Bobby Robertz', 'Bobby Robertz', 2147483647, '2017-01-18 05:46:25', NULL, NULL, NULL, NULL, NULL, NULL, 819, 'Graduated', 'antipolos2.png', '2018-2019'),
('181853912523', 'Illsley', 'Olympia', 'Guido', 'Female', '6274 Ludington Terrace', 'ABM', '1999-03-13', 'Chinese', 'Christian', 'Olympia Guido', 'Olympia Guido', 'Olympia Guido', 2147483647, '2015-12-22 21:32:25', NULL, NULL, NULL, NULL, NULL, NULL, 820, 'Graduated', 'antipolos2.png', '2018-2019'),
('181922600170', 'Towler', 'Hunt', 'Guntrip', 'Male', '687 Johnson Road', 'GAS', '2000-06-17', 'Chinese', 'Christian', 'Hunt Guntrip', 'Hunt Guntrip', 'Hunt Guntrip', 2147483647, '2016-11-20 15:28:20', NULL, NULL, NULL, NULL, NULL, NULL, 821, 'Graduated', 'antipolos2.png', '2018-2019'),
('181950172776', 'Dorbin', 'Branden', 'Gorham', 'Male', '165 Pennsylvania Avenue', 'STEM', '2001-06-15', 'Malay', 'Christian', 'Branden Gorham', 'Branden Gorham', 'Branden Gorham', 2147483647, '2015-06-02 00:30:09', NULL, NULL, NULL, NULL, NULL, NULL, 822, 'Graduated', 'antipolos2.png', '2018-2019'),
('182225733179', 'Cathery', 'Clem', 'Trim', 'Female', '490 Ludington Way', 'ABM', '1999-03-19', 'Tagalog', 'Christian', 'Clem Trim', 'Clem Trim', 'Clem Trim', 1227637269, '2016-04-03 08:35:22', NULL, NULL, NULL, NULL, NULL, NULL, 823, 'Graduated', 'antipolos2.png', '2018-2019'),
('182356810552', 'Wharrier', 'Edgardo', 'Georgeson', 'Male', '009 Thackeray Park', 'ABM', '1999-02-05', 'Filipino', 'Catholic', 'Edgardo Georgeson', 'Edgardo Georgeson', 'Edgardo Georgeson', 2147483647, '2016-06-06 00:08:47', NULL, NULL, NULL, NULL, NULL, NULL, 824, 'Graduated', 'antipolos2.png', '2018-2019'),
('182394404743', 'Kroger', 'Ira', 'Tindle', 'Male', '959 East Crossing', 'GAS', '2000-10-12', 'Tagalog', 'Catholic', 'Ira Tindle', 'Ira Tindle', 'Ira Tindle', 2147483647, '2015-03-30 10:51:04', NULL, NULL, NULL, NULL, NULL, NULL, 825, 'Graduated', 'antipolos2.png', '2018-2019'),
('182434997817', 'Devaney', 'Thomas', 'Liversage', 'Male', '079 Ramsey Point', 'ABM', '2000-12-20', 'English', 'Catholic', 'Thomas Liversage', 'Thomas Liversage', 'Thomas Liversage', 2147483647, '2016-06-22 15:01:35', NULL, NULL, NULL, NULL, NULL, NULL, 826, 'Graduated', 'antipolos2.png', '2018-2019'),
('182520602987', 'Kennaird', 'Joella', 'Lanfear', 'Female', '0 Coolidge Junction', 'ABM', '2001-05-15', 'Chinese', 'Catholic', 'Joella Lanfear', 'Joella Lanfear', 'Joella Lanfear', 2147483647, '2016-03-24 20:06:14', NULL, NULL, NULL, NULL, NULL, NULL, 827, 'Graduated', 'antipolos2.png', '2018-2019'),
('182581086566', 'Besemer', 'Rani', 'Aaron', 'Female', '6 Arrowood Road', 'STEM', '1999-05-17', 'Filipino', 'Catholic', 'Rani Aaron', 'Rani Aaron', 'Rani Aaron', 2147483647, '2015-10-31 17:46:37', NULL, NULL, NULL, NULL, NULL, NULL, 828, 'Graduated', 'antipolos2.png', '2018-2019'),
('182702103078', 'Skyppe', 'Gilberta', 'Greenless', 'Female', '60919 West Place', 'ABM', '2001-10-22', 'English', 'Catholic', 'Gilberta Greenless', 'Gilberta Greenless', 'Gilberta Greenless', 2147483647, '2015-11-06 15:58:53', NULL, NULL, NULL, NULL, NULL, NULL, 829, 'Graduated', 'antipolos2.png', '2018-2019'),
('182710874451', 'Frodsham', 'Adora', 'Prudham', 'Female', '370 Killdeer Road', 'HUMMS', '2000-07-08', 'Malay', 'Catholic', 'Adora Prudham', 'Adora Prudham', 'Adora Prudham', 2147483647, '2015-02-24 19:48:22', NULL, NULL, NULL, NULL, NULL, NULL, 830, 'Graduated', 'antipolos2.png', '2018-2019');
INSERT INTO `grads` (`adhaar_no`, `lname`, `fname`, `learner_midname`, `gender`, `address`, `strand`, `dob`, `mother_tongue`, `religion`, `father_name`, `mother_name`, `guardian_name`, `mobile_no`, `created_at`, `updated_at`, `status`, `alternate_mobile_no`, `email_id`, `extra_note`, `roll_no`, `stu_id`, `grade`, `photo`, `class`) VALUES
('182746948176', 'Titman', 'Olvan', 'Aisbett', 'Male', '2336 Schlimgen Junction', 'GAS', '2000-09-05', 'Filipino', 'Catholic', 'Olvan Aisbett', 'Olvan Aisbett', 'Olvan Aisbett', 2147483647, '2015-04-04 20:28:08', NULL, NULL, NULL, NULL, NULL, NULL, 831, 'Graduated', 'antipolos2.png', '2018-2019'),
('182960813050', 'Menego', 'Dorita', 'Reinmar', 'Female', '6 Clove Plaza', 'GAS', '2000-03-18', 'Tagalog', 'Christian', 'Dorita Reinmar', 'Dorita Reinmar', 'Dorita Reinmar', 2147483647, '2016-11-22 23:15:52', NULL, NULL, NULL, NULL, NULL, NULL, 832, 'Graduated', 'antipolos2.png', '2018-2019'),
('182998370225', 'Rowbotham', 'Matias', 'Tremberth', 'Male', '78746 Crest Line Trail', 'GAS', '2001-07-10', 'Chinese', 'Christian', 'Matias Tremberth', 'Matias Tremberth', 'Matias Tremberth', 2147483647, '2015-02-13 01:45:13', NULL, NULL, NULL, NULL, NULL, NULL, 833, 'Graduated', 'antipolos2.png', '2018-2019'),
('183138422005', 'Levis', 'Ivory', 'Pipworth', 'Female', '97045 Ridge Oak Lane', 'ABM', '2000-05-25', 'Tagalog', 'Catholic', 'Ivory Pipworth', 'Ivory Pipworth', 'Ivory Pipworth', 2147483647, '2015-06-24 01:21:20', NULL, NULL, NULL, NULL, NULL, NULL, 834, 'Graduated', 'antipolos2.png', '2018-2019'),
('183147017468', 'Downgate', 'Mathilda', 'Hoodless', 'Female', '69 Corben Center', 'ABM', '2001-09-29', 'Malay', 'Catholic', 'Mathilda Hoodless', 'Mathilda Hoodless', 'Mathilda Hoodless', 2147483647, '2015-09-29 21:19:59', NULL, NULL, NULL, NULL, NULL, NULL, 835, 'Graduated', 'antipolos2.png', '2018-2019'),
('183478525526', 'Wimmers', 'Morgun', 'Scott', 'Male', '15647 Swallow Crossing', 'ABM', '2000-08-21', 'Malay', 'Catholic', 'Morgun Scott', 'Morgun Scott', 'Morgun Scott', 2147483647, '2016-01-06 01:49:13', NULL, NULL, NULL, NULL, NULL, NULL, 836, 'Graduated', 'antipolos2.png', '2018-2019'),
('183564666692', 'Blucher', 'Schuyler', 'Lillecrap', 'Male', '333 Waubesa Plaza', 'GAS', '2000-04-19', 'Malay', 'Catholic', 'Schuyler Lillecrap', 'Schuyler Lillecrap', 'Schuyler Lillecrap', 2147483647, '2016-08-25 01:38:02', NULL, NULL, NULL, NULL, NULL, NULL, 837, 'Graduated', 'antipolos2.png', '2018-2019'),
('183575598827', 'Marchent', 'Allina', 'Hobbing', 'Female', '62 Shasta Parkway', 'GAS', '2001-09-27', 'Malay', 'Catholic', 'Allina Hobbing', 'Allina Hobbing', 'Allina Hobbing', 2147483647, '2016-09-30 02:11:14', NULL, NULL, NULL, NULL, NULL, NULL, 838, 'Graduated', 'antipolos2.png', '2018-2019'),
('183710125200', 'McKerley', 'Noel', 'Gamon', 'Female', '72858 Gerald Street', 'HUMMS', '2001-08-14', 'Chinese', 'Catholic', 'Noel Gamon', 'Noel Gamon', 'Noel Gamon', 2147483647, '2015-11-04 00:46:07', NULL, NULL, NULL, NULL, NULL, NULL, 839, 'Graduated', 'antipolos2.png', '2018-2019'),
('183850309096', 'McFadyen', 'Lisle', 'Kenninghan', 'Male', '68 Oxford Park', 'HUMMS', '1999-09-03', 'Chinese', 'Catholic', 'Lisle Kenninghan', 'Lisle Kenninghan', 'Lisle Kenninghan', 2147483647, '2016-04-12 08:23:32', NULL, NULL, NULL, NULL, NULL, NULL, 840, 'Graduated', 'antipolos2.png', '2018-2019'),
('183892305929', 'Arnaudi', 'Shalom', 'Arthars', 'Male', '0850 Vernon Center', 'HUMMS', '2000-09-16', 'Chinese', 'Christian', 'Shalom Arthars', 'Shalom Arthars', 'Shalom Arthars', 2147483647, '2015-11-15 19:10:30', NULL, NULL, NULL, NULL, NULL, NULL, 841, 'Graduated', 'antipolos2.png', '2018-2019'),
('183979103775', 'McQuillin', 'Jyoti', 'Wivell', 'Female', '86 Hudson Lane', 'STEM', '2001-05-16', 'English', 'Catholic', 'Jyoti Wivell', 'Jyoti Wivell', 'Jyoti Wivell', 2147483647, '2015-12-10 04:26:28', NULL, NULL, NULL, NULL, NULL, NULL, 842, 'Graduated', 'antipolos2.png', '2018-2019'),
('183980355447', 'De la Barre', 'Gertruda', 'Sadat', 'Female', '19713 Nobel Parkway', 'GAS', '1999-04-26', 'Tagalog', 'Christian', 'Gertruda Sadat', 'Gertruda Sadat', 'Gertruda Sadat', 2147483647, '2016-06-13 07:10:47', NULL, NULL, NULL, NULL, NULL, NULL, 843, 'Graduated', 'antipolos2.png', '2018-2019'),
('184016081047', 'Leblanc', 'Merrick', 'Jerzyk', 'Male', '736 Pawling Street', 'STEM', '2000-04-29', 'Malay', 'Catholic', 'Merrick Jerzyk', 'Merrick Jerzyk', 'Merrick Jerzyk', 2147483647, '2016-01-05 23:31:03', NULL, NULL, NULL, NULL, NULL, NULL, 844, 'Graduated', 'antipolos2.png', '2018-2019'),
('184108561702', 'Colebourn', 'Tamarra', 'Bramstom', 'Female', '543 Badeau Plaza', 'GAS', '1999-11-29', 'English', 'Christian', 'Tamarra Bramstom', 'Tamarra Bramstom', 'Tamarra Bramstom', 2147483647, '2016-08-14 20:06:17', NULL, NULL, NULL, NULL, NULL, NULL, 845, 'Graduated', 'antipolos2.png', '2018-2019'),
('184131880370', 'Scramage', 'Stanwood', 'Antoniak', 'Male', '57 Corry Avenue', 'GAS', '1999-08-09', 'Filipino', 'Catholic', 'Stanwood Antoniak', 'Stanwood Antoniak', 'Stanwood Antoniak', 2147483647, '2016-02-25 15:13:38', NULL, NULL, NULL, NULL, NULL, NULL, 846, 'Graduated', 'antipolos2.png', '2018-2019'),
('184231173087', 'Chillcot', 'Conrad', 'Belverstone', 'Male', '94735 Jana Plaza', 'ABM', '2000-01-09', 'Tagalog', 'Catholic', 'Conrad Belverstone', 'Conrad Belverstone', 'Conrad Belverstone', 2147483647, '2016-01-23 15:54:58', NULL, NULL, NULL, NULL, NULL, NULL, 847, 'Graduated', 'antipolos2.png', '2018-2019'),
('184357069564', 'Morrall', 'Gweneth', 'Schorah', 'Female', '6 Leroy Hill', 'HUMMS', '2001-03-01', 'Malay', 'Catholic', 'Gweneth Schorah', 'Gweneth Schorah', 'Gweneth Schorah', 2147483647, '2016-04-04 08:24:58', NULL, NULL, NULL, NULL, NULL, NULL, 848, 'Graduated', 'antipolos2.png', '2018-2019'),
('184383645715', 'Sadd', 'Brooke', 'Gwilym', 'Male', '30452 Elmside Way', 'STEM', '2000-07-09', 'English', 'Christian', 'Brooke Gwilym', 'Brooke Gwilym', 'Brooke Gwilym', 1034428791, '2015-03-29 15:13:21', NULL, NULL, NULL, NULL, NULL, NULL, 849, 'Graduated', 'antipolos2.png', '2018-2019'),
('184679158138', 'Duester', 'Zacharie', 'Canfield', 'Male', '25 Roth Court', 'STEM', '2002-01-10', 'Tagalog', 'Catholic', 'Zacharie Canfield', 'Zacharie Canfield', 'Zacharie Canfield', 2147483647, '2015-10-23 05:35:50', NULL, NULL, NULL, NULL, NULL, NULL, 850, 'Graduated', 'antipolos2.png', '2018-2019'),
('184802563037', 'Avo', 'Frankie', 'Kleint', 'Male', '3519 Longview Circle', 'GAS', '2001-09-17', 'Filipino', 'Christian', 'Frankie Kleint', 'Frankie Kleint', 'Frankie Kleint', 2147483647, '2015-10-04 17:54:22', NULL, NULL, NULL, NULL, NULL, NULL, 851, 'Graduated', 'antipolos2.png', '2018-2019'),
('184971611639', 'Hazell', 'Beilul', 'Pipe', 'Female', '884 Burning Wood Road', 'STEM', '2001-11-22', 'Tagalog', 'Christian', 'Beilul Pipe', 'Beilul Pipe', 'Beilul Pipe', 2147483647, '2016-06-23 03:57:11', NULL, NULL, NULL, NULL, NULL, NULL, 852, 'Graduated', 'antipolos2.png', '2018-2019'),
('185113698644', 'Coatts', 'Catherina', 'Haymes', 'Female', '8069 Towne Parkway', 'HUMMS', '2001-06-07', 'English', 'Christian', 'Catherina Haymes', 'Catherina Haymes', 'Catherina Haymes', 2147483647, '2015-07-20 09:18:05', NULL, NULL, NULL, NULL, NULL, NULL, 853, 'Graduated', 'antipolos2.png', '2018-2019'),
('185239311936', 'Kedward', 'Chad', 'Conyard', 'Female', '4 John Wall Court', 'ABM', '2001-02-20', 'Filipino', 'Christian', 'Chad Conyard', 'Chad Conyard', 'Chad Conyard', 2147483647, '2015-12-04 01:06:03', NULL, NULL, NULL, NULL, NULL, NULL, 854, 'Graduated', 'antipolos2.png', '2018-2019'),
('185273688761', 'Lanahan', 'Emmett', 'Millier', 'Male', '45 Bobwhite Park', 'GAS', '1999-11-13', 'Filipino', 'Catholic', 'Emmett Millier', 'Emmett Millier', 'Emmett Millier', 2147483647, '2016-08-07 06:10:29', NULL, NULL, NULL, NULL, NULL, NULL, 855, 'Graduated', 'antipolos2.png', '2018-2019'),
('185296283812', 'Sulter', 'Mira', 'Cains', 'Female', '6349 Donald Lane', 'HUMMS', '2001-06-27', 'Chinese', 'Catholic', 'Mira Cains', 'Mira Cains', 'Mira Cains', 2147483647, '2015-04-17 09:58:50', NULL, NULL, NULL, NULL, NULL, NULL, 856, 'Graduated', 'antipolos2.png', '2018-2019'),
('185377222482', 'Pierro', 'Anni', 'Linthead', 'Female', '3 Nobel Plaza', 'STEM', '1999-11-08', 'Filipino', 'Catholic', 'Anni Linthead', 'Anni Linthead', 'Anni Linthead', 2147483647, '2015-05-10 17:52:51', NULL, NULL, NULL, NULL, NULL, NULL, 857, 'Graduated', 'antipolos2.png', '2018-2019'),
('185445902045', 'Iorillo', 'Dennie', 'Hext', 'Male', '7 Buell Plaza', 'HUMMS', '2000-04-30', 'Tagalog', 'Christian', 'Dennie Hext', 'Dennie Hext', 'Dennie Hext', 2147483647, '2016-08-02 08:53:04', NULL, NULL, NULL, NULL, NULL, NULL, 858, 'Graduated', 'antipolos2.png', '2018-2019'),
('185668035103', 'Caig', 'Ailyn', 'Milne', 'Female', '5 Springs Avenue', 'GAS', '2000-02-17', 'Malay', 'Christian', 'Ailyn Milne', 'Ailyn Milne', 'Ailyn Milne', 2147483647, '2016-02-11 23:47:32', NULL, NULL, NULL, NULL, NULL, NULL, 859, 'Graduated', 'antipolos2.png', '2018-2019'),
('185713153233', 'Scutter', 'Cary', 'Deering', 'Male', '831 Ronald Regan Park', 'ABM', '2001-01-02', 'Filipino', 'Christian', 'Cary Deering', 'Cary Deering', 'Cary Deering', 2147483647, '2016-12-15 18:34:09', NULL, NULL, NULL, NULL, NULL, NULL, 860, 'Graduated', 'antipolos2.png', '2018-2019'),
('185825770862', 'Itzcak', 'Sergei', 'Marflitt', 'Male', '5 Southridge Junction', 'GAS', '1999-05-26', 'Filipino', 'Christian', 'Sergei Marflitt', 'Sergei Marflitt', 'Sergei Marflitt', 2147483647, '2016-09-06 19:52:12', NULL, NULL, NULL, NULL, NULL, NULL, 861, 'Graduated', 'antipolos2.png', '2018-2019'),
('185906682662', 'Gayton', 'Joellen', 'Biggerstaff', 'Female', '828 Sage Center', 'GAS', '2000-11-11', 'English', 'Christian', 'Joellen Biggerstaff', 'Joellen Biggerstaff', 'Joellen Biggerstaff', 2147483647, '2015-07-20 02:28:05', NULL, NULL, NULL, NULL, NULL, NULL, 862, 'Graduated', 'antipolos2.png', '2018-2019'),
('185997099538', 'Beynkn', 'Eduino', 'Cudiff', 'Male', '5515 Bonner Parkway', 'GAS', '2001-09-29', 'Malay', 'Christian', 'Eduino Cudiff', 'Eduino Cudiff', 'Eduino Cudiff', 2147483647, '2015-02-17 12:59:05', NULL, NULL, NULL, NULL, NULL, NULL, 863, 'Graduated', 'antipolos2.png', '2018-2019'),
('186020666633', 'Loader', 'Correna', 'Scoggans', 'Female', '9136 Di Loreto Court', 'GAS', '2001-05-25', 'English', 'Catholic', 'Correna Scoggans', 'Correna Scoggans', 'Correna Scoggans', 2147483647, '2016-06-07 17:52:43', NULL, NULL, NULL, NULL, NULL, NULL, 864, 'Graduated', 'antipolos2.png', '2018-2019'),
('186066181107', 'Boswood', 'Libbi', 'Bedford', 'Female', '259 Bultman Hill', 'GAS', '1999-07-09', 'Tagalog', 'Catholic', 'Libbi Bedford', 'Libbi Bedford', 'Libbi Bedford', 2147483647, '2016-05-18 19:13:16', NULL, NULL, NULL, NULL, NULL, NULL, 865, 'Graduated', 'antipolos2.png', '2018-2019'),
('186173002521', 'Husk', 'Joelle', 'Salliss', 'Female', '62 Summer Ridge Plaza', 'GAS', '2001-03-24', 'English', 'Christian', 'Joelle Salliss', 'Joelle Salliss', 'Joelle Salliss', 2147483647, '2015-05-14 12:46:39', NULL, NULL, NULL, NULL, NULL, NULL, 866, 'Graduated', 'antipolos2.png', '2018-2019'),
('186310300886', 'Gammade', 'Banky', 'Lander', 'Male', '03 Corben Hill', 'STEM', '1999-07-22', 'Malay', 'Catholic', 'Banky Lander', 'Banky Lander', 'Banky Lander', 2147483647, '2016-06-07 08:58:40', NULL, NULL, NULL, NULL, NULL, NULL, 867, 'Graduated', 'antipolos2.png', '2018-2019'),
('186427019065', 'Kynnd', 'Emilio', 'Kidds', 'Male', '89 Clarendon Road', 'HUMMS', '1999-02-04', 'Tagalog', 'Christian', 'Emilio Kidds', 'Emilio Kidds', 'Emilio Kidds', 2147483647, '2016-11-04 15:01:25', NULL, NULL, NULL, NULL, NULL, NULL, 868, 'Graduated', 'antipolos2.png', '2018-2019'),
('186621716485', 'Owtram', 'Costa', 'Isherwood', 'Male', '28 Pearson Plaza', 'ABM', '1999-08-17', 'Filipino', 'Christian', 'Costa Isherwood', 'Costa Isherwood', 'Costa Isherwood', 2147483647, '2016-05-22 05:57:00', NULL, NULL, NULL, NULL, NULL, NULL, 869, 'Graduated', 'antipolos2.png', '2018-2019'),
('186644324985', 'Hicklingbottom', 'Findlay', 'Rosendahl', 'Male', '5216 Mifflin Park', 'ABM', '2000-03-12', 'Tagalog', 'Christian', 'Findlay Rosendahl', 'Findlay Rosendahl', 'Findlay Rosendahl', 2147483647, '2016-07-10 06:03:09', NULL, NULL, NULL, NULL, NULL, NULL, 870, 'Graduated', 'antipolos2.png', '2018-2019'),
('186658828673', 'Smale', 'Reinaldos', 'Farragher', 'Male', '63154 Vera Circle', 'HUMMS', '1999-09-13', 'Filipino', 'Catholic', 'Reinaldos Farragher', 'Reinaldos Farragher', 'Reinaldos Farragher', 2147483647, '2016-09-04 11:35:57', NULL, NULL, NULL, NULL, NULL, NULL, 871, 'Graduated', 'antipolos2.png', '2018-2019'),
('186771089401', 'Moscon', 'Reinaldos', 'Van Weedenburg', 'Male', '9059 Hanson Pass', 'STEM', '2000-03-08', 'Malay', 'Catholic', 'Reinaldos Van Weedenburg', 'Reinaldos Van Weedenburg', 'Reinaldos Van Weedenburg', 2147483647, '2015-08-12 20:27:14', NULL, NULL, NULL, NULL, NULL, NULL, 872, 'Graduated', 'antipolos2.png', '2018-2019'),
('187060421977', 'Yuryatin', 'Kristo', 'Bowman', 'Male', '187 Thackeray Center', 'GAS', '2001-03-22', 'English', 'Christian', 'Kristo Bowman', 'Kristo Bowman', 'Kristo Bowman', 2147483647, '2016-11-15 22:38:25', NULL, NULL, NULL, NULL, NULL, NULL, 873, 'Graduated', 'antipolos2.png', '2018-2019'),
('187079628359', 'Wane', 'Becky', 'Golly', 'Female', '5476 Alpine Pass', 'STEM', '1999-05-12', 'Malay', 'Catholic', 'Becky Golly', 'Becky Golly', 'Becky Golly', 2147483647, '2016-07-06 05:56:00', NULL, NULL, NULL, NULL, NULL, NULL, 874, 'Graduated', 'antipolos2.png', '2018-2019'),
('187607012288', 'Toghill', 'Gates', 'De Castri', 'Female', '58 Dixon Hill', 'ABM', '1999-08-04', 'English', 'Christian', 'Gates De Castri', 'Gates De Castri', 'Gates De Castri', 2103984510, '2015-05-01 15:24:13', NULL, NULL, NULL, NULL, NULL, NULL, 875, 'Graduated', 'antipolos2.png', '2018-2019'),
('187738711146', 'de Vaen', 'Maddy', 'Crauford', 'Female', '21733 Maryland Park', 'STEM', '1999-12-06', 'English', 'Christian', 'Maddy Crauford', 'Maddy Crauford', 'Maddy Crauford', 2147483647, '2015-12-03 21:11:40', NULL, NULL, NULL, NULL, NULL, NULL, 876, 'Graduated', 'antipolos2.png', '2018-2019'),
('187795737204', 'Gerler', 'Herc', 'Gilmartin', 'Male', '023 Jackson Terrace', 'STEM', '2000-07-18', 'English', 'Christian', 'Herc Gilmartin', 'Herc Gilmartin', 'Herc Gilmartin', 2147483647, '2016-11-23 00:48:49', NULL, NULL, NULL, NULL, NULL, NULL, 877, 'Graduated', 'antipolos2.png', '2018-2019'),
('187880129041', 'Tissiman', 'Cointon', 'Kilmartin', 'Male', '36 Shoshone Hill', 'ABM', '2001-06-02', 'Chinese', 'Christian', 'Cointon Kilmartin', 'Cointon Kilmartin', 'Cointon Kilmartin', 2147483647, '2015-09-13 23:52:08', NULL, NULL, NULL, NULL, NULL, NULL, 878, 'Graduated', 'antipolos2.png', '2018-2019'),
('188275706482', 'Margaritelli', 'Oswald', 'Reddings', 'Male', '139 Oakridge Street', 'GAS', '1999-09-04', 'Chinese', 'Christian', 'Oswald Reddings', 'Oswald Reddings', 'Oswald Reddings', 2147483647, '2015-08-14 19:57:35', NULL, NULL, NULL, NULL, NULL, NULL, 879, 'Graduated', 'antipolos2.png', '2018-2019'),
('188449559210', 'Lamburn', 'Evangelia', 'Parsons', 'Female', '8955 Packers Alley', 'HUMMS', '1999-03-02', 'Tagalog', 'Catholic', 'Evangelia Parsons', 'Evangelia Parsons', 'Evangelia Parsons', 2147483647, '2015-02-05 07:24:15', NULL, NULL, NULL, NULL, NULL, NULL, 880, 'Graduated', 'antipolos2.png', '2018-2019'),
('188529478837', 'Melley', 'Isidor', 'Belison', 'Male', '34 Dayton Junction', 'GAS', '2001-05-16', 'Malay', 'Catholic', 'Isidor Belison', 'Isidor Belison', 'Isidor Belison', 2147483647, '2016-05-24 14:58:26', NULL, NULL, NULL, NULL, NULL, NULL, 881, 'Graduated', 'antipolos2.png', '2018-2019'),
('188627180152', 'Bales', 'Lenci', 'MacCarroll', 'Male', '168 Rowland Lane', 'ABM', '1999-06-21', 'English', 'Christian', 'Lenci MacCarroll', 'Lenci MacCarroll', 'Lenci MacCarroll', 1908509695, '2016-04-07 01:13:58', NULL, NULL, NULL, NULL, NULL, NULL, 882, 'Graduated', 'antipolos2.png', '2018-2019'),
('188835823815', 'Valois', 'Karrie', 'Landrean', 'Female', '3 Cordelia Pass', 'ABM', '2000-08-14', 'Chinese', 'Christian', 'Karrie Landrean', 'Karrie Landrean', 'Karrie Landrean', 2147483647, '2015-07-11 14:55:53', NULL, NULL, NULL, NULL, NULL, NULL, 883, 'Graduated', 'antipolos2.png', '2018-2019'),
('188936863669', 'Marton', 'Trudy', 'Cowope', 'Female', '7 Homewood Avenue', 'GAS', '1999-09-04', 'Malay', 'Catholic', 'Trudy Cowope', 'Trudy Cowope', 'Trudy Cowope', 2147483647, '2016-06-09 00:25:12', NULL, NULL, NULL, NULL, NULL, NULL, 884, 'Graduated', 'antipolos2.png', '2018-2019'),
('188961068670', 'Matyas', 'Opal', 'Pudney', 'Female', '577 Golden Leaf Street', 'STEM', '1999-06-10', 'Chinese', 'Christian', 'Opal Pudney', 'Opal Pudney', 'Opal Pudney', 2147483647, '2017-01-21 20:35:18', NULL, NULL, NULL, NULL, NULL, NULL, 885, 'Graduated', 'antipolos2.png', '2018-2019'),
('189100385839', 'Mannie', 'Patty', 'Lamar', 'Male', '76 Riverside Terrace', 'ABM', '1999-03-28', 'Malay', 'Christian', 'Patty Lamar', 'Patty Lamar', 'Patty Lamar', 2147483647, '2015-08-23 02:27:19', NULL, NULL, NULL, NULL, NULL, NULL, 886, 'Graduated', 'antipolos2.png', '2018-2019'),
('189166873290', 'Wolland', 'Husain', 'Yoxen', 'Male', '323 Colorado Hill', 'ABM', '2001-08-04', 'Chinese', 'Catholic', 'Husain Yoxen', 'Husain Yoxen', 'Husain Yoxen', 2147483647, '2016-11-16 11:34:02', NULL, NULL, NULL, NULL, NULL, NULL, 887, 'Graduated', 'antipolos2.png', '2018-2019'),
('189281759022', 'Iacovielli', 'Flinn', 'Sponer', 'Male', '44089 Parkside Center', 'STEM', '1999-05-27', 'Malay', 'Christian', 'Flinn Sponer', 'Flinn Sponer', 'Flinn Sponer', 2147483647, '2016-11-16 17:14:22', NULL, NULL, NULL, NULL, NULL, NULL, 888, 'Graduated', 'antipolos2.png', '2018-2019'),
('189281976798', 'Chappel', 'Ernst', 'Carlens', 'Male', '20 Lerdahl Place', 'STEM', '2000-10-26', 'Malay', 'Christian', 'Ernst Carlens', 'Ernst Carlens', 'Ernst Carlens', 2147483647, '2015-10-25 21:02:08', NULL, NULL, NULL, NULL, NULL, NULL, 889, 'Graduated', 'antipolos2.png', '2018-2019'),
('189297082515', 'Mingotti', 'Win', 'Maruszewski', 'Male', '76 Cardinal Drive', 'ABM', '1999-06-01', 'Chinese', 'Christian', 'Win Maruszewski', 'Win Maruszewski', 'Win Maruszewski', 2147483647, '2015-10-17 12:02:57', NULL, NULL, NULL, NULL, NULL, NULL, 890, 'Graduated', 'antipolos2.png', '2018-2019'),
('189326610139', 'Sixsmith', 'Stephen', 'Croxall', 'Male', '730 Calypso Avenue', 'STEM', '1999-09-30', 'Chinese', 'Catholic', 'Stephen Croxall', 'Stephen Croxall', 'Stephen Croxall', 2147483647, '2016-04-03 20:34:35', NULL, NULL, NULL, NULL, NULL, NULL, 891, 'Graduated', 'antipolos2.png', '2018-2019'),
('189457150315', 'Bradshaw', 'Verine', 'Stebbins', 'Female', '8093 Messerschmidt Junction', 'GAS', '2001-08-03', 'Chinese', 'Christian', 'Verine Stebbins', 'Verine Stebbins', 'Verine Stebbins', 2147483647, '2015-12-07 15:24:08', NULL, NULL, NULL, NULL, NULL, NULL, 892, 'Graduated', 'antipolos2.png', '2018-2019'),
('189490623890', 'Demicoli', 'Roma', 'Malyj', 'Male', '50 Linden Avenue', 'GAS', '2001-12-25', 'Tagalog', 'Catholic', 'Roma Malyj', 'Roma Malyj', 'Roma Malyj', 2147483647, '2015-11-18 03:26:08', NULL, NULL, NULL, NULL, NULL, NULL, 893, 'Graduated', 'antipolos2.png', '2018-2019'),
('189558998763', 'Mathewes', 'Millard', 'Dyter', 'Male', '353 Toban Junction', 'ABM', '1999-04-05', 'Filipino', 'Catholic', 'Millard Dyter', 'Millard Dyter', 'Millard Dyter', 1374058657, '2015-12-20 05:22:44', NULL, NULL, NULL, NULL, NULL, NULL, 894, 'Graduated', 'antipolos2.png', '2018-2019'),
('189764228213', 'Lovegrove', 'Pepe', 'Boultwood', 'Male', '65 Shelley Terrace', 'GAS', '2001-04-03', 'Filipino', 'Christian', 'Pepe Boultwood', 'Pepe Boultwood', 'Pepe Boultwood', 2147483647, '2016-10-23 15:40:37', NULL, NULL, NULL, NULL, NULL, NULL, 895, 'Graduated', 'antipolos2.png', '2018-2019'),
('189824023695', 'Hestrop', 'Mikael', 'Colcutt', 'Male', '1 Dahle Crossing', 'STEM', '2001-12-31', 'Malay', 'Catholic', 'Mikael Colcutt', 'Mikael Colcutt', 'Mikael Colcutt', 2147483647, '2016-01-23 11:57:20', NULL, NULL, NULL, NULL, NULL, NULL, 896, 'Graduated', 'antipolos2.png', '2018-2019'),
('189948428285', 'Collecott', 'Mortie', 'Paulack', 'Male', '53636 Harbort Lane', 'ABM', '2001-05-26', 'Filipino', 'Catholic', 'Mortie Paulack', 'Mortie Paulack', 'Mortie Paulack', 2147483647, '2015-08-09 02:13:29', NULL, NULL, NULL, NULL, NULL, NULL, 897, 'Graduated', 'antipolos2.png', '2018-2019'),
('189975565338', 'Blade', 'Arleyne', 'Burdas', 'Female', '3792 Nevada Park', 'GAS', '1999-11-26', 'Filipino', 'Christian', 'Arleyne Burdas', 'Arleyne Burdas', 'Arleyne Burdas', 2147483647, '2015-06-03 23:04:25', NULL, NULL, NULL, NULL, NULL, NULL, 898, 'Graduated', 'antipolos2.png', '2018-2019'),
('190148483565', 'Hendriks', 'Lola', 'Waple', 'Female', '92 Di Loreto Trail', 'HUMMS', '2001-06-28', 'Filipino', 'Christian', 'Lola Waple', 'Lola Waple', 'Lola Waple', 2147483647, '2015-05-17 04:09:13', NULL, NULL, NULL, NULL, NULL, NULL, 899, 'Graduated', 'antipolos2.png', '2018-2019'),
('190275308794', 'Gamell', 'Chance', 'Landes', 'Male', '2469 Ronald Regan Street', 'HUMMS', '2002-01-23', 'Malay', 'Christian', 'Chance Landes', 'Chance Landes', 'Chance Landes', 2147483647, '2015-12-03 02:27:00', NULL, NULL, NULL, NULL, NULL, NULL, 900, 'Graduated', 'antipolos2.png', '2018-2019'),
('190304937996', 'Wann', 'Olive', 'Falks', 'Female', '86 Maryland Lane', 'STEM', '1999-10-24', 'Filipino', 'Catholic', 'Olive Falks', 'Olive Falks', 'Olive Falks', 2147483647, '2015-08-29 08:54:43', NULL, NULL, NULL, NULL, NULL, NULL, 901, 'Graduated', 'antipolos2.png', '2018-2019'),
('190385598547', 'Deverick', 'Micah', 'Scimonelli', 'Male', '1 Stang Avenue', 'GAS', '1999-02-17', 'English', 'Christian', 'Micah Scimonelli', 'Micah Scimonelli', 'Micah Scimonelli', 2147483647, '2015-07-23 21:40:22', NULL, NULL, NULL, NULL, NULL, NULL, 902, 'Graduated', 'antipolos2.png', '2018-2019'),
('190470864389', 'Antcliffe', 'Etty', 'Langthorne', 'Female', '92766 Talmadge Alley', 'ABM', '2000-08-09', 'Chinese', 'Catholic', 'Etty Langthorne', 'Etty Langthorne', 'Etty Langthorne', 2147483647, '2015-06-07 08:00:15', NULL, NULL, NULL, NULL, NULL, NULL, 903, 'Graduated', 'antipolos2.png', '2018-2019'),
('190527168878', 'McGourty', 'Claiborne', 'Mitham', 'Male', '07288 Donald Center', 'STEM', '2000-11-08', 'Malay', 'Christian', 'Claiborne Mitham', 'Claiborne Mitham', 'Claiborne Mitham', 2147483647, '2016-09-07 22:03:35', NULL, NULL, NULL, NULL, NULL, NULL, 904, 'Graduated', 'antipolos2.png', '2018-2019'),
('190887022428', 'Kinset', 'Elvyn', 'Lanon', 'Male', '7910 John Wall Junction', 'HUMMS', '2002-01-17', 'Filipino', 'Catholic', 'Elvyn Lanon', 'Elvyn Lanon', 'Elvyn Lanon', 2147483647, '2016-05-26 02:25:38', NULL, NULL, NULL, NULL, NULL, NULL, 905, 'Graduated', 'antipolos2.png', '2018-2019'),
('190939483522', 'Biesterfeld', 'Gaspar', 'Ware', 'Male', '71403 Monument Parkway', 'HUMMS', '2001-06-13', 'Tagalog', 'Catholic', 'Gaspar Ware', 'Gaspar Ware', 'Gaspar Ware', 1859659838, '2016-10-29 08:26:36', NULL, NULL, NULL, NULL, NULL, NULL, 906, 'Graduated', 'antipolos2.png', '2018-2019'),
('191044706538', 'Cluitt', 'Nollie', 'Oxley', 'Female', '450 Florence Street', 'ABM', '2000-08-24', 'Tagalog', 'Catholic', 'Nollie Oxley', 'Nollie Oxley', 'Nollie Oxley', 2147483647, '2015-04-01 18:33:25', NULL, NULL, NULL, NULL, NULL, NULL, 907, 'Graduated', 'antipolos2.png', '2018-2019'),
('191117378959', 'O\' Flaherty', 'Sutton', 'Castletine', 'Male', '6 Sage Road', 'GAS', '2000-09-02', 'Malay', 'Christian', 'Sutton Castletine', 'Sutton Castletine', 'Sutton Castletine', 2147483647, '2015-06-01 10:42:31', NULL, NULL, NULL, NULL, NULL, NULL, 908, 'Graduated', 'antipolos2.png', '2018-2019'),
('191456204255', 'Hupe', 'Thebault', 'Dowthwaite', 'Male', '39 Caliangt Crossing', 'ABM', '2000-10-10', 'Tagalog', 'Catholic', 'Thebault Dowthwaite', 'Thebault Dowthwaite', 'Thebault Dowthwaite', 2147483647, '2015-03-31 03:01:00', NULL, NULL, NULL, NULL, NULL, NULL, 909, 'Graduated', 'antipolos2.png', '2018-2019'),
('191469611077', 'Fulmen', 'Lucia', 'Bosenworth', 'Female', '51395 Fallview Point', 'GAS', '2000-02-15', 'Filipino', 'Christian', 'Lucia Bosenworth', 'Lucia Bosenworth', 'Lucia Bosenworth', 1025998499, '2016-08-15 19:08:46', NULL, NULL, NULL, NULL, NULL, NULL, 910, 'Graduated', 'antipolos2.png', '2018-2019'),
('191632827132', 'Winson', 'Ber', 'MacFaul', 'Male', '8361 Main Junction', 'ABM', '2000-03-24', 'English', 'Catholic', 'Ber MacFaul', 'Ber MacFaul', 'Ber MacFaul', 2147483647, '2016-01-11 16:55:39', NULL, NULL, NULL, NULL, NULL, NULL, 911, 'Graduated', 'antipolos2.png', '2018-2019'),
('191793590544', 'Westrey', 'Abby', 'Clews', 'Male', '4749 4th Drive', 'GAS', '2000-07-21', 'Filipino', 'Catholic', 'Abby Clews', 'Abby Clews', 'Abby Clews', 2147483647, '2016-03-07 18:18:03', NULL, NULL, NULL, NULL, NULL, NULL, 912, 'Graduated', 'antipolos2.png', '2018-2019'),
('191834345260', 'Whelan', 'Wat', 'Abrashkov', 'Male', '19549 Goodland Circle', 'STEM', '1999-09-29', 'Filipino', 'Christian', 'Wat Abrashkov', 'Wat Abrashkov', 'Wat Abrashkov', 2147483647, '2016-05-05 22:54:31', NULL, NULL, NULL, NULL, NULL, NULL, 913, 'Graduated', 'antipolos2.png', '2018-2019'),
('191845190256', 'Epton', 'Axe', 'Naldrett', 'Male', '36 Spaight Lane', 'HUMMS', '1999-07-07', 'Chinese', 'Christian', 'Axe Naldrett', 'Axe Naldrett', 'Axe Naldrett', 2147483647, '2015-06-15 08:01:09', NULL, NULL, NULL, NULL, NULL, NULL, 914, 'Graduated', 'antipolos2.png', '2018-2019'),
('191985059528', 'Carncross', 'Aurore', 'Haycraft', 'Female', '11947 Fallview Parkway', 'GAS', '2000-09-18', 'Chinese', 'Christian', 'Aurore Haycraft', 'Aurore Haycraft', 'Aurore Haycraft', 2147483647, '2016-11-01 17:53:14', NULL, NULL, NULL, NULL, NULL, NULL, 915, 'Graduated', 'antipolos2.png', '2018-2019'),
('192085308831', 'Carlile', 'Jaime', 'Grinin', 'Male', '883 Pawling Circle', 'HUMMS', '2002-01-17', 'Chinese', 'Catholic', 'Jaime Grinin', 'Jaime Grinin', 'Jaime Grinin', 2147483647, '2015-12-10 11:14:45', NULL, NULL, NULL, NULL, NULL, NULL, 916, 'Graduated', 'antipolos2.png', '2018-2019'),
('192176020282', 'Undrell', 'Elfie', 'Eingerfield', 'Female', '252 Manufacturers Park', 'ABM', '1999-12-02', 'Malay', 'Catholic', 'Elfie Eingerfield', 'Elfie Eingerfield', 'Elfie Eingerfield', 2147483647, '2016-05-23 16:47:06', NULL, NULL, NULL, NULL, NULL, NULL, 917, 'Graduated', 'antipolos2.png', '2018-2019'),
('192255548001', 'Urey', 'Tito', 'Cullip', 'Male', '3 Transport Hill', 'ABM', '1999-05-17', 'Chinese', 'Catholic', 'Tito Cullip', 'Tito Cullip', 'Tito Cullip', 2147483647, '2016-06-06 05:44:37', NULL, NULL, NULL, NULL, NULL, NULL, 918, 'Graduated', 'antipolos2.png', '2018-2019'),
('192346463985', 'Bossom', 'Niels', 'Gazey', 'Male', '39 Manitowish Junction', 'GAS', '1999-07-02', 'Tagalog', 'Christian', 'Niels Gazey', 'Niels Gazey', 'Niels Gazey', 2147483647, '2016-10-04 23:23:36', NULL, NULL, NULL, NULL, NULL, NULL, 919, 'Graduated', 'antipolos2.png', '2018-2019'),
('192491620221', 'Crips', 'Hubie', 'Tott', 'Male', '32526 Spenser Plaza', 'ABM', '2001-10-20', 'Chinese', 'Christian', 'Hubie Tott', 'Hubie Tott', 'Hubie Tott', 2147483647, '2016-07-13 07:54:52', NULL, NULL, NULL, NULL, NULL, NULL, 920, 'Graduated', 'antipolos2.png', '2018-2019'),
('192503704215', 'Boydon', 'Christopher', 'Skule', 'Male', '1306 Hazelcrest Terrace', 'GAS', '1999-08-27', 'Malay', 'Catholic', 'Christopher Skule', 'Christopher Skule', 'Christopher Skule', 1913996070, '2015-11-09 09:38:14', NULL, NULL, NULL, NULL, NULL, NULL, 921, 'Graduated', 'antipolos2.png', '2018-2019'),
('192670510568', 'Malpass', 'Alfie', 'Hamberstone', 'Male', '58 Glendale Lane', 'ABM', '2000-12-09', 'Tagalog', 'Christian', 'Alfie Hamberstone', 'Alfie Hamberstone', 'Alfie Hamberstone', 2147483647, '2015-08-09 14:22:36', NULL, NULL, NULL, NULL, NULL, NULL, 922, 'Graduated', 'antipolos2.png', '2018-2019'),
('192806923836', 'Staines', 'Genevieve', 'Gethyn', 'Female', '3 Charing Cross Park', 'HUMMS', '1999-09-22', 'Chinese', 'Catholic', 'Genevieve Gethyn', 'Genevieve Gethyn', 'Genevieve Gethyn', 2005294104, '2016-10-30 14:41:58', NULL, NULL, NULL, NULL, NULL, NULL, 923, 'Graduated', 'antipolos2.png', '2018-2019'),
('192905501823', 'Blowick', 'Kain', 'Chicchetto', 'Male', '70 Loomis Trail', 'HUMMS', '2000-04-12', 'Chinese', 'Catholic', 'Kain Chicchetto', 'Kain Chicchetto', 'Kain Chicchetto', 2147483647, '2016-10-15 23:42:31', NULL, NULL, NULL, NULL, NULL, NULL, 924, 'Graduated', 'antipolos2.png', '2018-2019'),
('193010775391', 'Lynds', 'Rickie', 'Eisikowitz', 'Male', '310 Tony Place', 'ABM', '2001-03-09', 'English', 'Christian', 'Rickie Eisikowitz', 'Rickie Eisikowitz', 'Rickie Eisikowitz', 2147483647, '2016-11-09 18:15:06', NULL, NULL, NULL, NULL, NULL, NULL, 925, 'Graduated', 'antipolos2.png', '2018-2019'),
('193192741114', 'Billanie', 'Edwin', 'Janek', 'Male', '9 Marcy Street', 'ABM', '2001-07-02', 'Malay', 'Christian', 'Edwin Janek', 'Edwin Janek', 'Edwin Janek', 2147483647, '2016-12-20 07:49:28', NULL, NULL, NULL, NULL, NULL, NULL, 926, 'Graduated', 'antipolos2.png', '2018-2019'),
('193231580711', 'Skedgell', 'Burgess', 'O\'Hare', 'Male', '4 Weeping Birch Alley', 'GAS', '2001-08-08', 'English', 'Christian', 'Burgess O\'Hare', 'Burgess O\'Hare', 'Burgess O\'Hare', 2147483647, '2016-10-09 17:01:43', NULL, NULL, NULL, NULL, NULL, NULL, 927, 'Graduated', 'antipolos2.png', '2018-2019'),
('193340786933', 'Kremer', 'Leicester', 'Ockland', 'Male', '54 Mockingbird Trail', 'GAS', '2000-04-08', 'Filipino', 'Christian', 'Leicester Ockland', 'Leicester Ockland', 'Leicester Ockland', 2147483647, '2016-05-19 16:32:44', NULL, NULL, NULL, NULL, NULL, NULL, 928, 'Graduated', 'antipolos2.png', '2018-2019'),
('193458875408', 'Borg-Bartolo', 'Rahel', 'Clowney', 'Female', '074 Huxley Park', 'STEM', '1999-12-07', 'Chinese', 'Catholic', 'Rahel Clowney', 'Rahel Clowney', 'Rahel Clowney', 2147483647, '2015-02-10 08:11:53', NULL, NULL, NULL, NULL, NULL, NULL, 929, 'Graduated', 'antipolos2.png', '2018-2019'),
('193458924920', 'Hardcastle', 'Leo', 'Cunniff', 'Male', '4819 Garrison Park', 'STEM', '2001-01-22', 'Malay', 'Christian', 'Leo Cunniff', 'Leo Cunniff', 'Leo Cunniff', 2147483647, '2016-07-06 17:42:02', NULL, NULL, NULL, NULL, NULL, NULL, 930, 'Graduated', 'antipolos2.png', '2018-2019'),
('193558072594', 'Slocom', 'Edmon', 'Schoular', 'Male', '9572 Vidon Place', 'STEM', '2001-09-20', 'Tagalog', 'Catholic', 'Edmon Schoular', 'Edmon Schoular', 'Edmon Schoular', 2147483647, '2016-09-20 11:00:02', NULL, NULL, NULL, NULL, NULL, NULL, 931, 'Graduated', 'antipolos2.png', '2018-2019'),
('193640485328', 'Arrault', 'Niles', 'Jeannesson', 'Male', '29 Bultman Hill', 'GAS', '2001-05-02', 'English', 'Christian', 'Niles Jeannesson', 'Niles Jeannesson', 'Niles Jeannesson', 2147483647, '2016-08-28 14:02:41', NULL, NULL, NULL, NULL, NULL, NULL, 932, 'Graduated', 'antipolos2.png', '2018-2019'),
('193868442200', 'Gillio', 'Christel', 'Regan', 'Female', '910 Paget Hill', 'GAS', '2002-01-27', 'Tagalog', 'Christian', 'Christel Regan', 'Christel Regan', 'Christel Regan', 2147483647, '2015-03-24 18:55:41', NULL, NULL, NULL, NULL, NULL, NULL, 933, 'Graduated', 'antipolos2.png', '2018-2019'),
('194049328372', 'Seywood', 'Laughton', 'Adamczyk', 'Male', '042 Lotheville Lane', 'STEM', '2000-05-18', 'Chinese', 'Catholic', 'Laughton Adamczyk', 'Laughton Adamczyk', 'Laughton Adamczyk', 2147483647, '2016-03-23 07:26:04', NULL, NULL, NULL, NULL, NULL, NULL, 934, 'Graduated', 'antipolos2.png', '2018-2019'),
('194058525440', 'Soaper', 'Roderich', 'Rantoul', 'Male', '7211 Lyons Road', 'ABM', '2001-07-22', 'Filipino', 'Catholic', 'Roderich Rantoul', 'Roderich Rantoul', 'Roderich Rantoul', 2147483647, '2015-03-15 19:40:22', NULL, NULL, NULL, NULL, NULL, NULL, 935, 'Graduated', 'antipolos2.png', '2018-2019'),
('194143769524', 'Minshaw', 'Christan', 'McGinnell', 'Female', '5986 Eagan Hill', 'STEM', '2000-08-03', 'Tagalog', 'Christian', 'Christan McGinnell', 'Christan McGinnell', 'Christan McGinnell', 2147483647, '2017-01-11 22:38:46', NULL, NULL, NULL, NULL, NULL, NULL, 936, 'Graduated', 'antipolos2.png', '2018-2019'),
('194224827544', 'Fridaye', 'Lesli', 'Ruberti', 'Female', '25654 Straubel Trail', 'HUMMS', '1999-08-05', 'Tagalog', 'Catholic', 'Lesli Ruberti', 'Lesli Ruberti', 'Lesli Ruberti', 2147483647, '2016-08-12 23:55:09', NULL, NULL, NULL, NULL, NULL, NULL, 937, 'Graduated', 'antipolos2.png', '2018-2019'),
('194285607950', 'Srawley', 'Biddy', 'Gouldthorp', 'Female', '8352 Esker Trail', 'HUMMS', '1999-06-24', 'Malay', 'Christian', 'Biddy Gouldthorp', 'Biddy Gouldthorp', 'Biddy Gouldthorp', 2147483647, '2017-01-16 14:36:41', NULL, NULL, NULL, NULL, NULL, NULL, 938, 'Graduated', 'antipolos2.png', '2018-2019'),
('194423859883', 'Trew', 'Dix', 'David', 'Female', '53 Coleman Center', 'STEM', '2000-01-11', 'Tagalog', 'Christian', 'Dix David', 'Dix David', 'Dix David', 2147483647, '2015-09-14 02:35:29', NULL, NULL, NULL, NULL, NULL, NULL, 939, 'Graduated', 'antipolos2.png', '2018-2019'),
('194527491313', 'Strettle', 'Kristal', 'Brayne', 'Female', '216 Springs Parkway', 'HUMMS', '2000-05-03', 'Chinese', 'Catholic', 'Kristal Brayne', 'Kristal Brayne', 'Kristal Brayne', 2147483647, '2016-01-19 11:26:04', NULL, NULL, NULL, NULL, NULL, NULL, 940, 'Graduated', 'antipolos2.png', '2018-2019'),
('194620144255', 'McMarquis', 'Romola', 'Beckerleg', 'Female', '57 Commercial Center', 'HUMMS', '2001-09-13', 'English', 'Catholic', 'Romola Beckerleg', 'Romola Beckerleg', 'Romola Beckerleg', 1281000598, '2016-06-14 22:18:43', NULL, NULL, NULL, NULL, NULL, NULL, 941, 'Graduated', 'antipolos2.png', '2018-2019'),
('194649696870', 'Gronav', 'Annelise', 'MacKenney', 'Female', '28 Fallview Terrace', 'STEM', '2001-12-14', 'Malay', 'Catholic', 'Annelise MacKenney', 'Annelise MacKenney', 'Annelise MacKenney', 2147483647, '2016-05-04 00:24:31', NULL, NULL, NULL, NULL, NULL, NULL, 942, 'Graduated', 'antipolos2.png', '2018-2019'),
('194668184282', 'Tadman', 'Crawford', 'Newsham', 'Male', '24731 Namekagon Crossing', 'GAS', '2001-01-29', 'Tagalog', 'Christian', 'Crawford Newsham', 'Crawford Newsham', 'Crawford Newsham', 2147483647, '2016-08-13 06:34:14', NULL, NULL, NULL, NULL, NULL, NULL, 943, 'Graduated', 'antipolos2.png', '2018-2019'),
('194738211757', 'Scrowby', 'Chane', 'Hyman', 'Male', '56 Maywood Hill', 'STEM', '1999-04-20', 'Malay', 'Christian', 'Chane Hyman', 'Chane Hyman', 'Chane Hyman', 2147483647, '2015-11-17 15:22:22', NULL, NULL, NULL, NULL, NULL, NULL, 944, 'Graduated', 'antipolos2.png', '2018-2019'),
('194749423999', 'Witheridge', 'Herminia', 'Hunday', 'Female', '916 Hintze Center', 'GAS', '2001-05-14', 'Chinese', 'Catholic', 'Herminia Hunday', 'Herminia Hunday', 'Herminia Hunday', 1277630676, '2016-03-20 10:04:39', NULL, NULL, NULL, NULL, NULL, NULL, 945, 'Graduated', 'antipolos2.png', '2018-2019'),
('194848975570', 'Brunn', 'Tommy', 'Shalloe', 'Male', '770 Harbort Hill', 'ABM', '1999-06-29', 'Tagalog', 'Catholic', 'Tommy Shalloe', 'Tommy Shalloe', 'Tommy Shalloe', 2147483647, '2016-02-03 16:04:01', NULL, NULL, NULL, NULL, NULL, NULL, 946, 'Graduated', 'antipolos2.png', '2018-2019'),
('195014397147', 'Gosnay', 'Chariot', 'Bigland', 'Male', '89688 Wayridge Road', 'GAS', '1999-08-16', 'Tagalog', 'Christian', 'Chariot Bigland', 'Chariot Bigland', 'Chariot Bigland', 2147483647, '2015-11-06 10:36:08', NULL, NULL, NULL, NULL, NULL, NULL, 947, 'Graduated', 'antipolos2.png', '2018-2019'),
('195073464896', 'Ianinotti', 'Caitlin', 'Riddles', 'Female', '979 Blaine Center', 'GAS', '2001-03-25', 'Chinese', 'Christian', 'Caitlin Riddles', 'Caitlin Riddles', 'Caitlin Riddles', 2147483647, '2015-03-12 23:21:54', NULL, NULL, NULL, NULL, NULL, NULL, 948, 'Graduated', 'antipolos2.png', '2018-2019'),
('195107916691', 'Ballsdon', 'Cordi', 'Tupling', 'Female', '37 Bayside Crossing', 'GAS', '2000-02-03', 'Filipino', 'Catholic', 'Cordi Tupling', 'Cordi Tupling', 'Cordi Tupling', 2147483647, '2016-07-09 15:15:57', NULL, NULL, NULL, NULL, NULL, NULL, 949, 'Graduated', 'antipolos2.png', '2018-2019'),
('195248590020', 'Ingold', 'Leia', 'Frissell', 'Female', '36 Hintze Park', 'GAS', '2001-10-02', 'Malay', 'Catholic', 'Leia Frissell', 'Leia Frissell', 'Leia Frissell', 1261695992, '2015-12-11 01:48:04', NULL, NULL, NULL, NULL, NULL, NULL, 950, 'Graduated', 'antipolos2.png', '2018-2019'),
('195445390802', 'Bodicam', 'Smith', 'Ishak', 'Male', '9577 Heath Plaza', 'GAS', '2000-07-03', 'Malay', 'Christian', 'Smith Ishak', 'Smith Ishak', 'Smith Ishak', 2147483647, '2016-06-15 12:45:27', NULL, NULL, NULL, NULL, NULL, NULL, 951, 'Graduated', 'antipolos2.png', '2018-2019'),
('195460638182', 'Washtell', 'Michael', 'Kaine', 'Male', '03 Buell Park', 'GAS', '2000-12-15', 'Chinese', 'Christian', 'Michael Kaine', 'Michael Kaine', 'Michael Kaine', 2147483647, '2016-07-05 01:07:55', NULL, NULL, NULL, NULL, NULL, NULL, 952, 'Graduated', 'antipolos2.png', '2018-2019'),
('195724739149', 'Turfrey', 'Alleen', 'Cornbill', 'Female', '81982 Hintze Crossing', 'STEM', '2000-11-17', 'Malay', 'Christian', 'Alleen Cornbill', 'Alleen Cornbill', 'Alleen Cornbill', 2147483647, '2015-10-13 02:41:41', NULL, NULL, NULL, NULL, NULL, NULL, 953, 'Graduated', 'antipolos2.png', '2018-2019'),
('195735303809', 'Iban', 'Darline', 'O\'Ruane', 'Female', '96570 Rutledge Parkway', 'GAS', '2001-08-29', 'English', 'Christian', 'Darline O\'Ruane', 'Darline O\'Ruane', 'Darline O\'Ruane', 2147483647, '2016-07-09 00:50:07', NULL, NULL, NULL, NULL, NULL, NULL, 954, 'Graduated', 'antipolos2.png', '2018-2019'),
('195846915886', 'Andrei', 'Vern', 'Willoughby', 'Male', '1861 Daystar Street', 'HUMMS', '1999-08-31', 'Filipino', 'Catholic', 'Vern Willoughby', 'Vern Willoughby', 'Vern Willoughby', 2147483647, '2016-07-02 16:30:08', NULL, NULL, NULL, NULL, NULL, NULL, 955, 'Graduated', 'antipolos2.png', '2018-2019'),
('196138935243', 'Cavey', 'Salaidh', 'Moorcroft', 'Female', '5602 Forest Trail', 'ABM', '2000-01-14', 'English', 'Christian', 'Salaidh Moorcroft', 'Salaidh Moorcroft', 'Salaidh Moorcroft', 2147483647, '2016-05-04 12:24:58', NULL, NULL, NULL, NULL, NULL, NULL, 956, 'Graduated', 'antipolos2.png', '2018-2019'),
('196162179230', 'Bruni', 'Marmaduke', 'Ertel', 'Male', '010 Gale Parkway', 'STEM', '2000-10-20', 'Filipino', 'Catholic', 'Marmaduke Ertel', 'Marmaduke Ertel', 'Marmaduke Ertel', 2147483647, '2016-11-12 05:46:06', NULL, NULL, NULL, NULL, NULL, NULL, 957, 'Graduated', 'antipolos2.png', '2018-2019'),
('196190314406', 'Bernhardsson', 'Joanne', 'Wellbelove', 'Female', '461 Laurel Plaza', 'ABM', '1999-05-01', 'Tagalog', 'Christian', 'Joanne Wellbelove', 'Joanne Wellbelove', 'Joanne Wellbelove', 2147483647, '2016-03-04 07:03:54', NULL, NULL, NULL, NULL, NULL, NULL, 958, 'Graduated', 'antipolos2.png', '2018-2019'),
('196196094713', 'Silvester', 'Renault', 'Piletic', 'Male', '40 Northview Circle', 'HUMMS', '2000-01-09', 'Filipino', 'Catholic', 'Renault Piletic', 'Renault Piletic', 'Renault Piletic', 2147483647, '2016-11-01 14:17:13', NULL, NULL, NULL, NULL, NULL, NULL, 959, 'Graduated', 'antipolos2.png', '2018-2019'),
('196329234080', 'Bradborne', 'Ollie', 'Biaggetti', 'Female', '08434 Marcy Road', 'STEM', '1999-09-11', 'Chinese', 'Christian', 'Ollie Biaggetti', 'Ollie Biaggetti', 'Ollie Biaggetti', 2147483647, '2016-09-03 01:14:10', NULL, NULL, NULL, NULL, NULL, NULL, 960, 'Graduated', 'antipolos2.png', '2018-2019'),
('196477937516', 'Matuschek', 'Lou', 'Morling', 'Male', '61 Darwin Avenue', 'HUMMS', '2001-09-05', 'Filipino', 'Catholic', 'Lou Morling', 'Lou Morling', 'Lou Morling', 2147483647, '2015-05-29 15:37:32', NULL, NULL, NULL, NULL, NULL, NULL, 961, 'Graduated', 'antipolos2.png', '2018-2019'),
('196494123492', 'Schoffler', 'Lauritz', 'O\' Clovan', 'Male', '77 Stoughton Point', 'STEM', '1999-09-22', 'Malay', 'Catholic', 'Lauritz O\' Clovan', 'Lauritz O\' Clovan', 'Lauritz O\' Clovan', 2147483647, '2016-06-26 23:43:26', NULL, NULL, NULL, NULL, NULL, NULL, 962, 'Graduated', 'antipolos2.png', '2018-2019'),
('196509964168', 'Rozet', 'Krystalle', 'Whoolehan', 'Female', '9 Stephen Trail', 'GAS', '2000-05-05', 'Tagalog', 'Catholic', 'Krystalle Whoolehan', 'Krystalle Whoolehan', 'Krystalle Whoolehan', 2147483647, '2015-10-13 15:38:00', NULL, NULL, NULL, NULL, NULL, NULL, 963, 'Graduated', 'antipolos2.png', '2018-2019'),
('196585073178', 'Gourlay', 'Sergei', 'Albasiny', 'Male', '6452 Darwin Point', 'HUMMS', '2000-03-10', 'Tagalog', 'Catholic', 'Sergei Albasiny', 'Sergei Albasiny', 'Sergei Albasiny', 2147483647, '2016-04-20 23:01:40', NULL, NULL, NULL, NULL, NULL, NULL, 964, 'Graduated', 'antipolos2.png', '2018-2019'),
('196600773999', 'Loveguard', 'Ketti', 'Klink', 'Female', '7 Atwood Trail', 'HUMMS', '2000-04-06', 'Malay', 'Catholic', 'Ketti Klink', 'Ketti Klink', 'Ketti Klink', 2147483647, '2016-06-02 08:18:20', NULL, NULL, NULL, NULL, NULL, NULL, 965, 'Graduated', 'antipolos2.png', '2018-2019'),
('196781614069', 'Brotherwood', 'Brock', 'Littlewood', 'Male', '3 Cardinal Pass', 'HUMMS', '1999-06-08', 'Tagalog', 'Christian', 'Brock Littlewood', 'Brock Littlewood', 'Brock Littlewood', 2147483647, '2016-08-06 01:42:14', NULL, NULL, NULL, NULL, NULL, NULL, 966, 'Graduated', 'antipolos2.png', '2018-2019'),
('196822281770', 'Domeny', 'Berkley', 'Swatridge', 'Male', '8405 Kipling Point', 'HUMMS', '2002-01-06', 'Tagalog', 'Catholic', 'Berkley Swatridge', 'Berkley Swatridge', 'Berkley Swatridge', 2147483647, '2016-03-18 21:54:42', NULL, NULL, NULL, NULL, NULL, NULL, 967, 'Graduated', 'antipolos2.png', '2018-2019'),
('196875823952', 'Pikesley', 'Donnell', 'Paintain', 'Male', '3 Pearson Place', 'GAS', '1999-05-02', 'Filipino', 'Catholic', 'Donnell Paintain', 'Donnell Paintain', 'Donnell Paintain', 2147483647, '2016-12-11 05:03:25', NULL, NULL, NULL, NULL, NULL, NULL, 968, 'Graduated', 'antipolos2.png', '2018-2019'),
('196934307273', 'Rockingham', 'Lucine', 'Gallety', 'Female', '1265 Norway Maple Place', 'ABM', '1999-01-29', 'Tagalog', 'Catholic', 'Lucine Gallety', 'Lucine Gallety', 'Lucine Gallety', 2147483647, '2015-03-06 17:11:38', NULL, NULL, NULL, NULL, NULL, NULL, 969, 'Graduated', 'antipolos2.png', '2018-2019'),
('197248141995', 'Bicksteth', 'Mile', 'Roze', 'Male', '26 Garrison Court', 'STEM', '2001-09-25', 'Chinese', 'Catholic', 'Mile Roze', 'Mile Roze', 'Mile Roze', 1992861931, '2015-05-16 15:09:11', NULL, NULL, NULL, NULL, NULL, NULL, 970, 'Graduated', 'antipolos2.png', '2018-2019'),
('197297663259', 'Badger', 'Adrianna', 'Lucio', 'Female', '9 Roth Drive', 'GAS', '2001-06-15', 'Filipino', 'Christian', 'Adrianna Lucio', 'Adrianna Lucio', 'Adrianna Lucio', 2147483647, '2016-03-30 18:17:56', NULL, NULL, NULL, NULL, NULL, NULL, 971, 'Graduated', 'antipolos2.png', '2018-2019'),
('197368702970', 'McGoogan', 'Brian', 'Hallaways', 'Male', '970 Pierstorff Plaza', 'GAS', '1999-11-23', 'Filipino', 'Catholic', 'Brian Hallaways', 'Brian Hallaways', 'Brian Hallaways', 2147483647, '2015-08-01 02:09:59', NULL, NULL, NULL, NULL, NULL, NULL, 972, 'Graduated', 'antipolos2.png', '2018-2019'),
('197458084467', 'Broscombe', 'Arther', 'Ruddock', 'Male', '28701 Scott Way', 'STEM', '1999-06-28', 'English', 'Catholic', 'Arther Ruddock', 'Arther Ruddock', 'Arther Ruddock', 2147483647, '2016-08-17 22:29:56', NULL, NULL, NULL, NULL, NULL, NULL, 973, 'Graduated', 'antipolos2.png', '2018-2019'),
('197583793097', 'Luis', 'Ariela', 'Toll', 'Female', '642 Judy Place', 'ABM', '1999-04-27', 'Chinese', 'Christian', 'Ariela Toll', 'Ariela Toll', 'Ariela Toll', 1151822889, '2015-12-14 20:58:33', NULL, NULL, NULL, NULL, NULL, NULL, 974, 'Graduated', 'antipolos2.png', '2018-2019'),
('197609680656', 'Fine', 'Abbe', 'Garrard', 'Male', '93 Warrior Terrace', 'ABM', '2000-07-25', 'Malay', 'Catholic', 'Abbe Garrard', 'Abbe Garrard', 'Abbe Garrard', 2147483647, '2017-01-14 06:46:47', NULL, NULL, NULL, NULL, NULL, NULL, 975, 'Graduated', 'antipolos2.png', '2018-2019'),
('197610362166', 'Drepp', 'Guillermo', 'Law', 'Male', '5 Drewry Circle', 'ABM', '1999-12-12', 'Chinese', 'Catholic', 'Guillermo Law', 'Guillermo Law', 'Guillermo Law', 2147483647, '2015-10-01 19:51:08', NULL, NULL, NULL, NULL, NULL, NULL, 976, 'Graduated', 'antipolos2.png', '2018-2019'),
('197650772353', 'Sumpter', 'Jan', 'Sorby', 'Female', '96 Mockingbird Avenue', 'STEM', '2001-09-02', 'Filipino', 'Christian', 'Jan Sorby', 'Jan Sorby', 'Jan Sorby', 2147483647, '2015-06-20 00:58:29', NULL, NULL, NULL, NULL, NULL, NULL, 977, 'Graduated', 'antipolos2.png', '2018-2019'),
('197671749993', 'Winridge', 'Rockey', 'Eich', 'Male', '14903 Algoma Crossing', 'GAS', '2000-12-30', 'Filipino', 'Catholic', 'Rockey Eich', 'Rockey Eich', 'Rockey Eich', 2147483647, '2016-12-18 11:11:33', NULL, NULL, NULL, NULL, NULL, NULL, 978, 'Graduated', 'antipolos2.png', '2018-2019'),
('197695781059', 'Van Salzberger', 'Fawn', 'Eardley', 'Female', '976 Bluestem Pass', 'STEM', '2001-11-26', 'Filipino', 'Catholic', 'Fawn Eardley', 'Fawn Eardley', 'Fawn Eardley', 2147483647, '2015-12-27 07:35:37', NULL, NULL, NULL, NULL, NULL, NULL, 979, 'Graduated', 'antipolos2.png', '2018-2019'),
('197786733764', 'Ianetti', 'Miner', 'Galvan', 'Male', '7538 Jenifer Hill', 'ABM', '2000-08-03', 'Malay', 'Catholic', 'Miner Galvan', 'Miner Galvan', 'Miner Galvan', 2147483647, '2015-10-07 16:52:37', NULL, NULL, NULL, NULL, NULL, NULL, 980, 'Graduated', 'antipolos2.png', '2018-2019'),
('198172187199', 'Ferreres', 'Inger', 'Romagnosi', 'Female', '5499 Larry Junction', 'STEM', '2000-03-24', 'Tagalog', 'Catholic', 'Inger Romagnosi', 'Inger Romagnosi', 'Inger Romagnosi', 2147483647, '2015-09-13 06:47:55', NULL, NULL, NULL, NULL, NULL, NULL, 981, 'Graduated', 'antipolos2.png', '2018-2019'),
('198315470979', 'Suddock', 'Nicky', 'Blitz', 'Female', '07 Messerschmidt Way', 'HUMMS', '2000-08-24', 'Malay', 'Catholic', 'Nicky Blitz', 'Nicky Blitz', 'Nicky Blitz', 2147483647, '2016-02-09 08:53:31', NULL, NULL, NULL, NULL, NULL, NULL, 982, 'Graduated', 'antipolos2.png', '2018-2019'),
('198325701669', 'Elion', 'Marty', 'Geater', 'Male', '05 Stoughton Way', 'ABM', '2001-03-05', 'Filipino', 'Catholic', 'Marty Geater', 'Marty Geater', 'Marty Geater', 2147483647, '2015-04-04 04:37:18', NULL, NULL, NULL, NULL, NULL, NULL, 983, 'Graduated', 'antipolos2.png', '2018-2019'),
('198533995472', 'Lightoller', 'Dalston', 'Cunliffe', 'Male', '53242 Sugar Park', 'STEM', '1999-02-01', 'Malay', 'Christian', 'Dalston Cunliffe', 'Dalston Cunliffe', 'Dalston Cunliffe', 2147483647, '2015-05-01 00:31:09', NULL, NULL, NULL, NULL, NULL, NULL, 984, 'Graduated', 'antipolos2.png', '2018-2019'),
('198624430164', 'Brammer', 'Timothy', 'Barras', 'Male', '3 Petterle Street', 'STEM', '2002-01-12', 'English', 'Catholic', 'Timothy Barras', 'Timothy Barras', 'Timothy Barras', 2147483647, '2016-11-21 03:00:08', NULL, NULL, NULL, NULL, NULL, NULL, 985, 'Graduated', 'antipolos2.png', '2018-2019'),
('198797788948', 'Simnett', 'Eydie', 'Vost', 'Female', '49 Quincy Center', 'HUMMS', '1999-10-05', 'Tagalog', 'Catholic', 'Eydie Vost', 'Eydie Vost', 'Eydie Vost', 2147483647, '2016-04-07 13:05:57', NULL, NULL, NULL, NULL, NULL, NULL, 986, 'Graduated', 'antipolos2.png', '2018-2019'),
('198813971281', 'Angood', 'Randie', 'Binning', 'Male', '492 Towne Center', 'HUMMS', '2001-07-17', 'Tagalog', 'Christian', 'Randie Binning', 'Randie Binning', 'Randie Binning', 2147483647, '2016-02-20 20:54:19', NULL, NULL, NULL, NULL, NULL, NULL, 987, 'Graduated', 'antipolos2.png', '2018-2019'),
('199144902153', 'Lapish', 'Melisent', 'Winch', 'Female', '652 Oriole Trail', 'HUMMS', '1999-06-20', 'Chinese', 'Catholic', 'Melisent Winch', 'Melisent Winch', 'Melisent Winch', 2147483647, '2016-01-03 22:57:59', NULL, NULL, NULL, NULL, NULL, NULL, 988, 'Graduated', 'antipolos2.png', '2018-2019'),
('199193773344', 'Circuit', 'Violette', 'Lashley', 'Female', '0 Hudson Pass', 'HUMMS', '1999-02-06', 'Filipino', 'Christian', 'Violette Lashley', 'Violette Lashley', 'Violette Lashley', 2147483647, '2017-01-10 05:44:08', NULL, NULL, NULL, NULL, NULL, NULL, 989, 'Graduated', 'antipolos2.png', '2018-2019'),
('199293458412', 'Athersmith', 'Alan', 'Exley', 'Male', '113 Corscot Lane', 'HUMMS', '2002-01-11', 'Chinese', 'Catholic', 'Alan Exley', 'Alan Exley', 'Alan Exley', 1484178106, '2015-11-25 19:10:15', NULL, NULL, NULL, NULL, NULL, NULL, 990, 'Graduated', 'antipolos2.png', '2018-2019'),
('199316927331', 'Grayston', 'Fanchon', 'Philpault', 'Female', '4099 Maple Wood Street', 'HUMMS', '2001-07-27', 'English', 'Catholic', 'Fanchon Philpault', 'Fanchon Philpault', 'Fanchon Philpault', 2147483647, '2015-10-17 05:03:31', NULL, NULL, NULL, NULL, NULL, NULL, 991, 'Graduated', 'antipolos2.png', '2018-2019'),
('199422384507', 'Taunton', 'Carmelia', 'Dorbon', 'Female', '9 Merrick Way', 'ABM', '1999-09-02', 'Chinese', 'Christian', 'Carmelia Dorbon', 'Carmelia Dorbon', 'Carmelia Dorbon', 2147483647, '2016-06-29 11:43:47', NULL, NULL, NULL, NULL, NULL, NULL, 992, 'Graduated', 'antipolos2.png', '2018-2019'),
('199446271123', 'Aburrow', 'Crystal', 'Tingcomb', 'Female', '0414 Roxbury Road', 'ABM', '2001-04-20', 'English', 'Christian', 'Crystal Tingcomb', 'Crystal Tingcomb', 'Crystal Tingcomb', 2147483647, '2015-04-14 14:32:55', NULL, NULL, NULL, NULL, NULL, NULL, 993, 'Graduated', 'antipolos2.png', '2018-2019'),
('199580040963', 'Yuille', 'Monica', 'Reightley', 'Female', '3 Mandrake Trail', 'ABM', '2001-07-01', 'Chinese', 'Christian', 'Monica Reightley', 'Monica Reightley', 'Monica Reightley', 2147483647, '2016-04-13 10:08:59', NULL, NULL, NULL, NULL, NULL, NULL, 994, 'Graduated', 'antipolos2.png', '2018-2019'),
('199605927729', 'Vernau', 'Malena', 'Fernant', 'Female', '9682 Londonderry Alley', 'GAS', '1999-12-01', 'Tagalog', 'Catholic', 'Malena Fernant', 'Malena Fernant', 'Malena Fernant', 2147483647, '2015-06-28 09:31:02', NULL, NULL, NULL, NULL, NULL, NULL, 995, 'Graduated', 'antipolos2.png', '2018-2019'),
('199635822198', 'Canas', 'Queenie', 'Ormerod', 'Female', '69091 Rusk Way', 'HUMMS', '2001-01-14', 'Malay', 'Christian', 'Queenie Ormerod', 'Queenie Ormerod', 'Queenie Ormerod', 1936471501, '2015-07-09 05:21:07', NULL, NULL, NULL, NULL, NULL, NULL, 996, 'Graduated', 'antipolos2.png', '2018-2019');
INSERT INTO `grads` (`adhaar_no`, `lname`, `fname`, `learner_midname`, `gender`, `address`, `strand`, `dob`, `mother_tongue`, `religion`, `father_name`, `mother_name`, `guardian_name`, `mobile_no`, `created_at`, `updated_at`, `status`, `alternate_mobile_no`, `email_id`, `extra_note`, `roll_no`, `stu_id`, `grade`, `photo`, `class`) VALUES
('199697568001', 'Steinhammer', 'Shel', 'Jansens', 'Female', '619 Fieldstone Point', 'ABM', '2000-11-14', 'Malay', 'Catholic', 'Shel Jansens', 'Shel Jansens', 'Shel Jansens', 2147483647, '2016-06-20 08:46:00', NULL, NULL, NULL, NULL, NULL, NULL, 997, 'Graduated', 'antipolos2.png', '2018-2019'),
('199794583853', 'Medina', 'Harry', 'Siemens', 'Male', '9 Milwaukee Circle', 'ABM', '2000-10-30', 'Tagalog', 'Catholic', 'Harry Siemens', 'Harry Siemens', 'Harry Siemens', 2147483647, '2016-04-03 01:39:32', NULL, NULL, NULL, NULL, NULL, NULL, 998, 'Graduated', 'antipolos2.png', '2018-2019'),
('199898845306', 'Patience', 'Jordan', 'Fairholme', 'Male', '53 Hauk Pass', 'HUMMS', '2001-08-10', 'Filipino', 'Catholic', 'Jordan Fairholme', 'Jordan Fairholme', 'Jordan Fairholme', 1165924815, '2015-02-20 21:43:32', NULL, NULL, NULL, NULL, NULL, NULL, 999, 'Graduated', 'antipolos2.png', '2018-2019'),
('199953692411', 'Doblin', 'Elton', 'Kettlesing', 'Male', '9 Farwell Way', 'HUMMS', '1999-12-02', 'English', 'Catholic', 'Elton Kettlesing', 'Elton Kettlesing', 'Elton Kettlesing', 2147483647, '2016-06-11 09:42:17', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 'Graduated', 'antipolos2.png', '2018-2019');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_22_072622_create_students_table', 1),
(4, '2019_03_22_125934_create_student_attendences_table', 2),
(5, '2019_04_03_172332_create_teachers_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `result_card`
--

CREATE TABLE `result_card` (
  `result_id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `result_marks` int(11) NOT NULL DEFAULT 0,
  `term_month` varchar(255) NOT NULL,
  `add_result_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_card`
--

INSERT INTO `result_card` (`result_id`, `stu_id`, `subject_id`, `result_marks`, `term_month`, `add_result_time`) VALUES
(1, 5, 22, 150, '03-2019', '2019-05-18 19:45:41'),
(2, 7, 23, 80, '07-2019', '2019-07-04 08:22:50'),
(3, 9, 26, 90, '07-2019', '2019-07-08 07:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `salary_card`
--

CREATE TABLE `salary_card` (
  `salary_id` int(11) NOT NULL,
  `teach_id` int(11) NOT NULL,
  `deposite_salary_amount` varchar(255) NOT NULL,
  `deposite_month` varchar(255) NOT NULL,
  `deposite_by` varchar(255) NOT NULL,
  `balance_salary` varchar(255) NOT NULL,
  `deposite_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary_card`
--

INSERT INTO `salary_card` (`salary_id`, `teach_id`, `deposite_salary_amount`, `deposite_month`, `deposite_by`, `balance_salary`, `deposite_time`) VALUES
(1, 1, '5000', '03-2019', '0', '0', '2019-04-08 03:25:52'),
(2, 1, '100', '04-2019', '0', '4900', '2019-04-29 13:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `adhaar_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `learner_midname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `strand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mother_tongue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `stu_id` int(11) NOT NULL,
  `class` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT 'HUMS 1201-03',
  `Status` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT 'notexited',
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT 'antipolos2.png',
  `alternate_mobile_no` int(250) DEFAULT NULL,
  `email_id` int(250) DEFAULT NULL,
  `extra_note` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roll_no` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`adhaar_no`, `fname`, `lname`, `learner_midname`, `grade`, `gender`, `address`, `strand`, `dob`, `mother_tongue`, `religion`, `father_name`, `mother_name`, `guardian_name`, `mobile_no`, `created_at`, `updated_at`, `stu_id`, `class`, `Status`, `photo`, `alternate_mobile_no`, `email_id`, `extra_note`, `roll_no`) VALUES
('1411618', 'Carl', 'Muyco', NULL, 'Grade 11', 'male', 'Villanova Subdivision Quezon City', NULL, '0000-00-00', NULL, NULL, 'Ramil Muyco', 'Judy Alma', NULL, 2131233212, '2019-07-16 02:41:37', '2019-07-16 02:41:37', 0, 'ABM 1204-03', 'notexited', 'antipolos2.png', 2147483647, 0, NULL, NULL),
('113378806426', 'Lautie', 'Carina', 'MacClancey', '2', 'Female', '88 Hazelcrest Place', 'ABM', '2004-08-26', 'Chinese', 'Christian', 'Carina MacClancey', 'Carina MacClancey', 'Carina MacClancey', 2147483647, '2017-07-14 16:00:00', NULL, 1, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('123444444442', 'alksjd', 'Han', 'Alford', '1', 'Male', 'alksjdlasdj', 'ABM', '2019-12-31', 'Filipino', 'Roman Catholic', 'alsdjakl', 'Maria De Leon', 'lskdjskl', 23123918, '2019-01-30 15:42:03', NULL, 2, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('123456789000', 'Yoyo', 'Yaya', 'Zeus', '2', 'Female', '22 Pitstop Area, AS', 'HE', '2008-02-28', 'Italian', 'Orthodox Christian', 'Zeus Greece ', 'Nightingale Aleva', '', 423481910, '2018-12-24 15:02:52', NULL, 3, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('123456789002', 'Earheart', 'Amelia', 'Sky', '2', 'Female', 'Apple 124 Street, Sunset Boulevard', 'GAS', '1998-12-09', 'French', 'Jewish', 'Shaun Earheart', 'Linda Earheart', '', 12381812, '2018-12-24 15:21:05', NULL, 4, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('123456789007', 'June', 'Jack', 'Jess', '1', 'Female', '192 Rainbow Road, Manila, Philippines', 'STEM', '2000-06-12', 'Filipino', 'Buddhism', 'Anthony Bosto', 'Sandra Alejandra', '', 2147483647, '2019-01-04 17:04:41', NULL, 5, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('123456789011', 'alksjd', 'Wam', 'Alford', '1', 'Male', '3u42ilkk', 'STEM', '2019-12-31', 'asdlj', 'alskjd', 'lkjl', 'kj', 'lkj', 131231, '2019-01-30 15:27:57', NULL, 6, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('123456789012', 'alksjd', 'Han', 'Alford', '1', 'Male', 'akdj', 'STEM', '2019-12-31', 'Filipino', 'Catholic', 'alsdjakl', 'kjdlaj', '', 3424, '2019-01-30 15:39:40', NULL, 7, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('123456789026', 'Cyrus', 'Miley', 'Ray', '1', 'Female', 'Hollywood Blvd., Quezon City', 'ICT', '2000-02-09', 'English', 'Jewish', 'Mike Cyrus', 'Sierra Ray', '', 2930881, '2019-01-09 09:12:56', NULL, 8, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('123456789044', 'Washington', 'Georgina', 'Alfor', '2', 'Female', '55 Batasan Hills, Quezon City', 'Industrial Arts', '2000-10-09', 'Filipino', 'Iglesia Ni Cristo', 'Alfredo Basigno', 'Teresita De Leon', '', 123988191, '2019-01-09 09:10:06', NULL, 9, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('127871694171', 'Heggman', 'Filippo', 'Jewar', '1', 'Male', '08 Twin Pines Point', 'HUMSS', '2002-05-19', 'Chinese', 'Catholic', 'Filippo Jewar', 'Filippo Jewar', 'Filippo Jewar', 2147483647, '2018-01-15 16:00:00', NULL, 10, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('143823997267', 'Mattin', 'Rodolph', 'Eldered', '1', 'Male', '70 Beilfuss Lane', 'STEM', '2000-11-24', 'Chinese', 'Jewish', 'Rodolph Eldered', 'Rodolph Eldered', 'Rodolph Eldered', 2147483647, '2017-01-12 16:00:00', NULL, 11, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('154946639352', 'Flook', 'Hesther', 'Colebourn', '2', 'Female', '267 Mendota Pass', 'ICT', '2001-10-11', 'Japanese', 'Catholic', 'Hesther Colebourn', 'Hesther Colebourn', 'Hesther Colebourn', 2147483647, '2017-02-09 16:00:00', NULL, 12, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('166902675168', 'Ivimey', 'Gearard', 'Osgarby', '1', 'Male', '1743 Tennyson Point', 'Industrial Arts', '1999-03-02', 'Taiwanese', 'Islam', 'Gearard Osgarby', 'Gearard Osgarby', 'Gearard Osgarby', 2147483647, '2017-01-28 16:00:00', NULL, 13, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('171332800671', 'Thorald', 'Maximilianus', 'MacWhan', '2', 'Male', '85468 Melody Trail', 'ICT', '2001-06-10', 'Spanish', 'Christian', 'Maximilianus MacWhan', 'Maximilianus MacWhan', 'Maximilianus MacWhan', 2147483647, '2017-11-11 16:00:00', NULL, 14, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('188195993983', 'Aldwinckle', 'Virginie', 'Elmhurst', '2', 'Female', '6 Hollow Ridge Crossing', 'GAS', '2000-04-17', 'Mandarin', 'Jewish', 'Virginie Elmhurst', 'Virginie Elmhurst', 'Virginie Elmhurst', 2147483647, '2018-06-30 16:00:00', NULL, 15, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('189178233959', 'Chern', 'Clement', 'Ackerman', '2', 'Male', '92 Atwood Parkway', 'ABM', '2000-11-01', 'Taiwanese', 'Hinduism', 'Clement Ackerman', 'Clement Ackerman', 'Clement Ackerman', 2147483647, '2017-01-28 16:00:00', NULL, 16, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('211751083450', 'Stripling', 'Hester', 'Arr', '2', 'Female', '61 Arapahoe Road', 'HUMSS', '2002-02-13', 'Mandarin', 'Iglesia ni Cristo', 'Hester Arr', 'Hester Arr', 'Hester Arr', 2147483647, '2018-08-13 16:00:00', NULL, 17, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('231131058233', 'Lyenyng', 'Bartlet', 'Chue', '1', 'Male', '99941 Colorado Center', 'STEM', '2000-03-04', 'Japanese', 'Born Again Christian', 'Bartlet Chue', 'Bartlet Chue', 'Bartlet Chue', 2147483647, '2018-12-19 16:00:00', NULL, 18, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('234695049123', 'lkjadss', 'akjsd', 'lkajds', '1', 'Male', 'lkjd', 'Agri-Fish. Arts', '0111-12-09', 'lkjasd', 'kljads', 'laksdj', 'lkjaslkj', 'alksdja', 0, '2019-01-30 15:42:41', NULL, 19, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('252827206092', 'Attoe', 'Terrence', 'Targetter', '2', 'Male', '29943 Hudson Road', 'HE', '2002-10-27', 'English', 'Born Again Christian', 'Terrence Targetter', 'Terrence Targetter', 'Terrence Targetter', 2147483647, '2017-09-08 16:00:00', NULL, 20, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('259447637242', 'Sowthcote', 'Donall', 'Jaumet', '1', 'Male', '0 1st Park', 'HE', '2002-03-12', 'Mandarin', 'Iglesia ni Cristo', 'Donall Jaumet', 'Donall Jaumet', 'Donall Jaumet', 1894922723, '2017-12-08 16:00:00', NULL, 21, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('271752861188', 'Jesteco', 'Dell', 'Canizares', '1', 'Female', '01 Lindbergh Road', 'HE', '2004-12-30', 'Korean', 'Christian', 'Dell Canizares', 'Dell Canizares', 'Dell Canizares', 2147483647, '2018-10-09 16:00:00', NULL, 22, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('290646417070', 'Whenman', 'Yurik', 'Cockran', '1', 'Male', '0675 Pierstorff Avenue', 'Industrial Arts', '2001-06-20', 'Korean', 'Christian', 'Yurik Cockran', 'Yurik Cockran', 'Yurik Cockran', 1353583930, '2018-08-02 16:00:00', NULL, 23, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('291843230833', 'Fasey', 'Amberly', 'Kagan', '1', 'Female', '9627 Forest Dale Pass', 'Industrial Arts', '1999-03-06', 'Japanese', 'Catholic', 'Amberly Kagan', 'Amberly Kagan', 'Amberly Kagan', 2147483647, '2018-06-20 16:00:00', NULL, 24, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('300246186982', 'Bestiman', 'Walt', 'Sorley', '2', 'Male', '7 Morningstar Junction', 'ABM', '2000-09-09', 'Japanese', 'Jewish', 'Walt Sorley', 'Walt Sorley', 'Walt Sorley', 2147483647, '2018-05-24 16:00:00', NULL, 25, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('307288040443', 'Shoobridge', 'Cris', 'Sandhill', '2', 'Male', '3671 Stang Crossing', 'ABM', '2003-01-20', 'Korean', 'Catholic', 'Cris Sandhill', 'Cris Sandhill', 'Cris Sandhill', 2147483647, '2017-09-29 16:00:00', NULL, 26, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('311128990690', 'Franscioni', 'Retha', 'Styant', '2', 'Female', '5412 Hauk Road', 'ABM', '2001-01-21', 'Mandarin', 'Buddhist', 'Retha Styant', 'Retha Styant', 'Retha Styant', 2147483647, '2017-05-25 16:00:00', NULL, 27, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('313385737784', 'Girardetti', 'Maitilde', 'Atcherley', '2', 'Female', '1457 Almo Circle', 'HUMSS', '2001-11-06', 'Thai', 'Hinduism', 'Maitilde Atcherley', 'Maitilde Atcherley', 'Maitilde Atcherley', 2147483647, '2018-08-20 16:00:00', NULL, 28, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('313430922064', 'Tipper', 'Brianne', 'Gilliatt', '2', 'Female', '097 Maryland Crossing', 'HE', '1999-08-22', 'Mandarin', 'Hinduism', 'Brianne Gilliatt', 'Brianne Gilliatt', 'Brianne Gilliatt', 2147483647, '2018-03-31 16:00:00', NULL, 29, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('318952694711', 'Peat', 'Griselda', 'Tuxwell', '1', 'Female', '0100 Ohio Plaza', 'ICT', '2003-10-27', 'Chinese', 'Jewish', 'Griselda Tuxwell', 'Griselda Tuxwell', 'Griselda Tuxwell', 1778102773, '2018-07-04 16:00:00', NULL, 30, 'HUMS 1201-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('324972093275', 'Iapico', 'Reade', 'Sonner', '2', 'Male', '41826 Orin Way', 'Agri-Fish. Arts', '2001-10-20', 'English', 'Jewish', 'Reade Sonner', 'Reade Sonner', 'Reade Sonner', 2104133947, '2017-05-21 16:00:00', NULL, 31, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('329831096215', 'Janes', 'Cob', 'Schott', '2', 'Male', '34 Ludington Street', 'HUMSS', '2002-07-23', 'Filipino', 'Christian', 'Cob Schott', 'Cob Schott', 'Cob Schott', 2147483647, '2018-01-21 16:00:00', NULL, 32, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('331647022802', 'Spinola', 'Andrey', 'Broadwood', '1', 'Male', '637 Helena Place', 'Industrial Arts', '2002-10-14', 'Korean', 'Catholic', 'Andrey Broadwood', 'Andrey Broadwood', 'Andrey Broadwood', 1486290263, '2018-02-24 16:00:00', NULL, 33, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('338944595972', 'Clutram', 'Isa', 'Huckerbe', '1', 'Female', '590 2nd Point', 'ABM', '2001-08-05', 'Filipino', 'Islam', 'Isahella Huckerbe', 'Isahella Huckerbe', 'Isahella Huckerbe', 1332330819, '2017-03-18 16:00:00', NULL, 34, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('304601277249', 'Sleight', 'Wallis', 'Heugh', '2', 'Female', '340 Anniversary Hill', 'ICT', '2003-09-19', 'Spanish', 'Iglesia ni Cristo', 'Wallis Heugh', 'Wallis Heugh', 'Wallis Heugh', 2147483647, '2017-02-10 16:00:00', NULL, 35, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('358096672677', 'Duckham', 'Jobie', 'Teaze', '2', 'Female', '26 Evergreen Plaza', 'HE', '2002-06-11', 'Chinese', 'Christian', 'Jobie Teaze', 'Jobie Teaze', 'Jobie Teaze', 2147483647, '2018-02-27 16:00:00', NULL, 36, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('366117776142', 'Egentan', 'Thorpe', 'Gritsaev', '1', 'Male', '3 Hoard Lane', 'Agri-Fish. Arts', '1999-07-16', 'Taiwanese', 'Islam', 'Thorpe Gritsaev', 'Thorpe Gritsaev', 'Thorpe Gritsaev', 2147483647, '2017-07-19 16:00:00', NULL, 37, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('369358023288', 'Atkin', 'Orsa', 'Hackworth', '1', 'Female', '7279 Emmet Terrace', 'GAS', '2002-12-15', 'Korean', 'Jewish', 'Orsa Hackworth', 'Orsa Hackworth', 'Orsa Hackworth', 2147483647, '2018-01-31 16:00:00', NULL, 38, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('373284333772', 'Peaddie', 'Neala', 'Sea', '2', 'Female', '7 Crownhardt Avenue', 'Agri-Fish. Arts', '2000-10-27', 'Mandarin', 'Hinduism', 'Neala Sea', 'Neala Sea', 'Neala Sea', 2147483647, '2017-11-21 16:00:00', NULL, 39, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('382128502044', 'Longman', 'Sergio', 'Spatig', '1', 'Male', '476 Brown Road', 'ICT', '1999-05-08', 'Chinese', 'Catholic', 'Sergio Spatig', 'Sergio Spatig', 'Sergio Spatig', 2147483647, '2017-08-29 16:00:00', NULL, 40, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('341229848612', 'Huddleston', 'Josephina', 'Ramsey', '1', '', '48709 Sachs Road', 'Industrial Arts', '2000-12-29', 'English', 'Islam', 'Josephina Ramsey', 'Josephina Ramsey', 'Josephina Ramsey', 2147483647, '2017-05-10 16:00:00', NULL, 41, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('383059454945', 'Madelin', 'Rollo', 'Bye', '1', 'Male', '495 Bay Alley', 'HUMSS', '1999-06-21', 'Thai', 'Buddhist', 'Rollo Bye', 'Rollo Bye', 'Rollo Bye', 2147483647, '2018-02-07 16:00:00', NULL, 42, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('388077051806', 'Collinette', 'Bastian', 'Roobottom', '1', 'Male', '38654 Raven Hill', 'Industrial Arts', '2000-09-19', 'Filipino', 'Born Again Christian', 'Bastian Roobottom', 'Bastian Roobottom', 'Bastian Roobottom', 1993697427, '2018-03-17 16:00:00', NULL, 43, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('400778213004', 'Rawlinson', 'Holly', 'Birchenhead', '1', 'Male', '270 Delaware Drive', 'Agri-Fish. Arts', '2004-04-24', 'Korean', 'Islam', 'Holly Birchenhead', 'Holly Birchenhead', 'Holly Birchenhead', 2143369283, '2018-08-16 16:00:00', NULL, 44, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('406104953923', 'Renner', 'Alix', 'Batistelli', '2', 'Male', '36 Corben Drive', 'HE', '2002-12-05', 'English', 'Islam', 'Alix Batistelli', 'Alix Batistelli', 'Alix Batistelli', 2147483647, '2018-05-23 16:00:00', NULL, 45, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('408486634271', 'Sparrow', 'Leela', 'Aleksahkin', '1', 'Female', '861 Pawling Terrace', 'Agri-Fish. Arts', '2002-10-02', 'Taiwanese', 'Hinduism', 'Leela Aleksahkin', 'Leela Aleksahkin', 'Leela Aleksahkin', 1649027136, '2017-03-22 16:00:00', NULL, 46, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('418049418637', 'Melson', 'Wake', 'O\'Hannen', '1', 'Male', '6 Muir Center', 'STEM', '2001-07-13', 'Mandarin', 'Islam', 'Wake O\'Hannen', 'Wake O\'Hannen', 'Wake O\'Hannen', 2147483647, '2018-01-22 16:00:00', NULL, 47, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('424242456074', 'Beacock', 'Conrade', 'Gouthier', '2', 'Male', '01168 Anthes Center', 'HE', '2003-07-01', 'Thai', 'Christian', 'Conrade Gouthier', 'Conrade Gouthier', 'Conrade Gouthier', 2147483647, '2017-12-11 16:00:00', NULL, 48, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('427648666427', 'Debill', 'Jennica', 'Crosthwaite', '2', 'Female', '88 Beilfuss Avenue', 'Agri-Fish. Arts', '2002-08-23', 'Mandarin', 'Christian', 'Jennica Crosthwaite', 'Jennica Crosthwaite', 'Jennica Crosthwaite', 2147483647, '2018-09-02 16:00:00', NULL, 49, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('431321113725', 'Butler', 'Nerissa', 'O\'Regan', '2', 'Female', '0817 Blue Bill Park Avenue', 'GAS', '2000-08-28', 'Mandarin', 'Islam', 'Nerissa O\'Regan', 'Nerissa O\'Regan', 'Nerissa O\'Regan', 2147483647, '2017-02-26 16:00:00', NULL, 50, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('431440409738', 'L\'Homme', 'Debbie', 'Huelin', '1', 'Female', '23823 Fallview Way', 'STEM', '2002-12-28', 'Mandarin', 'Islam', 'Debbie Huelin', 'Debbie Huelin', 'Debbie Huelin', 2147483647, '2017-11-22 16:00:00', NULL, 51, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('451187135499', 'Ricard', 'Kikelia', 'Crosland', '2', 'Female', '6 Del Sol Pass', 'Agri-Fish. Arts', '2000-09-01', 'Thai', 'Catholic', 'Kikelia Crosland', 'Kikelia Crosland', 'Kikelia Crosland', 2147483647, '2017-05-19 16:00:00', NULL, 52, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('451783897620', 'Alanbrooke', 'Stephani', 'Ashtonhurst', '1', 'Female', '418 Knutson Street', 'Industrial Arts', '1999-07-23', 'Taiwanese', 'Jewish', 'Stephani Ashtonhurst', 'Stephani Ashtonhurst', 'Stephani Ashtonhurst', 2147483647, '2018-06-30 16:00:00', NULL, 53, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('454608203690', 'Hullbrook', 'Bibbie', 'Altham', '2', 'Female', '6301 Crownhardt Circle', 'STEM', '2004-07-09', 'Korean', 'Christian', 'Bibbie Altham', 'Bibbie Altham', 'Bibbie Altham', 2147483647, '2017-07-02 16:00:00', NULL, 54, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('457014211976', 'Van Vuuren', 'Gordy', 'Paoloni', '1', 'Male', '2 La Follette Way', 'HUMSS', '2004-06-07', 'Spanish', 'Christian', 'Gordy Paoloni', 'Gordy Paoloni', 'Gordy Paoloni', 2147483647, '2017-12-24 16:00:00', NULL, 55, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('458603216697', 'Ternott', 'Theodosia', 'Timblett', '2', 'Female', '364 Mayer Trail', 'ICT', '2002-02-12', 'Japanese', 'Christian', 'Theodosia Timblett', 'Theodosia Timblett', 'Theodosia Timblett', 2147483647, '2018-10-24 16:00:00', NULL, 56, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('465064235898', 'Carragher', 'Marillin', 'Brittian', '1', 'Female', '82246 David Drive', 'Industrial Arts', '1999-08-01', 'Mandarin', 'Christian', 'Marillin Brittian', 'Marillin Brittian', 'Marillin Brittian', 2028222622, '2018-05-16 16:00:00', NULL, 57, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('493372782865', 'Budibent', 'Harlen', 'Orrah', '1', 'Male', '4 Green Ridge Alley', 'ABM', '2002-05-31', 'Thai', 'Born Again Christian', 'Harlen Orrah', 'Harlen Orrah', 'Harlen Orrah', 2147483647, '2017-10-30 16:00:00', NULL, 58, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('505409623719', 'Calyton', 'Leah', 'Briggs', '1', 'Female', '69 Hudson Point', 'ICT', '2000-05-16', 'Mandarin', 'Islam', 'Leah Briggs', 'Leah Briggs', 'Leah Briggs', 2147483647, '2017-03-20 16:00:00', NULL, 59, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('506122518779', 'Fidele', 'Alys', 'Rennenbach', '2', 'Female', '41 Dakota Trail', 'ABM', '2001-11-23', 'English', 'Buddhist', 'Alys Rennenbach', 'Alys Rennenbach', 'Alys Rennenbach', 2147483647, '2018-10-09 16:00:00', NULL, 60, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('519666279559', 'Sutehall', 'Rice', 'Hawkslee', '2', 'Male', '331 Larry Court', 'ABM', '2000-04-14', 'Taiwanese', 'Buddhist', 'Rice Hawkslee', 'Rice Hawkslee', 'Rice Hawkslee', 2147483647, '2018-09-21 16:00:00', NULL, 61, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('521623329469', 'Seely', 'Micheal', 'Matchell', '1', 'Male', '8 Becker Pass', 'HE', '2001-09-28', 'Korean', 'Buddhist', 'Micheal Matchell', 'Micheal Matchell', 'Micheal Matchell', 2147483647, '2017-02-14 16:00:00', NULL, 62, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('541146424560', 'Santostefano.', 'Adella', 'Willcox', '1', 'Female', '25 Sommers Park', 'STEM', '2002-04-28', 'English', 'Jewish', 'Adella Willcox', 'Adella Willcox', 'Adella Willcox', 2147483647, '2017-08-22 16:00:00', NULL, 63, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('547616727304', 'Catley', 'Hanny', 'Nower', '1', 'Female', '436 Northwestern Drive', 'GAS', '2001-03-02', 'Korean', 'Catholic', 'Hanny Nower', 'Hanny Nower', 'Hanny Nower', 1378673952, '2018-10-24 16:00:00', NULL, 64, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('556165834297', 'Fennick', 'Rebe', 'Kobpa', '1', 'Female', '808 Warner Lane', 'GAS', '2002-07-02', 'Japanese', 'Islam', 'Rebe Kobpa', 'Rebe Kobpa', 'Rebe Kobpa', 2147483647, '2018-09-21 16:00:00', NULL, 65, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('558740798081', 'Martinie', 'Kaitlin', 'Harragin', '2', 'Female', '23273 Springview Junction', 'STEM', '1999-12-06', 'Spanish', 'Christian', 'Kaitlin Harragin', 'Kaitlin Harragin', 'Kaitlin Harragin', 2147483647, '2018-05-16 16:00:00', NULL, 66, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('587171530168', 'Harlett', 'Marty', 'Ertel', '1', 'Female', '00535 Sugar Road', 'ABM', '2001-02-17', 'English', 'Iglesia ni Cristo', 'Marty Ertel', 'Marty Ertel', 'Marty Ertel', 2147483647, '2018-08-12 16:00:00', NULL, 67, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('592487458875', 'Plevey', 'Saxon', 'Pascow', '2', 'Male', '83782 International Lane', 'STEM', '1999-01-31', 'Japanese', 'Christian', 'Saxon Pascow', 'Saxon Pascow', 'Saxon Pascow', 2147483647, '2017-10-06 16:00:00', NULL, 68, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('614003171950', 'Klimov', 'Jaye', 'Fosdike', '1', 'Male', '7533 Basil Hill', 'HUMSS', '2002-11-09', 'Chinese', 'Iglesia ni Cristo', 'Jaye Fosdike', 'Jaye Fosdike', 'Jaye Fosdike', 2147483647, '2018-11-30 16:00:00', NULL, 69, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('626272064467', 'Penfold', 'Tilda', 'Dumphries', '2', 'Female', '1 Corry Alley', 'HE', '2001-08-21', 'Korean', 'Islam', 'Tilda Dumphries', 'Tilda Dumphries', 'Tilda Dumphries', 2147483647, '2017-08-14 16:00:00', NULL, 70, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('632976140017', 'Hugonnet', 'Hermia', 'Ormes', '1', 'Female', '47 Esch Hill', 'Agri-Fish. Arts', '2000-02-13', 'Spanish', 'Iglesia ni Cristo', 'Hermia Ormes', 'Hermia Ormes', 'Hermia Ormes', 2147483647, '2017-12-19 16:00:00', NULL, 71, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('637583640593', 'Keynes', 'Padget', 'Shillabeare', '1', 'Male', '3 Delaware Street', 'STEM', '2001-10-19', 'Chinese', 'Catholic', 'Padget Shillabeare', 'Padget Shillabeare', 'Padget Shillabeare', 2147483647, '2018-05-03 16:00:00', NULL, 72, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('657046087117', 'Scholling', 'Sayer', 'Wasteney', '1', 'Male', '8 Dakota Way', 'ICT', '2001-06-18', 'Mandarin', 'Jewish', 'Sayer Wasteney', 'Sayer Wasteney', 'Sayer Wasteney', 2147483647, '2018-10-02 16:00:00', NULL, 73, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('660895830551', 'Paish', 'Jolyn', 'Haggath', '1', 'Female', '82454 Northridge Junction', 'HE', '2002-08-27', 'Mandarin', 'Born Again Christian', 'Jolyn Haggath', 'Jolyn Haggath', 'Jolyn Haggath', 1258411859, '2018-04-10 16:00:00', NULL, 74, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('673100391328', 'Millea', 'Siana', 'Gabb', '2', 'Female', '4 Hazelcrest Parkway', 'HE', '2001-11-28', 'Mandarin', 'Buddhist', 'Siana Gabb', 'Siana Gabb', 'Siana Gabb', 2147483647, '2017-12-19 16:00:00', NULL, 75, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('689797950544', 'Decent', 'Gilburt', 'McKeller', '2', 'Male', '7 Westridge Hill', 'Agri-Fish. Arts', '2004-03-11', 'Chinese', 'Christian', 'Gilburt McKeller', 'Gilburt McKeller', 'Gilburt McKeller', 1324731938, '2017-10-18 16:00:00', NULL, 76, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('695857523735', 'Trematick', 'Prissie', 'Morais', '2', 'Female', '24423 Tomscot Circle', 'STEM', '1999-09-22', 'Thai', 'Jewish', 'Prissie Morais', 'Prissie Morais', 'Prissie Morais', 2147483647, '2017-11-23 16:00:00', NULL, 77, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('702952426656', 'Nobes', 'Eartha', 'Marvel', '1', 'Female', '471 Mayfield Trail', 'Industrial Arts', '2002-12-20', 'Filipino', 'Catholic', 'Eartha Marvel', 'Eartha Marvel', 'Eartha Marvel', 2147483647, '2017-12-27 16:00:00', NULL, 78, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('709493801175', 'Cowdry', 'Ethe', 'Chainey', '1', 'Male', '1 Mallory Place', 'GAS', '2003-12-13', 'Filipino', 'Islam', 'Ethe Chainey', 'Ethe Chainey', 'Ethe Chainey', 2147483647, '2017-12-31 16:00:00', NULL, 79, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('753430413877', 'Zmitruk', 'Eveline', 'Pragnell', '1', 'Female', '52236 Emmet Pass', 'GAS', '2004-08-10', 'Thai', 'Born Again Christian', 'Eveline Pragnell', 'Eveline Pragnell', 'Eveline Pragnell', 2147483647, '2018-07-06 16:00:00', NULL, 80, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('754744557665', 'Boothebie', 'Kaleena', 'Matieu', '2', 'Female', '84888 Cambridge Place', 'Agri-Fish. Arts', '2003-06-30', 'Taiwanese', 'Islam', 'Kaleena Matieu', 'Kaleena Matieu', 'Kaleena Matieu', 2147483647, '2018-09-25 16:00:00', NULL, 81, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('760719943035', 'Keyden', 'Corliss', 'Pexton', '2', 'Female', '3889 Dahle Avenue', 'ABM', '2002-01-18', 'Thai', 'Born Again Christian', 'Corliss Pexton', 'Corliss Pexton', 'Corliss Pexton', 2147483647, '2017-10-03 16:00:00', NULL, 82, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('782370469975', 'Heal', 'Twila', 'Masterson', '2', 'Female', '10 Summit Plaza', 'HE', '1999-07-07', 'Korean', 'Iglesia ni Cristo', 'Twila Masterson', 'Twila Masterson', 'Twila Masterson', 2147483647, '2017-07-26 16:00:00', NULL, 83, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('783331345745', 'Shackell', 'Noellyn', 'Vice', '1', 'Female', '24665 Lotheville Drive', 'Agri-Fish. Arts', '2001-06-23', 'English', 'Iglesia ni Cristo', 'Noellyn Vice', 'Noellyn Vice', 'Noellyn Vice', 2147483647, '2018-05-30 16:00:00', NULL, 84, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('784645692186', 'Dudley', 'Donielle', 'Chillingworth', '2', 'Female', '69020 Algoma Parkway', 'ABM', '1999-09-19', 'Spanish', 'Catholic', 'Donielle Chillingworth', 'Donielle Chillingworth', 'Donielle Chillingworth', 2147483647, '2017-09-26 16:00:00', NULL, 85, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('786467147583', 'Jeandet', 'Orv', 'Arthy', '2', 'Male', '07 Burning Wood Circle', 'ABM', '1999-09-16', 'Japanese', 'Jewish', 'Orv Arthy', 'Orv Arthy', 'Orv Arthy', 2147483647, '2017-05-28 16:00:00', NULL, 86, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('787199331963', 'McGeaney', 'Irina', 'Jonk', '2', 'Female', '10 Schlimgen Street', 'HUMSS', '2003-02-25', 'Thai', 'Catholic', 'Irina Jonk', 'Irina Jonk', 'Irina Jonk', 2147483647, '2018-02-04 16:00:00', NULL, 87, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('787719352697', 'Bleakley', 'Alys', 'Sabate', '1', 'Female', '13 Oak Valley Street', 'GAS', '2002-10-29', 'Chinese', 'Christian', 'Alys Sabate', 'Alys Sabate', 'Alys Sabate', 2147483647, '2018-07-21 16:00:00', NULL, 88, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('792214526267', 'Byram', 'Cesar', 'Bignal', '1', 'Male', '5793 Atwood Crossing', 'ICT', '2002-08-17', 'Chinese', 'Jewish', 'Cesar Bignal', 'Cesar Bignal', 'Cesar Bignal', 2147483647, '2018-04-26 16:00:00', NULL, 89, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('797273095052', 'Hundy', 'Willetta', 'Yashunin', '2', 'Female', '73122 Northport Place', 'HUMSS', '2004-09-12', 'English', 'Hinduism', 'Willetta Yashunin', 'Willetta Yashunin', 'Willetta Yashunin', 2147483647, '2017-08-06 16:00:00', NULL, 90, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('844009792566', 'Baldwin', 'Yuma', 'Foystone', '2', 'Male', '98288 Helena Hill', 'HUMSS', '2000-03-06', 'Korean', 'Islam', 'Yuma Foystone', 'Yuma Foystone', 'Yuma Foystone', 2147483647, '2018-03-03 16:00:00', NULL, 91, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('852575729296', 'Cherry Holme', 'Caria', 'Hickinbottom', '1', 'Female', '18744 Dakota Place', 'Industrial Arts', '2002-05-19', 'Chinese', 'Buddhist', 'Caria Hickinbottom', 'Caria Hickinbottom', 'Caria Hickinbottom', 2147483647, '2018-03-08 16:00:00', NULL, 92, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('853328932308', 'Heggman', 'Gibb', 'Yuryatin', '1', 'Male', '84 Carpenter Terrace', 'Industrial Arts', '2000-05-16', 'Chinese', 'Jewish', 'Gibb Yuryatin', 'Gibb Yuryatin', 'Gibb Yuryatin', 2147483647, '2018-04-25 16:00:00', NULL, 93, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('855612176865', 'Giblin', 'Korella', 'Josowitz', '1', 'Female', '58 Graceland Place', 'HE', '1999-08-19', 'Korean', 'Christian', 'Korella Josowitz', 'Korella Josowitz', 'Korella Josowitz', 2147483647, '2018-01-18 16:00:00', NULL, 94, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('872367459819', 'Potier', 'Waylin', 'Bowley', '2', 'Male', '8 Glacier Hill Point', 'ABM', '1999-08-14', 'Filipino', 'Born Again Christian', 'Waylin Bowley', 'Waylin Bowley', 'Waylin Bowley', 2147483647, '2018-07-24 16:00:00', NULL, 95, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('890651641546', 'Freschini', 'Catie', 'Mustchin', '1', 'Female', '1033 Eagle Crest Parkway', 'ABM', '2004-08-08', 'Japanese', 'Jewish', 'Catie Mustchin', 'Catie Mustchin', 'Catie Mustchin', 2147483647, '2018-07-10 16:00:00', NULL, 96, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('896595329320', 'Beaney', 'Carlye', 'Shapland', '1', 'Female', '92 Swallow Plaza', 'HUMSS', '2002-03-06', 'Taiwanese', 'Islam', 'Carlye Shapland', 'Carlye Shapland', 'Carlye Shapland', 2147483647, '2017-02-05 16:00:00', NULL, 97, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('907520445599', 'Sturridge', 'Dinnie', 'Bleackly', '2', 'Female', '95130 Hermina Park', 'GAS', '2003-10-27', 'Taiwanese', 'Hinduism', 'Dinnie Bleackly', 'Dinnie Bleackly', 'Dinnie Bleackly', 1293049937, '2017-06-05 16:00:00', NULL, 98, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('907982722564', 'Christescu', 'Lonnard', 'Gelardi', '2', 'Male', '9268 Dahle Pass', 'GAS', '2003-05-06', 'Japanese', 'Iglesia ni Cristo', 'Lonnard Gelardi', 'Lonnard Gelardi', 'Lonnard Gelardi', 1644735095, '2017-07-19 16:00:00', NULL, 99, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('909176680406', 'Gerling', 'Robyn', 'Molines', '1', 'Female', '51058 Artisan Pass', 'STEM', '2004-07-10', 'Mandarin', 'Christian', 'Robyn Molines', 'Robyn Molines', 'Robyn Molines', 2147483647, '2017-09-09 16:00:00', NULL, 100, 'STEM 1101-02', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('921126154813', 'Stenbridge', 'Dwight', 'Gillcrist', '1', 'Male', '6836 Maple Point', 'HUMSS', '2003-01-30', 'Chinese', 'Christian', 'Dwight Gillcrist', 'Dwight Gillcrist', 'Dwight Gillcrist', 1414600675, '2018-02-23 16:00:00', NULL, 101, 'HUMS 1101-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('921886300615', 'Varne', 'Benedick', 'Mebes', '1', 'Male', '30 Amoth Circle', 'Industrial Arts', '1999-06-06', 'Chinese', 'Islam', 'Benedick Mebes', 'Benedick Mebes', 'Benedick Mebes', 2147483647, '2018-05-20 16:00:00', NULL, 102, 'HUMS 1101-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('958115771110', 'Hoogendorp', 'Agnesse', 'Butner', '1', 'Female', '47799 4th Drive', 'GAS', '2001-06-29', 'Thai', 'Christian', 'Agnesse Butner', 'Agnesse Butner', 'Agnesse Butner', 2147483647, '2017-10-17 16:00:00', NULL, 103, 'HUMS 1101-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('962601647884', 'Gumm', 'Doll', 'Di Biagi', '1', 'Female', '3124 Ilene Parkway', 'ABM', '2004-01-22', 'Chinese', 'Hinduism', 'Doll Di Biagi', 'Doll Di Biagi', 'Doll Di Biagi', 2147483647, '2017-07-03 16:00:00', NULL, 104, 'HUMS 1101-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('969435962016', 'Kinneally', 'Averell', 'Bittleson', '1', 'Male', '39 Scott Circle', 'ICT', '2001-12-07', 'Japanese', 'Born Again Christian', 'Averell Bittleson', 'Averell Bittleson', 'Averell Bittleson', 1662211984, '2018-01-14 16:00:00', NULL, 105, 'HUMS 1101-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('971290138921', 'Brunon', 'Antonia', 'Haslin', '1', 'Female', '6699 Melvin Drive', 'Agri-Fish. Arts', '2004-05-25', 'Chinese', 'Christian', 'Antonia Haslin', 'Antonia Haslin', 'Antonia Haslin', 2147483647, '2018-09-01 16:00:00', NULL, 106, 'HUMS 1101-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('972157994550', 'Moulds', 'Ellissa', 'McGhee', '2', 'Female', '29787 Hooker Circle', 'Industrial Arts', '2004-09-15', 'Taiwanese', 'Catholic', 'Ellissa McGhee', 'Ellissa McGhee', 'Ellissa McGhee', 2147483647, '2017-05-24 16:00:00', NULL, 107, 'HUMS 1101-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('973056200929', 'Jentin', 'Trish', 'Beushaw', '2', 'Female', '1 American Ash Lane', 'STEM', '1999-11-22', 'Mandarin', 'Christian', 'Trish Beushaw', 'Trish Beushaw', 'Trish Beushaw', 2147483647, '2017-01-28 16:00:00', NULL, 108, 'HUMS 1101-03', 'notexited', 'antipolos2.png', NULL, NULL, NULL, NULL),
('981892267855', 'Brigginshaw', 'Berti', 'Wathell', '1', 'male', '105 Pierstorff Junction', 'Agri-Fish. Arts', '2001-04-04', 'Taiwanese', 'Hinduism', 'Berti Wathell', 'Berti Wathell', 'Berti Wathell', 2147483647, '2018-12-23 16:00:00', '2019-07-16 02:39:46', 109, 'HUMS 1101-03', 'exited', 'antipolos2.png', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendences`
--

CREATE TABLE `student_attendences` (
  `attend_id` int(10) UNSIGNED NOT NULL,
  `a_stu_id` int(11) NOT NULL,
  `attend_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '1=present,0=absent,2=half_time',
  `attend_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attended_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_attendences`
--

INSERT INTO `student_attendences` (`attend_id`, `a_stu_id`, `attend_status`, `attend_date`, `attended_by`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1/04/2019', '0', '2019-04-29 20:21:23', '2019-04-29 20:21:23'),
(2, 1, '1', '2/04/2019', '0', '2019-04-29 20:21:25', '2019-04-29 20:21:25'),
(3, 1, '1', '3/04/2019', '0', '2019-04-29 20:21:25', '2019-04-29 20:21:25'),
(4, 1, '1', '4/04/2019', '0', '2019-04-29 20:21:26', '2019-04-29 20:21:26'),
(5, 1, '1', '6/04/2019', '0', '2019-04-29 20:21:27', '2019-04-29 20:21:27'),
(6, 1, '1', '5/04/2019', '0', '2019-04-29 20:21:28', '2019-04-29 20:21:28'),
(7, 2, '1', '1/04/2019', '0', '2019-04-29 20:23:53', '2019-04-29 20:23:53'),
(8, 3, '1', '1/05/2019', '0', '2019-05-16 05:42:48', '2019-05-16 05:42:48'),
(9, 3, '1', '2/05/2019', '0', '2019-05-16 05:42:48', '2019-05-16 05:42:48'),
(10, 3, '1', '3/05/2019', '0', '2019-05-16 05:42:49', '2019-05-16 05:42:49'),
(11, 3, '1', '4/05/2019', '0', '2019-05-16 05:42:50', '2019-05-16 05:42:50'),
(12, 3, '1', '5/05/2019', '0', '2019-05-16 05:42:51', '2019-05-16 05:42:51'),
(13, 3, '1', '6/05/2019', '0', '2019-05-16 05:42:52', '2019-05-16 05:42:52'),
(14, 3, '1', '31/05/2019', '0', '2019-05-16 05:43:00', '2019-05-16 05:43:00'),
(15, 6, '1', '1/05/2019', '0', '2019-05-19 05:16:33', '2019-05-19 05:16:33'),
(16, 6, '1', '2/05/2019', '0', '2019-05-19 05:16:34', '2019-05-19 05:16:34'),
(17, 6, '1', '3/05/2019', '0', '2019-05-19 05:18:16', '2019-05-19 05:32:44'),
(18, 6, '1', '4/05/2019', '0', '2019-05-19 05:18:18', '2019-05-19 05:32:45'),
(19, 6, '1', '5/05/2019', '0', '2019-05-19 05:33:09', '2019-05-19 05:33:09'),
(20, 6, '1', '6/05/2019', '0', '2019-05-19 05:33:10', '2019-05-19 05:33:10'),
(21, 6, '1', '7/05/2019', '0', '2019-05-19 05:33:11', '2019-05-19 05:33:11'),
(22, 6, '1', '8/05/2019', '0', '2019-05-19 05:33:11', '2019-05-19 05:33:11'),
(23, 6, '1', '9/05/2019', '0', '2019-05-19 05:33:12', '2019-05-19 05:33:12'),
(24, 6, '1', '10/05/2019', '0', '2019-05-19 05:33:12', '2019-05-19 05:33:12'),
(25, 6, '1', '11/05/2019', '0', '2019-05-19 05:33:13', '2019-05-19 05:33:13'),
(26, 6, '1', '13/05/2019', '0', '2019-05-19 05:33:13', '2019-05-19 05:33:13'),
(27, 6, '1', '12/05/2019', '0', '2019-05-19 05:33:13', '2019-05-19 05:33:13'),
(28, 7, '1', '1/05/2019', '0', '2019-05-19 14:01:28', '2019-05-19 14:01:28'),
(29, 7, '1', '6/05/2019', '0', '2019-05-19 14:01:29', '2019-05-19 14:01:29'),
(30, 7, '1', '4/05/2019', '0', '2019-05-19 14:01:30', '2019-05-19 14:01:30'),
(31, 7, '1', '5/05/2019', '0', '2019-05-19 14:01:32', '2019-05-19 14:01:32'),
(32, 7, '1', '3/07/2019', '0', '2019-07-04 12:18:17', '2019-07-08 12:01:31'),
(33, 7, '1', '4/07/2019', '0', '2019-07-08 12:01:34', '2019-07-08 12:01:34'),
(34, 9, '1', '1/07/2019', '0', '2019-07-10 00:04:02', '2019-07-10 00:04:02'),
(35, 11, '1', '1/07/2019', '0', '2019-07-10 00:04:11', '2019-07-10 00:04:11'),
(36, 13, '1', '1/07/2019', '0', '2019-07-12 09:28:18', '2019-07-12 09:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `class` varchar(255) NOT NULL,
  `subject_title` varchar(255) NOT NULL,
  `subject_marks` varchar(255) NOT NULL,
  `subject_add_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adhaar_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adhaar_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joining_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `full_name`, `father_name`, `mother_name`, `gender`, `dob`, `address`, `mobile`, `mobile_2`, `photo`, `adhaar_img`, `adhaar_no`, `salary`, `joining_date`, `designation`, `qualification`, `experience`, `extra_note`, `created_at`, `updated_at`) VALUES
(1, 'Teacher Full Name', 'Teacher Father Name', 'Teacher Mother Name', 'female', '02/04/2019', 'asdasd', '9388760278', '9388760278', '2.jpg', '65.jpg', '1234567891234', '5000', '03/04/2019', 'primary', 'MA', '5', 'asdfsdf', '2019-04-07 08:53:00', '2019-04-07 09:26:27'),
(2, 'Carl Muyco', 'GG', 'GG', 'male', '25/04/2019', 'awdawdaw', '1234566789', '1234568789', 'Koala.jpg', '', '1234567', '', '24/04/2019', '', 'dawdaw', 'adawdaw', 'awdawdaw', '2019-04-29 20:46:51', '2019-04-29 20:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendences`
--

CREATE TABLE `teacher_attendences` (
  `attend_id` int(10) UNSIGNED NOT NULL,
  `a_teach_id` int(11) NOT NULL,
  `attend_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '1=present,0=absent,2=half_time',
  `attend_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attended_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_attendences`
--

INSERT INTO `teacher_attendences` (`attend_id`, `a_teach_id`, `attend_status`, `attend_date`, `attended_by`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1/03/2019', '0', '2019-04-07 09:48:31', '2019-04-07 09:48:31'),
(2, 1, '0', '2/04/2019', '0', '2019-04-07 09:49:48', '2019-04-29 20:28:28'),
(3, 1, '0', '1/04/2019', '0', '2019-04-07 10:07:11', '2019-04-29 20:28:31'),
(4, 1, '0', '3/04/2019', '0', '2019-04-07 10:18:27', '2019-04-29 20:28:27'),
(5, 2, '1', '1/04/2019', '0', '2019-04-29 20:48:40', '2019-04-29 20:48:43'),
(6, 2, '1', '2/04/2019', '0', '2019-04-29 20:48:44', '2019-04-29 20:48:44'),
(7, 2, '1', '3/04/2019', '0', '2019-04-29 20:48:45', '2019-04-29 20:48:45'),
(8, 2, '1', '4/04/2019', '0', '2019-04-29 20:48:46', '2019-04-29 20:48:46'),
(9, 2, '0', '11/04/2019', '0', '2019-04-29 21:03:34', '2019-04-29 21:03:36'),
(10, 2, '0', '30/04/2019', '0', '2019-04-29 21:03:43', '2019-04-29 21:03:48'),
(11, 2, '0', '19/04/2019', '0', '2019-04-29 21:03:45', '2019-04-29 21:03:46'),
(12, 2, '0', '1/05/2019', '0', '2019-05-16 05:19:48', '2019-05-16 05:19:57'),
(13, 2, '0', '2/05/2019', '0', '2019-05-16 05:19:54', '2019-05-16 05:19:57'),
(14, 2, '0', '3/05/2019', '0', '2019-05-16 05:19:55', '2019-05-16 05:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `stu_id` int(100) NOT NULL,
  `stu_name` varchar(250) NOT NULL,
  `section` varchar(250) NOT NULL,
  `visit_purpose` varchar(250) NOT NULL,
  `created_at` date NOT NULL,
  `update_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`stu_id`, `stu_name`, `section`, `visit_purpose`, `created_at`, `update_at`) VALUES
(14116130, 'Allysa Muyco', 'St.John', 'Consultation', '2019-07-04', '0000-00-00'),
(1411621, 'Carl Muyco', 'St.John', 'Clearance', '2019-07-04', '0000-00-00'),
(1314929, 'Arnel Diamante', 'St.James', 'Consultation', '2019-07-04', '0000-00-00'),
(1010493, 'Edward Valiente', 'St.James', 'Clearance', '2019-07-04', '0000-00-00'),
(1411314, 'Freddie Aguilar', 'ABM 1204-03', 'Consultation', '2019-07-11', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `counsel`
--
ALTER TABLE `counsel`
  ADD PRIMARY KEY (`counsel_id`);

--
-- Indexes for table `counselling`
--
ALTER TABLE `counselling`
  ADD PRIMARY KEY (`counsel_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `fees_card`
--
ALTER TABLE `fees_card`
  ADD PRIMARY KEY (`fees_id`);

--
-- Indexes for table `grads`
--
ALTER TABLE `grads`
  ADD PRIMARY KEY (`stu_id`),
  ADD UNIQUE KEY `LRN` (`adhaar_no`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `result_card`
--
ALTER TABLE `result_card`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `salary_card`
--
ALTER TABLE `salary_card`
  ADD PRIMARY KEY (`salary_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stu_id`),
  ADD UNIQUE KEY `LRN` (`adhaar_no`);

--
-- Indexes for table `student_attendences`
--
ALTER TABLE `student_attendences`
  ADD PRIMARY KEY (`attend_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_attendences`
--
ALTER TABLE `teacher_attendences`
  ADD PRIMARY KEY (`attend_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `time_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `counsel`
--
ALTER TABLE `counsel`
  MODIFY `counsel_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `counselling`
--
ALTER TABLE `counselling`
  MODIFY `counsel_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fees_card`
--
ALTER TABLE `fees_card`
  MODIFY `fees_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `result_card`
--
ALTER TABLE `result_card`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `salary_card`
--
ALTER TABLE `salary_card`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_attendences`
--
ALTER TABLE `student_attendences`
  MODIFY `attend_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_attendences`
--
ALTER TABLE `teacher_attendences`
  MODIFY `attend_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
