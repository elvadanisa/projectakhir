-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 11, 2020 at 11:32 
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laundry_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_laundry`
--

CREATE TABLE IF NOT EXISTS `tb_laundry` (
  `id_laundry` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` varchar(15) NOT NULL,
  `kode_user` int(11) NOT NULL,
  `tanggal_diterima` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `jumlah_kiloan` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `catatan` text NOT NULL,
  PRIMARY KEY (`id_laundry`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tb_laundry`
--

INSERT INTO `tb_laundry` (`id_laundry`, `id_pelanggan`, `kode_user`, `tanggal_diterima`, `tanggal_selesai`, `jumlah_kiloan`, `nominal`, `status`, `catatan`) VALUES
(1, 'PLG-0001', 2, '2020-07-07', '2020-07-10', 2, 15000, 'Lunas', 'Kaos 2, Celana 3'),
(4, 'PLG-0004', 2, '2020-07-09', '2020-07-12', 7, 35000, 'Lunas', 'selimut'),
(5, 'PLG-0006', 2, '2020-07-08', '2020-07-09', 5, 25000, 'Lunas', 'test'),
(6, 'PLG-0003', 2, '2020-07-16', '2020-07-17', 7, 35000, 'Lunas', 'baju'),
(7, 'PLG-0003', 2, '2020-07-15', '2020-07-16', 10, 50000, 'Lunas', 'baju tidur'),
(8, 'PLG-0008', 2, '2020-07-08', '2020-07-10', 7, 35000, 'Lunas', 'Handuk 3, Jaket 2'),
(9, 'PLG-0009', 2, '2020-07-11', '2020-07-13', 10, 50000, 'Lunas', 'pakaian 10 potong');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE IF NOT EXISTS `tb_pelanggan` (
  `kode_pelanggan` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(20) NOT NULL,
  PRIMARY KEY (`kode_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`kode_pelanggan`, `nama`, `alamat`, `telepon`) VALUES
('PLG-0001', 'Elva Danisa', 'Demak', '083862999778'),
('PLG-0002', 'Danisaa', 'Semarang', '081234567899'),
('PLG-0003', 'Tasliah', 'Trengguli Demak', '083862973511'),
('PLG-0004', 'Reza', 'Semarang', '081122393022'),
('PLG-0007', 'nadya jaya', 'Demak', '123456789098'),
('PLG-0008', 'Muhamad Febrian', 'Demak', '08726718273'),
('PLG-0009', 'Mujiono', 'Demak', '0863738291');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
  `kode_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `kode_user` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `pemasukan` int(11) NOT NULL,
  `pengeluaran` int(11) NOT NULL,
  `catatan` text NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  PRIMARY KEY (`kode_transaksi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`kode_transaksi`, `kode_user`, `tgl_transaksi`, `pemasukan`, `pengeluaran`, `catatan`, `keterangan`) VALUES
(2, 2, '2020-07-16', 35000, 0, 'baju', 'pemasukan'),
(3, 2, '2020-07-09', 0, 35000, 'membeli pewangi pakaian', 'pengeluaran'),
(4, 2, '2020-07-15', 50000, 0, 'baju tidur', 'pemasukan'),
(5, 2, '2020-07-07', 0, 50000, 'membeli detergen', 'pengeluaran'),
(6, 2, '2020-07-08', 35000, 0, 'Handuk 3, Jaket 2', 'pemasukan'),
(7, 2, '2020-07-11', 50000, 0, 'pakaian 10 potong', 'pemasukan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `nama_user`, `password`, `level`, `foto`) VALUES
(2, 'kasir', 'kasir01', '123456', 'kasir', 'gambar6.png'),
(3, 'admin', 'admin', '123', 'kasir', 'gambar3.png'),
(4, 'kasir2', 'kasir02', '123', 'kasir', 'gambar5.png');
