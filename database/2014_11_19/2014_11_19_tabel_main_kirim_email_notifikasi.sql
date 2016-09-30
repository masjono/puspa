-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2014 at 11:37 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `acquis`
--

-- --------------------------------------------------------

--
-- Table structure for table `main_kirim_email`
--

CREATE TABLE IF NOT EXISTS `main_kirim_email` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `to` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` enum('belum','terkirim','gagal','') NOT NULL DEFAULT 'belum',
  `tipe` enum('dokumen_mandatory_expired','90_hari_sebelum_habis_kontrak_MD','hari_h_kontrak_habis_SD','pendaftaran_lelang','penetapan_pemenang','lolos_tidak_lolos_2_tahap','deadline_submit_proposal','pendaftaran_corporate','upload_proposal') NOT NULL,
  `url` text,
  `id_pekerjaan` int(255) DEFAULT NULL,
  `nama_perusahaan` text,
  `tahun_bulan` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prevent_mail` (`tahun_bulan`,`tipe`,`to`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `main_kirim_email`
--

INSERT INTO `main_kirim_email` (`id`, `to`, `subject`, `message`, `status`, `tipe`, `url`, `id_pekerjaan`, `nama_perusahaan`, `tahun_bulan`) VALUES
(1, 'donnadonnyhando.yo@gmail.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'PT CIRCLE K, kami ingin menginformasikan bahwa status perusahaan anda menjadi `Unverified` karena terdapat berkas/dokumen administrasi KTP yang telah kadaluarsa pada hari ini (19 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, 'PT CIRCLE K', NULL),
(2, 'acquis@gmail.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'Kami ingin menginformasikan bahwa status perusahaan PT CIRCLE K menjadi `Unverified` karena terdapat berkas/dokumen administrasi KTP yang telah kadaluarsa pada hari ini (19 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, NULL, NULL),
(3, 'admin@acquis.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'Kami ingin menginformasikan bahwa status perusahaan PT CIRCLE K menjadi `Unverified` karena terdapat berkas/dokumen administrasi KTP yang telah kadaluarsa pada hari ini (19 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, NULL, NULL),
(4, 'acquis@gmail.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'Kami ingin menginformasikan bahwa status perusahaan PT CIRCLE K menjadi `Unverified` karena terdapat berkas/dokumen administrasi KTP yang telah kadaluarsa pada hari ini (19 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, NULL, NULL),
(5, 'admin@acquis.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'Kami ingin menginformasikan bahwa status perusahaan PT CIRCLE K menjadi `Unverified` karena terdapat berkas/dokumen administrasi KTP yang telah kadaluarsa pada hari ini (19 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, NULL, NULL),
(6, 'donnadonnyhando.yo@gmail.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'PT CIRCLE K, kami ingin menginformasikan bahwa status perusahaan anda menjadi `Unverified` karena terdapat berkas/dokumen administrasi KTP yang telah kadaluarsa pada hari ini (19 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, 'PT CIRCLE K', '2014-11'),
(7, 'acquis@gmail.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'Kami ingin menginformasikan bahwa status perusahaan PT CIRCLE K menjadi `Unverified` karena terdapat berkas/dokumen administrasi KTP yang telah kadaluarsa pada hari ini (19 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, NULL, NULL),
(8, 'admin@acquis.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'Kami ingin menginformasikan bahwa status perusahaan PT CIRCLE K menjadi `Unverified` karena terdapat berkas/dokumen administrasi KTP yang telah kadaluarsa pada hari ini (19 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE IF NOT EXISTS `notifikasi` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `pesan` text NOT NULL,
  `username_penerima` varchar(255) NOT NULL,
  `status_baca` tinyint(1) NOT NULL,
  `url` text,
  `tipe` enum('by_role','by_username','','') NOT NULL,
  `tipe_event` enum('dokumen_mandatory_expired','90_hari_sebelum_habis_kontrak_MD','hari_h_kontrak_habis_SD','pendaftaran_lelang','penetapan_pemenang','lolos_tidak_lolos_2_tahap','deadline_submit_proposal','pendaftaran_corporate','upload_proposal') NOT NULL,
  `tahun_bulan` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prevent` (`tahun_bulan`,`tipe_event`,`username_penerima`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
