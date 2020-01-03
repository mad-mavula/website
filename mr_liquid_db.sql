-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2020 at 04:56 AM
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
-- Database: `mr_liquid_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `arrack`
--

CREATE TABLE `arrack` (
  `id` int(10) NOT NULL,
  `code` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double(10,2) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arrack`
--

INSERT INTO `arrack` (`id`, `code`, `name`, `price`, `image`) VALUES
(1, 'BSA', 'Blue sapphire Arrack.750ml', 6350.00, 'images/arrack/1.jpg'),
(2, 'CA', 'Ceylon Arrack.700ml', 9250.00, 'images/arrack/2.jpg'),
(3, 'EAA', 'English apple Arrack.750ml', 8100.00, 'images/arrack/3.jpg'),
(4, 'ESA', 'DCSL Extra special Arrack.750ml', 8010.00, 'images/arrack/4.jpg'),
(5, 'GCA', 'Governer\'s choice Arrack.750ml', 8250.00, 'images/arrack/5.jpg'),
(6, 'HAOA', 'Halmilla age old Arrack.750ml', 5500.00, 'images/arrack/6.jpg'),
(7, 'IDLGL', 'IDL Gold label Arrack.750ml', 7900.00, 'images/arrack/7.jpg'),
(8, 'KEBA', 'King Edward black Arrack.750ml', 5750.00, 'images/arrack/8.jpg'),
(9, 'KTSA', 'Rockland three star Arrack.750ml', 8900.00, 'images/arrack/9.jpg'),
(10, 'PGA', 'Premium grape Arrack.750ml', 6250.00, 'images/arrack/10.jpg'),
(11, 'PWCA', 'Paradise white coconut Arrack.750ml', 4900.00, 'images/arrack/11.jpg'),
(12, 'RDDA', 'Rockland double distilled Arrack.750ml', 6500.00, 'images/arrack/12.jpg'),
(13, 'ROA', 'Rockland old Arrack.750ml', 6010.00, 'images/arrack/13.jpg'),
(14, 'RVX', 'Rockland VX Arrack.750ml', 7500.00, 'images/arrack/14.jpg'),
(15, 'TMA', 'Tropical mango Arrack.750ml', 4750.00, 'images/arrack/15.jpg'),
(16, 'VAT9', 'Vat9 Arrack.750ml', 8000.00, 'images/arrack/16.jpg'),
(17, 'WDGAA', 'White diamond green apple Arrack.750ml', 7950.00, 'images/arrack/17.jpg'),
(18, 'WDL', 'White diam. lemon Arrack.750ml', 8010.00, 'images/arrack/18.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `beer`
--

CREATE TABLE `beer` (
  `id` int(10) NOT NULL,
  `code` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double(10,2) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beer`
--

INSERT INTO `beer` (`id`, `code`, `name`, `price`, `image`) VALUES
(1, 'anchorsmooth', 'Anchor Smooth Beer Can 330Ml', 120.00, 'images/beer/1.jpg'),
(2, 'anchorstrong330', 'Anchor Strong Beer Can 330Ml', 200.00, 'images/beer/2.jpg'),
(3, 'anchorstrong500', 'Anchor Strong Beer Can 500Ml', 300.00, 'images/beer/3.jpg'),
(4, 'baronsstrong500', 'Barons Strong Beer Can 500Ml', 340.00, 'images/beer/4.jpg'),
(5, 'baronsstrong625', 'Barons Strong Brew Beer Bottle 625Ml', 380.00, 'images/beer/5.jpg'),
(6, 'carlsberg330', 'Carlsberg Beer Can 330Ml', 140.00, 'images/beer/6.jpg'),
(7, 'carlsberg625', 'Carlsberg Special Brew Beer Bottle 625Ml', 390.00, 'images/beer/7.jpg'),
(8, 'corona', 'Corona Extra Beer 355Ml', 705.00, 'images/beer/8.jpg'),
(9, 'heinkenbottle', 'Heineken Beer Bottle 330Ml', 645.00, 'images/beer/9.jpg'),
(10, 'heinkencan', 'Heineken Beer Can 330Ml', 570.00, 'images/beer/10.jpg'),
(11, 'lionlager', 'Lion Lager Beer Bottle 325Ml', 145.00, 'images/beer/11.jpg'),
(12, 'lionstout330', 'Lion Stout Beer Can 330Ml', 210.00, 'images/beer/12.jpg'),
(13, 'lionstout500', 'Lion Stout Beer Can 500Ml', 330.00, 'images/beer/13.jpg'),
(14, 'lionstrongbottle', 'Lion Strong Beer Bottle 325Ml', 215.00, 'images/beer/14.jpg'),
(15, 'sandopower', 'Sando Power Strong Beer Can 500Ml', 290.00, 'images/beer/15.jpg'),
(16, 'stoutbeer', 'Abc Stout Beer Can 500Ml', 330.00, 'images/beer/16.jpg'),
(17, 'tigerblackbottle', 'Tiger Black Beer Bottle 640Ml', 350.00, 'images/beer/17.jpg'),
(18, 'tigerblackcan', 'Tiger Black Beer Can 500Ml', 350.00, 'images/beer/18.jpg'),
(19, 'wildapplebottle', 'Ryders Wild Apple Beer Bottle 330Ml', 210.00, 'images/beer/19.jpg'),
(20, 'wildapplecan', 'Ryders Wild Apple Beer Can 500Ml', 310.00, 'images/beer/20.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `brandy`
--

CREATE TABLE `brandy` (
  `id` int(10) NOT NULL,
  `code` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double(10,2) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brandy`
--

INSERT INTO `brandy` (`id`, `code`, `name`, `price`, `image`) VALUES
(1, 'ansac', 'Ansac Cognac Brandy.750ml', 4900.00, 'images/brandy/1.jpg'),
(2, 'bodegas', 'Bodegas torres Brandy.750ml', 8000.00, 'images/brandy/2.jpg'),
(3, 'calvados', 'Calvados Bushnell Brandy.750ml', 4750.00, 'images/brandy/3.jpg'),
(4, 'camuscognac', 'Camus Cognac Brandy.750ml', 8010.00, 'images/brandy/4.jpg'),
(5, 'cardenal', 'Cardenal Mendoza Brandy.750ml', 6200.00, 'images/brandy/5.jpg'),
(6, 'christianbros', 'Christian-Brothers Brandy.750ml', 5750.00, 'images/brandy/6.jpg'),
(7, 'conjure', 'Conjure Cognac Brandy.750ml', 6350.00, 'images/brandy/7.jpg'),
(8, 'courvoisier', 'Courvoisier Cognac Brandy.750ml', 6500.00, 'images/brandy/8.jpg'),
(9, 'driftless', 'Driftless Glen Brandy.750ml', 8900.00, 'images/brandy/9.jpg'),
(10, 'dusse', 'D\'USSE.750ml', 4900.00, 'images/brandy/10.jpg'),
(11, 'gautier', 'Gautier vs Cognac Brandy.750ml', 9250.00, 'images/brandy/11.jpg'),
(12, 'germainrobin', 'Germain Robin Brandy.750ml', 8250.00, 'images/brandy/12.jpg'),
(13, 'jacques', 'Jacques Cardin Brandy.750ml', 8100.00, 'images/brandy/13.jpg'),
(14, 'jacquins', 'Jacquins Brandy.750ml', 7900.00, 'images/brandy/14.jpg'),
(15, 'korbel', 'Korbel Brandy.750ml', 6010.00, 'images/brandy/15.jpg'),
(16, 'landy', 'Landy.750ml', 6250.00, 'images/brandy/16.jpg'),
(17, 'meukow', 'Meukow-Brand Brandy.750ml', 7450.00, 'images/brandy/17.jpg'),
(18, 'mrboston', 'Mr Boston Brandy.750ml', 7950.00, 'images/brandy/18.jpg'),
(19, 'presidente', 'Presidente Brandy.750ml', 7500.00, 'images/brandy/19.jpg'),
(20, 'remymartin', 'Remy Martin Cognac Brandy.750ml', 5500.00, 'images/brandy/20.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `liquor`
--

CREATE TABLE `liquor` (
  `id` int(10) NOT NULL,
  `code` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double(10,2) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `liquor`
--

INSERT INTO `liquor` (`id`, `code`, `name`, `price`, `image`) VALUES
(1, 'BSA', 'Blue sapphire Arrack.750ml', 6350.00, 'images/arrack/1.jpg'),
(2, 'CA', 'Ceylon Arrack.700ml', 9250.00, 'images/arrack/2.jpg'),
(3, 'EAA', 'English apple Arrack.750ml', 8100.00, 'images/arrack/3.jpg'),
(4, 'ESA', 'DCSL Extra special Arrack.750ml', 8010.00, 'images/arrack/4.jpg'),
(5, 'GCA', 'Governer\'s choice Arrack.750ml', 8250.00, 'images/arrack/5.jpg'),
(6, 'HAOA', 'Halmilla age old Arrack.750ml', 5500.00, 'images/arrack/6.jpg'),
(7, 'IDLGL', 'IDL Gold label Arrack.750ml', 7900.00, 'images/arrack/7.jpg'),
(8, 'KEBA', 'King Edward black Arrack.750ml', 5750.00, 'images/arrack/8.jpg'),
(9, 'KTSA', 'Rockland three star Arrack.750ml', 8900.00, 'images/arrack/9.jpg'),
(10, 'PGA', 'Premium grape Arrack.750ml', 6250.00, 'images/arrack/10.jpg'),
(11, 'PWCA', 'Paradise white coconut Arrack.750ml', 4900.00, 'images/arrack/11.jpg'),
(12, 'RDDA', 'Rockland double distilled Arrack.750ml', 6500.00, 'images/arrack/12.jpg'),
(13, 'ROA', 'Rockland old Arrack.750ml', 6010.00, 'images/arrack/13.jpg'),
(14, 'RVX', 'Rockland VX Arrack.750ml', 7500.00, 'images/arrack/14.jpg'),
(15, 'TMA', 'Tropical mango Arrack.750ml', 4750.00, 'images/arrack/15.jpg'),
(16, 'VAT9', 'Vat9 Arrack.750ml', 8000.00, 'images/arrack/16.jpg'),
(17, 'WDGAA', 'White diamond green apple Arrack.750ml', 7950.00, 'images/arrack/17.jpg'),
(18, 'WDL', 'White diam. lemon Arrack.750ml', 8010.00, 'images/arrack/18.jpg'),
(19, 'anchorsmooth', 'Anchor Smooth Beer Can 330Ml', 120.00, 'images/beer/1.jpg'),
(20, 'anchorstrong330', 'Anchor Strong Beer Can 330Ml', 200.00, 'images/beer/2.jpg'),
(21, 'anchorstrong500', 'Anchor Strong Beer Can 500Ml', 300.00, 'images/beer/3.jpg'),
(22, 'baronsstrong500', 'Barons Strong Beer Can 500Ml', 340.00, 'images/beer/4.jpg'),
(23, 'baronsstrong625', 'Barons Strong Brew Beer Bottle 625Ml', 380.00, 'images/beer/5.jpg'),
(24, 'carlsberg330', 'Carlsberg Beer Can 330Ml', 140.00, 'images/beer/6.jpg'),
(25, 'carlsberg625', 'Carlsberg Special Brew Beer Bottle 625Ml', 390.00, 'images/beer/7.jpg'),
(26, 'corona', 'Corona Extra Beer 355Ml', 705.00, 'images/beer/8.jpg'),
(27, 'heinkenbottle', 'Heineken Beer Bottle 330Ml', 645.00, 'images/beer/9.jpg'),
(28, 'heinkencan', 'Heineken Beer Can 330Ml', 570.00, 'images/beer/10.jpg'),
(29, 'lionlager', 'Lion Lager Beer Bottle 325Ml', 145.00, 'images/beer/11.jpg'),
(30, 'lionstout330', 'Lion Stout Beer Can 330Ml', 210.00, 'images/beer/12.jpg'),
(31, 'lionstout500', 'Lion Stout Beer Can 500Ml', 330.00, 'images/beer/13.jpg'),
(32, 'lionstrongbottle', 'Lion Strong Beer Bottle 325Ml', 215.00, 'images/beer/14.jpg'),
(33, 'sandopower', 'Sando Power Strong Beer Can 500Ml', 290.00, 'images/beer/15.jpg'),
(34, 'stoutbeer', 'Abc Stout Beer Can 500Ml', 330.00, 'images/beer/16.jpg'),
(35, 'tigerblackbottle', 'Tiger Black Beer Bottle 640Ml', 350.00, 'images/beer/17.jpg'),
(36, 'tigerblackcan', 'Tiger Black Beer Can 500Ml', 350.00, 'images/beer/18.jpg'),
(37, 'wildapplebottle', 'Ryders Wild Apple Beer Bottle 330Ml', 210.00, 'images/beer/19.jpg'),
(38, 'wildapplecan', 'Ryders Wild Apple Beer Can 500Ml', 310.00, 'images/beer/20.jpg'),
(39, 'ansac', 'Ansac Cognac Brandy.750ml', 4900.00, 'images/brandy/1.jpg'),
(40, 'bodegas', 'Bodegas torres Brandy.750ml', 8000.00, 'images/brandy/2.jpg'),
(41, 'calvados', 'Calvados Bushnell Brandy.750ml', 4750.00, 'images/brandy/3.jpg'),
(42, 'camuscognac', 'Camus Cognac Brandy.750ml', 8010.00, 'images/brandy/4.jpg'),
(43, 'cardenal', 'Cardenal Mendoza Brandy.750ml', 6200.00, 'images/brandy/5.jpg'),
(44, 'christianbros', 'Christian-Brothers Brandy.750ml', 5750.00, 'images/brandy/6.jpg'),
(45, 'conjure', 'Conjure Cognac Brandy.750ml', 6350.00, 'images/brandy/7.jpg'),
(46, 'courvoisier', 'Courvoisier Cognac Brandy.750ml', 6500.00, 'images/brandy/8.jpg'),
(47, 'driftless', 'Driftless Glen Brandy.750ml', 8900.00, 'images/brandy/9.jpg'),
(48, 'dusse', 'D\'USSE.750ml', 4900.00, 'images/brandy/10.jpg'),
(49, 'gautier', 'Gautier vs Cognac Brandy.750ml', 9250.00, 'images/brandy/11.jpg'),
(50, 'germainrobin', 'Germain Robin Brandy.750ml', 8250.00, 'images/brandy/12.jpg'),
(51, 'jacques', 'Jacques Cardin Brandy.750ml', 8100.00, 'images/brandy/13.jpg'),
(52, 'jacquins', 'Jacquins Brandy.750ml', 7900.00, 'images/brandy/14.jpg'),
(53, 'korbel', 'Korbel Brandy.750ml', 6010.00, 'images/brandy/15.jpg'),
(54, 'landy', 'Landy.750ml', 6250.00, 'images/brandy/16.jpg'),
(55, 'meukow', 'Meukow-Brand Brandy.750ml', 7450.00, 'images/brandy/17.jpg'),
(56, 'mrboston', 'Mr Boston Brandy.750ml', 7950.00, 'images/brandy/18.jpg'),
(57, 'presidente', 'Presidente Brandy.750ml', 7500.00, 'images/brandy/19.jpg'),
(58, 'remymartin', 'Remy Martin Cognac Brandy.750ml', 5500.00, 'images/brandy/20.jpg'),
(59, 'absolute', 'Absolute', 8000.00, 'images/vodka/1.jpg'),
(60, 'beluga', 'Beluga Vodka', 12500.00, 'images/vodka/2.jpg'),
(61, 'chopin', 'Chopin', 7000.00, 'images/vodka/3.jpg'),
(62, 'clubform', 'Club form', 9000.00, 'images/vodka/4.jpg'),
(63, 'flirt', 'FLIRT Vodka', 8200.00, 'images/vodka/5.jpg'),
(64, 'flirtred', 'FLIRT Vodka (RED)', 8100.00, 'images/vodka/6.jpg'),
(65, 'grants', 'Grants', 9500.00, 'images/vodka/7.jpg'),
(66, 'greenlabel', 'Green label', 10000.00, 'images/vodka/8.jpg'),
(67, 'greygoose', 'Grey Goose', 8500.00, 'images/vodka/9.jpg'),
(68, 'iregal', 'Iregal', 12000.00, 'images/vodka/10.jpg'),
(69, 'moulin', 'Moulin Vodka', 12000.00, 'images/vodka/11.jpg'),
(70, 'smirnoff', 'Smiroff', 13000.00, 'images/vodka/12.jpg'),
(71, 'ballantines', 'Ballantines Finest Whisky', 7600.00, 'images/whisky/1.jpg'),
(72, 'jackdaniels', 'Jack Daniels', 11500.00, 'images/whisky/2.jpg'),
(73, 'jjirish', 'John Jamesons Irish Whiskey', 9000.00, 'images/whisky/3.jpg'),
(74, 'jwblack', 'Johnnie Walker Black Label', 12350.00, 'images/whisky/4.jpg'),
(75, 'jwdb', 'Johnnie Walker Double Black', 15020.00, 'images/whisky/5.jpg'),
(76, 'jwred', 'Johnnie Walker Red Label', 8080.00, 'images/whisky/6.jpg'),
(77, 'kavalan', 'KAVALAN EX-BOURBON OAK SINGLE MALT WHISKY', 8250.00, 'images/whisky/7.jpg'),
(78, 'kinkarden', 'Kincarden Blended Scotch Whisky.750ml', 8010.00, 'images/whisky/8.jpg'),
(79, 'lochlomond', 'Loch Lomond Original Single Malt Scotch Whisky', 13200.00, 'images/whisky/9.jpg'),
(80, 'macgregor', 'Clan Macgregor', 5300.00, 'images/whisky/10.jpg'),
(81, 'talisker', 'Talisker Malt', 21000.00, 'images/whisky/11.jpg'),
(82, 'vat', 'VAT 69', 6085.00, 'images/whisky/12.jpg'),
(83, 'alamos', 'Alamos Malbec', 9000.00, 'images/wine/1.jpg'),
(84, 'beringer', 'Beringer', 11500.00, 'images/wine/2.jpg'),
(85, 'echofalls', 'Echo Falls', 9000.00, 'images/wine/3.jpg'),
(86, 'jacobs', 'Jacobs Creek', 12350.00, 'images/wine/4.jpg'),
(87, 'lucien', 'Lucien Albrecht', 7600.00, 'images/wine/5.jpg'),
(88, 'moscato', 'Moscato', 18080.00, 'images/wine/6.jpg'),
(89, 'ortense', 'Ortense Rosso', 8300.00, 'images/wine/7.jpg'),
(90, 'saracco', 'Saracco', 13085.00, 'images/wine/8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `vodka`
--

CREATE TABLE `vodka` (
  `id` int(10) NOT NULL,
  `code` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double(10,2) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vodka`
--

INSERT INTO `vodka` (`id`, `code`, `name`, `price`, `image`) VALUES
(1, 'absolute', 'Absolute', 8000.00, 'images/vodka/1.jpg'),
(2, 'beluga', 'Beluga Vodka', 12500.00, 'images/vodka/2.jpg'),
(3, 'chopin', 'Chopin', 7000.00, 'images/vodka/3.jpg'),
(4, 'clubform', 'Club form', 9000.00, 'images/vodka/4.jpg'),
(5, 'flirt', 'FLIRT Vodka', 8200.00, 'images/vodka/5.jpg'),
(6, 'flirtred', 'FLIRT Vodka (RED)', 8100.00, 'images/vodka/6.jpg'),
(7, 'grants', 'Grants', 9500.00, 'images/vodka/7.jpg'),
(8, 'greenlabel', 'Green label', 10000.00, 'images/vodka/8.jpg'),
(9, 'greygoose', 'Grey Goose', 8500.00, 'images/vodka/9.jpg'),
(10, 'iregal', 'Iregal', 12000.00, 'images/vodka/10.jpg'),
(11, 'moulin', 'Moulin Vodka', 12000.00, 'images/vodka/11.jpg'),
(12, 'smirnoff', 'Smiroff', 13000.00, 'images/vodka/12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `whisky`
--

CREATE TABLE `whisky` (
  `id` int(10) NOT NULL,
  `code` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double(10,2) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `whisky`
--

INSERT INTO `whisky` (`id`, `code`, `name`, `price`, `image`) VALUES
(1, 'ballantines', 'Ballantines Finest Whisky', 7600.00, 'images/whisky/1.jpg'),
(2, 'jackdaniels', 'Jack Daniels', 11500.00, 'images/whisky/2.jpg'),
(3, 'jjirish', 'John Jamesons Irish Whiskey', 9000.00, 'images/whisky/3.jpg'),
(4, 'jwblack', 'Johnnie Walker Black Label', 12350.00, 'images/whisky/4.jpg'),
(5, 'jwdb', 'Johnnie Walker Double Black', 15020.00, 'images/whisky/5.jpg'),
(6, 'jwred', 'Johnnie Walker Red Label', 8080.00, 'images/whisky/6.jpg'),
(7, 'kavalan', 'KAVALAN EX-BOURBON OAK SINGLE MALT WHISKY', 8250.00, 'images/whisky/7.jpg'),
(8, 'kinkarden', 'Kincarden Blended Scotch Whisky.750ml', 8010.00, 'images/whisky/8.jpg'),
(9, 'lochlomond', 'Loch Lomond Original Single Malt Scotch Whisky', 13200.00, 'images/whisky/9.jpg'),
(10, 'macgregor', 'Clan Macgregor', 5300.00, 'images/whisky/10.jpg'),
(11, 'talisker', 'Talisker Malt', 21000.00, 'images/whisky/11.jpg'),
(12, 'vat', 'VAT 69', 6085.00, 'images/whisky/12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wine`
--

CREATE TABLE `wine` (
  `id` int(10) NOT NULL,
  `code` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double(10,2) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wine`
--

INSERT INTO `wine` (`id`, `code`, `name`, `price`, `image`) VALUES
(1, 'alamos', 'Alamos Malbec', 9000.00, 'images/wine/1.jpg'),
(2, 'beringer', 'Beringer', 11500.00, 'images/wine/2.jpg'),
(3, 'echofalls', 'Echo Falls', 9000.00, 'images/wine/3.jpg'),
(4, 'jacobs', 'Jacobs Creek', 12350.00, 'images/wine/4.jpg'),
(5, 'lucien', 'Lucien Albrecht', 7600.00, 'images/wine/5.jpg'),
(6, 'moscato', 'Moscato', 18080.00, 'images/wine/6.jpg'),
(7, 'ortense', 'Ortense Rosso', 8300.00, 'images/wine/7.jpg'),
(8, 'saracco', 'Saracco', 13085.00, 'images/wine/8.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arrack`
--
ALTER TABLE `arrack`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beer`
--
ALTER TABLE `beer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brandy`
--
ALTER TABLE `brandy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liquor`
--
ALTER TABLE `liquor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vodka`
--
ALTER TABLE `vodka`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whisky`
--
ALTER TABLE `whisky`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wine`
--
ALTER TABLE `wine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arrack`
--
ALTER TABLE `arrack`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `beer`
--
ALTER TABLE `beer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `brandy`
--
ALTER TABLE `brandy`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `liquor`
--
ALTER TABLE `liquor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `vodka`
--
ALTER TABLE `vodka`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `whisky`
--
ALTER TABLE `whisky`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wine`
--
ALTER TABLE `wine`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
