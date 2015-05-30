-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2015 at 08:35 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `emblemlookup`
--

INSERT INTO `emblemlookup` (`ID`, `Url`, `Name`) VALUES
(68, 'Images/emblems/negro.png', 'Default'),
(69, 'Images/emblems/argentina-football-association.png', 'Argentina'),
(70, 'Images/emblems/arsenal.png', 'Arsenal'),
(71, 'Images/emblems/atlc3a9tico-madrid-logo.png', 'Atl Madrid'),
(72, 'Images/emblems/atlc3a9tico-nacional-logo.png', 'Atl Nacional'),
(73, 'Images/emblems/barcelona-fc-logo.png', 'Barcelona'),
(74, 'Images/emblems/bayern-munchen-logo.png', 'Bayern Munich'),
(75, 'Images/emblems/boca-juniors-logo.png', 'Boca'),
(76, 'Images/emblems/botafogo-hd-logo.png', 'Botafogo'),
(77, 'Images/emblems/brazilian-football-confederation.png', 'Brazil'),
(78, 'Images/emblems/cd-guadalajara-hd-logo.png', 'Chivas'),
(79, 'Images/emblems/cf-pachuca-hd-logo.png', 'Pachuca'),
(80, 'Images/emblems/chelsea.png', 'Chelsea'),
(81, 'Images/emblems/club-america-hd-logo.png', 'America'),
(82, 'Images/emblems/club-atlas-hd-logo.png', 'Atlas'),
(83, 'Images/emblems/colombian-football-federation.png', 'Colombia'),
(84, 'Images/emblems/corinthians-hd-logo.png', 'Corinthians'),
(86, 'Images/emblems/cote-divoire-football-federation.png', 'Costa de Marfil'),
(87, 'Images/emblems/cruz-azul-hd-logo.png', 'Cruz Azul'),
(88, 'Images/emblems/Deportivo_Cali_Logo.svg.png', 'Dep. Cali'),
(89, 'Images/emblems/deportivo-toluca-fc-hd-logo.png', 'Toluca'),
(90, 'Images/emblems/england-football-federation.png', 'Inglaterra'),
(91, 'Images/emblems/flamengo-hd-logo.png', 'Flamengo'),
(92, 'Images/emblems/france-football-federation.png', 'Francia'),
(94, 'Images/emblems/ghana-football-association.png', 'Ghana'),
(95, 'Images/emblems/honduras-football-federation.png', 'Honduras'),
(96, 'Images/emblems/inter-milan-hd-logo.png', 'Inter'),
(97, 'Images/emblems/italy-football-federation.png', 'Italia'),
(98, 'Images/emblems/juventus-hd-logo.png', 'Juventus'),
(99, 'Images/emblems/manchester-city.png', 'Man. City'),
(100, 'Images/emblems/mexico-football-association.png', 'Mexico'),
(101, 'Images/emblems/milan-hd-logo.png', 'Milan'),
(102, 'Images/emblems/netherlands-football-federation.png', 'Holanda'),
(103, 'Images/emblems/paris-saint-germain-fc-hd-logo.png', 'PSG'),
(104, 'Images/emblems/porto-fc-hd-logo.png', 'Porto'),
(105, 'Images/emblems/real-madrid-logo.png', 'Real Madrid'),
(106, 'Images/emblems/rentistas-logo.png', 'Rentistas'),
(107, 'Images/emblems/river-plate-logo.png', 'River'),
(108, 'Images/emblems/romania-logo.png', 'Romania'),
(109, 'Images/emblems/united-states-soccer-federation.png', 'USA'),
(110, 'Images/emblems/uruguay-football-association.png', 'Uruguay'),
(111, 'Images/emblems/penarol.png', 'Peñarol'),
(112, 'Images/emblems/nacional.png', 'Nacional'),
(113, 'Images/emblems/atlante.png', 'Atlante'),
(114, 'Images/emblems/monarcas.png', 'Monarcas'),
(115, 'Images/emblems/monterrey.png', 'Monterrey'),
(116, 'Images/emblems/leon.png', 'Leon'),
(117, 'Images/emblems/santoslaguna.png', 'Santos Laguna'),
(118, 'Images/emblems/tijuana.png', 'Tijuana'),
(119, 'Images/emblems/puebla.png', 'Puebla'),
(120, 'Images/emblems/pumas.png', 'Pumas'),
(121, 'Images/emblems/queretaro.png', 'Queretaro'),
(122, 'Images/emblems/tigres.png', 'Tigres'),
(123, 'Images/emblems/duluth.png', 'Duluth'),
(124, 'Images/emblems/ksa.png', 'KSA'),
(125, 'Images/emblems/sagitario.png', 'Sagitario'),
(126, 'Images/emblems/dvtec.png', 'Dept Vtec'),
(127, 'Images/emblems/amarillo.png', 'Amarillo'),
(128, 'Images/emblems/azul.png', 'Azul'),
(129, 'Images/emblems/naranja.png', 'Naranja'),
(130, 'Images/emblems/rojo.png', 'Rojo'),
(131, 'Images/emblems/verde.png', 'Verde'),
(132, 'Images/emblems/violeta.png', 'Violeta'),
(133, 'Images/emblems/blanco.png', 'Blanco'),
(134, 'Images/emblems/negro.png', 'Negro'),
(147, 'Images/emblems/cameroon-football-federation.png', 'Camerun'),
(148, 'Images/emblems/chile-football-federation.png', 'Chile'),
(150, 'Images/emblems/ecuador-football-federation.png', 'Ecuador'),
(151, 'Images/emblems/portugal-football-federation.png', 'Portugal'),
(155, 'Images/emblems/costa-rica-football-federation.png', 'Costa Rica'),
(158, 'Images/emblems/germany-football-association.png', 'Alemania');

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
(1, 0, '00:00:00', '00:00:00', b'0', 1, 2, b'0', b'0', b'0', 2);

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
(1, 'Portugal', 5, 0, 151),
(2, 'Chile', 6, 0, 148);

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
-- AUTO_INCREMENT for table `emblemlookup`
--
ALTER TABLE `emblemlookup`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=162;
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
