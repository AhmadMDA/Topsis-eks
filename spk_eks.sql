-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 08:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_eks`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_alternatif`
--

CREATE TABLE `tab_alternatif` (
  `id_alternatif` int(50) NOT NULL,
  `nama_alternatif` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_alternatif`
--

INSERT INTO `tab_alternatif` (`id_alternatif`, `nama_alternatif`) VALUES
(1, 'A1 - Hairuni'),
(2, 'A2 - Uci Krisnawati '),
(3, 'A3 - Ramdani Nugroho'),
(4, 'A4 - Khairunnisa'),
(5, 'A5 - Marlina'),
(6, 'A6 - Nur Jayani'),
(7, 'A7 - Tri Utami'),
(8, 'A8 - Dahlia Natalia'),
(9, 'A9 - Revi Suciyanti'),
(10, 'A10 - Nurhayati');

-- --------------------------------------------------------

--
-- Table structure for table `tab_kriteria`
--

CREATE TABLE `tab_kriteria` (
  `id_kriteria` int(10) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `bobot` float NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_kriteria`
--

INSERT INTO `tab_kriteria` (`id_kriteria`, `nama_kriteria`, `bobot`, `status`) VALUES
(1, 'C1 - Kreatifitas', 2, 'Benefit'),
(2, 'C2 - Absensi', 4, 'Cost'),
(3, 'C3 - Kerja Sama', 2, 'Benefit'),
(4, 'C4 - Tanggung Jawab', 4, 'Benefit'),
(5, 'C5 - Tata Krama', 4, 'Benefit'),
(6, 'C6 - Ketrampilan', 3, 'Benefit'),
(7, 'C7 - Kinerja', 4, 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `tab_topsis`
--

CREATE TABLE `tab_topsis` (
  `id_alternatif` int(10) NOT NULL,
  `id_kriteria` int(10) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_topsis`
--

INSERT INTO `tab_topsis` (`id_alternatif`, `id_kriteria`, `nilai`) VALUES
(1, 1, 3),
(1, 2, 4),
(1, 3, 3),
(1, 4, 3),
(1, 5, 3),
(1, 6, 4),
(1, 7, 3),
(2, 1, 2),
(2, 2, 3),
(2, 3, 2),
(2, 4, 3),
(2, 5, 2),
(2, 6, 3),
(2, 7, 3),
(3, 1, 4),
(3, 2, 4),
(3, 3, 3),
(3, 4, 2),
(3, 5, 2),
(3, 6, 4),
(3, 7, 4),
(4, 1, 2),
(4, 2, 3),
(4, 3, 2),
(4, 4, 4),
(4, 5, 3),
(4, 6, 3),
(4, 7, 2),
(5, 1, 3),
(5, 2, 2),
(5, 3, 3),
(5, 4, 4),
(5, 5, 2),
(5, 6, 3),
(5, 7, 4),
(6, 1, 4),
(6, 2, 4),
(6, 3, 3),
(6, 4, 4),
(6, 5, 2),
(6, 6, 3),
(6, 7, 4),
(7, 1, 3),
(7, 2, 3),
(7, 3, 3),
(7, 4, 2),
(7, 5, 2),
(7, 6, 4),
(7, 7, 3),
(8, 1, 2),
(8, 2, 2),
(8, 3, 2),
(8, 4, 4),
(8, 5, 3),
(8, 6, 2),
(8, 7, 4),
(9, 1, 3),
(9, 2, 3),
(9, 3, 2),
(9, 4, 3),
(9, 5, 4),
(9, 6, 2),
(9, 7, 2),
(10, 1, 4),
(10, 2, 3),
(10, 3, 3),
(10, 4, 4),
(10, 5, 3),
(10, 6, 2),
(10, 7, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_alternatif`
--
ALTER TABLE `tab_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `tab_kriteria`
--
ALTER TABLE `tab_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `tab_topsis`
--
ALTER TABLE `tab_topsis`
  ADD PRIMARY KEY (`id_alternatif`,`id_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tab_alternatif`
--
ALTER TABLE `tab_alternatif`
  MODIFY `id_alternatif` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tab_kriteria`
--
ALTER TABLE `tab_kriteria`
  MODIFY `id_kriteria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tab_topsis`
--
ALTER TABLE `tab_topsis`
  MODIFY `id_alternatif` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tab_kriteria`
--
ALTER TABLE `tab_kriteria`
  ADD CONSTRAINT `tab_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `tab_topsis` (`id_kriteria`);

--
-- Constraints for table `tab_topsis`
--
ALTER TABLE `tab_topsis`
  ADD CONSTRAINT `tab_topsis_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `tab_alternatif` (`id_alternatif`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
