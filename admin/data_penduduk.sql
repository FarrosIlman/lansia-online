-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 03:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_penduduk`
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
-- Table structure for table `tb_datang`
--

CREATE TABLE `tb_datang` (
  `id_datang` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama_datang` varchar(20) NOT NULL,
  `jekel` enum('LK','PR') NOT NULL,
  `tgl_datang` date NOT NULL,
  `pelapor` int(11) NOT NULL
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
-- Table structure for table `tb_lahir`
--

CREATE TABLE `tb_lahir` (
  `id_lahir` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tgl_lh` date NOT NULL,
  `jekel` enum('LK','PR') NOT NULL,
  `id_kk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_mendu`
--

CREATE TABLE `tb_mendu` (
  `id_mendu` int(11) NOT NULL,
  `id_pdd` int(11) NOT NULL,
  `tgl_mendu` date NOT NULL,
  `sebab` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `nama_panggilan` varchar(20) NOT NULL,
  `jekel` enum('Laki-Laki','Perempuan') NOT NULL,
  `tempat_lh` varchar(15) NOT NULL,
  `tgl_lh` date NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `kawin` enum('Nikah','Tidak menikah','Janda','Duda') NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `tempat_tinggal` enum('Rumah sendiri','Panti sosial','Rumah anak','Tidak tetap','Lain-lain') NOT NULL,
  `agama` varchar(15) NOT NULL,
  `suku` varchar(20) NOT NULL,
  `didik_akhir` enum('Tidak sekolah','SD','SMP/MTS','SMA/SMK','D3','S1','S2','S3') NOT NULL,
  `nik` varchar(20) NOT NULL,
  `gol_d` enum('A','B','O','AB') NOT NULL,
  `hobi` varchar(30) NOT NULL,
  `bpjs` int(30) DEFAULT NULL,
  `asuransi_lain` varchar(50) DEFAULT NULL,
  `sumber_dn` varchar(30) NOT NULL,
  `status` enum('Ada','Meninggal','Pindah') NOT NULL,
  `id_penanggung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penanggung`
--

CREATE TABLE `tb_penanggung` (
  `id_penanggung` int(11) NOT NULL,
  `nama_penanggung` varchar(50) NOT NULL,
  `hub_lansia` varchar(100) NOT NULL,
  `alamat_p` varchar(50) NOT NULL,
  `kode_pos_p` int(20) NOT NULL,
  `no_telepon_p` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` enum('Administrator','Kaur Pemerintah') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(1, 'Parosz', 'admin', 'admin', 'Administrator'),
(3, 'Imas', 'admin2', 'admin2', 'Kaur Pemerintah'),
(4, 'haifanp', 'haifan', 'haifan', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pindah`
--

CREATE TABLE `tb_pindah` (
  `id_pindah` int(11) NOT NULL,
  `id_pdd` int(11) NOT NULL,
  `tgl_pindah` date NOT NULL,
  `alasan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `tb_datang`
--
ALTER TABLE `tb_datang`
  ADD PRIMARY KEY (`id_datang`),
  ADD KEY `pelapor` (`pelapor`);

--
-- Indexes for table `tb_kk`
--
ALTER TABLE `tb_kk`
  ADD PRIMARY KEY (`id_kk`);

--
-- Indexes for table `tb_lahir`
--
ALTER TABLE `tb_lahir`
  ADD PRIMARY KEY (`id_lahir`),
  ADD KEY `id_kk` (`id_kk`);

--
-- Indexes for table `tb_mendu`
--
ALTER TABLE `tb_mendu`
  ADD PRIMARY KEY (`id_mendu`),
  ADD KEY `id_pdd` (`id_pdd`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`),
  ADD KEY `FK_penanggungpasien` (`id_penanggung`);

--
-- Indexes for table `tb_penanggung`
--
ALTER TABLE `tb_penanggung`
  ADD PRIMARY KEY (`id_penanggung`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tb_pindah`
--
ALTER TABLE `tb_pindah`
  ADD PRIMARY KEY (`id_pindah`),
  ADD KEY `id_pdd` (`id_pdd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_datang`
--
ALTER TABLE `tb_datang`
  MODIFY `id_datang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kk`
--
ALTER TABLE `tb_kk`
  MODIFY `id_kk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_lahir`
--
ALTER TABLE `tb_lahir`
  MODIFY `id_lahir` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_mendu`
--
ALTER TABLE `tb_mendu`
  MODIFY `id_mendu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_penanggung`
--
ALTER TABLE `tb_penanggung`
  MODIFY `id_penanggung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_pindah`
--
ALTER TABLE `tb_pindah`
  MODIFY `id_pindah` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD CONSTRAINT `tb_anggota_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `tb_pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_anggota_ibfk_2` FOREIGN KEY (`id_kk`) REFERENCES `tb_kk` (`id_kk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_datang`
--
ALTER TABLE `tb_datang`
  ADD CONSTRAINT `tb_datang_ibfk_1` FOREIGN KEY (`pelapor`) REFERENCES `tb_pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_lahir`
--
ALTER TABLE `tb_lahir`
  ADD CONSTRAINT `tb_lahir_ibfk_1` FOREIGN KEY (`id_kk`) REFERENCES `tb_kk` (`id_kk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_mendu`
--
ALTER TABLE `tb_mendu`
  ADD CONSTRAINT `tb_mendu_ibfk_1` FOREIGN KEY (`id_pdd`) REFERENCES `tb_pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pindah`
--
ALTER TABLE `tb_pindah`
  ADD CONSTRAINT `tb_pindah_ibfk_1` FOREIGN KEY (`id_pdd`) REFERENCES `tb_pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
