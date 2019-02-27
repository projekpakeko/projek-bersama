-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 27, 2019 at 07:02 AM
-- Server version: 10.3.13-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id7921778_job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(5) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` tinyint(1) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `nama`, `username`, `password`, `email`, `level`) VALUES
(1, 'taufik', 'admin', 'admin', 'taufik@gmail.com', 1),
(2, 'testing', 'testing', '12345', 'testing@gmail.com', 2),
(3, 'testing2', 'testing2', '12345', 'testing2@gmail.com', 2),
(4, 'babi', 'babibu', '12345', 'babi@gmail.com', 2),
(5, 'user', 'user', 'user', 'user@gmail.com', 2),
(6, 'userr', 'userr', 'userr', 'userr@gmail.com', 2),
(7, 'taufik', 'taufik', 'taufik', 'taufikprayitno11@gmail.com', 2),
(8, 'hancok', 'hancok', 'hancok', 'hancok@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cv`
--

CREATE TABLE `cv` (
  `id_cv` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `cv` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cv`
--

INSERT INTO `cv` (`id_cv`, `id_user`, `cv`) VALUES
(8, 5, 'mpdf.pdf'),
(9, 5, 'mpdf.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `joblist`
--

CREATE TABLE `joblist` (
  `id_joblist` int(11) NOT NULL,
  `jobname` varchar(255) NOT NULL,
  `tag1` varchar(25) NOT NULL,
  `tag2` varchar(25) NOT NULL,
  `tag3` varchar(25) NOT NULL,
  `tag4` varchar(25) NOT NULL,
  `kota` varchar(25) NOT NULL,
  `gaji` varchar(255) NOT NULL,
  `pengalaman` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `joblist`
--

INSERT INTO `joblist` (`id_joblist`, `jobname`, `tag1`, `tag2`, `tag3`, `tag4`, `kota`, `gaji`, `pengalaman`, `foto`, `flag`) VALUES
(7, ' Sistem Analysts', 'Javascript', 'SCSS', 'Photoshop', 'Corel', ' Jakarta ', '750', 'Expert', 'CILIK.jpg', 0),
(8, ' Sistem Analysts', 'Javascript', 'SCSS', 'Photoshop', 'Corel', ' Jakarta ', '750', 'Expert', 'CILIK.jpg', 0),
(9, ' Sistem Analysts', 'Javascript', 'SCSS', 'Photoshop', 'Corel', ' Jakarta ', '750', 'Expert', 'CILIK.jpg', 0),
(10, '  Programer  ', 'Photoshop', 'html', 'Javascript', 'css', '  Malang  ', '450', 'Fresh Graduates', 'b1.jpg', 1),
(11, ' Designer ', 'Photoshop', 'Adobe', 'Flash', 'Html', ' Jakarta ', '800', 'Expert', 'b3.jpg', 1),
(12, 'Sistem Analyst', 'System', 'Database', 'Javascript', 'c++', 'Palangkaraya', '900', 'Expert', 'b2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_apply`
--

CREATE TABLE `job_apply` (
  `id_apply` int(11) NOT NULL,
  `id_joblist` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `cv` varchar(255) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Waiting'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_apply`
--

INSERT INTO `job_apply` (`id_apply`, `id_joblist`, `id_user`, `cv`, `status`) VALUES
(13, 10, 5, '', 'Waiting');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id_subscriber` int(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id_subscriber`, `email`) VALUES
(1, 'aku@gmail.com'),
(2, 'aku3@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cv`
--
ALTER TABLE `cv`
  ADD PRIMARY KEY (`id_cv`);

--
-- Indexes for table `joblist`
--
ALTER TABLE `joblist`
  ADD PRIMARY KEY (`id_joblist`);

--
-- Indexes for table `job_apply`
--
ALTER TABLE `job_apply`
  ADD PRIMARY KEY (`id_apply`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id_subscriber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cv`
--
ALTER TABLE `cv`
  MODIFY `id_cv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `joblist`
--
ALTER TABLE `joblist`
  MODIFY `id_joblist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `job_apply`
--
ALTER TABLE `job_apply`
  MODIFY `id_apply` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id_subscriber` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
