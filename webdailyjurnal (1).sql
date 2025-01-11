-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2025 at 05:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdailyjurnal`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `judul` text DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `username`) VALUES
(2, 'Bakmi Atep', 'Sesampainya dibandara Tanjung Pandang, kami bergegas untuk berkuliner dengan memakan bakmi tradisional khas Belitung yang sudah berdiri sejak 1973. yang mempunyai karakter dengan beralas daun simpur dengan kuah sedikit kental dengan perpaduan kaldu udang yang membuat bakmi semakin nikmmat.', 'bakmi.jpg', '2024-08-07 08:24:12', 'admin'),
(3, 'Vihara Dewi Kwan Im', 'Vihara ini meonjolkan khas Tionghoa yang didominasi warna merah. ornamen lampion yang menghiasi langit-langit menambah keindahan vihara yang berusia lebih dari 250 tahun ini. vihara ini juga merupakan vihara terbesar dan tertua di Pulau Belitung, untuk mencapai kuil pengunjung harus menaiki sekitar 86 anak tangga.', 'vihara.jpg', '2024-08-07 11:26:58', 'admin'),
(4, 'Replika Sekolah Laskar Pelangi', 'Ini adalah destinasi ke tiga, dimana pada saat sampai kami disambut dengan anak-anak yang berada diruang kelas yang menyanyikan lagu \"Laskar Pelangi\" dengan irama yang merdu dan membuat pengunjung speachless begitu indahnya tempat ini.', 'laskar.jpg', '2024-08-07 14:56:37', 'admin'),
(12, 'Diving', 'Semakin dalam kamu menyelam, semakin banyak keajaiban yang kamu temukan', '20250110014046.jpg', '2025-01-10 01:40:46', 'admin'),
(16, 'Pulau Bangka Belitung', 'Dari pulau ke pulau, menjelajahi setiap sudut keajaiban Bangka Belitung #IslandHopping', '20250110014203.jpg', '2025-01-10 01:42:14', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `judul` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `judul`, `tanggal`, `gambar`, `username`) VALUES
(1, 'On The Way', '2025-01-09', 'ara.jpg', 'admin'),
(2, 'laskar pelangi', '2025-01-09', 'laskar.jpg', 'admin'),
(3, 'pantai', '2024-08-07', 'pantai.jpg', 'admin'),
(4, 'keliling', '2025-01-09', 'round.jpg', 'admin'),
(6, 'jalan', '2025-01-10', '20250110012150.jpg', 'admin'),
(7, 'relax', '2025-01-10', '20250110012224.jpg', 'admin'),
(8, 'berenang', '2025-01-10', '20250110012338.jpg', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `foto`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '20250110213304.jpg'),
(3, 'tiara', 'fd6ddcb825c3bb7527cc76cd8ca4f701', '20250110213138.jpg'),
(4, 'danny', '21232f297a57a5a743894a0e4a801fc3', '20250110213412.jpg'),
(5, 'maudy', '16f5961ff1bad5a8a65175dfe421691e', '20250110214236.jpg'),
(6, 'chelsi', '2c0c1895429ec2d08e6eaf13f1c05232', '20250110214340.jpg'),
(7, 'michael', '9e6663e0097de65f795c9d080dea4975', '20250110215441.jpg'),
(8, 'fabiola', '601fec56e1572ca81aaec9e3dad86c07', '20250110215034.jpg'),
(9, 'khalifah', '9fd2a632d3a8656bb459d094ef9ba3be', '20250110215336.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
