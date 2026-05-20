-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 08, 2026 at 12:33 PM
-- Server version: 10.6.24-MariaDB
-- PHP Version: 8.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adarsha1_app2026`
--
CREATE DATABASE IF NOT EXISTS `adarsha1_app2026` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `adarsha1_app2026`;

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `id` int(11) NOT NULL,
  `name_bn` varchar(100) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `father_bn` varchar(100) NOT NULL,
  `father_en` varchar(100) NOT NULL,
  `mother_bn` varchar(100) NOT NULL,
  `mother_en` varchar(100) NOT NULL,
  `permanent_village` varchar(100) NOT NULL,
  `permanent_post` varchar(100) NOT NULL,
  `permanent_upazila` varchar(100) NOT NULL,
  `permanent_zila` varchar(100) NOT NULL,
  `present_village` varchar(100) NOT NULL,
  `present_post` varchar(100) NOT NULL,
  `present_upazila` varchar(100) NOT NULL,
  `present_zila` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `guardian_job` varchar(50) NOT NULL,
  `annual_income` varchar(10) NOT NULL,
  `dob` varchar(12) NOT NULL,
  `old_school_name` varchar(255) NOT NULL,
  `addmit_class` int(2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blank`
--

CREATE TABLE `blank` (
  `id` int(5) NOT NULL,
  `lastaccess` varchar(5) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(5) NOT NULL,
  `class_en` varchar(20) NOT NULL,
  `class_bn` varchar(20) NOT NULL,
  `lastaccess` varchar(5) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `id` int(10) NOT NULL,
  `class_id` int(3) NOT NULL,
  `student_id` varchar(10) NOT NULL,
  `year` year(4) NOT NULL,
  `exam` varchar(3) NOT NULL,
  `sub_code` varchar(3) NOT NULL,
  `type` varchar(1) NOT NULL,
  `mark` double(10,2) NOT NULL,
  `full_mark` int(3) NOT NULL,
  `lastaccess` varchar(5) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publish`
--

CREATE TABLE `publish` (
  `id` int(11) NOT NULL,
  `publish_pass` varchar(100) NOT NULL,
  `publish_off_pass` varchar(100) NOT NULL,
  `result_off_notice` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `date_of_admission` varchar(20) NOT NULL,
  `time_of_admission` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name_bn` varchar(100) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `father_bn` varchar(100) NOT NULL,
  `father_en` varchar(100) NOT NULL,
  `mother_bn` varchar(100) NOT NULL,
  `mother_en` varchar(100) NOT NULL,
  `year` year(4) NOT NULL,
  `class` varchar(10) NOT NULL,
  `section` varchar(10) NOT NULL,
  `class_roll` int(5) NOT NULL,
  `permanent_village` varchar(100) NOT NULL,
  `permanent_post` varchar(100) NOT NULL,
  `permanent_upazila` varchar(100) NOT NULL,
  `permanent_zila` varchar(100) NOT NULL,
  `present_village` varchar(100) NOT NULL,
  `present_post` varchar(100) NOT NULL,
  `present_upazila` varchar(100) NOT NULL,
  `present_zila` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `guardian_job` varchar(50) NOT NULL,
  `annual_income` varchar(10) NOT NULL,
  `dob` varchar(12) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `result` text NOT NULL,
  `mark` decimal(10,2) NOT NULL,
  `gpa` varchar(10) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(5) NOT NULL,
  `class` varchar(10) NOT NULL,
  `serial` int(2) NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `full_1` int(3) NOT NULL,
  `full_2` int(3) NOT NULL,
  `full_3` int(3) DEFAULT NULL,
  `title_1` varchar(100) NOT NULL DEFAULT 'রচনামূলক',
  `title_2` varchar(100) NOT NULL DEFAULT 'পাক্ষিক পরীক্ষা',
  `title_3` varchar(100) NOT NULL DEFAULT 'বাড়ীর কাজ ও অন্যান্য',
  `lastaccess` varchar(5) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `status` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `lastaccess` int(2) NOT NULL,
  `permission` varchar(100) NOT NULL DEFAULT '[]',
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blank`
--
ALTER TABLE `blank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publish`
--
ALTER TABLE `publish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blank`
--
ALTER TABLE `blank`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publish`
--
ALTER TABLE `publish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
