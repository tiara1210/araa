-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 05:03 PM
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
(1, 'Bandara Soekarno Hatta', 'Dari sini mulai perjalanan liburan kami ke bangka belitung dari Bandara Soekarno Hatta ke Bandara Tanjung Pandang dengan waktu tempuh 1 jam dengan menggunakan jalur udara dan pada saat penerbangan kami disambut dengan sunrise yang indah dan pemandangan timah yang berada dipulau bangka yang kami lihat saat penerbangan.', 'pesawat.jpg', '2024-08-07 05:52:37', 'admin'),
(2, 'Bakmi Atep', 'Sesampainya dibandara Tanjung Pandang, kami bergegas untuk berkuliner dengan memakan bakmi tradisional khas Belitung yang sudah berdiri sejak 1973. yang mempunyai karakter dengan beralas daun simpur dengan kuah sedikit kental dengan perpaduan kaldu udang yang membuat bakmi semakin nikmmat.', 'bakmi.jpg', '2024-08-07 08:24:12', 'admin'),
(3, 'Vihara Dewi Kwan Im', 'Vihara ini meonjolkan khas Tionghoa yang didominasi warna merah. ornamen lampion yang menghiasi langit-langit menambah keindahan vihara yang berusia lebih dari 250 tahun ini. vihara ini juga merupakan vihara terbesar dan tertua di Pulau Belitung, untuk mencapai kuil pengunjung harus menaiki sekitar 86 anak tangga.', 'vihara.jpg', '2024-08-07 11:26:58', 'admin'),
(4, 'Replika Sekolah Laskar Pelangi', 'Ini adalah destinasi ke tiga, dimana pada saat sampai kami disambut dengan anak-anak yang berada diruang kelas yang menyanyikan lagu \"Laskar Pelangi\" dengan irama yang merdu dan membuat pengunjung speachless begitu indahnya tempat ini.', 'laskar.jpg', '2024-08-07 14:56:37', 'admin'),
(5, 'Pantai Tanjung Tinggi', 'Pantai Tanjung Tinggi memiliki hamparan pasir putih yang lebut dan air laut berwarna hijau tosca yang sangat jernih. Kawasan pantai juga memiliki batu granitraksasa yang sangat ikonik.disini pengunjung dapat berfoto diantara batu granit,sunset,jetski,snorkeling,dll.', 'pantai.jpg', '2024-08-08 09:02:24', 'admin'),
(6, 'keliling pulau', 'Pada hari ke dua kami berkeliling berbagai pulau yang berada di kepulauan belitung selama 1 harian full, dan tidak lupa juga kami berkunjung ke salah satu goa yang berada di suatu pulau kemudian kami berkunjung ke mercusuar dan setelah itu kami melakukan kegiatan snorkeling.', 'round.jpg', '2024-08-08 10:34:48', 'admin'),
(8, 'Goa', 'keliling goa seru!!', '20241217225730.jpg', '2024-12-17 22:57:30', 'admin');

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
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
