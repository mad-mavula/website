-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2020 at 02:04 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `arrack`
--

CREATE TABLE `arrack` (
  `bott_id` varchar(10) NOT NULL,
  `bott_name` varchar(40) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arrack`
--

INSERT INTO `arrack` (`bott_id`, `bott_name`, `price`) VALUES
('BSA', 'Blue sapphire Arrack.750ml', '6350.00'),
('CA', 'Ceylon Arrack.700ml', '9250.00'),
('EAA', 'English apple Arrack.750ml', '8100.00'),
('ESA', 'DCSL Extra special Arrack.750ml', '8010.00'),
('GCA', 'Governer\'s choice Arrack.750ml', '8250.00'),
('HAOA', 'Halmilla age old Arrack.750ml', '5500.00'),
('IDLGL', 'IDL Gold label Arrack.750ml', '7900.00'),
('KEBA', 'King Edward black Arrack.750ml', '5750.00'),
('KTSA', 'Rockland three star Arrack.750ml', '8900.00'),
('PGA', 'Premium grape Arrack.750ml', '6250.00'),
('PWCA', 'Paradise white coconut Arrack.750ml', '4900.00'),
('RDDA', 'Rockland double distilled Arrack.750ml', '6500.00'),
('ROA', 'Rockland old Arrack.750ml', '6010.00'),
('RVX', 'Rockland VX Arrack.750ml', '7500.00'),
('TMA', 'Tropical mango Arrack.750ml', '4750.00'),
('VAT9', 'Vat9 Arrack.750ml', '8000.00'),
('WDGAA', 'White diamond green apple Arrack.750ml', '7950.00'),
('WDL', 'White diam. lemon Arrack.750ml', '8010.00');

-- --------------------------------------------------------

--
-- Table structure for table `beer`
--

CREATE TABLE `beer` (
  `bott_id` varchar(25) NOT NULL,
  `bott_name` varchar(40) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beer`
--

INSERT INTO `beer` (`bott_id`, `bott_name`, `price`) VALUES
('anchorsmooth', 'Anchor Smooth Beer Can 330Ml', '120.00'),
('anchorstrong330', 'Anchor Strong Beer Can 330Ml', '200.00'),
('anchorstrong500', 'Anchor Strong Beer Can 500Ml', '300.00'),
('baronsstrong500', 'Barons Strong Beer Can 500Ml', '340.00'),
('baronsstrong625', 'Barons Strong Brew Beer Bottle 625Ml', '380.00'),
('carlsberg330', 'Carlsberg Beer Can 330Ml', '140.00'),
('carlsberg625', 'Carlsberg Special Brew Beer Bottle 625Ml', '390.00'),
('corona', 'Corona Extra Beer 355Ml', '705.00'),
('heinkenbottle', 'Heineken Beer Bottle 330Ml', '645.00'),
('heinkencan', 'Heineken Beer Can 330Ml', '570.00'),
('lionlager', 'Lion Lager Beer Bottle 325Ml', '145.00'),
('lionstout330', 'Lion Stout Beer Can 330Ml', '210.00'),
('lionstout500', 'Lion Stout Beer Can 500Ml', '330.00'),
('lionstrongbottle', 'Lion Strong Beer Bottle 325Ml', '215.00'),
('sandopower', 'Sando Power Strong Beer Can 500Ml', '290.00'),
('stoutbeer', 'Abc Stout Beer Can 500Ml', '330.00'),
('tigerblackbottle', 'Tiger Black Beer Bottle 640Ml', '350.00'),
('tigerblackcan', 'Tiger Black Beer Can 500Ml', '350.00'),
('wildapplebottle', 'Ryders Wild Apple Beer Bottle 330Ml', '210.00'),
('wildapplecan', 'Ryders Wild Apple Beer Can 500Ml', '310.00');

-- --------------------------------------------------------

--
-- Table structure for table `brandy`
--

CREATE TABLE `brandy` (
  `bott_id` varchar(25) NOT NULL,
  `bott_name` varchar(40) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brandy`
--

INSERT INTO `brandy` (`bott_id`, `bott_name`, `price`) VALUES
('ansac', 'Ansac Cognac Brandy.750ml', '4900.00'),
('bodegas', 'Bodegas torres Brandy.750ml', '8000.00'),
('calvados', 'Calvados Bushnell Brandy.750ml', '4750.00'),
('camuscognac', 'Camus Cognac Brandy.750ml', '8010.00'),
('cardenal', 'Cardenal Mendoza Brandy.750ml', '6200.00'),
('christianbros', 'Christian-Brothers Brandy.750ml', '5750.00'),
('conjure', 'Conjure Cognac Brandy.750ml', '6350.00'),
('courvoisier', 'Courvoisier Cognac Brandy.750ml', '6500.00'),
('driftless', 'Driftless Glen Brandy.750ml', '8900.00'),
('dusse', 'D\'USSE.750ml', '4900.00'),
('gautier', 'Gautier vs Cognac Brandy.750ml', '9250.00'),
('germainrobin', 'Germain Robin Brandy.750ml', '8250.00'),
('jacques', 'Jacques Cardin Brandy.750ml', '8100.00'),
('jacquins', 'Jacquins Brandy.750ml', '7900.00'),
('korbel', 'Korbel Brandy.750ml', '6010.00'),
('landy', 'Landy.750ml', '6250.00'),
('meukow', 'Meukow-Brand Brandy.750ml', '7450.00'),
('mrboston', 'Mr Boston Brandy.750ml', '7950.00'),
('presidente', 'Presidente Brandy.750ml', '7500.00'),
('remymartin', 'Remy Martin Cognac Brandy.750ml', '5500.00');

-- --------------------------------------------------------

--
-- Table structure for table `vodka`
--

CREATE TABLE `vodka` (
  `bott_id` varchar(25) NOT NULL,
  `bott_name` varchar(40) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vodka`
--

INSERT INTO `vodka` (`bott_id`, `bott_name`, `price`) VALUES
('absolute', 'Absolute', '8000.00'),
('beluga', 'Beluga Vodka', '12500.00'),
('chopin', 'Chopin', '7000.00'),
('clubform', 'Club form', '9000.00'),
('flirt', 'FLIRT Vodka', '8200.00'),
('flirtred', 'FLIRT Vodka (RED)', '8100.00'),
('grants', 'Grants', '9500.00'),
('greenlabel', 'Green label', '10000.00'),
('greygoose', 'Grey Goose', '8500.00'),
('iregal', 'Iregal', '12000.00'),
('moulin', 'Moulin Vodka', '12000.00'),
('smirnoff', 'Smiroff', '13000.00');

-- --------------------------------------------------------

--
-- Table structure for table `whiskey`
--

CREATE TABLE `whiskey` (
  `bott_id` varchar(25) NOT NULL,
  `bott_name` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `whiskey`
--

INSERT INTO `whiskey` (`bott_id`, `bott_name`, `price`) VALUES
('ballantines', 'Ballantines Finest Whisky', '7600.00'),
('jackdaniels', 'Jack Daniels', '11500.00'),
('jjirish', 'John Jamesons Irish Whiskey', '9000.00'),
('jwblack', 'Johnnie Walker Black Label', '12350.00'),
('jwdb', 'Johnnie Walker Double Black', '15020.00'),
('jwred', 'Johnnie Walker Red Label', '8080.00'),
('kavalan', 'KAVALAN EX-BOURBON OAK SINGLE MALT WHISKY', '8250.00'),
('kinkarden', 'Kincarden Blended Scotch Whisky.750ml', '8010.00'),
('lochlomond', 'Loch Lomond Original Single Malt Scotch Whisky', '13200.00'),
('macgregor', 'Clan Macgregor', '5300.00'),
('talisker', 'Talisker Malt', '21000.00'),
('vat', 'VAT 69', '6085.00');

-- --------------------------------------------------------

--
-- Table structure for table `wine`
--

CREATE TABLE `wine` (
  `bott_id` varchar(25) NOT NULL,
  `bott_name` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wine`
--

INSERT INTO `wine` (`bott_id`, `bott_name`, `price`) VALUES
('alamos', 'Alamos Malbec', '9000.00'),
('beringer', 'Beringer', '11500.00'),
('echofalls', 'Echo Falls', '9000.00'),
('jacobs', 'Jacobs Creek', '12350.00'),
('lucien', 'Lucien Albrecht', '7600.00'),
('moscato', 'Moscato', '18080.00'),
('ortense', 'Ortense Rosso', '8300.00'),
('saracco', 'Saracco', '13085.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arrack`
--
ALTER TABLE `arrack`
  ADD PRIMARY KEY (`bott_id`);

--
-- Indexes for table `beer`
--
ALTER TABLE `beer`
  ADD PRIMARY KEY (`bott_id`);

--
-- Indexes for table `brandy`
--
ALTER TABLE `brandy`
  ADD PRIMARY KEY (`bott_id`);

--
-- Indexes for table `vodka`
--
ALTER TABLE `vodka`
  ADD PRIMARY KEY (`bott_id`);

--
-- Indexes for table `whiskey`
--
ALTER TABLE `whiskey`
  ADD PRIMARY KEY (`bott_id`);

--
-- Indexes for table `wine`
--
ALTER TABLE `wine`
  ADD PRIMARY KEY (`bott_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
