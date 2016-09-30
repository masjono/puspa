-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2014 at 05:43 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_acquis`
--

-- --------------------------------------------------------

--
-- Table structure for table `main_inventory_received`
--

CREATE TABLE IF NOT EXISTS `main_inventory_received` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main_inventory` int(11) NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `alasan` varchar(512) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '1',
  `tanggal` date NOT NULL,
  `fk_br_mainpeserta_inv` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main_inventory` (`id_main_inventory`),
  KEY `fk_br_mainpeserta_inv` (`fk_br_mainpeserta_inv`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `main_inventory_received`
--

INSERT INTO `main_inventory_received` (`id`, `id_main_inventory`, `kuantitas`, `alasan`, `flag`, `tanggal`, `fk_br_mainpeserta_inv`) VALUES
(4, 37, 1, '', 1, '2014-11-19', 60),
(5, 37, 1, '', 1, '2014-11-19', 60),
(6, 37, 2, 'sss', 1, '2014-11-19', 60),
(7, 37, 1, 'sss', 1, '2014-11-19', 60),
(8, 37, 1, '', 1, '2014-11-19', 60);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `main_inventory_received`
--
ALTER TABLE `main_inventory_received`
  ADD CONSTRAINT `main_inventory_received_ibfk_1` FOREIGN KEY (`id_main_inventory`) REFERENCES `main_inventory` (`kode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `main_inventory_received_ibfk_2` FOREIGN KEY (`fk_br_mainpeserta_inv`) REFERENCES `br_rel_mainpeserta_inventory` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
