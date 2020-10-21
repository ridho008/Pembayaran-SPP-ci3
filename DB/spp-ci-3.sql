-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 21, 2020 at 03:32 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spp-ci-3`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`) VALUES
(1, 'Ridho Surya'),
(2, 'Hamzah Saputra'),
(3, 'Wahyudi'),
(4, 'Harun'),
(5, 'Rana');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `tahun_ajaran` varchar(50) NOT NULL,
  `biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nama_siswa`, `kelas`, `tahun_ajaran`, `biaya`) VALUES
(10, 2147483647, 'Ridho Surya', 'II', '2017/2018', 300000),
(11, 398371098, 'Harun Saputra', 'IV', '2017/2018', 300000),
(12, 394830198, 'Kakuki', 'III', '2017/2018', 300000),
(13, 483928198, 'Fanita', 'II', '2017/2018', 300000);

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_siswa` int(11) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `jatuh_tempo` date NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `no_bayar` varchar(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `jml` int(11) NOT NULL,
  `ket` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_siswa`, `id_spp`, `jatuh_tempo`, `bulan`, `no_bayar`, `tgl_bayar`, `jml`, `ket`, `id_user`) VALUES
(10, 1, '2017-07-10', 'Juli 2017', '', '0000-00-00', 300000, 'Belum Lunas', 1),
(10, 2, '2017-08-10', 'Agustus 2017', '2010200001', '2020-10-20', 300000, 'Lunas', 1),
(10, 3, '2017-09-10', 'September 2017', '2010200001', '2020-10-20', 300000, 'Lunas', 1),
(10, 4, '2017-10-10', 'Oktober 2017', '2010200001', '2020-10-20', 300000, 'Lunas', 1),
(10, 5, '2017-11-10', 'November 2017', '', '0000-00-00', 300000, '', 1),
(10, 6, '2017-12-10', 'Desember 2017', '2020-10-20', '2020-10-20', 300000, 'Lunas', 1),
(10, 7, '2018-01-10', 'Januari 2018', '', '0000-00-00', 300000, '', 1),
(10, 8, '2018-02-10', 'Februari 2018', '2020102000', '2020-10-20', 300000, 'Lunas', 1),
(10, 9, '2018-03-10', 'Maret 2018', '', '0000-00-00', 300000, '', 1),
(10, 10, '2018-04-10', 'April 2018', '', '0000-00-00', 300000, '', 1),
(10, 11, '2018-05-10', 'Mei 2018', '', '0000-00-00', 300000, '', 1),
(10, 12, '2018-06-10', 'Juni 2018', '', '0000-00-00', 300000, '', 1),
(11, 13, '2017-07-10', 'Juli 2017', '2010210001', '2020-10-21', 300000, 'Lunas', 1),
(11, 14, '2017-08-10', 'Agustus 2017', '2010210001', '2020-10-21', 300000, 'Lunas', 1),
(11, 15, '2017-09-10', 'September 2017', '', '0000-00-00', 300000, '', 1),
(11, 16, '2017-10-10', 'Oktober 2017', '', '0000-00-00', 300000, '', 1),
(11, 17, '2017-11-10', 'November 2017', '', '0000-00-00', 300000, '', 1),
(11, 18, '2017-12-10', 'Desember 2017', '', '0000-00-00', 300000, '', 1),
(11, 19, '2018-01-10', 'Januari 2018', '', '0000-00-00', 300000, '', 1),
(11, 20, '2018-02-10', 'Februari 2018', '', '0000-00-00', 300000, '', 1),
(11, 21, '2018-03-10', 'Maret 2018', '', '0000-00-00', 300000, '', 1),
(11, 22, '2018-04-10', 'April 2018', '', '0000-00-00', 300000, '', 1),
(11, 23, '2018-05-10', 'Mei 2018', '', '0000-00-00', 300000, '', 1),
(11, 24, '2018-06-10', 'Juni 2018', '', '0000-00-00', 300000, '', 1),
(12, 25, '2017-07-10', 'Juli 2017', '', '0000-00-00', 300000, '', 1),
(12, 26, '2017-08-10', 'Agustus 2017', '2010200001', '2020-10-20', 300000, 'Lunas', 1),
(12, 27, '2017-09-10', 'September 2017', '', '0000-00-00', 300000, '', 1),
(12, 28, '2017-10-10', 'Oktober 2017', '', '0000-00-00', 300000, '', 1),
(12, 29, '2017-11-10', 'November 2017', '', '0000-00-00', 300000, '', 1),
(12, 30, '2017-12-10', 'Desember 2017', '', '0000-00-00', 300000, '', 1),
(12, 31, '2018-01-10', 'Januari 2018', '', '0000-00-00', 300000, '', 1),
(12, 32, '2018-02-10', 'Februari 2018', '', '0000-00-00', 300000, '', 1),
(12, 33, '2018-03-10', 'Maret 2018', '', '0000-00-00', 300000, '', 1),
(12, 34, '2018-04-10', 'April 2018', '', '0000-00-00', 300000, '', 1),
(12, 35, '2018-05-10', 'Mei 2018', '', '0000-00-00', 300000, '', 1),
(12, 36, '2018-06-10', 'Juni 2018', '', '0000-00-00', 300000, '', 1),
(13, 37, '2017-07-10', 'Juli 2017', '2010210001', '2020-10-21', 300000, 'Lunas', 2),
(13, 38, '2017-08-10', 'Agustus 2017', '2010210001', '2020-10-21', 300000, 'Lunas', 2),
(13, 39, '2017-09-10', 'September 2017', '2010210001', '2020-10-21', 300000, 'Lunas', 2),
(13, 40, '2017-10-10', 'Oktober 2017', '2010210001', '2020-10-21', 300000, 'Lunas', 2),
(13, 41, '2017-11-10', 'November 2017', '2010210001', '2020-10-21', 300000, 'Lunas', 2),
(13, 42, '2017-12-10', 'Desember 2017', '', '0000-00-00', 300000, '', 2),
(13, 43, '2018-01-10', 'Januari 2018', '', '0000-00-00', 300000, '', 2),
(13, 44, '2018-02-10', 'Februari 2018', '', '0000-00-00', 300000, '', 2),
(13, 45, '2018-03-10', 'Maret 2018', '', '0000-00-00', 300000, '', 2),
(13, 46, '2018-04-10', 'April 2018', '', '0000-00-00', 300000, '', 2),
(13, 47, '2018-05-10', 'Mei 2018', '', '0000-00-00', 300000, '', 2),
(13, 48, '2018-06-10', 'Juni 2018', '', '0000-00-00', 300000, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(256) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Ridho Surya'),
(2, 'harun', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Harun');

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `kelas` varchar(50) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`kelas`, `id_guru`) VALUES
('II', 1),
('I', 2),
('III', 2),
('IV', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `kelas` (`kelas`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`),
  ADD KEY `spp_ibfk_2` (`id_siswa`),
  ADD KEY `spp_ibfk_1` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`kelas`),
  ADD KEY `id_guru` (`id_guru`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`kelas`) REFERENCES `wali_kelas` (`kelas`) ON DELETE CASCADE;

--
-- Constraints for table `spp`
--
ALTER TABLE `spp`
  ADD CONSTRAINT `spp_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `spp_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD CONSTRAINT `wali_kelas_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
