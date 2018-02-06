-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2018 at 05:20 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `path`, `created`, `modified`) VALUES
(1, 'abc.1', 'uploads/files/', '2018-01-31 06:43:47', '2018-01-31 08:37:56'),
(2, 'beforeFilter vs initialize.txt', 'uploads/files/', '2018-01-31 06:46:41', '0000-00-00 00:00:00'),
(3, 'Data Validation.txt', 'uploads/files/', '2018-01-31 06:51:29', '0000-00-00 00:00:00'),
(4, 'Data Validation.txt', 'uploads/files/', '2018-01-31 06:57:27', '0000-00-00 00:00:00'),
(5, 'Data Validation.txt', 'uploads/files/', '2018-01-31 06:58:19', '0000-00-00 00:00:00'),
(6, 'Daily Report.txt', 'uploads/files/', '2018-01-31 06:58:51', '0000-00-00 00:00:00'),
(7, 'Data Validation.txt', 'uploads/files/', '2018-01-31 06:59:36', '0000-00-00 00:00:00'),
(8, 'Daily Report.txt', 'uploads/files/', '2018-01-31 07:00:38', '0000-00-00 00:00:00'),
(9, 'Data Validation.txt', 'uploads/files/', '2018-01-31 07:03:10', '0000-00-00 00:00:00'),
(10, 'Data Validation.txt', 'uploads/files/', '2018-01-31 07:03:18', '0000-00-00 00:00:00'),
(11, 'Data Validation.txt', 'uploads/files/', '2018-01-31 07:06:49', '0000-00-00 00:00:00'),
(12, 'Daily Report.txt', 'uploads/files/', '2018-01-31 07:06:55', '0000-00-00 00:00:00'),
(13, 'Data Validation.txt', 'uploads/files/', '2018-01-31 07:16:46', '0000-00-00 00:00:00'),
(14, 'Data Validation.txt', 'uploads/files/', '2018-01-31 07:16:51', '0000-00-00 00:00:00'),
(15, 'Data Validation.txt', 'uploads/files/', '2018-01-31 07:17:06', '0000-00-00 00:00:00'),
(16, 'Data Validation.txt', 'uploads/files/', '2018-01-31 07:17:18', '0000-00-00 00:00:00'),
(17, 'Daily Report.txt', 'uploads/files/', '2018-01-31 07:17:24', '0000-00-00 00:00:00'),
(18, 'Data Validation.txt', 'uploads/files/', '2018-01-31 07:18:51', '0000-00-00 00:00:00'),
(19, 'Update.exe', 'uploads/files/', '2018-01-31 07:20:28', '0000-00-00 00:00:00'),
(20, 'Update.exe', 'uploads/files/', '2018-01-31 07:25:17', '0000-00-00 00:00:00'),
(21, 'Update.exe', 'uploads/files/', '2018-01-31 07:27:15', '0000-00-00 00:00:00'),
(22, 'asasas.jpg', 'uploads/files/', '2018-01-31 07:31:47', '0000-00-00 00:00:00'),
(23, 'Update.exe', 'uploads/files/', '2018-01-31 07:33:15', '0000-00-00 00:00:00'),
(24, 'view.ctp', 'uploads/files/', '2018-01-31 07:33:35', '0000-00-00 00:00:00'),
(25, 'asasas.jpg', 'uploads/files/', '2018-01-31 07:42:31', '0000-00-00 00:00:00'),
(26, 'asasas.jpg', 'uploads/files/', '2018-01-31 07:44:33', '0000-00-00 00:00:00'),
(27, 'asasas.jpg', 'uploads/files/', '2018-01-31 07:45:20', '0000-00-00 00:00:00'),
(28, 'aaaaaaaaaaaaaaaaaaaa.jpg', 'uploads/files/', '2018-01-31 07:47:01', '0000-00-00 00:00:00'),
(29, 'dfsdfsdfsdf.jpg', 'uploads/files/', '2018-01-31 07:47:50', '0000-00-00 00:00:00'),
(30, 'dfsdfsdfsdf.jpg', 'uploads/files/', '2018-01-31 07:49:59', '0000-00-00 00:00:00'),
(31, '11111111111.txt', 'uploads/files/', '2018-01-31 07:51:33', '0000-00-00 00:00:00'),
(32, '11111111111.txt', 'uploads/files/', '2018-01-31 07:59:47', '0000-00-00 00:00:00'),
(33, '11111111111.txt', 'uploads/files/', '2018-01-31 08:05:29', '0000-00-00 00:00:00'),
(34, '11111111111.txt', 'uploads/files/', '2018-01-31 08:06:16', '0000-00-00 00:00:00'),
(35, '222222222222.txt', 'uploads/files/', '2018-01-31 08:06:27', '0000-00-00 00:00:00'),
(36, '222222222222.jpg', 'uploads/files/', '2018-01-31 08:10:47', '0000-00-00 00:00:00'),
(37, '333333333.jpg', 'uploads/files/', '2018-01-31 08:10:58', '0000-00-00 00:00:00'),
(38, '4444444444444.jpg', 'uploads/files/', '2018-01-31 08:11:07', '0000-00-00 00:00:00'),
(39, '6666666.jpg', 'uploads/files/', '2018-01-31 08:19:06', '0000-00-00 00:00:00'),
(40, '6666666.jpg', 'uploads/files/', '2018-01-31 08:22:10', '0000-00-00 00:00:00'),
(41, '7777777777777.jpg', 'uploads/files/', '2018-01-31 08:22:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `user_id`) VALUES
(3, 'aaaa', 'adasdasd', 10),
(4, 'bbbb', 'bbbbbbbbbbbbb', 10),
(5, 'ggggggg', 'description.gggggggg', 10),
(6, 'hhhhhhhhhhh', 'description.hhhhhhhhhhh', 10),
(7, 'Ajax new name', 'Ajax new description', 10),
(8, 'new name abc', 'new description', 10),
(9, 'AUTH Ajax new name', 'Ajax new description', 10),
(11, 'AUTH Ajax new name', 'Ajax new description', 10),
(14, 'abc newwwwwwwwww', 'abc desc', 10),
(15, 'abc newwwwwwwwww', 'abc desc', 10),
(16, 'abc newwwwwwwwww', 'abc desc', 10);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`) VALUES
(1, 10, 1),
(2, 10, 2),
(3, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(9, 'newwwwwww123@gmail.com', '$2y$10$zHEGIsyNzay/zfsYSxr4CO4zfqHosNDLMEcYFj7mqCwocd/ifapJ6'),
(10, 'new100@gmail.com', '$2y$10$Iff5IP4Msw941.gCwf36zuUIdR5UTnxoqIrHf41VMPPOuZ7MSPk0m'),
(11, 'newe5edit22222@gmail.com', '$2y$10$eBuAJkC6BWQDggrQ77SAkuvKO5tANXOprfwTEt7l1x0UA9fzMx1ou'),
(13, 'n@gmail.com', '$2y$10$juuX4fL0lQanTpKLnGqeW.22oqp6B7FePTZ6AjqWYI38sbxM/Ou96'),
(14, 'asasas@gmail.com', '$2y$10$vK1vnCSMnORuSrdKZeNI9OAqDJcmmPCcumuS3dI7SfMyz1UP49/Xa'),
(15, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@gmail.com', '$2y$10$GOH9TxoPhi5I.GEtt.TXZ.oasWfVxIUpX47fd8vf0rfTG1qRRyG2K'),
(16, 'asasasasasZYZasasdasdasds@gmail.com', '$2y$10$Fc7lfKp/WbvkChzhfAg0J.jV3gVSSqPJuE.uYwMR.X/frTpcaewtW'),
(17, 'asasasasasXZasasasdasdasds@gmail.com', '$2y$10$7CN19wMP61R2fuPBFz3W3ukgNzRN7DVVkNTJNBDMCQthWgdxGpUcq'),
(18, 'asasasasasZYsadasdZasasdasdasds@gmail.com', '$2y$10$gI7eavOoxyFF1tw4byMa6.Z0KrFk5jlv8W3rg3sVo2frlGY2c0Q5.'),
(19, 'newlinkasset@gmail.com', '$2y$10$WJYFDCi13sZZYqwZK5HJeOYjoSvHIMV4nuggv8lXgqflrNcLLprk2'),
(20, 'aaaa@gmail.com', '$2y$10$ejeQG6uzFKwkRUhsfxaXYOZypOy4YuSWQrpw1PG2CliJQPBq8cILu'),
(21, 'aaaaaaabc@gmail.com', '$2y$10$ze8NlkloecbIGMbMG5AN2uZ1oeMdBlFBB/qXWc5coi4lWjVTdqA/a'),
(22, 'fdsfsdfsd@gmail.com', '$2y$10$r9fYD6LylW2zlBTXxnQRUO460.yXSoCXlYceW.lmikJ9diLLtcMmi'),
(23, 'asasdasd@gmail.com', '$2y$10$GhcpqYtWv8L.zyx7q9ZN/u.9C8c4cl6llM7BgBynb746tlQMxsVCW'),
(24, 'aadasdasd@gmail.com', '$2y$10$VnZyJ/KXKwVi0INlYs1S0O5HG6WXjpIdlqC3Ml7xsuZ3dWqt0kIQG'),
(25, 'asdasdasda@mgi.com', '$2y$10$TveZGK9b9DuLCIkZyG2H8./BTyRDcvf9.aJK4not4UpGn6wpdwvLu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
