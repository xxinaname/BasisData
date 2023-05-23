-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 06:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `NUPTK` varchar(10) NOT NULL,
  `Nama_Guru` varchar(40) NOT NULL,
  `Alamat_Guru` varchar(30) NOT NULL,
  `JK_Guru` varchar(2) NOT NULL,
  `No_Telp_Guru` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`NUPTK`, `Nama_Guru`, `Alamat_Guru`, `JK_Guru`, `No_Telp_Guru`) VALUES
('12001', 'Pak Ade Aso', 'Cimahi', 'L', '081908775001'),
('12002', 'Bu Fani', 'Antapani', 'P', '081908775003'),
('12003', 'Pak Acep', 'Kiaracndong', 'L', '081908775003'),
('12004', 'Pak Budi', 'Bandung', 'L', '081908775004'),
('12005', 'Bu Margaret', 'Bandung', 'P', '081908775005'),
('12006', 'Bu Lala', 'Bandung', 'P', '081908775006');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `KD_Matpel` varchar(15) NOT NULL,
  `Nama_Matpel` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`KD_Matpel`, `Nama_Matpel`) VALUES
('2022101', 'WEB'),
('2022102', 'PBO'),
('2022103', 'PKK'),
('2022104', 'Basis Data'),
('2022105', 'PPL');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `NIS` varchar(6) NOT NULL,
  `Nama` varchar(40) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `JK` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `NIS` varchar(6) NOT NULL,
  `Nama` varchar(40) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `JK` varchar(2) NOT NULL,
  `Kelas` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`NIS`, `Nama`, `Alamat`, `JK`, `Kelas`) VALUES
('1234', 'Andhika', 'Bandung', 'L', 'XI-RPL'),
('1235', 'Raffi', 'Bandung', 'P', 'XI-RPL'),
('1236', 'Hendru', 'Bandung', 'L', 'XI-RPL'),
('1237', 'Lumin', 'Bandung', 'P', 'XI-RPL'),
('1238', 'Goka', 'Bandung', 'L', 'XI-RPL'),
('1239', 'Tsuna', 'Bandung', 'P', 'XI-RPL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`NUPTK`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`KD_Matpel`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`NIS`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`NIS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
