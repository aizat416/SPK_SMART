-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Des 2021 pada 01.01
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_spk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nm_alternatif` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nm_alternatif`) VALUES
(27, 'Ikan Tongkol'),
(31, 'Ikan Merah'),
(32, 'Ikan Hiu'),
(33, 'Ikan Kakap'),
(34, 'Ikan Kembung'),
(35, 'Ikan Makarel'),
(36, 'Ikan Baronang'),
(37, 'Ikan Tenggiri'),
(38, 'Ikan Belanak'),
(39, 'Ikan Layur'),
(40, 'Ikan Bandeng'),
(41, 'Ikan Patin'),
(42, 'Ikan Toman'),
(43, 'Ikan Ekor Kuning'),
(44, 'Ikan Kerapu'),
(45, 'Ikan Dencis'),
(46, 'Ikan Dungun'),
(47, 'Ikan Mata Besar'),
(48, 'Ikan Caro'),
(49, 'Ikan Bawal'),
(50, 'Ikan Nila'),
(51, 'Ikan Mujair'),
(52, 'Ikan Gurame'),
(53, 'Ikan Tajak'),
(54, 'Ikan Biji Nangka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga`
--

CREATE TABLE `harga` (
  `id_subkriteria` int(11) NOT NULL,
  `harga_min` varchar(11) NOT NULL,
  `harga_max` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `harga`
--

INSERT INTO `harga` (`id_subkriteria`, `harga_min`, `harga_max`) VALUES
(1, '<', '999999'),
(2, '>', '1000000'),
(3, '>', '2000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nm_kriteria` varchar(20) DEFAULT NULL,
  `bobot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nm_kriteria`, `bobot`) VALUES
(1, 'Kenampakan', 24),
(2, 'Bau', 18),
(7, 'Insang', 16),
(9, 'Mata', 14),
(10, 'Sisik', 12),
(11, 'Mulut', 10),
(12, 'Daging', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_alternatif`
--

CREATE TABLE `nilai_alternatif` (
  `id_nilaialternatif` int(11) NOT NULL,
  `id_alternatif` int(11) DEFAULT NULL,
  `id_kriteria` int(11) DEFAULT NULL,
  `id_subkriteria` int(11) NOT NULL,
  `nilai_kriteria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai_alternatif`
--

INSERT INTO `nilai_alternatif` (`id_nilaialternatif`, `id_alternatif`, `id_kriteria`, `id_subkriteria`, `nilai_kriteria`) VALUES
(67, 15, 1, 2, 0),
(68, 15, 2, 4, 0),
(69, 15, 7, 17, 0),
(70, 19, 1, 3, 0),
(71, 19, 2, 4, 0),
(72, 19, 7, 17, 0),
(74, 22, 1, 1, 0),
(75, 22, 2, 5, 0),
(76, 22, 7, 17, 0),
(77, 1, 1, 2, 0),
(78, 1, 2, 4, 0),
(79, 1, 7, 24, 0),
(80, 24, 1, 3, 0),
(81, 24, 2, 4, 0),
(82, 24, 7, 24, 0),
(83, 25, 1, 1, 0),
(84, 25, 2, 6, 0),
(85, 25, 7, 28, 0),
(92, 29, 1, 1, 0),
(93, 29, 2, 6, 0),
(94, 29, 7, 28, 0),
(98, 1, 9, 29, 0),
(99, 24, 9, 30, 0),
(100, 25, 9, 29, 0),
(102, 27, 1, 1, 0),
(103, 27, 2, 5, 0),
(104, 27, 7, 25, 0),
(105, 27, 9, 30, 0),
(106, 27, 10, 37, 0),
(107, 27, 11, 40, 0),
(108, 27, 12, 44, 0),
(109, 31, 1, 3, 0),
(110, 31, 2, 6, 0),
(111, 31, 7, 28, 0),
(112, 31, 9, 34, 0),
(113, 31, 10, 38, 0),
(114, 31, 11, 41, 0),
(115, 31, 12, 42, 0),
(116, 32, 1, 3, 0),
(117, 32, 2, 5, 0),
(118, 32, 7, 25, 0),
(119, 32, 9, 33, 0),
(120, 32, 10, 37, 0),
(121, 32, 11, 40, 0),
(122, 32, 12, 43, 0),
(123, 33, 1, 2, 0),
(124, 33, 2, 5, 0),
(125, 33, 7, 28, 0),
(126, 33, 9, 30, 0),
(127, 33, 10, 35, 0),
(128, 33, 11, 40, 0),
(129, 33, 12, 42, 0),
(130, 34, 1, 2, 0),
(131, 34, 2, 5, 0),
(132, 34, 7, 28, 0),
(133, 34, 9, 30, 0),
(134, 34, 10, 37, 0),
(135, 34, 11, 39, 0),
(136, 34, 12, 43, 0),
(137, 35, 1, 31, 0),
(138, 35, 2, 5, 0),
(139, 35, 7, 28, 0),
(140, 35, 9, 34, 0),
(141, 35, 10, 37, 0),
(142, 35, 11, 41, 0),
(143, 35, 12, 44, 0),
(144, 36, 1, 3, 0),
(145, 36, 2, 6, 0),
(146, 36, 7, 25, 0),
(147, 36, 9, 34, 0),
(148, 36, 10, 38, 0),
(149, 36, 11, 41, 0),
(150, 36, 12, 44, 0),
(151, 37, 1, 3, 0),
(152, 37, 2, 5, 0),
(153, 37, 7, 24, 0),
(154, 37, 9, 29, 0),
(155, 37, 10, 37, 0),
(156, 37, 11, 41, 0),
(157, 37, 12, 42, 0),
(158, 38, 1, 31, 0),
(159, 38, 2, 5, 0),
(160, 38, 7, 25, 0),
(161, 38, 9, 33, 0),
(162, 38, 10, 38, 0),
(163, 38, 11, 41, 0),
(164, 38, 12, 44, 0),
(165, 39, 1, 31, 0),
(166, 39, 2, 5, 0),
(167, 39, 7, 25, 0),
(168, 39, 9, 33, 0),
(169, 39, 10, 37, 0),
(170, 39, 11, 41, 0),
(171, 39, 12, 43, 0),
(172, 40, 1, 2, 0),
(173, 40, 2, 4, 0),
(174, 40, 7, 24, 0),
(175, 40, 9, 30, 0),
(176, 40, 10, 35, 0),
(177, 40, 11, 40, 0),
(178, 40, 12, 43, 0),
(179, 41, 1, 1, 0),
(180, 41, 2, 5, 0),
(181, 41, 7, 24, 0),
(182, 41, 9, 30, 0),
(183, 41, 10, 35, 0),
(184, 41, 11, 40, 0),
(185, 41, 12, 42, 0),
(186, 42, 1, 3, 0),
(187, 42, 2, 5, 0),
(188, 42, 7, 28, 0),
(189, 42, 9, 34, 0),
(190, 42, 10, 36, 0),
(191, 42, 11, 40, 0),
(192, 42, 12, 44, 0),
(193, 43, 1, 31, 0),
(194, 43, 2, 32, 0),
(195, 43, 7, 28, 0),
(196, 43, 9, 33, 0),
(197, 43, 10, 37, 0),
(198, 43, 11, 41, 0),
(199, 43, 12, 44, 0),
(200, 44, 1, 2, 0),
(201, 44, 2, 5, 0),
(202, 44, 7, 24, 0),
(203, 44, 9, 34, 0),
(204, 44, 10, 36, 0),
(205, 44, 11, 39, 0),
(206, 44, 12, 42, 0),
(207, 45, 1, 31, 0),
(208, 45, 2, 6, 0),
(209, 45, 7, 25, 0),
(210, 45, 9, 33, 0),
(211, 45, 10, 37, 0),
(212, 45, 11, 40, 0),
(213, 45, 12, 43, 0),
(214, 46, 1, 3, 0),
(215, 46, 2, 6, 0),
(216, 46, 7, 28, 0),
(217, 46, 9, 33, 0),
(218, 46, 10, 37, 0),
(219, 46, 11, 41, 0),
(220, 46, 12, 44, 0),
(221, 47, 1, 2, 0),
(222, 47, 2, 5, 0),
(223, 47, 7, 25, 0),
(224, 47, 9, 29, 0),
(225, 47, 10, 37, 0),
(226, 47, 11, 41, 0),
(227, 47, 12, 42, 0),
(228, 48, 1, 2, 0),
(229, 48, 2, 5, 0),
(230, 48, 7, 25, 0),
(231, 48, 9, 29, 0),
(232, 48, 10, 35, 0),
(233, 48, 11, 39, 0),
(234, 48, 12, 44, 0),
(235, 49, 1, 2, 0),
(236, 49, 2, 4, 0),
(237, 49, 7, 24, 0),
(238, 49, 9, 29, 0),
(239, 49, 10, 35, 0),
(240, 49, 11, 40, 0),
(241, 49, 12, 44, 0),
(242, 50, 1, 1, 0),
(243, 50, 2, 5, 0),
(244, 50, 7, 24, 0),
(245, 50, 9, 29, 0),
(246, 50, 10, 36, 0),
(247, 50, 11, 39, 0),
(248, 50, 12, 43, 0),
(249, 51, 1, 1, 0),
(250, 51, 2, 4, 0),
(251, 51, 7, 24, 0),
(252, 51, 9, 29, 0),
(253, 51, 10, 35, 0),
(254, 51, 11, 39, 0),
(255, 51, 12, 42, 0),
(256, 52, 1, 1, 0),
(257, 52, 2, 4, 0),
(258, 52, 7, 24, 0),
(259, 52, 9, 30, 0),
(260, 52, 10, 36, 0),
(261, 52, 11, 40, 0),
(262, 52, 12, 42, 0),
(263, 53, 1, 3, 0),
(264, 53, 2, 6, 0),
(265, 53, 7, 28, 0),
(266, 53, 9, 33, 0),
(267, 53, 10, 37, 0),
(268, 53, 11, 41, 0),
(269, 53, 12, 43, 0),
(270, 54, 1, 31, 0),
(271, 54, 2, 32, 0),
(272, 54, 7, 28, 0),
(273, 54, 9, 34, 0),
(274, 54, 10, 38, 0),
(275, 54, 11, 41, 0),
(276, 54, 12, 44, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `normalisasi_kriteria`
--

CREATE TABLE `normalisasi_kriteria` (
  `id_kriteria` int(11) DEFAULT NULL,
  `normalisasi` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `normalisasi_kriteria`
--

INSERT INTO `normalisasi_kriteria` (`id_kriteria`, `normalisasi`) VALUES
(1, 0.5),
(2, 0.5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ranking`
--

CREATE TABLE `ranking` (
  `id_alternatif` int(11) DEFAULT NULL,
  `skor` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ranking`
--

INSERT INTO `ranking` (`id_alternatif`, `skor`) VALUES
(27, 76.5),
(31, 46.5),
(32, 62.5),
(33, 75.5),
(34, 70.5),
(35, 45),
(36, 47.5),
(37, 72.5),
(38, 49.5),
(39, 54),
(40, 86.5),
(41, 89.5),
(42, 56.5),
(43, 39.5),
(44, 76),
(45, 52),
(46, 50),
(47, 74.5),
(48, 82.5),
(49, 88.5),
(50, 91),
(51, 100),
(52, 91),
(53, 51.5),
(54, 33);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_subkriteria` int(11) NOT NULL,
  `id_kriteria` int(11) DEFAULT NULL,
  `nm_subkriteria` varchar(20) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_subkriteria`, `id_kriteria`, `nm_subkriteria`, `nilai`) VALUES
(1, 1, 'Cerah', 100),
(2, 1, 'Tidak Berlendir', 75),
(3, 1, 'Kusam', 50),
(4, 2, 'Segar', 100),
(5, 2, 'Tidak berbau', 75),
(6, 2, 'Busuk', 50),
(24, 7, 'Merah cerah', 100),
(25, 7, 'Merah kecokelatan', 75),
(28, 7, 'Merah pucat', 50),
(29, 9, 'Tidak berlendir', 100),
(30, 9, 'Cerah menonjol ', 75),
(31, 1, 'Berlendir', 25),
(32, 2, 'Menyengat', 25),
(33, 9, 'Berlendir', 50),
(34, 9, 'masuk kedalam', 25),
(35, 10, 'Tampak cerah', 100),
(36, 10, 'Melekat kuat ', 75),
(37, 10, 'Tampak kusam', 50),
(38, 10, 'Mudah rontok', 25),
(39, 11, 'Terkatup', 100),
(40, 11, 'Sedikit terbuka', 75),
(41, 11, 'Terbuka', 50),
(42, 12, 'Kenyal', 100),
(43, 12, 'Lentur', 75),
(44, 12, 'Lunak', 50),
(45, 7, 'keputihan', 25),
(46, 11, 'Rusak', 25),
(47, 0, 'Rusak', 25),
(48, 12, 'Rusak', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `pass`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Aizat_Alvi', '8811cbb7cd8336741c381c6529d775e9');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `nilai_alternatif`
--
ALTER TABLE `nilai_alternatif`
  ADD PRIMARY KEY (`id_nilaialternatif`);

--
-- Indeks untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_subkriteria`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `nilai_alternatif`
--
ALTER TABLE `nilai_alternatif`
  MODIFY `id_nilaialternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_subkriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
