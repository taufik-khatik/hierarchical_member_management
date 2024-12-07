-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 02:45 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hierarchical_member_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ParentId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `CreatedDate`, `name`, `ParentId`, `created_at`, `updated_at`) VALUES
(3, '2024-12-07 19:09:25', 'Admin', NULL, NULL, NULL),
(4, '2024-12-07 19:09:33', 'Taufik', NULL, NULL, NULL),
(5, '2024-12-07 19:09:41', 'Abhijeet', 4, NULL, NULL),
(6, '2024-12-07 19:09:57', 'bala', 5, NULL, NULL),
(7, '2024-12-07 19:10:13', 'Rachit', 3, NULL, NULL),
(8, '2024-12-07 19:10:20', 'Vishnu', NULL, NULL, NULL),
(9, '2024-12-07 19:10:38', 'Neha', 6, NULL, NULL),
(10, '2024-12-07 19:10:54', 'Sunita', 9, NULL, NULL),
(11, '2024-12-07 19:11:04', 'Rasik', 8, NULL, NULL),
(12, '2024-12-07 19:11:14', 'Raju', 11, NULL, NULL),
(13, '2024-12-07 19:11:32', 'Vijay', NULL, NULL, NULL),
(14, '2024-12-07 19:11:41', 'Malik', NULL, NULL, NULL),
(15, '2024-12-07 19:11:54', 'Miraj', 13, NULL, NULL),
(16, '2024-12-07 19:12:12', 'Vina', NULL, NULL, NULL),
(17, '2024-12-07 19:12:30', 'Nikhil', 16, NULL, NULL),
(18, '2024-12-07 19:13:43', 'avinash', 7, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `members_parentid_foreign` (`ParentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_parentid_foreign` FOREIGN KEY (`ParentId`) REFERENCES `members` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
