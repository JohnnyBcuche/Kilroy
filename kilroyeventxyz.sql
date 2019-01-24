-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql.kilroyevent.xyz
-- Generation Time: Dec 15, 2017 at 03:57 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kilroyeventxyz`
--

-- --------------------------------------------------------

--
-- Table structure for table `changelog`
--

CREATE TABLE `changelog` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `type` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `table_name` varchar(55) NOT NULL,
  `affected_table_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `changelog`
--

INSERT INTO `changelog` (`id`, `created_at`, `type`, `user_id`, `description`, `table_name`, `affected_table_id`) VALUES
(1, '2017-08-26 08:29:46', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 1, level 5: 0', 'rewards', 117),
(2, '2017-08-26 08:29:50', 'insert', 11, 'Transaction started', 'transactions_paypal', 122),
(3, '2017-08-26 08:31:18', 'update', 11, 'Transaction successful', 'transactions_paypal', 122),
(4, '2017-08-26 08:31:18', 'update', 11, 'User updated', 'users', 11),
(5, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 85),
(6, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: -1', 'rewards', 86),
(7, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 87),
(8, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: -1', 'rewards', 88),
(9, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 89),
(10, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: -1, level 5: 0', 'rewards', 90),
(11, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 100),
(12, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: -1', 'rewards', 101),
(13, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 102),
(14, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: -1, level 5: 0', 'rewards', 103),
(15, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: -1, level 5: 0', 'rewards', 108),
(16, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 109),
(17, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: -1, level 5: 0', 'rewards', 110),
(18, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 111),
(19, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: -1', 'rewards', 112),
(20, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 113),
(21, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: -1, level 5: 0', 'rewards', 114),
(22, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 115),
(23, '2017-08-26 08:31:18', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 117),
(24, '2017-08-26 08:31:18', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: -1', 'rewards', 118),
(25, '2017-08-26 10:25:46', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: 1', 'rewards', 119),
(26, '2017-08-26 10:25:50', 'insert', 1, 'Transaction started', 'transactions_paypal', 123),
(27, '2017-08-26 10:26:43', 'update', 1, 'Transaction successful', 'transactions_paypal', 123),
(28, '2017-08-26 10:26:43', 'update', 1, 'User updated', 'users', 1),
(29, '2017-08-26 10:26:43', 'insert', 11, 'Reward limit alocation/delocation --> level 4: -1, level 5: 0', 'rewards', 120),
(30, '2017-08-26 13:21:00', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: 1', 'rewards', 121),
(31, '2017-08-26 13:22:01', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: 1', 'rewards', 122),
(32, '2017-08-26 13:22:03', 'insert', 1, 'Transaction started', 'transactions_paypal', 124),
(33, '2017-08-26 13:23:21', 'update', 1, 'Transaction successful', 'transactions_paypal', 124),
(34, '2017-08-26 13:23:21', 'update', 1, 'User updated', 'users', 1),
(35, '2017-08-26 13:23:21', 'insert', 11, 'Reward limit alocation/delocation --> level 4: -1, level 5: 0', 'rewards', 123),
(36, '2017-08-26 13:30:38', 'insert', 1, 'Transaction started', 'transactions_paypal', 125),
(37, '2017-08-26 13:31:11', 'update', 1, 'Transaction successful', 'transactions_paypal', 125),
(38, '2017-08-26 13:50:58', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: 1', 'rewards', 124),
(39, '2017-08-26 13:51:05', 'insert', 11, 'Transaction started', 'transactions_paypal', 126),
(40, '2017-08-26 13:51:54', 'update', 11, 'Transaction successful', 'transactions_paypal', 126),
(41, '2017-08-26 13:51:54', 'update', 11, 'User updated', 'users', 11),
(42, '2017-08-26 13:51:54', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 117),
(43, '2017-08-26 13:51:54', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: -1', 'rewards', 118),
(44, '2017-08-26 13:51:54', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 119),
(45, '2017-08-26 13:51:54', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: -1, level 5: 0', 'rewards', 120),
(46, '2017-08-26 13:51:54', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 121),
(47, '2017-08-26 13:51:54', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 122),
(48, '2017-08-26 13:51:54', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: -1, level 5: 0', 'rewards', 123),
(49, '2017-08-26 13:51:54', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 124),
(50, '2017-08-26 13:51:54', 'insert', 11, 'Reward limit alocation/delocation --> level 4: -1, level 5: 0', 'rewards', 125),
(51, '2017-08-26 13:53:24', 'insert', 1, 'Transaction started', 'transactions_paypal', 127),
(52, '2017-08-26 13:54:19', 'update', 1, 'Transaction successful', 'transactions_paypal', 127),
(53, '2017-08-26 14:22:13', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 1, level 5: 0', 'rewards', 126),
(54, '2017-08-26 14:22:15', 'insert', 11, 'Transaction started', 'transactions_paypal', 128),
(55, '2017-08-26 14:22:38', 'update', 11, 'Transaction successful', 'transactions_paypal', 128),
(56, '2017-08-26 14:22:38', 'update', 11, 'User updated', 'users', 11),
(57, '2017-08-26 14:22:38', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 117),
(58, '2017-08-26 14:22:38', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: -1', 'rewards', 118),
(59, '2017-08-26 14:22:38', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 119),
(60, '2017-08-26 14:22:38', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: -1, level 5: 0', 'rewards', 120),
(61, '2017-08-26 14:22:38', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 121),
(62, '2017-08-26 14:22:38', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 122),
(63, '2017-08-26 14:22:38', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: -1, level 5: 0', 'rewards', 123),
(64, '2017-08-26 14:22:38', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 124),
(65, '2017-08-26 14:22:38', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: -1, level 5: 0', 'rewards', 125),
(66, '2017-08-26 14:22:38', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 126),
(67, '2017-08-26 14:22:39', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: -1', 'rewards', 127),
(68, '2017-08-26 16:50:14', 'update', 11, 'User updated', 'users', 11),
(69, '2017-08-26 16:50:14', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: 1', 'rewards', 128),
(70, '2017-08-26 16:50:15', 'insert', 11, 'Transaction started', 'transactions_paypal', 129),
(71, '2017-08-26 16:50:58', 'update', 11, 'Transaction successful', 'transactions_paypal', 129),
(72, '2017-08-26 16:50:58', 'update', 11, 'User updated', 'users', 11),
(73, '2017-08-26 16:50:58', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 117),
(74, '2017-08-26 16:50:58', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: -1', 'rewards', 118),
(75, '2017-08-26 16:50:58', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 119),
(76, '2017-08-26 16:50:58', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: -1, level 5: 0', 'rewards', 120),
(77, '2017-08-26 16:50:58', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 121),
(78, '2017-08-26 16:50:58', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 122),
(79, '2017-08-26 16:50:58', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: -1, level 5: 0', 'rewards', 123),
(80, '2017-08-26 16:50:58', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 124),
(81, '2017-08-26 16:50:58', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: -1, level 5: 0', 'rewards', 125),
(82, '2017-08-26 16:50:58', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 126),
(83, '2017-08-26 16:50:58', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 128),
(84, '2017-08-26 16:50:58', 'insert', 11, 'Reward limit alocation/delocation --> level 4: -1, level 5: 0', 'rewards', 129),
(85, '2017-08-27 12:14:25', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 1, level 5: 0', 'rewards', 130),
(86, '2017-08-27 12:14:38', 'insert', 11, 'Transaction started', 'transactions_paypal', 130),
(87, '2017-08-27 12:15:16', 'update', 11, 'Transaction successful', 'transactions_paypal', 130),
(88, '2017-08-27 12:15:16', 'update', 11, 'User updated', 'users', 11),
(89, '2017-08-27 12:15:16', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 130),
(90, '2017-08-27 12:15:16', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: -1', 'rewards', 131),
(91, '2017-08-27 13:53:45', 'insert', 1, 'Transaction started', 'transactions_paypal', 131),
(92, '2017-08-27 13:54:25', 'update', 1, 'Transaction successful', 'transactions_paypal', 131),
(93, '2017-08-27 13:56:45', 'insert', 38, 'Transaction started', 'transactions_paypal', 132),
(94, '2017-08-27 13:57:25', 'update', 38, 'Transaction successful', 'transactions_paypal', 132),
(95, '2017-08-28 13:19:55', 'insert', 1, 'Transaction started', 'transactions_paypal', 133),
(96, '2017-08-28 13:20:29', 'update', 1, 'Transaction successful', 'transactions_paypal', 133),
(97, '2017-08-28 13:21:34', 'insert', 38, 'Reward limit alocation/delocation --> level 4: 0, level 5: -1', 'rewards', 132),
(98, '2017-08-28 13:21:34', 'update', 38, 'User updated', 'users', 38),
(99, '2017-08-28 14:41:14', 'insert', 38, 'Reward limit alocation/delocation --> level 4: 0, level 5: 1', 'rewards', 133),
(100, '2017-08-28 14:41:17', 'insert', 38, 'Transaction started', 'transactions_paypal', 134),
(101, '2017-08-28 14:41:56', 'update', 38, 'Transaction successful', 'transactions_paypal', 134),
(102, '2017-08-28 14:41:56', 'update', 38, 'User updated', 'users', 38),
(103, '2017-08-28 14:41:56', 'update', 38, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 133),
(104, '2017-08-28 15:21:07', 'insert', 1, 'Transaction started', 'transactions_paypal', 135),
(105, '2017-08-28 15:23:45', 'insert', 1, 'Transaction started', 'transactions_paypal', 136),
(106, '2017-08-28 15:24:15', 'update', 1, 'Transaction successful', 'transactions_paypal', 136),
(107, '2017-08-30 12:27:38', 'insert', 1, 'Transaction started', 'transactions_paypal', 137),
(108, '2017-08-30 12:28:39', 'update', 1, 'Transaction successful', 'transactions_paypal', 137),
(109, '2017-08-30 12:44:18', 'insert', 42, 'User added', 'users', 42),
(110, '2017-08-30 12:44:20', 'insert', 42, 'Transaction started', 'transactions_paypal', 138),
(111, '2017-08-30 12:45:18', 'update', 42, 'Transaction successful', 'transactions_paypal', 138),
(112, '2017-08-30 12:45:18', 'update', 42, 'User updated', 'users', 42),
(113, '2017-08-30 13:12:55', 'update', 42, 'User updated', 'users', 42),
(114, '2017-08-30 13:15:52', 'update', 42, 'User updated', 'users', 42),
(115, '2017-08-30 13:17:51', 'insert', 42, 'Reward limit alocation/delocation --> level 4: 0, level 5: 1', 'rewards', 134),
(116, '2017-08-30 13:17:51', 'update', 42, 'User updated', 'users', 42),
(117, '2017-08-30 13:20:30', 'update', 42, 'User updated', 'users', 42),
(118, '2017-08-30 13:20:31', 'insert', 42, 'Transaction started', 'transactions_paypal', 139),
(119, '2017-08-30 13:21:01', 'update', 42, 'Transaction successful', 'transactions_paypal', 139),
(120, '2017-08-30 13:21:01', 'update', 42, 'User updated', 'users', 42),
(121, '2017-08-30 13:21:01', 'update', 42, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 134),
(122, '2017-08-30 13:24:19', 'insert', 42, 'Reward limit alocation/delocation --> level 4: 0, level 5: 1', 'rewards', 135),
(123, '2017-08-30 13:24:21', 'insert', 42, 'Transaction started', 'transactions_paypal', 140),
(124, '2017-08-30 13:24:47', 'update', 42, 'Transaction successful', 'transactions_paypal', 140),
(125, '2017-08-30 13:24:47', 'update', 42, 'User updated', 'users', 42),
(126, '2017-08-30 13:24:47', 'update', 42, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 134),
(127, '2017-08-30 13:24:47', 'update', 42, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 135),
(128, '2017-08-30 14:30:16', 'delete', 9, 'ERROR!!! Transaction deleted!! Amount: 25payment_id: PAY-222628751D371515MLF3UYHY', 'transactions_paypal', 28),
(129, '2017-08-30 14:32:19', 'delete', 1, 'ERROR!!! Transaction deleted!! Amount: 0payment_id: PAY-3D68275368234463TLF25AWQ', 'transactions_paypal', 24),
(130, '2017-08-30 14:37:29', 'delete', 15, 'ERROR!!! User deleted!! name:  email: nikola@gmail.com validated: 0 member_level: 0 created_at: 2017-07-31', 'users', 15),
(131, '2017-08-30 14:49:40', 'insert', 11, 'Reward limit alocation/delocation --> level 4: -1, level 5: 0', 'rewards', 136),
(132, '2017-08-30 14:49:40', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: 1', 'rewards', 137),
(133, '2017-08-30 14:49:40', 'update', 11, 'User updated', 'users', 11),
(134, '2017-08-30 16:54:27', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: -1', 'rewards', 138),
(135, '2017-08-30 16:54:27', 'update', 11, 'User updated', 'users', 11),
(136, '2017-08-30 16:54:45', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: 1', 'rewards', 139),
(137, '2017-08-30 16:54:45', 'update', 11, 'User updated', 'users', 11),
(138, '2017-08-30 16:55:11', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: -1', 'rewards', 140),
(139, '2017-08-30 16:55:11', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 1, level 5: 0', 'rewards', 141),
(140, '2017-08-30 16:55:11', 'update', 11, 'User updated', 'users', 11),
(141, '2017-08-30 16:55:47', 'insert', 11, 'Reward limit alocation/delocation --> level 4: -1, level 5: 0', 'rewards', 142),
(142, '2017-08-30 16:55:47', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: 1', 'rewards', 143),
(143, '2017-08-30 16:55:47', 'update', 11, 'User updated', 'users', 11),
(144, '2017-08-30 16:56:19', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: -1', 'rewards', 144),
(145, '2017-08-30 16:56:19', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 1, level 5: 0', 'rewards', 145),
(146, '2017-08-30 16:56:19', 'update', 11, 'User updated', 'users', 11),
(147, '2017-08-30 16:56:36', 'insert', 11, 'Reward limit alocation/delocation --> level 4: -1, level 5: 0', 'rewards', 146),
(148, '2017-08-30 16:56:36', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: 1', 'rewards', 147),
(149, '2017-08-30 16:56:36', 'update', 11, 'User updated', 'users', 11),
(150, '2017-08-31 06:30:27', 'insert', 43, 'User added', 'users', 43),
(151, '2017-08-31 06:30:41', 'insert', 43, 'Transaction started', 'transactions_paypal', 141),
(152, '2017-08-31 06:31:10', 'update', 43, 'Transaction successful', 'transactions_paypal', 141),
(153, '2017-08-31 06:31:10', 'update', 43, 'User updated', 'users', 43),
(154, '2017-08-31 08:33:35', 'update', 11, 'User updated', 'users', 11),
(155, '2017-08-31 08:52:01', 'update', 11, 'User updated', 'users', 11),
(156, '2017-08-31 08:54:18', 'update', 11, 'User updated', 'users', 11),
(157, '2017-08-31 08:55:12', 'update', 11, 'User updated', 'users', 11),
(158, '2017-08-31 08:57:53', 'update', 43, 'User updated', 'users', 43),
(159, '2017-08-31 11:40:24', 'insert', 11, 'Transaction started', 'transactions_paypal', 142),
(160, '2017-08-31 11:40:51', 'update', 11, 'Transaction successful', 'transactions_paypal', 142),
(161, '2017-08-31 11:53:02', 'insert', 11, 'Transaction started', 'transactions_paypal', 143),
(162, '2017-08-31 11:53:26', 'update', 11, 'Transaction successful', 'transactions_paypal', 143),
(163, '2017-09-06 14:01:40', 'delete', 37, 'ERROR!!! User deleted!! name:  email: nikola@opticaltone.com validated: 1 member_level: 5 created_at: 2017-08-16', 'users', 37),
(164, '2017-09-06 14:02:25', 'insert', 44, 'User added', 'users', 44),
(165, '2017-09-06 14:02:33', 'insert', 44, 'Transaction started', 'transactions_paypal', 144),
(166, '2017-09-06 14:02:56', 'update', 44, 'Transaction successful', 'transactions_paypal', 144),
(167, '2017-09-06 14:02:56', 'update', 44, 'User updated', 'users', 44),
(168, '2017-09-07 20:41:43', 'insert', 1, 'Transaction started', 'transactions_paypal', 145),
(169, '2017-09-07 20:42:07', 'update', 1, 'Transaction successful', 'transactions_paypal', 145),
(170, '2017-09-07 20:42:44', 'insert', 11, 'Transaction started', 'transactions_paypal', 146),
(171, '2017-09-07 20:43:01', 'update', 11, 'Transaction successful', 'transactions_paypal', 146),
(172, '2017-09-07 20:46:00', 'insert', 45, 'User added', 'users', 45),
(173, '2017-09-07 20:46:02', 'insert', 45, 'Transaction started', 'transactions_paypal', 147),
(174, '2017-09-07 20:46:29', 'update', 45, 'Transaction successful', 'transactions_paypal', 147),
(175, '2017-09-07 20:46:29', 'update', 45, 'User updated', 'users', 45),
(176, '2017-09-07 20:49:53', 'insert', 1, 'Transaction started', 'transactions_paypal', 148),
(177, '2017-09-07 20:50:33', 'update', 1, 'Transaction successful', 'transactions_paypal', 148),
(178, '2017-09-07 21:02:53', 'insert', 1, 'Transaction started', 'transactions_paypal', 149),
(179, '2017-09-07 21:03:15', 'update', 1, 'Transaction successful', 'transactions_paypal', 149),
(180, '2017-09-08 06:47:40', 'update', 43, 'User updated', 'users', 43),
(181, '2017-09-09 11:11:16', 'delete', 43, 'ERROR!!! User deleted!! name: Ivan email: ivan@opticaltone.com validated: 1 member_level: 3 created_at: 2017-08-30', 'users', 43),
(182, '2017-09-09 11:11:19', 'delete', 42, 'ERROR!!! User deleted!! name: Johnny email: kisivan92@gmail.com validated: 0 member_level: 5 created_at: 2017-08-30', 'users', 42),
(183, '2017-09-09 11:11:45', 'insert', 1, 'Transaction started', 'transactions_paypal', 150),
(184, '2017-09-09 11:12:23', 'update', 1, 'Transaction successful', 'transactions_paypal', 150),
(185, '2017-09-09 11:14:49', 'insert', 46, 'User added', 'users', 46),
(186, '2017-09-09 11:14:52', 'insert', 46, 'Transaction started', 'transactions_paypal', 151),
(187, '2017-09-09 11:15:26', 'update', 46, 'Transaction successful', 'transactions_paypal', 151),
(188, '2017-09-09 11:15:26', 'update', 46, 'User updated', 'users', 46),
(189, '2017-09-09 11:16:45', 'insert', 46, 'Reward limit alocation/delocation --> level 4: 1, level 5: 0', 'rewards', 148),
(190, '2017-09-09 11:16:46', 'insert', 46, 'Transaction started', 'transactions_paypal', 152),
(191, '2017-09-09 11:17:17', 'update', 46, 'Transaction successful', 'transactions_paypal', 152),
(192, '2017-09-09 11:17:17', 'update', 46, 'User updated', 'users', 46),
(193, '2017-09-09 11:17:17', 'update', 46, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 148),
(194, '2017-09-09 11:18:14', 'update', 46, 'User updated', 'users', 46),
(195, '2017-09-09 11:18:59', 'update', 46, 'User updated', 'users', 46),
(196, '2017-09-09 11:19:29', 'update', 46, 'User updated', 'users', 46),
(197, '2017-09-09 11:20:34', 'update', 46, 'User updated', 'users', 46),
(198, '2017-09-09 11:21:43', 'update', 46, 'User updated', 'users', 46),
(199, '2017-09-09 11:22:36', 'insert', 46, 'Transaction started', 'transactions_paypal', 153),
(200, '2017-09-09 11:23:22', 'update', 46, 'Transaction successful', 'transactions_paypal', 153),
(201, '2017-09-09 11:23:22', 'update', 46, 'User updated', 'users', 46),
(202, '2017-09-09 11:23:22', 'update', 46, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 148),
(203, '2017-09-09 11:24:02', 'update', 46, 'User updated', 'users', 46),
(204, '2017-09-10 10:18:43', 'insert', 1, 'Transaction started', 'transactions_paypal', 154),
(205, '2017-09-10 10:32:11', 'update', 1, 'Transaction successful', 'transactions_paypal', 154),
(206, '2017-09-10 10:32:49', 'insert', 1, 'Transaction started', 'transactions_paypal', 155),
(207, '2017-09-10 10:33:17', 'update', 1, 'Transaction successful', 'transactions_paypal', 155),
(208, '2017-09-10 10:33:46', 'insert', 1, 'Transaction started', 'transactions_paypal', 156),
(209, '2017-09-10 10:35:01', 'update', 1, 'Transaction successful', 'transactions_paypal', 156),
(210, '2017-09-10 10:37:14', 'insert', 1, 'Transaction started', 'transactions_paypal', 157),
(211, '2017-09-10 10:40:01', 'insert', 11, 'Transaction started', 'transactions_paypal', 158),
(212, '2017-09-10 10:40:51', 'update', 11, 'Transaction successful', 'transactions_paypal', 158),
(213, '2017-09-10 10:41:59', 'insert', 11, 'Transaction started', 'transactions_paypal', 159),
(214, '2017-09-10 10:42:21', 'update', 11, 'Transaction successful', 'transactions_paypal', 159),
(215, '2017-09-10 10:42:52', 'insert', 11, 'Transaction started', 'transactions_paypal', 160),
(216, '2017-09-10 10:43:16', 'update', 11, 'Transaction successful', 'transactions_paypal', 160),
(217, '2017-09-10 10:47:30', 'insert', 11, 'Transaction started', 'transactions_paypal', 161),
(218, '2017-09-10 10:47:47', 'update', 11, 'Transaction successful', 'transactions_paypal', 161),
(219, '2017-09-10 10:48:08', 'insert', 11, 'Transaction started', 'transactions_paypal', 162),
(220, '2017-09-10 10:48:25', 'update', 11, 'Transaction successful', 'transactions_paypal', 162),
(221, '2017-09-10 10:49:29', 'insert', 11, 'Transaction started', 'transactions_paypal', 163),
(222, '2017-09-10 11:53:01', 'update', 11, 'Transaction successful', 'transactions_paypal', 163),
(223, '2017-09-10 11:53:34', 'insert', 11, 'Transaction started', 'transactions_paypal', 164),
(224, '2017-09-10 13:09:57', 'insert', 11, 'Transaction started', 'transactions_paypal', 165),
(225, '2017-09-10 13:16:20', 'insert', 11, 'Transaction started', 'transactions_paypal', 166),
(226, '2017-09-10 13:21:15', 'insert', 11, 'Transaction started', 'transactions_paypal', 167),
(227, '2017-09-10 19:32:13', 'insert', 1, 'Transaction started', 'transactions_paypal', 168),
(228, '2017-09-10 19:32:49', 'update', 1, 'Transaction successful', 'transactions_paypal', 168),
(229, '2017-09-10 19:35:15', 'insert', 1, 'Transaction started', 'transactions_paypal', 169),
(230, '2017-09-10 19:42:45', 'insert', 1, 'Transaction started', 'transactions_paypal', 170),
(231, '2017-09-10 20:34:03', 'insert', 1, 'Transaction started', 'transactions_paypal', 171),
(232, '2017-09-10 20:37:55', 'update', 1, 'Transaction successful', 'transactions_paypal', 171),
(233, '2017-09-10 20:39:23', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 1, level 5: 0', 'rewards', 149),
(234, '2017-09-10 20:39:26', 'insert', 11, 'Transaction started', 'transactions_paypal', 172),
(235, '2017-09-10 20:43:58', 'insert', 11, 'Transaction started', 'transactions_paypal', 173),
(236, '2017-09-10 20:46:16', 'insert', 11, 'Transaction started', 'transactions_paypal', 174),
(237, '2017-09-10 20:48:55', 'update', 11, 'Transaction successful', 'transactions_paypal', 174),
(238, '2017-09-10 20:48:55', 'update', 11, 'User updated', 'users', 11),
(239, '2017-09-10 20:48:55', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 149),
(240, '2017-09-10 20:48:55', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: -1', 'rewards', 150),
(241, '2017-09-11 09:11:47', 'insert', 1, 'Transaction started', 'transactions_paypal', 175),
(242, '2017-09-11 09:16:06', 'insert', 11, 'Reward limit alocation/delocation --> level 4: 0, level 5: 1', 'rewards', 151),
(243, '2017-09-11 09:16:07', 'insert', 11, 'Transaction started', 'transactions_paypal', 176),
(244, '2017-09-11 09:16:31', 'update', 11, 'Transaction successful', 'transactions_paypal', 176),
(245, '2017-09-11 09:16:31', 'update', 11, 'User updated', 'users', 11),
(246, '2017-09-11 09:16:31', 'update', 11, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 151),
(247, '2017-09-11 09:16:31', 'insert', 11, 'Reward limit alocation/delocation --> level 4: -1, level 5: 0', 'rewards', 152),
(248, '2017-09-12 20:14:34', 'insert', 46, 'Reward limit alocation/delocation --> level 4: 1, level 5: 0', 'rewards', 153),
(249, '2017-09-12 20:14:35', 'insert', 46, 'Transaction started', 'transactions_paypal', 177),
(250, '2017-09-12 20:15:05', 'update', 46, 'Transaction successful', 'transactions_paypal', 177),
(251, '2017-09-12 20:15:05', 'update', 46, 'User updated', 'users', 46),
(252, '2017-09-12 20:15:31', 'insert', 46, 'Reward limit alocation/delocation --> level 4: -1, level 5: 0', 'rewards', 154),
(253, '2017-09-12 20:15:31', 'update', 46, 'User updated', 'users', 46),
(254, '2017-09-12 20:15:46', 'delete', 46, 'Reward limit delocated, time expired --> level 4: 1, level 5: 0', 'rewards', 153),
(255, '2017-09-12 20:16:19', 'insert', 46, 'Reward limit alocation/delocation --> level 4: 0, level 5: 1', 'rewards', 155),
(256, '2017-09-12 20:16:20', 'insert', 46, 'Transaction started', 'transactions_paypal', 178),
(257, '2017-09-12 20:16:47', 'update', 46, 'Transaction successful', 'transactions_paypal', 178),
(258, '2017-09-12 20:16:47', 'update', 46, 'User updated', 'users', 46),
(259, '2017-09-12 20:17:03', 'delete', 46, 'Reward limit delocated, time expired --> level 4: 0, level 5: 1', 'rewards', 155),
(260, '2017-11-02 11:17:28', 'update', 45, 'User updated', 'users', 45),
(261, '2017-11-02 12:46:35', 'update', 46, 'User updated', 'users', 46),
(262, '2017-11-03 09:21:33', 'update', 46, 'User updated', 'users', 46),
(263, '2017-11-03 09:21:51', 'update', 46, 'User updated', 'users', 46),
(264, '2017-11-03 09:22:02', 'update', 46, 'User updated', 'users', 46),
(265, '2017-11-03 09:22:23', 'update', 46, 'User updated', 'users', 46),
(266, '2017-11-04 12:00:18', 'update', 46, 'User updated', 'users', 46),
(267, '2017-11-07 11:20:46', 'update', 46, 'User updated', 'users', 46),
(268, '2017-11-07 12:42:02', 'update', 45, 'User updated', 'users', 45),
(269, '2017-11-07 12:42:16', 'update', 45, 'User updated', 'users', 45),
(270, '2017-11-07 12:46:00', 'update', 46, 'User updated', 'users', 46),
(271, '2017-11-07 12:46:57', 'update', 46, 'User updated', 'users', 46),
(272, '2017-11-07 12:52:12', 'update', 44, 'User updated', 'users', 44),
(273, '2017-11-07 13:24:12', 'update', 46, 'User updated', 'users', 46),
(274, '2017-11-07 15:12:42', 'update', 45, 'User updated', 'users', 45),
(275, '2017-11-07 15:12:56', 'update', 45, 'User updated', 'users', 45),
(276, '2017-11-07 15:13:03', 'update', 45, 'User updated', 'users', 45),
(277, '2017-11-07 15:16:29', 'update', 45, 'User updated', 'users', 45),
(278, '2017-11-07 15:16:48', 'update', 45, 'User updated', 'users', 45),
(279, '2017-11-07 15:17:03', 'update', 45, 'User updated', 'users', 45),
(280, '2017-11-07 15:46:58', 'update', 44, 'User updated', 'users', 44),
(281, '2017-11-07 15:50:10', 'update', 45, 'User updated', 'users', 45),
(282, '2017-11-07 15:50:30', 'update', 45, 'User updated', 'users', 45),
(283, '2017-11-07 15:50:41', 'update', 45, 'User updated', 'users', 45),
(284, '2017-11-07 15:52:45', 'update', 46, 'User updated', 'users', 46),
(285, '2017-11-07 15:53:07', 'update', 46, 'User updated', 'users', 46),
(286, '2017-11-07 15:54:34', 'update', 45, 'User updated', 'users', 45),
(287, '2017-11-07 15:54:47', 'update', 44, 'User updated', 'users', 44),
(288, '2017-11-08 11:07:21', 'update', 45, 'User updated', 'users', 45),
(289, '2017-11-08 11:07:26', 'update', 45, 'User updated', 'users', 45),
(290, '2017-11-08 11:42:32', 'update', 45, 'User updated', 'users', 45),
(291, '2017-11-08 11:42:37', 'update', 45, 'User updated', 'users', 45),
(292, '2017-11-08 13:53:29', 'update', 46, 'User updated', 'users', 46),
(293, '2017-11-08 13:56:04', 'update', 45, 'User updated', 'users', 45),
(294, '2017-11-08 13:57:31', 'update', 46, 'User updated', 'users', 46),
(295, '2017-11-08 14:00:09', 'update', 46, 'User updated', 'users', 46),
(296, '2017-11-08 14:18:16', 'update', 45, 'User updated', 'users', 45),
(297, '2017-11-08 14:18:20', 'update', 45, 'User updated', 'users', 45),
(298, '2017-11-08 14:18:25', 'update', 45, 'User updated', 'users', 45),
(299, '2017-11-08 15:18:42', 'update', 45, 'User updated', 'users', 45),
(300, '2017-11-08 15:18:55', 'update', 45, 'User updated', 'users', 45),
(301, '2017-11-08 15:18:59', 'update', 45, 'User updated', 'users', 45),
(302, '2017-11-08 15:19:01', 'update', 44, 'User updated', 'users', 44),
(303, '2017-11-08 16:30:46', 'update', 45, 'User updated', 'users', 45),
(304, '2017-11-09 18:35:56', 'update', 45, 'User updated', 'users', 45),
(305, '2017-11-09 18:36:03', 'update', 45, 'User updated', 'users', 45),
(306, '2017-11-11 15:56:18', 'update', 44, 'User updated', 'users', 44),
(307, '2017-11-12 14:52:36', 'update', 45, 'User updated', 'users', 45),
(308, '2017-11-13 00:04:17', 'update', 11, 'User updated', 'users', 11),
(309, '2017-11-13 18:02:42', 'insert', 47, 'User added', 'users', 47),
(310, '2017-11-13 18:02:53', 'insert', 47, 'Transaction started', 'transactions_paypal', 179),
(311, '2017-11-13 18:03:33', 'update', 47, 'Transaction successful', 'transactions_paypal', 179),
(312, '2017-11-13 18:03:33', 'update', 47, 'User updated', 'users', 47),
(313, '2017-11-13 18:12:42', 'update', 47, 'User updated', 'users', 47),
(314, '2017-11-13 18:12:44', 'insert', 47, 'Transaction started', 'transactions_paypal', 180),
(315, '2017-11-13 18:13:18', 'update', 47, 'Transaction successful', 'transactions_paypal', 180),
(316, '2017-11-13 18:13:18', 'update', 47, 'User updated', 'users', 47),
(317, '2017-11-13 18:14:20', 'insert', 47, 'Transaction started', 'transactions_paypal', 181),
(318, '2017-11-13 18:14:43', 'update', 47, 'Transaction successful', 'transactions_paypal', 181),
(319, '2017-11-13 18:14:43', 'update', 47, 'User updated', 'users', 47),
(320, '2017-11-13 18:15:07', 'insert', 47, 'Reward limit alocation/delocation --> level 4: 1, level 5: 0', 'rewards', 155),
(321, '2017-11-13 18:15:08', 'insert', 47, 'Transaction started', 'transactions_paypal', 182),
(322, '2017-11-13 18:15:27', 'update', 47, 'Transaction successful', 'transactions_paypal', 182),
(323, '2017-11-13 18:15:27', 'update', 47, 'User updated', 'users', 47),
(324, '2017-11-13 18:15:27', 'update', 47, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 155),
(325, '2017-11-13 18:17:54', 'insert', 47, 'Reward limit alocation/delocation --> level 4: 0, level 5: 1', 'rewards', 156),
(326, '2017-11-13 18:17:55', 'insert', 47, 'Transaction started', 'transactions_paypal', 183),
(327, '2017-11-13 18:18:26', 'update', 47, 'Transaction successful', 'transactions_paypal', 183),
(328, '2017-11-13 18:18:26', 'update', 47, 'User updated', 'users', 47),
(329, '2017-11-13 18:18:26', 'update', 47, 'Reward limit successfuly merged with the user --> level 4: 1, level 5: 0', 'rewards', 155),
(330, '2017-11-13 18:18:26', 'update', 47, 'Reward limit successfuly merged with the user --> level 4: 0, level 5: 1', 'rewards', 156),
(331, '2017-11-13 18:18:26', 'insert', 47, 'Reward limit alocation/delocation --> level 4: -1, level 5: 0', 'rewards', 157),
(332, '2017-11-13 20:02:21', 'update', 47, 'User updated', 'users', 47),
(333, '2017-11-14 19:11:25', 'insert', 11, 'Transaction started', 'transactions_paypal', 184),
(334, '2017-11-14 19:11:58', 'update', 11, 'Transaction successful', 'transactions_paypal', 184),
(335, '2017-11-14 19:11:58', 'update', 11, 'User updated', 'users', 11),
(336, '2017-11-15 02:50:58', 'insert', 1, 'Transaction started', 'transactions_paypal', 185),
(337, '2017-11-15 17:13:01', 'update', 47, 'User updated', 'users', 47),
(338, '2017-11-15 18:47:09', 'insert', 1, 'Transaction started', 'transactions_paypal', 186),
(339, '2017-11-15 18:49:56', 'insert', 1, 'Transaction started', 'transactions_paypal', 187),
(340, '2017-11-15 21:09:31', 'insert', 1, 'Transaction started', 'transactions_paypal', 188),
(341, '2017-11-15 21:10:41', 'update', 1, 'Transaction successful', 'transactions_paypal', 188),
(342, '2017-11-15 21:24:36', 'update', 1, 'Transaction successful', 'transactions_paypal', 188),
(343, '2017-11-15 22:42:37', 'insert', 48, 'User added', 'users', 48),
(344, '2017-11-15 22:43:07', 'insert', 49, 'User added', 'users', 49),
(345, '2017-11-15 22:47:47', 'insert', 50, 'User added', 'users', 50),
(346, '2017-11-15 22:48:15', 'delete', 48, 'ERROR!!! User deleted!! name:  email: anonymous@mail.com validated: 0 member_level: 5 created_at: 2017-08-08', 'users', 48),
(347, '2017-11-15 22:48:15', 'delete', 49, 'ERROR!!! User deleted!! name:  email: anonymous@mail.com validated: 0 member_level: 5 created_at: 2017-11-17', 'users', 49),
(348, '2017-11-15 22:48:15', 'delete', 50, 'ERROR!!! User deleted!! name:  email: anonymous@mail.com validated: 0 member_level: 5 created_at: 2017-11-17', 'users', 50),
(349, '2017-11-15 23:56:55', 'insert', 51, 'User added', 'users', 51),
(350, '2017-11-15 23:57:14', 'delete', 51, 'ERROR!!! User deleted!! name: Nikola Mandic email: nikolamand@gmail.com validated: 0 member_level: 4 created_at: 2017-11-17', 'users', 51),
(351, '2017-11-16 00:00:44', 'insert', 52, 'User added', 'users', 52),
(352, '2017-11-16 00:43:39', 'insert', 1, 'Transaction started', 'transactions_paypal', 189),
(353, '2017-11-16 00:45:57', 'update', 1, 'Transaction successful', 'transactions_paypal', 189),
(354, '2017-11-16 01:33:47', 'update', 44, 'User updated', 'users', 44),
(355, '2017-11-16 01:45:30', 'update', 44, 'User updated', 'users', 44),
(356, '2017-11-16 01:45:38', 'delete', 44, 'ERROR!!! User deleted!! name: Nikola email: nikola@opticaltone.com validated: 0 member_level: 3 created_at: 2017-09-06', 'users', 44),
(357, '2017-11-16 01:46:20', 'insert', 53, 'User added', 'users', 53),
(358, '2017-11-16 01:46:22', 'insert', 53, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 158),
(359, '2017-11-16 01:46:24', 'insert', 53, 'Transaction started', 'transactions_paypal', 190),
(360, '2017-11-16 01:47:19', 'update', 53, 'Transaction successful', 'transactions_paypal', 190),
(361, '2017-11-16 01:47:19', 'update', 53, 'User updated', 'users', 53),
(362, '2017-11-16 01:47:19', 'update', 53, 'Reward limit successfuly merged with the user --> level 3: 0, level 4: 1', 'rewards', 158),
(363, '2017-11-16 01:52:00', 'insert', 54, 'User added', 'users', 54),
(364, '2017-11-16 01:52:02', 'insert', 54, 'Transaction started', 'transactions_paypal', 191),
(365, '2017-11-16 01:53:05', 'update', 54, 'Transaction successful', 'transactions_paypal', 191),
(366, '2017-11-16 01:53:05', 'update', 54, 'User updated', 'users', 54),
(367, '2017-11-16 09:36:36', 'insert', 55, 'User added', 'users', 55),
(368, '2017-11-16 09:37:01', 'delete', 55, 'ERROR!!! User deleted!! name: Ivan email: ivan@opticaltone.com validated: 0 member_level: 5 created_at: 2017-11-16', 'users', 55),
(369, '2017-11-18 12:25:33', 'insert', 56, 'User added', 'users', 56),
(370, '2017-11-18 12:25:34', 'insert', 56, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 159),
(371, '2017-11-18 12:25:37', 'insert', 56, 'Transaction started', 'transactions_paypal', 192),
(372, '2017-11-18 12:26:55', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 160),
(373, '2017-11-18 12:26:55', 'update', 11, 'User updated', 'users', 11),
(374, '2017-11-18 12:27:01', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 161),
(375, '2017-11-18 12:27:01', 'update', 11, 'User updated', 'users', 11),
(376, '2017-11-18 12:28:36', 'update', 0, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 88', 'rewards', 1),
(377, '2017-11-18 12:29:03', 'update', 0, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 89', 'rewards', 1),
(378, '2017-11-18 12:29:27', 'insert', 11, 'Transaction started', 'transactions_paypal', 193),
(379, '2017-11-18 12:29:55', 'update', 11, 'Transaction successful', 'transactions_paypal', 193),
(380, '2017-11-18 12:29:55', 'update', 11, 'User updated', 'users', 11),
(381, '2017-11-18 12:29:55', 'update', 11, 'Reward limit successfuly merged with the user --> level 3: -1, level 4: 0', 'rewards', 160),
(382, '2017-11-18 12:29:55', 'update', 11, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 0', 'rewards', 161),
(383, '2017-11-18 12:32:58', 'update', 0, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 88', 'rewards', 1),
(384, '2017-11-18 12:41:06', 'update', 0, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 89', 'rewards', 1),
(385, '2017-11-18 12:45:55', 'insert', 11, 'Transaction started', 'transactions_paypal', 194),
(386, '2017-11-18 12:46:13', 'insert', 11, 'Transaction started', 'transactions_paypal', 195),
(387, '2017-11-18 12:48:26', 'insert', 11, 'Transaction started', 'transactions_paypal', 196),
(388, '2017-11-18 12:49:06', 'insert', 57, 'User added', 'users', 57),
(389, '2017-11-18 12:59:07', 'insert', 58, 'User added', 'users', 58),
(390, '2017-11-18 12:59:47', 'delete', 56, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 159),
(391, '2017-11-18 13:00:11', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 162),
(392, '2017-11-18 13:00:11', 'update', 11, 'User updated', 'users', 11),
(393, '2017-11-18 13:00:17', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 163),
(394, '2017-11-18 13:00:17', 'update', 11, 'User updated', 'users', 11),
(395, '2017-11-18 13:00:23', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 164),
(396, '2017-11-18 13:00:23', 'update', 11, 'User updated', 'users', 11),
(397, '2017-11-18 13:00:33', 'update', 11, 'Reward limit successfuly merged with the user --> level 3: -1, level 4: 1', 'rewards', 164),
(398, '2017-11-18 13:00:48', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 165),
(399, '2017-11-18 13:00:48', 'update', 11, 'User updated', 'users', 11),
(400, '2017-11-18 13:03:00', 'update', 11, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 1', 'rewards', 165),
(401, '2017-11-18 13:03:15', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 166),
(402, '2017-11-18 13:04:17', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 167),
(403, '2017-11-18 13:04:36', 'update', 11, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 0', 'rewards', 165),
(404, '2017-11-18 13:04:41', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 168),
(405, '2017-11-18 13:04:56', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 169),
(406, '2017-11-18 13:06:14', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 170),
(407, '2017-11-18 13:06:20', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 171),
(408, '2017-11-18 13:06:20', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 172),
(409, '2017-11-18 13:06:20', 'update', 11, 'User updated', 'users', 11),
(410, '2017-11-18 13:08:14', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 173),
(411, '2017-11-18 13:08:14', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 0, level 4: -1', 'rewards', 174),
(412, '2017-11-18 13:08:19', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 175),
(413, '2017-11-18 13:08:19', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 0, level 4: -1', 'rewards', 176),
(414, '2017-11-18 13:08:19', 'update', 11, 'User updated', 'users', 11),
(415, '2017-11-18 13:13:26', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 177),
(416, '2017-11-18 13:13:26', 'update', 11, 'User updated', 'users', 11),
(417, '2017-11-18 13:13:45', 'update', 11, 'Reward limit successfuly merged with the user --> level 3: 0, level 4: 2', 'rewards', 177),
(418, '2017-11-18 13:14:04', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 0, level 4: -1', 'rewards', 178),
(419, '2017-11-18 13:14:04', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 179),
(420, '2017-11-18 13:14:04', 'update', 11, 'User updated', 'users', 11),
(421, '2017-11-18 13:14:04', 'update', 11, 'User updated', 'users', 11),
(422, '2017-11-18 13:14:38', 'update', 11, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 1', 'rewards', 179),
(423, '2017-11-18 13:14:47', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 180),
(424, '2017-11-18 13:14:53', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 181),
(425, '2017-11-18 13:17:35', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 182),
(426, '2017-11-18 13:18:21', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 183),
(427, '2017-11-18 13:19:02', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 184),
(428, '2017-11-18 21:15:02', 'insert', 59, 'User added', 'users', 59),
(429, '2017-11-18 21:15:29', 'insert', 60, 'User added', 'users', 60),
(430, '2017-11-18 21:17:53', 'insert', 61, 'User added', 'users', 61),
(431, '2017-11-18 21:17:58', 'insert', 61, 'Transaction started', 'transactions_paypal', 197),
(432, '2017-11-18 21:20:14', 'insert', 62, 'User added', 'users', 62),
(433, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 89', 'rewards', 1),
(434, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 1', 'rewards', 2),
(435, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 3),
(436, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 4),
(437, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 5),
(438, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 6),
(439, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 7),
(440, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 8),
(441, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 9),
(442, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 10),
(443, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 11),
(444, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 12),
(445, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 13),
(446, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 14),
(447, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 15),
(448, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 16),
(449, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 17),
(450, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 18),
(451, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 19),
(452, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 5', 'rewards', 20),
(453, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 21),
(454, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 22),
(455, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 23),
(456, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 24),
(457, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 25),
(458, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 26),
(459, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 27),
(460, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 28),
(461, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 29),
(462, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 30),
(463, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 31),
(464, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 32),
(465, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 33),
(466, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 34),
(467, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 35),
(468, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 36),
(469, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 37),
(470, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 38),
(471, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 39),
(472, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 40),
(473, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 41),
(474, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 42),
(475, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 43),
(476, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 44),
(477, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 45),
(478, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 46),
(479, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 47),
(480, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 48),
(481, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 49),
(482, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 50),
(483, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 56),
(484, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 57),
(485, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 58),
(486, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 59),
(487, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 61);
INSERT INTO `changelog` (`id`, `created_at`, `type`, `user_id`, `description`, `table_name`, `affected_table_id`) VALUES
(488, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 85),
(489, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 86),
(490, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 87),
(491, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 88),
(492, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 89),
(493, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 90),
(494, '2017-11-19 00:10:24', 'delete', 34, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 91),
(495, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 92),
(496, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 95),
(497, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 100),
(498, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 101),
(499, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 102),
(500, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 103),
(501, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 104),
(502, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 105),
(503, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 106),
(504, '2017-11-19 00:10:24', 'delete', 0, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 107),
(505, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 108),
(506, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 109),
(507, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 110),
(508, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 111),
(509, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 112),
(510, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 113),
(511, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 114),
(512, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 115),
(513, '2017-11-19 00:10:24', 'delete', 41, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 116),
(514, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 117),
(515, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 118),
(516, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 119),
(517, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 120),
(518, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 121),
(519, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 122),
(520, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 123),
(521, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 124),
(522, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 125),
(523, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 126),
(524, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 127),
(525, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 128),
(526, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 129),
(527, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 130),
(528, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 131),
(529, '2017-11-19 00:10:24', 'delete', 38, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 132),
(530, '2017-11-19 00:10:24', 'delete', 38, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 133),
(531, '2017-11-19 00:10:24', 'delete', 42, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 134),
(532, '2017-11-19 00:10:24', 'delete', 42, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 135),
(533, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 136),
(534, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 137),
(535, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 138),
(536, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 139),
(537, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 140),
(538, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 141),
(539, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 142),
(540, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 143),
(541, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 144),
(542, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 145),
(543, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 146),
(544, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 147),
(545, '2017-11-19 00:10:24', 'delete', 46, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 148),
(546, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 149),
(547, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 150),
(548, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 151),
(549, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 152),
(550, '2017-11-19 00:10:24', 'delete', 46, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 154),
(551, '2017-11-19 00:10:24', 'delete', 47, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 155),
(552, '2017-11-19 00:10:24', 'delete', 47, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 156),
(553, '2017-11-19 00:10:24', 'delete', 47, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 157),
(554, '2017-11-19 00:10:24', 'delete', 53, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 158),
(555, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 160),
(556, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 161),
(557, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 162),
(558, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 163),
(559, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 1', 'rewards', 164),
(560, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 165),
(561, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 166),
(562, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 167),
(563, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 168),
(564, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 169),
(565, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 170),
(566, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 171),
(567, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 172),
(568, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 173),
(569, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 174),
(570, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 175),
(571, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 176),
(572, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: 2', 'rewards', 177),
(573, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 0, level 4: -1', 'rewards', 178),
(574, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 1', 'rewards', 179),
(575, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 180),
(576, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 181),
(577, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 182),
(578, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 183),
(579, '2017-11-19 00:10:24', 'delete', 11, 'Reward limit delocated, time expired --> level 3: -1, level 4: 0', 'rewards', 184),
(580, '2017-11-19 00:11:08', 'insert', 196, 'Reward limit alocation/delocation --> level 3: 1, level 4: 2', 'rewards', 185),
(581, '2017-11-19 00:11:08', 'insert', 4, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 1),
(582, '2017-11-19 00:11:08', 'insert', 5, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 2),
(583, '2017-11-19 00:11:08', 'insert', 8, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 3),
(584, '2017-11-19 00:11:08', 'insert', 43, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 4),
(585, '2017-11-19 00:11:08', 'insert', 45, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 5),
(586, '2017-11-19 00:11:08', 'insert', 47, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 6),
(587, '2017-11-19 00:11:08', 'insert', 48, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 7),
(588, '2017-11-19 00:11:08', 'insert', 53, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 8),
(589, '2017-11-19 00:11:08', 'insert', 55, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 9),
(590, '2017-11-19 00:11:08', 'insert', 56, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 10),
(591, '2017-11-19 00:11:08', 'insert', 57, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 11),
(592, '2017-11-19 00:11:08', 'insert', 59, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 12),
(593, '2017-11-19 00:11:08', 'insert', 60, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 13),
(594, '2017-11-19 00:11:08', 'insert', 61, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 14),
(595, '2017-11-19 00:11:08', 'insert', 63, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 15),
(596, '2017-11-19 00:11:08', 'insert', 66, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 16),
(597, '2017-11-19 00:11:08', 'insert', 70, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 17),
(598, '2017-11-19 00:11:08', 'insert', 71, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 18),
(599, '2017-11-19 00:11:08', 'insert', 72, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 19),
(600, '2017-11-19 00:11:08', 'insert', 74, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 20),
(601, '2017-11-19 00:11:08', 'insert', 75, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 21),
(602, '2017-11-19 00:11:08', 'insert', 76, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 22),
(603, '2017-11-19 00:11:08', 'insert', 78, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 23),
(604, '2017-11-19 00:11:08', 'insert', 75, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 24),
(605, '2017-11-19 00:11:08', 'insert', 80, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 25),
(606, '2017-11-19 00:11:08', 'insert', 81, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 26),
(607, '2017-11-19 00:11:08', 'insert', 82, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 27),
(608, '2017-11-19 00:11:08', 'insert', 83, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 28),
(609, '2017-11-19 00:11:08', 'insert', 84, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 29),
(610, '2017-11-19 00:11:08', 'insert', 85, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 30),
(611, '2017-11-19 00:11:08', 'insert', 86, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 31),
(612, '2017-11-19 00:11:08', 'insert', 88, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 32),
(613, '2017-11-19 00:11:08', 'insert', 90, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 33),
(614, '2017-11-19 00:11:08', 'insert', 91, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 34),
(615, '2017-11-19 00:11:08', 'insert', 94, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 35),
(616, '2017-11-19 00:11:08', 'insert', 95, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 36),
(617, '2017-11-19 00:11:08', 'insert', 96, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 37),
(618, '2017-11-19 00:11:08', 'insert', 98, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 38),
(619, '2017-11-19 00:11:08', 'insert', 13, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 39),
(620, '2017-11-19 00:11:08', 'insert', 14, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 40),
(621, '2017-11-19 00:11:08', 'insert', 15, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 41),
(622, '2017-11-19 00:11:08', 'insert', 17, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 42),
(623, '2017-11-19 00:11:08', 'insert', 18, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 43),
(624, '2017-11-19 00:11:08', 'insert', 99, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 44),
(625, '2017-11-19 00:11:08', 'insert', 19, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 45),
(626, '2017-11-19 00:11:08', 'insert', 20, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 46),
(627, '2017-11-19 00:11:08', 'insert', 100, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 47),
(628, '2017-11-19 00:11:08', 'insert', 23, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 48),
(629, '2017-11-19 00:11:08', 'insert', 24, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 49),
(630, '2017-11-19 00:11:08', 'insert', 25, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 50),
(631, '2017-11-19 00:11:08', 'insert', 26, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 51),
(632, '2017-11-19 00:11:08', 'insert', 28, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 52),
(633, '2017-11-19 00:11:08', 'insert', 30, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 53),
(634, '2017-11-19 00:11:08', 'insert', 31, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 54),
(635, '2017-11-19 00:11:08', 'insert', 33, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 55),
(636, '2017-11-19 00:11:08', 'insert', 34, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 56),
(637, '2017-11-19 00:11:08', 'insert', 38, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 57),
(638, '2017-11-19 00:11:08', 'insert', 39, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 58),
(639, '2017-11-19 00:11:08', 'insert', 142, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 59),
(640, '2017-11-19 00:11:08', 'insert', 103, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 60),
(641, '2017-11-19 00:11:08', 'insert', 144, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 61),
(642, '2017-11-19 00:11:08', 'insert', 145, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 62),
(643, '2017-11-19 00:11:08', 'insert', 146, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 63),
(644, '2017-11-19 00:11:08', 'insert', 106, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 64),
(645, '2017-11-19 00:11:08', 'insert', 147, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 65),
(646, '2017-11-19 00:11:08', 'insert', 148, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 66),
(647, '2017-11-19 00:11:08', 'insert', 152, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 67),
(648, '2017-11-19 00:11:08', 'insert', 149, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 68),
(649, '2017-11-19 00:11:08', 'insert', 109, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 69),
(650, '2017-11-19 00:11:08', 'insert', 110, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 70),
(651, '2017-11-19 00:11:08', 'insert', 112, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 71),
(652, '2017-11-19 00:11:08', 'insert', 158, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 72),
(653, '2017-11-19 00:11:08', 'insert', 113, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 73),
(654, '2017-11-19 00:11:08', 'insert', 115, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 74),
(655, '2017-11-19 00:11:08', 'insert', 116, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 75),
(656, '2017-11-19 00:11:08', 'insert', 160, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 76),
(657, '2017-11-19 00:11:08', 'insert', 161, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 77),
(658, '2017-11-19 00:11:08', 'insert', 162, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 78),
(659, '2017-11-19 00:11:08', 'insert', 114, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 79),
(660, '2017-11-19 00:11:08', 'insert', 120, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 80),
(661, '2017-11-19 00:11:08', 'insert', 121, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 81),
(662, '2017-11-19 00:11:08', 'insert', 121, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 82),
(663, '2017-11-19 00:11:08', 'insert', 164, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 83),
(664, '2017-11-19 00:11:08', 'insert', 122, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 84),
(665, '2017-11-19 00:11:08', 'insert', 166, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 85),
(666, '2017-11-19 00:11:08', 'insert', 124, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 86),
(667, '2017-11-19 00:11:08', 'insert', 126, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 87),
(668, '2017-11-19 00:11:08', 'insert', 128, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 88),
(669, '2017-11-19 00:11:08', 'insert', 167, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 89),
(670, '2017-11-19 00:11:08', 'insert', 129, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 90),
(671, '2017-11-19 00:11:08', 'insert', 131, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 91),
(672, '2017-11-19 00:11:08', 'insert', 46, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 92),
(673, '2017-11-19 00:11:08', 'insert', 132, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 93),
(674, '2017-11-19 00:11:08', 'insert', 168, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 94),
(675, '2017-11-19 00:11:08', 'insert', 169, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 95),
(676, '2017-11-19 00:11:08', 'insert', 134, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 96),
(677, '2017-11-19 00:11:08', 'insert', 170, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 97),
(678, '2017-11-19 00:11:08', 'insert', 135, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 98),
(679, '2017-11-19 00:11:08', 'insert', 136, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 99),
(680, '2017-11-19 00:11:08', 'insert', 137, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 100),
(681, '2017-11-19 00:11:08', 'insert', 138, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 101),
(682, '2017-11-19 00:11:08', 'insert', 138, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 102),
(683, '2017-11-19 00:11:08', 'insert', 137, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 103),
(684, '2017-11-19 00:11:08', 'insert', 195, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 104),
(685, '2017-11-19 00:11:08', 'insert', 172, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 105),
(686, '2017-11-19 00:11:08', 'insert', 173, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 106),
(687, '2017-11-19 00:11:08', 'insert', 175, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 107),
(688, '2017-11-19 00:11:08', 'insert', 179, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 108),
(689, '2017-11-19 00:11:08', 'insert', 180, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 109),
(690, '2017-11-19 00:11:08', 'insert', 180, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 110),
(691, '2017-11-19 00:11:08', 'insert', 180, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 111),
(692, '2017-11-19 00:11:08', 'insert', 182, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 112),
(693, '2017-11-19 00:11:08', 'insert', 185, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 113),
(694, '2017-11-19 00:11:08', 'insert', 186, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 114),
(695, '2017-11-19 00:11:08', 'insert', 187, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 115),
(696, '2017-11-19 00:11:08', 'insert', 190, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 116),
(697, '2017-11-19 00:11:32', 'insert', 196, 'Reward limit alocation/delocation --> level 3: 1, level 4: 2', 'rewards', 302),
(698, '2017-11-19 00:12:27', 'insert', 196, 'Reward limit alocation/delocation --> level 3: 1, level 4: 2', 'rewards', 117),
(699, '2017-11-19 00:13:04', 'insert', 196, 'Reward limit alocation/delocation --> level 3: 1, level 4: 2', 'rewards', 117),
(700, '2017-11-19 00:13:24', 'insert', 196, 'Reward limit alocation/delocation --> level 3: 1, level 4: 2', 'rewards', 117),
(701, '2017-11-19 09:15:00', 'update', 1, 'Transaction successful', 'transactions_paypal', 188),
(702, '2017-11-19 09:15:20', 'update', 1, 'Transaction successful', 'transactions_paypal', 188),
(703, '2017-11-19 09:16:21', 'update', 1, 'Transaction successful', 'transactions_paypal', 188),
(704, '2017-11-19 09:16:48', 'update', 1, 'Transaction successful', 'transactions_paypal', 188),
(705, '2017-11-19 14:45:07', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 419),
(706, '2017-11-19 14:45:08', 'update', 11, 'User updated', 'users', 11),
(707, '2017-11-19 14:45:59', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 420),
(708, '2017-11-19 14:46:01', 'insert', 11, 'Transaction started', 'transactions_paypal', 198),
(709, '2017-11-19 14:46:59', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 421),
(710, '2017-11-19 14:47:00', 'insert', 11, 'Transaction started', 'transactions_paypal', 199),
(711, '2017-11-19 14:56:07', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 421),
(712, '2017-11-19 14:56:28', 'update', 196, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 0', 'rewards', 185),
(713, '2017-11-19 14:56:33', 'update', 196, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 0', 'rewards', 117),
(714, '2017-11-19 14:58:02', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 422),
(715, '2017-11-19 14:58:03', 'insert', 11, 'Transaction started', 'transactions_paypal', 200),
(716, '2017-11-19 14:59:02', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 422),
(717, '2017-11-19 14:59:24', 'insert', 11, 'Transaction started', 'transactions_paypal', 201),
(718, '2017-11-19 15:00:32', 'insert', 11, 'Transaction started', 'transactions_paypal', 202),
(719, '2017-11-19 15:02:03', 'insert', 11, 'Transaction started', 'transactions_paypal', 203),
(720, '2017-11-19 15:03:31', 'insert', 11, 'Transaction started', 'transactions_paypal', 204),
(721, '2017-11-19 15:04:55', 'update', 11, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 0', 'rewards', 420),
(722, '2017-11-19 15:04:58', 'insert', 11, 'Transaction started', 'transactions_paypal', 205),
(723, '2017-11-19 16:07:10', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 420),
(724, '2017-11-19 17:02:32', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 423),
(725, '2017-11-19 17:02:43', 'insert', 11, 'Transaction started', 'transactions_paypal', 206),
(726, '2017-11-19 17:03:27', 'update', 11, 'Reward limit successfuly merged with the user --> level 3: 0, level 4: 1', 'rewards', 423),
(727, '2017-11-19 17:03:30', 'insert', 11, 'Transaction started', 'transactions_paypal', 207),
(728, '2017-11-19 17:27:39', 'update', 11, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 0', 'rewards', 423),
(729, '2017-11-19 17:27:40', 'insert', 11, 'Transaction started', 'transactions_paypal', 208),
(730, '2017-11-19 17:28:54', 'update', 11, 'Transaction successful', 'transactions_paypal', 208),
(731, '2017-11-19 17:28:54', 'update', 11, 'User updated', 'users', 11),
(732, '2017-11-19 17:28:54', 'update', 11, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 0', 'rewards', 423),
(733, '2017-11-19 17:30:14', 'insert', 1, 'Transaction started', 'transactions_paypal', 209),
(734, '2017-11-19 17:30:49', 'insert', 63, 'User added', 'users', 63),
(735, '2017-11-19 17:30:51', 'insert', 63, 'Transaction started', 'transactions_paypal', 210),
(736, '2017-11-19 17:34:52', 'insert', 1, 'Transaction started', 'transactions_paypal', 211),
(737, '2017-11-19 17:37:33', 'insert', 1, 'Transaction started', 'transactions_paypal', 212),
(738, '2017-11-19 17:38:49', 'update', 1, 'Transaction successful', 'transactions_paypal', 212),
(739, '2017-11-19 17:38:49', 'update', 1, 'User updated', 'users', 1),
(740, '2017-11-19 17:39:44', 'insert', 64, 'User added', 'users', 64),
(741, '2017-11-19 17:39:45', 'insert', 64, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 424),
(742, '2017-11-19 17:39:46', 'insert', 64, 'Transaction started', 'transactions_paypal', 213),
(743, '2017-11-19 17:40:06', 'update', 64, 'Transaction successful', 'transactions_paypal', 213),
(744, '2017-11-19 17:40:06', 'update', 64, 'User updated', 'users', 64),
(745, '2017-11-19 17:40:06', 'update', 64, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 0', 'rewards', 424),
(746, '2017-11-19 20:54:08', 'insert', 65, 'User added', 'users', 65),
(747, '2017-11-19 20:54:10', 'insert', 65, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 425),
(748, '2017-11-19 20:54:14', 'insert', 65, 'Transaction started', 'transactions_paypal', 214),
(749, '2017-11-19 20:54:41', 'update', 65, 'Transaction successful', 'transactions_paypal', 214),
(750, '2017-11-19 20:54:41', 'update', 65, 'User updated', 'users', 65),
(751, '2017-11-19 20:56:09', 'insert', 66, 'User added', 'users', 66),
(752, '2017-11-19 20:56:11', 'insert', 66, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 426),
(753, '2017-11-19 20:56:12', 'insert', 66, 'Transaction started', 'transactions_paypal', 215),
(754, '2017-11-19 20:56:49', 'update', 66, 'Transaction successful', 'transactions_paypal', 215),
(755, '2017-11-19 20:56:49', 'update', 66, 'User updated', 'users', 66),
(756, '2017-11-19 20:56:49', 'update', 66, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 0', 'rewards', 426),
(757, '2017-11-19 21:26:12', 'insert', 67, 'User added', 'users', 67),
(758, '2017-11-19 21:26:13', 'insert', 67, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 427),
(759, '2017-11-19 21:26:15', 'insert', 67, 'Transaction started', 'transactions_paypal', 216),
(760, '2017-11-19 21:27:05', 'update', 67, 'Transaction successful', 'transactions_paypal', 216),
(761, '2017-11-19 21:27:05', 'update', 67, 'User updated', 'users', 67),
(762, '2017-11-19 21:27:17', 'delete', 67, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 427),
(763, '2017-11-19 21:38:27', 'insert', 68, 'User added', 'users', 68),
(764, '2017-11-19 21:38:28', 'insert', 68, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 428),
(765, '2017-11-19 21:38:33', 'insert', 68, 'Transaction started', 'transactions_paypal', 217),
(766, '2017-11-19 21:39:15', 'delete', 68, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 428),
(767, '2017-11-19 21:40:10', 'insert', 69, 'User added', 'users', 69),
(768, '2017-11-19 21:40:11', 'insert', 69, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 429),
(769, '2017-11-19 21:40:12', 'insert', 69, 'Transaction started', 'transactions_paypal', 218),
(770, '2017-11-19 21:40:29', 'update', 69, 'Transaction successful', 'transactions_paypal', 218),
(771, '2017-11-19 21:40:29', 'update', 69, 'User updated', 'users', 69),
(772, '2017-11-19 21:46:41', 'delete', 69, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 429),
(773, '2017-11-19 21:49:04', 'insert', 70, 'User added', 'users', 70),
(774, '2017-11-19 21:49:06', 'insert', 70, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 430),
(775, '2017-11-19 21:49:12', 'insert', 70, 'Transaction started', 'transactions_paypal', 219),
(776, '2017-11-19 21:50:32', 'delete', 70, 'Reward limit delocated, time expired --> level 3: 0, level 4: 1', 'rewards', 430),
(777, '2017-11-19 21:51:43', 'insert', 71, 'User added', 'users', 71),
(778, '2017-11-19 21:51:44', 'insert', 71, 'Reward limit alocation/delocation --> level 3: 0, level 4: 1', 'rewards', 431),
(779, '2017-11-19 21:51:45', 'insert', 71, 'Transaction started', 'transactions_paypal', 220),
(780, '2017-11-19 21:52:13', 'update', 71, 'Transaction successful', 'transactions_paypal', 220),
(781, '2017-11-19 21:52:13', 'update', 71, 'User updated', 'users', 71),
(782, '2017-11-19 21:52:13', 'update', 71, 'Reward limit successfuly merged with the user --> level 3: 0, level 4: 1', 'rewards', 431),
(783, '2017-11-19 21:56:33', 'insert', 72, 'User added', 'users', 72),
(784, '2017-11-19 21:56:34', 'insert', 72, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 432),
(785, '2017-11-19 21:56:38', 'insert', 72, 'Transaction started', 'transactions_paypal', 221),
(786, '2017-11-19 21:58:36', 'insert', 73, 'User added', 'users', 73),
(787, '2017-11-19 21:58:37', 'insert', 73, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 433),
(788, '2017-11-19 21:58:38', 'insert', 73, 'Transaction started', 'transactions_paypal', 222),
(789, '2017-11-19 21:59:59', 'insert', 74, 'User added', 'users', 74),
(790, '2017-11-19 22:00:00', 'insert', 74, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 434),
(791, '2017-11-19 22:00:02', 'insert', 74, 'Transaction started', 'transactions_paypal', 223),
(792, '2017-11-19 22:00:21', 'update', 74, 'Transaction successful', 'transactions_paypal', 223),
(793, '2017-11-19 22:00:21', 'update', 74, 'User updated', 'users', 74),
(794, '2017-11-19 22:00:21', 'update', 74, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 0', 'rewards', 434),
(795, '2017-11-19 22:10:30', 'insert', 1, 'Transaction started', 'transactions_paypal', 224),
(796, '2017-11-19 22:11:44', 'update', 1, 'Transaction successful', 'transactions_paypal', 224),
(797, '2017-11-19 22:13:11', 'insert', 75, 'User added', 'users', 75),
(798, '2017-11-19 22:13:12', 'insert', 75, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 435),
(799, '2017-11-19 22:13:14', 'insert', 75, 'Transaction started', 'transactions_paypal', 225),
(800, '2017-11-19 22:13:56', 'update', 75, 'Transaction successful', 'transactions_paypal', 225),
(801, '2017-11-19 22:13:56', 'update', 75, 'User updated', 'users', 75),
(802, '2017-11-19 22:15:59', 'insert', 76, 'User added', 'users', 76),
(803, '2017-11-19 22:16:01', 'insert', 76, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 436),
(804, '2017-11-19 22:16:05', 'insert', 76, 'Transaction started', 'transactions_paypal', 226),
(805, '2017-11-19 22:16:54', 'update', 76, 'Transaction successful', 'transactions_paypal', 226),
(806, '2017-11-19 22:16:54', 'update', 76, 'User updated', 'users', 76),
(807, '2017-11-19 22:18:27', 'delete', 72, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 432),
(808, '2017-11-19 22:18:27', 'delete', 73, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 433),
(809, '2017-11-19 22:18:27', 'delete', 75, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 435),
(810, '2017-11-19 22:18:27', 'delete', 76, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 436),
(811, '2017-11-19 22:25:07', 'insert', 77, 'User added', 'users', 77),
(812, '2017-11-19 22:25:09', 'insert', 77, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 437),
(813, '2017-11-19 22:25:10', 'insert', 77, 'Transaction started', 'transactions_paypal', 227),
(814, '2017-11-19 22:26:52', 'update', 77, 'Transaction successful', 'transactions_paypal', 227),
(815, '2017-11-19 22:26:52', 'update', 77, 'User updated', 'users', 77),
(816, '2017-11-19 22:27:07', 'delete', 77, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 437),
(817, '2017-11-19 22:32:51', 'insert', 78, 'User added', 'users', 78),
(818, '2017-11-19 22:32:53', 'insert', 78, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 438),
(819, '2017-11-19 22:32:54', 'insert', 78, 'Transaction started', 'transactions_paypal', 228),
(820, '2017-11-19 22:33:41', 'delete', 78, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 438),
(821, '2017-11-19 22:37:32', 'insert', 1, 'Transaction started', 'transactions_paypal', 229),
(822, '2017-11-19 22:40:05', 'insert', 1, 'Transaction started', 'transactions_paypal', 230),
(823, '2017-11-19 22:43:01', 'insert', 1, 'Transaction started', 'transactions_paypal', 231),
(824, '2017-11-19 22:46:27', 'insert', 11, 'Reward limit alocation/delocation --> level 3: -1, level 4: 0', 'rewards', 439),
(825, '2017-11-19 22:46:27', 'update', 11, 'User updated', 'users', 11),
(826, '2017-11-19 22:47:10', 'insert', 1, 'Transaction started', 'transactions_paypal', 232),
(827, '2017-11-19 22:48:03', 'update', 1, 'Transaction successful', 'transactions_paypal', 232),
(828, '2017-11-19 22:48:43', 'insert', 1, 'Transaction started', 'transactions_paypal', 233),
(829, '2017-11-19 22:49:23', 'update', 1, 'Transaction successful', 'transactions_paypal', 233),
(830, '2017-11-19 22:50:46', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 440),
(831, '2017-11-19 22:50:47', 'insert', 11, 'Transaction started', 'transactions_paypal', 234),
(832, '2017-11-19 22:51:01', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 440),
(833, '2017-11-19 22:53:30', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 441),
(834, '2017-11-19 22:53:31', 'insert', 11, 'Transaction started', 'transactions_paypal', 235),
(835, '2017-11-19 22:53:58', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 441),
(836, '2017-11-19 22:55:12', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 442),
(837, '2017-11-19 22:55:13', 'insert', 11, 'Transaction started', 'transactions_paypal', 236),
(838, '2017-11-19 22:55:30', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 442),
(839, '2017-11-19 22:57:33', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 443),
(840, '2017-11-19 22:57:34', 'insert', 11, 'Transaction started', 'transactions_paypal', 237),
(841, '2017-11-19 22:57:59', 'delete', 11, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 443),
(842, '2017-11-19 23:00:32', 'insert', 11, 'Reward limit alocation/delocation --> level 3: 1, level 4: 0', 'rewards', 444),
(843, '2017-11-19 23:00:37', 'insert', 11, 'Transaction started', 'transactions_paypal', 238),
(844, '2017-11-19 23:01:05', 'update', 11, 'Transaction successful', 'transactions_paypal', 238),
(845, '2017-11-19 23:01:05', 'update', 11, 'User updated', 'users', 11),
(846, '2017-11-19 23:01:05', 'update', 11, 'Reward limit successfuly merged with the user --> level 3: -1, level 4: 0', 'rewards', 419),
(847, '2017-11-19 23:01:05', 'update', 11, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 0', 'rewards', 423),
(848, '2017-11-19 23:01:05', 'update', 11, 'Reward limit successfuly merged with the user --> level 3: -1, level 4: 0', 'rewards', 439),
(849, '2017-11-19 23:01:05', 'update', 11, 'Reward limit successfuly merged with the user --> level 3: 1, level 4: 0', 'rewards', 444),
(850, '2017-11-19 23:02:21', 'insert', 79, 'User added', 'users', 79),
(851, '2017-11-19 23:02:23', 'insert', 79, 'Transaction started', 'transactions_paypal', 239),
(852, '2017-11-19 23:04:25', 'insert', 1, 'Transaction started', 'transactions_paypal', 240),
(853, '2017-11-19 23:05:14', 'update', 1, 'Transaction successful', 'transactions_paypal', 240),
(854, '2017-11-19 23:05:14', 'update', 1, 'User updated', 'users', 1),
(855, '2017-11-19 23:05:50', 'insert', 80, 'User added', 'users', 80),
(856, '2017-11-19 23:06:11', 'insert', 80, 'Transaction started', 'transactions_paypal', 241),
(857, '2017-11-19 23:06:41', 'update', 80, 'Transaction successful', 'transactions_paypal', 241),
(858, '2017-11-19 23:06:41', 'update', 80, 'User updated', 'users', 80),
(859, '2017-11-20 09:28:00', 'delete', 65, 'Reward limit delocated, time expired --> level 3: 1, level 4: 0', 'rewards', 425),
(860, '2017-11-21 05:52:31', 'insert', 1, 'Transaction started', 'transactions_paypal', 242),
(861, '2017-11-21 05:54:18', 'insert', 1, 'Transaction started', 'transactions_paypal', 243),
(862, '2017-11-21 05:56:58', 'update', 1, 'Transaction successful', 'transactions_paypal', 243),
(863, '2017-11-21 07:28:38', 'insert', 1, 'Transaction started', 'transactions_paypal', 244),
(864, '2017-11-21 07:29:24', 'update', 1, 'Transaction successful', 'transactions_paypal', 244),
(865, '2017-11-21 08:11:38', 'insert', 1, 'Transaction started', 'transactions_paypal', 245),
(866, '2017-11-21 08:12:13', 'update', 1, 'Transaction successful', 'transactions_paypal', 245),
(867, '2017-11-22 21:18:35', 'insert', 81, 'User added', 'users', 81),
(868, '2017-11-22 21:18:51', 'insert', 81, 'Transaction started', 'transactions_paypal', 246),
(869, '2017-11-22 21:19:32', 'update', 81, 'Transaction successful', 'transactions_paypal', 246),
(870, '2017-11-22 21:19:32', 'update', 81, 'User updated', 'users', 81),
(871, '2017-11-23 12:41:52', 'insert', 1, 'Transaction started', 'transactions_paypal', 247),
(872, '2017-11-23 13:00:50', 'insert', 1, 'Transaction started', 'transactions_paypal', 248),
(873, '2017-11-23 13:02:50', 'insert', 1, 'Transaction started', 'transactions_paypal', 249),
(874, '2017-11-23 13:16:39', 'insert', 1, 'Transaction started', 'transactions_paypal', 250),
(875, '2017-11-23 13:23:27', 'update', 1, 'Transaction successful', 'transactions_paypal', 250),
(876, '2017-12-15 11:13:49', 'insert', 53, 'Speaker added', 'speaker', 53),
(877, '2017-12-15 11:14:50', 'update', 53, 'Speaker updated', 'speaker', 53),
(878, '2017-12-15 11:25:31', 'insert', 54, 'Speaker added', 'speaker', 54),
(879, '2017-12-15 11:25:59', 'update', 54, 'Speaker updated', 'speaker', 54),
(880, '2017-12-15 11:26:53', 'insert', 28, 'Schedule added', 'schedule', 28),
(881, '2017-12-15 11:27:26', 'update', 28, 'Schedule updated', 'schedule', 28),
(882, '2017-12-15 11:30:12', 'insert', 54, 'Schedule and speaker linkedspeaker: 54schedule28', 'sc_sp', 28),
(883, '2017-12-15 11:30:28', 'insert', 54, 'Schedule and speaker linkedspeaker: 54schedule25', 'sc_sp', 25),
(884, '2017-12-15 11:30:42', 'insert', 37, 'Schedule and speaker linkedspeaker: 37schedule28', 'sc_sp', 28),
(885, '2017-12-15 11:31:40', 'delete', 54, 'Schedule and speaker unlinked.speaker: 54schedule28', 'sc_sp', 28),
(886, '2017-12-15 11:31:40', 'delete', 54, 'Schedule and speaker unlinked.speaker: 54schedule25', 'sc_sp', 25),
(887, '2017-12-15 11:31:40', 'delete', 54, 'Speaker deleted', 'speaker', 54),
(888, '2017-12-15 11:32:43', 'delete', 37, 'Schedule and speaker unlinked.speaker: 37schedule28', 'sc_sp', 28),
(889, '2017-12-15 11:32:43', 'delete', 28, 'Schedule deleted', 'schedule', 28),
(890, '2017-12-15 11:33:06', 'delete', 38, 'Schedule and speaker unlinked.speaker: 38schedule25', 'sc_sp', 25),
(891, '2017-12-15 11:34:00', 'update', 25, 'Schedule updated', 'schedule', 25),
(892, '2017-12-15 11:34:44', 'update', 53, 'Speaker updated', 'speaker', 53);

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `level3_limit` smallint(6) NOT NULL,
  `level4_limit` smallint(6) NOT NULL,
  `limit_check` int(11) NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `user_id`, `level3_limit`, `level4_limit`, `limit_check`, `created_at`) VALUES
(1, 4, 0, 1, 0, '2017-11-15 20:10:38'),
(2, 5, 0, 1, 0, '2017-11-15 20:18:18'),
(3, 8, 0, 1, 0, '2017-11-15 23:47:02'),
(4, 43, 0, 1, 0, '2017-11-16 17:32:28'),
(5, 45, 0, 1, 0, '2017-11-16 17:55:00'),
(6, 47, 0, 1, 0, '2017-11-16 17:58:19'),
(7, 48, 0, 1, 0, '2017-11-16 18:11:23'),
(8, 53, 0, 1, 0, '2017-11-16 18:52:55'),
(9, 55, 0, 1, 0, '2017-11-16 19:07:59'),
(10, 56, 0, 1, 0, '2017-11-16 19:10:43'),
(11, 57, 0, 1, 0, '2017-11-16 19:33:57'),
(12, 59, 0, 1, 0, '2017-11-16 19:55:14'),
(13, 60, 0, 1, 0, '2017-11-16 20:05:01'),
(14, 61, 0, 1, 0, '2017-11-16 20:08:14'),
(15, 63, 1, 0, 0, '2017-11-16 20:18:53'),
(16, 66, 0, 1, 0, '2017-11-16 20:49:37'),
(17, 70, 0, 1, 0, '2017-11-16 21:06:58'),
(18, 71, 0, 1, 0, '2017-11-16 21:08:21'),
(19, 72, 0, 1, 0, '2017-11-16 21:09:58'),
(20, 74, 1, 0, 0, '2017-11-16 21:26:25'),
(21, 75, 1, 0, 0, '2017-11-16 21:36:41'),
(22, 76, 0, 1, 0, '2017-11-16 21:39:34'),
(23, 78, 0, 1, 0, '2017-11-16 21:58:52'),
(24, 75, 0, 1, 0, '2017-11-16 22:12:19'),
(25, 80, 1, 0, 0, '2017-11-16 22:13:48'),
(26, 81, 1, 0, 0, '2017-11-16 22:59:45'),
(27, 82, 0, 1, 0, '2017-11-16 23:13:55'),
(28, 83, 1, 0, 0, '2017-11-16 23:23:00'),
(29, 84, 1, 0, 0, '2017-11-16 23:37:20'),
(30, 85, 0, 1, 0, '2017-11-16 23:46:02'),
(31, 86, 0, 1, 0, '2017-11-16 23:54:11'),
(32, 88, 0, 1, 0, '2017-11-17 00:21:22'),
(33, 90, 0, 1, 0, '2017-11-17 00:36:55'),
(34, 91, 1, 0, 0, '2017-11-17 00:50:31'),
(35, 94, 0, 1, 0, '2017-11-17 01:12:36'),
(36, 95, 0, 1, 0, '2017-11-17 01:22:34'),
(37, 96, 0, 1, 0, '2017-11-17 01:25:02'),
(38, 98, 0, 1, 0, '2017-11-17 02:26:14'),
(39, 13, 0, 1, 0, '2017-11-17 02:53:00'),
(40, 14, 1, 0, 0, '2017-11-17 02:53:45'),
(41, 15, 0, 1, 0, '2017-11-17 02:57:53'),
(42, 17, 0, 1, 0, '2017-11-17 02:59:17'),
(43, 18, 0, 1, 0, '2017-11-17 02:59:31'),
(44, 99, 0, 1, 0, '2017-11-17 03:06:19'),
(45, 19, 0, 1, 0, '2017-11-17 03:11:18'),
(46, 20, 0, 1, 0, '2017-11-17 03:19:05'),
(47, 100, 0, 1, 0, '2017-11-17 03:32:33'),
(48, 23, 1, 0, 0, '2017-11-17 03:35:53'),
(49, 24, 0, 1, 0, '2017-11-17 03:48:42'),
(50, 25, 0, 1, 0, '2017-11-17 03:54:58'),
(51, 26, 0, 1, 0, '2017-11-17 03:56:50'),
(52, 28, 1, 0, 0, '2017-11-17 04:03:42'),
(53, 30, 0, 1, 0, '2017-11-17 04:13:30'),
(54, 31, 0, 1, 0, '2017-11-17 04:18:56'),
(55, 33, 0, 1, 0, '2017-11-17 04:28:30'),
(56, 34, 0, 1, 0, '2017-11-17 04:33:39'),
(57, 38, 0, 1, 0, '2017-11-17 04:54:48'),
(58, 39, 0, 1, 0, '2017-11-17 04:57:58'),
(59, 142, 0, 1, 0, '2017-11-17 17:34:51'),
(60, 103, 0, 1, 0, '2017-11-17 17:37:09'),
(61, 144, 0, 1, 0, '2017-11-17 17:44:06'),
(62, 145, 0, 1, 0, '2017-11-17 17:49:41'),
(63, 146, 0, 1, 0, '2017-11-17 17:52:32'),
(64, 106, 0, 1, 0, '2017-11-17 18:21:12'),
(65, 147, 0, 1, 0, '2017-11-17 18:24:09'),
(66, 148, 0, 1, 0, '2017-11-17 18:27:54'),
(67, 152, 0, 1, 0, '2017-11-17 18:57:06'),
(68, 149, 0, 1, 0, '2017-11-17 19:06:33'),
(69, 109, 0, 1, 0, '2017-11-17 20:00:07'),
(70, 110, 0, 1, 0, '2017-11-17 20:04:49'),
(71, 112, 0, 1, 0, '2017-11-17 20:39:45'),
(72, 158, 0, 1, 0, '2017-11-17 21:14:47'),
(73, 113, 0, 1, 0, '2017-11-17 21:16:31'),
(74, 115, 0, 1, 0, '2017-11-17 21:33:45'),
(75, 116, 0, 1, 0, '2017-11-17 21:35:22'),
(76, 160, 0, 1, 0, '2017-11-17 21:44:34'),
(77, 161, 0, 1, 0, '2017-11-17 22:06:17'),
(78, 162, 0, 1, 0, '2017-11-17 22:08:27'),
(79, 114, 0, 1, 0, '2017-11-17 22:43:54'),
(80, 120, 0, 1, 0, '2017-11-17 23:17:07'),
(81, 121, 0, 1, 0, '2017-11-17 23:31:25'),
(82, 121, 0, 1, 0, '2017-11-17 23:35:29'),
(83, 164, 0, 1, 0, '2017-11-17 23:43:18'),
(84, 122, 0, 1, 0, '2017-11-17 23:45:42'),
(85, 166, 0, 1, 0, '2017-11-18 00:14:11'),
(86, 124, 0, 1, 0, '2017-11-18 00:42:19'),
(87, 126, 0, 1, 0, '2017-11-18 00:48:53'),
(88, 128, 0, 1, 0, '2017-11-18 00:52:01'),
(89, 167, 0, 1, 0, '2017-11-18 01:03:10'),
(90, 129, 0, 1, 0, '2017-11-18 01:07:57'),
(91, 131, 1, 0, 0, '2017-11-18 01:36:25'),
(92, 46, 1, 0, 0, '2017-11-18 01:47:00'),
(93, 132, 0, 1, 0, '2017-11-18 01:48:31'),
(94, 168, 0, 1, 0, '2017-11-18 02:17:19'),
(95, 169, 0, 1, 0, '2017-11-18 02:27:04'),
(96, 134, 1, 0, 0, '2017-11-18 03:25:37'),
(97, 170, 0, 1, 0, '2017-11-18 03:39:21'),
(98, 135, 0, 1, 0, '2017-11-18 04:07:42'),
(99, 136, 0, 1, 0, '2017-11-18 04:21:01'),
(100, 137, 0, 1, 0, '2017-11-18 04:24:58'),
(101, 138, 1, 0, 0, '2017-11-18 04:35:10'),
(102, 138, 1, 0, 0, '2017-11-18 04:37:18'),
(103, 137, 0, 1, 0, '2017-11-18 04:39:29'),
(104, 195, 0, 1, 0, '2017-11-18 17:39:33'),
(105, 172, 1, 0, 0, '2017-11-18 20:01:51'),
(106, 173, 1, 0, 0, '2017-11-18 20:12:22'),
(107, 175, 0, 1, 0, '2017-11-18 21:35:05'),
(108, 179, 0, 1, 0, '2017-11-19 00:12:18'),
(109, 180, 0, 1, 0, '2017-11-19 00:38:36'),
(110, 180, 0, 1, 0, '2017-11-19 00:43:57'),
(111, 180, 0, 1, 0, '2017-11-19 00:45:30'),
(112, 182, 0, 1, 0, '2017-11-19 01:29:41'),
(113, 185, 0, 1, 0, '2017-11-19 02:32:12'),
(114, 186, 0, 1, 0, '2017-11-19 02:53:42'),
(115, 187, 0, 1, 0, '2017-11-19 02:58:30'),
(116, 190, 0, 1, 0, '2017-11-19 03:40:37'),
(117, 196, 1, 0, 0, '2017-11-18 18:38:39'),
(185, 196, 1, 0, 0, '2017-11-18 18:38:39'),
(419, 11, -1, 0, 0, '2017-11-19 14:45:34'),
(423, 11, 1, 0, 0, '2017-11-19 17:28:05'),
(424, 64, 1, 0, 0, '2017-11-19 17:40:12'),
(426, 66, 1, 0, 0, '2017-11-19 20:56:37'),
(431, 71, 0, 1, 0, '2017-11-19 09:52:10'),
(434, 74, 1, 0, 0, '2017-11-19 10:00:27'),
(439, 11, -1, 0, 0, '2017-11-19 10:46:54'),
(444, 11, 1, 0, 0, '2017-11-19 11:00:58');

--
-- Triggers `rewards`
--
DELIMITER $$
CREATE TRIGGER `reward_audit_deleted` BEFORE DELETE ON `rewards` FOR EACH ROW BEGIN
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "delete", OLD.user_id, CONCAT("Reward limit delocated, time expired --> level 3: ", OLD.level3_limit, ", level 4: ", OLD.level4_limit), "rewards", OLD.id) ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `reward_audit_inserted` AFTER INSERT ON `rewards` FOR EACH ROW BEGIN
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "insert", NEW.user_id, CONCAT("Reward limit alocation/delocation --> level 3: ", NEW.level3_limit, ", level 4: ", NEW.level4_limit), "rewards", NEW.id) ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `reward_audit_updated` AFTER UPDATE ON `rewards` FOR EACH ROW BEGIN
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "update", NEW.user_id, CONCAT("Reward limit successfuly merged with the user --> level 3: ", NEW.level3_limit, ", level 4: ", NEW.level4_limit), "rewards", NEW.id) ;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `event_date` varchar(255) NOT NULL,
  `event_time` time NOT NULL,
  `track` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `title`, `info`, `event_date`, `event_time`, `track`) VALUES
(27, 'Test 2', 'Test 2 text', '22', '01:00:00', 'room 2'),
(25, 'Test 1', 'Something about this test schedule', '21', '03:58:00', 'room 1');

--
-- Triggers `schedule`
--
DELIMITER $$
CREATE TRIGGER `schedule_audit_delete` BEFORE DELETE ON `schedule` FOR EACH ROW BEGIN
DELETE FROM sc_sp
    WHERE sc_sp.sc_id = old.id;
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "delete", OLD.id, "Schedule deleted", "schedule", OLD.id) ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `schedule_audit_inserted` AFTER INSERT ON `schedule` FOR EACH ROW BEGIN
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "insert", NEW.id, "Schedule added", "schedule", NEW.id) ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `schedule_audit_update` AFTER UPDATE ON `schedule` FOR EACH ROW BEGIN
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "update", NEW.id, "Schedule updated", "schedule", NEW.id) ;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sc_sp`
--

CREATE TABLE `sc_sp` (
  `sc_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_sp`
--

INSERT INTO `sc_sp` (`sc_id`, `sp_id`) VALUES
(25, 36),
(27, 45);

--
-- Triggers `sc_sp`
--
DELIMITER $$
CREATE TRIGGER `sc_sp_audit_delete` AFTER DELETE ON `sc_sp` FOR EACH ROW BEGIN
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "delete", OLD.sp_id, CONCAT("Schedule and speaker unlinked.", "speaker: ",OLD.sp_id, "schedule", OLD.sc_id), "sc_sp", OLD.sc_id) ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `sc_sp_audit_insert` AFTER INSERT ON `sc_sp` FOR EACH ROW BEGIN
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "insert", NEW.sp_id, CONCAT("Schedule and speaker linked", "speaker: ",NEW.sp_id, "schedule", NEW.sc_id), "sc_sp", NEW.sc_id) ;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `speaker`
--

CREATE TABLE `speaker` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `displayLink` varchar(255) NOT NULL,
  `visibility` tinyint(1) DEFAULT NULL,
  `honoured` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speaker`
--

INSERT INTO `speaker` (`id`, `img`, `name`, `link`, `displayLink`, `visibility`, `honoured`) VALUES
(34, 'img/speakers/Blaire-White.jpg', 'Blaire White', 'https://twitter.com/MsBlaireWhite', '@MsBlaireWhite', 1, NULL),
(33, 'img/speakers/Bunty-king.jpg', 'Bunty King', 'https://twitter.com/realbuntyking', '@realbuntyking', 1, NULL),
(32, 'img/speakers/Andy-warski.jpg', 'Andy Warski', 'https://twitter.com/Andywarski', '@Andywarski ', 1, NULL),
(36, 'img/speakers/Sargon_of_Akkad.jpg', 'Sargon of Akkad', 'https://gab.ai/Sargonofakkad100', '@Sargonofakkad100', 1, NULL),
(37, 'img/speakers/Jeff-Holiday.jpg', 'Jeff Holiday', 'https://twitter.com/JeffHollandaise', '@JeffHollandaise', 1, NULL),
(38, 'img/speakers/chris-warski.jpg', 'Chris Warski', 'https://twitter.com/ChrisWarski', '@ChrisWarski ', 1, NULL),
(39, 'img/speakers/Matt-Jarbo.jpg', 'Matt Jarbo', 'https://twitter.com/mundanematt', '@mundanematt ', 1, NULL),
(40, 'img/speakers/ugQ5PpQc_400x400.jpg', 'Some Black Guy', 'https://twitter.com/Some_BlackGuy', '@Some_BlackGuy', 1, NULL),
(41, 'img/speakers/images.duckduckgo.jpg', 'Ruck Rucka Ali', 'https://twitter.com/iamRucka', '@iamRucka', 1, NULL),
(42, 'img/speakers/ZrPjO8aX_400x400.jpg', 'Roaming Millenial', 'https://twitter.com/RoamingMil', '@RoamingMil ', 1, NULL),
(43, 'img/speakers/dave-cullen.jpg', 'Dave Cullen', 'https://twitter.com/DaveCullenCF', '@DaveCullenCF', 1, NULL),
(44, 'img/speakers/0192db073aeb1073ba5f5772679bfaa8--amazing-atheist-the-amazing.jpg', 'TJ Kirk', 'https://twitter.com/amazingatheist', '@amazingatheist ', 1, NULL),
(45, 'img/speakers/Based-mama.jpg', 'Based Mama', 'https://twitter.com/based_mama', '@based_mama', 1, NULL),
(46, 'img/speakers/fO3eXLVz_400x400.jpg', 'Nicholas Goroff ', 'https://twitter.com/wizardofcause', '@wizardofcause ', 1, NULL),
(47, 'img/speakers/tEK0iPOZ_400x400.jpg', 'Arthur Rhetorical Entertainment', 'https://twitter.com/ArthuRhetorical', '@ArthuRhetorical ', 1, NULL),
(48, 'img/speakers/brian-martinez.jpg', 'Brian Martinez', 'https://twitter.com/Zanamaru', '@Zanamaru', 1, NULL),
(49, 'img/speakers/Oz9M_hUP_400x400.jpg', 'MrRepzion', 'https://twitter.com/MrRepzion', '@MrRepzion ', 1, NULL),
(50, 'img/speakers/-5ZIHGp__400x400.jpg', 'Blonde in the Belly of the Beast', 'https://twitter.com/Blondes_tweets', '@Blondes_tweets', 0, NULL),
(51, 'img/speakers/-MNEuk-4.jpg', 'Dmitry Krivochenitser', 'https://twitter.com/dimak5504', '@DimaK5504', 1, NULL),
(53, 'img/speakers/no-profile.gif', 'Christina Hoff Somers', 'https://twitter.com/', 'her\'s bio', 1, 1);

--
-- Triggers `speaker`
--
DELIMITER $$
CREATE TRIGGER `speaker_audit_delete` BEFORE DELETE ON `speaker` FOR EACH ROW BEGIN
DELETE FROM sc_sp
    WHERE sc_sp.sp_id = old.id;
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "delete", OLD.id, "Speaker deleted", "speaker", OLD.id) ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `speaker_audit_inserted` AFTER INSERT ON `speaker` FOR EACH ROW BEGIN
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "insert", NEW.id, "Speaker added", "speaker", NEW.id) ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `speaker_audit_update` AFTER UPDATE ON `speaker` FOR EACH ROW BEGIN
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "update", NEW.id, "Speaker updated", "speaker", NEW.id) ;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transactions_paypal`
--

CREATE TABLE `transactions_paypal` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `completed` tinyint(1) UNSIGNED ZEROFILL DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions_paypal`
--

INSERT INTO `transactions_paypal` (`id`, `user_id`, `payment_id`, `hash`, `completed`, `amount`, `created_at`) VALUES
(30, 9, 'PAY-6KT58221EU1224333LF4HXBQ', 'e93afcfdbe2027aa79e9c82088fcf8a8', 1, 50, '0000-00-00 00:00:00'),
(29, 9, 'PAY-7U090982TD2776701LF4HUNY', '24b020f588c016280e14fd98c11f0d73', 1, 25, '0000-00-00 00:00:00'),
(142, 11, 'PAY-4BB0544613614433KLGT7LKA', 'ab32d5e0fd45fae1d95de0013b071315', 1, 10, '2017-08-31 11:40:24'),
(27, 7, 'PAY-4FP553864P1458738LF3NYYI', '06800ed3db246ea8a63c6203d63dcc39', 1, 200, '0000-00-00 00:00:00'),
(26, 1, 'PAY-0X1304627X848772LLF26E7A', '0282eaaabc20a4e4e6469d8751113649', 1, 200, '0000-00-00 00:00:00'),
(25, 1, 'PAY-5A45525748304792ELF25AXI', 'e7d2a860e732f94940017a684c9061a8', 1, 25, '0000-00-00 00:00:00'),
(141, 43, 'PAY-6EL648792E094112ULGT22EI', '732c6f975a7d47418d31328a1498468f', 1, 50, '2017-08-30 18:30:41'),
(23, 2, 'PAY-2B316786708450031LF246KA', 'b1d10a800c74c82012c4d4ddc937409d', 1, 100, '0000-00-00 00:00:00'),
(22, 2, 'PAY-5KL596173C203093SLF245WI', '3cf5201ddd9b31019834be9b710f9a32', 1, 50, '0000-00-00 00:00:00'),
(21, 1, 'PAY-8RL26956488467515LF2LLJI', '3c377a16cbc992e9feccdbf2758391c4', 1, 50, '0000-00-00 00:00:00'),
(20, 1, 'PAY-1CX090582G9114105LF2LH5I', 'cefa1684045fbb0e134ddb0fc6613df6', 1, 50, '0000-00-00 00:00:00'),
(19, 1, 'PAY-0KE99927RX278033GLFZGFVQ', '53256e5c251fd3f2d63bdc3fc1b421b5', 0, 0, '2017-08-04 07:00:00'),
(18, 1, 'PAY-3AL960610E6809100LFY6MXA', '8f00d08bdcc197de67b18086abad9b5b', 1, 100, '0000-00-00 00:00:00'),
(31, 9, 'PAY-4C300591EW405883KLF4IVAA', 'beae69247ef5b0283735619078868ebc', 1, 100, '0000-00-00 00:00:00'),
(32, 8, 'PAY-8XN57292SF7901643LF4NBLI', '4718f29267e698c64cac5c4d07199f7e', 1, 25, '0000-00-00 00:00:00'),
(33, 8, 'PAY-0DV022789J182230HLF4NB5A', 'e496cecdc247b810d449df5a110b90a0', 1, 25, '0000-00-00 00:00:00'),
(34, 8, 'PAY-5D0882066R221991SLF4OF6Y', 'a7e2a0a9088107f61f096db1d611622a', 1, 50, '0000-00-00 00:00:00'),
(35, 1, 'PAY-3DR90673E28475038LF5OS7I', '9c74fe49147793fca2ef59c8f20ce246', 1, 100, '0000-00-00 00:00:00'),
(36, 11, 'PAY-70K69101R5115984KLF5QACI', '4ff1758dfa7b0291dde2d406002100e9', 1, 200, '0000-00-00 00:00:00'),
(37, 11, 'PAY-9KA59650G6139133YLF5VA6I', '2421e8d6e3845bab8a7ea3661479a1ca', 1, 50, '0000-00-00 00:00:00'),
(38, 11, 'PAY-6NE729070R2463634LF5VC6Y', '529debe9365b5cc85b0655c470694183', 0, 0, '0000-00-00 00:00:00'),
(39, 11, 'PAY-4UG16164C1166411NLF5VDMY', '175e53db6220dd3874c34a006df4cf9b', 1, 25, '0000-00-00 00:00:00'),
(40, 11, 'PAY-5UR806523R194634LLF5VEQY', '589332ec521b1d4896d9c781f7d09862', 0, 0, '0000-00-00 00:00:00'),
(41, 11, 'PAY-9AF32460MF685651BLF5VFGA', '48c47b102db5e4d85cb5d463dcf6e0c3', 1, 10, '0000-00-00 00:00:00'),
(42, 11, 'PAY-2RW35198TV053762KLF5VIDI', '339a0deb772fd56099e74a51e52b84f9', 1, 10, '0000-00-00 00:00:00'),
(43, 11, 'PAY-9FD13760WU757083LLF5VIOI', '0950b546ec6e9b0301c694288339b1ae', 0, 0, '0000-00-00 00:00:00'),
(44, 11, 'PAY-91571666JM193644MLF5VITQ', '95bf7771adffc39756033c1346980e8a', 1, 10, '0000-00-00 00:00:00'),
(45, 11, 'PAY-4TC561216A498191HLF5XMDA', '23980b44398121d06e583ecf7c16e5cc', 1, 10, '0000-00-00 00:00:00'),
(46, 11, 'PAY-8L7796328J0534143LF5XMKY', '5dae05fd000818c62ad4095d09debed7', 1, 10, '0000-00-00 00:00:00'),
(47, 11, 'PAY-2MD796908L1421148LF5XMSY', '35e1ef7d6dd596f678c2b2e4342872e3', 1, 10, '0000-00-00 00:00:00'),
(48, 11, 'PAY-199082794X694000GLF5XM2Y', '533b83cb321d1b0171956eb561cde7ca', 1, 200, '0000-00-00 00:00:00'),
(49, 11, 'PAY-8MP36302DG791500ALF5YYJA', '24113866dca24bc8bfb555e156809931', 0, 0, '0000-00-00 00:00:00'),
(50, 11, 'PAY-0MJ53456E23677733LF5YYRI', '02ab91e0814ee6f473e9f6d9a9335413', 1, 100, '0000-00-00 00:00:00'),
(51, 11, 'PAY-1HU90407KC304151ALGAODVQ', 'b1fb3353b967db93f742c1bef9121a2f', 1, 150, '0000-00-00 00:00:00'),
(52, 11, 'PAY-4VV65997R7326615RLGAOD6Q', '88d0e934818dbfd4075df606d98ea392', 1, 250, '0000-00-00 00:00:00'),
(53, 11, 'PAY-9VN86179K52360317LGBVHKI', '80dea8dbf5362f75d4172b67938522b5', 1, 50, '0000-00-00 00:00:00'),
(54, 11, 'PAY-12519847857361829LGCCVYQ', '7e5b3370b3861398285f6fa5d3f35f94', 1, 50, '0000-00-00 00:00:00'),
(55, 11, 'PAY-9G485383LN802612LLGCCWHQ', 'd487b35bbad32fcfcd5526489d5935c0', 0, 0, '0000-00-00 00:00:00'),
(56, 11, 'PAY-26942608H4005721ULGCCYBI', 'c6c36c4c2a6c1de8839965d3ec12bc59', 1, 25, '0000-00-00 00:00:00'),
(57, 11, 'PAY-7MV36946W5317383MLGCCZWA', '2762995948d338a66f8fdefeb48bfcda', 1, 25, '2017-08-04 08:14:16'),
(58, 0, 'PAY-5JG21816AW996171RLGCGGPY', '87e9823a87d98ea48cc4d34f02317d3c', 1, 150, '2017-08-04 12:06:23'),
(59, 0, 'PAY-1FG03641UU968502RLGCGHHY', '177fb724c25c4545689acdad304d5791', 1, 250, '2017-08-04 12:07:59'),
(60, 11, 'PAY-5YW838562E491461SLGFDFPA', '5f985fa957393d4c482b53d634ff86a1', 1, 25, '2017-08-08 21:53:00'),
(61, 1, 'PAY-335745954F4625417LGFKE2Q', '54d75da753699b075c4f4f7e2ec3a309', 1, 10, '2017-08-09 05:49:30'),
(62, 1, 'PAY-7JT941874F684262ELGFPNQA', 'add79a9e7f7354c71aa719c0729db320', 0, 0, '2017-08-09 11:49:20'),
(63, 1, 'PAY-7RY10518EG7364425LGF7BNY', '617674c863086f6ccedd80c395b2e6d1', 0, 0, '2017-08-10 05:35:51'),
(64, 1, 'PAY-0H062931KY859680MLGGHY5Q', 'd6f5a1ef22b0726a3ec1b760c2fcd179', 1, 50, '2017-08-10 15:32:06'),
(65, 1, 'PAY-20B04138W5274952VLGGH2YY', 'f3bc459143024a9ff6a6d28281fd7bcd', 1, 150, '2017-08-10 15:36:03'),
(66, 1, 'PAY-4A8869876V665912NLGG5FEA', 'dc4952891eb066450216659c47f876f5', 1, 10, '2017-08-11 15:51:44'),
(67, 1, 'PAY-9D525067E97622158LGI4KKQ', '0c80594627d42b04ff33da62123d1036', 0, 0, '2017-08-14 15:43:38'),
(68, 11, 'PAY-34M64429C65718219LGI4LZY', '3f77ec7ec9b5691c6f2be4532124d7de', 0, 0, '2017-08-14 15:46:47'),
(69, 1, 'PAY-7VT71079YC5095240LGJAUGY', '986ea6b4b339bfbf5a9d9ff246d2c586', 1, 10, '2017-08-14 20:37:47'),
(70, 1, 'PAY-6M988824HP4698212LGJAXFI', '149921e4f337184daede65a1e7d6f326', 1, 10, '2017-08-14 20:44:05'),
(71, 1, 'PAY-0Y5952839M853150PLGJAX5A', '5633d65aeafa295a362e6069206800ba', 1, 10, '2017-08-14 20:45:40'),
(72, 1, 'PAY-9ET928289J9950614LGJAYQI', '15ad9e0d9afe0333aab0b0c92ebe4454', 1, 10, '2017-08-14 20:46:57'),
(73, 1, 'PAY-1G57733040227251ULGJAY5Y', '81f3ec9dd93a74501d75c35ca7e19f0a', 1, 25, '2017-08-14 20:47:51'),
(74, 1, 'PAY-5VF89356PR933783HLGJAZSY', '39104d05f70260ea47b3e9318cafb610', 1, 10, '2017-08-14 20:49:16'),
(75, 18, 'PAY-9H984198YB572133DLGJPMXY', 'f3fcdc17c07e20bc5b514bf18679b205', 1, 50, '2017-08-15 13:25:51'),
(76, 18, 'PAY-2RT20948A8471822CLGJPNJQ', '868e0f892b90328982498b8c9b9773e2', 1, 150, '2017-08-15 13:27:02'),
(77, 1, 'PAY-5S3723989X911210DLGJPOPQ', '45e6c34bb39e1534582f4bedad5d3e0c', 1, 25, '2017-08-15 13:29:35'),
(78, 1, 'PAY-47A66989R4276402MLGJPO5A', 'f8ab31d4e99311924c9a21bb8a9a2588', 1, 10, '2017-08-15 13:30:28'),
(79, 1, 'PAY-2TM94043N6962223RLGJPPNI', 'acdd4b2a36168ae4bf2f32b52ee6aa70', 1, 150, '2017-08-15 13:31:33'),
(80, 26, 'PAY-3TN17871SK420591HLGJP7SY', '94ad75ed946e6232564ff7ed4fe19cab', 1, 250, '2017-08-15 14:06:03'),
(81, 1, 'PAY-7VV52260V8159744ULGJQDHY', '3d9005313b0fb357f582a77bee046487', 0, 0, '2017-08-15 14:13:51'),
(82, 29, 'PAY-2BT146187B246754FLGJQF2Q', '4d10ec29450e97701b2d0233c78a906c', 1, 250, '2017-08-15 14:19:22'),
(83, 30, 'PAY-78S48839DC214422BLGJQJFA', 'd57fc59b6ce843d130822776ecca09b0', 0, 0, '2017-08-15 14:26:28'),
(84, 31, 'PAY-5NX93921DR538512NLGJQKSI', 'a911f55796205a9299caab16392444b6', 1, 250, '2017-08-15 14:29:29'),
(85, 32, 'PAY-57038352KA643280LLGJQRVY', '4d21903e9be3d171cc9f4ffd9f95f4af', 1, 250, '2017-08-15 14:44:39'),
(86, 33, 'PAY-1MV11224Y0772574FLGJQV3Q', '050806221ed952e4bec39ba67a36b30f', 1, 250, '2017-08-15 14:53:34'),
(87, 34, 'PAY-35019449FF7149520LGJROZI', 'e17cf0b0c4a30a2e7e4e456453acd889', 1, 50, '2017-08-15 15:46:45'),
(88, 34, 'PAY-46309427F5880654RLGJSA4Q', '39f771fcd7aa5bde6093efe09a266481', 1, 50, '2017-08-15 16:25:22'),
(89, 35, 'PAY-62A24384DY2708117LGJSP7Q', 'fd19d19e62ddcc74636cbadddc7c3c0c', 1, 250, '2017-08-15 16:57:34'),
(90, 36, 'PAY-7WM0765910305823WLGJSS5I', '567c640146df15f84da77141309599a2', 1, 10, '2017-08-15 17:03:49'),
(91, 37, 'PAY-42U13112BL373244YLGKAXFY', 'ad3e9384e4dbef58543f71785c479fe6', 1, 250, '2017-08-16 09:08:39'),
(92, 11, 'PAY-8B65855398702520MLGKMIBI', 'd306a58cdb1005766cdd68628e0cd753', 1, 10, '2017-08-17 07:15:33'),
(93, 11, 'PAY-91533681AN191813RLGKTHAA', '98e69b5a1b9a12f40e786219b1bf1195', 0, 0, '2017-08-17 15:11:13'),
(94, 11, 'PAY-34171629WN811781ULGKTIUQ', '5b165fcf6faffb08296a6c59adb213b5', 0, 0, '2017-08-17 15:14:42'),
(95, 11, 'PAY-3C6582677S893313KLGKTMNQ', '6c54e9636edd4a444ebe6062df6576e3', 0, 0, '2017-08-17 15:22:46'),
(96, 11, 'PAY-2EA22355YW735810YLGKTNSQ', '659d6cbe42a32642f7a19f1b36a6b26b', 1, 10, '2017-08-17 15:25:14'),
(97, 11, 'PAY-53E05637MG372890ULGKTPVQ', '95521d4702db4f4d4000dec3f8b86794', 1, 10, '2017-08-17 15:29:42'),
(98, 11, 'PAY-7G020087FN714132RLGKTQWA', 'e754cf0d416f0617105615c6febdd598', 1, 10, '2017-08-17 15:31:52'),
(99, 11, 'PAY-4P894927Y3397441PLGKTRGQ', 'f276e30cee56c3d9bbb776a6e17d36b4', 1, 10, '2017-08-17 15:32:58'),
(100, 11, 'PAY-7MR84940FC3359307LGKTSEY', 'a0d9e9cead11ae5e9fd2b83f0e6447bf', 1, 10, '2017-08-17 15:34:59'),
(101, 11, 'PAY-3HP22272B1920242SLGKTUYQ', 'a57e8a2c4a74d697a0e96defe58db2a9', 1, 10, '2017-08-17 15:40:34'),
(102, 11, 'PAY-355553581S590832ELGKTVEA', 'd5c921a03907eb8a4f9afaa2a72ead0f', 0, 0, '2017-08-17 15:41:21'),
(103, 11, 'PAY-6KC671273M493801PLGKTVLY', 'ad75fb5064762db261e841c743556785', 1, 10, '2017-08-17 15:41:51'),
(104, 11, 'PAY-15S660026U596845ALGKTVYY', '6ec8fc502664ab142d8ffacbf16e9011', 1, 10, '2017-08-17 15:42:43'),
(105, 34, 'PAY-6UJ15584VL718342RLGKUM4A', '3cabfff3ce5d40001c46290e986c5456', 1, 250, '2017-08-17 16:32:00'),
(106, 1, 'PAY-7UC75476S68649014LGKUNMQ', '67322f6e252ff57ebba14f2e6ab90702', 1, 150, '2017-08-17 16:33:06'),
(107, 11, 'PAY-7R2829737B2949516LGKWHNY', '1badcf7b813913ebd4099d9f182d2aa9', 1, 10, '2017-08-17 18:36:55'),
(108, 11, 'PAY-7BC88257A0613390BLGKWJCA', '082450e47685690753f59319c2b88311', 0, 0, '2017-08-17 18:40:24'),
(109, 11, 'PAY-7KG71357R72977053LGKWJCY', 'fd5335b9503474f8e79169887d9f7d79', 1, 10, '2017-08-17 18:40:27'),
(110, 1, 'PAY-16R205643C400982VLGLI3JY', '8f1212fc455e9fb3edcfdde2b0619f60', 1, 25, '2017-08-18 15:48:07'),
(111, 38, 'PAY-8JC68954E8360960ELGLI53A', '7d5543c750ed549039b2057683588572', 1, 150, '2017-08-18 15:53:32'),
(112, 1, 'PAY-1EA893474F864100ELGLI6VI', '1b2ac1c8f302bda63214db789c6454a4', 1, 50, '2017-08-18 15:55:18'),
(113, 1, 'PAY-1KC00158HH7318929LGLJEFI', 'cdecb33967b62b81b1c8c7a83921dfe1', 1, 250, '2017-08-18 16:07:01'),
(114, 38, 'PAY-0C841400N10083908LGLJE2I', 'a4ad5c330f7f72c9b6bbcf2486d03e78', 1, 250, '2017-08-18 16:08:26'),
(115, 1, 'PAY-8K876618TR929860DLGLJGJA', '765aaf9311b9bcc0e346e1ba434d9f6d', 1, 250, '2017-08-18 16:11:32'),
(116, 39, 'PAY-4NU09280TY796654RLGLSCJQ', '2dccfefdd5627478bf399436de796e31', 0, 0, '2017-08-19 02:17:26'),
(117, 40, 'PAY-7V151303TV585374LLGLSELA', 'a8e6bb373d7da22d600bbd7d3410710c', 0, 0, '2017-08-19 02:21:48'),
(118, 11, 'PAY-36B36569GH628720YLGLSQCA', 'ace2f94e8b8ca4b833abbccef8d3ad4c', 0, 0, '2017-08-19 02:46:48'),
(119, 11, 'PAY-92749941V3795884ELGL3RSY', '4162de6c1176b854dc6f10baa84a3125', 1, 10, '2017-08-19 13:04:27'),
(120, 11, 'PAY-31G47139YF6257015LGL3SBI', 'd772c3e034fdc8fea81dff1bf812d201', 1, 10, '2017-08-19 13:05:25'),
(121, 41, 'PAY-19938361EU4490919LGO6Z4I', 'ac203850d2225dc4d72695d7709c298c', 1, 150, '2017-08-24 06:00:33'),
(122, 11, 'PAY-1702244594118051LLGQTC7Q', '0a5ddcda339f2ad8d50a0b1fac54661f', 1, 10, '2017-08-26 17:29:50'),
(123, 1, 'PAY-7EU51111W3370283TLGQUZLQ', '476a51b66785073e6adc8f0df3242a8e', 1, 10, '2017-08-26 19:25:50'),
(124, 1, 'PAY-26E85821KD459004LLGQXL6Y', '02cc9009e6e135c36437ff93acb45d71', 1, 10, '2017-08-26 22:22:03'),
(125, 1, 'PAY-55U3963397162013YLGQXP7Q', 'ca2c49b246b26cb752e09676e9f1aefd', 1, 10, '2017-08-26 22:30:38'),
(126, 11, 'PAY-3CC01412VA114035DLGQXZSI', '6448ff0cdd40046f9d779c182f3e2451', 1, 10, '2017-08-26 22:51:05'),
(127, 1, 'PAY-5EB34059EF504743TLGQX2VA', '5777da80b59d6a36cb5955a279524ea7', 1, 25, '2017-08-26 22:53:24'),
(128, 11, 'PAY-68L25118VA742583LLGQYIFY', '1bb83216464179f64c6f8cc379fdcb0c', 1, 10, '2017-08-26 23:22:15'),
(129, 11, 'PAY-8VG06991XW834312MLGQ2NRY', 'd14e53dea7e0bedb08491f4393198f08', 1, 10, '2017-08-26 13:50:15'),
(130, 11, 'PAY-0FW31040T41057454LGRLPLQ', '600baf6476f09c6e2f2ade94108cc507', 1, 10, '2017-08-27 09:14:38'),
(131, 1, 'PAY-5NK58947SU092220TLGRM52I', '8929bb64fc55fac81f1d29af3dcef06e', 1, 250, '2017-08-27 10:53:45'),
(132, 38, 'PAY-7F99618256713990ALGRM7HI', '3c07029f59b91e8ce96ec76813f219b7', 1, 150, '2017-08-27 10:56:45'),
(133, 1, 'PAY-1YF51644WJ750463GLGSBQ6Y', 'aa7949498814e1125b34b77c455d6218', 1, 10, '2017-08-28 10:19:55'),
(134, 38, 'PAY-30E45626AD278483MLGSCXDI', '8da3ae423f281d813fad99a079a5b36f', 1, 250, '2017-08-28 11:41:17'),
(135, 1, 'PAY-98P561518L5290934LGSDJYY', '67b2b98158e9fb7f8890c947d687b188', 0, 0, '2017-08-28 12:21:07'),
(136, 1, 'PAY-5XS337811N245253MLGSDLAI', 'eabb3b8c1b7a07b9b7ceb4a72e0c4198', 1, 10, '2017-08-28 15:23:45'),
(137, 1, 'PAY-90473022J90975228LGTK6OQ', '44019c55c09bb458fade56a718f231c3', 1, 50, '2017-08-30 12:27:38'),
(138, 42, 'PAY-36N83343A0940594GLGTLGJA', '6bf7eb6cb7dd600d8acdeefb4efe5443', 1, 250, '2017-08-30 12:44:20'),
(139, 42, 'PAY-8JE69098KA245631DLGTLXHY', '26440f1efa8828012af5ebc3e017efbd', 1, 50, '2017-08-30 13:20:31'),
(140, 42, 'PAY-9K907486KB738523PLGTLZBI', 'ac5d1314784a6f9610784a9d378e064a', 1, 150, '2017-08-30 13:24:21'),
(143, 11, 'PAY-0V5373746J304013XLGT7RHQ', '8382459c2dba9b70ec82dc5f27005bb7', 1, 10, '2017-08-31 11:53:02'),
(144, 44, 'PAY-5NN94239HX517072SLGX776A', '754b8e84adce113cb33913286486f010', 1, 50, '2017-09-06 14:02:33'),
(145, 1, 'PAY-05N000620D753480FLGY26BY', 'ce71a2d7044db7a3b4ecb0a5998abb50', 1, 10, '2017-09-07 08:41:43'),
(146, 11, 'PAY-332782142Y4059112LGY26RA', 'bc125c825f797f20b0d34141aef0fd91', 1, 10, '2017-09-07 08:42:44'),
(147, 45, 'PAY-8RD107308G159590JLGY3ACQ', 'c69598a047b02dec5d7118252904db72', 1, 0, '2017-09-07 08:46:02'),
(148, 1, 'PAY-7WX39093WM157305YLGY3B4I', 'c8569ce61aea6080d0bebd3d5f3b0d8b', 1, 0, '2017-09-07 08:49:53'),
(149, 1, 'PAY-8NW937570V599081YLGY3H7I', '111aacc20bacfda9f51be3606c7e5693', 1, 0, '2017-09-07 09:02:53'),
(150, 1, 'PAY-2YE148545T1690342LGZ4Y4I', '3dfb0505e1888ec961157c3ec28fa91f', 1, 0, '2017-09-09 11:11:45'),
(151, 46, 'PAY-8PE428997G5365718LGZ42LA', '795a69946e60fae04f6a15ad642b5b1e', 1, 0, '2017-09-09 11:14:52'),
(152, 46, 'PAY-3GG3968190360991VLGZ43HQ', '297048eb4f8293307eabe996afbb3bc1', 1, 0, '2017-09-09 11:16:46'),
(153, 46, 'PAY-1F987431CH2814646LGZ457A', '6d42fefbd43825c10d48847c624016bc', 1, 0, '2017-09-09 11:22:36'),
(154, 1, 'PAY-1G49981023537451VLG2RDAY', 'e2dd6fa7500b1cabff4c1a8331f6ceec', 1, 0, '2017-09-10 10:18:43'),
(155, 1, 'PAY-2RL9860974999003FLG2RJUI', '48c3965184d5324ccd77e44f94270008', 1, 0, '2017-09-10 10:32:49'),
(156, 1, 'PAY-35974854KU928784XLG2RKCQ', '27bffe7fe8d0c204d1dbac2977e580cb', 1, 0, '2017-09-10 10:33:46'),
(157, 1, 'PAY-9RN663944S2724412LG2RLWQ', '93961c1093b23747e622f859b8b4827b', 0, 0, '2017-09-10 10:37:14'),
(158, 11, 'PAY-9CS96153UH8051147LG2RNAI', 'd64529784cebfbb5b57bf63790d1d9e1', 1, 0, '2017-09-10 10:40:01'),
(159, 11, 'PAY-43N20111NT043340NLG2RN5Y', 'c0b6cf497c04dfa08910eb433afbb1e1', 1, 0, '2017-09-10 10:41:59'),
(160, 11, 'PAY-3EG0974838648720NLG2ROKY', 'dd78440052bed85a605252866895b84d', 1, 10, '2017-09-10 10:42:52'),
(161, 11, 'PAY-1ST54680V3878870XLG2RQQQ', 'ce20c81c44513cb2b707d07a9406865e', 1, 10, '2017-09-10 10:47:30'),
(162, 11, 'PAY-5LT06683DP527823RLG2RQ2A', 'ffde6699ffcfbb2cc3ea8cd418e9a7d4', 1, 25, '2017-09-10 10:48:08'),
(163, 11, 'PAY-7C8684016J176122NLG2RROI', 'c4b61e0dd631dfee857da4ef5a7fa013', 1, 10, '2017-09-10 10:49:29'),
(164, 11, 'PAY-0U7619107L572913JLG2SPPQ', '5f686651ddec33a0c44f6207ddb81f67', 0, 0, '2017-09-10 11:53:34'),
(165, 11, 'PAY-2C999499V72730140LG2TTJI', '20e0e7c21154d566bb80dc76456ec371', 0, 0, '2017-09-10 13:09:57'),
(166, 11, 'PAY-4PJ180010C854620XLG2TWJA', '3b019cdf2ce0d59e8e8e45132142d29a', 0, 0, '2017-09-10 13:16:20'),
(167, 11, 'PAY-1S24900065810430ELG2TYSY', 'e0948b9aaa3fbda731ca83e19afa38e9', 0, 0, '2017-09-10 13:21:15'),
(168, 1, 'PAY-35E45903TX8682159LG2ZGPI', '40c85127e85f4474ebc0c3f3fd7e54a2', 1, 10, '2017-09-10 19:32:13'),
(169, 1, 'PAY-5H7378743E983852PLG2ZH4Y', 'bbae69cd9a9dfee65a79bd4024420f83', 0, 0, '2017-09-10 19:35:15'),
(170, 1, 'PAY-3F280773XF034090LLG2ZLNI', '27e22398d92ff01528b211e5851dc0d6', 0, 0, '2017-09-10 19:42:45'),
(171, 1, 'PAY-3SV52718NK5528152LG22DOY', '62c7676fb8b06e1368138afd2ccb5205', 1, 10, '2017-09-10 08:34:03'),
(172, 11, 'PAY-4E570751LY8301449LG22F7Q', '7c1147edd3d28b77dc55b3413b847c27', 0, 0, '2017-09-10 08:39:26'),
(173, 11, 'PAY-9JN98416BW2422713LG22IDQ', 'e933fc9eeaae4bbe4101326142576463', 0, 0, '2017-09-10 08:43:58'),
(174, 11, 'PAY-9PP47601BE5840414LG22JGA', '2f59189160d40df2e32e06569fb6f248', 1, 150, '2017-09-10 08:46:16'),
(175, 1, 'PAY-06K90307RC3495645LG3FGUY', '0e07dc3e27afd5ce12d3c7748eff951b', 0, 0, '2017-09-11 09:11:47'),
(176, 11, 'PAY-9YX22329FS469193JLG3FIVY', '11c6ff7397a0f4c28ef612be5305cc06', 1, 10, '2017-09-11 09:16:07'),
(177, 46, 'PAY-30D13969TR8716431LG4EAKY', '3e863855e67eba4f39e328d1c5479a3c', 1, 150, '2017-09-12 08:14:35'),
(178, 46, 'PAY-01S09369N37784315LG4EBFA', 'f403f4e78792d6426019e7356e240bdd', 1, 150, '2017-09-12 08:16:20'),
(179, 47, 'PAY-8MJ28175G2459315DLIE54TI', 'ffc2e621e4869383a5d2ba3eff3c1161', 1, 10, '2017-11-13 18:03:14'),
(180, 47, 'PAY-97D429040H957412WLIE6BHA', '367900ed1b7b92bd48762631e5abab0e', 1, 25, '2017-11-13 18:13:06'),
(181, 47, 'PAY-2NP31557LB701703KLIE6B6Y', 'cc7ff646fb654f49cf0d26c96a055c41', 1, 50, '2017-11-13 18:14:41'),
(182, 47, 'PAY-6Y790370Y2867022CLIE6CLA', 'e4326c32812cbcb9e638659375f755cd', 1, 150, '2017-11-13 18:15:30'),
(183, 47, 'PAY-5KY27305W58890236LIE6DUY', '7b34f2244c2825bfbd0705a117a8c33e', 1, 250, '2017-11-13 18:18:17'),
(184, 11, 'PAY-6GR85132V4076092CLIFT7XI', '275bca59328a50f6c92c2aa1a0c33a92', 1, 20, '2017-11-14 19:11:47'),
(185, 1, 'PAY-0EY719606G121254FLIF2XEQ', '2d37af9fcc26a41de683ba7e2e4ed930', 0, 0, '2017-11-14 14:51:21'),
(186, 1, 'PAY-6VX35943GG4568633LIGIXLI', '03e8c26c8dddeb66f7674a28b0eec197', 0, 0, '2017-11-15 18:47:32'),
(187, 1, 'PAY-0Y0732281M6625020LIGIYVA', 'f8859896306e0de7a6258c12bf19f586', 0, 0, '2017-11-15 18:50:19'),
(188, 1, 'PAY-1F3146536F7019002LIGK2CY', 'c7575c71d9a0b4dd89635cb1bbbb2be7', 1, 80000, '2017-11-15 09:09:54'),
(189, 1, 'PAY-8BA45318V46969118LIGN6OY', 'e949723e97bebdac65ee0136ff35388c', 1, 232, '2017-11-15 12:44:03'),
(190, 53, 'PAY-7J688932J8361952PLIGO34A', '6937d4a03f68a96aa162cbad645dbccb', 1, 250, '2017-11-15 13:46:48'),
(191, 54, 'PAY-92J20168BP1673815LIGO6QQ', 'a27297ec42203bba4a027169f7405957', 1, 10, '2017-11-15 13:52:25'),
(192, 56, 'PAY-9DT24275T1175742WLIICNQA', '3eff736daa5168fe1fe256125715cafd', 0, 0, '2017-11-18 12:26:02'),
(193, 11, 'PAY-0SP72569MP957800NLIICPJY', '2e3bc6f1f659bdfe3b83e6ffe9ae0f1e', 1, 250, '2017-11-18 12:29:52'),
(194, 11, 'PAY-1UT3247825122100MLIICXAY', '3a81cb716b4b18d8e81cb3b5afb3c46d', 0, 0, '2017-11-18 12:46:21'),
(195, 11, 'PAY-2W8268494X717450WLIICXFI', '0c656acb00c0cebfac6003952854a024', 0, 0, '2017-11-18 12:46:38'),
(196, 11, 'PAY-2AG300403A6637800LIICYGQ', '637947775d04d9ef2247019cb6cc81b2', 0, 0, '2017-11-18 12:48:51'),
(197, 61, 'PAY-0LS75643G4678715TLIIKHBQ', 'd9b53777680aff083d16804b14663d82', 0, 0, '2017-11-18 09:18:23'),
(198, 11, 'PAY-2E253165HK8911745LIIZSKA', '63d10c34afee3da0ac9bcb9cd6e6d1bb', 0, 0, '2017-11-19 14:46:27'),
(199, 11, 'PAY-4YA50970BP0095200LIIZSZA', '26b1babaa638c12e0253bca0e7e2ec61', 0, 0, '2017-11-19 14:47:27'),
(200, 11, 'PAY-06S33855FM045741LLIIZX6Y', '9a520119c9bbf3e8f4c84a47c6b6b5f6', 0, 0, '2017-11-19 14:58:30'),
(201, 11, 'PAY-1T1107148E024122ELIIZYTA', '9864fc307fd196869ef8ec7c1797cb67', 0, 0, '2017-11-19 14:59:51'),
(202, 11, 'PAY-3VP81720J9883952HLIIZZDY', '67cb0510a1083d89a9f6c5f297cb26d2', 0, 0, '2017-11-19 15:00:58'),
(203, 11, 'PAY-6N887374DD587294MLIIZZ2Y', 'd60fde80b11eda0aacdabc15133a0344', 0, 0, '2017-11-19 15:02:30'),
(204, 11, 'PAY-24810590GF008445JLIIZ2QY', '3a0a439b782d303788a84df6f3deecc0', 0, 0, '2017-11-19 15:03:57'),
(205, 11, 'PAY-9FB13885PR803930WLIIZ3GQ', '087d9702ba94549c770d7c7c138ee438', 0, 0, '2017-11-19 15:05:24'),
(206, 11, 'PAY-63G00978E12425050LII3SMY', '26a97bc8d6c64d780ca8ea09fd43f6ae', 0, 0, '2017-11-19 17:03:09'),
(207, 11, 'PAY-09W17288EB1048728LII3SYQ', '308cfbb1cce596462cb9ab5491ef1e04', 0, 0, '2017-11-19 17:03:56'),
(208, 11, 'PAY-6HV53818CP967543ELII36DA', '7a9cf958a8f989c656ecb917de1d3ea7', 1, 150, '2017-11-19 17:28:06'),
(209, 1, 'PAY-5Y1172077U3892129LII37JQ', '135ca14e9b8c2e174e0f6ac2870cd13b', 0, 0, '2017-11-19 17:30:40'),
(210, 63, 'PAY-96046754XL554254VLII37SY', '29e95ee30d6022b84cc0660cd5e005b5', 0, 0, '2017-11-19 17:31:17'),
(211, 1, 'PAY-5XY61636Y8570562ULII4BPA', '66f817d6eaf5c69499f8d0cef4f6faf2', 0, 0, '2017-11-19 17:35:18'),
(212, 1, 'PAY-9A091301T3596144CLII4CXI', '6326220194446ccae7bed201cd4ab569', 1, 10, '2017-11-19 17:37:59'),
(213, 64, 'PAY-9C055143643850803LII4DYQ', 'babdb75c33cf63a14ef066dbb4d68b87', 1, 150, '2017-11-19 17:40:13'),
(214, 65, 'PAY-0W326760V87047336LII665Q', '0943d231447d54fedd948b20ed49eef7', 1, 150, '2017-11-19 20:54:40'),
(215, 66, 'PAY-2BC616759V088131TLII673A', '563d02876cf0a26983d2f7299e1f24ab', 1, 150, '2017-11-19 20:56:38'),
(216, 67, 'PAY-00U908101Y7904320LII7N5Y', 'cac36e9d324a330a93920ee916fa0321', 1, 150, '2017-11-19 09:26:41'),
(217, 68, 'PAY-90045754D6156914FLII7TWI', 'e4e79eef2d937e590d3ee49e696fe370', 0, 0, '2017-11-19 09:38:59'),
(218, 69, 'PAY-2EH94417W4051064FLII7UPA', 'e0ce5cc87b227b0cf8860da497319666', 1, 150, '2017-11-19 09:40:38'),
(219, 70, 'PAY-7AR477192J7128246LII7YVY', 'f7034d696914cafd575997201a15430a', 0, 0, '2017-11-19 09:49:38'),
(220, 71, 'PAY-391379358D916894YLII7Z4I', 'dd47987fb0630fd690cd286b72d8b098', 1, 250, '2017-11-19 09:52:11'),
(221, 72, 'PAY-8PR403133U626512ALII74FQ', 'f5aab6b86061cdd49b765f10edd90d69', 0, 0, '2017-11-19 09:57:05'),
(222, 73, 'PAY-9CU83391CU764224JLII75DQ', 'f3df0f34631ff5a65cd700b04b255174', 0, 0, '2017-11-19 09:59:05'),
(223, 74, 'PAY-62F56213SE1211548LII75YI', '2d61106b8f4b7490559515da64b0ab3a', 1, 150, '2017-11-19 10:00:28'),
(224, 1, 'PAY-6UX38820GV396640BLIJACVQ', '796f3276bb7c0364395466545dadbc9b', 1, 1, '2017-11-19 10:10:56'),
(225, 75, 'PAY-97F14752W9697401RLIJAD6Q', '06563fc78b986317f361b5a229467607', 1, 150, '2017-11-19 10:13:40'),
(226, 76, 'PAY-9F691465WG7976908LIJAFJI', 'f3e117b066107a56b52329a941d22724', 1, 150, '2017-11-19 10:16:31'),
(227, 77, 'PAY-2WA5075811927671BLIJAJRQ', '43f07b64e9fda4308477b5aeb5aed5a4', 1, 150, '2017-11-19 10:25:36'),
(228, 78, 'PAY-0HJ74036UE903624LLIJANFQ', 'f29e0791ca8dd29eb02d1e7141281fd3', 0, 0, '2017-11-19 10:33:20'),
(229, 1, 'PAY-6YV12848UE586635CLIJAPLA', 'f0542be58c3320741980a7dd8cd5b8db', 0, 0, '2017-11-19 10:37:58'),
(230, 1, 'PAY-85B707809X914061HLIJAQRI', '40343792e28fd6346eca5ad71be35096', 0, 0, '2017-11-19 10:40:31'),
(231, 1, 'PAY-7XA10865NF634434KLIJAR5I', 'dfacf28bf2be4b5365744bf32bf16438', 0, 0, '2017-11-19 10:43:27'),
(232, 1, 'PAY-1GY80448XP496561JLIJAT3Q', '87967b453b3279e5c04c0b6a33cabf3b', 1, 22, '2017-11-19 10:47:36'),
(233, 1, 'PAY-2VL67968EV8941540LIJAUSY', '43217372c910915f5bbb9c909193fd60', 1, 1, '2017-11-19 10:49:09'),
(234, 11, 'PAY-7GY578305J898271NLIJAVRY', 'cea0437d9b4f52c4bdfa04c152164a90', 0, 0, '2017-11-19 10:51:14'),
(235, 11, 'PAY-3JC97106N4503364NLIJAW2Y', 'fbabbec0555ba885baf7f76c90896a39', 0, 0, '2017-11-19 10:53:57'),
(236, 11, 'PAY-45R279274D489424YLIJAXUI', 'ec7c67a1170dc00d6fe124d8e0c80d6e', 0, 0, '2017-11-19 10:55:39'),
(237, 11, 'PAY-5UX28292BK983263WLIJAYXQ', '61a043087a52e290948068a42335d899', 0, 0, '2017-11-19 10:58:01'),
(238, 11, 'PAY-05882994FA458442LLIJA2FI', 'c81f2c3c33103f54fdd5b3d2c8f44515', 1, 10, '2017-11-19 11:01:03'),
(239, 79, 'PAY-21X4193522769254BLIJA27Y', 'dc73dba7afaef4fd4d13de4ec2c192f3', 0, 0, '2017-11-19 11:02:50'),
(240, 1, 'PAY-00G89138TU6609642LIJA36I', 'edde7a67b27f01ecca67f963c01d61de', 1, 1, '2017-11-19 11:04:51'),
(241, 80, 'PAY-2VB48994DV876530CLIJA4YQ', '1bc2f603c0db774de8fdcfdaa8c5a350', 1, 10, '2017-11-19 11:06:37'),
(242, 1, 'PAY-6JK3010871911541LLIJ36HY', '4bb9e580627b96ed3bcf2ecc8e615864', 0, 0, '2017-11-20 17:52:58'),
(243, 1, 'PAY-79Y491543M670092WLIJ37CQ', '68a31cdb1c88eda55c44317f07acfc35', 1, 1, '2017-11-20 17:54:46'),
(244, 1, 'PAY-7V32566800732314SLIJ5LJQ', '046849412ff32c78ceb2732c48048549', 1, 22, '2017-11-20 19:29:05'),
(245, 1, 'PAY-2PS256945B559892MLIJ57OQ', '8d8c119847d4a1070f4272ea8f69f359', 1, 22, '2017-11-21 20:12:05'),
(246, 81, 'PAY-1W07619245230702HLIK6TOY', 'cd3c9eda70c1e0862ae05030f6c27af1', 1, 10, '2017-11-22 09:19:20'),
(247, 1, 'PAY-6G565540C3014393JLILMEEA', '684ce137277d106f51d0672cebfe89ca', 0, 0, '2017-11-23 12:42:22'),
(248, 1, 'PAY-4U436779G7651344HLILMNAQ', '60d691b17f4b081b51659ab962097a8a', 0, 0, '2017-11-23 13:01:20'),
(249, 1, 'PAY-42K04960H1781703YLILMN6Q', '9a8063198d156bd5076ea74250d8637e', 0, 0, '2017-11-23 13:03:19'),
(250, 1, 'PAY-0A801039LV8433628LILMUNY', 'aabda103a4f45f540a1fbe8b4cb7b605', 1, 1, '2017-11-23 13:17:08');

--
-- Triggers `transactions_paypal`
--
DELIMITER $$
CREATE TRIGGER `transaction_audit_insert` AFTER INSERT ON `transactions_paypal` FOR EACH ROW BEGIN
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "insert", NEW.user_id, CONCAT("Transaction started"), "transactions_paypal", NEW.id) ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `transaction_audit_updated` AFTER UPDATE ON `transactions_paypal` FOR EACH ROW BEGIN
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "update", NEW.user_id, CONCAT("Transaction successful"), "transactions_paypal", NEW.id) ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `transaction_deleted` BEFORE DELETE ON `transactions_paypal` FOR EACH ROW BEGIN
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "delete", OLD.user_id, CONCAT("ERROR!!! Transaction deleted!! amount: ", OLD.amount, " payment_id: ", OLD.payment_id), "transactions_paypal", OLD.id) ;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `validated` tinyint(4) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) NOT NULL,
  `member_level` tinyint(1) UNSIGNED ZEROFILL DEFAULT NULL,
  `created_at` date NOT NULL,
  `admin` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `country`, `email`, `validated`, `password`, `salt`, `member_level`, `created_at`, `admin`) VALUES
(11, 'Nikola Mandic', '', 'nikolamand@gmail.com', 1, '1503733380599160275f5de6.170777268d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1503733380599160275f5de6.17077726', 3, '2017-07-28', 1),
(1, '', '', 'anonymous@mail.com', 0, '76117894598aa23f4b0672.91583148eedbbefa28ca31503ec6030aa3e1c6e10c318726f69684a2f559f601d9c75e12', '76117894598aa23f4b0672.91583148', 1, '2017-08-08', NULL),
(53, 'Nikola', 'RS', 'nikola@opticaltone.com', 0, '1228035035a0cee04418df4.889103048d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1228035035a0cee04418df4.88910304', 4, '2017-11-15', NULL),
(45, 'bla', 'RS', 'bla@bla.vlaa', 0, '77428321859b1b0081ca0e6.3436607596cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '77428321859b1b0081ca0e6.34366075', 1, '2017-09-07', 0),
(46, 'Ivan', 'RS', 'ivan@opticaltone.com', 1, '106325606659b3cec7d9ab08.51766933481f6cc0511143ccdd7e2d1b1b94faf0a700a8b49cd13922a70b5ae28acaa8c5', '106325606659b3cec7d9ab08.51766933', 5, '2017-09-09', 1),
(47, 'John Smith', 'HK', 'lack78channel@gmail.com', 0, '223776205a0c75b41bb243.3755742413a0d808ee918f8f80f9314baa619925e5b35c42a724dbbda051afbbae18afbc', '223776205a0c75b41bb243.37557424', 5, '2017-11-13', 1),
(52, 'John Smith', 'HK', 'lack78channel@gmail.com', 0, '223776205a0c75b41bb243.3755742413a0d808ee918f8f80f9314baa619925e5b35c42a724dbbda051afbbae18afbc', '223776205a0c75b41bb243.37557424', 5, '2017-11-13', 1),
(54, 'Testing McTester', 'CA', 'antispam@myjoe.com', 0, '20937632175a0cef57efbe81.13007799c898432763f8d13a38c2ae555d3994c3be63be6d7dad0d6d633fd664469411d2', '20937632175a0cef57efbe81.13007799', 1, '2017-11-15', NULL),
(56, 'Nikola', 'RS', 'nikolamand@ass.com', 0, '4439868365a1026d6a96003.6906365796cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '4439868365a1026d6a96003.69063657', NULL, '2017-11-18', NULL),
(57, 'acsdafe', 'RS', 'asdef@gre.com', 0, '19713468665a102c5b9cf246.8258256996cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '19713468665a102c5b9cf246.82582569', NULL, '2017-11-18', NULL),
(58, 'wefwe', 'RS', 'wefwe@beerg.com', 0, '17808831755a102eb512b583.1314451296cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '17808831755a102eb512b583.13144512', NULL, '2017-11-18', NULL),
(59, 'Nikola', 'RS', 'nikolamand@aaas.com', 0, '14223021555a10a2efa6e6f3.7968026596cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '14223021555a10a2efa6e6f3.79680265', NULL, '2017-11-18', NULL),
(60, 'Nikola', 'RS', 'nikolamand@12asd13r.com', 0, '8057974385a10a30af2ea82.5810665696cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '8057974385a10a30af2ea82.58106656', NULL, '2017-11-18', NULL),
(61, 'Nikola', 'RS', 'nikolamand@12312312312312.com', 0, '21417729405a10a39b7de5f5.9659811496cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '21417729405a10a39b7de5f5.96598114', NULL, '2017-11-18', NULL),
(62, 'Nikola', 'RS', 'nikolamand@123123.com', 0, '6985102985a10a427b11be4.3260396996cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '6985102985a10a427b11be4.32603969', NULL, '2017-11-18', NULL),
(63, 'Nikola', 'RS', 'nikolamand@asdasd.com', 0, '2510172975a11bfe3cbabd6.727564445fd924625f6ab16a19cc9807c7c506ae1813490e4ba675f843d5a10e0baacdb8', '2510172975a11bfe3cbabd6.72756444', NULL, '2017-11-19', NULL),
(64, 'Nikola', 'RS', 'nikolamand@g5tfrytfuytfytf.com', 0, '2099358235a11c1fae59622.577769368d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2099358235a11c1fae59622.57776936', 3, '2017-11-19', NULL),
(65, 'Nikola', 'RS', 'nikolamand@dasdw.com', 0, '8405877025a11ef8b3a92c7.2976091896cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '8405877025a11ef8b3a92c7.29760918', 3, '2017-11-19', NULL),
(66, 'Nikola', 'RS', 'adfefwfwefw@gmawefawfail.com', 0, '2000924695a11f00425ae79.7760911896cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '2000924695a11f00425ae79.77609118', 3, '2017-11-19', NULL),
(67, 'Nikola', 'RS', 'nikolamand@aaaa.com', 0, '11549418455a11f70e8e0440.3545545296cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '11549418455a11f70e8e0440.35455452', 3, '2017-11-19', NULL),
(68, 'Nikola', 'RS', 'nikolamand@123123121231.com', 0, '14414642345a11f9ed5cc4b7.2584214796cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '14414642345a11f9ed5cc4b7.25842147', NULL, '2017-11-19', NULL),
(69, 'Nikola', 'RS', 'nikolamand@12e1e3e1r.com', 0, '19073485575a11fa547b64e3.6041415596cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '19073485575a11fa547b64e3.60414155', 3, '2017-11-19', NULL),
(70, 'Nikola', 'RS', 'nikolamand@rstredgfyrtddr.com', 0, '12452175375a11fc6b306092.234944788d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '12452175375a11fc6b306092.23494478', NULL, '2017-11-19', NULL),
(71, 'Nikola', 'RS', 'nikolamand@vytvjhgv.com', 0, '382286255a11fd09629641.511796378d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '382286255a11fd09629641.51179637', 4, '2017-11-19', NULL),
(72, 'Nikola', 'RS', 'nikolamand@hiuihiuhiuhy.com', 0, '6952876055a11fe2b634710.078299148d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '6952876055a11fe2b634710.07829914', NULL, '2017-11-19', NULL),
(73, 'Nikola', 'RS', 'nikolamand@aaa.comaaa', 0, '13006156965a11fea6c50a35.252031628d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '13006156965a11fea6c50a35.25203162', NULL, '2017-11-19', NULL),
(74, 'Nikola', 'RS', 'nikolamand@asas.com', 0, '12145511305a11fefa1d0897.402857938d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '12145511305a11fefa1d0897.40285793', 3, '2017-11-19', NULL),
(75, 'Nikola', 'RS', 'nikolamand@asdqedf.com', 0, '8625658915a120212088538.5764294896cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '8625658915a120212088538.57642948', 3, '2017-11-19', NULL),
(76, 'Nikola', 'RS', 'nikolamand@asdafefegwr.com', 0, '14172859825a1202ba363d81.5438020796cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '14172859825a1202ba363d81.54380207', 3, '2017-11-19', NULL),
(77, 'afefwe', 'RS', 'wefwef@rgrg.cfhwer', 0, '16333688075a1204de455276.2670783796cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '16333688075a1204de455276.26707837', 3, '2017-11-19', NULL),
(78, 'qeffrw', 'RS', 'wrgg@grw.wrg', 0, '18313016825a1206ae2bc988.3200128896cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '18313016825a1206ae2bc988.32001288', NULL, '2017-11-19', NULL),
(79, 'efwf', 'RS', 'wegf@ge.gwrg', 0, '17630182645a120d97a2c405.870615228d6f3245be847d75357a9e4e9db22c8096b8d4e8f2d02f1f76bf39da77cfb2d6', '17630182645a120d97a2c405.87061522', NULL, '2017-11-19', NULL),
(80, 'Nikola', 'RS', 'nikolamand@asdefq.com', 0, '13595236755a120e68ec4653.5552081096cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '13595236755a120e68ec4653.55520810', 1, '2017-11-19', NULL),
(81, 'Nikola ', 'RS', 'nikolamand@asffwegwrgwrgrwg.com', 0, '12963956845a15e9c85c4585.7716583196cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '12963956845a15e9c85c4585.77165831', 1, '2017-11-22', NULL);

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `user_audit_deleted` BEFORE DELETE ON `users` FOR EACH ROW BEGIN
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "delete", OLD.id, CONCAT("ERROR!!! User deleted!! name: ", OLD.name, " email: ", OLD.email, " validated: ", OLD.validated, " member_level: ", OLD.member_level, " created_at: ", OLD.created_at), "users", OLD.id) ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `user_audit_inserted` AFTER INSERT ON `users` FOR EACH ROW BEGIN
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "insert", NEW.id, CONCAT("User added"), "users", NEW.id) ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `user_audit_updated` AFTER UPDATE ON `users` FOR EACH ROW BEGIN
INSERT INTO changelog(created_at, type, user_id, description, table_name, affected_table_id)
		VALUES (NOW(), "update", OLD.id, CONCAT("User updated"), "users", OLD.id) ;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `changelog`
--
ALTER TABLE `changelog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speaker`
--
ALTER TABLE `speaker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions_paypal`
--
ALTER TABLE `transactions_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `changelog`
--
ALTER TABLE `changelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=893;
--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `speaker`
--
ALTER TABLE `speaker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `transactions_paypal`
--
ALTER TABLE `transactions_paypal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
