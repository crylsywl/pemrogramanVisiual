-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Bulan Mei 2025 pada 04.14
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `KODE BARANG` varchar(25) NOT NULL,
  `NAMA BARANG` varchar(225) NOT NULL,
  `JENIS` varchar(15) NOT NULL,
  `HARGA BELI` int(255) NOT NULL,
  `HARGA JUAL` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`KODE BARANG`, `NAMA BARANG`, `JENIS`, `HARGA BELI`, `HARGA JUAL`) VALUES
('123', 'awo', 'Makanan', 12000, 13000),
('6464', 'ayam', 'Makanan', 10000, 11000),
('BRG00005', 'Es Jeruk', 'Minuman', 8000, 10000),
('BRG0001', 'BAKSO', 'Makanan', 12000, 15000),
('BRG0002', 'TEH BOTOL', 'Minuman', 6000, 10000),
('BRG0003', 'Mie Ayam', 'Makanan', 13000, 16000),
('brg007', 'geprek gondes', 'Makanan', 20000, 27000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi`
--

CREATE TABLE `isi` (
  `idnota` varchar(11) NOT NULL,
  `kdbrg` int(11) NOT NULL,
  `hargabeli` int(11) NOT NULL,
  `hargajual` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `isi`
--

INSERT INTO `isi` (`idnota`, `kdbrg`, `hargabeli`, `hargajual`, `qty`) VALUES
('IN0001', 1, 234, 34324, 2),
('IN0002', 1, 10000, 12000, 1),
('IN0002', 2, 15000, 18000, 2),
('IN0002', 3, 3000, 5000, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `ID KASIR` int(6) NOT NULL,
  `NAMA KASIR` varchar(25) NOT NULL,
  `JENIS KELAMIN` varchar(15) NOT NULL,
  `TELEPON` varchar(20) NOT NULL,
  `ALAMAT` varchar(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kasir`
--

INSERT INTO `kasir` (`ID KASIR`, `NAMA KASIR`, `JENIS KELAMIN`, `TELEPON`, `ALAMAT`, `USERNAME`, `PASSWORD`) VALUES
(1, 'Cryl', 'Laki-Laki', '625964570263', 'depok', 'crylsywl', 'user123'),
(2, 'cryl', 'Laki-Laki', '0909777', 'depok', 'c11rylsywl', 'user123'),
(3, 'roy', 'Laki-Laki', '432345345', 'depok', 'roy123', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9'),
(5, 'adit', 'Laki-Laki', '085212332', 'jakarta', 'akabane', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `idnota` varchar(6) NOT NULL,
  `tglnota` date NOT NULL,
  `idplgn` int(6) NOT NULL,
  `idkasir` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`idnota`, `tglnota`, `idplgn`, `idkasir`) VALUES
('IN0001', '2026-11-21', 324, 'ID KASIR'),
('IN0002', '2025-05-26', 2, 'ID KASIR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID PELANGGAN` int(6) NOT NULL,
  `NAMA PELANGGAN` varchar(25) NOT NULL,
  `JENIS KELAMIN` varchar(15) NOT NULL,
  `TELEPON` varchar(20) NOT NULL,
  `ALAMAT` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`ID PELANGGAN`, `NAMA PELANGGAN`, `JENIS KELAMIN`, `TELEPON`, `ALAMAT`) VALUES
(0, 'adit', 'Laki-Laki', '08123456789', 'depok'),
(1, 'cryl', 'Laki-Laki', '099887766', 'jakarta');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`KODE BARANG`);

--
-- Indeks untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`ID KASIR`),
  ADD UNIQUE KEY `USERNAME` (`USERNAME`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`idnota`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID PELANGGAN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
