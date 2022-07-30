-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 30, 2022 at 02:55 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `receptai_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ingredientai`
--

DROP TABLE IF EXISTS `ingredientai`;
CREATE TABLE IF NOT EXISTS `ingredientai` (
  `id` smallint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(25) NOT NULL,
  `kaina` decimal(5,2) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ingredientai`
--

INSERT INTO `ingredientai` (`id`, `pavadinimas`, `kaina`) VALUES
(1, 'Vištiena', '6.12'),
(2, 'Jautienos faršas', '8.55'),
(3, 'Braškės', '4.53'),
(4, 'Pienas', '4.53'),
(5, 'Avižiniai dribsniai', '3.59'),
(6, 'Svogūnas', '2.53'),
(7, 'Bulvės', '9.44'),
(8, 'Grietinė', '5.93'),
(9, 'Teriyaki marinatas', '3.85'),
(10, 'Lęšiai', '10.21'),
(11, 'Avinžirniai', '6.99'),
(12, 'Petražolė', '1.57'),
(13, 'Pomidoras', '8.87'),
(14, 'Agurkas', '3.59'),
(15, 'Couscous', '2.57'),
(16, 'Duona', '0.69');

-- --------------------------------------------------------

--
-- Table structure for table `receptai`
--

DROP TABLE IF EXISTS `receptai`;
CREATE TABLE IF NOT EXISTS `receptai` (
  `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(50) NOT NULL,
  `kaina` decimal(5,2) UNSIGNED NOT NULL,
  `nurodymai` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receptai`
--

INSERT INTO `receptai` (`id`, `pavadinimas`, `kaina`, `nurodymai`) VALUES
(1, 'Tabule couscous salotos', '6.85', '1. Paruošiame couscous 2. Supjausstom daržoves ir viską suberiam į vieną.'),
(2, 'Tablue libanietiškos salotos', '15.03', '1. Supjausstom daržoves ir viską suberiam į vieną.'),
(3, 'Jautienos faršas su svogūnais', '12.97', '1. Pakepiname faršą. 2. Pakepinam svogūną. 3. Viską į vieną'),
(4, 'Kepta vištiena su svogūnais ir petražolėmis', '26.86', '1. Supjaustome vištieną. 2. Pakepiname vištieną 3. Pakepiname svogūną ir petražolę. 4.Viską į vieną'),
(5, 'Keptos bulvės su grietine', '19.22', '1. Supjaustom bulves ir svogūną. 2. Pakepinam bulves ir svogūną. 3. Sumaišome su grietine'),
(6, 'Bulvių košė', '9.52', '1. Supjaustyti bulves 2. Išvirti 3. Sutrinti bulves maišant su pienu'),
(7, 'Teriyaki vištiena', '18.76', '1. Supjaustyti juostelėmis vištieną. 2. Užmarinuoti teriyaki padaže. 3. Iškepti'),
(8, 'Lęšių ir avinžirnių sriuba', '27.23', '1. Supjaustyt daržoves. 2. Virti daržoves ir lęšius. 3. Sutrinti daržoves ir lęšius. 4. Įdėti avinžirnius ir truputį pavirti. 5. Pateikti su grietine'),
(9, 'Avižinė košė', '8.12', '1. Išvirti dribsnius piene'),
(10, 'Mutinys', '8.75', '1. Sumaišyti duoną, braškes ir pieną'),
(12, 'Guliašas', '5.36', '1.Supjaustyti 2.išvirti.'),
(13, 'Koldunai', '10.36', '1.Padaryti rešla. 2. išvirti');

-- --------------------------------------------------------

--
-- Table structure for table `receptai_ingredientai`
--

DROP TABLE IF EXISTS `receptai_ingredientai`;
CREATE TABLE IF NOT EXISTS `receptai_ingredientai` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `receptas_id` smallint(5) UNSIGNED NOT NULL,
  `ingredientas_id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `receptas_id` (`receptas_id`),
  KEY `ingredientas_id` (`ingredientas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receptai_ingredientai`
--

INSERT INTO `receptai_ingredientai` (`id`, `receptas_id`, `ingredientas_id`) VALUES
(1, 1, 6),
(2, 1, 13),
(3, 1, 14),
(4, 1, 15),
(5, 2, 12),
(6, 2, 13),
(7, 2, 14),
(8, 3, 2),
(9, 3, 6),
(10, 4, 1),
(11, 4, 6),
(12, 4, 12),
(13, 5, 6),
(14, 5, 7),
(15, 5, 8),
(16, 6, 4),
(17, 6, 7),
(18, 7, 1),
(19, 7, 9),
(20, 8, 6),
(21, 8, 8),
(22, 8, 10),
(23, 8, 11),
(24, 8, 12),
(25, 9, 4),
(26, 9, 5),
(27, 10, 3),
(28, 10, 4),
(29, 10, 16);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
