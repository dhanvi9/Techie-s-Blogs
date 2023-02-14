-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 05:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techieblogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first post', 'firstpost@gmail.com', '1234567890', 'this is first post', '2023-01-12 12:34:29'),
(2, 'Dhanvi bansal', 'dhanvi884@gmail.com', '8295427433', 'This is an awesome blogging site!!!', NULL),
(3, 'Dhanvi bansal', 'dhanvi884@gmail.com', '8295427433', 'This is an awesome blogging site!!!', '2023-01-12 12:42:40'),
(4, 'rizwan', 'riz.09CO52@nitk.edu.in', '1238946901', 'awesome experience!!', '2023-01-12 12:43:16'),
(5, 'dfhjk', 'db@gmail.com', '3452789302', 'thss is am test', '2023-01-12 15:02:56'),
(6, 'dfhjk', 'db@gmail.com', '3452789302', 'thss is am test', '2023-01-12 15:34:52'),
(7, 'Dhanvi bansal', 'dhanvi884@gmail.com', '8295427433', 'The blogs are really insightful :)', '2023-02-13 17:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'All You Need to Know About Flask!!!', 'flask-post', 'Flask is Python’s micro-framework for webapp development. It was developed by Armin Ronacher, who led an international team of Python enthusiasts called Pocco. Flask consists of Werkzeug WSGI toolkit and Jinja2 template engine. Both were also developed by Pocco. It was initially released in April 2010. Currently, the latest version as of writing this article is 2.0.2. ', 'post-bg.jpg', '2023-02-11 18:30:50'),
(2, 'Knowhow of Rest API\'s ', 'rest-api', ' rest is a set of guidelines that software can use to communicate over the internet in order to make integrations simple and scalable. A REST API (also called a “RESTful” API) is a specific type of API that follows these guidelines.\r\n\r\nREST stands for Representational State Transfer. This means that when a client requests a resource using a REST API, the server transfers back the current state of the resource in a standardized representation.\r\n\r\nIn other words, REST APIs work by fielding requests for a resource and returning all relevant information about the resource, translated into a format that clients can easily interpret (this format is determined by the API receiving requests). Clients can also modify items on the server and even add new items to the server through a REST API.', 'post-bg.jpg', '2023-02-11 19:09:45'),
(3, 'Let\'s dive into Javascript', 'js-blog', 'JavaScript (JS) is a lightweight, interpreted, or just-in-time compiled programming language with first-class functions. While it is most well-known as the scripting language for Web pages, many non-browser environments also use it, such as Node.js, Apache CouchDB and Adobe Acrobat. JavaScript is a prototype-based, multi-paradigm, single-threaded, dynamic language, supporting object-oriented, imperative, and declarative (e.g. functional programming) styles.  JavaScript\'s dynamic capabilities include runtime object construction, variable parameter lists, function variables, dynamic script creation (via eval), object introspection (via for...in and Object utilities), and source-code recovery (JavaScript functions store their source text and can be retrieved through toString().', 'post-bg.jpg', '2023-01-17 23:18:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
