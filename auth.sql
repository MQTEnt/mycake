-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2018 at 08:23 AM
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
(2, 'aa', 'aaa', 10),
(3, 'aaaa', 'adasdasd', 10),
(4, 'bbbb', 'bbbbbbbbbbbbb', 10);

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
(9, 'newwwwwww@gmail.com', '$2y$10$zHEGIsyNzay/zfsYSxr4CO4zfqHosNDLMEcYFj7mqCwocd/ifapJ6'),
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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
