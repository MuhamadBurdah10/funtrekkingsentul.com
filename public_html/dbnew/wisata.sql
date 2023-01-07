-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2022 at 03:44 AM
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
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `nama_group` varchar(50) NOT NULL,
  `jumlah_orang` int(10) NOT NULL,
  `whatsapp` int(13) NOT NULL,
  `pesan` varchar(100) NOT NULL,
  `treking` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `rencanaBooking` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `nama_group`, `jumlah_orang`, `whatsapp`, `pesan`, `treking`, `tanggal`, `rencanaBooking`) VALUES
(3, 'Asep Nurmayana', 4, 4545, 'fdf', 'Goa Garunggang', '2022-11-04', '0000-00-00'),
(4, 'gfgfg', 8, 2147483647, 'gfdgfdghh', '', '2022-11-04', '0000-00-00'),
(5, 'burdah', 3, 898723564, 'hai', 'Curug Bidadari', '2022-11-05', '2022-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `data_wisata`
--

CREATE TABLE `data_wisata` (
  `id` int(10) NOT NULL,
  `nama_wisata` varchar(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `keterangan` varchar(3000) NOT NULL,
  `detail_wisata` varchar(1000) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  `galeri_id` int(10) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_wisata`
--

INSERT INTO `data_wisata` (`id`, `nama_wisata`, `Alamat`, `keterangan`, `detail_wisata`, `foto`, `galeri_id`, `tanggal`) VALUES
(1, 'Curug Bidadari', 'Jl. Sentul Paradise Park, Bojong Koneng, Kec. Babakan Madang,', '<p><strong>INCLUDE</strong></p>\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Mineral Wate</li>\r\n	<li>Team Guid</li>\r\n	<li>Dokumentasi Foto</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan&nbsp;</li>\r\n</ul>\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Mineral Wate</li>\r\n	<li>Team Guid</li>\r\n	<li>Dokumentasi Foto</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan&nbsp;</li>\r\n</ul>\r\n\r\n<p>', 'Daya tarik pertama air terjun ini adalah asal-usul nama Curug Bidadari. Disebut Curug Bidadari karena berawal dari pelangi yang muncul di air terjun ini. Pelangi tersebut diyakini sebagai jembatan tujuh bidadari untuk mandi di sana. \r\n\r\nSelain itu, kesegaran air dan panorama alam yang eksotis membuat banyak wisatawan tertarik. Aliran airnya yang deras, ditambah kolam dengan kedalaman yang aman untuk wisatawan. \r\n\r\nBatu besar yang berada di bawah air terjun menambah keindahan tempat ini. Batu besar tersebut dibelah menjadi dua bagian, sebagai akses jembatan menuju air terjun. Sehingga wisatawan bisa merasakan sensasi segarnya Curug Bidadari. \r\nLurus ikuti jalan hingga bertemu kawasan Sentul City. Setelah itu, ikuti Jalan Siliwangi dan Jalan Raya Bojongkoneng sepanjang 13 kilometer.Curug Bidadari HTM Rp 45.000 per orang. Parkir motor Rp10.000.', 'bidadari.png', 0, '2021-10-21'),
(2, 'Curug Leuwi Hejo', 'Leuwi hejo trip trekking, Karang Tengah, Kec. Babakan Madang', '<p><strong>INCLUDE</strong></p>\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Mineral Wate</li>\r\n	<li>Team Guid</li>\r\n	<li>Dokumentasi Foto</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan&nbsp;</li>\r\n</ul>\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Mineral Wate</li>\r\n	<li>Team Guid</li>\r\n	<li>Dokumentasi Foto</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan&nbsp;</li>\r\n</ul>\r\n\r\n<p>', 'Curug leuwi hajo menyuguhkan suasana alam yang begitu sempurna. Air yang mengalir sangat jernih, dan terdapat banyak kolam kolam kecil yang bisa dimanfaatkan sebagai tempat berenang. Suasana yang sejuk air yang jernih dan segar menjadikan wisatawan tidak betah berlama lama berdiam diri memandanginya.Dari kota bogor berjarak kurang lebih 30 an km dan dapat ditempuh dengan waktu kurang lebih 1,5 jam. Jalan menuju curug jika keluar dari jl cibadak sukamakmur bisa dikatakan cukup terjal, karena terdapat banyak tanjakan dan turunan yang harus dilewati. Tapi dari banyak review, rute perjalanan yang cukup buas ini akan terbayar lunas jika sudah sampai curug. Alamatnya sendiri di Cibadak, Sukamakmur, Bogor.Tiket Masuk Curug Rp25.000', 'hejo.png', 0, '0000-00-00'),
(3, 'Curug Putri Kencana', 'Karang Tengah, Kec. Babakan Madang, Kabupaten Bogor,', '<p><strong>INCLUDE</strong></p>\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Mineral Wate</li>\r\n	<li>Team Guid</li>\r\n	<li>Dokumentasi Foto</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan&nbsp;</li>\r\n</ul>\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Mineral Wate</li>\r\n	<li>Team Guid</li>\r\n	<li>Dokumentasi Foto</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan&nbsp;</li>\r\n</ul>\r\n\r\n<p>', 'Jalur hiking menuju air terjun hutan hujan ini memiliki kolam renang alami & bebatuan besar yang sangat indah.Curug putri kencana merupakan curug yang memiliki keindahan alami serta udara yang segar, serta memiliki spot foto yang sangat amat bagus. Curug ini merupakan curug yang banyak dikunjungi oleh para wisatawan dari luar,karena pada Curug Putri Kencana ini memiliki banyak spot untuk berfoto serta bebatuan yang sangat besar-besar. Selain itu, curug putri kencana juga merupakan Curug yang paling dekat dengan kawasan pemukiman warga. tidak jauh dari loket masuk curug, sekitar 500 – 600 meter, curug putri kencana sudah bisa dihampiri oleh para pengunjung. Biasanya Curug Putri Kencana ini banyak dikunjungi oleh rombongan ibu-ibu atau bapak-bapak yang sudah memiliki usia cukup umur. Karena salah satunya adalah lokasi yang cukup dekat dengan tempat parkir dan track jalanan yang tidak begitu menanjak, sehingga mudah untuk ditempuh.Tiket Masuk Rp25.000', 'kencana.png', 0, '0000-00-00'),
(4, 'Curug Cibaliung', 'Babakan Madang', '<p><strong>INCLUDE</strong></p>\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Mineral Wate</li>\r\n	<li>Team Guid</li>\r\n	<li>Dokumentasi Foto</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan&nbsp;</li>\r\n</ul>\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Mineral Wate</li>\r\n	<li>Team Guid</li>\r\n	<li>Dokumentasi Foto</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan&nbsp;</li>\r\n</ul>\r\n\r\n<p>', 'Curug Cibaliung berlokasi di Desa Karang Tengah, Kecamatan Babakan Madang, Sentul, Bogor, Jawa Barat.hanya perlu membayar Rp15.000 per orang, Rp5.000 untuk parkir kendaraan, dan Rp5.000 untuk biaya retribusi.Keindahan curug begitu menawan sehingga banyak diburu oleh berbagai wisatawan baik lokal maupun yang berasal dari luar kota. Selain keindahan alam disekitar curug yang masih hijau alami, air terjun disini pun juga sangat jernih sehingga menambah daya tarik tersendiri.Harga Tiket Masuk Curug Cibaliung : Rp10.000 - Rp15.000', 'baliung.png', 0, '0000-00-00'),
(6, 'Curug Hordeng', 'Jl. Gunungwangun, Cibadak, Sukamakmur Swntul, Bogor', '<p><strong>INCLUDE</strong></p>\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Mineral Wate</li>\r\n	<li>Team Guid</li>\r\n	<li>Dokumentasi Foto</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan&nbsp;</li>\r\n</ul>\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Mineral Wate</li>\r\n	<li>Team Guid</li>\r\n	<li>Dokumentasi Foto</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan&nbsp;</li>\r\n</ul>\r\n\r\n<p>', 'Air terjun ini terletak di kawasan Sentul, tepatnya di Kampung Cibeureum, Desa Cibadak, Bogor. Air terjun ini berada di ketinggian 740 meter di atas permukaan laut. Curug ini bisa ditemukan dengan berjalan kaki atau treking selama 30 hingga 40 menit dari gerbang masuk.\r\n\r\nNama Curug Hordeng berasal dari bahasa Sunda, “hordeng” yang berarti tirai. Nama ini berdasarkan penampakan air terjun yang lebar dan tidak terlalu tinggi. Jika dilihat, air terjun ini menyerupai sebuah tirai.Harga Tiket: Rp20.000', 'hordeng.png', 0, '0000-00-00'),
(7, 'Goa Garunggang', 'Babakan Madang Sentul', '<p><strong>INCLUDE</strong></p>\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Mineral Wate</li>\r\n	<li>Team Guid</li>\r\n	<li>Dokumentasi Foto</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan&nbsp;</li>\r\n</ul>\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Mineral Wate</li>\r\n	<li>Team Guid</li>\r\n	<li>Dokumentasi Foto</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan&nbsp;</li>\r\n</ul>\r\n\r\n<p>', NULL, 'garung.png', 0, '0000-00-00'),
(8, 'Gunung Pancar', 'Desa Desa Karang Tengah Kecamatan Babakan Madang madang', '<p><strong>INCLUDE</strong></p>\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Mineral Wate</li>\r\n	<li>Team Guid</li>\r\n	<li>Dokumentasi Foto</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan&nbsp;</li>\r\n</ul>\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Mineral Wate</li>\r\n	<li>Team Guid</li>\r\n	<li>Dokumentasi Foto</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan&nbsp;</li>\r\n</ul>\r\n\r\n<p>', 'Menurut sejarahnya, Goa Garunggang pertama kali ditemukan sekitar tahun 1983-1984 oleh seorang petani yang ada di desa setempat.Goa ini memiliki daya tarik yang unik karena jika dilihat sekilas tampilannya ini mirip dengan Grand Canyon yang ada di Arizona, Amerika. Wisata Goa Garunggang berlokasi di Desa Karang Tengah, Jalan Ptp Terusan, Karang Tengah, Kecamatan Babakan Madang, Kabupaten Bogor, Jawa Barat 16810. Jam Operasional 08.00-17.00 dengan tiket masuk Rp.20.000\r\n\r\nTebing-tebing yang ada di Goa Garunggang memiliki bentuk tinggi besar dengan garis-garis berlekuk seperti terasering sehingga membuatnya tampil unik.\r\nDitambah lagi, perpaduan warnanya yang cokelat kehitaman ini membuatnya terlihat sangat eksotis.Harga Tiket Masuk Rp.20.000', 'pcr.png', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(10) NOT NULL,
  `foto_galeri` varchar(50) NOT NULL,
  `id_wisata` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `foto_galeri`, `id_wisata`) VALUES
(2, 'lewiasih.jpg', 10),
(11, 'nekocoffe.png', 10),
(12, 'IMG-20220912-WA0034.jpg', 8),
(13, 'IMG-20220912-WA0066.jpg', 1),
(14, 'IMG-20220912-WA0067.jpg', 1),
(17, 'IMG-20220917-WA0029.jpg', 7),
(22, 'IMG-20220917-WA0014.jpg', 9),
(23, 'IMG-20220917-WA0028.jpg', 7),
(24, 'IMG-20220912-WA0046.jpg', 7),
(25, 'IMG-20220917-WA0023.jpg', 1),
(26, 'IMG-20220912-WA0035.jpg', 1),
(27, 'IMG-20220912-WA0036.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL,
  `kode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu`, `kode`) VALUES
(1, 'h3.png', 2),
(2, 'h6.png', 2),
(3, 'h8.png', 2),
(4, 'h9.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(5) NOT NULL,
  `nama_wisata` varchar(100) NOT NULL,
  `logo` varchar(35) NOT NULL,
  `Tentang` text NOT NULL,
  `whatsapp` varchar(13) NOT NULL,
  `medsos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_wisata`, `logo`, `Tentang`, `whatsapp`, `medsos`) VALUES
(1, 'Fun Trekking', 'logo2.png', '<p>Fun Trekking Sentul adalah komunitas Guide lokal, Kami mengembangkan usaha jasa guide di wilayah Sentul. Visi misi kami pengembangan usaha ini, ditujukan untuk meningkatkan ekonomi masyarakat setempat dengan tetap menjaga alam Sentul Bogor.</p>\r\n\r\n<p>Kami adalah guide local sentul yang siap membantu perjalanan anda. Nikmati suasana alam yang menyejukan di sentul bogor. Dipandu guide local yang ramah, berpengalaman dan bersahabat. Layanan bersifat private tidak digabung dengan grup lain tentu akan membuat trekking lebih nyaman dan aman.</p>\r\n\r\n<p>Di sentul anda bisa menikmati keindahan air terjun, Gunung, Goa, Persawahan, Sungai, Hutan, Bukit dan suasana pegunungan. Cocok untuk liburan bersama keluarga, teman kerja dan tentunya bisa menjadi sebagai wisata edukasi untuk anak-anak. Ayo gabung sekarang bersama &ldquo;FUN TREKKING SENTUL&rdquo; !</p>\r\n\r\n<p>&nbsp;</p>\r\n', '089605661530', '');

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
  `jenis_kelamin` varchar(10) NOT NULL,
  `sertivicate` varchar(30) NOT NULL,
  `bio` varchar(100) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `jenis_kelamin`, `sertivicate`, `bio`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(11, 'admin', 'admin@gmail.com', '', '', '', 'defaul.jpg', '$2y$10$di8Fqt619ru5hrG6OZI4ouqOJRC8H02LkF.6V0q./mtc9srt0OuRu', 1, 1, 1656226646),
(12, 'burdah', 'burdah@gmail.com', '', '', '', 'defaul.jpg', '$2y$10$ECHDKNCMe/LuQN4jra681.RL5x4bBuUJ56sFBhAUSlO0sEioXEO.G', 2, 1, 1665408581),
(18, 'Ade', '', 'laki laki', '', '', 'ade.png', '', 0, 0, 0),
(19, 'Ilham', '', 'laki laki', '', '', 'ilham.png', '', 0, 0, 0),
(20, 'Asep', '', 'laki laki', '', '', 'asep.png', '', 0, 0, 0),
(21, 'Abdullah', '', 'laki laki', '', '', 'abdul.png', '', 0, 0, 0),
(23, 'Komeng', '', 'laki laki', '', '', 'komeng.png', '', 0, 0, 0),
(24, 'Kute', '', 'laki laki', '', '', 'kute.png', '', 0, 0, 0);

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
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `data_wisata`
--
ALTER TABLE `data_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

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
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_wisata`
--
ALTER TABLE `data_wisata`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_accsess_menu`
--
ALTER TABLE `user_accsess_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
