-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 20, 2014 at 10:28 PM
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
-- Table structure for table `br_rel_mainpekerjaan_dokumen`
--

CREATE TABLE IF NOT EXISTS `br_rel_mainpekerjaan_dokumen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main_pekerjaan` int(11) NOT NULL,
  `id_dokumen` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `br_rel_mainpekerjaan_dokumen`
--

INSERT INTO `br_rel_mainpekerjaan_dokumen` (`id`, `id_main_pekerjaan`, `id_dokumen`) VALUES
(5, 2, 30),
(6, 2, 31),
(7, 1, 30),
(8, 1, 31);

-- --------------------------------------------------------

--
-- Table structure for table `br_rel_mainpekerjaan_kategoriusaha`
--

CREATE TABLE IF NOT EXISTS `br_rel_mainpekerjaan_kategoriusaha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main_pekerjaan` int(11) NOT NULL,
  `id_kategori_usaha` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `br_rel_mainpekerjaan_kategoriusaha`
--

INSERT INTO `br_rel_mainpekerjaan_kategoriusaha` (`id`, `id_main_pekerjaan`, `id_kategori_usaha`) VALUES
(3, 2, 1),
(4, 1, 1),
(5, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `br_rel_mainpeserta_inventory`
--

CREATE TABLE IF NOT EXISTS `br_rel_mainpeserta_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main_peserta_lelang` int(11) NOT NULL,
  `id_inventory` int(11) NOT NULL,
  `harga_penawaran` double DEFAULT '0',
  `harga_nego` double DEFAULT '0',
  `disetujui_admin` enum('disetujui','tidak','','') DEFAULT 'tidak',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `br_rel_mainpeserta_inventory`
--

INSERT INTO `br_rel_mainpeserta_inventory` (`id`, `id_main_peserta_lelang`, `id_inventory`, `harga_penawaran`, `harga_nego`, `disetujui_admin`) VALUES
(1, 1, 1, 200000000, 0, 'tidak'),
(2, 1, 2, 50000000, 0, 'tidak'),
(3, 3, 1, 210000000, 200000000, 'tidak'),
(4, 3, 2, 55000000, 0, 'tidak'),
(5, 2, 1, 200000000, 0, 'tidak'),
(6, 2, 2, 150000000, 0, 'tidak'),
(7, 4, 3, 1000000, 1200000, 'disetujui');

-- --------------------------------------------------------

--
-- Table structure for table `br_vendor_kat_usaha`
--

CREATE TABLE IF NOT EXISTS `br_vendor_kat_usaha` (
  `id_kategori` int(11) NOT NULL,
  `kode_perusahaan` int(11) NOT NULL,
  PRIMARY KEY (`id_kategori`,`kode_perusahaan`),
  KEY `fk_perusahaan` (`kode_perusahaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `br_vendor_kat_usaha`
--

INSERT INTO `br_vendor_kat_usaha` (`id_kategori`, `kode_perusahaan`) VALUES
(1, 1),
(1, 2),
(2, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('8ff4bce201c305e5f3ab5e81c9c25f3b', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416487712, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:20:"deny.rasta@gmail.com";s:4:"role";s:1:"8";s:4:"nama";s:10:"PT_INTEGER";s:3:"sbu";N;s:4:"guid";N;s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('6ac1b11287a48d6ee103ba663546f06c', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 1416488143, 'a:6:{s:9:"user_data";s:0:"";s:8:"username";s:19:"acquisdev@gmail.com";s:4:"role";s:1:"1";s:4:"nama";s:5:"Admin";s:3:"sbu";s:1:"1";s:4:"guid";N;}'),
('e35442db6f56b056b988b37fbd81c9a2', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416480422, 'a:8:{s:9:"user_data";s:0:"";s:8:"username";s:19:"acquisdev@gmail.com";s:4:"role";s:1:"1";s:4:"nama";s:5:"Admin";s:3:"sbu";s:1:"1";s:4:"guid";N;s:12:"form_success";s:25:"Data berhasil ditambahkan";s:14:"sess_ringkasan";s:2:"ss";}'),
('fb08e6cc641e34aa25a5788f2c7876da', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416479318, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:20:"deny.rasta@gmail.com";s:4:"role";s:1:"8";s:4:"nama";s:10:"PT_INTEGER";s:3:"sbu";N;s:4:"guid";N;s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('68640376e4769e870cbca3c45550822a', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416491633, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:20:"denyras.ta@gmail.com";s:4:"role";s:2:"10";s:4:"nama";s:6:"deny P";s:3:"sbu";s:1:"1";s:4:"guid";s:1:"1";s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('245c4e3d9312fe0e15a429e3a11303c8', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416490904, 'a:6:{s:9:"user_data";s:0:"";s:8:"username";s:20:"denyras.ta@gmail.com";s:4:"role";s:2:"10";s:4:"nama";s:6:"deny P";s:3:"sbu";s:1:"1";s:4:"guid";s:1:"1";}'),
('2e84590d272a9383e0730d05530fd778', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416490578, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:20:"denyras.ta@gmail.com";s:4:"role";s:2:"10";s:4:"nama";s:6:"deny P";s:3:"sbu";s:1:"1";s:4:"guid";s:1:"1";s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('cb2f2aad8751fab74ca08a258d963bf2', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416490482, 'a:6:{s:9:"user_data";s:0:"";s:8:"username";s:20:"de.nyrasta@gmail.com";s:4:"role";s:2:"12";s:4:"nama";s:9:"suharjono";s:3:"sbu";N;s:4:"guid";N;}'),
('50e772f301f536edc2de6d7453f39b1b', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 1416489922, 'a:6:{s:9:"user_data";s:0:"";s:8:"username";s:19:"acquisdev@gmail.com";s:4:"role";s:1:"1";s:4:"nama";s:5:"Admin";s:3:"sbu";s:1:"1";s:4:"guid";N;}'),
('665bd2bf8d784c0ddd0ba10fc903bae0', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416490039, 'a:6:{s:9:"user_data";s:0:"";s:8:"username";s:20:"d.enyrasta@gmail.com";s:4:"role";s:2:"11";s:4:"nama";s:7:"Handoyo";s:3:"sbu";N;s:4:"guid";N;}'),
('6b87d67e4d85428ce19f73882fa3a703', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 1416489884, 'a:6:{s:9:"user_data";s:0:"";s:8:"username";s:20:"d.enyrasta@gmail.com";s:4:"role";s:2:"11";s:4:"nama";s:7:"Handoyo";s:3:"sbu";N;s:4:"guid";N;}'),
('4b80445e55b8f84b40bcafdc6b47513b', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416488417, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:20:"denyras.ta@gmail.com";s:4:"role";s:2:"10";s:4:"nama";s:6:"deny P";s:3:"sbu";s:1:"1";s:4:"guid";s:1:"1";s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('9674f573ca8c01e65783c5888b2ba65b', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 1416453622, 'a:6:{s:9:"user_data";s:0:"";s:8:"username";s:19:"denyrasta@gmail.com";s:4:"role";s:1:"8";s:4:"nama";s:10:"PT_MALLOCI";s:3:"sbu";N;s:4:"guid";N;}'),
('6408cddb6ec770b95d0d3235a648475b', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 1416453674, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:20:"deny.rasta@gmail.com";s:4:"role";s:1:"8";s:4:"nama";s:10:"PT_INTEGER";s:3:"sbu";N;s:4:"guid";N;s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('25da7daedf0be88a009f56bcd91a321d', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416456234, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:19:"acquisdev@gmail.com";s:4:"role";s:1:"1";s:4:"nama";s:5:"Admin";s:3:"sbu";s:1:"1";s:4:"guid";N;s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('958df5511ba8d846ef60966957e83d00', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416476665, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:19:"acquisdev@gmail.com";s:4:"role";s:1:"1";s:4:"nama";s:5:"Admin";s:3:"sbu";s:1:"1";s:4:"guid";N;s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('e78d39327b8bffd9389f0cdb2bf0f6e8', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416491725, ''),
('a7460e174f45c619652108b4372ee6ca', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416491725, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:20:"denyras.ta@gmail.com";s:4:"role";s:2:"10";s:4:"nama";s:6:"deny P";s:3:"sbu";s:1:"1";s:4:"guid";s:1:"1";s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('fe2cdfc4c4b1b75869bf163cbe4bc8cd', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416491842, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:19:"denyrasta@gmail.com";s:4:"role";s:1:"8";s:4:"nama";s:10:"PT_MALLOCI";s:3:"sbu";N;s:4:"guid";N;s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('42beb68a53069dae4eb897b67c24a9b9', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416491895, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:20:"deny.rasta@gmail.com";s:4:"role";s:1:"8";s:4:"nama";s:10:"PT_INTEGER";s:3:"sbu";N;s:4:"guid";N;s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('fb5c1f95a4c5d2d13ea605812a9c004a', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416491895, ''),
('1e0df1483b83ba63bf441fb403ca5e35', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1416494017, 'a:22:{s:9:"user_data";s:0:"";s:15:"nama_perusahaan";s:15:"PT. KODING JAYA";s:4:"npwp";s:18:"111-111-11-111-111";s:6:"alamat";s:17:"Jalan Raden Saleh";s:8:"provinsi";s:2:"13";s:4:"kota";s:3:"191";s:8:"direktur";s:9:"Suharjono";s:7:"telepon";s:8:"99999999";s:3:"fax";s:8:"99999999";s:2:"hp";s:8:"99999999";s:5:"email";s:21:"d.eny.rasta@gmail.com";s:7:"website";s:21:"ulahjari.blogspot.com";s:12:"bentuk_usaha";s:1:"1";s:6:"status";s:10:"Unverified";s:6:"no_ktp";s:15:"855850099999999";s:4:"date";s:19:"2014-11-20 21:41:44";s:7:"uriunik";s:32:"ca996fe55fc515786493b7d0824ca920";s:8:"username";s:21:"d.eny.rasta@gmail.com";s:4:"role";s:1:"8";s:4:"nama";s:15:"PT._KODING_JAYA";s:3:"sbu";N;s:4:"guid";N;}');

-- --------------------------------------------------------

--
-- Table structure for table `main_chat`
--

CREATE TABLE IF NOT EXISTS `main_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `id_pekerjaan` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `tipe_chat` enum('penjelasan','negosiasi','','') DEFAULT 'penjelasan',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `main_chat`
--

INSERT INTO `main_chat` (`id`, `user`, `message`, `id_pekerjaan`, `time`, `tipe_chat`) VALUES
(1, 'acquisdev@gmail.com', 'Selamat Pagi PT Malloci', 0, '2014-11-19 19:50:29', 'penjelasan'),
(2, 'acquisdev@gmail.com', 'vv', 1, '2014-11-19 20:47:14', 'negosiasi'),
(3, 'deny.rasta@gmail.com', 'pagi', 1, '2014-11-20 11:43:38', 'penjelasan'),
(4, 'deny.rasta@gmail.com', 'pagi', 1, '2014-11-20 11:43:41', 'penjelasan'),
(5, 'acquisdev@gmail.com', 'b', 1, '2014-11-20 11:44:03', 'penjelasan'),
(6, 'deny.rasta@gmail.com', 'mk', 1, '2014-11-20 11:50:46', 'penjelasan'),
(7, 'deny.rasta@gmail.com', 'm', 2, '2014-11-20 17:29:43', 'negosiasi'),
(8, 'deny.rasta@gmail.com', 'dd', 2, '2014-11-20 20:59:37', 'negosiasi');

-- --------------------------------------------------------

--
-- Table structure for table `main_config_lelang`
--

CREATE TABLE IF NOT EXISTS `main_config_lelang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persentase_teknis` int(11) DEFAULT NULL,
  `persentase_harga` int(11) DEFAULT NULL,
  `persentase_beauty_contest` double DEFAULT NULL,
  `skor_administratif` double DEFAULT NULL,
  `pengajuan_harga` double DEFAULT NULL,
  `id_pekerjaan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_kerjaan` (`id_pekerjaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `main_config_lelang`
--


-- --------------------------------------------------------

--
-- Table structure for table `main_inventory`
--

CREATE TABLE IF NOT EXISTS `main_inventory` (
  `kode` int(20) NOT NULL AUTO_INCREMENT,
  `flag_lelang` enum('lelang','pengadaan','diterima') NOT NULL,
  `kode_akun_aset` varchar(50) NOT NULL,
  `kode_akun_hutang` varchar(50) NOT NULL,
  `klasifikasi` int(10) NOT NULL,
  `nama_barang` varchar(300) NOT NULL,
  `kondisi` int(2) NOT NULL,
  `kuantitas` int(50) NOT NULL,
  `satuan` int(50) NOT NULL,
  `pemilik` varchar(300) NOT NULL,
  `umur_ekonomis` varchar(2) NOT NULL,
  `spesifikasi` text NOT NULL,
  `tahun_pengadaan` date NOT NULL,
  `merk` varchar(200) NOT NULL,
  `kode_pengadaan` int(11) NOT NULL,
  `nilai_satuan` double DEFAULT '0',
  `termin_ke` int(2) NOT NULL,
  `flag` varchar(2) NOT NULL DEFAULT '0',
  `plan_delivery_date` date NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `main_inventory`
--

INSERT INTO `main_inventory` (`kode`, `flag_lelang`, `kode_akun_aset`, `kode_akun_hutang`, `klasifikasi`, `nama_barang`, `kondisi`, `kuantitas`, `satuan`, `pemilik`, `umur_ekonomis`, `spesifikasi`, `tahun_pengadaan`, `merk`, `kode_pengadaan`, `nilai_satuan`, `termin_ke`, `flag`, `plan_delivery_date`) VALUES
(1, 'lelang', '110-001', '', 3, 'Aplikasi Pelelangan', 0, 2, 3, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>E:\\kerjaan\\localhost\\acquisgapura\\application\\controllers\\c_lelang_admin.php</b> on line <b>1766</b><br />\n', '', 'PHP Oracle', '2014-11-19', '-', 1, 150000000, 0, '0', '2014-11-15'),
(2, 'lelang', '001', '', 3, 'Aplikasi Budgeting', 0, 3, 1, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>E:\\kerjaan\\localhost\\acquisgapura\\application\\controllers\\c_lelang_admin.php</b> on line <b>1766</b><br />\n', '', 'PHP MySql', '2014-11-19', '-', 1, 30000000, 0, '0', '2015-01-08'),
(3, 'lelang', '110-001', '', 1, 'server IBM', 0, 2, 1, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>E:\\kerjaan\\localhost\\acquisgapura\\application\\controllers\\c_lelang_admin.php</b> on line <b>1788</b><br />\n', '', '-', '2014-11-19', '-', 2, 45000000, 0, '0', '0000-00-00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `main_inventory_received`
--

INSERT INTO `main_inventory_received` (`id`, `id_main_inventory`, `kuantitas`, `alasan`, `flag`, `tanggal`, `fk_br_mainpeserta_inv`) VALUES
(1, 3, 1, 'mm', 0, '2014-11-20', 7),
(2, 3, 1, '', 1, '2014-11-20', 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `main_kirim_email`
--

INSERT INTO `main_kirim_email` (`id`, `to`, `subject`, `message`, `status`, `tipe`, `url`, `id_pekerjaan`, `nama_perusahaan`, `tahun_bulan`) VALUES
(1, 'denyrasta@gmail.com', 'Pendaftaran Corporate', 'Bersama ini kami memberitahukan username dan password untuk masuk ke dalam <br> Username: denyrasta@gmail.com<br> Password: 1dywvhbw', 'terkirim', 'pendaftaran_corporate', 'http://localhost/acquisgapura/index.php/cvendor/reff/PT_MALLOCI/829e815083df5856a3b91a7a681e4d4f', NULL, NULL, NULL),
(2, 'deny.rasta@gmail.com', 'Pendaftaran Corporate', 'Bersama ini kami memberitahukan username dan password untuk masuk ke dalam <br> Username: deny.rasta@gmail.com<br> Password: maibs1n2', 'terkirim', 'pendaftaran_corporate', 'http://localhost/acquisgapura/index.php/cvendor/reff/PT_INTEGER/bd9fbf8c363552cb037c1703db228881', NULL, NULL, NULL),
(3, 'd.eny.rasta@gmail.com', 'Pendaftaran Corporate', 'Bersama ini kami memberitahukan username dan password untuk masuk ke dalam <br> Username: d.eny.rasta@gmail.com<br> Password: nyirerv3', 'terkirim', 'pendaftaran_corporate', 'http://localhost/acquisgapura/index.php/cvendor/reff/PT._KODING_JAYA/ca996fe55fc515786493b7d0824ca920', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `main_pekerjaan`
--

CREATE TABLE IF NOT EXISTS `main_pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pekerjaan` varchar(200) DEFAULT NULL,
  `uraian_pekerjaan` varchar(100) DEFAULT NULL,
  `lokasi_pekerjaan` varchar(255) DEFAULT NULL,
  `jangka_waktu_pekerjaan` varchar(255) DEFAULT NULL,
  `disetujui_admin_jangka_waktu_pekerjaan` enum('tidak','disetujui','','') NOT NULL DEFAULT 'tidak',
  `status` varchar(100) DEFAULT NULL,
  `pagu` varchar(200) DEFAULT NULL,
  `metode` varchar(5) DEFAULT NULL,
  `partisipasi` varchar(5) DEFAULT NULL,
  `flag_pagu` enum('PTB','PTT') NOT NULL DEFAULT 'PTB',
  `jenis_pekerjaan` varchar(11) DEFAULT NULL,
  `cara_delivery` varchar(50) DEFAULT NULL,
  `dokumen_pengajuan` varchar(100) DEFAULT NULL,
  `dokumen_perkiraan_anggaran` varchar(100) DEFAULT NULL,
  `dokumen_kak` varchar(100) DEFAULT NULL,
  `dokumen_pra` varchar(100) DEFAULT NULL,
  `dok_proposal` varchar(200) DEFAULT NULL,
  `tanggal_request` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `no_nd` varchar(50) NOT NULL,
  `tanggal_diumumkan` date DEFAULT NULL,
  `tgl_pendaftaran_akhir` date DEFAULT NULL,
  `tgl_penjelasan_awal` date DEFAULT NULL,
  `tgl_penjelasan_akhir` date DEFAULT NULL,
  `tgl_pemenang_ditetapkan` datetime DEFAULT NULL,
  `deadline_submit` date DEFAULT NULL,
  `deadline_submit_harga` date DEFAULT NULL,
  `tgl_pengumuman_pemenang` date DEFAULT NULL,
  `tanggal_negosiasi` date DEFAULT NULL,
  `tanggal_negosiasi_akhir` date DEFAULT NULL,
  `kategori_usaha` varchar(10) DEFAULT NULL,
  `harga_negosiasi` double DEFAULT NULL,
  `purchase_order` varchar(200) DEFAULT NULL,
  `kontrak` varchar(100) DEFAULT NULL,
  `id_kontrak` varchar(100) NOT NULL,
  `tgl_kontrak` date DEFAULT NULL,
  `penandatangan` varchar(100) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) NOT NULL,
  `id_pemenang` int(255) DEFAULT NULL,
  `id_pemenang_ditetapkan` int(255) DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `finish_target` date DEFAULT NULL,
  `isi_pengumuman` text,
  `jumlah_termin` int(5) NOT NULL DEFAULT '0',
  `kode_akun_kas` varchar(100) DEFAULT NULL,
  `kode_akun_hutang` varchar(100) DEFAULT NULL,
  `persentase_teknis` double NOT NULL DEFAULT '50',
  `persentase_harga` double NOT NULL DEFAULT '30',
  `persentase_beauty_contest` double NOT NULL DEFAULT '20',
  PRIMARY KEY (`id_pekerjaan`),
  UNIQUE KEY `kategori_usaha` (`kategori_usaha`),
  UNIQUE KEY `kategori_usaha_2` (`kategori_usaha`),
  UNIQUE KEY `kategori_usaha_3` (`kategori_usaha`),
  UNIQUE KEY `kategori_usaha_4` (`kategori_usaha`),
  KEY `fk_lelang` (`id_pemenang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `main_pekerjaan`
--

INSERT INTO `main_pekerjaan` (`id_pekerjaan`, `nama_pekerjaan`, `uraian_pekerjaan`, `lokasi_pekerjaan`, `jangka_waktu_pekerjaan`, `disetujui_admin_jangka_waktu_pekerjaan`, `status`, `pagu`, `metode`, `partisipasi`, `flag_pagu`, `jenis_pekerjaan`, `cara_delivery`, `dokumen_pengajuan`, `dokumen_perkiraan_anggaran`, `dokumen_kak`, `dokumen_pra`, `dok_proposal`, `tanggal_request`, `no_nd`, `tanggal_diumumkan`, `tgl_pendaftaran_akhir`, `tgl_penjelasan_awal`, `tgl_penjelasan_akhir`, `tgl_pemenang_ditetapkan`, `deadline_submit`, `deadline_submit_harga`, `tgl_pengumuman_pemenang`, `tanggal_negosiasi`, `tanggal_negosiasi_akhir`, `kategori_usaha`, `harga_negosiasi`, `purchase_order`, `kontrak`, `id_kontrak`, `tgl_kontrak`, `penandatangan`, `unit`, `jabatan`, `id_pemenang`, `id_pemenang_ditetapkan`, `tanggal_selesai`, `finish_target`, `isi_pengumuman`, `jumlah_termin`, `kode_akun_kas`, `kode_akun_hutang`, `persentase_teknis`, `persentase_harga`, `persentase_beauty_contest`) VALUES
(1, 'Pengadaan Aplikasi Gapura', NULL, 'Jakarta', '2 hari', 'tidak', '3', '390000000', 'PS', 'PL', 'PTB', 'LEL', 'OD', NULL, NULL, NULL, NULL, NULL, '2014-11-19 19:29:38', 'ND01/2100/11', '2014-11-20', '2014-11-20', '2014-11-20', '2014-11-20', '2014-11-19 20:47:45', '2014-11-20', '0000-00-00', '0000-00-00', '2014-11-20', '2014-11-20', NULL, NULL, NULL, NULL, '', NULL, 'acquisdev@gmail.com', '003', '', 2, 2, NULL, NULL, 'Selamat Kepada <b>PT Malloci </b>anda Terpilih Menjadi Peserta Lelang Pada Pekerjaan Kali ini<br>', 0, NULL, NULL, 50, 30, 20),
(2, 'Pengadaan Elektronik', NULL, 'bandung', '1 hari', 'disetujui', '1', '90000000', 'PR', 'LT', 'PTB', 'LEL', 'MD', NULL, NULL, NULL, NULL, NULL, '2014-11-19 21:02:11', 'ND-878784', '2014-11-19', '2014-11-19', '2014-11-19', '2014-11-19', '2014-11-20 20:46:19', '2014-11-19', '2014-11-19', '0000-00-00', '2014-11-19', '2014-11-19', NULL, NULL, NULL, NULL, '', NULL, 'denyrast.a@gmail.com', '003', '', 2, 2, NULL, NULL, NULL, 0, NULL, NULL, 50, 30, 20),
(3, 'Pengadaan Alat Tulis Kantor', 'nd/3012', NULL, NULL, 'tidak', '8', ' 3000000.00', 'PL', NULL, 'PTB', 'PL', NULL, NULL, NULL, NULL, NULL, NULL, '2014-11-20 00:00:00', '', '2014-11-20', NULL, '2014-11-20', '2014-11-20', NULL, '2014-11-20', NULL, '2014-11-20', NULL, NULL, NULL, NULL, NULL, '3b176157ac73854a1a6d7b88a5e3b44a_materi safety talk penyakit pencemaran udara.pdf', 'KD09383', '2014-11-20', 'vdvvv', '002', '', 3, NULL, '2014-11-20', NULL, NULL, 1, '110-001', '530', 50, 30, 20);

-- --------------------------------------------------------

--
-- Table structure for table `main_pembayaran_termin`
--

CREATE TABLE IF NOT EXISTS `main_pembayaran_termin` (
  `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `kode_akun` varchar(50) DEFAULT NULL,
  `nilai_pembayaran` varchar(200) DEFAULT NULL,
  `tanggal_pembayaran` date DEFAULT NULL,
  `kuitansi` varchar(100) DEFAULT NULL,
  `faktur` varchar(100) DEFAULT NULL,
  `id_pekerjaan` int(11) DEFAULT NULL,
  `berita_acara` varchar(100) DEFAULT NULL,
  `termin` int(1) NOT NULL,
  PRIMARY KEY (`id_pembayaran`),
  UNIQUE KEY `id_pekerjaan_kode_akun_termin` (`id_pekerjaan`,`kode_akun`,`termin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `main_pembayaran_termin`
--

INSERT INTO `main_pembayaran_termin` (`id_pembayaran`, `kode_akun`, `nilai_pembayaran`, `tanggal_pembayaran`, `kuitansi`, `faktur`, `id_pekerjaan`, `berita_acara`, `termin`) VALUES
(1, '', '0.00', NULL, NULL, NULL, 3, NULL, 1),
(2, '530', '0.00', NULL, NULL, NULL, 3, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_persediaan`
--

CREATE TABLE IF NOT EXISTS `main_persediaan` (
  `kode` int(11) NOT NULL AUTO_INCREMENT,
  `klasifikasi` int(5) NOT NULL,
  `nama_barang` varchar(250) NOT NULL,
  `kondisi` int(5) NOT NULL,
  `kuantitas` int(250) NOT NULL,
  `satuan` int(250) NOT NULL,
  `divisi` varchar(250) NOT NULL,
  `spesifikasi` text NOT NULL,
  `merk` varchar(100) NOT NULL,
  `nilai_satuan` varchar(520) NOT NULL,
  `kode_pengadaan` int(11) NOT NULL,
  `termin_ke` int(5) NOT NULL,
  `kode_akun_aset` varchar(50) DEFAULT NULL,
  `kode_akun_hutang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='main_persediaan' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `main_persediaan`
--


-- --------------------------------------------------------

--
-- Table structure for table `main_peserta_lelang`
--

CREATE TABLE IF NOT EXISTS `main_peserta_lelang` (
  `id_peserta_lelang` int(11) NOT NULL AUTO_INCREMENT,
  `kode_perusahaan` int(11) DEFAULT NULL,
  `proposal` varchar(100) DEFAULT NULL,
  `pra_kualifikasi` varchar(100) DEFAULT NULL,
  `skor_teknis` double DEFAULT '0',
  `skor_beauty_contest` double DEFAULT '0',
  `skor_total` double DEFAULT '0',
  `pengajuan_harga` double(255,2) DEFAULT '0.00',
  `id_pekerjaan` int(11) DEFAULT NULL,
  `harga_negosiasi` double(255,2) DEFAULT '0.00',
  `flag` varchar(5) DEFAULT '-1',
  `alasan` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_peserta_lelang`),
  UNIQUE KEY `kode_pekerjaan_id_peserta` (`kode_perusahaan`,`id_pekerjaan`),
  KEY `id_kerja_lelang` (`id_pekerjaan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `main_peserta_lelang`
--

INSERT INTO `main_peserta_lelang` (`id_peserta_lelang`, `kode_perusahaan`, `proposal`, `pra_kualifikasi`, `skor_teknis`, `skor_beauty_contest`, `skor_total`, `pengajuan_harga`, `id_pekerjaan`, `harga_negosiasi`, `flag`, `alasan`) VALUES
(2, 1, NULL, NULL, 0, 0, 20.647058823529, 850000000.00, 1, 0.00, '-1', NULL),
(3, 2, NULL, '0b141f540d927becc93c85468f83fa41_cadangan.xlsx', 0, 0, 30, 585000000.00, 1, 0.00, '-1', NULL),
(4, 2, NULL, 'a57c3a73b97acd3a6a695959d8d458de_tes.pdf', 0, 0, 30, 2000000.00, 2, 0.00, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `main_vendor`
--

CREATE TABLE IF NOT EXISTS `main_vendor` (
  `kode_perusahaan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(250) NOT NULL,
  `npwp` varchar(50) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `provinsi` varchar(250) NOT NULL,
  `kota` varchar(250) NOT NULL,
  `direktur` varchar(250) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `website` varchar(250) NOT NULL,
  `bentuk_usaha` char(2) NOT NULL,
  `kategori_usaha` int(11) NOT NULL,
  `status` enum('Unverified','Verified','Unlisted','Blacklist') NOT NULL,
  `no_ktp` int(50) NOT NULL,
  `date` datetime DEFAULT NULL,
  `alasan` text,
  PRIMARY KEY (`kode_perusahaan`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_kategori usaha` (`kategori_usaha`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `main_vendor`
--

INSERT INTO `main_vendor` (`kode_perusahaan`, `nama_perusahaan`, `npwp`, `alamat`, `provinsi`, `kota`, `direktur`, `telepon`, `fax`, `hp`, `email`, `website`, `bentuk_usaha`, `kategori_usaha`, `status`, `no_ktp`, `date`, `alasan`) VALUES
(1, 'PT MALLOCI', '11-1000-0000-22222', 'jalan barata', '1', '9', 'Bambang', '73451705', '02173451705', '089654817780', 'denyrasta@gmail.com', 'ulahjari.com', '1', 0, 'Verified', 2147483647, '2014-11-19 19:13:53', 'Kantornya Pindah'),
(2, 'PT INTEGERi', '000-111-111-000', 'JAUH', '4', '87', 'DONY', '', '90000', '', 'deny.rasta@gmail.com', 'BELAJAR.BLOGSPOT.COM', '', 0, 'Verified', 2147483647, '2014-11-19 19:15:05', NULL),
(3, 'PT. KODING JAYA', '111-111-11-111-111', 'Jalan Raden Saleh', '13', '191', 'Suharjono', '99999999', '99999999', '99999999', 'den.y.rasta@gmail.com', 'ulahjari.blogspot.com', '1', 0, 'Verified', 2147483647, '2014-11-20 21:41:32', NULL),
(4, 'PT. KODING JAYA', '111-111-11-111-111', 'Jalan Raden Saleh', '13', '191', 'Suharjono', '99999999', '99999999', '99999999', 'd.eny.rasta@gmail.com', 'ulahjari.blogspot.com', '1', 0, 'Verified', 2147483647, '2014-11-20 21:41:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `main_vendor_dokumen`
--

CREATE TABLE IF NOT EXISTS `main_vendor_dokumen` (
  `id_dokumen` int(50) NOT NULL AUTO_INCREMENT,
  `jenis_dokumen` varchar(100) NOT NULL,
  `nomor_dokumen` varchar(100) NOT NULL,
  `berlaku_sampai` date NOT NULL,
  `instansi_pemberi` varchar(250) NOT NULL,
  `berkas` varchar(300) NOT NULL,
  `kode_perusahaan` int(20) NOT NULL,
  PRIMARY KEY (`id_dokumen`),
  KEY `fk_kode_perusahaan` (`kode_perusahaan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `main_vendor_dokumen`
--

INSERT INTO `main_vendor_dokumen` (`id_dokumen`, `jenis_dokumen`, `nomor_dokumen`, `berlaku_sampai`, `instansi_pemberi`, `berkas`, `kode_perusahaan`) VALUES
(1, '11', '9201992000', '2014-11-29', 'Departemen Pajak', '8126eec5074ff632af5f9865ef4b73a0_PT. ANABATIC.docx', 1),
(2, '11', '9201992000-09899', '2015-02-20', 'Departemen Pajak', 'aec540e7e50c1178984a4190b64e86f1_PT. ANABATIC.docx', 2);

-- --------------------------------------------------------

--
-- Table structure for table `main_vendor_dokumen_tambahan`
--

CREATE TABLE IF NOT EXISTS `main_vendor_dokumen_tambahan` (
  `id_dokumen_tambahan` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_dokumen_tambahan` int(11) DEFAULT NULL,
  `nomor_dokumen_tambahan` varchar(255) DEFAULT NULL,
  `berlaku_sampai` datetime DEFAULT NULL,
  `instansi_pemberi` varchar(255) DEFAULT NULL,
  `berkas` varchar(255) DEFAULT NULL,
  `kode_perusahaan` int(11) NOT NULL,
  PRIMARY KEY (`id_dokumen_tambahan`),
  KEY `fk_dok_tambahan` (`jenis_dokumen_tambahan`),
  KEY `fk_kode_usaha` (`kode_perusahaan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `main_vendor_dokumen_tambahan`
--

INSERT INTO `main_vendor_dokumen_tambahan` (`id_dokumen_tambahan`, `jenis_dokumen_tambahan`, `nomor_dokumen_tambahan`, `berlaku_sampai`, `instansi_pemberi`, `berkas`, `kode_perusahaan`) VALUES
(1, 30, 'mk00238484848', '2014-11-28 00:00:00', 'Badan SBU', '1ddbd0bb2f05478966bf84e3bb06986d_JUDUL PROYEK.docx', 2);

-- --------------------------------------------------------

--
-- Table structure for table `main_vendor_ktp`
--

CREATE TABLE IF NOT EXISTS `main_vendor_ktp` (
  `id_dokumen` int(50) NOT NULL AUTO_INCREMENT,
  `nik` varchar(100) NOT NULL,
  `berlaku_sampai` date NOT NULL,
  `nama` varchar(250) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `kode_perusahaan` varchar(20) NOT NULL,
  `berkas_ktp` text,
  PRIMARY KEY (`id_dokumen`),
  KEY `nik` (`nik`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `main_vendor_ktp`
--

INSERT INTO `main_vendor_ktp` (`id_dokumen`, `nik`, `berlaku_sampai`, `nama`, `jabatan`, `kode_perusahaan`, `berkas_ktp`) VALUES
(1, '921000291001900', '2014-12-31', 'bambang', 'direktur', '1', 'ce58196c88823bce4b1d3cdc7807532a_materi safety talk penyakit pencemaran udara.pdf'),
(2, '92100029100198', '2015-01-31', 'Dony', 'Direktur Keuangan', '2', 'de90e5a88e4954eadd170db7641d8f9a_materi safety talk penyakit pencemaran udara.pdf'),
(3, '9210002910019999', '2015-01-22', 'Dendry', 'Direktur Administrasi', '2', '61e24c70b5ec04e4d3acd65586bef73a_PT. Mahakarya AGUNG PAK ARIS DAN PAK UJANG.doc');

-- --------------------------------------------------------

--
-- Table structure for table `main_voucher_pembayaran`
--

CREATE TABLE IF NOT EXISTS `main_voucher_pembayaran` (
  `id_voucher` int(11) NOT NULL AUTO_INCREMENT,
  `nilai_pembayaran` varchar(200) DEFAULT NULL,
  `kode_akun` varchar(50) DEFAULT NULL,
  `tipe_data` enum('debet','kredit') DEFAULT NULL,
  `id_pembayaran` int(11) DEFAULT NULL,
  `flag_cetak` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_voucher`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `main_voucher_pembayaran`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `pesan`, `username_penerima`, `status_baca`, `url`, `tipe`, `tipe_event`, `tahun_bulan`) VALUES
(1, 'denyrasta@gmail.com telah mendaftar.', 'denyrasta@gmail.com', 0, 'http://localhost/acquisgapura/index.php/cvendor/reff/PT_MALLOCI/829e815083df5856a3b91a7a681e4d4f', 'by_username', 'pendaftaran_corporate', '2014-11'),
(2, 'denyrasta@gmail.com telah mendaftar.', 'acquis@gmail.com', 0, 'http://localhost/acquisgapura/index.php/cvendor/reff/PT_MALLOCI/829e815083df5856a3b91a7a681e4d4f', 'by_role', 'pendaftaran_corporate', '2014-11'),
(3, 'denyrasta@gmail.com telah mendaftar.', 'admin@acquis.com', 0, 'http://localhost/acquisgapura/index.php/cvendor/reff/PT_MALLOCI/829e815083df5856a3b91a7a681e4d4f', 'by_role', 'pendaftaran_corporate', '2014-11'),
(4, 'deny.rasta@gmail.com telah mendaftar.', 'deny.rasta@gmail.com', 0, 'http://localhost/acquisgapura/index.php/cvendor/reff/PT_INTEGER/bd9fbf8c363552cb037c1703db228881', 'by_username', 'pendaftaran_corporate', '2014-11'),
(7, 'deny.rasta@gmail.com telah mendaftar', 'acquisdev@gmail.com', 0, 'c_lelang_vendor/detaillelang/rasThVPb+Dx546I4NgI+ygvXVkJHWAFggShToaGlrYs=', 'by_role', 'dokumen_mandatory_expired', NULL),
(8, 'd.eny.rasta@gmail.com telah mendaftar.', 'd.eny.rasta@gmail.com', 0, 'http://localhost/acquisgapura/index.php/cvendor/reff/PT._KODING_JAYA/ca996fe55fc515786493b7d0824ca920', 'by_username', 'pendaftaran_corporate', '2014-11'),
(9, 'd.eny.rasta@gmail.com telah mendaftar.', 'acquisdev@gmail.com', 0, 'http://localhost/acquisgapura/index.php/cvendor/reff/PT._KODING_JAYA/ca996fe55fc515786493b7d0824ca920', 'by_role', 'pendaftaran_corporate', '2014-11');

-- --------------------------------------------------------

--
-- Table structure for table `r_dokumen_tambahan`
--

CREATE TABLE IF NOT EXISTS `r_dokumen_tambahan` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `r_dokumen_tambahan`
--

INSERT INTO `r_dokumen_tambahan` (`kode_ref`, `deskripsi`) VALUES
(1, 'SIUP');

-- --------------------------------------------------------

--
-- Table structure for table `r_inv_klasifikasi_barang`
--

CREATE TABLE IF NOT EXISTS `r_inv_klasifikasi_barang` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `r_inv_klasifikasi_barang`
--

INSERT INTO `r_inv_klasifikasi_barang` (`kode_ref`, `deskripsi`) VALUES
(1, 'ELEKTRONIK'),
(2, 'ALAT KANTOR'),
(3, 'OFFICE SUITE');

-- --------------------------------------------------------

--
-- Table structure for table `r_inv_kondisi_barang`
--

CREATE TABLE IF NOT EXISTS `r_inv_kondisi_barang` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `r_inv_kondisi_barang`
--

INSERT INTO `r_inv_kondisi_barang` (`kode_ref`, `deskripsi`) VALUES
(1, 'BAIK'),
(2, 'RUSAK'),
(3, 'RUSAK BERAT');

-- --------------------------------------------------------

--
-- Table structure for table `r_inv_satuan_barang`
--

CREATE TABLE IF NOT EXISTS `r_inv_satuan_barang` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `r_inv_satuan_barang`
--

INSERT INTO `r_inv_satuan_barang` (`kode_ref`, `deskripsi`) VALUES
(1, 'UNIT'),
(2, 'LEMBAR'),
(3, 'SET');

-- --------------------------------------------------------

--
-- Table structure for table `r_jabatan`
--

CREATE TABLE IF NOT EXISTS `r_jabatan` (
  `id_jabatan` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `limit_anggaran` varchar(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_jabatan`
--

INSERT INTO `r_jabatan` (`id_jabatan`, `nama`, `jabatan`, `limit_anggaran`) VALUES
('001', '0', 'KEPALA PERWAKILAN', ' 150000000.00'),
('003', '', 'KEPALA UNIT KERJA', ' 300000000.00'),
('004', '0', 'VICE PRECIDENT SBU', ' 300000000.00'),
('005', '', 'GENERAL MANAGER', ' 300000000.00'),
('006', '', 'DIREKTUR', ' 5000000000.00'),
('007', '0', 'DIREKTUR UTAMA', ' 99999999999999.00');

-- --------------------------------------------------------

--
-- Table structure for table `r_kota`
--

CREATE TABLE IF NOT EXISTS `r_kota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(50) NOT NULL,
  `fk_provinsi` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=495 ;

--
-- Dumping data for table `r_kota`
--

INSERT INTO `r_kota` (`id`, `nama_kota`, `fk_provinsi`) VALUES
(9, 'Aceh Barat', 1),
(10, 'Aceh Barat Daya', 1),
(11, 'Aceh Besar', 1),
(12, 'Aceh Jaya', 1),
(13, 'Aceh Selatan', 1),
(14, 'Aceh Singkil', 1),
(15, 'Aceh Tamiang', 1),
(16, 'Aceh Tengah', 1),
(17, 'Aceh Tenggara', 1),
(18, 'Aceh Timur', 1),
(19, 'Aceh Utara', 1),
(20, 'Banda Aceh', 1),
(21, 'Bener Meriah', 1),
(22, 'Bireuen', 1),
(23, 'Gayo Lues', 1),
(24, 'Langsa', 1),
(25, 'Lhokseumawe', 1),
(26, 'Nagen Raya', 1),
(27, 'Pidie', 1),
(28, 'Pidie Jaya', 1),
(29, 'Sabang', 1),
(30, 'Simeulue', 1),
(31, 'Subulussalam', 1),
(32, 'Asahan', 2),
(33, 'Batubara', 2),
(34, 'Binjai', 2),
(35, 'Dairi', 2),
(36, 'Deli Serdang', 2),
(37, 'Gunung Sitoli', 2),
(38, 'Humbang Hasundutan', 2),
(39, 'Karo', 2),
(40, 'Labuhan Batu', 2),
(41, 'Labuhan Batu Selatan', 2),
(42, 'Labuhan Batu Utara', 2),
(43, 'Langkat', 2),
(44, 'Mandailing Natal', 2),
(45, 'Medan', 2),
(46, 'Nias', 2),
(47, 'Nias Barat', 2),
(48, 'Nias Selatan', 2),
(49, 'Nias Utara', 2),
(50, 'Padang Lawas', 2),
(51, 'Padang Lawas Utara', 2),
(52, 'Padang Sidempuan', 2),
(53, 'Pakpak Bharat', 2),
(54, 'Pematang Siantar', 2),
(55, 'Samosir', 2),
(56, 'Serdang Bedagai', 2),
(57, 'Sibolga', 2),
(58, 'Simalungun', 2),
(59, 'Tanjung Balai', 2),
(60, 'Tapanuli Selatan', 2),
(61, 'Tapanuli Tengah', 2),
(62, 'Tapanuli Utara', 2),
(63, 'Tebing Tinggi', 2),
(64, 'Toba Samosir', 2),
(65, 'Agam', 3),
(66, 'Bukit Tinggi', 3),
(67, 'Dharmas Raya', 3),
(68, 'Kepulauan Mentawai', 3),
(69, 'Lima Puluh Kota', 3),
(70, 'Padang', 3),
(71, 'Padang Panjang', 3),
(72, 'Padang Pariaman', 3),
(73, 'Pariaman', 3),
(74, 'Pasaman', 3),
(75, 'Pasaman Barat', 3),
(76, 'Payakumbuh', 3),
(77, 'Pesisisr Selatan', 3),
(78, 'Sawah Lunto', 3),
(79, 'Sijunjung', 3),
(80, 'Solok', 3),
(81, 'Solok Selatan', 3),
(82, 'Tanah Datar', 3),
(83, 'Bengkalis', 4),
(84, 'Dumai', 4),
(85, 'Indragiri Hilir', 4),
(86, 'Indragiri Hulu', 4),
(87, 'kampar', 4),
(88, 'Kepulauan Meranti', 4),
(89, 'Kuantan Singingi', 4),
(90, 'Pelalawan', 4),
(91, 'Pekan Baru', 4),
(92, 'Rokan Hilir', 4),
(93, 'Rokan Hulu', 4),
(94, 'Siak', 4),
(95, 'Anambas', 5),
(96, 'Batam', 5),
(97, 'Bintan', 5),
(98, 'Karimun', 5),
(99, 'Lingga', 5),
(100, 'Natuna', 5),
(101, 'Tanjung Pinang', 5),
(102, 'Batang Hari', 6),
(103, 'Bungo', 6),
(104, 'Jambi', 6),
(105, 'kerinci', 6),
(106, 'Merangin', 6),
(107, 'Muaro Jambi', 6),
(108, 'Sorolangun', 6),
(109, 'Sungai Penuh', 6),
(110, 'Tanjung Jabung Barat', 6),
(111, 'Tanjung Jabung Timur', 6),
(112, 'Tebo', 6),
(113, 'Bengkulu', 7),
(114, 'Bengkulu Selatan', 7),
(115, 'Bengkulu Tengah', 7),
(116, 'Bengkulu Utara', 7),
(117, 'Kaur', 7),
(118, 'Kepahiang', 7),
(119, 'Lebong', 7),
(120, 'Muko Muko', 7),
(121, 'Rejang Lebong', 7),
(122, 'Seluma', 7),
(123, 'Banyuasin', 8),
(124, 'Empat Lawang', 8),
(125, 'Lahat', 8),
(126, 'Lubuk Linggau', 8),
(127, 'Muara Enim', 8),
(128, 'Musi Banyuasin', 8),
(129, 'Musi Rawas', 8),
(130, 'Musi Rawas Utara', 8),
(131, 'Ogan Ilir', 8),
(132, 'Ogan Komering Ilir', 8),
(133, 'Ogan Komering Ulu', 8),
(134, 'Ogan Komering Ulu Selatan', 8),
(135, 'Ogan Komering Ulu Timur', 8),
(136, 'Pagar Alam', 8),
(137, 'Palembang', 8),
(138, 'Penukal Abab Lematang Ilir', 8),
(139, 'Prabumulih', 8),
(140, 'Bangka', 9),
(141, 'Bangka Barat', 9),
(142, 'Bangka Selatan', 9),
(143, 'Bangka Tengah', 9),
(144, 'Belitung', 9),
(145, 'Belitung Timur', 9),
(146, 'Pangkal Pinang', 9),
(147, 'Bandar Lampung', 10),
(148, 'Lampung Barat', 10),
(149, 'lampung Selatan', 10),
(150, 'Lampung Tengah', 10),
(151, 'Lampung Timur', 10),
(152, 'Lampung Utara', 10),
(153, 'Mesuji', 10),
(154, 'Metro', 10),
(155, 'Pesawaran', 10),
(156, 'Pesisir Barat', 10),
(157, 'Pringsewu', 10),
(158, 'Tanggamus', 10),
(159, 'Tulang Bawang', 10),
(160, 'Tulang Bawang Barat', 10),
(161, 'Waykanan', 10),
(162, 'Cilegon', 11),
(163, 'Lebak', 11),
(164, 'Pandeglang', 11),
(165, 'Serang', 11),
(166, 'Tangerang', 11),
(167, 'Tangerang Selatan', 11),
(168, 'Bandung', 12),
(169, 'Bandung Barat', 12),
(170, 'Banjar', 12),
(171, 'Bekasi', 12),
(172, 'Bogor', 12),
(173, 'Ciamis', 12),
(174, 'Cianjur', 12),
(175, 'Cimahi', 12),
(176, 'Cirebon', 12),
(177, 'Depok', 12),
(178, 'Garut', 12),
(179, 'Indramayu', 12),
(180, 'Karawang', 12),
(181, 'Kuningan', 12),
(182, 'majalengka', 12),
(183, '', 12),
(184, 'Pangandaran', 12),
(185, 'Purwakarta', 12),
(186, 'Subang', 12),
(187, 'Sukabumi', 12),
(188, 'Sumedang', 12),
(189, 'Tasikmalaya', 12),
(190, 'Jakarta Barat', 13),
(191, 'Jakarta Pusat', 13),
(192, 'Jakarta Timur', 13),
(193, 'Jakarta Utara', 13),
(194, 'Jakarta Selatan', 13),
(195, 'Kepulauan Seribu', 13),
(196, 'Banjanegara', 14),
(197, 'Banyumas', 14),
(198, 'Batang', 14),
(199, 'Blora', 14),
(200, 'Boyolali', 14),
(201, 'Brebes', 14),
(202, 'Cilacap', 14),
(203, 'Demak', 14),
(204, 'Grobogan', 14),
(205, 'Jepara', 14),
(206, 'Karanganyar', 14),
(207, 'Kebumen', 14),
(208, 'Kendal', 14),
(209, 'Klaten', 14),
(210, 'Kudus', 14),
(211, 'Magelang', 14),
(212, 'Pati', 14),
(213, 'Pekalongan', 14),
(214, 'Pemalang', 14),
(215, 'Purbalingga', 14),
(216, 'Purworejo', 14),
(217, 'Rembang', 14),
(218, 'Salatiga', 14),
(219, 'Semarang', 14),
(220, 'Solo', 14),
(221, 'Sragen', 14),
(222, 'Sukoharjo', 14),
(223, 'Tegal', 14),
(224, 'Temanggung', 14),
(225, 'Wonogiri', 14),
(226, 'Wonosobo', 14),
(227, 'Bantul', 15),
(228, 'Gunungkidul', 15),
(229, 'Kulonprogo', 15),
(230, 'Sleman', 15),
(231, 'Yogyakarta', 15),
(232, 'Bangkalan', 16),
(233, 'Banyuwangi', 16),
(234, 'Batu', 16),
(235, 'Blitar', 16),
(236, 'Bojonegoro', 16),
(237, 'Bondowoso', 16),
(238, 'Gresik', 16),
(239, 'Jember', 16),
(240, 'Jombang', 16),
(241, 'Kediri', 16),
(242, 'Lamongan', 16),
(243, 'Lumajang', 16),
(244, 'Madiun', 16),
(245, 'Magetan', 16),
(246, 'Malang', 16),
(247, 'Mojokerto', 16),
(248, 'Nganjuk', 16),
(249, 'Ngawi', 16),
(250, 'Pacitan', 16),
(251, 'Pamekasan', 16),
(252, 'Pasuruan', 16),
(253, 'Ponorogo', 16),
(254, 'Probolinggo', 16),
(255, 'Sampang', 16),
(256, 'Sidoarjo', 16),
(257, 'Situbondo', 16),
(258, 'Sumenep', 16),
(259, 'Surabaya', 16),
(260, 'Trenggalek', 16),
(261, 'Tuban', 16),
(262, 'Tulungagung', 16),
(263, 'Badung', 17),
(264, 'Bangli', 17),
(265, 'Bulelang', 17),
(266, 'Denpasar', 17),
(267, 'Gianyar', 17),
(268, 'Jembrana', 17),
(269, 'Karangasem', 17),
(270, 'Klungkung', 17),
(271, 'Tabanan', 17),
(272, 'Bima', 18),
(273, 'Dompu', 18),
(274, 'Lombok Barat', 18),
(275, 'Lombok Tengah', 18),
(276, 'Lombok Timur', 18),
(277, 'Lombok Utara', 18),
(278, 'Mataram', 18),
(279, 'Sumbawa', 18),
(280, 'Sumbawa Barat', 18),
(281, 'Alor', 19),
(282, 'Belu', 19),
(283, 'Ende', 19),
(284, 'Flores Timur', 19),
(285, 'Kupang', 19),
(286, 'Lembata', 19),
(287, 'Malaka', 19),
(288, 'Manggarai', 19),
(289, 'Manggarai Barat', 19),
(290, 'Manggarai Timur', 19),
(291, 'Nagekeo', 19),
(292, 'Ngada', 19),
(293, 'Rote Ndao', 19),
(294, 'Sabu Raijua', 19),
(295, 'Sikka', 19),
(296, 'Sumba Barat', 19),
(297, 'Sumba Barat Daya', 19),
(298, 'Sumba Tengah', 19),
(299, 'Sumba Timur', 19),
(300, 'Timor tengah Selatan', 19),
(301, 'Timor Tengah Utara', 19),
(302, 'Bengkayang', 20),
(303, 'Kapuas Hulu', 20),
(304, 'Kayong Utara', 20),
(305, 'Ketapang', 20),
(306, 'Kubu Raya', 20),
(307, 'Landak', 20),
(308, 'Melawi', 20),
(309, 'Pontianak', 20),
(310, 'Sambas', 20),
(311, 'Sanggau', 20),
(312, 'Sekadau', 20),
(313, 'Sintang', 20),
(314, 'Singkawang', 20),
(315, 'Barito Selatan', 21),
(316, 'Barito Timur', 21),
(317, 'Barito Utara', 21),
(318, 'Gunung Mas', 21),
(319, 'Kapuas', 21),
(320, 'Kotawaringin Barat', 21),
(321, 'Kotawaringin Timur', 21),
(322, 'Katingan', 21),
(323, 'Lamandau', 21),
(324, 'Murung Raya', 21),
(325, 'Palangkaraya', 21),
(326, 'Pulang Pisau', 21),
(327, 'Seruyan', 21),
(328, 'Sukamara', 21),
(329, 'Balangan', 22),
(330, 'Banjar', 22),
(331, 'Banjarbaru', 22),
(332, 'Banjarmasin', 22),
(333, 'Barito Kuala', 22),
(334, 'Hulu Sungai Selatan', 22),
(335, 'Hulu Sungai Tengah', 22),
(336, 'Hulu Sungai Utara', 22),
(337, 'Kotabaru', 22),
(338, 'Tabalong', 22),
(339, 'Tanah Bumbu', 22),
(340, 'Tanah Laut', 22),
(341, 'Tapin', 22),
(342, 'Balikpapan', 23),
(343, 'Berau', 23),
(344, 'Bontang', 23),
(345, 'Kutai Barat', 23),
(346, 'Kutai Kartanegara', 23),
(347, 'Kutai Timur', 23),
(348, 'Mahakam Ulu', 23),
(349, 'Pasir', 23),
(350, 'Penajam Paser Utara', 23),
(351, 'Samiranda', 23),
(352, 'Bulungan', 24),
(353, 'Malinau', 24),
(354, 'Nunukan', 24),
(355, 'Tana Tidung', 24),
(356, 'Tarakan', 24),
(357, 'Bitung', 25),
(358, 'Bolaang Mongondow', 25),
(359, 'Boolang Mongondow Selatan', 25),
(360, 'Boolang Mongondow Timur', 25),
(361, 'Boolang Mongondow Utara', 25),
(362, 'Kepulauan Sangihe', 25),
(363, 'Kepulauan Siau Tagulandang Diaro', 25),
(364, 'Kepulauan Talaud', 25),
(365, 'Kotamobagu', 25),
(366, 'Manado', 25),
(367, 'Minahasa', 25),
(368, 'Minahasa Selatan', 25),
(369, 'Minahasa Tenggara', 25),
(370, 'Minahasa Utara', 25),
(371, 'Tomohon', 25),
(372, 'Boalema', 26),
(373, 'Bone Bolango', 26),
(374, 'Gorontalo', 26),
(375, 'Gorontalo Utara', 26),
(376, 'Pohuwato', 26),
(377, 'Banggai', 27),
(378, 'Banggai Kepulauan', 27),
(379, 'Banggai Laut', 27),
(380, 'Buol', 27),
(381, 'Donggala', 27),
(382, 'Morowali', 27),
(383, 'Morowali Utara', 27),
(384, 'Palu', 27),
(385, 'Parigi Moutong', 27),
(386, 'Poso', 27),
(387, 'Sigi', 27),
(388, 'Tojo Una-Una', 27),
(389, 'Toli-Toli', 27),
(390, 'Majene', 28),
(391, 'Mamasa', 28),
(392, 'Mamaju', 28),
(393, 'Mamuju Tengah', 28),
(394, 'Mamaju Utara', 28),
(395, 'Polewali Mandar', 28),
(396, 'Bantaeng', 29),
(397, 'Barru', 29),
(398, 'Bone', 29),
(399, 'Bulukumba', 29),
(400, 'Enrekang', 29),
(401, 'Gowa', 29),
(402, 'Jeneponto', 29),
(403, 'Luwu', 29),
(404, 'Luwu Utara', 29),
(405, 'Luwu Timur', 29),
(406, 'Makassar', 29),
(407, 'Maros', 29),
(408, 'Palopo', 29),
(409, 'Pangkajene Kepulauan', 29),
(410, 'Parepare', 29),
(411, 'Pinrang', 29),
(412, 'Selayar', 29),
(413, 'Sidenreng Rappang', 29),
(414, 'Sinjai', 29),
(415, 'Soppeng', 29),
(416, 'Takalar', 29),
(417, 'Tana Toraja', 29),
(418, 'Toraja Utara', 29),
(419, 'Wajo', 29),
(420, 'Bau-Bau', 30),
(421, 'Bombana', 30),
(422, 'Buton', 30),
(423, 'Buton Utara', 30),
(424, 'Kendari', 30),
(425, 'Kolaka', 30),
(426, 'Kolaka Timur', 30),
(427, 'Kolaka Utara', 30),
(428, 'Konawe', 30),
(429, 'Konawe Kepulauan', 30),
(430, 'Konawe Selatan', 30),
(431, 'Konawe Utara', 30),
(432, 'Muna', 30),
(433, 'Wakatobi', 30),
(434, 'Ambon', 31),
(435, 'Buru', 31),
(436, 'Buru Selatan', 31),
(437, 'Kepulauan Aru', 31),
(438, 'Maluku Barat Daya', 31),
(439, 'Maluku Tengah', 31),
(440, 'Maluku Tenggara', 31),
(441, 'Maluku Tenggara Barat', 31),
(442, 'Seram Bagian Timur', 31),
(443, 'Seram Barat', 31),
(444, 'Tual', 31),
(445, 'Halmahera Barat', 32),
(446, 'Halmahera Selatan', 32),
(447, 'Halmahera Tengah', 32),
(448, 'Halmahera Timur', 32),
(449, 'Halmahera Utara', 32),
(450, 'Kepulauan Sula', 32),
(451, 'Pulau Morotai', 32),
(452, 'Pulau Taliabu', 32),
(453, 'Ternate', 32),
(454, 'Tidore', 32),
(455, 'Fak-Fak', 33),
(456, 'Kaimana', 33),
(457, 'Manokwari', 33),
(458, 'Manokwari Selatan', 33),
(459, 'Maybrat', 33),
(460, 'Pegunungan Arfak', 33),
(461, 'Raja Ampat', 33),
(462, 'Sorong', 33),
(463, 'Sorong Selatan', 33),
(464, 'Tambarauw', 33),
(465, 'Teluk Bintuni', 33),
(466, 'Teluk Wondama', 33),
(467, 'Asmat', 34),
(468, 'Biak Numfor', 34),
(469, 'Boven Digoel', 34),
(470, 'Deiya', 34),
(471, 'Dogiyai', 34),
(472, 'Intan Jaya', 34),
(473, 'Jayapura', 34),
(474, 'Jayawijaya', 34),
(475, 'Keerom', 34),
(476, 'Lanny Jaya', 34),
(477, 'Mappi', 34),
(478, 'Memberamo Raya', 34),
(479, 'Memberamo Tengah', 34),
(480, 'Merauke', 34),
(481, 'Mimika', 34),
(482, 'Nabire', 34),
(483, 'Nduga', 34),
(484, 'Paniai', 34),
(485, 'Pegunungan Bintang', 34),
(486, 'Puncak', 34),
(487, 'Puncak Jaya', 34),
(488, 'Sarmi', 34),
(489, 'Supiori', 34),
(490, 'Tolikara', 34),
(491, 'Waropen', 34),
(492, 'Yahukimo', 34),
(493, 'Yalimo', 34),
(494, 'Yapen Waropen', 34);

-- --------------------------------------------------------

--
-- Table structure for table `r_lel_akun`
--

CREATE TABLE IF NOT EXISTS `r_lel_akun` (
  `kode_akun` varchar(50) NOT NULL,
  `tipe_akun` enum('aset','hutang','biaya','') NOT NULL,
  `nama_akun` varchar(100) NOT NULL,
  PRIMARY KEY (`kode_akun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_lel_akun`
--

INSERT INTO `r_lel_akun` (`kode_akun`, `tipe_akun`, `nama_akun`) VALUES
('001', 'aset', 'KAS'),
('110-001', 'aset', 'INVENTORY 1'),
('110-100', 'aset', 'INVENTORY 2'),
('110-101', 'aset', 'INVENTORY 3'),
('530', 'hutang', 'HUTANG PENGADAAN');

-- --------------------------------------------------------

--
-- Table structure for table `r_lel_jenis_pekerjaan`
--

CREATE TABLE IF NOT EXISTS `r_lel_jenis_pekerjaan` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `r_lel_jenis_pekerjaan`
--


-- --------------------------------------------------------

--
-- Table structure for table `r_lel_tahapan`
--

CREATE TABLE IF NOT EXISTS `r_lel_tahapan` (
  `kode_tahapan` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_tahapan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1001 ;

--
-- Dumping data for table `r_lel_tahapan`
--

INSERT INTO `r_lel_tahapan` (`kode_tahapan`, `deskripsi`) VALUES
(1, 'PERENCANAAN'),
(2, 'PENGUMUMAN'),
(3, 'PENJELASAN'),
(4, 'SUBMIT PROPOSAL'),
(5, 'EVALUASI'),
(6, 'NEGOSIASI'),
(7, 'HASIL LELANG'),
(8, 'KONTRAK'),
(9, 'PENERIMAAN'),
(10, 'PEMBAYARAN'),
(1000, 'DIBATALKAN');

-- --------------------------------------------------------

--
-- Table structure for table `r_not_jenis_notifikasi`
--

CREATE TABLE IF NOT EXISTS `r_not_jenis_notifikasi` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `r_not_jenis_notifikasi`
--


-- --------------------------------------------------------

--
-- Table structure for table `r_provinsi`
--

CREATE TABLE IF NOT EXISTS `r_provinsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_provinsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `r_provinsi`
--

INSERT INTO `r_provinsi` (`id`, `nama_provinsi`) VALUES
(1, 'DI Aceh'),
(2, 'Sumatra Utara'),
(3, 'Sumatra Barat'),
(4, 'Riau'),
(5, 'Kepuluan Riau'),
(6, 'Jambi'),
(7, 'Bengkulu'),
(8, 'Sumatera Selatan'),
(9, 'Kepulauan Bangka Belitung'),
(10, 'Lampung'),
(11, 'Banten'),
(12, 'Jawa Barat'),
(13, 'DKI Jakarta'),
(14, 'Jawa Tengah'),
(15, 'DI Yogyakarta'),
(16, 'Jawa Timur'),
(17, 'Bali'),
(18, 'Nusa Tenggara Barat'),
(19, 'Nusa Tenggara Timur'),
(20, 'Kalimantan Barat'),
(21, 'Kalimantan Tengah'),
(22, 'Kalimantan Selatan'),
(23, 'Kalimantan Timur'),
(24, 'Kalimantan Utara'),
(25, 'Sulawesi Utara'),
(26, 'Gorontalo'),
(27, 'Sulawesi Tengah'),
(28, 'Sulawesi Barat'),
(29, 'Sulawesi Selatan'),
(30, 'Sulawesi Tenggara'),
(31, 'Maluku'),
(32, 'Maluku Utara'),
(33, 'Papua Barat'),
(34, 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `r_psd_jenis_barang_persediaan`
--

CREATE TABLE IF NOT EXISTS `r_psd_jenis_barang_persediaan` (
  `id_unit` varchar(100) NOT NULL,
  `nama_jenis_barang` varchar(100) NOT NULL,
  PRIMARY KEY (`id_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_psd_jenis_barang_persediaan`
--

INSERT INTO `r_psd_jenis_barang_persediaan` (`id_unit`, `nama_jenis_barang`) VALUES
('001', 'KERTAS'),
('002', 'PULPEN'),
('003', 'TINTA PRINTER');

-- --------------------------------------------------------

--
-- Table structure for table `r_unit`
--

CREATE TABLE IF NOT EXISTS `r_unit` (
  `id_unit` varchar(100) NOT NULL,
  `nama_unit` varchar(100) NOT NULL,
  PRIMARY KEY (`id_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_unit`
--

INSERT INTO `r_unit` (`id_unit`, `nama_unit`) VALUES
('001', 'KEUANGAN'),
('002', 'HRD'),
('003', 'IT SUPPORT');

-- --------------------------------------------------------

--
-- Table structure for table `r_ven_bentuk_usaha`
--

CREATE TABLE IF NOT EXISTS `r_ven_bentuk_usaha` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `r_ven_bentuk_usaha`
--

INSERT INTO `r_ven_bentuk_usaha` (`kode_ref`, `deskripsi`) VALUES
(1, 'PT'),
(2, 'CV'),
(3, 'KOPERASI');

-- --------------------------------------------------------

--
-- Table structure for table `r_ven_jenis_dokumen`
--

CREATE TABLE IF NOT EXISTS `r_ven_jenis_dokumen` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) NOT NULL,
  `flag_mandatory` enum('mandatory','non_mandatory') DEFAULT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `r_ven_jenis_dokumen`
--

INSERT INTO `r_ven_jenis_dokumen` (`kode_ref`, `deskripsi`, `flag_mandatory`) VALUES
(11, 'NPWP', 'mandatory'),
(12, 'SIUP', 'mandatory'),
(29, 'AKTA PERUSAHAAN', 'mandatory'),
(30, 'Sertifikat Badan Usaha', 'non_mandatory'),
(31, 'Neraca Keuangan', 'non_mandatory'),
(32, 'SURAT DOMISILI', 'mandatory'),
(33, 'KTP PENGURUS', 'mandatory'),
(34, 'TDP', 'mandatory');

-- --------------------------------------------------------

--
-- Table structure for table `r_ven_kategori_usaha`
--

CREATE TABLE IF NOT EXISTS `r_ven_kategori_usaha` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) NOT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `r_ven_kategori_usaha`
--

INSERT INTO `r_ven_kategori_usaha` (`kode_ref`, `deskripsi`) VALUES
(1, 'IT'),
(2, 'KONSULTAN KEUANGAN'),
(3, 'KONSULTAN MANAJEMEN');

-- --------------------------------------------------------

--
-- Table structure for table `r_ven_status_vendor`
--

CREATE TABLE IF NOT EXISTS `r_ven_status_vendor` (
  `kode` int(11) NOT NULL AUTO_INCREMENT,
  `pesan` varchar(100) NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `r_ven_status_vendor`
--


-- --------------------------------------------------------

--
-- Table structure for table `tr_menu`
--

CREATE TABLE IF NOT EXISTS `tr_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `menu_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=137 ;

--
-- Dumping data for table `tr_menu`
--

INSERT INTO `tr_menu` (`id`, `menu_url`, `menu_name`) VALUES
(73, 'user/add', 'User - Add User'),
(74, 'user/addrole', 'User - Add Role'),
(75, 'user/delete', 'User - Delete User'),
(76, 'user/dodeleterole', 'User - Delete Role'),
(77, 'user/roleaccess', 'User - Lihat/Edit Role Access'),
(78, 'user/rolename', 'User - Edit Role Name'),
(79, 'user/index', 'User - View User'),
(81, 'user/role', 'User - View Role'),
(85, 'datamaster/bentuk_usaha', 'Data Master - Bentuk Usaha'),
(86, 'datamaster/kategori_usaha', 'Data Master - Kategori Usaha'),
(87, 'datamaster/jenis_dokumen', 'Data Master - Jenis Dokumen'),
(88, 'datamaster/klasifikasi_barang', 'Data Master - Klasifikasi Barang'),
(89, 'datamaster/kondisi_barang', 'Data Master - Kondisi Barang'),
(90, 'datamaster/satuan_barang', 'Data Master - Satuan Barang'),
(91, 'datamaster/tahapan_lelang', 'Data Master - Tahapan Lelang'),
(92, 'datamaster/kode_akun', 'Data Master - Kode Akun'),
(93, 'datamaster/provinsi', 'Data Master - Provinsi'),
(94, 'datamaster/kota', 'Data Master - Kota'),
(95, 'cvendor/addvendor', 'Vendor - Pendaftaran'),
(96, 'c_lelang_admin/ajax_penetapan_pemenang', 'Admin-Penetapan Pemenang'),
(97, 'c_vendor_admin/addvendor', 'Admin-Tambah Vendor'),
(98, 'c_dashboard_admin', 'Dashboard Admin'),
(99, 'c_dashboard_vendor', 'Dashboard Vendor'),
(100, 'c_lelang_admin', 'Lelang Admin'),
(101, 'c_lelang_vendor', 'Lelang Vendor'),
(102, 'c_pengadaan_admin', 'Pengadaan Admin'),
(103, 'c_pengadaan_vendor', 'Pengadaan Vendor'),
(104, 'c_tahap_negosiasi', 'Tahap Negosiasi'),
(105, 'c_vendor_admin', 'Vendor Admin'),
(106, 'c_vendor_vendor', 'Vendor Vendor'),
(107, 'clelang', 'Lelang'),
(108, 'cpengadaan', 'Pengadaan'),
(109, 'cupload', 'Upload'),
(110, 'cuservendor', 'User Vendor'),
(111, 'cvendor', 'Vendor'),
(112, 'datamaster', 'Data Master'),
(114, 'notifikasi', 'Notifikasi'),
(115, 'pengumuman', 'Pengumuman'),
(116, 'user', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tr_role`
--

CREATE TABLE IF NOT EXISTS `tr_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detil` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tr_role`
--

INSERT INTO `tr_role` (`id`, `detil`) VALUES
(1, 'Administrator'),
(8, 'Vendor'),
(9, 'Pejabat'),
(10, 'Puchaser'),
(11, 'Admin Vendor'),
(12, 'Admin User');

-- --------------------------------------------------------

--
-- Table structure for table `t_access`
--

CREATE TABLE IF NOT EXISTS `t_access` (
  `access_datetime` datetime NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `pc_source` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `data` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_access`
--

INSERT INTO `t_access` (`access_datetime`, `username`, `modul`, `pc_source`, `data`) VALUES
('2014-11-19 19:18:21', 'denyrasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'denyrasta@gmail.com'),
('2014-11-19 19:22:46', 'deny.rasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'deny.rasta@gmail.com'),
('2014-11-19 19:23:16', 'deny.rasta@gmail.com', 'muser.change_password', '::1 - bambang-pc', 'deny.rasta@gmail.com;array (\n  password => c1ac0357cf25650e45d2ab62dca249c2,\n)'),
('2014-11-19 19:28:17', 'acquisdev@gmail.com', 'muser.auth', '::1 - bambang-pc', 'acquisdev@gmail.com'),
('2014-11-19 19:52:15', 'deny.rasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'deny.rasta@gmail.com'),
('2014-11-19 19:53:57', 'denyrasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'denyrasta@gmail.com'),
('2014-11-19 20:02:41', 'acquisdev@gmail.com', 'muser.auth', '::1 - bambang-pc', 'acquisdev@gmail.com'),
('2014-11-19 20:04:11', 'deny.rasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'deny.rasta@gmail.com'),
('2014-11-19 20:04:48', 'acquisdev@gmail.com', 'muser.auth', '::1 - bambang-pc', 'acquisdev@gmail.com'),
('2014-11-19 20:07:04', 'deny.rasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'deny.rasta@gmail.com'),
('2014-11-19 20:12:38', 'denyrasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'denyrasta@gmail.com'),
('2014-11-19 20:15:49', 'deny.rasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'deny.rasta@gmail.com'),
('2014-11-20 10:20:49', 'denyrasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'denyrasta@gmail.com'),
('2014-11-20 10:21:27', 'deny.rasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'deny.rasta@gmail.com'),
('2014-11-20 11:04:27', 'acquisdev@gmail.com', 'muser.auth', '::1 - bambang-pc', 'acquisdev@gmail.com'),
('2014-11-20 16:53:00', 'acquisdev@gmail.com', 'muser.auth', '::1 - bambang-pc', 'acquisdev@gmail.com'),
('2014-11-20 17:28:44', 'deny.rasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'deny.rasta@gmail.com'),
('2014-11-20 17:47:51', 'acquisdev@gmail.com', 'muser.auth', '::1 - bambang-pc', 'acquisdev@gmail.com'),
('2014-11-20 19:48:37', 'deny.rasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'deny.rasta@gmail.com'),
('2014-11-20 19:55:56', 'acquisdev@gmail.com', 'muser.auth', '::1 - bambang-pc', 'acquisdev@gmail.com'),
('2014-11-20 19:57:50', 'acquisdev@gmail.com', 'muser.add', '::1 - bambang-pc', ';array (\n  username => denyras.ta@gmail.com,\n  password => c1ac0357cf25650e45d2ab62dca249c2,\n  ref_role => 10,\n  nama => deny P,\n  nip => 13030312,\n  sbu => 1,\n  guid => 1,\n  email => denyras.ta@gmail.com,\n  jabatan => 005,\n)'),
('2014-11-20 20:00:28', 'denyras.ta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'denyras.ta@gmail.com'),
('2014-11-20 20:17:42', 'acquisdev@gmail.com', 'muser.add', '::1 - bambang-pc', ';array (\n  username => denyrast.a@gmail.com,\n  password => c1ac0357cf25650e45d2ab62dca249c2,\n  ref_role => 9,\n  nama => Dendry,\n  nip => 0911504140,\n  email => denyrast.a@gmail.com,\n  jabatan => 005,\n)'),
('2014-11-20 20:18:38', 'acquisdev@gmail.com', 'muser.add', '::1 - bambang-pc', ';array (\n  username => den.yrasta@gmail.com,\n  password => c1ac0357cf25650e45d2ab62dca249c2,\n  ref_role => 9,\n  nama => Dony,\n  nip => 1311600553,\n  email => den.yrasta@gmail.com,\n  jabatan => 006,\n)'),
('2014-11-20 20:24:21', 'acquisdev@gmail.com', 'muser.add', '::1 - bambang-pc', ';array (\n  username => d.enyrasta@gmail.com,\n  password => c1ac0357cf25650e45d2ab62dca249c2,\n  ref_role => 11,\n  nama => Handoyo,\n  nip => 12345555,\n  email => d.enyrasta@gmail.com,\n)'),
('2014-11-20 20:24:58', 'd.enyrasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'd.enyrasta@gmail.com'),
('2014-11-20 20:25:41', 'acquisdev@gmail.com', 'muser.auth', '::1 - bambang-pc', 'acquisdev@gmail.com'),
('2014-11-20 20:27:09', 'acquisdev@gmail.com', 'muser.edit_role_access', '::1 - bambang-pc', '11;array (\n  0 => 110,\n  1 => 111,\n  2 => 95,\n  3 => 98,\n  4 => 105,\n  5 => 97,\n  6 => 106,\n)'),
('2014-11-20 20:27:30', 'd.enyrasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'd.enyrasta@gmail.com'),
('2014-11-20 20:32:28', 'acquisdev@gmail.com', 'muser.add_role', '::1 - bambang-pc', 'Admin User'),
('2014-11-20 20:33:04', 'acquisdev@gmail.com', 'muser.edit_role_access', '::1 - bambang-pc', '12;array (\n  0 => 110,\n  1 => 116,\n  2 => 73,\n  3 => 74,\n  4 => 75,\n  5 => 76,\n  6 => 79,\n  7 => 81,\n  8 => 77,\n  9 => 78,\n)'),
('2014-11-20 20:33:31', 'acquisdev@gmail.com', 'muser.edit_role_access', '::1 - bambang-pc', '12;array (\n  0 => 110,\n  1 => 116,\n  2 => 73,\n  3 => 75,\n  4 => 79,\n)'),
('2014-11-20 20:34:33', 'acquisdev@gmail.com', 'muser.add', '::1 - bambang-pc', ';array (\n  username => de.nyrasta@gmail.com,\n  password => c1ac0357cf25650e45d2ab62dca249c2,\n  ref_role => 12,\n  nama => suharjono,\n  nip => 03131314,\n  email => de.nyrasta@gmail.com,\n)'),
('2014-11-20 20:35:00', 'de.nyrasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'de.nyrasta@gmail.com'),
('2014-11-20 20:36:00', 'de.nyrasta@gmail.com', 'muser.add', '::1 - bambang-pc', ';array (\n  username => denyr.as.ta@gmail.com,\n  password => c1ac0357cf25650e45d2ab62dca249c2,\n  ref_role => 12,\n  nama => bang deny,\n  nip => 0819101010,\n  email => denyr.as.ta@gmail.com,\n)'),
('2014-11-20 20:36:33', 'denyras.ta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'denyras.ta@gmail.com'),
('2014-11-20 20:53:33', 'denyras.ta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'denyras.ta@gmail.com'),
('2014-11-20 20:54:48', 'denyras.ta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'denyras.ta@gmail.com'),
('2014-11-20 20:56:36', 'acquisdev@gmail.com', 'muser.add', '::1 - bambang-pc', 'denyrasta@gmail.com;array (\n  username => denyrasta@gmail.com,\n  password => c1ac0357cf25650e45d2ab62dca249c2,\n  ref_role => 8,\n  nama => PT_MALLOCI,\n  nip => 12314,\n  email => denyrasta@gmail.com,\n)'),
('2014-11-20 20:56:52', 'denyras.ta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'denyras.ta@gmail.com'),
('2014-11-20 20:57:28', 'denyrasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'denyrasta@gmail.com'),
('2014-11-20 20:58:07', 'acquisdev@gmail.com', 'muser.add', '::1 - bambang-pc', 'deny.rasta@gmail.com;array (\n  username => deny.rasta@gmail.com,\n  password => c1ac0357cf25650e45d2ab62dca249c2,\n  ref_role => 8,\n  nama => PT_INTEGER,\n  nip => 1212414,\n  email => deny.rasta@gmail.com,\n)'),
('2014-11-20 20:58:28', 'deny.rasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'deny.rasta@gmail.com'),
('2014-11-20 21:45:31', 'd.eny.rasta@gmail.com', 'muser.auth', '::1 - bambang-pc', 'd.eny.rasta@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `t_role_menu`
--

CREATE TABLE IF NOT EXISTS `t_role_menu` (
  `ref_menu` int(11) NOT NULL,
  `ref_role` int(11) NOT NULL,
  PRIMARY KEY (`ref_menu`,`ref_role`),
  KEY `t_role_menu_ibfk_1` (`ref_role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_role_menu`
--

INSERT INTO `t_role_menu` (`ref_menu`, `ref_role`) VALUES
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(81, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(85, 8),
(86, 8),
(87, 8),
(88, 8),
(89, 8),
(90, 8),
(91, 8),
(92, 8),
(93, 8),
(94, 8),
(95, 8),
(98, 10),
(100, 10),
(102, 10),
(104, 10),
(107, 10),
(108, 10),
(109, 10),
(110, 10),
(95, 11),
(97, 11),
(98, 11),
(105, 11),
(106, 11),
(110, 11),
(111, 11),
(73, 12),
(75, 12),
(79, 12),
(110, 12),
(116, 12);

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `ref_role` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `last_ip` varchar(50) DEFAULT NULL,
  `insert_datetime` datetime DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `sbu` tinyint(1) DEFAULT NULL,
  `jenis` enum('1','2') DEFAULT NULL,
  `guid` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `ref_role` (`ref_role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`username`, `password`, `ref_role`, `nama`, `alamat`, `email`, `nip`, `status`, `last_login`, `last_logout`, `last_ip`, `insert_datetime`, `update_datetime`, `sbu`, `jenis`, `guid`, `jabatan`) VALUES
('acquisdev@gmail.com', 'c1ac0357cf25650e45d2ab62dca249c2', 1, 'Admin', NULL, 'acquisdev@gmail.com', NULL, 1, '2014-11-20 20:25:40', '2014-10-27 08:49:09', '::1 - bambang-pc', NULL, NULL, 1, NULL, NULL, '002'),
('d.eny.rasta@gmail.com', 'ca996fe55fc515786493b7d0824ca920', 8, 'PT._KODING_JAYA', NULL, 'd.eny.rasta@gmail.com', NULL, 1, '2014-11-20 21:45:31', NULL, '::1 - bambang-pc', NULL, NULL, NULL, NULL, NULL, ''),
('d.enyrasta@gmail.com', 'c1ac0357cf25650e45d2ab62dca249c2', 11, 'Handoyo', NULL, 'd.enyrasta@gmail.com', '12345555', 1, '2014-11-20 20:27:30', NULL, '::1 - bambang-pc', '2014-11-20 20:24:21', NULL, NULL, NULL, NULL, ''),
('de.nyrasta@gmail.com', 'c1ac0357cf25650e45d2ab62dca249c2', 12, 'suharjono', NULL, 'de.nyrasta@gmail.com', '03131314', 1, '2014-11-20 20:35:00', NULL, '::1 - bambang-pc', '2014-11-20 20:34:33', NULL, NULL, NULL, NULL, ''),
('den.yrasta@gmail.com', 'c1ac0357cf25650e45d2ab62dca249c2', 9, 'Dony', NULL, 'den.yrasta@gmail.com', '1311600553', 1, NULL, NULL, NULL, '2014-11-20 20:18:38', NULL, NULL, NULL, NULL, '006'),
('deny.rasta@gmail.com', 'c1ac0357cf25650e45d2ab62dca249c2', 8, 'PT_INTEGER', NULL, 'deny.rasta@gmail.com', '1212414', 1, '2014-11-20 20:58:28', NULL, '::1 - bambang-pc', NULL, '2014-11-20 20:58:07', NULL, NULL, NULL, ''),
('denyr.as.ta@gmail.com', 'c1ac0357cf25650e45d2ab62dca249c2', 12, 'bang deny', NULL, 'denyr.as.ta@gmail.com', '0819101010', 1, NULL, NULL, NULL, '2014-11-20 20:36:00', NULL, NULL, NULL, NULL, ''),
('denyras.ta@gmail.com', 'c1ac0357cf25650e45d2ab62dca249c2', 10, 'deny P', NULL, 'denyras.ta@gmail.com', '13030312', 1, '2014-11-20 20:56:52', NULL, '::1 - bambang-pc', '2014-11-20 19:57:50', NULL, 1, NULL, '1', '005'),
('denyrast.a@gmail.com', 'c1ac0357cf25650e45d2ab62dca249c2', 9, 'Dendry', NULL, 'denyrast.a@gmail.com', '0911504140', 1, NULL, NULL, NULL, '2014-11-20 20:17:42', NULL, NULL, NULL, NULL, '005'),
('denyrasta@gmail.com', 'c1ac0357cf25650e45d2ab62dca249c2', 8, 'PT_MALLOCI', NULL, 'denyrasta@gmail.com', '12314', 1, '2014-11-20 20:57:28', NULL, '::1 - bambang-pc', NULL, '2014-11-20 20:56:37', NULL, NULL, NULL, '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `br_vendor_kat_usaha`
--
ALTER TABLE `br_vendor_kat_usaha`
  ADD CONSTRAINT `fk_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `r_ven_kategori_usaha` (`kode_ref`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_perusahaan` FOREIGN KEY (`kode_perusahaan`) REFERENCES `main_vendor` (`kode_perusahaan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `main_config_lelang`
--
ALTER TABLE `main_config_lelang`
  ADD CONSTRAINT `fk_id_kerjaan` FOREIGN KEY (`id_pekerjaan`) REFERENCES `main_pekerjaan` (`id_pekerjaan`);

--
-- Constraints for table `main_inventory_received`
--
ALTER TABLE `main_inventory_received`
  ADD CONSTRAINT `main_inventory_received_ibfk_1` FOREIGN KEY (`id_main_inventory`) REFERENCES `main_inventory` (`kode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `main_inventory_received_ibfk_2` FOREIGN KEY (`fk_br_mainpeserta_inv`) REFERENCES `br_rel_mainpeserta_inventory` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `main_pekerjaan`
--
ALTER TABLE `main_pekerjaan`
  ADD CONSTRAINT `fk_lelang` FOREIGN KEY (`id_pemenang`) REFERENCES `main_vendor` (`kode_perusahaan`);

--
-- Constraints for table `main_pembayaran_termin`
--
ALTER TABLE `main_pembayaran_termin`
  ADD CONSTRAINT `fk_id_pekerjaan` FOREIGN KEY (`id_pekerjaan`) REFERENCES `main_pekerjaan` (`id_pekerjaan`);

--
-- Constraints for table `main_peserta_lelang`
--
ALTER TABLE `main_peserta_lelang`
  ADD CONSTRAINT `fk_perusahaan_lelang` FOREIGN KEY (`kode_perusahaan`) REFERENCES `main_vendor` (`kode_perusahaan`),
  ADD CONSTRAINT `id_kerja_lelang` FOREIGN KEY (`id_pekerjaan`) REFERENCES `main_pekerjaan` (`id_pekerjaan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `main_vendor_dokumen`
--
ALTER TABLE `main_vendor_dokumen`
  ADD CONSTRAINT `fk_kode_perusahaan` FOREIGN KEY (`kode_perusahaan`) REFERENCES `main_vendor` (`kode_perusahaan`);

--
-- Constraints for table `t_role_menu`
--
ALTER TABLE `t_role_menu`
  ADD CONSTRAINT `t_role_menu_ibfk_1` FOREIGN KEY (`ref_role`) REFERENCES `tr_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_role_menu_ibfk_2` FOREIGN KEY (`ref_menu`) REFERENCES `tr_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_user`
--
ALTER TABLE `t_user`
  ADD CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`ref_role`) REFERENCES `tr_role` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
