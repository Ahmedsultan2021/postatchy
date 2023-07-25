-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2023 at 01:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog1`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `image` varchar(255) DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`image`, `content`, `user_id`, `id`, `created_at`) VALUES
('images/posts/20230725112944.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content her', 6, 1, '2023-07-25 09:45:00'),
('images/posts/20230725113346.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content her', 6, 2, '2023-07-25 09:45:00'),
('images/posts/20230725113408.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content her', 6, 3, '2023-07-25 09:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `users_id1` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL,
  `role` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `role`) VALUES
(2, 'ahmed', 'ahmed2@gmailcom', '123456', '2023-07-23 11:18:00', '2023-07-23 11:18:00', 'user'),
(3, 'ahmed', 'ahmed3@gmail.com', '123456', '2023-07-23 11:18:10', '2023-07-23 11:18:10', 'user'),
(4, 'ali', 'ali@gmail.com', '123456', '2023-07-23 12:50:50', '0000-00-00 00:00:00', 'user'),
(6, 'hassan', 'hassan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-07-23 12:56:28', '0000-00-00 00:00:00', 'user'),
(7, 'Ibrahim ', '2021@pua.edu.eg', '25f9e794323b453885f5181f1b624d0b', '2023-07-24 17:12:50', '0000-00-00 00:00:00', 'user'),
(8, 'Joycie Gerges ', 'joyciegerges@gmail.com', '02e452612523f3ffb0d53e41a20bb1e9', '2023-07-24 17:12:52', '0000-00-00 00:00:00', 'user'),
(9, 'ahmed', '202102462@pua.edu.eg', '29a7527d4df0a081277c931cd71f8b37', '2023-07-24 17:12:54', '0000-00-00 00:00:00', 'user'),
(10, 'Mark', 'Mark@gmail.com', 'cb8b4574dfa786e05180fd69dc4c99fb', '2023-07-24 17:13:06', '0000-00-00 00:00:00', 'user'),
(11, 'Mo.eissa', 'H@gmail.com', 'd75a2a047b92b576823856e3330aa8be', '2023-07-24 17:13:21', '0000-00-00 00:00:00', 'user'),
(12, 'Test1', 'test@gmail.com', 'c06db68e819be6ec3d26c6038d8e8d1f', '2023-07-24 17:16:53', '0000-00-00 00:00:00', 'user'),
(13, 'ibrahim ', 'ebrahim2003ebrahim2003@gmail.com', '6074c6aa3488f3c2dddff2a7ca821aab', '2023-07-24 17:16:54', '0000-00-00 00:00:00', 'user'),
(14, 'ahmed', '2021024622@pua.edu.eg', '29a7527d4df0a081277c931cd71f8b37', '2023-07-25 11:51:56', '0000-00-00 00:00:00', 'user'),
(15, 'Mazen', 'mazen@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-07-25 11:52:12', '0000-00-00 00:00:00', 'user'),
(17, 'ebrahim', 'ebrahimabdelrahman10@gmail.com', '4297f44b13955235245b2497399d7a93', '2023-07-25 11:57:56', '0000-00-00 00:00:00', 'user'),
(18, 'mohsen', 'mohsen@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-07-25 12:03:46', '2023-07-25 11:03:05', 'admin'),
(26, 'ih', 'ih@gmail.com', '6074c6aa3488f3c2dddff2a7ca821aab', '2023-07-25 12:39:23', '0000-00-00 00:00:00', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id_users` (`user_id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`users_id`,`users_id1`,`id`),
  ADD KEY `fk_users_has_users_users2_idx` (`users_id1`),
  ADD KEY `fk_users_has_users_users1_idx` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_user_id_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `relationships`
--
ALTER TABLE `relationships`
  ADD CONSTRAINT `fk_users_has_users_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_has_users_users2` FOREIGN KEY (`users_id1`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
