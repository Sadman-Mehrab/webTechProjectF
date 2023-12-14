-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 04:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digitalartmarketplace`
--

-- --------------------------------------------------------

--
-- Table structure for table `artworks`
--

CREATE TABLE `artworks` (
  `artworkName` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `artistName` varchar(100) NOT NULL,
  `ownerName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `views` int(11) NOT NULL,
  `id` varchar(100) NOT NULL,
  `purchaseAble` varchar(5) NOT NULL,
  `addingDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artworks`
--

INSERT INTO `artworks` (`artworkName`, `description`, `artistName`, `ownerName`, `price`, `image`, `views`, `id`, `purchaseAble`, `addingDate`) VALUES
('Skies', 'Sky', 'risun123', 'risun123', 150, '../assets/artworks/65702e61e3a75.jpg', 2, '65702e61e3a75', 'Yes', '2023-12-06'),
('Cat', 'Meow', 'Mehrab', 'Mehrab', 123, '../assets/artworks/6577238272d8c.jpg', 7, '6577238272d8c', 'Yes', '2023-12-11'),
('Smoke', 'Smoke Image', 'Mehrab', 'Mehrab', 1, '../assets/artworks/65785d9fdd4e2.jpg', 4, '65785d9fdd4e2', 'Yes', '2023-12-12'),
('World Bash', '...', 'Mehrab', 'Mehrab', 1234, '../assets/artworks/657871685ec9f.jpg', 7, '657871685ec9f', 'Yes', '2023-12-12'),
('Trees', 'Trees', 'Mehrab', 'Mehrab', 123, '../assets/artworks/65795c6c40f38.jpg', 0, '65795c6c40f38', 'Yes', '2023-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `sender` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `id` varchar(100) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`sender`, `receiver`, `message`, `id`, `time`) VALUES
('Mehrab', 'risun123', 'hello', '65702ea90f058', '2023-12-06 09:19:53'),
('risun123', 'Mehrab', 'hi', '65702eb5055ab', '2023-12-06 09:20:05'),
('Mehrab', 'risun123', 'hellloo', '657723125b876', '2023-12-11 15:56:18'),
('Mehrab', 'risun123', 'hi', '65780e80be4a0', '2023-12-12 08:40:48'),
('Mehrab', 'risun123', 'test', '6578139f60e9b', '2023-12-12 09:02:39'),
('Mehrab', 'risun123', 'test2', '657813c69b603', '2023-12-12 09:03:18'),
('Mehrab', 'risun123', 'testest', '6578152601d0c', '2023-12-12 09:09:10'),
('risun123', 'Mehrab', 'test reply back', '6579432d6b42c', '2023-12-13 06:37:49'),
('Mehrab', 'risun123', 'test', '657952b8b9cfb', '2023-12-13 07:44:08'),
('Mehrab', 'risun123', 'test', '65795bb01ae08', '2023-12-13 08:22:24'),
('Mehrab', 'risun123', 'test', '6579707099a6b', '2023-12-13 09:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `userName` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `id` varchar(100) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`userName`, `description`, `id`, `time`) VALUES
('risun123', 'Artwork: Skies Added With Price: 150 ArtCoin', '65702e61e9be6', '2023-12-06 09:18:41'),
('Mehrab', 'Your Account Details Were Recently Updated', '657721cd8b89b', '2023-12-11 15:50:53'),
('Mehrab', 'Your Account Details Were Recently Updated', '6578546c89461', '2023-12-12 13:39:08'),
('Mehrab', 'Your Account Details Were Recently Updated', '6578564d4bd98', '2023-12-12 13:47:09'),
('Mehrab', 'Your Account Details Were Recently Updated', '65785657aceac', '2023-12-12 13:47:19'),
('Mehrab', 'Artwork: CatCat Added With Price: 123 ArtCoin', '6578591534d76', '2023-12-12 13:59:01'),
('Mehrab', 'Artwork: Smoke Added With Price: 432 ArtCoin', '65785d9fe1675', '2023-12-12 14:18:23'),
('Mehrab', 'Your Account Details Were Recently Updated', '657870b284bfd', '2023-12-12 15:39:46'),
('Mehrab', 'Your Account Details Were Recently Updated', '657870d42bb4d', '2023-12-12 15:40:20'),
('Mehrab', 'Your Account Details Were Recently Updated', '6578710876de3', '2023-12-12 15:41:12'),
('Mehrab', 'Your Account Details Were Recently Updated', '657872453ad2b', '2023-12-12 15:46:29'),
('Mehrab', 'Your Account Details Were Recently Updated', '657872694d212', '2023-12-12 15:47:05'),
('Mehrab', 'Your Account Details Were Recently Updated', '657874b7ac169', '2023-12-12 15:56:55'),
('Mehrab', 'Artwork: Reynaaa Added With Price: 123 ArtCoin', '65787ce244f9b', '2023-12-12 16:31:46'),
('risun123', 'You Have Purchased Artwork: Cat From Mehrab For 123 ArtCoin', '6579435d17f13', '2023-12-13 06:38:37'),
('Mehrab', 'risun123 Has Purchased Artwork: Cat From You For 123 ArtCoin', '6579435d18fb0', '2023-12-13 06:38:37'),
('Mehrab', 'Your Account Details Were Recently Updated', '6579528a350ef', '2023-12-13 07:43:22'),
('Mehrab', 'You Have Purchased Artwork: Cat From risun123 For 123 ArtCoin', '657b177d08a97', '2023-12-14 15:55:57'),
('risun123', 'Mehrab Has Purchased Artwork: Cat From You For 123 ArtCoin', '657b177d0c484', '2023-12-14 15:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `transactionhistory`
--

CREATE TABLE `transactionhistory` (
  `UserId` text NOT NULL,
  `Type` text NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactionhistory`
--

INSERT INTO `transactionhistory` (`UserId`, `Type`, `Amount`) VALUES
('Azwad1', 'Top Up', 1000),
('Azwad2', 'Top Up', 500),
('Azwad 1', 'Withdrawl', 500),
('Azwad1', 'Withdrawn', 500),
('Azwad1', 'TopUp', 50),
('Azwad1', 'Withdrawn', 12),
('Azwad1', 'Withdrawn', 50),
('Azwad1', 'Withdrawn', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'Withdrawn', 12),
('Azwad1', 'Withdrawn', 12),
('Azwad1', 'Withdrawn', 50),
('Azwad1', 'TopUp', 50),
('Azwad1', 'TopUp', 50),
('Azwad1', 'TopUp', 50),
('Azwad1', 'TopUp', 50),
('Azwad1', 'TopUp', 50),
('Azwad1', 'TopUp', 50),
('Azwad1', 'TopUp', 50),
('Azwad1', 'TopUp', 50),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 50),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 50),
('Azwad1', 'TopUp', 50),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad2', 'TopUp', 1000),
('Azwad1', 'TopUp', 12),
('Azwad1', 'TopUp', 12),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 50),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 12),
('Azwad1', 'TopUp', 12),
('Azwad1', 'TopUp', 12),
('Azwad1', 'TopUp', 12),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 0),
('Azwad1', 'TopUp', 0),
('Azwad1', 'TopUp', 0),
('Azwad1', 'TopUp', 0),
('Azwad1', 'Withdrawn', 1000),
('Azwad1', 'Withdrawn', 1000),
('Azwad1', 'Withdrawn', 1000),
('Azwad1', 'Withdrawn', 12),
('Azwad1', 'TopUp', 12),
('Azwad1', 'TopUp', 50),
('Azwad1', 'Withdrawn', 50),
('Azwad1', 'Withdrawn', 1000),
('Azwad1', 'Withdrawn', 1000),
('Azwad1', 'Withdrawn', 12),
('Azwad1', 'Withdrawn', 12),
('Azwad1', 'TopUp', 12),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'Withdrawn', 12),
('Azwad1', 'Withdrawn', 12),
('Azwad1', 'Withdrawn', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'TopUp', 1000),
('Azwad1', 'Withdrawn', 10000),
('Azwad1', 'Withdrawn', 10000),
('Azwad1', 'Withdrawn', 1000),
('Azwad1', 'Withdrawn', 10),
('Azwad1', 'Withdrawn', 50),
('Azwad1', 'Withdrawn', 9600),
('Azwad1', 'TopUp', 50),
('Azwad1', 'Withdrawn', 12),
('Azwad1', 'Withdrawn', 12),
('Azwad1', 'Withdrawn', 10),
('Azwad1', 'Withdrawn', 10),
('Azwad1', 'Withdrawn', 6),
('Azwad1', 'TopUp', 10000),
('Azwad1', 'Withdrawn', 123),
('Azwad1', 'TopUp', 50),
('Azwad1', 'Withdrawn', 50),
('Azwad1', 'TopUp', 50),
('Azwad1', 'Withdrawn', 50),
('azwad1', 'TopUp', 1000),
('azwad1', 'TopUp', 12),
('azwad1', 'TopUp', 12),
('azwad1', 'TopUp', 12),
('azwad1', 'TopUp', 50),
('azwad1', 'Withdrawn', 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phoneNumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `joiningDate` date NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) NOT NULL,
  `profilePicture` varchar(50) NOT NULL,
  `totalViews` int(11) NOT NULL DEFAULT 0,
  `password` varchar(100) NOT NULL,
  `TransactionType` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userName`, `firstName`, `lastName`, `phoneNumber`, `email`, `gender`, `dateOfBirth`, `joiningDate`, `balance`, `type`, `profilePicture`, `totalViews`, `password`, `TransactionType`) VALUES
('risun123', 'Rafid', 'Risun', '01725659538', 'risun123@gmail.com', 'Male', '2001-10-08', '2022-10-19', 450, 'Artist', '../assets/reyna.jpg', 58, '1234', ''),
('Mehrab', 'Sadman', 'Mehrab', '01795143862', 'sadmannaqueeb@gmail.com', 'Male', '2001-11-16', '2023-11-03', 300, 'Artist', '../assets/profilePictures/6579528a1e31f.jpg', 7, '1234', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
