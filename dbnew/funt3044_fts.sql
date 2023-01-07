-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2023 at 09:14 PM
-- Server version: 10.5.17-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `funt3044_fts`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `nama_group` varchar(50) NOT NULL,
  `jumlah_orang` int(10) NOT NULL,
  `whatsapp` int(20) NOT NULL,
  `pesan` varchar(100) NOT NULL,
  `treking` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `rencanaBooking` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `nama_group`, `jumlah_orang`, `whatsapp`, `pesan`, `treking`, `tanggal`, `rencanaBooking`) VALUES
(1, 'burdah', 4, 2147483647, 'test', 'Paket B Curug Leuwi Asih', '2022-11-20', '2022-11-26'),
(2, 'burdah', 4, 2147483647, 'test 2', 'Paket A - Curug Ci Bingbin - Curug Ngumpet', '2022-11-20', '2022-11-26'),
(3, 'burdah', 4, 2147483647, 'test3', '', '2022-11-20', '2022-11-27'),
(4, 'Rolando', 0, 0, 'blackjack comment jouer meilleur casino avec bonus gratuit sans depot jouer gratuitement a la roulet', 'Pilih Jalur Trekking', '2023-01-01', '0000-00-00');

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
(0, 'Paket L - Trekking Pasir ayam', 'Paket  L Trekking Pasir ayam', '<p>Paket&nbsp; L Trekking Pasir ayam<br />\r\nUntuk route treck yang ini, di suguhkan dengan pemandangan gunung pancar dan route susur sungai dgn bebatuan yang cukup bagus.</p>\r\n\r\n<p>Route yang yang akan di lewati , perkebunan, hutan Puspa, hutan sengon, susur sungai dan di akhiri dengan bermain air di aliran sungai Pasir ayam.</p>\r\n\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Snack Box</li>\r\n	<li>Team Guide</li>\r\n	<li>Dokumentasi Foto By Hp</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan ( apabila hujan )</li>\r\n	<li>Perijizinan Lingkungan</li>\r\n</ul>\r\n\r\n<p><strong>EXLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Transportasi Pribadi</li>\r\n	<li>Perlengkapan Pribadi</li>\r\n	<li>Tips Guide</li>\r\n</ul>\r\n\r\n<p><strong>PERLENGKAPAN YANG HARUS DISIAPKAN</strong></p>\r\n\r\n<p>- Obat-obatan pribadi jika dibutuhkan</p>\r\n\r\n<p>- Kaos Kaki dan sepatu trail atau sejenisnya yang&nbsp; kuat untuk digunakan trekking</p>\r\n\r\n<p>- Makanan ringan pribadi</p>\r\n\r\n<p><strong>Disrankan</strong></p>\r\n\r\n<p><strong>- </strong>Membawa topi untuk antisipasi keadaan cuaca hujan maupun terik matahari</p>\r\n\r\n<p>- Pelindung alat elektronik seperti hp/camera yang tidak tembus air</p>\r\n\r\n<p>- Pakaian ganti</p>\r\n', NULL, 'Pasirayam.png', 0, '0000-00-00'),
(1, 'Paket G - Curug Bidadari', 'Jl. Sentul Paradise Park, Bojong Koneng, Kec. Babakan Madang,', '<p>Curug Bidadari, Curug tertinggi yang berbeda di Sentul Bogor, tak hanya itu, keindahan saat ber foto selalu menjadi momen paling penting saat berkunjung ke lokasi yang satu ini.</p>\r\n\r\n<p>Route yang yang akan di lewati, perkebunan warga, pesawahan, susur sungai, dan bermain di Curug Bidadari</p>\r\n\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Snack Box</li>\r\n	<li>Team Guide</li>\r\n	<li>Dokumentasi Foto By Hp</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan ( apabila hujan )</li>\r\n	<li>Perijizinan Lingkungan</li>\r\n</ul>\r\n\r\n<p><strong>EXLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Transportasi Pribadi</li>\r\n	<li>Perlengkapan Pribadi</li>\r\n	<li>Tips Guide</li>\r\n</ul>\r\n\r\n<p><strong>PERLENGKAPAN YANG HARUS DISIAPKAN</strong></p>\r\n\r\n<p>- Obat-obatan pribadi jika dibutuhkan</p>\r\n\r\n<p>- Kaos Kaki dan sepatu trail atau sejenisnya yang&nbsp; kuat untuk digunakan trekking</p>\r\n\r\n<p>- Makanan ringan pribadi</p>\r\n\r\n<p><strong>Disrankan</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>Membawa topi untuk antisipasi keadaan cuaca hujan maupun terik matahari</p>\r\n\r\n<p>- Pelindung alat elektronik seperti hp/camera yang tidak tembus air</p>\r\n\r\n<p>- Pakaian ganti</p>\r\n', NULL, '1g_(1).png', 0, '0000-00-00'),
(2, 'Paket F - Curug Hordeng, Curug kembar & Curug Cibu', 'Curug Hordeng, Curug kembar & Curug Ciburial trip trekking, Karang Tengah, Kec. Babakan Madang', '<p>Route Curug Hordeng, Curug kembar dan Curug Ciburial, Selalu menjadi route yang di gemari, karena ke indahan pemandangan alamnya yang super keren dan ke keindahan di setiap air terjunnya selalu menjadi daya tarik pengunjung.</p>\r\n\r\n<p>Route yang yang akan di lewati, hutan jati, kebun bambu, kebun kopi, perbukitan yang akan keindahan pemandangan alam nya, Curug Ciburial, Curug Kembar dan Curug Hordeng.</p>\r\n\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Snack Box</li>\r\n	<li>Team Guide</li>\r\n	<li>Dokumentasi Foto By Hp</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan ( apabila hujan )&nbsp;</li>\r\n	<li>Perijizinan Lingkungan</li>\r\n</ul>\r\n\r\n<p><strong>EXLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Transportasi Pribadi</li>\r\n	<li>Perlengkapan Pribadi</li>\r\n	<li>Tips Guide</li>\r\n</ul>\r\n\r\n<p><strong>PERLENGKAPAN YANG HARUS DISIAPKAN</strong></p>\r\n\r\n<p>- Obat-obatan pribadi jika dibutuhkan</p>\r\n\r\n<p>- Kaos Kaki dan sepatu trail atau sejenisnya yang&nbsp; kuat untuk digunakan trekking</p>\r\n\r\n<p>- Makanan ringan pribadi</p>\r\n\r\n<p><strong>Disrankan</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>Membawa topi untuk antisipasi keadaan cuaca hujan maupun terik matahari</p>\r\n\r\n<p>- Pelindung alat elektronik seperti hp/camera yang tidak tembus air</p>\r\n\r\n<p>- Pakaian ganti</p>\r\n', NULL, '1g_(3)1.png', 0, '0000-00-00'),
(3, 'Paket E  - Curug Putri Kencana', 'Karang Tengah, Kec. Babakan Madang, Kabupaten Bogor,', '<p>Route Curug putri kencana - Curug love Sentul selau menjadi daya tarik wisatawan, karena keindahan alamnya yang terlihat masih alami dan bisa menikmati kesejukan alamnya.</p>\r\n\r\n<p>Route yang yang akan di lewati , pemukiman warga, perkebunan warga, kebun kopi, hutan bambu, Curug putri kencana, Curug cipariuk, Curug kali Jodoh dan Curug love Sentul.</p>\r\n\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Snack Box</li>\r\n	<li>Team Guide</li>\r\n	<li>Dokumentasi Foto By Hp</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan ( apabila hujan )</li>\r\n	<li>Perijizinan Lingkungan</li>\r\n</ul>\r\n\r\n<p><strong>EXLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Transportasi Pribadi</li>\r\n	<li>Perlengkapan Pribadi</li>\r\n	<li>Tips Guide</li>\r\n</ul>\r\n\r\n<p><strong>PERLENGKAPAN YANG HARUS DISIAPKAN</strong></p>\r\n\r\n<p>- Obat-obatan pribadi jika dibutuhkan</p>\r\n\r\n<p>- Kaos Kaki dan sepatu trail atau sejenisnya yang&nbsp; kuat untuk digunakan trekking</p>\r\n\r\n<p>- Makanan ringan pribadi</p>\r\n\r\n<p><strong>Disrankan</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>Membawa topi untuk antisipasi keadaan cuaca hujan maupun terik matahari</p>\r\n\r\n<p>- Pelindung alat elektronik seperti hp/camera yang tidak tembus air</p>\r\n\r\n<p>- Pakaian ganti</p>\r\n', NULL, '1pE.png', 0, '0000-00-00'),
(4, 'Paket D- Goa Garunggang', 'Babakan Madang', '<p>Route Treck Goa Garunggang yang terkenal dengan bebatuan yang tersusun secara alami, dan Goa yang bisa di masuki oleh trekking lover&#39;s, ke indahan bebatuan yang Ter susun secara alami menjadi daya tarik wisatawan.</p>\r\n\r\n<p>Route yang yang akan di lewati , perkebunan warga, pesawahan, kebun kopi, hutan hujan, kebun Pinus, bukit kecapi, dan sampai lah ke Goa Garunggang.</p>\r\n\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Snack Box</li>\r\n	<li>Team Guide</li>\r\n	<li>Dokumentasi Foto By Hp</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan&nbsp; ( apabila hujan )</li>\r\n	<li>Perijizinan Lingkungan</li>\r\n</ul>\r\n\r\n<p><strong>EXLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Transportasi Pribadi</li>\r\n	<li>Perlengkapan Pribadi</li>\r\n	<li>Tips Guide</li>\r\n</ul>\r\n\r\n<p><strong>PERLENGKAPAN YANG HARUS DISIAPKAN</strong></p>\r\n\r\n<p>- Obat-obatan pribadi jika dibutuhkan</p>\r\n\r\n<p>- Kaos Kaki dan sepatu trail atau sejenisnya yang&nbsp; kuat untuk digunakan trekking</p>\r\n\r\n<p>- Makanan ringan pribadi</p>\r\n\r\n<p><strong>Disrankan</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>Membawa topi untuk antisipasi keadaan cuaca hujan maupun terik matahari</p>\r\n\r\n<p>- Pelindung alat elektronik seperti hp/camera yang tidak tembus air</p>\r\n\r\n<p>- Pakaian ganti</p>\r\n', NULL, '1pD.png', 0, '0000-00-00'),
(6, 'Paket C Curug Leuwi Hejo - Leuwi Liyeuk', 'Jl. Gunungwangun, Cibadak, Sukamakmur Sentul, Bogor', '<p>Route Trek Curug leuwi hejo - Leuwi liyeuk selalu menjadi route favorit setiap trekking lover&#39;s, karena bisa melihat langsung kejernihan sungai nya, tak hanya itu saja, di setiap destinasi selalu di suguhkan dengan view yang berbeda-beda.</p>\r\n\r\n<p>Route yang yang akan di lewati, pemukiman warga, perkebunan, pesawahan, kebun kopi, Leuwi hejo, Leuwi benjol, Curug barong, Leuwi cepet dan Leuwi liyeuk.</p>\r\n\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Snack Box</li>\r\n	<li>Team Guide</li>\r\n	<li>Dokumentasi Foto By Hp</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan ( apabila hujan )</li>\r\n	<li>Perijizinan Lingkungan</li>\r\n</ul>\r\n\r\n<p><strong>EXLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Transportasi Pribadi</li>\r\n	<li>Perlengkapan Pribadi</li>\r\n	<li>Tips Guide</li>\r\n</ul>\r\n\r\n<p><strong>PERLENGKAPAN YANG HARUS DISIAPKAN</strong></p>\r\n\r\n<p>- Obat-obatan pribadi jika dibutuhkan</p>\r\n\r\n<p>- Kaos Kaki dan sepatu trail atau sejenisnya yang&nbsp; kuat untuk digunakan trekking</p>\r\n\r\n<p>- Makanan ringan pribadi</p>\r\n\r\n<p><strong>Disrankan</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>Membawa topi untuk antisipasi keadaan cuaca hujan maupun terik matahari</p>\r\n\r\n<p>- Pelindung alat elektronik seperti hp/camera yang tidak tembus air</p>\r\n\r\n<p>- Pakaian ganti</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, '1g_(5).png', 0, '0000-00-00'),
(7, 'Paket B Curug Leuwi Asih', 'Babakan Madang Sentul', '<p>Route Treck Curug leuwi asih sangat populer akan ke indahan alam nya, pemandangan yang sangat keren dan bisa memanjakan mata untuk trekking lover&#39;s yang berkunjung ke lokasi ini, tak hanya itu, route yang ini sangat cocok untuk pemula dan juga cocok untuk anak-anak.</p>\r\n\r\n<p>Route yang yang akan di lewati perkebunan warga, pesawahan yang indah untuk di pandang, bukit ilalang , kebun sereh wangi, dan di akhiri dengan bermain di curug leuwi asih.</p>\r\n\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Snack Box</li>\r\n	<li>Team Guide</li>\r\n	<li>Dokumentasi Foto by Hp</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan ( apabila hujan )&nbsp;</li>\r\n	<li>Perijizinan Lingkungan</li>\r\n</ul>\r\n\r\n<p><strong>EXLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Transportasi Pribadi</li>\r\n	<li>Perlengkapan Pribadi</li>\r\n	<li>Tips Guide</li>\r\n</ul>\r\n\r\n<p><strong>PERLENGKAPAN YANG HARUS DISIAPKAN</strong></p>\r\n\r\n<p>- Obat-obatan pribadi jika dibutuhkan</p>\r\n\r\n<p>- Kaos Kaki dan sepatu trail atau sejenisnya yang&nbsp; kuat untuk digunakan trekking</p>\r\n\r\n<p>- Makanan ringan pribadi</p>\r\n\r\n<p><strong>Disrankan</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>Membawa topi untuk antisipasi keadaan cuaca hujan maupun terik matahari</p>\r\n\r\n<p>- Pelindung alat elektronik seperti hp/camera yang tidak tembus air</p>\r\n\r\n<p>- Pakaian ganti</p>\r\n', NULL, '1g_(8).png', 0, '0000-00-00'),
(8, 'Paket A - Curug Ci Bingbin - Curug Ngumpet', 'Desa Bojong Koneng  Kecamatan Babakan Madang madang', '<p>Pada Paket A ini jalur trekking yang memeiliki keindahan alam seperti air terjun, lembah dan rute trekking yang sangat indah dan memukau.</p>\r\n\r\n<p>Pada jalur Curug Ci Bingbin ini akan melewati Perkebunan, Persawahan, Susur Sungai, Perkebunan Kopi dan empat air terjun diantaranya :</p>\r\n\r\n<p>Curug Ci Bingbin, Curug Tiga Perjaka, Curug Ci salada dan <strong>Curug Ngumpet</strong> .</p>\r\n\r\n<p>Kami memeiliki fasilitas untuk kebutuhan perteluangan Anda selama trekking.</p>\r\n\r\n<p><strong>TERMASUK</strong></p>\r\n\r\n<ul>\r\n	<li>tiket masuk wisata</li>\r\n	<li>Parkir Tiket Kendaraan</li>\r\n	<li>Kotak Makanan Ringan</li>\r\n	<li>Panduan Tim</li>\r\n	<li>Dokumentasi Foto Oleh Hp</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan ( bila hujan )</li>\r\n	<li>Lingkungan Perizinan</li>\r\n</ul>\r\n\r\n<p><strong>PERLENGKAPAN YANG HARUS DISIAPKAN</strong></p>\r\n\r\n<p>- Obat-obatan pribadi jika dibutuhkan</p>\r\n\r\n<p>- Kaos Kaki dan sepatu trail atau sejenisnya yang&nbsp; kuat untuk digunakan trekking</p>\r\n\r\n<p>- Makanan ringan pribadi</p>\r\n\r\n<p><strong>Disrankan</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>Membawa topi untuk antisipasi keadaan cuaca hujan maupun terik matahari</p>\r\n\r\n<p>- Pelindung alat elektronik seperti hp/camera yang tidak tembus air</p>\r\n\r\n<p>- Pakaian ganti</p>\r\n', NULL, 'IMG-20221124-WA0012.jpg', 0, '0000-00-00'),
(9, 'Paket H - Gunung Kuta - Curug Cimariuk', 'Sentul Bogor', '<p>Pada Paket H ini memiliki Route Treck ke Gunung kuta yang sangat cocok untuk pendakian pemula, dengan ketinggian 1050 MDPL menjadi daya tarik pengunjung, tak hanya itu pemandangan yang sangat keren-keren saat berada di puncak kuta , bisa mengambil momen yang berharga untuk di abadikan, salah satunya ber foto di puncak gunung Kuta.</p>\r\n\r\n<p>Route yang yang akan di lewati , perkebunan warga, kebon pisang, pesawahan, Bukit Wanapa dan bermain di Curug Cimariuk.</p>\r\n\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Snack Box</li>\r\n	<li>Team Guide</li>\r\n	<li>Dokumentasi Foto By Hp</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan ( apabila hujan )</li>\r\n	<li>Perijizinan Lingkungan</li>\r\n</ul>\r\n\r\n<p><strong>EXLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Transportasi Pribadi</li>\r\n	<li>Perlengkapan Pribadi</li>\r\n	<li>Tips Guide</li>\r\n</ul>\r\n\r\n<p><strong>PERLENGKAPAN YANG HARUS DISIAPKAN</strong></p>\r\n\r\n<p>- Obat-obatan pribadi jika dibutuhkan</p>\r\n\r\n<p>- Kaos Kaki dan sepatu trail atau sejenisnya yang&nbsp; kuat untuk digunakan trekking</p>\r\n\r\n<p>- Makanan ringan pribadi</p>\r\n\r\n<p><strong>Disrankan</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>Membawa topi untuk antisipasi keadaan cuaca hujan maupun terik matahari</p>\r\n\r\n<p>- Pelindung alat elektronik seperti hp/camera yang tidak tembus air</p>\r\n\r\n<p>- Pakaian ganti</p>\r\n', NULL, '1g_(6).png', 0, '0000-00-00'),
(10, 'Paket I - Bukit Paniisan - Curug Ngumpet', '', '<p>Pada paket&nbsp; I Bukit paniisan - Curug Ngumpet memiliki Route Treck yang selalu menjadi daya tarik pengunjung akan ke indahan alam nya, di sepanjang perjalanan, pemandangan yang selalu memanjakan mata, dan ciri khas setiap pendaki yang trekking ke bukit paniisan,&nbsp; selalu beristirahat sejenak untuk menghilangkan rasa lelahnya di warung pak H.jajang untuk mencoba minum es cincau asli buatan beliau.</p>\r\n\r\n<p>Route yang yang akan di lewati, Perkebunan Warga, Pesawahan, Bukit gegenteng, Bukit Kiara payung, Bukit Paniisan dan di akhiri dengan bermain di Curug ngumpet.</p>\r\n\r\n<p>Sebelum kita trekking mohon di simak informasi dibawah ini ya sobat Fun Trekking Sentul Bogor.</p>\r\n\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Snack Box</li>\r\n	<li>Team Guide</li>\r\n	<li>Dokumentasi Foto By Hp</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan ( apabila hujan )</li>\r\n	<li>Perijizinan Lingkungan</li>\r\n</ul>\r\n\r\n<p><strong>EXLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Transportasi Pribadi</li>\r\n	<li>Perlengkapan Pribadi</li>\r\n	<li>Tips Guide</li>\r\n</ul>\r\n\r\n<p><strong>PERLENGKAPAN YANG HARUS DISIAPKAN</strong></p>\r\n\r\n<p>- Obat-obatan pribadi jika dibutuhkan</p>\r\n\r\n<p>- Kaos Kaki dan sepatu trail atau sejenisnya yang&nbsp; kuat untuk digunakan trekking</p>\r\n\r\n<p>- Makanan ringan pribadi</p>\r\n\r\n<p><strong>Disrankan</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>Membawa topi untuk antisipasi keadaan cuaca hujan maupun terik matahari</p>\r\n\r\n<p>- Pelindung alat elektronik seperti hp/camera yang tidak tembus air</p>\r\n\r\n<p>- Pakaian ganti</p>\r\n\r\n<p>kalo sudah di simak yuk booking trekking melalui form yang tersedia atau bisa chat melalui whatsapp yang tertera.</p>\r\n\r\n<p>Happy Tracking Sobat Fun Trekking Sentul Bogor :)</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 'paketI.png', 0, '0000-00-00'),
(11, 'Paket J Bukit Babakan - Curug Angraeni', '', '<p>Paket&nbsp; J Bukit Babakan - Curug Angraeni<br />\r\nRoute Treck Yang jarang diketahui pengunjung ini, sangat cocok untuk pemula dan anak-anak yang tidak suka dengan kerumunan, pemandangan alam terlihat masih alami.</p>\r\n\r\n<p>Route yang yang akan di lewati, perkebunan warga, pesawahan, Bukit babakan, hutan Pinus dan di akhiri dengan bermain di Curug Angraeni.</p>\r\n\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Snack Box</li>\r\n	<li>Team Guide</li>\r\n	<li>Dokumentasi Foto By Hp</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan ( apabila hujan )</li>\r\n	<li>Perijizinan Lingkungan</li>\r\n</ul>\r\n\r\n<p><strong>EXLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Transportasi Pribadi</li>\r\n	<li>Perlengkapan Pribadi</li>\r\n	<li>Tips Guide</li>\r\n</ul>\r\n\r\n<p><strong>PERLENGKAPAN YANG HARUS DISIAPKAN</strong></p>\r\n\r\n<p>- Obat-obatan pribadi jika dibutuhkan</p>\r\n\r\n<p>- Kaos Kaki dan sepatu trail atau sejenisnya yang&nbsp; kuat untuk digunakan trekking</p>\r\n\r\n<p>- Makanan ringan pribadi</p>\r\n\r\n<p><strong>Disrankan</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>Membawa topi untuk antisipasi keadaan cuaca hujan maupun terik matahari</p>\r\n\r\n<p>- Pelindung alat elektronik seperti hp/camera yang tidak tembus air</p>\r\n\r\n<p>- Pakaian ganti</p>\r\n\r\n<p>kalo sudah di simak yuk booking trekking melalui form yang tersedia atau bisa chat melalui whatsapp yang tertera.</p>\r\n\r\n<p>Happy Tracking Sobat Fun Trekking Sentul Bogor :)</p>\r\n', NULL, 'paketj.png', 0, '0000-00-00'),
(22, 'Paket K - leuwi Bungah - Curug Kalimata', '', '<p>Paket K Leuwi Bungah - Curug Kalimata<br />\r\nRoute Treck Yang jarang diketahui pengunjung, bisa menjadi pilihan bagi yg tidak suka keramaian, dan di Route Treck yang ini kita bisa mencoba untuk menyusuri di aliran sungai yang kecil dan tidak terlalu besar arusnya dan aman dari banjir bandang.</p>\r\n\r\n<p>Route yang yang akan di lewati , perkebunan, hutan Pinus, pesawahan, kebon kopi&nbsp; dan di akhiri dengan bermain di leuwi bungah /Curug kalimata.</p>\r\n\r\n<p><strong>INCLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Tiket Parkir Kendaraan</li>\r\n	<li>Snack Box</li>\r\n	<li>Team Guide</li>\r\n	<li>Dokumentasi Foto By Hp&nbsp;</li>\r\n	<li>Trekking Pole tongkat &quot;dipinjamkan&quot;</li>\r\n	<li>Rute Trekking</li>\r\n	<li>Jas Hujan ( apabila hujan )</li>\r\n	<li>Perijizinan Lingkungan</li>\r\n</ul>\r\n\r\n<p><strong>EXLUDE</strong></p>\r\n\r\n<ul>\r\n	<li>Transportasi Pribadi</li>\r\n	<li>Perlengkapan Pribadi</li>\r\n	<li>Tips Guide</li>\r\n</ul>\r\n\r\n<p><strong>PERLENGKAPAN YANG HARUS DISIAPKAN</strong></p>\r\n\r\n<p>- Obat-obatan pribadi jika dibutuhkan</p>\r\n\r\n<p>- Kaos Kaki dan sepatu trail atau sejenisnya yang&nbsp; kuat untuk digunakan trekking</p>\r\n\r\n<p>- Makanan ringan pribadi</p>\r\n\r\n<p><strong>Disrankan</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>Membawa topi untuk antisipasi keadaan cuaca hujan maupun terik matahari</p>\r\n\r\n<p>- Pelindung alat elektronik seperti hp/camera yang tidak tembus air</p>\r\n\r\n<p>- Pakaian ganti</p>\r\n', NULL, '1g_(11).png', 0, '0000-00-00');

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
(24, '5cb.png', 8),
(25, '4cb.png', 8),
(26, '3cb.png', 8),
(27, '2cb.png', 8),
(28, '1cb.png', 8),
(29, '9.png', 1),
(30, '8.png', 1),
(32, '6.png', 1),
(36, '12g.png', 7),
(37, '10g.png', 4),
(38, '14g.png', 4),
(39, '11g.png', 4),
(40, '13g.png', 4),
(42, '15P.png', 10),
(43, '16P.png', 10),
(44, '17P.png', 10),
(45, '18P.png', 10),
(46, '19agb.png', 11),
(47, '20agb.png', 11),
(48, '21agb.png', 11),
(49, '23agb.png', 11),
(50, '22agb.png', 11),
(51, 'IMG_20220105_091741[1].jpg', 6),
(52, 'IMG_20210913_113957[1].jpg', 6),
(53, 'IMG_20220621_115442[1].jpg', 6),
(54, 'IMG_20210527_102303[1].jpg', 6),
(56, 'IMG_20210531_095122[1].jpg', 3),
(57, 'IMG_20210918_095444[1].jpg', 3),
(58, 'IMG_20210918_122944[1].jpg', 3),
(59, 'IMG_20220425_110811[1].jpg', 3),
(60, '25ps.png', 23),
(61, '26ps.png', 23),
(62, '28ps.png', 23),
(63, '24ps.png', 23),
(65, '27ps.png', 23),
(67, 'k.png', 22),
(68, '30k.png', 22),
(69, '31k.png', 22),
(70, '33k.png', 22),
(71, '32k.png', 22),
(72, 'IMG_20211225_134029[1].jpg', 7),
(73, 'IMG_20220430_134844[1].jpg', 7),
(74, 'IMG-20221106-WA0050[1].jpg', 7),
(75, 'IMG_20220730_112047[1].jpg', 7),
(76, 'IMG_20210527_112701[1].jpg', 6),
(77, 'IMG_20220515_085720[1].jpg', 4),
(78, 'IMG_20220425_102129[1].jpg', 3),
(79, 'IMG_20211020_105409[1].jpg', 2),
(80, 'IMG_20211020_094505[1].jpg', 2),
(81, 'IMG-20211008-WA0069[1].jpg', 2),
(82, 'IMG_20220705_114436[1].jpg', 2),
(83, 'IMG_20220705_103056[1].jpg', 2),
(84, 'IMG_20211201_092625[1].jpg', 1),
(85, 'IMG_20211022_141236[1].jpg', 1),
(86, 'IMG-20210524-WA0008[1].jpg', 9),
(87, 'IMG-20220814-WA0030[1].jpg', 9),
(88, 'IMG_20220810_101839[1].jpg', 9),
(89, 'IMG-20210524-WA0009[1].jpg', 9),
(90, 'IMG_20220810_125728[1].jpg', 9),
(91, 'IMG_20220104_104459[1].jpg', 10),
(92, 'IMG_20220312_112019[1].jpg', 0),
(93, 'IMG_20220416_151438[1].jpg', 0),
(94, 'IMG_20220416_123415[1].jpg', 0),
(95, 'IMG_20210620_085811[1].jpg', 0),
(96, 'IMG_20210620_083230[1].jpg', 0);

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
(1, 'Fun Trekking', '', '<p>Fun Trekking Sentul adalah komunitas Guide lokal, Kami mengembangkan usaha jasa guide trekking wisata di wilayah Sentul Bogor. Visi misi kami pengembangan usaha ini, bertujuan untuk meningkatkan ekonomi masyarakat setempat dengan tetap menjaga Alam Sentul Bogor.</p>\r\n\r\n<p>Kami adalah guide local wisata alam sentul bogor yang siap membantu perjalanan anda. Nikmati suasana alam yang menyejukan di wisata alam sentul bogor. Dipandu guide local yang ramah, berpengalaman dan bersahabat. Layanan bersifat private tidak digabung dengan grup lain tentu akan membuat trekking lebih nyaman dan aman.</p>\r\n\r\n<p>Di wisata alam sentul bogor anda bisa menikmati keindahan alam seperti Air Terjun,Goa, Persawahan, Sungai, Hutan, Bukit dan suasana pegunungan. Cocok untuk liburan bersama keluarga, teman kerja dan tentunya bisa menjadi sebagai wisata edukasi untuk anak-anak. Ayo gabung sekarang bersama &ldquo;FUN TREKKING SENTUL BOGOR&rdquo; !</p>\r\n\r\n<p>&nbsp;</p>\r\n', '085888526214', '');

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
(11, 'admin', 'adminasep@gmail.com', '', '', '', 'defaul.jpg', '$2y$10$da9GcMfSC87/vh4CC1wySeCT4DWz4Tta3pvXqwrBC5SrW7c88IFGi', 1, 1, 1656226646),
(12, 'burdah', 'burdah@gmail.com', '', '', '', 'defaul.jpg', '$2y$10$ECHDKNCMe/LuQN4jra681.RL5x4bBuUJ56sFBhAUSlO0sEioXEO.G', 2, 1, 1665408581),
(18, 'Ade', '', 'laki laki', '', '', 'ade.png', '', 0, 0, 0),
(19, 'Ilham', '', 'laki laki', '', '', 'ilham.png', '', 0, 0, 0),
(20, 'Asep', '', 'laki laki', '', '', 'asep.png', '', 0, 0, 0),
(21, 'Abdullah', '', 'laki laki', '', '', 'abdul.png', '', 0, 0, 0),
(23, 'Komeng', '', 'laki laki', '', '', 'komeng.png', '', 0, 0, 0),
(24, 'Kute', '', 'laki laki', '', '', 'kute.png', '', 0, 0, 0),
(26, 'Fun Treking Sentul', 'funtrekkingsentul@gmail.com', '', '', '', 'defaul.jpg', '$2y$10$donkCPh69O2vDyxQuadYoeZ6ImDkkqwxHz0PROs36.ZDZg0vpZSyO', 1, 1, 1669359602);

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
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_wisata`
--
ALTER TABLE `data_wisata`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
