-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2025 at 02:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `polytechdle`
--

-- --------------------------------------------------------

--
-- Table structure for table `professeurs`
--

CREATE TABLE `professeurs` (
  `nom` varchar(128) NOT NULL,
  `prenom` varchar(128) NOT NULL,
  `laris` tinyint(1) NOT NULL,
  `age` int(11) NOT NULL,
  `specialite` varchar(128) NOT NULL,
  `univ_etudes` varchar(128) NOT NULL,
  `annee_phd` int(11) NOT NULL,
  `statut` varchar(256) NOT NULL,
  `sujet_these` varchar(1024) NOT NULL,
  `photo` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Infos sur les profs';

--
-- Dumping data for table `professeurs`
--

INSERT INTO `professeurs` (`nom`, `prenom`, `laris`, `age`, `specialite`, `univ_etudes`, `annee_phd`, `statut`, `sujet_these`, `photo`) VALUES
('LHOMMEAU', 'Mehdi', 1, 49, 'SAGI', 'Angers', 2003, 'Professeur / HDR', '?', 'https://perso-laris.univ-angers.fr/~lhommeau/photo2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `nom` varchar(128) NOT NULL,
  `prenom` varchar(128) NOT NULL,
  `mdp` varchar(256) NOT NULL,
  `streak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`nom`, `prenom`, `mdp`, `streak`) VALUES
('simon', 'hugo', 'passecurisé', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
