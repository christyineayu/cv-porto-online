-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 06:00 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `porto`
--

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id_pusat` int(11) NOT NULL,
  `klien_kategori` enum('filter-app','filter-web','filter-app-web','') NOT NULL,
  `kategori` enum('Aplikasi Mobile','Website','Website + Mobile','') NOT NULL,
  `klien_thn` varchar(255) NOT NULL,
  `klien_nm` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `ket` varchar(555) NOT NULL,
  `id_foto` varchar(255) NOT NULL,
  `id_gmbr` varchar(255) DEFAULT NULL,
  `status` enum('portofolio','portofolio-detail','','') NOT NULL,
  `gmbr` varchar(255) DEFAULT NULL,
  `gmbr_detail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`id_pusat`, `klien_kategori`, `kategori`, `klien_thn`, `klien_nm`, `judul`, `ket`, `id_foto`, `id_gmbr`, `status`, `gmbr`, `gmbr_detail`) VALUES
(1, 'filter-web', 'Website', '2018', 'PT Traval Tujuh Samudra ', 'TRAVAL.CO', 'Website untuk Biro Perjalanan dan Wisata', 'P1', 'P1', 'portofolio', 'traval-18-1.png', 'traval-18-1.png'),
(2, '', '', '', '', '', '', 'P1', 'P1', 'portofolio-detail', 'traval-18-2.png', 'traval-18-2.png'),
(3, '', '', '', '', '', '', 'P1', 'P1', '', 'traval-18-3.png', 'traval-18-3.png'),
(4, '', '', '', '', '', '', 'P1', 'P1', '', 'traval-18-4.png', 'traval-18-4.png'),
(5, 'filter-app', 'Aplikasi Mobile', '2018', 'PT Asuransi Jasa Indonesia ', 'JASINDO Health Care', 'Aplikasi program Asuransi Kesehatan', 'P2', 'P2', 'portofolio', 'jas-18-1.png', 'jas-18-1.png'),
(6, '', '', '', '', '', '', 'P2', 'P2', 'portofolio-detail', 'jas-18-2.png', 'jas-18-2.png'),
(7, '', '', '', '', '', '', 'P2', 'P2', 'portofolio-detail', 'jas-18-3.png', 'jas-18-3.png'),
(8, 'filter-web', 'Website', '2019', 'PT Asuransi Jasa Indonesia ', 'JASINDO Klaim', 'Website guna pengajuan klaim', 'P3', 'P3', 'portofolio', 'jas-19-1.png', 'jas-19-1.png'),
(9, '', '', '', '', '', '', 'P3', 'P3', 'portofolio-detail', 'jas-19-2.png', 'jas-19-2.png'),
(10, 'filter-app', 'Aplikasi Mobile', '2019', 'PT Astra Sedaya Finance', 'AccMe', 'Aplikasi internal untuk sales', 'P4', 'P4', 'portofolio', 'accMe1.png', 'accMe1.png'),
(11, '', '', '', '', '', '', 'P4', 'P4', 'portofolio-detail', 'accMe2.png', 'accMe2.png'),
(12, 'filter-app', 'Aplikasi Mobile', '2019', 'PT Astra Sedaya Finance', 'Acc Leads Mobile', 'Aplikasi internal management', 'P5', 'P5', 'portofolio', 'acc-lead-m0.png', 'acc-lead-m0.png'),
(13, '', '', '', '', '', '', 'P5', 'P5', 'portofolio-detail', 'acc-lead-m1.png', 'acc-lead-m1.png'),
(14, '', '', '', '', '', '', 'P5', 'P5', 'portofolio-detail', 'acc-lead-m2.png', 'acc-lead-m2.png'),
(15, '', '', '', '', '', '', 'P5', 'P5', 'portofolio-detail', 'acc-lead-m3.png', 'acc-lead-m3.png'),
(16, 'filter-web', 'Website', '2019', 'PT Astra Sedaya Finance ', 'Acc Leads CMS', 'Web CMS Acc Leads', 'P6', 'P6', 'portofolio', 'accLead-cms1.png', 'accLead-cms1.png'),
(17, '', '', '', '', '', '', 'P6', 'P6', 'portofolio-detail', 'accLead-cms2.png', 'accLead-cms2.png'),
(18, 'filter-app', 'Aplikasi Mobile', '2019', 'PT Astra Sedaya Finance', 'Acc Partner', 'Aplikasi internal', 'P7', 'P7', 'portofolio', 'acc-partner1.jpg', 'acc-partner1.jpg'),
(19, '', '', '', '', '', '', 'p7', 'P7', 'portofolio-detail', 'acc-partner2.jpg', 'acc-partner2.jpg'),
(20, '', '', '', '', '', '', 'P7', 'P7', 'portofolio-detail', 'acc-partner3.jpg', 'acc-partner3.jpg'),
(21, '', '', '', '', '', '', 'P7', 'P7', 'portofolio-detail', 'acc-partner4.jpg', 'acc-partner4.jpg'),
(22, '', '', '', '', '', '', 'P7', 'P7', 'portofolio-detail', 'acc-partner5.jpg', 'acc-partner5.jpg'),
(23, 'filter-app', 'Aplikasi Mobile', '2019', 'PT Federal International Finance', 'FIF SPEKTRA', 'Aplikasi untuk sales', 'P8', 'P8', 'portofolio', 'f1.jpg', 'f1.jpg'),
(24, '', '', '', '', '', '', 'P8', 'P8', 'portofolio-detail', 'f2.jpg', 'f2.jpg'),
(25, '', '', '', '', '', '', 'P8', 'P8', 'portofolio-detail', 'f3.jpg', 'f3.jpg'),
(26, '', '', '', '', '', '', 'P8', 'P8', 'portofolio-detail', 'f4.jpg', 'f4.jpg'),
(27, 'filter-web', 'Website', '2019', 'PT Federal International Finance ', 'FIF SPEKTRA CMS', 'Website cms untuk FIF Spektra Mobile Apps', 'P9', 'P9', 'portofolio', 'fw1.png', 'fw1.png'),
(28, '', '', '', '', '', '', 'P9', 'P9', 'portofolio-detail', 'fw2.png', 'fw2.png'),
(29, 'filter-web', 'Website', '2020 - 2021', 'PT Chubb General Insurance Indonesia dan PT Chubb Life Insurance ', 'Chubb Agency', 'Website untuk pengajuan asuransi', 'P10', 'P10', 'portofolio', 'chubb-agency1.png', 'chubb-agency1.png'),
(30, '', '', '', '', '', '', 'P10', 'P10', 'portofolio-detail', 'chubb-agency2.png', 'chubb-agency2.png'),
(31, '', '', '', '', '', '', 'P10', 'P10', 'portofolio-detail', 'chubb-agency3.png', 'chubb-agency3.png'),
(32, '', '', '', '', '', '', 'P10', 'P10', 'portofolio-detail', 'chubb-agency4.png', 'chubb-agency4.png'),
(33, '', '', '', '', '', '', 'P10', 'P10', 'portofolio-detail', 'chubb-agency5.png', 'chubb-agency5.png'),
(34, 'filter-web', 'Website', '2020 - 2022', 'PT Chubb General Insurance Indonesia dan PT Chubb Life Insurance', 'Chubb Portal & Chubb E-learning ', 'Website internal unrtuk sales dan staff', 'P11', 'P11', 'portofolio', 'ChubPE-login.png', 'ChubPE-login.png'),
(35, '', '', '', '', '', '', 'P11', 'P11', 'portofolio-detail', 'ChubbPE-dashboard.png', 'ChubbPE-dashboard.png'),
(36, '', '', '', '', '', '', 'P11', 'P11', 'portofolio-detail', 'ChubE-kalender.png', 'ChubE-kalender.png'),
(37, '', '', '', '', '', '', 'P11', 'P11', 'portofolio-detail', 'ChubE-training-fail.png', 'ChubE-training-fail.png'),
(38, '', '', '', '', '', '', 'P11', 'P11', 'portofolio-detail', 'ChubE-training-feedback.png', 'ChubE-training-feedback.png'),
(39, '', '', '', '', '', '', 'P11', 'P11', 'portofolio-detail', 'ChubP1.png', 'ChubP1.png'),
(40, '', '', '', '', '', '', 'P11', 'P11', 'portofolio-detail', 'ChubP2.png', 'ChubP2.png'),
(41, '', '', '', '', '', '', 'P11', 'P11', 'portofolio-detail', 'ChubP3.png', 'ChubP3.png'),
(42, 'filter-app', 'Aplikasi Mobile', '2020', 'Pertamina Hulu Kalimantan Timur ', 'Hazwa (Hazard Hunt SWA) Mobile', 'Aplikasi internal keselamatan kerja', 'P12', 'P12', 'portofolio', 'Hazwa-m1.jpg', 'Hazwa-m1.jpg'),
(43, '', '', '', '', '', '', 'P12', 'P12', 'portofolio-detail', 'Hazwa-m2.jpg', 'Hazwa-m2.jpg'),
(44, '', '', '', '', '', '', 'P12', 'P12', 'portofolio-detail', 'Hazwa-m3.jpg', 'Hazwa-m3.jpg'),
(45, '', '', '', '', '', '', 'P12', 'P12', 'portofolio-detail', 'Hazwa-m4.jpg', 'Hazwa-m4.jpg'),
(46, '', '', '', '', '', '', 'P12', 'P12', 'portofolio-detail', 'Hazwa-m5.jpg', 'Hazwa-m5.jpg'),
(47, '', '', '', '', '', '', 'P12', 'P12', 'portofolio-detail', 'Hazwa-m6.jpg', 'Hazwa-m6.jpg'),
(48, 'filter-web', 'Website', '2020', 'Pertamina Hulu Kalimantan Timur ', 'Hazwa (Hazard Hunt SWA) Website', 'Aplikasi internal keselamatan kerja versi web', 'P13', 'P13', 'portofolio', 'Hazwa-web1.jpg', 'Hazwa-web1.jpg'),
(49, '', '', '', '', '', '', 'P13', 'P13', 'portofolio-detail', 'Hazwa-web2.jpg', 'Hazwa-web2.jpg'),
(50, '', '', '', '', '', '', 'P13', 'P13', 'portofolio-detail', 'Hazwa-web3a.jpg', 'Hazwa-web3a.jpg'),
(51, '', '', '', '', '', '', 'P13', 'P13', 'portofolio-detail', 'Hazwa-web3b.jpg', 'Hazwa-web3b.jpg'),
(52, '', '', '', '', '', '', 'P13', 'P13', 'portofolio-detail', 'Hazwa-web4.jpg', 'Hazwa-web4.jpg'),
(53, '', '', '', '', '', '', 'P13', 'P13', 'portofolio-detail', 'Hazwa-web5.jpg', 'Hazwa-web5.jpg'),
(54, 'filter-app-web', 'Website + Mobile', '2020', 'Pertamina Hulu Kalimantan Timur ', 'Central Approval | Mobile - Website', 'Website internal untuk approval dokumen dan laporan, selain itu website ini responsive sampai mobile', 'P14', 'P14', 'portofolio', '1_CentralApp_W.png', '1_CentralApp_W.png'),
(55, '', '', '', '', '', '', 'P14', 'P14', 'portofolio-detail', '2_CentralApp_W.png', '2_CentralApp_W.png'),
(56, '', '', '', '', '', '', 'P14', 'P14', 'portofolio-detail', '3_CentralApp_W_a.png', '3_CentralApp_W_a.png'),
(57, '', '', '', '', '', '', 'P14', 'P14', 'portofolio-detail', '3_CentralApp_W_b.png', '3_CentralApp_W_b.png'),
(58, '', '', '', '', '', '', 'P14', 'P14', 'portofolio-detail', '3_CentralApp_W_c.png', '3_CentralApp_W_c.png'),
(59, '', '', '', '', '', '', 'P14', 'P14', 'portofolio-detail', '4_CentralApp_W.png', '4_CentralApp_W.png'),
(60, '', '', '', '', '', '', 'P14', 'P14', 'portofolio-detail', '1_CentralApp_M.png', '1_CentralApp_M.png'),
(61, '', '', '', '', '', '', 'P14', 'P14', 'portofolio-detail', '2_CentralApp_M.png', '2_CentralApp_M.png'),
(62, '', '', '', '', '', '', 'P14', 'P14', 'portofolio-detail', '3_CentralApp_M_a.png', '3_CentralApp_M_a.png'),
(63, '', '', '', '', '', '', 'P14', 'P14', 'portofolio-detail', '3_CentralApp_M_b.png', '3_CentralApp_M_b.png'),
(64, '', '', '', '', '', '', 'P14', 'P14', 'portofolio-detail', '3_CentralApp_M_c.png', '3_CentralApp_M_c.png'),
(65, '', '', '', '', '', '', 'P14', 'P14', 'portofolio-detail', '4_CentralApp_M.png', '4_CentralApp_M.png'),
(66, 'filter-app', 'Aplikasi Mobile', '2020', 'Pertamina Hulu Kalimantan Timur ', 'COMP4SS Scanner Mobile', 'Aplikasi internal scan staff', 'P15', 'P15', 'portofolio', 'c41.jpg', 'c41.jpg'),
(67, '', '', '', '', '', '', 'P15', 'P15', 'portofolio-detail', 'c42-fix.jpg', 'c42-fix.jpg'),
(68, '', '', '', '', '', '', 'P15', 'P15', 'portofolio-detail', 'c43.jpg', 'c43.jpg'),
(69, '', '', '', '', '', '', 'P15', 'P15', 'portofolio-detail', 'c44.jpg', 'c44.jpg'),
(70, '', '', '', '', '', '', 'P15', 'P15', 'portofolio-detail', 'c45.jpg', 'c45.jpg'),
(71, 'filter-web', 'Website', '2020', 'Pertamina Hulu Kalimantan Timur ', 'COMP4SS  Scanner Desktop', 'Aplikasi internal scan staff', 'P16', 'P16', 'portofolio', 'webCompas-d0.png', 'webCompas-d0.png'),
(72, '', '', '', '', '', '', 'P16', 'P16', 'portofolio-detail', 'webCompas-d1.jpg', 'webCompas-d1.jpg'),
(73, '', '', '', '', '', '', 'P16', 'P16', 'portofolio-detail', 'webCompas-d2.jpg', 'webCompas-d2.jpg'),
(74, '', '', '', '', '', '', 'P16', 'P16', 'portofolio-detail', 'webCompas-d3.jpg', 'webCompas-d3.jpg'),
(75, '', '', '', '', '', '', 'P16', 'P16', 'portofolio-detail', 'webCompas-d4.jpg', 'webCompas-d4.jpg'),
(76, '', '', '', '', '', '', 'P16', 'P16', 'portofolio-detail', 'webCompas-d5.jpg', 'webCompas-d5.jpg'),
(77, 'filter-web', 'Website', '2020', 'Pertamina Hulu Kalimantan Timur ', 'COMP4SS LIVE - Large Display', 'Aplikasi internal scan staff secara live', 'P17', 'P17', 'portofolio', 'web-lg1.jpg', 'web-lg1.jpg'),
(78, '', '', '', '', '', '', 'P17', 'P17', 'portofolio-detail', 'web-lg2.jpg', 'web-lg2.jpg'),
(79, '', '', '', '', '', '', 'P17', 'P17', 'portofolio-detail', 'web-lg3.jpg', 'web-lg3.jpg'),
(80, '', '', '', '', '', '', 'P17', 'P17', 'portofolio-detail', 'web-lg4.jpg', 'web-lg4.jpg'),
(81, 'filter-web', 'Website', '2020', 'BTPN ', 'Backend/CMS', 'Website intenal untuk CMS', 'P18', 'P18', 'portofolio', 'btpn1.png', 'btpn1.png'),
(82, '', '', '', '', '', '', 'P18', 'P18', 'portofolio-detail', 'btpn2.png', 'btpn2.png'),
(83, '', '', '', '', '', '', 'P18', 'P18', 'portofolio-detail', 'btpn3.png', 'btpn3.png'),
(84, '', '', '', '', '', '', 'P18', 'P18', 'portofolio-detail', 'btpn4.png', 'btpn4.png'),
(85, 'filter-app', 'Aplikasi Mobile', '2020- 2022', 'PT. Toyota Astra Motor', 'mToyota', 'Aplikasi interaktif untuk semua kebutuhan Toyota seperti customer car, chat Tarra bila ingin mendapatkan informasi seputar Toyota, news, event, promo', 'P19', 'P19', 'portofolio', 'mtoyotaFull1.png', 'mtoyotaFull1.png'),
(86, '', '', '', '', '', '', 'P19', 'P19', 'portofolio-detail', 'mtoyotaFull2.png', 'mtoyotaFull2.png'),
(87, '', '', '', '', '', '', 'P19', 'P19', 'portofolio-detail', 'mtoyotaFull3.png', 'mtoyotaFull3.png'),
(88, '', '', '', '', '', '', 'P19', 'P19', 'portofolio-detail', 'mtoyotaFull4.png', 'mtoyotaFull4.png'),
(89, '', '', '', '', '', '', 'P19', 'P19', 'portofolio-detail', 'mtoyotaFull5.png', 'mtoyotaFull5.png'),
(90, '', '', '', '', '', '', 'P19', 'P19', 'portofolio-detail', 'mtoyotaFull6.png', 'mtoyotaFull6.png'),
(91, '', '', '', '', '', '', 'P19', 'P19', 'portofolio-detail', 'mtoyotaFull7.png', 'mtoyotaFull7.png'),
(92, '', '', '', '', '', '', 'P19', 'P19', 'portofolio-detail', 'mtoyotaFull8.png', 'mtoyotaFull8.png'),
(93, '', '', '', '', '', '', 'P19', 'P19', 'portofolio-detail', 'mtoyotaFull9.png', 'mtoyotaFull9.png'),
(94, '', '', '', '', '', '', 'P19', 'P19', 'portofolio-detail', 'mtoyotaFull10.png', 'mtoyotaFull10.png'),
(95, 'filter-app-web', 'Website + Mobile', '2021 -  2022', 'PT. Toyota Astra Motor', 'Microsite/CMS | Mobile - Website', 'Website untuk CMS mToyota, responsive sampai mobile', 'P20', 'P20', 'portofolio', 'microsite1.png', 'microsite1.png'),
(96, '', '', '', '', '', '', 'P20', 'P20', 'portofolio-detail', 'microsite2.png', 'microsite2.png'),
(97, '', '', '', '', '', '', 'P20', 'P20', 'portofolio-detail', 'microsite3.png', 'microsite3.png'),
(98, 'filter-app', 'Aplikasi Mobile', '2021', 'PT. Toyota Astra Motor', 'Chatbot Tarra', 'Aplikasi chatbot apabila pengguna ingin mendapatkan informasi lebih lanjut', 'P21', 'P21', 'portofolio', 'tarra1.jpg', 'tarra1.jpg'),
(99, '', '', '', '', '', '', 'P21', 'P21', 'portofolio-detail', 'tarra2.jpg', 'tarra2.jpg'),
(100, '', '', '', '', '', '', 'P21', 'P21', 'portofolio-detail', 'tarra3.jpg', 'tarra3.jpg'),
(101, '', '', '', '', '', '', 'P21', 'P21', 'portofolio-detail', 'tarra4.jpg', 'tarra4.jpg'),
(102, 'filter-app', 'Aplikasi Mobile', '2021 - 2022', 'PT. Toyota Astra Motor', 'Telematics', 'Aplikasi solusi layanan dan aplikasi terintegrasi yang memberikan kemudahan untuk terhubung dengan kendaraan', 'P22', 'P22', 'portofolio', 'telematic-full1.png', 'telematic-full1.png'),
(103, '', '', '', '', '', '', 'P22', 'P22', 'portofolio-detail', 'telematic-full2.png', 'telematic-full2.png'),
(104, '', '', '', '', '', '', 'P22', 'P22', 'portofolio-detail', 'telematic-full3.png', 'telematic-full3.png'),
(105, '', '', '', '', '', '', 'P22', 'P22', 'portofolio-detail', 'telematic-full4.png', 'telematic-full4.png'),
(106, '', '', '', '', '', '', 'P22', 'P22', 'portofolio-detail', 'telematic-full5.png', 'telematic-full5.png'),
(107, '', '', '', '', '', '', 'P22', 'P22', 'portofolio-detail', 'telematic-full6.png', 'telematic-full6.png'),
(108, 'filter-app-web', 'Website + Mobile', '2021', 'PT. Taspen ', 'Taspen Life | Mobile -Website', 'Aplikasi Website responsive mobile guna monitoring data', 'P23', 'P23', 'portofolio', 't1a.png', 't1a.png'),
(109, '', '', '', '', '', '', 'P23', 'P23', 'portofolio-detail', 't1b.png', 't1b.png'),
(110, '', '', '', '', '', '', 'P23', 'P23', 'portofolio-detail', 't1c.png', 't1c.png'),
(111, '', '', '', '', '', '', 'P23', 'P23', 'portofolio-detail', 't1d.png', 't1d.png'),
(112, '', '', '', '', '', '', 'P23', 'P23', 'portofolio-detail', 'tm1.jpg', 'tm1.jpg'),
(113, '', '', '', '', '', '', 'P23', 'P23', 'portofolio-detail', 'tm2.jpg', 'tm2.jpg'),
(114, '', '', '', '', '', '', 'P23', 'P23', 'portofolio-detail', 'tm3.jpg', 'tm3.jpg'),
(115, '', '', '', '', '', '', 'P23', 'P23', 'portofolio-detail', 'tm4.jpg', 'tm4.jpg'),
(116, '', '', '', '', '', '', 'P23', 'P23', 'portofolio-detail', 'tm5.jpg', 'tm5.jpg'),
(117, 'filter-app', 'Aplikasi Mobile', '2021', 'PT. Toyota Astra Motor', 'Used Car ', 'Aplikasi Toyota yang menjual used car Toyota berkualitas dan bersertifikasi sehingga pelanggan dapat menikmati garansi resmi dari PT Toyota Astra Motor. Selain itu pelanggan tidak perlu khawatir karena setiap used car Toyota sudah melalui proses pengecekan di 203 titik dan pastinya aman dan transparan.', 'P24', 'P24', 'portofolio', 'used-car3.png', 'used-car3.png'),
(118, '', '', '', '', '', '', 'P24', 'P24', 'portofolio-detail', 'used-car1.png', 'used-car1.png'),
(119, '', '', '', '', '', '', 'P24', 'P24', 'portofolio-detail', 'used-car4.png', 'used-car4.png'),
(120, '', '', '', '', '', '', 'P24', 'P24', 'portofolio-detail', 'used-car5.png', 'used-car5.png'),
(121, '', '', '', '', '', '', 'P24', 'P24', 'portofolio-detail', 'used-car2.png', 'used-car2.png'),
(122, 'filter-app', 'Aplikasi Mobile', '2021 - 2022', 'PT. Toyota Astra Motor', 'TAM Microservice', 'Aplikasi untuk service mobil', 'P25', 'P25', 'portofolio', '1_microservice.png', '1_microservice.png'),
(123, '', '', '', '', '', '', 'P25', 'P25', 'portofolio-detail', '2_microservice.png', '2_microservice.png'),
(124, '', '', '', '', '', '', 'P25', 'P25', 'portofolio-detail', '3_microservice.png', '3_microservice.png'),
(125, '', '', '', '', '', '', 'P25', 'P25', 'portofolio-detail', '4_microservice.png', '4_microservice.png'),
(126, '', '', '', '', '', '', 'P25', 'P25', 'portofolio-detail', '6_microservice.png', '6_microservice.png'),
(127, '', '', '', '', '', '', 'P25', 'P25', 'portofolio-detail', '7_microservice.png', '7_microservice.png'),
(128, '', '', '', '', '', '', 'P25', 'P25', 'portofolio-detail', '8_microservice.png', '8_microservice.png'),
(129, '', '', '', '', '', '', 'P25', 'P25', 'portofolio-detail', '9_microservice.png', '9_microservice.png'),
(130, '', '', '', '', '', '', 'P25', 'P25', 'portofolio-detail', '10_microservice.png', '10_microservice.png'),
(131, 'filter-web', 'Website', '2022', 'PT. Toyota Astra Motor', 'Funnel', 'Aplikasi untuk dealer sales', 'P26', 'P26', 'portofolio', 'funnel1.png', 'funnel1.png'),
(132, '', '', '', '', '', '', 'P26', 'P26', 'portofolio-detail', 'funnel2.png', 'funnel2.png'),
(133, '', '', '', '', '', '', 'P26', 'P26', 'portofolio-detail', 'funnel3.png', 'funnel3.png'),
(134, '', '', '', '', '', '', 'P26', 'P26', 'portofolio-detail', 'funnel4.png', 'funnel4.png'),
(135, '', '', '', '', '', '', 'P26', 'P26', 'portofolio-detail', 'funnel5.png', 'funnel5.png'),
(136, '', '', '', '', '', '', 'P26', 'P26', 'portofolio-detail', 'funnel6.png', 'funnel6.png'),
(137, '', '', '', '', '', '', 'P26', 'P26', 'portofolio-detail', 'funnel7.png', 'funnel7.png'),
(138, '', '', '', '', '', '', 'P26', 'P26', 'portofolio-detail', 'funnel8.png', 'funnel8.png'),
(139, 'filter-app', 'Aplikasi Mobile', '2019', 'PT Asuransi Jiwa Generali', 'Generali eSub (SPAJ)', 'Aplikasi Pengajuan Asuransi Jiwa', 'P27', 'P27', 'portofolio', 'Generali SPAJ1.png', 'Generali SPAJ1.png'),
(140, '', '', '', '', '', '', 'P27', 'P27', 'portofolio-detail', 'Generali SPAJ2.png', 'Generali SPAJ2.png'),
(141, 'filter-web', 'Website', '2022', 'Nature Bird Nest', 'Nature Bird Nest', 'Website produk olahan sarang burung walet \"Nature Bird Nest\" ', 'P28', 'P28', 'portofolio', 'NatureBirdNest1.png', 'NatureBirdNest1.png'),
(142, '', '', '', '', '', '', 'P28', 'P28', 'portofolio-detail', 'NatureBirdNest2.png', 'NatureBirdNest2.png'),
(143, '', '', '', '', '', '', 'P28', 'P28', 'portofolio-detail', 'NatureBirdNest3.png', 'NatureBirdNest3.png'),
(144, '', '', '', '', '', '', 'P28', 'P28', 'portofolio-detail', 'NatureBirdNest4.png', 'NatureBirdNest4.png'),
(145, '', '', '', '', '', '', 'P28', 'P28', 'portofolio-detail', 'NatureBirdNest5.png', 'NatureBirdNest5.png'),
(146, '', '', '', '', '', '', 'P28', 'P28', 'portofolio-detail', 'NatureBirdNest6.png', 'NatureBirdNest6.png'),
(147, 'filter-web', 'Website', '2021', 'PT. Makmur Sejahtera Mesindo ( MASEMA )', 'MASEMA', 'Website produk mesin', 'P29', 'P29', 'portofolio', 'Masema1.png', 'Masema1.png'),
(148, '', '', '', '', '', '', 'P29', 'P29', 'portofolio-detail', 'Masema2.png', 'Masema2.png'),
(149, '', '', '', '', '', '', 'P29', 'P29', 'portofolio-detail', 'Masema3.png', 'Masema3.png'),
(150, '', '', '', '', '', '', 'P29', 'P29', 'portofolio-detail', 'Masema4.png', 'Masema4.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_pusat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id_pusat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
