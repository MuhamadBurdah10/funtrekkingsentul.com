-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2021 at 12:53 PM
-- Server version: 10.1.38-MariaDB
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
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_wisata`
--

CREATE TABLE `data_wisata` (
  `id` int(10) NOT NULL,
  `nama_wisata` varchar(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `keterangan` varchar(300) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_wisata`
--

INSERT INTO `data_wisata` (`id`, `nama_wisata`, `Alamat`, `keterangan`, `foto`, `link`, `tanggal`) VALUES
(1, 'Visit To Gua Garunggang', '', 'Wisata garunggang adalah tempa wisata yang terletak di babakan madang, dengan view goa', 'b33.png', 'www.link.com', '2021-10-19'),
(2, 'Gunung Pancar', '', 'Dream interpretation has many forms; it can be done be done for the sake of fun, hobby or can be taken up as a serious career.', 'b2.jpg', '', '0000-00-00'),
(3, 'Curug Leuwi Hejo', '', 'Dream interpretation has many forms; it can be done be done for the sake of fun, hobby or can be taken up as a serious career.', 'b3.jpg', '', '0000-00-00'),
(4, 'Curug Leuwi Asih', '', 'Dream interpretation has many forms; it can be done be done for the sake of fun, hobby or can be taken up as a serious career.', 'b1.jpg', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id_hotel` int(15) NOT NULL,
  `nama_hotel` varchar(50) NOT NULL,
  `alamat_hotel` varchar(50) NOT NULL,
  `ket_hotel` varchar(100) NOT NULL,
  `foto_hotel` varchar(100) NOT NULL,
  `link_hotel` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `nama_hotel`, `alamat_hotel`, `ket_hotel`, `foto_hotel`, `link_hotel`, `tanggal`) VALUES
(1, 'Aston Lake Sentul', 'Jl. Mh thmrin', 'wwwwwwwwwwwwww', 'b3.jpg', 'www.Aston.com', '0000-00-00'),
(2, 'Aston Haris Sentul', 'sadsd', 'ddddddddddddddddd', '13.jpg', 'dddddddddddddddddddddd', '0000-00-00'),
(3, '', '', ' sssssssssssssss', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `resto`
--

CREATE TABLE `resto` (
  `id_resto` int(15) NOT NULL,
  `nama_resto` varchar(100) NOT NULL,
  `alamat_resto` varchar(100) NOT NULL,
  `ket_resto` varchar(100) NOT NULL,
  `foto_resto` varchar(100) NOT NULL,
  `link_resto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resto`
--

INSERT INTO `resto` (`id_resto`, `nama_resto`, `alamat_resto`, `ket_resto`, `foto_resto`, `link_resto`) VALUES
(1, 'Kedai Kita', 'Jl.Mh Thamrin no 08 sentul, bogor', 'Restoran kedai kita menyediakan makanan dan minuman ', 'kedai.png', 'www.kedaikita.com');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(10) NOT NULL,
  `nama_foto` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `foto2` varchar(20) NOT NULL,
  `foto3` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `nama_foto`, `foto`, `foto2`, `foto3`) VALUES
(1, 'slide1', 'sl1.png', 'sl2.png', 'sl3.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(5, 'user1', 'admin@gmail.com', 'defaul.jpg', '$2y$10$06DxjndRcI5nAcplCpUK..dG6ZehzzrE2uVwh7QDFpPPv1g9UM4I6', 2, 1, 1582905711),
(6, 'user2', 'user2@gmail.com', 'foto.jpg', '$2y$10$06DxjndRcI5nAcplCpUK..dG6ZehzzrE2uVwh7QDFpPPv1g9UM4I6', 1, 1, 1582782467);

-- --------------------------------------------------------

--
-- Table structure for table `user_accsess_menu`
--

CREATE TABLE `user_accsess_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accsess_menu`
--

INSERT INTO `user_accsess_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'Admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'Mahasiswa', 'User', 'fas fa-fw fa-user-graduate', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_wisata`
--
ALTER TABLE `data_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Indexes for table `resto`
--
ALTER TABLE `resto`
  ADD PRIMARY KEY (`id_resto`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_accsess_menu`
--
ALTER TABLE `user_accsess_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_wisata`
--
ALTER TABLE `data_wisata`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id_hotel` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `resto`
--
ALTER TABLE `resto`
  MODIFY `id_resto` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_accsess_menu`
--
ALTER TABLE `user_accsess_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
