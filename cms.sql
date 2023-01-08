-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: ian. 08, 2023 la 07:38 PM
-- Versiune server: 10.4.25-MariaDB
-- Versiune PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `cms`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'asd'),
(2, 'Python'),
(3, 'yugioh'),
(17, 'published');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 9, 'Alexader', 'none', 'imeaorignoewrhrtj', 'Approved', '2022-12-27'),
(2, 3, 'Alex', 'example@gmail', 'asdwageg', 'Approved', '2022-12-27'),
(4, 3, 'asd', 'example@gmail', 'dwqfqe', 'Approved', '2022-12-27'),
(5, 3, 'asd', 'example@gmail', 'dwqfqe', 'Approved', '2022-12-27'),
(6, 3, 'asd', 'example@gmail', 'dwqfqe', 'unapproved', '2022-12-27'),
(7, 3, 'asd', 'example@gmail', 'dwqfqe', 'unapproved', '2022-12-27'),
(11, 3, 'qwd', 'qg@gmail.com', 'adq', 'unapproved', '2022-12-27'),
(12, 3, 'qwd', 'qg@gmail.com', 'adq', 'unapproved', '2022-12-27'),
(13, 3, 'qwd', 'qg@gmail.com', 'adq', 'unapproved', '2022-12-27');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(252) NOT NULL,
  `post_author` varchar(252) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(252) NOT NULL,
  `post_comment_count` varchar(255) NOT NULL,
  `post_status` varchar(252) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(3, 15, 'Yu-Gi-Oh!', 'Yugi', '2012-12-12', 'cms_project_image.jpg', 'Let\'s Duel!', 'duel, yu-gi-oh!, python', '5', 'draft'),
(6, 1, 'qwdwegw', 'eerhg', '2022-12-26', '', 'erg', 'erher', '0', 'erher'),
(7, 1, 'Another', 'One', '2022-12-26', '', 'nothing', 'random', '0', 'yes'),
(8, 3, 'Branded of Despia', 'Kaiba', '2022-12-26', 'mirrojage.png', 'Upcoming structure deck', 'yugioh, duel', '0', 'Upcoming');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(3, 'xShade06', 'Dark', 'Alexander', 'Black', 'example@gmail.com', '', 'subscriber', ''),
(4, 'Grimmjow06', '1234', 'Alexander1234', 'Black', 'example@gmail.com', '', 'subscriber', '');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexuri pentru tabele `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexuri pentru tabele `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pentru tabele `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pentru tabele `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
