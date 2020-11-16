-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 16, 2020 at 02:35 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favourite_things`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_favourite_things_info`
--

DROP TABLE IF EXISTS `tb_favourite_things_info`;
CREATE TABLE IF NOT EXISTS `tb_favourite_things_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `Image` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_favourite_things_info`
--

INSERT INTO `tb_favourite_things_info` (`ID`, `Name`, `Description`, `Image`) VALUES
(1, 'Football', 'Everyone has his passion, his own interests. With the excitement, you can do all day long without being bored. Sports are the common favorite of many and football is a popular sport, loved all over the world. I Play football for health, fun and entertainment after the stressful hours of work and study.', 'football.jpg'),
(2, 'Cricket', 'It is a well-known fact that cricket helps to keep your body fit and strong apart from improving your hand-eye coordination as well as ball-handling skills. There is a lot of physical activity that is associated with cricket. The major health benefits of playing cricket include enhancing your endurance as well as your stamina. ', 'cricket.jpg'),
(3, 'Volleyball', 'Although I have only started playing this sport when I was thirteen, volleyball is such a great game to play whether for fun or competitively. Being on the court with five other teammates with the intense adrenaline running through your veins we can only anticipate and continue to anticipate the ball to come to you.', 'volleyball.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
