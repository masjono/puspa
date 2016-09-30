-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Nov 2014 pada 12.37
-- Versi Server: 5.6.16
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
-- Struktur dari tabel `br_rel_mainpekerjaan_dokumen`
--

CREATE TABLE IF NOT EXISTS `br_rel_mainpekerjaan_dokumen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main_pekerjaan` int(11) NOT NULL,
  `id_dokumen` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

--
-- Dumping data untuk tabel `br_rel_mainpekerjaan_dokumen`
--

INSERT INTO `br_rel_mainpekerjaan_dokumen` (`id`, `id_main_pekerjaan`, `id_dokumen`) VALUES
(27, 9, 1),
(28, 9, 2),
(32, 10, 1),
(35, 16, 30),
(36, 16, 31),
(41, 4, 30),
(42, 4, 31),
(47, 22, 30),
(48, 22, 31),
(51, 24, 30),
(52, 24, 31),
(79, 25, 30),
(80, 25, 31),
(81, 26, 30),
(82, 27, 30),
(83, 27, 31);

-- --------------------------------------------------------

--
-- Struktur dari tabel `br_rel_mainpekerjaan_kategoriusaha`
--

CREATE TABLE IF NOT EXISTS `br_rel_mainpekerjaan_kategoriusaha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main_pekerjaan` int(11) NOT NULL,
  `id_kategori_usaha` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=238 ;

--
-- Dumping data untuk tabel `br_rel_mainpekerjaan_kategoriusaha`
--

INSERT INTO `br_rel_mainpekerjaan_kategoriusaha` (`id`, `id_main_pekerjaan`, `id_kategori_usaha`) VALUES
(2, 2, 1),
(23, 3, 1),
(35, 9, 1),
(37, 10, 1),
(67, 14, 1),
(69, 8, 1),
(84, 16, 1),
(88, 17, 1),
(93, 4, 1),
(94, 4, 2),
(96, 11, 1),
(97, 11, 2),
(98, 12, 1),
(99, 18, 1),
(150, 5, 1),
(151, 5, 2),
(175, 1, 1),
(183, 22, 1),
(185, 24, 1),
(189, 15, 1),
(220, 25, 1),
(221, 25, 3),
(233, 26, 3),
(236, 21, 1),
(237, 27, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `br_rel_mainpeserta_inventory`
--

CREATE TABLE IF NOT EXISTS `br_rel_mainpeserta_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main_peserta_lelang` int(11) NOT NULL,
  `id_inventory` int(11) NOT NULL,
  `harga_penawaran` double DEFAULT '0',
  `harga_nego` double DEFAULT '0',
  `disetujui_admin` enum('disetujui','tidak','','') DEFAULT 'tidak',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data untuk tabel `br_rel_mainpeserta_inventory`
--

INSERT INTO `br_rel_mainpeserta_inventory` (`id`, `id_main_peserta_lelang`, `id_inventory`, `harga_penawaran`, `harga_nego`, `disetujui_admin`) VALUES
(29, 4, 13, 500000, 20000, 'tidak'),
(30, 4, 14, 5000000, 0, 'tidak'),
(31, 4, 15, 300000, 0, 'tidak'),
(32, 34, 17, 10000, 2010, 'disetujui'),
(33, 219, 17, 10000000, 0, 'tidak'),
(34, 238, 26, 10000000, 0, 'tidak'),
(35, 276, 30, 80000000, 500000, 'disetujui'),
(36, 276, 31, 30000000, 30000, 'tidak'),
(37, 229, 24, 100000, 100000, 'disetujui'),
(38, 229, 25, 100000, 300000, 'tidak'),
(39, 229, 29, 1000000, 0, 'tidak'),
(40, 296, 30, 1000000, 0, 'tidak'),
(41, 296, 31, 1000000, 0, 'tidak'),
(42, 296, 32, 1000000, 0, 'tidak'),
(43, 295, 30, 2000000, 0, 'tidak'),
(44, 295, 31, 2000000, 0, 'tidak'),
(45, 295, 32, 2000000, 0, 'tidak'),
(46, 297, 30, 1000000, 0, 'tidak'),
(47, 297, 31, 1000000, 0, 'tidak'),
(48, 297, 32, 1000000, 0, 'tidak'),
(49, 299, 30, 2000000, 0, 'tidak'),
(50, 299, 31, 2000000, 0, 'tidak'),
(51, 299, 32, 2000000, 0, 'tidak'),
(52, 300, 30, 1000000, 0, 'tidak'),
(53, 300, 31, 1000000, 0, 'tidak'),
(54, 300, 32, 1000000, 0, 'tidak'),
(55, 230, 24, 1000000, 0, 'tidak'),
(56, 230, 25, 1000000, 0, 'tidak'),
(57, 230, 29, 10000000, 0, 'tidak'),
(58, 307, 37, 1000000, 800000, 'disetujui'),
(59, 307, 38, 500000, 400000, 'disetujui'),
(60, 306, 37, 100000, 0, 'tidak'),
(61, 306, 38, 50000, 0, 'tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `br_vendor_kat_usaha`
--

CREATE TABLE IF NOT EXISTS `br_vendor_kat_usaha` (
  `id_kategori` int(11) NOT NULL,
  `kode_perusahaan` int(11) NOT NULL,
  PRIMARY KEY (`id_kategori`,`kode_perusahaan`),
  KEY `fk_perusahaan` (`kode_perusahaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `br_vendor_kat_usaha`
--

INSERT INTO `br_vendor_kat_usaha` (`id_kategori`, `kode_perusahaan`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(3, 4),
(1, 5),
(3, 5),
(1, 6),
(3, 6),
(1, 7),
(3, 7),
(1, 8),
(1, 9),
(1, 21),
(3, 21),
(1, 27),
(2, 27),
(1, 28),
(1, 29),
(2, 29),
(1, 30),
(1, 31),
(2, 31);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
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
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('dafbf13f8865b7601da46ba2bc696741', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 1416294455, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:17:"sunday@acquis.com";s:4:"role";s:1:"8";s:4:"nama";s:9:"PT.Sunday";s:3:"sbu";s:1:"1";s:4:"guid";s:1:"1";s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('7e11c5b6712a9235cdd0a89315e05a25', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 1416294680, ''),
('fd93d46d4734dbaf10b033463748b70e', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 1416294680, ''),
('d4db38b2ac5cbafa2f7115d3dd2d642a', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 1416294681, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:17:"sunday@acquis.com";s:4:"role";s:1:"8";s:4:"nama";s:9:"PT.Sunday";s:3:"sbu";s:1:"1";s:4:"guid";s:1:"1";s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('122437acf19c112f8a7113720a528bdf', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1416302085, ''),
('01d2a12587812f6203e96af028a579df', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1416302085, ''),
('fae5d21d5d98e612e2cefeb73ea6b792', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1416302085, 'a:6:{s:9:"user_data";s:0:"";s:8:"username";s:16:"biner@acquis.com";s:4:"role";s:1:"8";s:4:"nama";s:18:"PT.Biner Teknologi";s:3:"sbu";s:1:"1";s:4:"guid";s:1:"1";}'),
('dc38c313c340a7bdcf9d4005df548be4', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1416302464, ''),
('4359b881dfc7562f1f829f473a47ed25', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1416302464, ''),
('3399939ea33028bd8e324d35ae16db0c', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1416302465, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:23:"de.nd.ry.java@gmail.com";s:4:"role";s:1:"8";s:4:"nama";s:15:"PT_MAJU_SENTOSA";s:3:"sbu";N;s:4:"guid";N;s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('88c7596bb9f78ec05963bc68aa2a4979', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1416302465, ''),
('b333710920e53f93e80d33a870923fae', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1416302465, ''),
('94ecfb01504f8590982d9c7cd46c58e4', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1416302465, ''),
('5e29ec86d1aa1d42cce36917a0319033', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36 OPR/25.0.1', 1416302997, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:16:"biner@acquis.com";s:4:"role";s:1:"8";s:4:"nama";s:18:"PT.Biner Teknologi";s:3:"sbu";s:1:"1";s:4:"guid";s:1:"1";s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('f5126644618a132c41bb1fd73fe3980f', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 1416281607, 'a:1:{s:9:"user_data";s:0:"";}'),
('20e3d78569b28933d9d97ee973c2ac86', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 1416301780, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:16:"acquis@gmail.com";s:4:"role";s:1:"1";s:4:"nama";s:5:"Admin";s:3:"sbu";s:1:"1";s:4:"guid";N;s:12:"form_success";s:25:"Data berhasil ditambahkan";}'),
('5b61c24a1a8443ea672f89b6587d2638', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 1416301780, ''),
('524dc00f431f078b5b65aaf5c6ad8985', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 1416301780, ''),
('38b53b4ea2ea603e13555b7dbf1fb4e5', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1416301168, 'a:22:{s:9:"user_data";s:0:"";s:15:"nama_perusahaan";s:15:"PT MAJU SENTOSA";s:4:"npwp";s:10:"8917389289";s:6:"alamat";s:13:"Jalan Angkasa";s:8:"provinsi";s:2:"13";s:4:"kota";s:3:"194";s:8:"direktur";s:7:"Bambang";s:7:"telepon";s:11:"02175837387";s:3:"fax";s:0:"";s:2:"hp";s:0:"";s:5:"email";s:23:"de.nd.ry.java@gmail.com";s:7:"website";s:17:"majusejahtera.com";s:12:"bentuk_usaha";s:1:"1";s:6:"status";s:10:"Unverified";s:6:"no_ktp";s:13:"0898645728386";s:4:"date";s:19:"2014-11-18 16:02:24";s:7:"uriunik";s:32:"47c9ea13b930d719e8b8437ce6205f8f";s:8:"username";s:23:"de.nd.ry.java@gmail.com";s:4:"role";s:1:"8";s:4:"nama";s:15:"PT_MAJU_SENTOSA";s:3:"sbu";N;s:4:"guid";N;}'),
('c550cc1c16ef4825b4de84574d87baf1', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 1416301242, 'a:6:{s:9:"user_data";s:0:"";s:8:"username";s:16:"acquis@gmail.com";s:4:"role";s:1:"1";s:4:"nama";s:5:"Admin";s:3:"sbu";s:1:"1";s:4:"guid";N;}'),
('949b2a95e81b99b495c3320190d40ed5', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1416281540, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:16:"acquis@gmail.com";s:4:"role";s:1:"1";s:4:"nama";s:5:"Admin";s:3:"sbu";s:1:"1";s:4:"guid";N;s:12:"form_success";s:25:"Data berhasil ditambahkan";}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_chat`
--

CREATE TABLE IF NOT EXISTS `main_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `id_pekerjaan` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `tipe_chat` enum('penjelasan','negosiasi','','') DEFAULT 'penjelasan',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `main_chat`
--

INSERT INTO `main_chat` (`id`, `user`, `message`, `id_pekerjaan`, `time`, `tipe_chat`) VALUES
(1, 'acquis@gmail.com', 'Hello!', 21, '2014-11-17 19:52:33', 'negosiasi'),
(2, 'acquis@gmail.com', 'Selamat Sore', 27, '2014-11-18 16:24:47', 'penjelasan'),
(3, 'acquis@gmail.com', 'test', 27, '2014-11-18 16:35:30', 'negosiasi'),
(4, 'biner@acquis.com', 'test juga', 27, '2014-11-18 16:35:40', 'negosiasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_config_lelang`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_inventory`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data untuk tabel `main_inventory`
--

INSERT INTO `main_inventory` (`kode`, `flag_lelang`, `kode_akun_aset`, `kode_akun_hutang`, `klasifikasi`, `nama_barang`, `kondisi`, `kuantitas`, `satuan`, `pemilik`, `umur_ekonomis`, `spesifikasi`, `tahun_pengadaan`, `merk`, `kode_pengadaan`, `nilai_satuan`, `termin_ke`, `flag`, `plan_delivery_date`) VALUES
(1, 'pengadaan', '110-100', '530', 2, 'Inventory #1', 1, 1, 1, '001', '1', '-', '2014-08-20', '-', 1, 200, 1, '0', '0000-00-00'),
(3, 'lelang', '110-100', '530', 2, 'inventory lelang #1', 1, 1, 1, '001', '1', '-', '2014-08-20', '-', 2, 200, 1, '0', '0000-00-00'),
(4, 'lelang', '001', '', 3, 'AA', 0, 1, 1, '001', '0', '-', '2014-09-22', '-', 10, 5000000, 0, '1', '0000-00-00'),
(5, 'lelang', '110-001', '', 3, 'AB', 0, 2, 1, '', '0', '-', '2014-11-07', '-', 10, 600000, 0, '0', '0000-00-00'),
(6, 'lelang', '110-100', '', 3, 'aplikasi', 0, 1, 1, '', '0', '-', '2014-11-06', 'acquis', 11, 500000, 0, '0', '2014-09-29'),
(7, 'lelang', '110-100', '', 3, 'aplikasi lanjutan', 0, 1, 1, '001', '0', '-', '2014-09-23', '-', 11, 20000000, 0, '0', '0000-00-00'),
(8, 'lelang', '110-001', '', 1, 'ty', 0, 1, 1, '001', '0', '-', '2014-09-23', '-', 11, 200000, 0, '0', '0000-00-00'),
(12, 'lelang', '001', '', 1, 'Tess', 0, 1, 1, '001', '', '-', '2014-09-30', '-', 13, 500000, 0, '0', '2014-10-01'),
(13, 'lelang', '110-001', '', 1, 'Cobain', 0, 1, 1, '001', '', '-', '2014-10-02', '-', 4, 555555.55, 0, '0', '0000-00-00'),
(14, 'lelang', '110-001', '', 1, 'cobacoba', 0, 1, 2, '', '0', '-', '2014-11-06', '-', 4, 9000000, 0, '0', '0000-00-00'),
(15, 'lelang', '110-001', '', 2, 'microphone', 0, 3, 1, '', '0', '-', '2014-11-06', '-', 4, 9000000, 0, '0', '0000-00-00'),
(16, 'lelang', '110-001', '', 2, 'inventory', 0, 23, 1, '001', '', '-', '2014-10-08', '-', 8, 200, 0, '0', '0000-00-00'),
(17, 'lelang', '001', '', 1, 'asd', 0, 3, 1, '', '0', '-sadasd', '2014-11-07', '-asdasdsa', 5, 5000000, 0, '0', '0000-00-00'),
(18, 'lelang', '110-100', '', 1, 'laptop', 0, 3, 1, '<br />\n<b>Fatal error</b>:  Call to undefined method mlelang::ambildivisiyangtelahdiset() in <b>F:\\xampp\\htdocs\\GAPURA_admin\\application\\controllers\\c_lelang_admin.php</b> on line <b>1398</b><br />\n', '', '-', '2014-11-06', '-', 17, 3000000, 0, '0', '2014-12-05'),
(19, 'lelang', '110-100', '', 1, 'lampu', 0, 1, 1, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>F:\\xampp\\htdocs\\GAPURA_admin\\application\\controllers\\c_lelang_admin.php</b> on line <b>1434</b><br />\n', '', '-', '2014-11-06', '-', 14, 111111111.11, 0, '0', '2014-12-21'),
(24, 'lelang', '110-100', '', 1, 'Laptop', 0, 2, 1, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>F:\\xampp\\htdocs\\GAPURA_admin\\application\\controllers\\c_lelang_admin.php</b> on line <b>1500</b><br />\n', '', '-', '2014-11-07', '-', 21, 10000000, 0, '0', '2014-12-12'),
(25, 'lelang', '110-100', '', 1, 'Komputer', 0, 2, 1, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>F:\\xampp\\htdocs\\GAPURA_admin\\application\\controllers\\c_lelang_admin.php</b> on line <b>1500</b><br />\n', '', '-i3', '2014-11-07', '-asus', 21, 2000000, 0, '0', '2014-12-12'),
(26, 'lelang', '110-100', '', 1, 'Laptop', 0, 1, 1, '', '0', '-core i3', '2014-11-10', '-Asus', 22, 10000000, 0, '0', '2014-12-12'),
(27, 'lelang', '110-100', '', 1, 'Hard Disk', 0, 3, 1, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>F:\\xampp\\htdocs\\GAPURA_admin\\application\\controllers\\c_lelang_admin.php</b> on line <b>1543</b><br />\n', '', '-', '2014-11-10', '-', 22, 3000000, 0, '0', '2012-12-12'),
(28, 'lelang', '110-100', '', 3, 'Sapu', 0, 5, 1, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>F:\\xampp\\htdocs\\GAPURA_admin\\application\\controllers\\c_lelang_admin.php</b> on line <b>1573</b><br />\n', '', '-', '2014-11-11', '-', 23, 100000, 0, '0', '2012-12-12'),
(30, 'lelang', '110-100', '', 1, 'Truck', 0, 1, 1, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>F:\\xampp\\htdocs\\GAPURA_admin\\application\\controllers\\c_lelang_admin.php</b> on line <b>1585</b><br />\n', '', '-', '2014-11-11', '-', 24, 100000000, 0, '0', '2014-12-12'),
(31, 'lelang', '110-001', '', 2, 'hvs', 0, 1, 2, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>F:\\xampp\\htdocs\\GAPURA_admin\\application\\controllers\\c_lelang_admin.php</b> on line <b>1585</b><br />\n', '', '-', '2014-11-11', '-', 24, 50000000, 0, '0', '2014-12-12'),
(32, 'lelang', '110-100', '', 3, 'mobil', 0, 3, 1, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>F:\\xampp\\htdocs\\GAPURA_admin\\application\\controllers\\c_lelang_admin.php</b> on line <b>1614</b><br />\n', '', '-', '2014-11-13', '-ferari', 24, 200000000, 0, '0', '2012-12-12'),
(33, 'lelang', '110-001', '', 2, 'Pensil', 0, 20, 1, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>F:\\xampp\\htdocs\\GAPURA_admin\\application\\controllers\\c_lelang_admin.php</b> on line <b>1635</b><br />\n', '', '', '2014-11-14', 'Faster', 25, 20000, 0, '0', '2014-11-14'),
(34, 'lelang', '110-001', '', 2, 'Buku', 0, 500, 1, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>F:\\xampp\\htdocs\\GAPURA_admin\\application\\controllers\\c_lelang_admin.php</b> on line <b>1635</b><br />\n', '', 'A4', '2014-11-14', 'Sinar Dunia', 25, 10000, 0, '0', '2014-11-14'),
(35, 'lelang', '001', '', 3, 'konsultan manajemen', 0, 1, 3, '', '0', '-', '2014-11-14', '-', 26, 30000000, 0, '0', '2014-11-14'),
(36, 'lelang', '110-101', '', 3, 'baju', 0, 2, 3, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>F:\\xampp\\htdocs\\GAPURA_admin\\application\\controllers\\c_lelang_admin.php</b> on line <b>1635</b><br />\n', '', '-', '2014-11-17', '-', 15, 200000, 0, '0', '2012-12-12'),
(37, 'lelang', '110-001', '', 1, 'Komputer', 0, 3, 1, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>F:\\xampp\\htdocs\\gapura_final\\application\\controllers\\c_lelang_admin.php</b> on line <b>1766</b><br />\n', '', '-I3', '2014-11-18', '-Asus', 27, 2000000, 0, '0', '0000-00-00'),
(38, 'lelang', '110-100', '', 1, 'Laptop', 0, 3, 1, '<br />\n<b>Fatal error</b>:  Call to undefined method m_lelang::ambildivisiyangtelahdiset() in <b>F:\\xampp\\htdocs\\gapura_final\\application\\controllers\\c_lelang_admin.php</b> on line <b>1766</b><br />\n', '', '-486', '2014-11-18', '-Accer', 27, 1000000, 0, '0', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_inventory_received`
--

CREATE TABLE IF NOT EXISTS `main_inventory_received` (
  `id` int(11) NOT NULL,
  `id_main_inventory` int(11) NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `fk_br_mainpeserta_inv` int(11) DEFAULT NULL,
  KEY `id_main_inventory` (`id_main_inventory`),
  KEY `fk_br_mainpeserta_inv` (`fk_br_mainpeserta_inv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_kirim_email`
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
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `to` (`to`),
  KEY `tipe` (`tipe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `main_kirim_email`
--

INSERT INTO `main_kirim_email` (`id`, `to`, `subject`, `message`, `status`, `tipe`, `url`, `id_pekerjaan`, `nama_perusahaan`) VALUES
(1, 'dendryjava@gmail.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'PT. BINER TEKNOLOGI, kami ingin menginformasikan bahwa status perusahaan anda menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (17 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, 'PT. BINER TEKNOLOGI'),
(2, 'acquis@gmail.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (17 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, NULL),
(3, 'admin@acquis.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (17 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, NULL),
(4, 'de.nd.ry.java@gmail.com', 'Pendaftaran Corporate', 'Bersama ini kami memberitahukan username dan password untuk masuk ke dalam <br> Username: de.nd.ry.java@gmail.com<br> Password: w5mollhe', 'terkirim', 'pendaftaran_corporate', 'http://localhost:81/gapura_final/index.php/cvendor/reff/PT_MAJU_SENTOSA/47c9ea13b930d719e8b8437ce6205f8f', NULL, NULL),
(5, 'biner@acquis.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'PT. BINER TEKNOLOGI, kami ingin menginformasikan bahwa status perusahaan anda menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, 'PT. BINER TEKNOLOGI'),
(6, 'acquis@gmail.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, NULL),
(7, 'admin@acquis.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, NULL),
(8, 'biner@acquis.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'PT. BINER TEKNOLOGI, kami ingin menginformasikan bahwa status perusahaan anda menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, 'PT. BINER TEKNOLOGI'),
(9, 'acquis@gmail.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, NULL),
(10, 'admin@acquis.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, NULL),
(11, 'biner@acquis.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'PT. BINER TEKNOLOGI, kami ingin menginformasikan bahwa status perusahaan anda menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, 'PT. BINER TEKNOLOGI'),
(12, 'acquis@gmail.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, NULL),
(13, 'admin@acquis.com', 'Dokumen Administrasi Kadaluarsa - Perubahan Status Menjadi Unverified', 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'terkirim', 'dokumen_mandatory_expired', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_pekerjaan`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data untuk tabel `main_pekerjaan`
--

INSERT INTO `main_pekerjaan` (`id_pekerjaan`, `nama_pekerjaan`, `uraian_pekerjaan`, `lokasi_pekerjaan`, `jangka_waktu_pekerjaan`, `disetujui_admin_jangka_waktu_pekerjaan`, `status`, `pagu`, `metode`, `partisipasi`, `flag_pagu`, `jenis_pekerjaan`, `cara_delivery`, `dokumen_pengajuan`, `dokumen_perkiraan_anggaran`, `dokumen_kak`, `dokumen_pra`, `dok_proposal`, `tanggal_request`, `no_nd`, `tanggal_diumumkan`, `tgl_pendaftaran_akhir`, `tgl_penjelasan_awal`, `tgl_penjelasan_akhir`, `deadline_submit`, `deadline_submit_harga`, `tgl_pengumuman_pemenang`, `tanggal_negosiasi`, `tanggal_negosiasi_akhir`, `kategori_usaha`, `harga_negosiasi`, `purchase_order`, `kontrak`, `id_kontrak`, `tgl_kontrak`, `penandatangan`, `unit`, `jabatan`, `id_pemenang`, `id_pemenang_ditetapkan`, `tanggal_selesai`, `finish_target`, `isi_pengumuman`, `jumlah_termin`, `kode_akun_kas`, `kode_akun_hutang`, `persentase_teknis`, `persentase_harga`, `persentase_beauty_contest`) VALUES
(1, 'pengadaan langsung #1', 'uraian', NULL, NULL, 'tidak', '10', ' 20000.00', 'PL', NULL, 'PTB', 'PL', '', 'ca3521d34e04fc8e58acde5b1abfee6d_Soal Teknis.docx', 'd1d1164b0c9ad4d9608ce6486535f703_Soal Teknis.docx', '34a66dbbfd5c58232ba100b8f3522e9a_Soal Teknis.docx', NULL, NULL, '2014-08-19 17:00:00', '', '2014-08-20', NULL, '2014-08-20', '2014-08-20', '2014-08-20', NULL, '2014-08-20', '0000-00-00', NULL, '1', NULL, '485334268b88ec923bef937348cffdfa_Soal Teknis.docx', '2e4e9546b4e0acdfd8509686bab716dd_Soal Teknis.docx', '001', '2014-08-20', 'biner', '001', '', 5, NULL, '2014-08-20', NULL, NULL, 1, '001', '530', 50, 30, 20),
(4, 'Pekerjaan', NULL, NULL, NULL, 'tidak', '3', '27645555.55', 'PR', 'LT', 'PTB', 'LEL', '', 'cdba4dc5b3f3b82dde015eacb9a9a483_Pharis RS.docx', 'dbe005636c1b03bde2093d6af7307309_Soal Teknis.docx', '2a0f4b13bd05432d7ef5dc11f6d64b61_Soal Teknis.docx', '9c9ee7150a20c6b4a2c143371ddee7b6_Soal Teknis.docx', NULL, '2014-11-12 17:00:00', '', '2014-09-11', NULL, '2014-11-14', '2014-11-14', '2014-11-14', '2014-11-14', '2014-11-14', '2014-11-14', NULL, '2', NULL, NULL, NULL, '', '0000-00-00', '', '002', '', 5, NULL, '0000-00-00', NULL, 'aa', 0, '001', '', 50, 30, 20),
(5, 'gatau', NULL, NULL, NULL, 'tidak', '3', '15000000', 'PS', 'PL', 'PTB', 'LEL', '', NULL, NULL, NULL, NULL, NULL, '2014-11-12 17:00:00', 'asd123', '2014-11-06', NULL, '2014-11-22', '2014-11-13', '2014-11-18', '0000-00-00', '2014-11-22', '2014-11-22', NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', '', 2, NULL, '0000-00-00', NULL, 'lelang memasuki tahap pengunguman', 3, NULL, NULL, 50, 30, 20),
(8, 'asdasd', NULL, NULL, NULL, 'tidak', '2', '4600', 'PR', 'LT', 'PTB', 'LEL', '', NULL, NULL, NULL, NULL, NULL, '2014-11-12 17:00:00', '', '2014-09-14', NULL, '2014-11-05', '2014-09-12', '2014-09-12', '0000-00-00', '2014-09-12', '0000-00-00', NULL, NULL, NULL, NULL, NULL, '12322', '2014-09-12', 'Donny', '001', '', 2, NULL, '0000-00-00', NULL, 'wwwwww', 2, '001', '', 50, 30, 20),
(10, 'dddd', NULL, NULL, NULL, 'tidak', '1', ' 1111111111.11', 'PR', 'LT', 'PTB', 'LEL', '', NULL, NULL, NULL, NULL, NULL, '2014-11-12 17:00:00', '', NULL, NULL, '2014-09-23', '2014-09-24', '2014-09-25', NULL, '2014-09-27', '0000-00-00', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '001', '', 2, NULL, '2014-09-30', NULL, NULL, 0, '001', '', 50, 30, 20),
(11, 'Test1', NULL, NULL, NULL, 'tidak', '3', '20700000', 'PR', 'PL', 'PTB', 'LEL', 'OD', NULL, NULL, NULL, NULL, NULL, '2014-11-13 17:00:00', '', '2014-11-07', NULL, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '001', '', NULL, NULL, '0000-00-00', NULL, '', 0, '001', '', 50, 30, 20),
(12, 'Testing22', NULL, NULL, NULL, 'tidak', '1', ' 0.00', 'PR', 'PL', 'PTB', 'LEL', '', NULL, NULL, NULL, NULL, NULL, '2014-11-13 17:00:00', '', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '001', '', NULL, NULL, '0000-00-00', NULL, NULL, 0, NULL, NULL, 50, 30, 20),
(13, 'Test a', NULL, NULL, NULL, 'tidak', '1', '500000', 'PR', 'LT', 'PTB', 'LEL', 'OD', NULL, NULL, NULL, NULL, NULL, '2014-11-07 17:00:00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '001', 'admin@acquis.com', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 50, 30, 20),
(14, 'coba', NULL, NULL, NULL, 'tidak', '', ' 0.00', 'PS', 'PL', 'PTB', 'LEL', 'OD', NULL, NULL, NULL, NULL, NULL, '2014-11-12 17:00:00', '', '0000-00-00', NULL, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '001', '', 5, NULL, '0000-00-00', NULL, '', 0, NULL, NULL, 50, 30, 20),
(15, 'coba', NULL, NULL, NULL, 'tidak', '', '400000', 'PS', 'PL', 'PTB', 'LEL', 'OD', NULL, NULL, NULL, NULL, NULL, '2014-11-04 17:00:00', 'asd', '2014-11-17', NULL, '2014-11-18', '2014-11-19', '2014-11-20', '0000-00-00', '2014-11-21', '2014-11-22', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '001', '', 5, NULL, '0000-00-00', NULL, '', 0, NULL, NULL, 50, 30, 20),
(17, 'Laptop', NULL, NULL, NULL, 'tidak', '2', ' 0.00', 'PR', 'LT', 'PTB', 'LEL', 'OD', NULL, NULL, NULL, NULL, NULL, '2014-11-06 06:19:37', '', '0000-00-00', NULL, '2014-11-06', '2014-11-13', '2014-11-14', '2014-11-17', '2014-11-22', '0000-00-00', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '001', '', 2, NULL, '0000-00-00', NULL, '', 0, NULL, NULL, 50, 30, 20),
(18, 'Alat Pengadaan Kantor', NULL, NULL, NULL, 'tidak', '1', ' 0.00', 'PR', 'LT', 'PTB', 'LEL', 'OD', NULL, NULL, NULL, NULL, NULL, '2014-11-07 08:03:43', '', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '002', '', NULL, NULL, '0000-00-00', NULL, NULL, 0, NULL, NULL, 50, 30, 20),
(19, 'Pengadaan Kantor Alat Elektronik', NULL, NULL, NULL, 'tidak', '1', ' 0.00', 'PR', 'PL', 'PTB', 'LEL', 'OD', NULL, NULL, NULL, NULL, NULL, '2014-11-07 08:53:39', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '003', 'acquis@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 50, 30, 20),
(20, 'Pengadaan Alat Elektronik', NULL, NULL, NULL, 'tidak', '1', ' 0.00', 'PR', 'PL', 'PTB', 'LEL', 'OD', NULL, NULL, NULL, NULL, NULL, '2014-11-07 13:24:49', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '003', 'acquis@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 50, 30, 20),
(21, 'a', NULL, 'Jakarta', '2 jam', 'disetujui', '3', '24000000', 'PS', 'PL', 'PTB', 'LEL', 'OD', NULL, NULL, NULL, NULL, NULL, '2014-11-07 13:33:54', 'b', '2014-11-16', '2014-11-18', '2014-11-18', '2014-11-18', '2014-11-18', '0000-00-00', '0000-00-00', '2014-11-19', '2014-11-20', NULL, NULL, NULL, NULL, '', NULL, NULL, '002', '', 5, NULL, NULL, NULL, '<b>Selamat Perusahaan Anda Masuk Tahap Penjelasan</b><div><ul><li><b>PT GARUDA PERKASA</b></li><li><b>PT SUNDAY</b></li></ul></div>', 0, NULL, NULL, 20, 20, 60),
(22, 'b', NULL, NULL, NULL, 'tidak', '1', '5000000', 'PR', 'PL', 'PTB', 'LEL', 'OD', NULL, NULL, NULL, NULL, NULL, '2014-11-09 15:18:20', 'b', '2014-11-09', NULL, '2014-11-10', '2014-11-11', '2014-11-12', '2014-11-13', '2014-11-14', '2014-11-15', NULL, NULL, NULL, NULL, NULL, '', '0000-00-00', '', '001', '', 5, NULL, NULL, '0000-00-00', '', 0, NULL, NULL, 50, 30, 20),
(23, 'Pengadaan Alat Pembersih Ruangan', NULL, NULL, NULL, 'tidak', '1', ' 0.00', 'PR', 'PL', 'PTB', 'LEL', 'OD', NULL, NULL, NULL, NULL, NULL, '2014-11-11 05:06:28', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '001', 'acquis@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 50, 30, 20),
(24, 'Pengadaan alat berat', NULL, NULL, NULL, 'tidak', '3', '750000000', 'PR', 'PL', 'PTB', 'LEL', 'OD', NULL, NULL, '2d75d5e745659e768544361548d2ee5d_teknologi KM.docx', NULL, NULL, '2014-03-01 09:08:20', 'ND/0123', '2014-11-11', NULL, '2014-11-11', '2014-11-17', '2014-11-20', '2014-11-21', '2014-11-21', '2014-11-22', NULL, NULL, NULL, NULL, 'dd6121afd7a64be2843e4af6308c95fd_Daftar Riwayat Hidup - Donna Donny Handoyo.doc', '', NULL, NULL, '001', '', 5, NULL, NULL, NULL, '<b>Kepada Yang Terhormat :</b><div>Pt Sunday</div><div>Pt Surya Saputra</div>', 0, NULL, NULL, 40, 30, 60),
(25, 'pekerjaan konstruksi bangunan x', NULL, 'Bekasi', NULL, 'tidak', '9', '5400000', 'PR', 'PL', 'PTB', 'LEL', 'OD', NULL, NULL, NULL, NULL, NULL, '2014-11-14 08:03:59', 'ND-8734832', '2014-11-17', '2014-11-17', '2014-11-17', '2014-11-17', '2014-11-17', '2014-11-17', '0000-00-00', '2014-11-17', '2014-11-19', NULL, NULL, NULL, NULL, '', '0000-00-00', 'KEPALA UNIT PENGADAAN KANTOR CABANG', '002', '', 5, NULL, NULL, '0000-00-00', '', 0, NULL, NULL, 50, 30, 50),
(26, 'Pengadaan Jasa Konsultan Manajemen', NULL, 'Bandung', NULL, 'tidak', '3', '300000', 'PR', 'LT', 'PTB', 'LEL', 'MD', NULL, NULL, NULL, NULL, NULL, '2014-11-14 08:22:29', 'ND-18888726', '2014-11-18', '2014-11-18', '2014-11-18', '2014-11-19', '2014-11-19', '2014-11-19', '0000-00-00', '2014-11-19', '2014-11-19', NULL, NULL, NULL, NULL, '', '0000-00-00', 'KEPALA UNIT PENGADAAN KANTOR CABANG', '002', '', 30, NULL, NULL, '0000-00-00', '', 0, NULL, NULL, 40, 30, 60),
(27, 'Pengadaan Alat Teknis', NULL, 'Jakarta', '4 bulan kalender', 'disetujui', '1', '9000000', 'PS', 'LT', 'PTB', 'LEL', 'MD', NULL, NULL, NULL, NULL, NULL, '2014-11-18 09:18:58', 'ND/92/12', '2014-11-18', '2014-11-18', '2014-11-18', '2014-11-18', '2014-11-18', '0000-00-00', '0000-00-00', '2014-11-18', '2014-11-18', NULL, NULL, NULL, NULL, '', NULL, NULL, '003', '', 2, 2, NULL, NULL, NULL, 0, NULL, NULL, 50, 30, 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_pembayaran_termin`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `main_pembayaran_termin`
--

INSERT INTO `main_pembayaran_termin` (`id_pembayaran`, `kode_akun`, `nilai_pembayaran`, `tanggal_pembayaran`, `kuitansi`, `faktur`, `id_pekerjaan`, `berita_acara`, `termin`) VALUES
(1, '530', '300.00', '2014-09-20', 'e5a437f5f2cd923f6575909949572f00_Soal Teknis.docx', '99146ac817edbcaef6c2a4ffaabbfb62_Soal Teknis.docx', 1, NULL, 1),
(2, '530', '200.00', '0000-00-00', NULL, NULL, 4, NULL, 1),
(3, '', '0.00', '0000-00-00', NULL, NULL, 8, NULL, 1),
(4, '', '0.00', '0000-00-00', NULL, NULL, 8, NULL, 2),
(5, '', '0.00', NULL, NULL, NULL, 5, NULL, 1),
(6, '', '0.00', NULL, NULL, NULL, 5, NULL, 2),
(7, '', '0.00', NULL, NULL, NULL, 5, NULL, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_persediaan`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='main_persediaan' AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `main_persediaan`
--

INSERT INTO `main_persediaan` (`kode`, `klasifikasi`, `nama_barang`, `kondisi`, `kuantitas`, `satuan`, `divisi`, `spesifikasi`, `merk`, `nilai_satuan`, `kode_pengadaan`, `termin_ke`, `kode_akun_aset`, `kode_akun_hutang`) VALUES
(1, 2, '001', 1, 1, 2, '001', '-', '-', ' 100.00', 1, 1, '110-001', '530');

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_peserta_lelang`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=308 ;

--
-- Dumping data untuk tabel `main_peserta_lelang`
--

INSERT INTO `main_peserta_lelang` (`id_peserta_lelang`, `kode_perusahaan`, `proposal`, `pra_kualifikasi`, `skor_teknis`, `skor_beauty_contest`, `skor_total`, `pengajuan_harga`, `id_pekerjaan`, `harga_negosiasi`, `flag`, `alasan`) VALUES
(3, 1, NULL, NULL, 90, 90, 82.2, 10000000.00, 4, 0.00, '1', NULL),
(4, 2, NULL, 'e7cc1639d30d84bb1f29547dee8cad90_banyak.docx', 70, 70, 86, 6400000.00, 4, 0.00, '1', ''),
(31, 2, NULL, NULL, 0, 0, 86, 13000.00, 8, 0.00, '-1', NULL),
(33, 2, NULL, NULL, 0, 0, 86, 0.00, 10, 0.00, '1', ''),
(97, 5, NULL, NULL, 0, 0, 56, 0.00, 14, 0.00, '1', NULL),
(195, 2, NULL, NULL, 0, 0, 86, 0.00, 17, 0.00, '1', NULL),
(225, 2, NULL, NULL, 100, 100, 86, 0.00, 5, 0.00, '1', NULL),
(226, 5, NULL, NULL, 0, 0, 56, 0.00, 5, 0.00, '1', NULL),
(267, 2, NULL, 'a7c5c30c4c65601c48455398244beb38_1.docx', 80, 80, 86, 0.00, 22, 0.00, '1', ''),
(268, 5, NULL, NULL, 90, 75, 56, 0.00, 22, 0.00, '-1', NULL),
(269, 6, NULL, NULL, 0, 0, 0, 0.00, 22, 0.00, '-1', NULL),
(270, 21, NULL, NULL, 0, 0, 0, 0.00, 22, 0.00, '-1', NULL),
(286, 5, NULL, NULL, 0, 0, 56, 0.00, 15, 0.00, '-1', NULL),
(287, 6, NULL, NULL, 0, 0, 0, 0.00, 15, 0.00, '-1', NULL),
(288, 21, NULL, NULL, 0, 0, 0, 0.00, 15, 0.00, '-1', NULL),
(289, 29, NULL, NULL, 0, 0, 0, 0.00, 15, 0.00, '-1', NULL),
(299, 2, NULL, NULL, 0, 0, 86, 10000000.00, 24, 0.00, '1', ''),
(300, 5, NULL, NULL, 0, 0, 56, 5000000.00, 24, 0.00, '1', ''),
(301, 30, NULL, NULL, 80, 70, 0, 0.00, 26, 0.00, '1', ''),
(302, 30, NULL, NULL, 0, 0, 0, 0.00, 4, 0.00, '-1', NULL),
(303, 2, NULL, NULL, 0, 0, 86, 0.00, 25, 0.00, '-1', NULL),
(304, 5, NULL, NULL, 70, 70, 56, 0.00, 21, 0.00, '-1', NULL),
(305, 6, NULL, NULL, 0, 0, 0, 0.00, 21, 0.00, '-1', NULL),
(306, 2, NULL, NULL, 80, 80, 86, 450000.00, 27, 0.00, '-1', NULL),
(307, 31, NULL, NULL, 90, 90, 66, 4500000.00, 27, 0.00, '-1', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_vendor`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data untuk tabel `main_vendor`
--

INSERT INTO `main_vendor` (`kode_perusahaan`, `nama_perusahaan`, `npwp`, `alamat`, `provinsi`, `kota`, `direktur`, `telepon`, `fax`, `hp`, `email`, `website`, `bentuk_usaha`, `kategori_usaha`, `status`, `no_ktp`, `date`, `alasan`) VALUES
(1, 'PT.PRIMATAMA SUKMA UTAMA', '1.2.3.4.5', 'JL.JAKARTA', '4', '3', 'Udin Gambut', '', '', '', 'primatama@acquis.com', '', '1', 1, 'Unlisted', 0, '0000-00-00 00:00:00', 'dokumen tidak ada'),
(2, 'PT. BINER TEKNOLOGI', '1111', 'JL.PRIMA PERKASA', '13', '', 'AKASIAH', '(021) 989-0000', '111111111', '(082) 128-12828', 'biner@acquis.com', 'MALLOCI.COME', '', 1, 'Verified', 555, '0000-00-00 00:00:00', 'sss'),
(3, 'PT.PALJAYA', '12.12121', 'JL.PULO GADUNG BARAT', '13', '3', '', '(021) 408-0888', '', '(083) 888-11155', 'paljaya@acquis.com', '', '1', 1, 'Unverified', 123, '0000-00-00 00:00:00', NULL),
(4, 'PT.SUKRA', '12.12121', 'ALAMAT', '13', '3', 'DIREKTUR', '(021) 111-1111', 'FAX', '(089) 999-99999', 'sukra@acquis.com', 'WWW.SUKRA.COM', '1', 1, 'Blacklist', 123455, '2014-06-17 00:00:00', NULL),
(5, 'PT.SUNDAY', '123333444', 'JL.PULO GADUNG BARAT', '28', '391', 'SUTOPO', '(999) 999-9999', '12345', '(083) 881-14522', 'sunday@acquis.com', 'WWW.PRIMAJASA.COM', '1', 1, 'Verified', 1, '2014-06-18 15:26:40', NULL),
(6, 'PT. GARUDA PERKASA', '12312312312', 'aaaa', '13', '3', 'Donna Donny Handoko Driyono', '(222) 222-22222', '222', '(222) 222-22222', 'rulls.inside@gmail.com', 'www.malloci.com', '1', 2, 'Verified', 2147483647, '2014-09-11 14:13:50', NULL),
(7, 'PT. BAMBANG SEJAHTERA', '222222', 'Raden Saleh', '13', '3', 'Bambang', '(111) 111-11111', '1111111111', '(111) 111-11111', 'annihilate_arm999@yahoo.com', 'suram.com', '1', 2, 'Unverified', 123123, '2014-09-15 11:10:13', NULL),
(8, 'PT. MAJU MUNDUR', '535353', 'asd', '13', '3', 'bambang donny', '(676) 767-67676', '67676767', '(676) 767-67676', 'bambang11dp@gmail.om', 'bambangdonny.com', '1', 2, 'Unverified', 2222222, '2014-09-15 11:13:34', NULL),
(9, 'PT. MENGEJUTKAN RAKYAT', '23232132131244', 'Jakarta', '13', '3', 'Tiawan', '(021) 390-38497', '0213938489', '(089) 283-72013', 'shelvimarliya@gmail.com', '', '1', 3, 'Unverified', 2147483647, '2014-09-22 15:42:12', NULL),
(21, 'PT ANGKUH', '276371287', 'JKSAHDJKHSAD', '13', '', 'SDASDSAD', '', '', '', 'dendryj.ava@gmail.com', '', '', 0, 'Verified', 716237628, '2014-10-22 08:41:59', 'assdasa'),
(27, 'PT SURYA SEJAHTERA', '89374981278979', 'JL. Pegangsaan Timur Raya', '7', '114', 'Surya Widodo Putro', '(021) 875-8678', '021 2397832089', '(085) 764-37834', 'dendryja.va@gmail.com', 'www.suryasejahteraa.com', '1', 0, 'Unverified', 2147483647, '2014-11-11 11:00:59', NULL),
(28, 'PT SURYA TERBIT', '1238908548078', 'JL. Mattaman Raya', '13', '194', 'Aliando', '021-984972389', '021-90849728', '0857362937422', 'de.ndryjava@gmail.com', 'www.suryaterbit.com', '1', 0, 'Unverified', 2147483647, '2014-11-11 11:44:28', NULL),
(29, 'PT SURYA SAPUTRA', '02.03', 'JL. Angkasa', '13', '192', 'Surya Saputra', '02185472817', '02193373874', '0898766745365', 'de.nd.ryjava@gmail.com', 'www.suryasaputra.com', '1', 0, 'Verified', 2147483647, '2014-11-11 15:37:43', NULL),
(30, 'PT HANISAH SEJATI', '122-009-12-003', 'Jalan Angkasa', '13', '191', 'Kurnia', '73451705', '02173451705', '085695523264', 'bam.bang.11dp@gmail.com', 'hanisahsejati.com', '1', 0, 'Unverified', 2147483647, '2014-11-14 14:41:18', NULL),
(31, 'PT MAJU SENTOSA', '8917389289', 'Jalan Angkasa', '13', '194', 'Bambang', '02175837387', '', '', 'de.nd.ry.java@gmail.com', 'majusejahtera.com', '1', 0, 'Verified', 2147483647, '2014-11-18 16:02:24', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_vendor_dokumen`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `main_vendor_dokumen`
--

INSERT INTO `main_vendor_dokumen` (`id_dokumen`, `jenis_dokumen`, `nomor_dokumen`, `berlaku_sampai`, `instansi_pemberi`, `berkas`, `kode_perusahaan`) VALUES
(3, '1', '123', '2014-07-02', 'STAF HRD', '787ced0874e9a746d28cf8c37c6f5945_ServiceOperationContents.pdf', 1),
(6, '11', '12345', '2014-11-15', 'Sekertariat Pajak', '72e98edc1370a0aac93d2f92e176fcd8_Fungsi Liver atau Hati.docx', 2),
(7, '32', 'A50/Jakarta/12/2014', '2014-11-19', 'Kelurahan Balimester', 'c18e86930a53ca01573f0b96ad4a5176_KA - Idham.doc', 29),
(8, '11', '09.92', '2014-11-29', 'Kantor Pajak', 'd0f6a8fb5ba30f5b8e3a51c5443734e0_slide IP.pdf', 29),
(9, '29', 'D/13540', '2014-11-30', 'Kantor Notaris', '04e3035e3fd8d3a2bd263540ec5a6684_PedomanPembimbinganOJTPegawaibaru2013.pdf', 30),
(10, '11', '0989977', '2014-12-25', 'Kantor Pajak', '600b39f0d4a0f0a9c75f97969107f301_slide IP.pdf', 30),
(11, '11', '498275980', '2014-11-10', 'Direktorat Pajak', '98f1d0f323481ff3657c0a1c45d8219d_Soal Teknis.docx', 31);

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_vendor_dokumen_tambahan`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `main_vendor_dokumen_tambahan`
--

INSERT INTO `main_vendor_dokumen_tambahan` (`id_dokumen_tambahan`, `jenis_dokumen_tambahan`, `nomor_dokumen_tambahan`, `berlaku_sampai`, `instansi_pemberi`, `berkas`, `kode_perusahaan`) VALUES
(8, 31, '09821', '2014-11-24 00:00:00', 'Badan Negara', '4f1b0931fb1c35a7801685306120f47e_teknologi KM.docx', 29),
(3, 30, '123', '2014-11-15 00:00:00', 'BADAN SERTIFIKASI', 'c62ace9a233019bd356159055de982bc_Fungsi Liver atau Hati.docx', 2),
(9, 30, '298009', '2014-11-09 00:00:00', 'Bapak Presiden', '16ba478728659fe447733b08f40dc856_img-522191353.pdf', 29),
(10, 31, 'NK/78655', '2015-01-15 00:00:00', 'Kantor Keuangan', '6b2f36a305f41dbbf85b084716925726_TATA CARA TINDAK LANJUT PEMERIKSAAN BUKTI PERMULAAN BERUPA USUL PENYIDIKAN DI KANTOR PUSATMUHAMMAD IDHAMSEKSI PEMERIKSAAN BUKTI PERMULAAN.pdf', 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_vendor_ktp`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data untuk tabel `main_vendor_ktp`
--

INSERT INTO `main_vendor_ktp` (`id_dokumen`, `nik`, `berlaku_sampai`, `nama`, `jabatan`, `kode_perusahaan`, `berkas_ktp`) VALUES
(3, '123123123', '2014-09-16', 'Bambang', 'Direktur Gak Jelas', '2', NULL),
(12, '112', '2014-10-08', 'adsas', 'adasd', '11', '419b3ee8f9b4040955d9c1688c35edfa_PT. KAHA HOLIDAY INTERNASIONAL DIV. Business Deve - FWT - 92014.docx'),
(13, '123', '2014-11-15', 'Surya Darma', 'Direktur Keuangan', '29', '2c5b9e5f09989fd09ec024c08d5c7be9_img-522191353.pdf'),
(15, '4321', '2014-11-13', 'Andri', 'Direktur Administrasi', '29', '23541bf7bc5ad4572a72d0b533699589_img-522191235.pdf'),
(16, '089064661988000', '2014-12-16', 'Kamil', 'Direktur Oprasional', '30', 'f5fa82520eb0897df47de85b3fce8edb_img-522191353.pdf'),
(17, '0890646619849494', '2015-01-30', 'Kamil B', 'Komisaris', '30', 'c739f5b45f3afb84773565f417ed39f8_Tata cara penyiapan data Audoon.pdf'),
(18, '987389274897', '2014-11-10', 'bambang', 'Direktur Administrasi', '31', 'dbf58a3545f944aee502e2d608b8ffda_Soal Teknis.docx'),
(21, '123456789', '2014-11-18', 'Udin', 'Direktur Keuangan', '2', '69d013f722896490bab1b52ce1d6e669_Soal Teknis.docx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_voucher_pembayaran`
--

CREATE TABLE IF NOT EXISTS `main_voucher_pembayaran` (
  `id_voucher` int(11) NOT NULL AUTO_INCREMENT,
  `nilai_pembayaran` varchar(200) DEFAULT NULL,
  `kode_akun` varchar(50) DEFAULT NULL,
  `tipe_data` enum('debet','kredit') DEFAULT NULL,
  `id_pembayaran` int(11) DEFAULT NULL,
  `flag_cetak` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_voucher`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `main_voucher_pembayaran`
--

INSERT INTO `main_voucher_pembayaran` (`id_voucher`, `nilai_pembayaran`, `kode_akun`, `tipe_data`, `id_pembayaran`, `flag_cetak`) VALUES
(1, '200', '110-100', 'debet', 2, 1),
(2, '200', '530', 'kredit', 2, 1),
(3, '200', '530', 'debet', 2, 1),
(4, '200', '001', 'kredit', 2, 1),
(5, '100', '110-001', 'debet', 1, 1),
(6, '200', '110-100', 'debet', 1, 1),
(7, '300', '530', 'kredit', 1, 1),
(9, '300', '001', 'kredit', 1, 1),
(10, '300', '530', 'debet', 1, 1),
(11, '300', '530', 'debet', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasi`
--

CREATE TABLE IF NOT EXISTS `notifikasi` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `pesan` text NOT NULL,
  `username_penerima` varchar(255) NOT NULL,
  `status_baca` tinyint(1) NOT NULL,
  `url` text,
  `tipe` enum('by_role','by_username','','') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Dumping data untuk tabel `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `pesan`, `username_penerima`, `status_baca`, `url`, `tipe`) VALUES
(1, 'Pelelangan a telah memasuki tahap EVALUASI', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(2, 'Pelelangan a telah memasuki tahap EVALUASI', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(3, 'PT. BINER TEKNOLOGI, kami ingin menginformasikan bahwa status perusahaan anda menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (17 November 2014)', 'biner@acquis.com', 0, '', 'by_username'),
(4, 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (17 November 2014)', 'acquis@gmail.com', 0, '', 'by_role'),
(5, 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (17 November 2014)', 'admin@acquis.com', 0, '', 'by_role'),
(6, 'Pelelangan a telah memasuki tahap HASIL LELANG', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(7, 'Pelelangan a telah memasuki tahap HASIL LELANG', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(8, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENERIMAAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(9, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(10, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(11, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(12, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(13, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(14, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(15, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(16, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(17, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(18, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(19, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(20, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(21, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(22, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(23, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(24, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(25, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(26, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(27, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(28, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(29, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(30, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(31, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(32, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(33, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(34, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(35, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(36, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(37, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(38, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(39, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(40, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(41, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(42, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(43, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(44, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(45, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(46, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap PENGUMUMAN', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang2/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(47, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(48, 'Pelelangan a telah memasuki tahap PENGUMUMAN', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(49, 'Pelelangan a telah memasuki tahap EVALUASI', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(50, 'Pelelangan a telah memasuki tahap EVALUASI', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(51, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap HASIL LELANG', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(52, 'Pelelangan a telah memasuki tahap NEGOSIASI', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(53, 'Pelelangan a telah memasuki tahap NEGOSIASI', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(54, 'Pelelangan a telah memasuki tahap NEGOSIASI', 'biner@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(55, 'Pelelangan a telah memasuki tahap NEGOSIASI', 'sunday@acquis.com', 0, 'c_lelang_admin/detaillelang/dglT6CQ3V5ThVnV8ZjSenp3v9I2ZIzHgbKskUJnNV44=', 'by_role'),
(56, 'Pelelangan Pengadaan Jasa Konsultan Manajemen telah memasuki tahap HASIL LELANG', 'bam.bang.11dp@gmail.com', 0, 'c_lelang_admin/detaillelang/4JZfBoBRXHoCXMuJn8@naZD6iFMA73hbbH@UCfDsmvc=', 'by_role'),
(57, 'de.nd.ry.java@gmail.com telah mendaftar.', 'de.nd.ry.java@gmail.com', 0, 'http://localhost:81/gapura_final/index.php/cvendor/reff/PT_MAJU_SENTOSA/47c9ea13b930d719e8b8437ce6205f8f', 'by_username'),
(58, 'de.nd.ry.java@gmail.com telah mendaftar.', 'acquis@gmail.com', 0, 'http://localhost:81/gapura_final/index.php/cvendor/reff/PT_MAJU_SENTOSA/47c9ea13b930d719e8b8437ce6205f8f', 'by_role'),
(59, 'de.nd.ry.java@gmail.com telah mendaftar.', 'admin@acquis.com', 0, 'http://localhost:81/gapura_final/index.php/cvendor/reff/PT_MAJU_SENTOSA/47c9ea13b930d719e8b8437ce6205f8f', 'by_role'),
(60, 'PT. BINER TEKNOLOGI, kami ingin menginformasikan bahwa status perusahaan anda menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'biner@acquis.com', 0, '', 'by_username'),
(61, 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'acquis@gmail.com', 0, '', 'by_role'),
(62, 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'admin@acquis.com', 0, '', 'by_role'),
(63, 'PT. BINER TEKNOLOGI, kami ingin menginformasikan bahwa status perusahaan anda menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'biner@acquis.com', 0, '', 'by_username'),
(64, 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'acquis@gmail.com', 0, '', 'by_role'),
(65, 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'admin@acquis.com', 0, '', 'by_role'),
(66, 'PT. BINER TEKNOLOGI, kami ingin menginformasikan bahwa status perusahaan anda menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'biner@acquis.com', 0, '', 'by_username'),
(67, 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'acquis@gmail.com', 0, '', 'by_role'),
(68, 'Kami ingin menginformasikan bahwa status perusahaan PT. BINER TEKNOLOGI menjadi `Unverified` karena terdapat berkas/dokumen administrasi NPWP,KTP yang telah kadaluarsa pada hari ini (18 November 2014)', 'admin@acquis.com', 0, '', 'by_role'),
(69, 'biner@acquis.com telah mendaftar', 'acquis@gmail.com', 0, 'c_lelang_vendor/detaillelang/uCUseAQcZd2Yk49ggbvtSM3HFzgxkkNPiC5kF7wHJ@Y=', 'by_role'),
(70, 'biner@acquis.com telah mendaftar', 'admin@acquis.com', 0, 'c_lelang_vendor/detaillelang/uCUseAQcZd2Yk49ggbvtSM3HFzgxkkNPiC5kF7wHJ@Y=', 'by_role'),
(71, 'de.nd.ry.java@gmail.com telah mendaftar', 'acquis@gmail.com', 0, 'c_lelang_vendor/detaillelang/uCUseAQcZd2Yk49ggbvtSM3HFzgxkkNPiC5kF7wHJ@Y=', 'by_role'),
(72, 'de.nd.ry.java@gmail.com telah mendaftar', 'admin@acquis.com', 0, 'c_lelang_vendor/detaillelang/uCUseAQcZd2Yk49ggbvtSM3HFzgxkkNPiC5kF7wHJ@Y=', 'by_role');

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_dokumen_tambahan`
--

CREATE TABLE IF NOT EXISTS `r_dokumen_tambahan` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `r_dokumen_tambahan`
--

INSERT INTO `r_dokumen_tambahan` (`kode_ref`, `deskripsi`) VALUES
(1, 'SIUP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_inv_klasifikasi_barang`
--

CREATE TABLE IF NOT EXISTS `r_inv_klasifikasi_barang` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `r_inv_klasifikasi_barang`
--

INSERT INTO `r_inv_klasifikasi_barang` (`kode_ref`, `deskripsi`) VALUES
(1, 'ELEKTRONIK'),
(2, 'ALAT KANTOR'),
(3, 'OFFICE SUITE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_inv_kondisi_barang`
--

CREATE TABLE IF NOT EXISTS `r_inv_kondisi_barang` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `r_inv_kondisi_barang`
--

INSERT INTO `r_inv_kondisi_barang` (`kode_ref`, `deskripsi`) VALUES
(1, 'BAIK'),
(2, 'RUSAK'),
(3, 'RUSAK BERAT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_inv_satuan_barang`
--

CREATE TABLE IF NOT EXISTS `r_inv_satuan_barang` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `r_inv_satuan_barang`
--

INSERT INTO `r_inv_satuan_barang` (`kode_ref`, `deskripsi`) VALUES
(1, 'UNIT'),
(2, 'LEMBAR'),
(3, 'SET');

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_jabatan`
--

CREATE TABLE IF NOT EXISTS `r_jabatan` (
  `id_jabatan` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `limit_anggaran` varchar(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `r_jabatan`
--

INSERT INTO `r_jabatan` (`id_jabatan`, `nama`, `jabatan`, `limit_anggaran`) VALUES
('001', 'Bambang', 'DIREKTUR KEDUA', ' 5555555555.55'),
('002', 'Pejabat2', 'KEPALA UNIT PENGADAAN KANTOR CABANG', ' 150000000.00'),
('003', 'Pejabat3', 'KEPALA UNIT PELAKSANA KANTOR PERWAKILAN', '0'),
('004', 'Pejabat4', 'KEPALA KANTOR CABANG PEMBINA', '0'),
('005', 'Pejabat5', 'PANITIA PENGADAAN', '0'),
('006', 'Pejabat6', 'KEPALA UNIT PELAKSANA PENGADAAN ', '0'),
('090', 'BB', 'ASD', ' 1111111.11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_kota`
--

CREATE TABLE IF NOT EXISTS `r_kota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(50) NOT NULL,
  `fk_provinsi` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=495 ;

--
-- Dumping data untuk tabel `r_kota`
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
-- Struktur dari tabel `r_lel_akun`
--

CREATE TABLE IF NOT EXISTS `r_lel_akun` (
  `kode_akun` varchar(50) NOT NULL,
  `tipe_akun` enum('aset','hutang','biaya','') NOT NULL,
  `nama_akun` varchar(100) NOT NULL,
  PRIMARY KEY (`kode_akun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `r_lel_akun`
--

INSERT INTO `r_lel_akun` (`kode_akun`, `tipe_akun`, `nama_akun`) VALUES
('001', 'aset', 'KAS'),
('110-001', 'aset', 'ALAT TULIS KANTOR'),
('110-100', 'aset', 'INVENTORY 1'),
('110-101', 'aset', 'INVENTORY 2'),
('530', 'hutang', 'HUTANG PENGADAAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_lel_jenis_pekerjaan`
--

CREATE TABLE IF NOT EXISTS `r_lel_jenis_pekerjaan` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_lel_tahapan`
--

CREATE TABLE IF NOT EXISTS `r_lel_tahapan` (
  `kode_tahapan` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_tahapan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1001 ;

--
-- Dumping data untuk tabel `r_lel_tahapan`
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
-- Struktur dari tabel `r_not_jenis_notifikasi`
--

CREATE TABLE IF NOT EXISTS `r_not_jenis_notifikasi` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_provinsi`
--

CREATE TABLE IF NOT EXISTS `r_provinsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_provinsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data untuk tabel `r_provinsi`
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
(12, 'JAWA BARAT'),
(13, 'DKI JAKARTA'),
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
-- Struktur dari tabel `r_psd_jenis_barang_persediaan`
--

CREATE TABLE IF NOT EXISTS `r_psd_jenis_barang_persediaan` (
  `id_unit` varchar(100) NOT NULL,
  `nama_jenis_barang` varchar(100) NOT NULL,
  PRIMARY KEY (`id_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `r_psd_jenis_barang_persediaan`
--

INSERT INTO `r_psd_jenis_barang_persediaan` (`id_unit`, `nama_jenis_barang`) VALUES
('001', 'KERTAS'),
('002', 'PULPEN'),
('003', 'TINTA PRINTER');

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_unit`
--

CREATE TABLE IF NOT EXISTS `r_unit` (
  `id_unit` varchar(100) NOT NULL,
  `nama_unit` varchar(100) NOT NULL,
  PRIMARY KEY (`id_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `r_unit`
--

INSERT INTO `r_unit` (`id_unit`, `nama_unit`) VALUES
('001', 'KEUANGAN'),
('002', 'HRD'),
('003', 'IT SUPPORT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_ven_bentuk_usaha`
--

CREATE TABLE IF NOT EXISTS `r_ven_bentuk_usaha` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `r_ven_bentuk_usaha`
--

INSERT INTO `r_ven_bentuk_usaha` (`kode_ref`, `deskripsi`) VALUES
(1, 'PT'),
(2, 'CV'),
(3, 'KOPERASI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_ven_jenis_dokumen`
--

CREATE TABLE IF NOT EXISTS `r_ven_jenis_dokumen` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) NOT NULL,
  `flag_mandatory` enum('mandatory','non_mandatory') DEFAULT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data untuk tabel `r_ven_jenis_dokumen`
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
-- Struktur dari tabel `r_ven_kategori_usaha`
--

CREATE TABLE IF NOT EXISTS `r_ven_kategori_usaha` (
  `kode_ref` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) NOT NULL,
  PRIMARY KEY (`kode_ref`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `r_ven_kategori_usaha`
--

INSERT INTO `r_ven_kategori_usaha` (`kode_ref`, `deskripsi`) VALUES
(1, 'IT'),
(2, 'KONSULTAN KEUANGAN'),
(3, 'KONSULTAN MANAJEMEN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_ven_status_vendor`
--

CREATE TABLE IF NOT EXISTS `r_ven_status_vendor` (
  `kode` int(11) NOT NULL AUTO_INCREMENT,
  `pesan` varchar(100) NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_menu`
--

CREATE TABLE IF NOT EXISTS `tr_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `menu_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=96 ;

--
-- Dumping data untuk tabel `tr_menu`
--

INSERT INTO `tr_menu` (`id`, `menu_url`, `menu_name`) VALUES
(1, 'chart/area', 'Chart - Area'),
(3, 'chart/client', 'Chart - Client'),
(4, 'chart/daily', 'Chart - Daily'),
(6, 'chart/hourly', 'Chart - Hourly'),
(7, 'chart/index', 'Chart - Index'),
(8, 'chart/line', 'Chart - Line'),
(9, 'chart/linearea', 'Chart - Line Area'),
(10, 'chart/linesbu', 'Chart - Line SBU'),
(11, 'chart/linesbu_hourly', 'Chart - Line SBU Hourly'),
(12, 'chart/monthly', 'Chart - Monthly'),
(13, 'chart/popup', 'Chart - Popup'),
(14, 'chart/pvt', 'Chart - PVT'),
(15, 'chart/sbu', 'Chart - SBU'),
(16, 'chart/yearly', 'Chart - Yearly'),
(17, 'chart_pm/area_pm', 'Chart PM - Area PM'),
(18, 'chart_pm/client', 'Chart PM - Client'),
(19, 'chart_pm/daily', 'Chart PM - Daily'),
(21, 'chart_pm/hourly', 'Chart PM - Hourly'),
(22, 'chart_pm/index', 'Chart PM - Index'),
(23, 'chart_pm/line', 'Chart PM - Line'),
(24, 'chart_pm/linearea', 'Chart PM - Line Area'),
(25, 'chart_pm/linesbu', 'Chart PM - Line SBU'),
(26, 'chart_pm/linesbu_hourly', 'Chart PM - Line SBU Hourly'),
(27, 'chart_pm/monthly', 'Chart PM - Monthly'),
(28, 'chart_pm/popup', 'Chart PM - Popup'),
(29, 'chart_pm/pvt', 'Chart PM - PVT'),
(30, 'chart_pm/sbu', 'Chart PM - SBU'),
(31, 'chart_pm/yearly', 'Chart PM - Yearly'),
(32, 'client/autoguid', 'Client - Autocomplete GUID'),
(33, 'client/daily', 'Client - Daily'),
(34, 'client/edit', 'Client - Edit'),
(35, 'client/hourly', 'Client - Hourly'),
(36, 'client/monthly', 'Client - Monthly'),
(37, 'client/simpan', 'Client - Simpan'),
(38, 'client/yearly', 'Client - Yearly'),
(39, 'command_center/index', 'Command Center - Index'),
(40, 'command_center/pelanggan', 'Command Center - Pelanggan'),
(41, 'command_center/tampil', 'Command Center - Tampil'),
(42, 'ctelline/avedaily', 'Ctelline - AVE Daily'),
(43, 'ctelline/avehourly', 'Ctelline - AVE Hourly'),
(44, 'ctelline/avemonthly', 'Ctelline - AVE Monthly'),
(45, 'ctelline/aveyearly', 'Ctelline - AVE Yearly'),
(46, 'ctelline/daily', 'Ctelline - Daily'),
(47, 'ctelline/Fdaily', 'Ctelline - FDaily'),
(48, 'ctelline/Fhourly', 'Ctelline - FHourly'),
(49, 'ctelline/Fmonthly', 'Ctelline - FMonthly'),
(50, 'ctelline/Fyearly', 'Ctelline - FYearly'),
(51, 'ctelline/hourly', 'Ctelline - Hourly'),
(52, 'ctelline/index', 'Ctelline - Index'),
(53, 'ctelline/monthly', 'Ctelline - Monthly'),
(54, 'ctelline/Tdaily', 'Ctelline - TDaily'),
(55, 'ctelline/Thourly', 'Ctelline - THourly'),
(56, 'ctelline/Tmonthly', 'Ctelline - TMonthly'),
(57, 'ctelline/Tyearly', 'Ctelline - TYearly'),
(58, 'ctelline/yearly', 'Ctelline - Yearly'),
(59, 'daily/dclient', 'Daily - Daftar Client'),
(60, 'dftr_client/cari', 'Daftar Client - Cari'),
(61, 'dftr_client/client', 'Daftar Client - Client'),
(62, 'dftr_client/filter', 'Daftar Client - Filter'),
(63, 'dftr_client/index', 'Daftar Client - Index'),
(64, 'hourly/dclient', 'Hourly - Daftar Client'),
(65, 'manajemen/not_send_daily', 'Manajemen - Not Send Daily'),
(66, 'manajemen/valid_daily', 'Manajemen - Valid Daily'),
(67, 'manajemen/valid_hourly', 'Manajemen - Valid Hourly'),
(68, 'monthly/dclient', 'Monthly - Daftar Client'),
(69, 'sending/index', 'Sending - Index'),
(70, 'status/index', 'Status - Index'),
(71, 'status/pelanggan', 'Status - Pelanggan'),
(72, 'status/tampil', 'Status - Tampil'),
(73, 'user/add', 'User - Add User'),
(74, 'user/addrole', 'User - Add Role'),
(75, 'user/delete', 'User - Delete User'),
(76, 'user/dodeleterole', 'User - Delete Role'),
(77, 'user/roleaccess', 'User - Lihat/Edit Role Access'),
(78, 'user/rolename', 'User - Edit Role Name'),
(79, 'user/index', 'User - View User'),
(81, 'user/role', 'User - View Role'),
(82, 'ws/index', 'Web Service'),
(83, 'yearly/dclient', 'Yearly - Daftar Client'),
(84, 'dasboard_pelanggan', 'Dashboard Pelanggan'),
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
(95, 'cvendor/addvendor', 'Vendor - Pendaftaran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_role`
--

CREATE TABLE IF NOT EXISTS `tr_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detil` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `tr_role`
--

INSERT INTO `tr_role` (`id`, `detil`) VALUES
(1, 'Administrator'),
(8, 'Vendor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_access`
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
-- Dumping data untuk tabel `t_access`
--

INSERT INTO `t_access` (`access_datetime`, `username`, `modul`, `pc_source`, `data`) VALUES
('2014-05-26 11:40:35', 'admin', 'muser.auth', '182.253.35.161', 'admin'),
('2014-05-26 11:47:13', 'admin', 'muser.logout', '182.253.35.161', 'admin'),
('2014-05-26 11:54:26', 'admin', 'muser.auth', '182.253.35.161', 'admin'),
('2014-05-26 13:30:54', 'admin', 'muser.logout', '182.253.35.161', 'admin'),
('2014-05-26 14:43:29', 'admin', 'muser.auth', '182.253.35.161', 'admin'),
('2014-05-26 14:47:43', 'admin', 'muser.auth', '103.247.226.98', 'admin'),
('2014-05-28 11:36:56', 'admin', 'muser.auth', '182.253.36.121', 'admin'),
('2014-05-30 09:51:26', 'admin', 'muser.auth', '182.253.35.153', 'admin'),
('2014-05-30 10:05:28', 'admin', 'muser.auth', '182.253.35.153', 'admin'),
('2014-05-30 16:41:06', 'admin', 'muser.auth', '182.253.35.153', 'admin'),
('2014-05-30 17:25:50', 'admin', 'muser.auth', '182.253.35.153', 'admin'),
('2014-06-02 11:33:57', 'admin', 'muser.auth', '182.253.35.171', 'admin'),
('2014-06-02 11:42:19', 'admin', 'muser.logout', '182.253.35.171', 'admin'),
('2014-06-02 11:44:09', 'admin', 'muser.auth', '182.253.35.171', 'admin'),
('2014-06-02 11:44:19', 'admin', 'muser.logout', '182.253.35.171', 'admin'),
('2014-06-02 11:45:24', 'admin', 'muser.auth', '182.253.35.171', 'admin'),
('2014-06-04 14:34:32', 'admin', 'muser.auth', '182.253.36.31', 'admin'),
('2014-06-04 14:39:51', 'admin', 'muser.auth', '182.253.36.31', 'admin'),
('2014-06-04 14:43:38', 'admin', 'muser.auth', '182.253.36.31', 'admin'),
('2014-06-04 14:49:20', 'admin', 'muser.logout', '182.253.36.31', 'admin'),
('2014-06-04 17:18:18', 'admin', 'muser.auth', '182.253.36.31', 'admin'),
('2014-06-04 18:16:10', 'admin', 'muser.logout', '182.253.36.31', 'admin'),
('2014-06-04 18:21:28', 'admin', 'muser.auth', '182.253.36.31', 'admin'),
('2014-06-05 09:29:39', 'admin', 'muser.auth', '182.253.36.31', 'admin'),
('2014-06-05 11:15:20', 'admin', 'muser.auth', '182.253.36.31', 'admin'),
('2014-06-05 11:21:55', 'admin', 'muser.auth', '182.253.36.31', 'admin'),
('2014-06-05 13:30:21', 'admin', 'muser.auth', '182.253.36.31', 'admin'),
('2014-06-05 14:35:16', 'admin', 'muser.logout', '182.253.36.31', 'admin'),
('2014-06-05 14:41:39', 'admin', 'muser.auth', '182.253.36.31', 'admin'),
('2014-06-05 15:16:22', 'admin', 'muser.auth', '182.253.36.31', 'admin'),
('2014-06-05 15:26:29', 'admin', 'muser.auth', '139.0.9.74 - ln-static-139-0-9-74.link.net.id', 'admin'),
('2014-06-05 16:25:14', 'admin', 'muser.auth', '182.253.36.31', 'admin'),
('2014-06-05 16:33:53', 'admin', 'muser.auth', '182.253.36.31', 'admin'),
('2014-06-06 08:44:22', 'admin', 'muser.auth', '139.0.9.74 - ln-static-139-0-9-74.link.net.id', 'admin'),
('2014-06-06 08:50:32', 'admin', 'muser.add_role', '139.0.9.74 - ln-static-139-0-9-74.link.net.id', 'Submitter'),
('2014-06-06 09:20:00', 'admin', 'muser.auth', '182.253.32.88', 'admin'),
('2014-06-06 09:23:40', 'admin', 'muser.auth', '182.253.32.88', 'admin'),
('2014-06-06 10:49:08', 'admin', 'muser.auth', '182.253.32.88', 'admin'),
('2014-06-06 13:44:11', 'admin', 'muser.auth', '182.253.32.88', 'admin'),
('2014-06-06 14:16:49', 'admin', 'muser.auth', '182.253.32.88', 'admin'),
('2014-06-06 14:55:36', 'admin', 'muser.auth', '182.253.32.88', 'admin'),
('2014-06-06 16:45:55', 'admin', 'muser.logout', '182.253.32.88', 'admin'),
('2014-06-06 19:06:31', 'admin', 'muser.auth', '182.253.32.88', 'admin'),
('2014-06-08 10:28:33', 'admin', 'muser.auth', '182.253.35.194', 'admin'),
('2014-06-08 12:39:38', 'admin', 'muser.auth', '36.69.112.254', 'admin'),
('2014-06-08 14:02:09', 'admin', 'muser.auth', '182.253.35.194', 'admin'),
('2014-06-08 14:06:10', 'admin', 'muser.auth', '182.253.35.194', 'admin'),
('2014-06-08 18:31:47', 'admin', 'muser.auth', '182.253.35.194', 'admin'),
('2014-06-08 19:27:30', 'admin', 'muser.auth', '36.69.112.37', 'admin'),
('2014-06-09 08:59:47', 'admin', 'muser.auth', '182.253.35.194', 'admin'),
('2014-06-09 13:25:57', 'admin', 'muser.auth', '182.253.35.194', 'admin'),
('2014-06-09 20:14:17', 'admin', 'muser.auth', '182.253.35.194', 'admin'),
('2014-06-09 20:32:04', 'admin', 'muser.auth', '182.253.35.194', 'admin'),
('2014-06-09 20:44:26', 'admin', 'muser.auth', '182.253.35.194', 'admin'),
('2014-06-09 20:44:41', 'admin', 'muser.logout', '182.253.35.194', 'admin'),
('2014-06-10 10:37:22', 'admin', 'muser.auth', '182.253.33.245', 'admin'),
('2014-06-10 13:05:10', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-10 13:24:08', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-10 14:18:56', 'sutopo.holic@gmail.com', 'muser.logout', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-10 14:20:16', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-10 14:21:41', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-10 14:37:46', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-10 14:39:49', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-10 14:45:55', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-10 14:48:54', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-10 14:49:27', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-10 14:56:46', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-10 15:19:42', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-12 09:49:08', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-12 10:56:01', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-12 10:56:19', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-12 10:56:36', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-12 10:59:58', 'sutopo.holic@gmail.com', 'muser.change_password', '::1 - MyProject', 'sutopo.holic@gmail.com;array (\n  password => fd41d9f3900980463a6e6a5b61d04698,\n)'),
('2014-06-12 11:00:02', 'sutopo.holic@gmail.com', 'muser.logout', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-12 11:00:14', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-12 12:14:40', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-12 12:17:23', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-12 15:16:34', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-12 16:55:43', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-12 16:56:07', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-12 16:57:15', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-12 16:57:23', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-12 17:06:03', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-12 17:07:48', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-12 17:23:47', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-12 17:23:58', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-12 18:11:31', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-12 18:12:08', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-12 18:16:45', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-12 18:16:55', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 09:16:29', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 09:16:33', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 09:38:06', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 09:38:32', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 09:45:35', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 09:45:50', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 09:46:45', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 09:46:51', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 09:48:31', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 09:48:35', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 10:03:49', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 10:03:55', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 10:29:30', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 11:01:09', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 11:01:20', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 11:06:07', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 11:06:24', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 13:51:30', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 13:52:39', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 14:06:35', 'admin', 'muser.add_role', '::1 - MyProject', 'Vendor'),
('2014-06-13 14:08:26', 'admin', 'muser.edit_role_access', '::1 - MyProject', '8;array (\n  0 => 1,\n  1 => 3,\n  2 => 4,\n  3 => 85,\n  4 => 87,\n  5 => 86,\n  6 => 88,\n  7 => 92,\n  8 => 89,\n  9 => 94,\n  10 => 93,\n  11 => 90,\n  12 => 91,\n  13 => 60,\n  14 => 61,\n  15 => 62,\n  16 => 63,\n)'),
('2014-06-13 15:10:57', 'admin', 'muser.add', '::1 - MyProject', 'Primajasa@ymail.com;array (\n  password => c3c2ec1b20cd355478a880bb6ca16392,\n  ref_role => 8,\n  nama => PT.PALJAYA2,\n  nip => 1234,\n  sbu => 1,\n  guid => 2,\n  email => Primajasa@ymail.com,\n)'),
('2014-06-13 15:17:49', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 15:19:02', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 15:19:36', 'admin', 'muser.add', '::1 - MyProject', 'Primajasa@ymail.com;array (\n  password => 47043232b99a6370535c3895dc738cea,\n  ref_role => 8,\n  nama => PT.PALJAYA2,\n  nip => 1234,\n  sbu => 1,\n  guid => 2,\n  email => Primajasa@ymail.com,\n)'),
('2014-06-13 15:19:55', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 15:20:06', 'Primajasa@ymail.com', 'muser.auth', '::1 - MyProject', 'Primajasa@ymail.com'),
('2014-06-13 15:22:07', 'Primajasa@ymail.com', 'muser.logout', '::1 - MyProject', 'Primajasa@ymail.com'),
('2014-06-13 15:22:16', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 15:33:39', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 15:34:15', 'Primajasa@ymail.com', 'muser.auth', '::1 - MyProject', 'Primajasa@ymail.com'),
('2014-06-13 15:34:53', 'Primajasa@ymail.com', 'muser.logout', '::1 - MyProject', 'Primajasa@ymail.com'),
('2014-06-13 15:35:00', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 15:36:11', 'admin', 'muser.delete_role', '::1 - MyProject', '7=Submitter'),
('2014-06-13 15:36:17', 'admin', 'muser.delete_role', '::1 - MyProject', '4=Supervisor 3'),
('2014-06-13 15:40:40', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 15:41:05', 'Primajasa@ymail.com', 'muser.auth', '::1 - MyProject', 'Primajasa@ymail.com'),
('2014-06-13 15:56:04', 'Primajasa@ymail.com', 'muser.logout', '::1 - MyProject', 'Primajasa@ymail.com'),
('2014-06-13 15:56:11', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 16:08:50', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 16:35:24', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 16:40:37', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 16:40:37', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 16:50:56', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 17:13:43', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 17:44:47', 'Primajasa@ymail.com', 'muser.auth', '::1 - MyProject', 'Primajasa@ymail.com'),
('2014-06-13 17:54:49', 'Primajasa@ymail.com', 'muser.logout', '::1 - MyProject', 'Primajasa@ymail.com'),
('2014-06-13 19:54:35', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 19:55:17', 'admin', 'muser.add', '::1 - MyProject', 'sutopo.holic@gmail.com;array (\n  password => fd41d9f3900980463a6e6a5b61d04698,\n  ref_role => 8,\n  nama => PT.ADIKA_PRATAMA,\n  nip => 123,\n  sbu => 1,\n  guid => 1,\n  email => sutopo.holic@gmail.com,\n)'),
('2014-06-13 19:55:22', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-13 19:55:42', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-13 19:56:10', 'sutopo.holic@gmail.com', 'muser.logout', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-13 19:57:43', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-13 21:34:26', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-14 22:23:58', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-14 22:24:22', 'sutopo.holic@gmail.com', 'muser.logout', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-14 23:47:31', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-16 09:28:05', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-16 09:28:22', 'sutopo.holic@gmail.com', 'muser.logout', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-16 09:28:40', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-17 08:48:21', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-17 08:48:35', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-17 08:55:18', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-17 08:58:38', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-17 09:19:36', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-17 09:35:37', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-17 09:43:54', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-17 13:37:14', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-17 13:42:08', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-17 13:49:07', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-17 13:50:01', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-17 17:54:32', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-18 09:39:00', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-18 14:16:58', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-18 15:24:25', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-18 15:25:02', 'admin', 'muser.delete', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-18 15:25:11', 'admin', 'muser.delete', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-18 15:25:27', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-18 15:28:51', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-18 15:35:55', 'admin', 'muser.add', '::1 - MyProject', 'sutopo.holic@gmail.com;array (\n  ref_role => 8,\n  nama => PT.SUNDAY,\n  nip => 123456,\n  sbu => 1,\n  guid => 1,\n  email => sutopo.holic@gmail.com,\n)'),
('2014-06-18 15:44:10', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-18 16:06:52', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-18 16:46:55', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-19 10:15:50', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-19 10:19:00', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-19 11:22:31', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-19 16:51:44', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-20 10:50:50', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-20 16:44:39', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-20 16:44:59', 'admin', 'muser.add', '::1 - MyProject', 'sutopo.holic@gmail.com;array (\n  password => c1ac0357cf25650e45d2ab62dca249c2,\n  ref_role => 8,\n  nama => PT.SUNDAY,\n  nip => 123456,\n  sbu => 1,\n  guid => 1,\n  email => sutopo.holic@gmail.com,\n)'),
('2014-06-20 16:45:21', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-20 16:45:33', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-20 17:01:20', 'sutopo.holic@gmail.com', 'muser.logout', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-20 17:01:28', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-23 10:10:36', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-23 12:57:15', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-23 13:05:36', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-23 13:09:50', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-23 13:15:14', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-23 13:16:04', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-23 14:20:32', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-23 14:38:00', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-23 14:50:37', 'sutopo.holic@gmail.com', 'muser.logout', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-23 14:53:43', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-23 14:53:54', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-23 14:54:10', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-23 17:13:37', 'sutopo.holic@gmail.com', 'muser.logout', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-23 17:32:03', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-23 17:37:08', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-23 17:37:30', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-24 09:34:36', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-24 10:07:18', 'sutopo.holic@gmail.com', 'muser.logout', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-24 10:08:53', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-24 10:10:25', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-24 10:10:38', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-24 10:11:50', 'sutopo.holic@gmail.com', 'muser.logout', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-24 10:29:15', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-24 12:24:45', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-24 17:03:48', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-25 09:19:54', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-25 10:18:49', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-25 10:42:20', 'sutopo.holic@gmail.com', 'muser.logout', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-25 10:42:37', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-25 14:26:25', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-25 15:44:24', 'sutopo.holic@gmail.com', 'muser.logout', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-25 15:44:30', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-25 16:38:45', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-25 16:39:12', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-26 08:41:34', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-26 10:28:00', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-26 13:06:16', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-26 16:01:33', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-27 10:36:58', 'sutopo.holic@gmail.com', 'muser.auth', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-27 10:37:17', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-27 10:43:19', 'sutopo.holic@gmail.com', 'muser.logout', '::1 - MyProject', 'sutopo.holic@gmail.com'),
('2014-06-27 10:43:26', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-27 14:37:52', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-27 15:27:41', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-27 15:29:17', 'acquis@gmail.com', 'muser.auth', '::1 - MyProject', 'acquis@gmail.com'),
('2014-06-27 16:41:04', 'acquis@gmail.com', 'muser.auth', '::1 - MyProject', 'acquis@gmail.com'),
('2014-06-27 16:41:42', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-30 08:38:04', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-30 08:42:07', 'acquis@gmail.com', 'muser.auth', '::1 - MyProject', 'acquis@gmail.com'),
('2014-06-30 10:50:02', 'acquis@gmail.com', 'muser.auth', '::1 - MyProject', 'acquis@gmail.com'),
('2014-06-30 15:42:25', 'acquis@gmail.com', 'muser.logout', '::1 - MyProject', 'acquis@gmail.com'),
('2014-06-30 15:46:37', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-30 15:46:51', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-06-30 15:47:36', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-06-30 16:46:50', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-07-01 09:23:39', 'acquis@gmail.com', 'muser.auth', '::1 - MyProject', 'acquis@gmail.com'),
('2014-07-01 12:27:15', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-07-01 14:05:18', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-07-02 10:57:44', 'acquis@gmail.com', 'muser.auth', '::1 - MyProject', 'acquis@gmail.com'),
('2014-07-02 11:09:27', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-07-02 15:47:21', 'acquis@gmail.com', 'muser.auth', '::1 - MyProject', 'acquis@gmail.com'),
('2014-07-02 16:19:13', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-07-02 16:19:51', 'admin', 'muser.add', '::1 - MyProject', 'Primajasa@ymail.com;array (\n  password => c1ac0357cf25650e45d2ab62dca249c2,\n  ref_role => 8,\n  nama => PT.PALJAYA2,\n  nip => 1234,\n  sbu => 1,\n  guid => 2,\n  email => Primajasa@ymail.com,\n)'),
('2014-07-02 16:20:02', 'acquis@gmail.com', 'muser.logout', '::1 - MyProject', 'acquis@gmail.com'),
('2014-07-02 16:20:09', 'Primajasa@ymail.com', 'muser.auth', '::1 - MyProject', 'Primajasa@ymail.com'),
('2014-07-02 16:21:09', 'Primajasa@ymail.com', 'muser.logout', '::1 - MyProject', 'Primajasa@ymail.com'),
('2014-07-02 16:21:15', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-07-02 16:22:19', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-07-02 16:22:51', 'SUKRA@ymail.com', 'muser.auth', '::1 - MyProject', 'SUKRA@ymail.com'),
('2014-07-03 09:28:32', 'acquis@gmail.com', 'muser.auth', '::1 - MyProject', 'acquis@gmail.com'),
('2014-07-03 10:12:08', 'acquis@gmail.com', 'muser.auth', '::1 - MyProject', 'acquis@gmail.com'),
('2014-07-03 10:22:47', 'acquis@gmail.com', 'muser.logout', '::1 - MyProject', 'acquis@gmail.com'),
('2014-07-03 10:22:54', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-07-03 10:33:16', 'acquis@gmail.com', 'muser.logout', '::1 - MyProject', 'acquis@gmail.com'),
('2014-07-03 10:33:24', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-07-03 10:49:06', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-07-03 10:49:20', 'acquis@gmail.com', 'muser.auth', '::1 - MyProject', 'acquis@gmail.com'),
('2014-07-03 10:54:27', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-07-03 10:59:46', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-07-03 11:00:42', 'acquis@gmail.com', 'muser.auth', '::1 - MyProject', 'acquis@gmail.com'),
('2014-07-03 16:21:02', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-07-03 16:23:48', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-07-03 16:29:39', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-07-03 16:29:42', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-07-03 16:29:50', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-07-04 10:18:39', 'acquis@gmail.com', 'muser.auth', '::1 - MyProject', 'acquis@gmail.com'),
('2014-07-04 11:04:04', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-07-07 12:15:05', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-07-07 12:15:13', 'admin', 'muser.logout', '::1 - MyProject', 'admin'),
('2014-07-07 12:15:30', 'acquis@gmail.com', 'muser.auth', '::1 - MyProject', 'acquis@gmail.com'),
('2014-07-07 12:34:04', 'acquis@gmail.com', 'muser.auth', '::1 - MyProject', 'acquis@gmail.com'),
('2014-07-07 13:56:43', 'admin', 'muser.auth', '::1 - MyProject', 'admin'),
('2014-07-07 14:35:05', 'acquis@gmail.com', 'muser.auth', '::1 - MyProject', 'acquis@gmail.com'),
('2014-07-10 23:42:32', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-15 01:44:00', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-20 02:45:30', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-22 10:31:45', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-22 16:00:02', 'admin', 'muser.logout', '::1 - MSS', 'admin'),
('2014-07-22 16:00:16', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-22 16:37:30', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-22 16:37:34', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-22 16:42:56', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-23 10:21:11', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-23 11:00:54', 'admin', 'muser.logout', '::1 - MSS', 'admin'),
('2014-07-23 11:01:05', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-23 11:01:32', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-23 11:01:39', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-23 11:07:49', 'admin', 'muser.logout', '::1 - MSS', 'admin'),
('2014-07-23 11:08:04', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-23 11:16:39', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-23 11:16:44', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-23 11:16:49', 'admin', 'muser.logout', '::1 - MSS', 'admin'),
('2014-07-23 11:17:59', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-23 11:18:10', 'admin', 'muser.logout', '::1 - MSS', 'admin'),
('2014-07-23 11:18:22', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-23 12:44:32', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-23 12:44:36', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-23 13:45:22', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-23 13:46:08', 'admin', 'muser.logout', '::1 - MSS', 'admin'),
('2014-07-23 13:46:19', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-23 13:48:56', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-23 13:49:09', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-23 15:35:36', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-23 15:35:41', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-23 15:37:21', 'admin', 'muser.logout', '::1 - MSS', 'admin'),
('2014-07-23 15:37:38', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-23 16:07:28', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-23 16:07:33', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-24 09:25:29', 'admin', 'muser.logout', '::1 - MSS', 'admin'),
('2014-07-24 09:25:42', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-24 10:24:13', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-24 10:24:18', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-24 10:24:40', 'admin', 'muser.logout', '::1 - MSS', 'admin'),
('2014-07-24 10:24:55', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-24 13:42:26', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-24 13:42:31', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-24 15:55:52', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-24 15:56:01', 'admin', 'muser.logout', '::1 - MSS', 'admin'),
('2014-07-24 16:04:48', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-24 16:10:24', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-24 16:10:32', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-25 09:21:24', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-25 09:21:36', 'admin', 'muser.logout', '::1 - MSS', 'admin'),
('2014-07-25 09:21:47', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-25 09:34:21', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-25 09:34:30', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-25 09:34:50', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-25 09:36:00', 'test@email.com', 'muser.auth', '::1 - MSS', 'test@email.com'),
('2014-07-25 09:36:46', 'test@email.com', 'muser.logout', '::1 - MSS', 'test@email.com'),
('2014-07-25 09:36:56', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-25 09:43:39', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-25 09:43:51', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-25 09:51:24', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-25 09:51:32', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-25 09:51:40', 'admin', 'muser.logout', '::1 - MSS', 'admin'),
('2014-07-25 09:51:51', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-25 10:26:07', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-25 10:26:13', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-25 10:27:00', 'admin', 'muser.logout', '::1 - MSS', 'admin'),
('2014-07-25 10:32:57', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-25 12:55:03', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-25 12:55:08', 'admin', 'muser.logout', '::1 - MSS', 'admin'),
('2014-07-25 12:55:20', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-25 13:16:48', 'acquis@gmail.com', 'muser.logout', '::1 - MSS', 'acquis@gmail.com'),
('2014-07-25 13:16:54', 'admin', 'muser.auth', '::1 - MSS', 'admin'),
('2014-07-25 13:17:00', 'admin', 'muser.logout', '::1 - MSS', 'admin'),
('2014-07-25 13:17:12', 'acquis@gmail.com', 'muser.auth', '::1 - MSS', 'acquis@gmail.com'),
('2014-08-04 09:40:45', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 09:42:23', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 09:42:37', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 09:44:54', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 09:44:58', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 10:08:18', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 10:08:23', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 10:15:58', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 10:16:11', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 10:16:38', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 10:16:48', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 10:21:11', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 10:21:14', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 10:21:26', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 10:31:05', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 10:31:11', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 10:35:14', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 10:35:24', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 12:34:45', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 12:34:50', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 12:36:24', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 12:36:34', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 12:37:21', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 12:37:26', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 12:38:01', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 12:38:07', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 12:38:38', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 12:38:50', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 12:44:54', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 12:45:01', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 12:46:13', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 12:46:33', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 12:46:47', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 12:47:07', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 12:52:11', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 12:52:19', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 14:07:13', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 14:07:18', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 14:10:11', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 14:10:27', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 14:12:09', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 14:12:25', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 14:21:37', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 14:21:46', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 14:23:33', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 14:23:38', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 14:35:43', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 14:35:53', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 14:36:33', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 14:36:38', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 14:42:55', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 14:43:10', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 14:47:04', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 14:47:08', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 14:59:00', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 14:59:10', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 14:59:21', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 14:59:26', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 15:02:17', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 15:02:30', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 15:04:10', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 15:04:18', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 15:04:45', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 15:04:56', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 15:13:48', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 15:17:40', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 15:17:56', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 15:18:21', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 15:40:28', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 15:40:45', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 15:40:55', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 15:41:00', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 15:46:02', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 15:46:13', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 15:52:10', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-04 15:52:15', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-04 16:06:05', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-04 16:06:20', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-05 09:22:26', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-05 09:26:10', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-05 09:26:29', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-05 15:24:05', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-05 15:33:00', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-05 15:33:11', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-05 15:33:47', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-05 15:35:42', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-05 15:42:21', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-05 17:02:36', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-06 09:44:06', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-06 09:49:37', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-06 09:49:49', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-06 14:13:06', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-06 14:13:17', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-06 15:46:22', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-06 15:46:28', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-06 15:46:31', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-11 16:25:15', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-11 18:08:10', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-11 18:08:15', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-11 18:09:02', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-12 09:33:29', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-12 13:38:40', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-12 13:38:50', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-12 13:39:15', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-12 13:39:20', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-12 13:41:43', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-12 13:41:57', 'primatama@email.com', 'muser.auth', '::1 - SVE141J11W', 'primatama@email.com'),
('2014-08-12 13:44:45', 'primatama@email.com', 'muser.logout', '::1 - SVE141J11W', 'primatama@email.com'),
('2014-08-12 13:44:50', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-12 13:45:36', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-12 13:45:52', 'primatama@email.com', 'muser.auth', '::1 - SVE141J11W', 'primatama@email.com'),
('2014-08-12 13:48:39', 'primatama@email.com', 'muser.logout', '::1 - SVE141J11W', 'primatama@email.com'),
('2014-08-12 13:48:43', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-12 13:52:20', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-12 13:52:30', 'primatama@email.com', 'muser.auth', '::1 - SVE141J11W', 'primatama@email.com'),
('2014-08-12 14:23:03', 'primatama@email.com', 'muser.logout', '::1 - SVE141J11W', 'primatama@email.com'),
('2014-08-12 14:23:08', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-12 14:27:08', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-12 14:27:26', 'primatama@email.com', 'muser.auth', '::1 - SVE141J11W', 'primatama@email.com'),
('2014-08-12 15:59:24', 'primatama@email.com', 'muser.logout', '::1 - SVE141J11W', 'primatama@email.com'),
('2014-08-12 15:59:29', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-13 09:45:31', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-13 15:11:28', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-14 09:23:50', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-14 09:23:59', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-14 09:24:04', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-14 09:28:59', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-14 09:29:18', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-14 09:36:57', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-14 09:37:14', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-14 09:37:35', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-14 09:38:38', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-14 15:25:26', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-14 15:25:41', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-14 15:31:53', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-14 15:32:06', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-14 16:46:13', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-14 16:46:26', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-14 16:47:53', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-14 16:48:04', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-14 17:23:11', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-14 17:23:24', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-14 17:39:18', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-14 17:39:23', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-14 17:51:37', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-14 18:14:48', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-14 18:15:00', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-14 18:17:55', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-14 18:18:00', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-14 18:19:02', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-14 18:19:27', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-14 18:20:35', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-14 18:20:41', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-14 19:06:28', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-14 19:09:04', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-14 19:09:55', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-14 19:10:09', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-15 10:09:14', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-15 10:11:17', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-15 10:13:42', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-15 10:17:32', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-15 10:26:13', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-15 10:27:02', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-15 10:28:25', 'admin', 'muser.auth', '::1 - SVE141J11W', 'admin'),
('2014-08-15 10:30:02', 'admin', 'muser.logout', '::1 - SVE141J11W', 'admin'),
('2014-08-15 10:30:14', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-15 10:30:46', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-15 10:30:52', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-15 10:30:58', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-15 10:31:22', 'sunday@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'sunday@acquis.com'),
('2014-08-15 10:32:32', 'sunday@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'sunday@acquis.com'),
('2014-08-15 10:32:46', 'sunday@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'sunday@acquis.com'),
('2014-08-15 10:32:50', 'sunday@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'sunday@acquis.com'),
('2014-08-15 10:32:59', 'primatama@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'primatama@acquis.com'),
('2014-08-15 10:33:05', 'primatama@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'primatama@acquis.com'),
('2014-08-15 10:33:21', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-15 10:33:23', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-15 10:35:19', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-15 10:45:43', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-15 10:46:04', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-15 11:37:09', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-15 11:52:34', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-15 18:25:48', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-15 18:31:58', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-16 21:17:05', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 09:28:58', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 09:30:12', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 09:30:19', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 10:06:02', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 10:06:45', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-18 10:31:29', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-18 10:31:36', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 10:48:21', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 10:48:32', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-18 10:49:18', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-18 10:49:26', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 10:50:24', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 10:50:33', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-18 10:54:03', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-18 10:54:10', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 11:08:52', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-18 11:10:29', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-18 11:11:26', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 12:05:39', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 12:12:30', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 12:15:31', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-18 12:17:41', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 12:21:01', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-18 14:04:24', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 14:07:07', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-18 14:07:19', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 15:33:54', 'donnadonnyhandoyo@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'donnadonnyhandoyo@gmail.com'),
('2014-08-18 15:38:43', 'donnadonnyhandoyo@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'donnadonnyhandoyo@gmail.com'),
('2014-08-18 15:38:56', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 15:46:45', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 15:47:28', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 16:35:14', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 16:35:47', 'test@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'test@gmail.com'),
('2014-08-18 16:39:12', 'test@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'test@gmail.com'),
('2014-08-18 16:39:22', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 16:40:37', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 16:40:49', 'test@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'test@gmail.com'),
('2014-08-18 16:41:12', 'test@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'test@gmail.com'),
('2014-08-18 16:42:01', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 16:42:26', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 16:42:42', 'test@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'test@gmail.com'),
('2014-08-18 16:43:00', 'test@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'test@gmail.com');
INSERT INTO `t_access` (`access_datetime`, `username`, `modul`, `pc_source`, `data`) VALUES
('2014-08-18 16:45:14', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 16:46:00', 'acquis@gmail.com', 'muser.delete_role', '::1 - SVE141J11W', '2=Client'),
('2014-08-18 16:46:05', 'acquis@gmail.com', 'muser.delete_role', '::1 - SVE141J11W', '5=GM'),
('2014-08-18 16:46:11', 'acquis@gmail.com', 'muser.delete_role', '::1 - SVE141J11W', '3=PM'),
('2014-08-18 16:46:18', 'acquis@gmail.com', 'muser.delete_role', '::1 - SVE141J11W', '6=telemetri'),
('2014-08-18 16:51:44', 'acquis@gmail.com', 'muser.edit_role_name', '::1 - SVE141J11W', '8;Vendor'),
('2014-08-18 16:55:21', 'acquis@gmail.com', 'muser.edit_role_name', '::1 - SVE141J11W', '8;Vendor'),
('2014-08-18 16:55:42', 'acquis@gmail.com', 'muser.edit_role_name', '::1 - SVE141J11W', '8;Vendor'),
('2014-08-18 18:29:17', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 18:29:44', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 18:42:56', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 18:43:12', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-18 18:44:28', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-18 18:44:39', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 18:45:38', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-18 18:48:29', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 09:24:00', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 09:25:26', 'acquis@gmail.com', 'muser.add', '::1 - SVE141J11W', 'biner@acquis.com;array (\n  ref_role => 8,\n  nama => PT.Biner Teknologi,\n  nip => 123456,\n  sbu => 1,\n  guid => 1,\n  email => bineri@acquis.com,\n)'),
('2014-08-19 09:29:57', 'acquis@gmail.com', 'muser.add', '::1 - SVE141J11W', 'biner@acquis.com;array (\n  ref_role => 8,\n  nama => PT.Biner Teknologi,\n  nip => 123456,\n  sbu => 1,\n  guid => 1,\n  email => bineri@acquis.com,\n)'),
('2014-08-19 09:52:44', 'acquis@gmail.com', 'muser.add', '::1 - SVE141J11W', 'biner@acquis.com;array (\n  username => biner@acquis.com,\n  ref_role => 8,\n  nama => PT.Biner Teknologi,\n  nip => 123456,\n  sbu => 1,\n  guid => 1,\n  email => biner@acquis.com,\n)'),
('2014-08-19 09:54:09', 'acquis@gmail.com', 'muser.add', '::1 - SVE141J11W', 'biner@acquis.com;array (\n  username => bineris@acquis.com,\n  ref_role => 8,\n  nama => PT.Biner Teknologi,\n  nip => 123456,\n  sbu => 1,\n  guid => 1,\n  email => bineris@acquis.com,\n)'),
('2014-08-19 09:55:21', 'acquis@gmail.com', 'muser.add', '::1 - SVE141J11W', 'bineris@acquis.com;array (\n  username => biner@acquis.com,\n  ref_role => 8,\n  nama => PT.Biner Teknologi,\n  nip => 123456,\n  sbu => 1,\n  guid => 1,\n  email => biner@acquis.com,\n)'),
('2014-08-19 09:59:08', 'acquis@gmail.com', 'muser.add', '::1 - SVE141J11W', 'biner@acquis.com;array (\n  username => bineris@acquis.com,\n  ref_role => 8,\n  nama => PT.Biner Teknologi,\n  nip => 123456,\n  sbu => 1,\n  guid => 1,\n  email => bineris@acquis.com,\n)'),
('2014-08-19 09:59:32', 'acquis@gmail.com', 'muser.add', '::1 - SVE141J11W', 'bineris@acquis.com;array (\n  username => biner@acquis.com,\n  ref_role => 8,\n  nama => PT.Biner Teknologi,\n  nip => 123456,\n  sbu => 1,\n  guid => 1,\n  email => biner@acquis.com,\n)'),
('2014-08-19 09:59:45', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 10:08:25', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 10:09:05', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 10:09:11', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-19 10:33:56', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-19 10:34:06', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-19 12:11:20', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 12:11:31', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 12:11:48', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-19 15:20:29', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-19 15:20:46', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 15:22:37', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 15:22:59', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-19 15:53:26', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-19 15:53:34', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 16:18:42', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 16:18:54', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-19 16:23:22', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-19 16:23:28', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 16:23:58', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 16:24:04', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-19 17:04:48', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-19 17:04:53', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 17:13:28', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 17:13:38', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-19 17:21:39', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-19 17:21:45', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 17:24:56', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 17:40:12', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 17:40:21', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-19 17:49:32', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-19 17:49:38', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-19 18:10:43', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 09:27:37', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 09:36:05', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 09:36:20', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-20 09:37:18', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-20 09:37:26', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 10:02:04', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 10:02:12', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-20 10:02:53', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-20 10:03:03', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 10:06:49', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 10:23:49', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 10:30:01', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 10:30:07', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-20 10:56:15', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-20 10:56:21', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 11:51:00', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 11:51:10', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-20 11:51:51', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-20 11:51:58', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 11:53:15', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 11:53:23', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 14:56:31', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 14:56:39', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-20 14:59:59', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-20 15:00:08', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 15:11:49', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 15:11:56', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-20 15:12:18', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-20 15:12:25', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 15:39:19', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 15:39:33', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 15:39:55', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 15:40:08', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-20 15:40:27', 'biner@acquis.com', 'muser.logout', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-20 15:40:43', 'acquis@gmail.com', 'muser.auth', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 15:41:59', 'acquis@gmail.com', 'muser.logout', '::1 - SVE141J11W', 'acquis@gmail.com'),
('2014-08-20 15:42:09', 'biner@acquis.com', 'muser.auth', '::1 - SVE141J11W', 'biner@acquis.com'),
('2014-08-20 15:58:41', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-08-20 16:11:21', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-08-20 16:11:28', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-08-20 16:11:49', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-08-20 16:11:57', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-08-20 16:15:52', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-08-20 16:15:59', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-08-20 16:16:18', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-08-20 16:16:54', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-08-20 16:17:00', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-08-20 16:18:00', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-08-20 16:18:09', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-08-20 16:18:35', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-08-20 16:18:41', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-08-20 16:19:47', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-08-20 16:19:55', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-08-20 16:20:15', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-08-20 16:26:49', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-08-25 09:11:36', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-08-25 09:12:31', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-08-25 11:55:08', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-08-26 12:50:39', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-08-26 13:03:46', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-08-26 13:03:55', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-08-26 16:46:42', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-08-28 10:18:23', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-01 10:19:40', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-01 11:45:22', 'acquis@gmail.com', 'muser.add_role', '::1 - EzikGuantengBGt', 'asd'),
('2014-09-01 11:45:33', 'acquis@gmail.com', 'muser.edit_role_name', '::1 - EzikGuantengBGt', '9;aww'),
('2014-09-01 11:45:44', 'acquis@gmail.com', 'muser.delete_role', '::1 - EzikGuantengBGt', '9=aww'),
('2014-09-01 13:06:47', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-01 13:06:55', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-01 13:28:25', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-01 13:28:51', 'sunday@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'sunday@acquis.com'),
('2014-09-01 13:29:10', 'sunday@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'sunday@acquis.com'),
('2014-09-01 13:29:18', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-01 13:39:42', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-01 15:43:50', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-01 15:44:00', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-01 15:44:53', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-01 15:45:00', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-01 15:57:57', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-01 15:58:04', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-01 16:19:24', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-01 16:19:29', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-01 16:37:09', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-01 16:37:16', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-01 16:40:12', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-01 16:40:20', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 08:31:11', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 08:31:21', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 08:53:10', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 08:53:25', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 08:59:02', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 08:59:09', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 08:59:52', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 09:00:08', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 09:03:22', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 09:03:27', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 09:38:25', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 09:38:30', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 10:18:23', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 10:18:30', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 10:20:49', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 10:20:54', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 10:21:02', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 10:21:08', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 10:33:44', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 10:33:51', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 10:35:25', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 10:35:32', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 10:41:48', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 10:41:54', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 10:42:23', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 10:42:33', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 10:51:35', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 10:51:43', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 11:07:34', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 11:07:43', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 11:27:20', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 11:27:41', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 12:13:26', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 12:13:34', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 12:26:16', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 12:26:23', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 12:28:14', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 12:28:20', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 12:32:31', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 12:32:41', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 12:32:51', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 12:33:03', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 13:50:32', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 13:50:44', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 13:56:51', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-02 13:56:57', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 13:57:48', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 13:57:53', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 14:50:00', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 14:50:08', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 14:55:58', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 14:56:04', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 15:00:02', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 15:00:10', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 15:37:48', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 15:38:06', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 16:10:52', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 16:10:59', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 16:50:18', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 16:50:23', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 17:32:17', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-02 17:32:54', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 17:33:18', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-02 17:33:21', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 09:15:04', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 09:23:09', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 09:23:27', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-04 09:26:30', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-04 09:26:33', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 09:41:58', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 09:42:04', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-04 10:05:50', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-04 10:05:53', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 10:50:54', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 10:50:58', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-04 10:52:21', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-04 10:52:26', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 10:54:16', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 10:54:21', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-04 10:59:43', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-04 10:59:50', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 13:56:14', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 13:56:18', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 13:57:52', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 13:58:01', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 16:14:09', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 16:14:14', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-04 16:23:43', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-04 16:23:50', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 16:26:51', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 16:26:59', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 16:27:07', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 16:27:11', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-04 16:47:16', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-04 16:47:21', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 16:47:21', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 16:58:47', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 16:58:53', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-04 17:02:10', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-04 17:02:15', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 17:22:40', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 17:22:47', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-04 17:38:57', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-04 17:39:01', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-04 17:55:59', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-05 08:59:32', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-05 10:44:42', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-05 10:44:47', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-05 10:45:03', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-05 10:45:08', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-05 13:45:14', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-05 13:45:18', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-08 09:29:53', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-08 12:06:00', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-08 14:59:01', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-08 14:59:06', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-08 15:13:25', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-08 15:13:31', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-09 08:59:07', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-09 08:59:11', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-09 10:32:08', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-09 10:32:13', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-09 12:34:28', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-09 12:34:32', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-09 13:28:37', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-09 13:28:49', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-09 15:52:45', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-09 15:52:50', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-09 16:12:09', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-09 16:12:14', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-09 16:12:33', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-09 16:12:37', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-09 16:50:06', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-09 16:50:10', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-10 11:19:30', 'acquis@gmail.com', 'muser.auth', '192.168.12.32', 'acquis@gmail.com'),
('2014-09-11 09:09:58', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-11 09:32:43', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-11 10:10:13', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-11 10:10:27', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-11 10:10:58', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-11 10:11:02', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-11 14:13:47', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-11 14:16:33', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-11 14:17:50', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-11 14:18:14', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-11 14:25:55', 'rulls.inside@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'rulls.inside@gmail.com'),
('2014-09-11 14:26:09', 'rulls.inside@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'rulls.inside@gmail.com'),
('2014-09-11 14:26:19', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-12 09:46:13', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-12 09:46:18', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-12 09:48:45', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-12 09:48:47', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-12 14:15:25', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-12 14:22:36', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-12 14:41:43', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-12 14:41:47', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-12 16:33:30', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-12 16:33:34', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-12 16:36:35', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-12 16:36:48', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-12 16:38:35', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-12 16:39:37', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-12 16:47:26', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-12 16:47:33', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-15 09:14:05', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-15 10:51:34', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-15 10:51:38', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-15 10:54:54', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-15 10:54:58', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-15 10:56:03', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-15 10:56:08', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-15 10:57:28', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-15 10:57:34', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-15 10:58:18', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-15 10:58:39', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-15 10:58:50', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-15 10:58:55', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-15 10:59:46', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-15 10:59:49', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-15 11:01:26', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-15 11:16:35', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-15 16:06:52', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-15 16:06:57', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-16 14:51:42', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-16 14:51:47', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-18 15:33:48', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-18 15:38:49', 'acquis@gmail.com', 'muser.auth', '192.168.12.26 - ANDANG', 'acquis@gmail.com'),
('2014-09-18 15:46:02', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-18 15:46:07', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-19 14:24:49', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-19 14:25:13', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-19 16:48:04', 'acquis@gmail.com', 'muser.auth', '192.168.12.26 - ANDANG', 'acquis@gmail.com'),
('2014-09-22 10:57:12', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-22 11:10:53', 'acquis@gmail.com', 'muser.add', '127.0.0.1 - EzikGuantengBGt', ';array (\n  username => admin@acquis.com,\n  password => c1ac0357cf25650e45d2ab62dca249c2,\n  ref_role => 1,\n  nama => Admin,\n  nip => 1,\n  sbu => 1,\n  guid => 1,\n  email => admin@acquis.com,\n)'),
('2014-09-22 11:38:37', 'acquis@gmail.com', 'muser.add', '127.0.0.1 - EzikGuantengBGt', 'admin@acquis.com;array (\n  ref_role => 1,\n  nama => Admin,\n  nip => 1,\n  sbu => 1,\n  guid => 1,\n  email => admin@acquis.com,\n)'),
('2014-09-22 11:42:54', 'acquis@gmail.com', 'muser.add', '127.0.0.1 - EzikGuantengBGt', 'admin@acquis.com;array (\n  username => admin@acquis.com,\n  ref_role => 1,\n  nama => Admin,\n  nip => 1,\n  sbu => 1,\n  guid => 1,\n  email => admin@acquis.com,\n)'),
('2014-09-22 11:43:32', 'acquis@gmail.com', 'muser.add', '127.0.0.1 - EzikGuantengBGt', 'admin@acquis.com;array (\n  username => admin@acquis.com,\n  ref_role => 1,\n  nama => Admin ajah,\n  nip => 1,\n  sbu => 1,\n  guid => 1,\n  email => admin@acquis.com,\n)'),
('2014-09-22 11:50:25', 'acquis@gmail.com', 'muser.add', '127.0.0.1 - EzikGuantengBGt', 'admin@acquis.com;array (\n  username => admin@acquis.com,\n  ref_role => 1,\n  nama => Admin ajah,\n  nip => 1,\n  sbu => 1,\n  guid => 1,\n  email => admin@acquis.com,\n)'),
('2014-09-22 11:50:34', 'acquis@gmail.com', 'muser.add', '127.0.0.1 - EzikGuantengBGt', 'admin@acquis.com;array (\n  username => admin@acquis.com,\n  ref_role => 1,\n  nama => Admin ajah,\n  nip => 2,\n  sbu => 1,\n  guid => 1,\n  email => admin@acquis.com,\n)'),
('2014-09-22 14:56:03', 'acquis@gmail.com', 'muser.auth', '192.168.12.26 - ANDANG', 'acquis@gmail.com'),
('2014-09-22 14:56:06', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-22 15:10:05', 'acquis@gmail.com', 'muser.add', '127.0.0.1 - EzikGuantengBGt', 'admin@acquis.com;array (\n  username => admin@acquis.com,\n  ref_role => 1,\n  nama => Admin ajah,\n  nip => 2,\n  sbu => 1,\n  guid => 1,\n  email => admin@acquis.com,\n  jabatan => 001,\n)'),
('2014-09-22 15:10:27', 'acquis@gmail.com', 'muser.add', '127.0.0.1 - EzikGuantengBGt', 'admin@acquis.com;array (\n  username => admin@acquis.com,\n  ref_role => 1,\n  nama => Admin I,\n  nip => 2,\n  sbu => 1,\n  guid => 1,\n  email => admin@acquis.com,\n  jabatan => 001,\n)'),
('2014-09-22 15:20:53', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-22 15:21:05', 'admin@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'admin@acquis.com'),
('2014-09-23 08:43:11', 'admin@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'admin@acquis.com'),
('2014-09-23 09:25:00', 'admin@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'admin@acquis.com'),
('2014-09-23 09:25:04', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-23 12:16:39', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-23 12:16:56', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-23 12:17:08', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-23 13:24:24', 'acquis@gmail.com', 'muser.add', '::1 - EzikGuantengBGt', 'admin@acquis.com;array (\n  username => admin@acquis.com,\n  ref_role => 1,\n  nama => Admin I,\n  nip => 2,\n  sbu => 1,\n  guid => 1,\n  email => admin@acquis.com,\n  jabatan => 002,\n)'),
('2014-09-23 13:31:07', 'acquis@gmail.com', 'muser.auth', '192.168.12.26 - ANDANG', 'acquis@gmail.com'),
('2014-09-23 14:43:21', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-23 14:43:43', 'admin@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'admin@acquis.com'),
('2014-09-23 15:39:02', 'admin@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'admin@acquis.com'),
('2014-09-23 15:43:17', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-23 15:59:30', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-23 16:19:46', 'rulls.inside@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'rulls.inside@gmail.com'),
('2014-09-23 16:28:34', 'rulls.inside@gmail.com', 'muser.change_password', '::1 - EzikGuantengBGt', 'rulls.inside@gmail.com;array (\n  password => 37889f9c3a015532b422ac3bfaa5138d,\n)'),
('2014-09-23 16:51:49', 'rulls.inside@gmail.com', 'muser.change_password', '::1 - EzikGuantengBGt', 'rulls.inside@gmail.com'),
('2014-09-23 16:54:59', 'acquis@gmail.com', 'muser.change_password', '192.168.12.23', 'acquis@gmail.com;array (\n  password => 165ec9bb6da96ba0863f6e9751b1734d,\n)'),
('2014-09-23 16:57:02', 'acquis@gmail.com', 'muser.change_password', '192.168.12.23', 'acquis@gmail.com;array (\n  password => c1ac0357cf25650e45d2ab62dca249c2,\n)'),
('2014-09-23 17:03:11', 'rulls.inside@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'rulls.inside@gmail.com'),
('2014-09-23 17:03:29', 'rulls.inside@gmail.com', 'muser.change_password', '::1 - EzikGuantengBGt', 'rulls.inside@gmail.com;array (\n  password => 37889f9c3a015532b422ac3bfaa5138d,\n)'),
('2014-09-24 11:17:20', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-24 11:17:43', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-24 11:17:49', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-24 11:17:53', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-24 11:32:02', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-25 09:37:37', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-25 11:25:16', 'acquis@gmail.com', 'muser.auth', '192.168.12.26 - ANDANG', 'acquis@gmail.com'),
('2014-09-25 11:52:18', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-26 08:54:36', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-26 11:08:34', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-26 11:09:44', 'sukra@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'sukra@acquis.com'),
('2014-09-26 11:13:05', 'sukra@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'sukra@acquis.com'),
('2014-09-26 11:13:52', 'rulls.inside@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'rulls.inside@gmail.com'),
('2014-09-26 11:36:03', 'rulls.inside@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'rulls.inside@gmail.com'),
('2014-09-26 11:36:07', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-26 14:05:20', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-26 15:09:33', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-29 09:39:44', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-29 09:53:27', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-29 10:20:02', 'acquis@gmail.com', 'muser.auth', '192.168.12.26 - ANDANG', 'acquis@gmail.com'),
('2014-09-29 10:24:59', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-29 10:32:53', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-29 10:53:10', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-29 10:53:13', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-29 10:54:27', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-29 10:54:30', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-29 16:01:58', 'acquis@gmail.com', 'muser.auth', '192.168.12.26 - ANDANG', 'acquis@gmail.com'),
('2014-09-30 09:45:36', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-30 14:36:46', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-30 16:26:05', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-30 16:26:20', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-30 16:27:44', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-30 16:27:48', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-30 16:28:27', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-30 16:28:31', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-30 16:29:49', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-30 16:29:54', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-30 16:30:32', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-30 16:30:36', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-30 16:42:52', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-30 16:42:58', 'primatama@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-30 16:45:50', 'primatama@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'primatama@acquis.com'),
('2014-09-30 16:45:54', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-30 16:49:06', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-09-30 16:49:12', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-30 16:53:11', 'biner@acquis.com', 'muser.logout', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-09-30 16:53:20', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-01 10:19:01', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-01 10:19:15', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-01 10:21:06', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-01 10:21:27', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-01 10:23:49', 'acquis@gmail.com', 'muser.auth', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-01 10:24:06', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-01 10:37:47', 'acquis@gmail.com', 'muser.logout', '::1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-01 10:37:51', 'biner@acquis.com', 'muser.auth', '::1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-02 11:45:41', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-02 12:03:07', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-02 12:03:14', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-02 12:24:53', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-02 12:24:56', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-02 12:28:58', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-02 12:29:01', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-02 13:55:49', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-02 13:55:52', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-02 14:04:37', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-02 14:04:42', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-02 14:28:29', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-02 14:28:33', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-02 14:29:08', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-02 14:29:13', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-02 14:29:44', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-02 14:29:47', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-02 14:30:01', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-02 14:30:06', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-02 14:31:13', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-02 14:31:17', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-02 14:32:24', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-02 14:32:28', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-02 19:03:22', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-02 19:03:26', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-03 10:58:38', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-03 13:09:32', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-03 13:09:37', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-03 13:09:50', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-03 13:09:53', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com');
INSERT INTO `t_access` (`access_datetime`, `username`, `modul`, `pc_source`, `data`) VALUES
('2014-10-03 13:40:17', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-03 13:40:28', 'paljaya@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'paljaya@acquis.com'),
('2014-10-03 14:17:36', 'paljaya@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'paljaya@acquis.com'),
('2014-10-03 14:17:41', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-03 15:16:09', 'biner@acquis.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-03 15:16:13', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-03 15:20:55', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-03 15:20:59', 'acquis@gmail.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-03 15:21:01', 'acquis@gmail.com', 'muser.logout', '127.0.0.1 - EzikGuantengBGt', 'acquis@gmail.com'),
('2014-10-03 15:21:05', 'biner@acquis.com', 'muser.auth', '127.0.0.1 - EzikGuantengBGt', 'biner@acquis.com'),
('2014-10-08 11:56:32', 'acquis@gmail.com', 'muser.auth', '::1 - SVE', 'acquis@gmail.com'),
('2014-10-08 17:32:04', 'biner@acquis.com', 'muser.auth', '::1 - SVE', 'biner@acquis.com'),
('2014-10-08 17:32:14', 'biner@acquis.com', 'muser.logout', '::1 - SVE', 'biner@acquis.com'),
('2014-10-08 17:35:11', 'acquis@gmail.com', 'muser.auth', '::1 - SVE', 'acquis@gmail.com'),
('2014-10-08 17:52:28', 'acquis@gmail.com', 'muser.auth', '::1 - SVE', 'acquis@gmail.com'),
('2014-10-08 17:57:54', 'donna.donnyhandoyo@gmail.com', 'muser.auth', '::1 - SVE', 'donna.donnyhandoyo@gmail.com'),
('2014-10-08 17:58:16', 'donna.donnyhandoyo@gmail.com', 'muser.logout', '::1 - SVE', 'donna.donnyhandoyo@gmail.com'),
('2014-10-08 18:12:07', 'donnadonny.handoyo@gmail.com', 'muser.auth', '::1 - SVE', 'donnadonny.handoyo@gmail.com'),
('2014-10-08 18:24:45', 'acquis@gmail.com', 'muser.auth', '192.168.12.49 - MJ', 'acquis@gmail.com'),
('2014-10-08 18:29:59', 'donnadonny.handoyo@gmail.com', 'muser.logout', '::1 - SVE', 'donnadonny.handoyo@gmail.com'),
('2014-10-08 18:30:30', 'donna.donnyhandoyo@gmail.com', 'muser.auth', '::1 - SVE', 'donna.donnyhandoyo@gmail.com'),
('2014-10-08 18:50:33', 'donna.donnyhandoyo@gmail.com', 'muser.logout', '::1 - SVE', 'donna.donnyhandoyo@gmail.com'),
('2014-10-08 18:51:00', 'donnadonny.handoyo@gmail.com', 'muser.auth', '::1 - SVE', 'donnadonny.handoyo@gmail.com'),
('2014-10-16 15:21:44', 'biner@acquis.com', 'muser.auth', '::1 - bambang-pc', 'biner@acquis.com'),
('2014-10-16 18:06:46', 'biner@acquis.com', 'muser.auth', '::1 - bambang-pc', 'biner@acquis.com'),
('2014-10-16 18:07:08', 'acquis@gmail.com', 'muser.auth', '::1 - bambang-pc', 'acquis@gmail.com'),
('2014-10-17 11:31:33', 'biner@acquis.com', 'muser.auth', '::1 - bambang-pc', 'biner@acquis.com'),
('2014-10-17 11:37:50', 'acquis@gmail.com', 'muser.auth', '::1 - bambang-pc', 'acquis@gmail.com'),
('2014-10-17 14:36:55', 'acquis@gmail.com', 'muser.auth', '::1 - bambang-pc', 'acquis@gmail.com'),
('2014-10-17 14:44:17', 'biner@acquis.com', 'muser.auth', '::1 - bambang-pc', 'biner@acquis.com'),
('2014-10-17 17:13:01', 'acquis@gmail.com', 'muser.auth', '::1 - bambang-pc', 'acquis@gmail.com'),
('2014-10-20 09:49:46', 'biner@acquis.com', 'muser.auth', '::1 - bambang-pc', 'biner@acquis.com'),
('2014-10-20 10:42:55', 'acquis@gmail.com', 'muser.auth', '::1 - bambang-pc', 'acquis@gmail.com'),
('2014-10-20 14:45:20', 'biner@acquis.com', 'muser.auth', '::1 - bambang-pc', 'biner@acquis.com'),
('2014-10-21 16:35:11', 'dendryjava@gmail.com', 'muser.auth', '::1 - ILC', 'dendryjava@gmail.com'),
('2014-10-21 16:48:49', 'dendryjava@gmail.com', 'muser.auth', '::1 - ILC', 'dendryjava@gmail.com'),
('2014-10-21 17:04:45', 'dendryjava@gmail.com', 'muser.auth', '::1 - ILC', 'dendryjava@gmail.com'),
('2014-10-21 17:10:20', 'dendr.yjava@gmail.com', 'muser.auth', '::1 - ILC', 'dendr.yjava@gmail.com'),
('2014-10-21 17:50:37', 'd.endryjava@gmail.com', 'muser.auth', '::1 - ILC', 'd.endryjava@gmail.com'),
('2014-10-21 18:13:56', 'de.ndryjava@gmail.com', 'muser.auth', '::1 - ILC', 'de.ndryjava@gmail.com'),
('2014-10-22 08:44:01', 'dendryj.ava@gmail.com', 'muser.auth', '::1 - ILC', 'dendryj.ava@gmail.com'),
('2014-10-22 08:47:56', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-22 09:15:06', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-10-23 08:49:52', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-23 09:28:14', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-10-23 13:12:36', 'primatama@acquis.com', 'muser.auth', '::1 - ILC', 'primatama@acquis.com'),
('2014-10-24 17:22:13', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-24 17:36:42', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-10-24 17:42:48', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-10-27 08:48:33', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-27 08:49:09', 'acquis@gmail.com', 'muser.logout', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-27 08:49:31', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-27 08:52:03', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-10-27 11:26:54', 'primatama@acquis.com', 'muser.auth', '::1 - ILC', 'primatama@acquis.com'),
('2014-10-27 11:35:42', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-10-27 13:47:15', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-27 14:19:03', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-10-27 17:15:02', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-28 09:05:52', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-28 09:41:20', 'sunday@acquis.com', 'muser.auth', '::1 - ILC', 'sunday@acquis.com'),
('2014-10-28 11:14:42', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-28 11:58:38', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-28 13:02:00', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-28 16:44:17', 'sunday@acquis.com', 'muser.auth', '::1 - ILC', 'sunday@acquis.com'),
('2014-10-28 16:59:28', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-10-28 17:14:02', 'sunday@acquis.com', 'muser.auth', '::1 - ILC', 'sunday@acquis.com'),
('2014-10-29 09:08:42', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-29 09:24:47', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-10-29 11:23:26', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-29 15:08:34', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-10-29 15:16:23', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-29 15:24:04', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-29 15:25:43', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-29 17:00:40', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-29 17:02:53', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-29 17:04:29', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-29 17:31:35', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-30 08:42:20', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-30 08:47:24', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-10-30 09:07:21', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-31 09:20:09', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-31 13:32:19', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-31 13:58:20', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-31 13:59:27', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-31 14:00:38', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-31 14:03:23', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-31 14:08:41', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-31 14:09:59', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-31 14:13:54', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-31 14:16:04', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-31 14:17:00', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-31 14:18:22', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-31 16:31:40', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-10-31 17:51:06', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-10-31 17:56:52', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-03 08:46:36', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-03 11:08:19', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-03 12:36:32', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-03 13:50:24', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-03 14:53:25', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-03 16:15:48', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-03 16:16:45', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-03 18:58:13', 'sunday@acquis.com', 'muser.auth', '::1 - ILC', 'sunday@acquis.com'),
('2014-11-03 20:11:15', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-03 20:13:14', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-03 20:13:15', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-04 09:04:19', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-04 13:56:46', 'sunday@acquis.com', 'muser.auth', '::1 - ILC', 'sunday@acquis.com'),
('2014-11-04 14:06:32', 'sunday@acquis.com', 'muser.auth', '::1 - ILC', 'sunday@acquis.com'),
('2014-11-04 14:07:39', 'sunday@acquis.com', 'muser.auth', '::1 - ILC', 'sunday@acquis.com'),
('2014-11-04 14:43:18', 'sunday@acquis.com', 'muser.auth', '::1 - ILC', 'sunday@acquis.com'),
('2014-11-04 14:52:24', 'sunday@acquis.com', 'muser.auth', '::1 - ILC', 'sunday@acquis.com'),
('2014-11-04 18:36:48', 'primatama@acquis.com', 'muser.auth', '::1 - ILC', 'primatama@acquis.com'),
('2014-11-04 18:58:46', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-05 08:37:40', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-05 10:26:17', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-05 10:26:43', 'sunday@acquis.com', 'muser.auth', '::1 - ILC', 'sunday@acquis.com'),
('2014-11-05 13:26:42', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-06 09:22:37', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-06 13:21:02', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-06 20:40:37', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-06 21:03:45', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-06 21:21:08', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-07 08:38:03', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-07 08:38:47', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-07 14:46:27', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-07 15:11:49', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-07 15:32:13', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-07 17:30:01', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-07 19:40:32', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-07 21:46:25', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-09 17:22:14', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-09 21:40:05', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-10 08:44:15', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-10 09:03:49', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-10 09:40:23', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-10 13:32:33', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-10 16:36:33', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-11 09:00:31', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-11 09:10:17', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-11 11:33:48', 'dendryja.va@gmail.com', 'muser.auth', '::1 - ILC', 'dendryja.va@gmail.com'),
('2014-11-11 11:44:09', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-11 11:53:47', 'dendryja.va@gmail.com', 'muser.auth', '::1 - ILC', 'dendryja.va@gmail.com'),
('2014-11-11 11:58:52', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-11 15:25:36', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-11 15:44:01', 'de.nd.ryjava@gmail.com', 'muser.auth', '192.168.1.162 - ILC', 'de.nd.ryjava@gmail.com'),
('2014-11-11 15:46:24', 'acquis@gmail.com', 'muser.auth', '192.168.1.60 - SVE', 'acquis@gmail.com'),
('2014-11-12 21:18:33', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-13 09:35:46', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-13 09:36:08', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-13 11:10:54', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-13 16:01:02', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-13 16:53:50', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-13 17:38:46', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-13 20:12:51', 'sunday@acquis.com', 'muser.auth', '::1 - ILC', 'sunday@acquis.com'),
('2014-11-13 20:15:28', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-13 20:28:04', 'sunday@acquis.com', 'muser.auth', '::1 - ILC', 'sunday@acquis.com'),
('2014-11-13 20:30:40', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-14 09:35:53', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-14 10:01:39', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-14 10:40:10', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-14 10:49:09', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-14 10:50:03', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-14 11:02:23', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-14 14:46:32', 'bam.bang.11dp@gmail.com', 'muser.auth', '::1 - ILC', 'bam.bang.11dp@gmail.com'),
('2014-11-14 14:49:21', 'acquis@gmail.com', 'muser.auth', '192.168.12.13 - SVE', 'acquis@gmail.com'),
('2014-11-14 14:58:42', 'acquis@gmail.com', 'muser.auth', '192.168.12.13 - SVE', 'acquis@gmail.com'),
('2014-11-17 09:20:25', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-17 09:27:40', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-17 14:44:25', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-17 15:19:40', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-17 16:07:57', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-17 16:08:03', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-17 16:18:03', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-17 16:23:39', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-17 19:26:13', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-17 19:32:29', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-17 19:38:10', 'sunday@acquis.com', 'muser.auth', '::1 - ILC', 'sunday@acquis.com'),
('2014-11-18 10:32:53', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-18 14:07:52', 'sunday@acquis.com', 'muser.auth', '::1 - ILC', 'sunday@acquis.com'),
('2014-11-18 14:11:35', 'sunday@acquis.com', 'muser.auth', '::1 - ILC', 'sunday@acquis.com'),
('2014-11-18 16:06:26', 'de.nd.ry.java@gmail.com', 'muser.auth', '::1 - ILC', 'de.nd.ry.java@gmail.com'),
('2014-11-18 16:07:11', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-18 16:12:58', 'acquis@gmail.com', 'muser.auth', '::1 - ILC', 'acquis@gmail.com'),
('2014-11-18 16:14:57', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com'),
('2014-11-18 16:21:25', 'de.nd.ry.java@gmail.com', 'muser.auth', '::1 - ILC', 'de.nd.ry.java@gmail.com'),
('2014-11-18 16:30:15', 'biner@acquis.com', 'muser.auth', '::1 - ILC', 'biner@acquis.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_role_menu`
--

CREATE TABLE IF NOT EXISTS `t_role_menu` (
  `ref_menu` int(11) NOT NULL,
  `ref_role` int(11) NOT NULL,
  PRIMARY KEY (`ref_menu`,`ref_role`),
  KEY `t_role_menu_ibfk_1` (`ref_role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_role_menu`
--

INSERT INTO `t_role_menu` (`ref_menu`, `ref_role`) VALUES
(1, 1),
(3, 1),
(4, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(81, 1),
(82, 1),
(83, 1),
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
(1, 8),
(3, 8),
(4, 8),
(60, 8),
(61, 8),
(62, 8),
(63, 8),
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
(95, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
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
-- Dumping data untuk tabel `t_user`
--

INSERT INTO `t_user` (`username`, `password`, `ref_role`, `nama`, `alamat`, `email`, `nip`, `status`, `last_login`, `last_logout`, `last_ip`, `insert_datetime`, `update_datetime`, `sbu`, `jenis`, `guid`, `jabatan`) VALUES
('acquis@gmail.com', 'c1ac0357cf25650e45d2ab62dca249c2', 1, 'Admin', NULL, 'acquis@gmail.com', NULL, 1, '2014-11-18 16:12:58', '2014-10-27 08:49:09', '::1 - ILC', NULL, NULL, 1, NULL, NULL, '002'),
('admin@acquis.com', 'c1ac0357cf25650e45d2ab62dca249c2', 1, 'Admin I', NULL, 'admin@acquis.com', '2', 1, '2014-09-23 14:43:43', '2014-09-23 15:39:02', '::1 - EzikGuantengBGt', '2014-09-22 11:10:53', '2014-09-23 13:24:24', 1, NULL, '1', '002'),
('bam.bang.11dp@gmail.com', '2e2254fafb5abbc3fec9547a058327b3', 8, 'PT_HANISAH_SEJATI', NULL, 'bam.bang.11dp@gmail.com', NULL, 1, '2014-11-14 14:46:31', NULL, '::1 - ILC', NULL, NULL, NULL, NULL, NULL, ''),
('biner@acquis.com', 'c1ac0357cf25650e45d2ab62dca249c2', 8, 'PT.Biner Teknologi', NULL, 'biner@acquis.com', '123456', 1, '2014-11-18 16:30:15', '2014-10-08 17:32:15', '::1 - ILC', NULL, '2014-08-19 09:59:32', 1, NULL, '1', ''),
('d.endryjava@gmail.com', '8017bd2c5eec5a526a142bdac44f5153', 8, 'PT_ASDJASHD', NULL, 'd.endryjava@gmail.com', NULL, 1, '2014-10-21 17:50:37', NULL, '::1 - ILC', NULL, NULL, NULL, NULL, NULL, ''),
('de.nd.ry.java@gmail.com', '47c9ea13b930d719e8b8437ce6205f8f', 8, 'PT_MAJU_SENTOSA', NULL, NULL, NULL, 1, '2014-11-18 16:21:25', NULL, '::1 - ILC', NULL, NULL, NULL, NULL, NULL, ''),
('de.nd.ryjava@gmail.com', '52fe13dbe094879ef90e7d3dc66c3d19', 8, 'PT_SURYA_SAPUTRA', NULL, 'de.nd.ryjava@gmail.com', NULL, 1, '2014-11-11 15:44:01', NULL, '192.168.1.162 - ILC', NULL, NULL, NULL, NULL, NULL, ''),
('de.ndryjava@gmail.com', '85809474afca2334201fe9a8b31cc2b7', 8, 'PT_ASKDAHSKJDH', NULL, 'de.ndryjava@gmail.com', NULL, 1, '2014-10-21 18:13:56', NULL, '::1 - ILC', NULL, NULL, NULL, NULL, NULL, ''),
('dend.ryjava@gmail.com', '36f4ae7b433f8388693cd6b3562fedce', 8, 'PT_ASDKJHSAK', NULL, 'dend.ryjava@gmail.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('dendr.yjava@gmail.com', 'ca5040dd916d39fc206afc1ab186d013', 8, 'PT_ASDKJSA', NULL, 'dendr.yjava@gmail.com', NULL, 1, '2014-10-21 17:10:20', NULL, '::1 - ILC', NULL, NULL, NULL, NULL, NULL, ''),
('dendry.java@gmail.com', 'deac881a3bc5239f4023c523feb17e92', 8, 'PT_SADJHGJ', NULL, 'dendry.java@gmail.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('dendryj.ava@gmail.com', 'af49fa444ca26abb53e81129d12355a1', 8, 'PT_ANGKUH', NULL, 'dendryj.ava@gmail.com', NULL, 1, '2014-10-22 08:44:01', NULL, '::1 - ILC', NULL, NULL, NULL, NULL, NULL, ''),
('dendryja.va@gmail.com', 'f2cb609dbe356c78d2721ad48ec6cffb', 8, 'PT_SURYA_SEJAHTERA', NULL, 'dendryja.va@gmail.com', NULL, 1, '2014-11-11 11:53:47', NULL, '::1 - ILC', NULL, NULL, NULL, NULL, NULL, ''),
('dendryjav.a@gmail.com', '6a1d3332d220eb06497f884a699a3630', 8, 'PT_HHHHHHH', NULL, 'dendryjav.a@gmail.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('dendryjava@gmail.com', '797f03431c8ae5811be6ebd8519b24ab', 8, 'PT_GA_MAJU_MAJU', NULL, 'dendryjava@gmail.com', NULL, 1, '2014-10-21 17:04:45', NULL, '::1 - ILC', NULL, NULL, NULL, NULL, NULL, ''),
('donna.donnyhandoyo@gmail.com', '92e5df12c0d0ace8af1f66924a988a02', 8, 'PERUSAHAAN1', NULL, 'donna.donnyhandoyo@gmail.com', NULL, 1, '2014-10-08 18:30:30', '2014-10-08 18:50:33', '::1 - SVE', NULL, NULL, NULL, NULL, NULL, ''),
('donnadonny.handoyo@gmail.com', '538133421f2f8875d0d9a53f0b23f4f1', 8, 'PERUSAHAAN2', NULL, 'donnadonny.handoyo@gmail.com', NULL, 1, '2014-10-08 18:51:00', '2014-10-08 18:29:59', '::1 - SVE', NULL, NULL, NULL, NULL, NULL, ''),
('paljaya@acquis.com', 'c1ac0357cf25650e45d2ab62dca249c2', 8, 'PT.Paljaya', NULL, 'paljaya@acquis.com', '123456', 1, '2014-10-03 13:40:28', '2014-10-03 14:17:37', '127.0.0.1 - EzikGuantengBGt', NULL, '2014-06-20 16:44:59', 1, NULL, '1', ''),
('primatama@acquis.com', 'c1ac0357cf25650e45d2ab62dca249c2', 8, 'PT. Primatama', NULL, 'primatama@acquis.com', '12345', 1, '2014-11-04 18:36:47', '2014-09-30 16:45:50', '::1 - ILC', '2014-04-07 13:58:03', NULL, 1, NULL, '1', ''),
('rulls.inside@gmail.com', '37889f9c3a015532b422ac3bfaa5138d', 8, 'PT._GARUDA_PERKASA', NULL, 'rulls.inside@gmail.com', NULL, 1, '2014-09-26 11:13:52', '2014-09-26 11:36:03', '::1 - EzikGuantengBGt', NULL, NULL, NULL, NULL, NULL, ''),
('shelvimarliya@gmail.com', '2df989d6fe71e3975235915f4e95d322', 8, 'PT._MENGEJUTKAN_RAKYAT', NULL, 'shelvimarliya@gmail.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('sukra@acquis.com', 'c1ac0357cf25650e45d2ab62dca249c2', 8, 'PT.Sukra', NULL, 'sukra@acquis.com', '1234', 1, '2014-09-26 11:09:44', '2014-09-26 11:13:05', '::1 - EzikGuantengBGt', NULL, '2014-07-02 16:19:51', 1, NULL, '2', ''),
('sunday@acquis.com', 'c1ac0357cf25650e45d2ab62dca249c2', 8, 'PT.Sunday', NULL, 'sunday@acquis.com', '123456', 1, '2014-11-18 14:11:35', '2014-09-01 13:29:10', '::1 - ILC', NULL, '2014-06-20 16:44:59', 1, NULL, '1', '');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `br_vendor_kat_usaha`
--
ALTER TABLE `br_vendor_kat_usaha`
  ADD CONSTRAINT `fk_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `r_ven_kategori_usaha` (`kode_ref`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_perusahaan` FOREIGN KEY (`kode_perusahaan`) REFERENCES `main_vendor` (`kode_perusahaan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `main_config_lelang`
--
ALTER TABLE `main_config_lelang`
  ADD CONSTRAINT `fk_id_kerjaan` FOREIGN KEY (`id_pekerjaan`) REFERENCES `main_pekerjaan` (`id_pekerjaan`);

--
-- Ketidakleluasaan untuk tabel `main_inventory_received`
--
ALTER TABLE `main_inventory_received`
  ADD CONSTRAINT `main_inventory_received_ibfk_1` FOREIGN KEY (`id_main_inventory`) REFERENCES `main_inventory` (`kode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `main_inventory_received_ibfk_2` FOREIGN KEY (`fk_br_mainpeserta_inv`) REFERENCES `br_rel_mainpeserta_inventory` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `main_pekerjaan`
--
ALTER TABLE `main_pekerjaan`
  ADD CONSTRAINT `fk_lelang` FOREIGN KEY (`id_pemenang`) REFERENCES `main_vendor` (`kode_perusahaan`);

--
-- Ketidakleluasaan untuk tabel `main_pembayaran_termin`
--
ALTER TABLE `main_pembayaran_termin`
  ADD CONSTRAINT `fk_id_pekerjaan` FOREIGN KEY (`id_pekerjaan`) REFERENCES `main_pekerjaan` (`id_pekerjaan`);

--
-- Ketidakleluasaan untuk tabel `main_peserta_lelang`
--
ALTER TABLE `main_peserta_lelang`
  ADD CONSTRAINT `fk_perusahaan_lelang` FOREIGN KEY (`kode_perusahaan`) REFERENCES `main_vendor` (`kode_perusahaan`),
  ADD CONSTRAINT `id_kerja_lelang` FOREIGN KEY (`id_pekerjaan`) REFERENCES `main_pekerjaan` (`id_pekerjaan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `main_vendor_dokumen`
--
ALTER TABLE `main_vendor_dokumen`
  ADD CONSTRAINT `fk_kode_perusahaan` FOREIGN KEY (`kode_perusahaan`) REFERENCES `main_vendor` (`kode_perusahaan`);

--
-- Ketidakleluasaan untuk tabel `t_role_menu`
--
ALTER TABLE `t_role_menu`
  ADD CONSTRAINT `t_role_menu_ibfk_1` FOREIGN KEY (`ref_role`) REFERENCES `tr_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_role_menu_ibfk_2` FOREIGN KEY (`ref_menu`) REFERENCES `tr_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `t_user`
--
ALTER TABLE `t_user`
  ADD CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`ref_role`) REFERENCES `tr_role` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
