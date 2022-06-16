-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2022 at 04:43 PM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id19110042_db_lansia`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `id_anggota` int(11) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `hubungan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kk`
--

CREATE TABLE `tb_kk` (
  `id_kk` int(11) NOT NULL,
  `no_kk` varchar(30) NOT NULL,
  `kepala` varchar(20) NOT NULL,
  `desa` varchar(20) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `kec` varchar(20) NOT NULL,
  `kab` varchar(20) NOT NULL,
  `prov` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `nama_panggilan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `jekel` enum('Laki-laki','Perempuan','-') COLLATE utf8_unicode_ci DEFAULT '-',
  `tempat_lh` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lh` date DEFAULT NULL,
  `pekerjaan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `kawin` enum('Nikah','Tidak menikah','Janda','Duda','-') COLLATE utf8_unicode_ci DEFAULT '-',
  `alamat` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `kode_pos` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `no_telepon` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tempat_tinggal` enum('Rumah sendiri','Panti sosial','Rumah anak','Tidak tetap','Lain-lain') COLLATE utf8_unicode_ci DEFAULT 'Lain-lain',
  `agama` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `suku` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `didik_akhir` enum('Tidak sekolah','SD','SMP/MTS','SMA/SMK','D3','S1','S2','S3') COLLATE utf8_unicode_ci DEFAULT 'Tidak sekolah',
  `nik` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gol_d` enum('A','B','O','AB','-') COLLATE utf8_unicode_ci DEFAULT '-',
  `hobi` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `bpjs` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `asuransi_lain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sumber_dn` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Ada','Meninggal','Pindah') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nama_panggilan`, `jekel`, `tempat_lh`, `tgl_lh`, `pekerjaan`, `kawin`, `alamat`, `kode_pos`, `no_telepon`, `tempat_tinggal`, `agama`, `suku`, `didik_akhir`, `nik`, `gol_d`, `hobi`, `bpjs`, `asuransi_lain`, `sumber_dn`, `status`) VALUES
(1, 'Havanaaa', '', 'Perempuan', '', '2022-06-15', '', 'Nikah', '', '', '', 'Rumah sendiri', '', '', 'SD', '', 'A', '', '', '', '', 'Ada'),
(5, 'Dobleh', '', 'Laki-laki', '', '2022-06-15', '', 'Nikah', '', '', '', 'Rumah sendiri', '', '', 'SD', '', 'A', '', '', '', '', 'Ada'),
(6, 'Balmond', 'Babal', '-', '', '2022-06-03', '', '-', '', '', '', 'Lain-lain', '', '', 'Tidak sekolah', '', '-', '', '', '', '', 'Ada'),
(8, 'AAA', '', '-', '', '2022-06-16', '', '-', '', '', '', 'Lain-lain', '', '', 'Tidak sekolah', '', '-', '', '', '', '', 'Ada');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penanggung`
--

CREATE TABLE `tb_penanggung` (
  `id_penanggung` int(11) NOT NULL,
  `nama_penanggung` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hub_lansia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alamat_p` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kode_pos_p` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_telepon_p` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_pasien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_penanggung`
--

INSERT INTO `tb_penanggung` (`id_penanggung`, `nama_penanggung`, `hub_lansia`, `alamat_p`, `kode_pos_p`, `no_telepon_p`, `id_pasien`) VALUES
(1, 'Oh nana', '', '', '', '', 1),
(2, 'dolor', '', '', '', '', 5),
(3, 'A', '', '', '', '', 6),
(5, 'S', '', '', '', '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `level` enum('Administrator','Kaur Pemerintah') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(1, 'Parosz', 'admin', 'admin', 'Administrator'),
(2, 'Haifan', 'haifan', 'haifan', 'Administrator'),
(3, 'Hao', 'hao', 'hao', 'Kaur Pemerintah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD KEY `tb_anggota_ibfk_1` (`id_pasien`),
  ADD KEY `id_kk` (`id_kk`);

--
-- Indexes for table `tb_kk`
--
ALTER TABLE `tb_kk`
  ADD PRIMARY KEY (`id_kk`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `tb_penanggung`
--
ALTER TABLE `tb_penanggung`
  ADD PRIMARY KEY (`id_penanggung`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_penanggung`
--
ALTER TABLE `tb_penanggung`
  MODIFY `id_penanggung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
