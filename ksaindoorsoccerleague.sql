-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2015 at 05:59 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ksaindoorsoccerleague`
--

-- --------------------------------------------------------

--
-- Table structure for table `emblemlookup`
--

CREATE TABLE IF NOT EXISTS `emblemlookup` (
  `ID` int(11) NOT NULL,
  `Url` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `Name` varchar(200) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `emblemlookup`
--

INSERT INTO `emblemlookup` (`ID`, `Url`, `Name`) VALUES
(0, 'Images/emblems/negro.png', ''),
(1, 'Images/emblems/argentina-football-association.png', 'Argentina'),
(2, 'Images/emblems/arsenal.png', 'Arsenal'),
(3, 'Images/emblems/atlc3a9tico-madrid-logo.png', 'Atl Madrid'),
(4, 'Images/emblems/atlc3a9tico-nacional-logo.png', 'Atl Nacional'),
(5, 'Images/emblems/barcelona-fc-logo.png', 'Barcelona'),
(6, 'Images/emblems/bayern-munchen-logo.png', 'Bayern Munich'),
(7, 'Images/emblems/boca-juniors-logo.png', 'Boca'),
(8, 'Images/emblems/botafogo-hd-logo.png', 'Botafogo'),
(9, 'Images/emblems/brazilian-football-confederation.png', 'Brazil'),
(10, 'Images/emblems/cd-guadalajara-hd-logo.png', 'Chivas'),
(11, 'Images/emblems/cf-pachuca-hd-logo.png', 'Pachuca'),
(12, 'Images/emblems/chelsea.png', 'Chelsea'),
(13, 'Images/emblems/club-america-hd-logo.png', 'America'),
(14, 'Images/emblems/club-atlas-hd-logo.png', 'Atlas'),
(15, 'Images/emblems/colombian-football-federation.png', 'Colombia'),
(16, 'Images/emblems/corinthians-hd-logo.png', 'Corinthians'),
(17, 'Images/emblems/costa-rica-football-federation.png', 'Costa Rica'),
(18, 'Images/emblems/cote-divoire-football-federation.png', 'Costa de Marfil'),
(19, 'Images/emblems/cruz-azul-hd-logo.png', 'Cruz Azul'),
(20, 'Images/emblems/Deportivo_Cali_Logo.svg.png', 'Dep. Cali'),
(21, 'Images/emblems/deportivo-toluca-fc-hd-logo.png', 'Toluca'),
(22, 'Images/emblems/england-football-federation.png', 'Inglaterra'),
(23, 'Images/emblems/flamengo-hd-logo.png', 'Flamengo'),
(24, 'Images/emblems/france-football-federation.png', 'Francia'),
(25, 'Images/emblems/germany-football-association.png', 'Alemania'),
(26, 'Images/emblems/ghana-football-association.png', 'Ghana'),
(27, 'Images/emblems/honduras-football-federation.png', 'Honduras'),
(28, 'Images/emblems/inter-milan-hd-logo.png', 'Inter'),
(29, 'Images/emblems/italy-football-federation.png', 'Italia'),
(30, 'Images/emblems/juventus-hd-logo.png', 'Juventus'),
(31, 'Images/emblems/manchester-city.png', 'Man. City'),
(32, 'Images/emblems/mexico-football-association.png', 'Mexico'),
(33, 'Images/emblems/milan-hd-logo.png', 'Milan'),
(34, 'Images/emblems/netherlands-football-federation.png', 'Holanda'),
(35, 'Images/emblems/paris-saint-germain-fc-hd-logo.png', 'PSG'),
(37, 'Images/emblems/porto-fc-hd-logo.png', 'Porto'),
(38, 'Images/emblems/real-madrid-logo.png', 'Real Madrid'),
(39, 'Images/emblems/rentistas-logo.png', 'Rentistas'),
(40, 'Images/emblems/river-plate-logo.png', 'River'),
(41, 'Images/emblems/romania-logo.png', 'Romania'),
(42, 'Images/emblems/united-states-soccer-federation.png', 'USA'),
(43, 'Images/emblems/uruguay-football-association.png', 'Uruguay'),
(44, 'Images/emblems/penarol.png', 'Peñarol'),
(45, 'Images/emblems/nacional.png', 'Nacional'),
(46, 'Images/emblems/atlante.png', 'Atlante'),
(47, 'Images/emblems/monarcas.png', 'Monarcas'),
(48, 'Images/emblems/monterrey.png', 'Monterrey'),
(49, 'Images/emblems/leon.png', 'Leon'),
(50, 'Images/emblems/santoslaguna.png', 'Santos Laguna'),
(51, 'Images/emblems/tijuana.png', 'Tijuana'),
(52, 'Images/emblems/puebla.png', 'Puebla'),
(53, 'Images/emblems/pumas.png', 'Pumas'),
(54, 'Images/emblems/queretaro.png', 'Queretaro'),
(55, 'Images/emblems/tigres.png', 'Tigres'),
(56, 'Images/emblems/duluth.png', 'Duluth'),
(57, 'Images/emblems/ksa.png', 'KSA'),
(58, 'Images/emblems/sagitario.png', 'Sagitario'),
(59, 'Images/emblems/dvtec.png', 'Dept Vtec'),
(60, 'Images/emblems/amarillo.png', 'Amarillo'),
(61, 'Images/emblems/azul.png', 'Azul'),
(62, 'Images/emblems/naranja.png', 'Naranja'),
(63, 'Images/emblems/rojo.png', 'Rojo'),
(64, 'Images/emblems/verde.png', 'Verde'),
(65, 'Images/emblems/violeta.png', 'Violeta'),
(66, 'Images/emblems/blanco.png', 'Blanco'),
(67, 'Images/emblems/negro.png', 'Negro');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `ID` int(11) NOT NULL,
  `GameTime` int(11) NOT NULL,
  `StartTime` time NOT NULL,
  `StoppedTime` time NOT NULL,
  `Running` bit(1) NOT NULL,
  `T1ID` int(11) NOT NULL,
  `T2ID` int(11) NOT NULL,
  `IsDirty` bit(1) NOT NULL,
  `IsReset` bit(1) NOT NULL,
  `Buzzer` bit(1) NOT NULL,
  `Half` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`ID`, `GameTime`, `StartTime`, `StoppedTime`, `Running`, `T1ID`, `T2ID`, `IsDirty`, `IsReset`, `Buzzer`, `Half`) VALUES
(1, 0, '00:00:00', '00:00:00', b'0', 1, 2, b'0', b'0', b'0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `session_team`
--

CREATE TABLE IF NOT EXISTS `session_team` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Score` int(11) NOT NULL,
  `Fouls` int(11) NOT NULL,
  `EmblemID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session_team`
--

INSERT INTO `session_team` (`ID`, `Name`, `Score`, `Fouls`, `EmblemID`) VALUES
(1, '', 0, 0, 0),
(2, '', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emblemlookup`
--
ALTER TABLE `emblemlookup`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `session_team`
--
ALTER TABLE `session_team`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `session_team`
--
ALTER TABLE `session_team`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
