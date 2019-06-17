-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 25. Mei 2019 jam 22:37
-- Versi Server: 5.1.41
-- Versi PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ahp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ahp_data_prodi`
--

CREATE TABLE IF NOT EXISTS `ahp_data_prodi` (
  `id_prodi` char(2) NOT NULL,
  `nama_prodi` varchar(30) NOT NULL,
  `gelar` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ahp_data_prodi`
--

INSERT INTO `ahp_data_prodi` (`id_prodi`, `nama_prodi`, `gelar`) VALUES
('A1', 'Pendidikan Agama Islam', 'S1'),
('A2', 'Pendidikan Fisika', 'S1'),
('A3', 'Pendidikan Guru MI/SD', 'S1'),
('A4', 'Pendidikan Bahasa Arab', 'S1'),
('A5', 'Pendidikan Guru PAUD/TK', 'S1'),
('B1', 'Komunikasi dan Penyiaran Islam', 'S1'),
('B2', 'Ilmu Politik', 'S1'),
('C1', 'Hukum Keluarga', 'S1'),
('C2', 'Hukum Ekonomi Islam', 'S1'),
('C3', 'Ilmu Al-Qur''an dan Tafsir', 'S1'),
('C4', 'Ilmu Hukum', 'S1'),
('C5', 'Perbankan Syariah', 'S1'),
('D1', 'Akutansi', 'S1'),
('D2', 'Manajemen', 'S1'),
('E1', 'Sastra Inggris', 'S1'),
('E2', 'Pendidikan Bahasa Inggris', 'S1'),
('F1', 'Arsitektur', 'S1'),
('F2', 'Teknik Sipil', 'S1'),
('F3', 'Teknik Informatika', 'S1'),
('F4', 'Sistem Informatika', 'D3'),
('F5', 'Teknik Manufaktur', 'D3'),
('G1', 'Keperawatan', 'D3'),
('G2', 'Kebidanan', 'D3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE IF NOT EXISTS `alternatif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id`, `nama`) VALUES
(52, 'Teknik Informatika'),
(53, 'PGMI'),
(54, 'KPI'),
(55, 'manajemen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ir`
--

CREATE TABLE IF NOT EXISTS `ir` (
  `jumlah` int(11) NOT NULL,
  `nilai` float NOT NULL,
  PRIMARY KEY (`jumlah`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ir`
--

INSERT INTO `ir` (`jumlah`, `nilai`) VALUES
(1, 0),
(2, 0),
(3, 0.58),
(4, 0.9),
(5, 1.12),
(6, 1.24),
(7, 1.32),
(8, 1.41),
(9, 1.45),
(10, 1.49),
(11, 1.51),
(12, 1.48),
(13, 1.56),
(14, 1.57),
(15, 1.59);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE IF NOT EXISTS `kriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `nama`) VALUES
(60, 'Kemampuan'),
(61, 'Minat'),
(62, 'Kepribadian'),
(63, 'Peluang Karir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perbandingan_alternatif`
--

CREATE TABLE IF NOT EXISTS `perbandingan_alternatif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alternatif1` int(11) NOT NULL,
  `alternatif2` int(11) NOT NULL,
  `pembanding` int(11) NOT NULL,
  `nilai` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=178 ;

--
-- Dumping data untuk tabel `perbandingan_alternatif`
--

INSERT INTO `perbandingan_alternatif` (`id`, `alternatif1`, `alternatif2`, `pembanding`, `nilai`) VALUES
(159, 54, 55, 60, 1),
(165, 54, 55, 61, 0.5),
(164, 53, 55, 61, 1),
(171, 54, 55, 62, 1),
(170, 53, 55, 62, 1),
(169, 53, 54, 62, 0.5),
(158, 53, 55, 60, 1),
(163, 53, 54, 61, 1),
(157, 53, 54, 60, 3),
(168, 52, 55, 62, 1),
(167, 52, 54, 62, 3),
(166, 52, 53, 62, 2),
(156, 52, 55, 60, 0.5),
(155, 52, 54, 60, 1),
(154, 52, 53, 60, 0.333333),
(162, 52, 55, 61, 0.5),
(161, 52, 54, 61, 1),
(160, 52, 53, 61, 1),
(172, 52, 53, 63, 1),
(173, 52, 54, 63, 1),
(174, 52, 55, 63, 1),
(175, 53, 54, 63, 1),
(176, 53, 55, 63, 1),
(177, 54, 55, 63, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perbandingan_kriteria`
--

CREATE TABLE IF NOT EXISTS `perbandingan_kriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kriteria1` int(11) NOT NULL,
  `kriteria2` int(11) NOT NULL,
  `nilai` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data untuk tabel `perbandingan_kriteria`
--

INSERT INTO `perbandingan_kriteria` (`id`, `kriteria1`, `kriteria2`, `nilai`) VALUES
(34, 60, 61, 6),
(36, 61, 62, 0.3333),
(35, 60, 62, 4),
(37, 60, 63, 8),
(38, 61, 63, 2),
(39, 62, 63, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pv_alternatif`
--

CREATE TABLE IF NOT EXISTS `pv_alternatif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=148 ;

--
-- Dumping data untuk tabel `pv_alternatif`
--

INSERT INTO `pv_alternatif` (`id`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(135, 55, 60, 0.278274),
(139, 55, 61, 0.345833),
(143, 55, 62, 0.237857),
(142, 54, 62, 0.2207),
(134, 54, 60, 0.18006),
(138, 54, 61, 0.204167),
(137, 53, 61, 0.245833),
(141, 53, 62, 0.171012),
(133, 53, 60, 0.397321),
(132, 52, 60, 0.144345),
(136, 52, 61, 0.204167),
(140, 52, 62, 0.370432),
(144, 52, 63, 0.25),
(145, 53, 63, 0.25),
(146, 54, 63, 0.25),
(147, 55, 63, 0.25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pv_kriteria`
--

CREATE TABLE IF NOT EXISTS `pv_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL,
  PRIMARY KEY (`id_kriteria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pv_kriteria`
--

INSERT INTO `pv_kriteria` (`id_kriteria`, `nilai`) VALUES
(60, 0.604482),
(61, 0.0953977),
(62, 0.245664),
(63, 0.0544564);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ranking`
--

CREATE TABLE IF NOT EXISTS `ranking` (
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL,
  PRIMARY KEY (`id_alternatif`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ranking`
--

INSERT INTO `ranking` (`id_alternatif`, `nilai`) VALUES
(52, 0.211347),
(53, 0.319251),
(54, 0.196152),
(55, 0.27325);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
