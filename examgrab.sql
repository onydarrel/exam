-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 17 Jul 2020 pada 12.25
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id14251038_project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5f03e8819b5ed', '5f03e881b0342'),
('5f03e881e9244', '5f03e881f33eb'),
('5f03e8822ff06', '5f03e88238236'),
('5f03e88258b36', '5f03e88261027'),
('5f03e88291a01', '5f03e88299d15'),
('5f03e882ba624', '5f03e882c26df'),
('5f03e882ef44d', '5f03e88303477'),
('5f03e8832be68', '5f03e88334181'),
('5f03e883569e9', '5f03e8835ead3'),
('5f03e8837f3ef', '5f03e88387745'),
('5f03e883ae1c1', '5f03e883b62b9'),
('5f03e883d6bb0', '5f03e883def0c'),
('5f03e8842d12d', '5f03e8844a5cb'),
('5f03e88471029', '5f03e884793c0'),
('5f03e88499c73', '5f03e884a1d64'),
('5f03e9e52b78b', '5f03e9e53f7ac'),
('5f03e9e56a433', '5f03e9e5741be'),
('5f03e9e5b85f0', '5f03e9e5bf547'),
('5f03e9e62cde4', '5f03e9e645500'),
('5f03e9e669eda', '5f03e9e671fde'),
('5f03e9e69cb82', '5f03e9e6a4ef9'),
('5f03e9e6c9e9b', '5f03e9e6d9d43'),
('5f03e9e7063d6', '5f03e9e70e51c'),
('5f03e9e72ecb0', '5f03e9e737005'),
('5f03e9e757949', '5f03e9e75fa01'),
('5f03e9e780305', '5f03e9e78c7be'),
('5f03e9e7b1150', '5f03e9e7b9265'),
('5f03e9e7d9b65', '5f03e9e7e1e81'),
('5f03e9e80e729', '5f03e9e81b9be'),
('5f03e9e851639', '5f03e9e859988'),
('5f046ccc9f3fa', '5f046cccb323f');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 04:36:37'),
('', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 04:36:37'),
('', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 04:40:21'),
('aangfernandi@gmail.com', '5f03e6ed3cc98', 35, 15, 10, 5, '2020-07-11 04:43:33'),
('aangfernandi@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 04:45:16'),
('adhityaa866@gmail.com', '5f03e6ed3cc98', 70, 15, 13, 3, '2020-07-11 04:48:17'),
('adhityaa866@gmail.com', '5f03e8afc2c19', 63, 15, 12, 3, '2020-07-11 04:50:27'),
('adisiswoyo78@gmail.com', '5f03e6ed3cc98', 42, 6, 6, 0, '2020-07-11 04:54:24'),
('agus.suparjiono@gmail.com', '5f03e6ed3cc98', -42, 15, 9, 15, '2020-07-11 05:02:22'),
('agus.suparjiono@gmail.com', '5f03e8afc2c19', 63, 15, 12, 3, '2020-07-11 05:00:16'),
('adisiswoyo78@gmail.com', '5f03e8afc2c19', 35, 15, 11, 6, '2020-07-11 05:06:52'),
('agusbanpol105@gmail.com', '5f03e6ed3cc98', -49, 15, 4, 11, '2020-07-11 05:15:14'),
('agusbanpol105@gmail.com', '5f03e8afc2c19', -7, 15, 7, 8, '2020-07-11 05:17:30'),
('aguspurwantoblitar@gmail.com', '5f03e6ed3cc98', 35, 15, 10, 5, '2020-07-11 05:24:43'),
('aguspurwantoblitar@gmail.com', '5f03e8afc2c19', 84, 15, 14, 2, '2020-07-11 05:26:46'),
('ajijaya25959@gmail.com', '5f03e6ed3cc98', 14, 15, 9, 7, '2020-07-11 05:32:53'),
('agussuprobo@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 05:34:46'),
('ajijaya25959@gmail.com', '5f03e8afc2c19', 49, 15, 11, 4, '2020-07-11 05:34:48'),
('alpiankristanto001@gmail.ocm', '5f03e6ed3cc98', 49, 15, 11, 4, '2020-07-11 05:37:46'),
('agussuprobo@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 05:38:31'),
('alpiankristanto001@gmail.ocm', '5f03e8afc2c19', 49, 15, 11, 4, '2020-07-11 05:39:05'),
('aminudinwijayanto@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 05:42:26'),
('antoksgrsulaiman@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 05:43:34'),
('aminudinwijayanto@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 05:44:12'),
('antoksgrsulaiman@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 05:48:49'),
('antondsco22@gmail.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 05:48:53'),
('antondsco22@gmail.com', '5f03e8afc2c19', 7, 15, 8, 7, '2020-07-11 05:50:05'),
('antondsco2@gmail.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 05:52:05'),
('antondsco2@gmail.com', '5f03e8afc2c19', 7, 15, 8, 7, '2020-07-11 05:53:22'),
('anwarama356@gmail.com', '5f03e6ed3cc98', -49, 15, 4, 11, '2020-07-11 05:55:08'),
('ariabima803@gmail.com', '5f03e6ed3cc98', 77, 15, 13, 2, '2020-07-11 05:56:32'),
('anwarama356@gmail.com', '5f03e8afc2c19', -35, 15, 5, 10, '2020-07-11 05:58:41'),
('ariestiyono16@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 06:00:14'),
('arikekagb034@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 06:02:01'),
('ariestiyono16@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 06:01:33'),
('arikperlo@gmail.com', '5f03e6ed3cc98', 0, 15, 8, 8, '2020-07-11 06:04:36'),
('arikperlo@gmail.com', '5f03e8afc2c19', 63, 15, 12, 3, '2020-07-11 06:07:14'),
('aripanto26@gamil.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 06:08:36'),
('aripanto26@gamil.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 06:10:03'),
('aureltalfarizie2009@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 06:16:57'),
('aureltalfarizie2009@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 06:18:09'),
('bagustriyan22@gmail.com', '5f03e6ed3cc98', -35, 15, 5, 10, '2020-07-11 06:20:50'),
('ayudhawilangdjaja@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 06:21:04'),
('bagustriyan22@gmail.com', '5f03e8afc2c19', 7, 15, 8, 7, '2020-07-11 06:22:08'),
('ayudhawilangdjaja@gmail.com', '5f03e8afc2c19', -21, 15, 6, 9, '2020-07-11 06:23:11'),
('bburhan833@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 06:25:41'),
('benobrandal@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 06:26:10'),
('bburhan833@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 06:27:17'),
('benobrandal@gmail.com', '5f03e8afc2c19', 49, 15, 11, 4, '2020-07-11 06:28:36'),
('bigertonur2@gmail.com', '5f03e6ed3cc98', -35, 15, 5, 10, '2020-07-11 06:29:28'),
('bigertonur2@gmail.com', '5f03e8afc2c19', -21, 15, 6, 9, '2020-07-11 06:30:29'),
('bonenkclink1@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 06:31:40'),
('bravofox505@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 06:32:15'),
('bonenkclink1@gmail.com', '5f03e8afc2c19', 63, 15, 12, 3, '2020-07-11 06:33:18'),
('bravofox505@gmail.com', '5f03e8afc2c19', 42, 15, 11, 5, '2020-07-11 06:33:44'),
('cah4854@gmail.com', '5f03e6ed3cc98', -14, 15, 7, 9, '2020-07-11 06:35:20'),
('cahhh.ag.717@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 06:37:41'),
('cah4854@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 06:36:50'),
('capusant696@gmail.com', '5f03e6ed3cc98', -7, 15, 8, 9, '2020-07-11 06:38:46'),
('cahhh.ag.717@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 06:39:25'),
('capusant696@gmail.com', '5f03e8afc2c19', -7, 15, 7, 8, '2020-07-11 06:39:46'),
('catur.septian97@gmail.com', '5f03e6ed3cc98', 49, 15, 11, 4, '2020-07-11 07:02:47'),
('catur.septian97@gmail.com', '5f03e8afc2c19', 63, 15, 12, 3, '2020-07-11 07:03:50'),
('danangfsykes@gmail.com', '5f03e6ed3cc98', 42, 15, 11, 5, '2020-07-11 07:06:26'),
('danangfsykes@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 07:08:18'),
('dian.yazid@gmail.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 07:11:08'),
('dian.yazid@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 07:12:34'),
('didit.prasongko@gmail.com', '5f03e6ed3cc98', 49, 15, 11, 4, '2020-07-11 07:15:11'),
('didit.prasongko@gmail.com', '5f03e8afc2c19', 63, 15, 12, 3, '2020-07-11 07:16:23'),
('dodiktriwahyus@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 07:18:36'),
('dodiktriwahyus@gmail.com', '5f03e8afc2c19', 49, 15, 11, 4, '2020-07-11 07:20:00'),
('dukidakiduk@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 07:22:38'),
('dukidakiduk@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 07:23:59'),
('dwitanto722@gmail.com', '5f03e6ed3cc98', -35, 15, 5, 10, '2020-07-11 07:27:13'),
('dwitanto722@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 07:28:44'),
('endro.1121@gmail.com', '5f03e6ed3cc98', 35, 15, 10, 5, '2020-07-11 07:31:14'),
('endro.1121@gmail.com', '5f03e8afc2c19', 21, 15, 10, 7, '2020-07-11 07:32:38'),
('eprilbewek@gmail.com', '5f03e6ed3cc98', 35, 15, 10, 5, '2020-07-11 07:36:02'),
('eprilbewek@gmail.com', '5f03e8afc2c19', 7, 15, 8, 7, '2020-07-11 07:37:31'),
('eretmi4a.54dg@gmail.com', '5f03e6ed3cc98', 21, 15, 9, 6, '2020-07-11 07:43:11'),
('eretmi4a.54dg@gmail.com', '5f03e8afc2c19', 49, 15, 11, 4, '2020-07-11 07:44:26'),
('erwincoy93@gmail.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 07:46:37'),
('erwincoy93@gmail.com', '5f03e8afc2c19', 49, 15, 11, 4, '2020-07-11 07:47:55'),
('fafoagusryanto@gmail.com', '5f03e6ed3cc98', -35, 15, 5, 10, '2020-07-11 07:49:58'),
('fafoagusryanto@gmail.com', '5f03e8afc2c19', -7, 15, 7, 8, '2020-07-11 07:51:08'),
('fansuriashar21@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 07:54:17'),
('fansuriashar21@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 07:55:32'),
('ferrykurniawan16021987@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 07:58:33'),
('ferrykurniawan16021987@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 07:59:34'),
('grab.pujisantosa@gmail.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 08:01:29'),
('grab.pujisantosa@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 08:02:44'),
('haribowie63@gmail.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 08:05:21'),
('haribowie63@gmail.com', '5f03e8afc2c19', 7, 15, 8, 7, '2020-07-11 08:06:36'),
('harisoekirman.70@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 08:08:47'),
('harisoekirman.70@gmail.com', '5f03e8afc2c19', 0, 15, 8, 8, '2020-07-11 08:10:08'),
('haryadiwahyu73@gmail.com', '5f03e6ed3cc98', -14, 15, 7, 9, '2020-07-11 08:46:38'),
('haryadiwahyu73@gmail.com', '5f03e8afc2c19', 14, 15, 9, 7, '2020-07-11 08:48:34'),
('heriyuliana86@gmail.com', '5f03e6ed3cc98', 49, 15, 11, 4, '2020-07-11 08:51:23'),
('heriyuliana86@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 08:52:25'),
('Hermansuseno01@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 08:54:09'),
('Hermansuseno01@gmail.com', '5f03e8afc2c19', 7, 15, 8, 7, '2020-07-11 08:55:16'),
('ilhamqois34@gmail.com', '5f03e6ed3cc98', 35, 15, 10, 5, '2020-07-11 08:57:24'),
('ilhamqois34@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 08:58:28'),
('iwansahroni82@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 09:01:30'),
('iwansahroni82@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 09:02:30'),
('johanesdodik@gmail.com', '5f03e6ed3cc98', 21, 15, 9, 6, '2020-07-11 09:05:05'),
('johanesdodik@gmail.com', '5f03e8afc2c19', 49, 15, 11, 4, '2020-07-11 09:06:17'),
('jujukhermawan@gmail.com', '5f03e6ed3cc98', 63, 15, 12, 3, '2020-07-11 09:08:04'),
('jujukhermawan@gmail.com', '5f03e8afc2c19', 63, 15, 12, 3, '2020-07-11 09:09:19'),
('kiwunm@gmail.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 09:11:28'),
('kiwunm@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 09:12:30'),
('kupretiwan77@gmail.com', '5f03e6ed3cc98', 21, 15, 9, 6, '2020-07-11 09:15:50'),
('kupretiwan77@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 09:17:05'),
('lazuardiyunita@gmail.com', '5f03e6ed3cc98', 35, 15, 10, 5, '2020-07-11 09:18:59'),
('lazuardiyunita@gmail.com', '5f03e8afc2c19', 63, 15, 12, 3, '2020-07-11 09:20:03'),
('lulutpancariyadi@gmail.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 09:28:16'),
('lulutpancariyadi@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 09:29:30'),
('liemhadijaya@gmail.com', '5f03e6ed3cc98', 49, 15, 11, 4, '2020-07-11 09:31:18'),
('liemhadijaya@gmail.com', '5f03e8afc2c19', 77, 15, 13, 2, '2020-07-11 09:32:28'),
('markus05kukuh@gmail.com', '5f03e6ed3cc98', 21, 15, 9, 6, '2020-07-11 09:34:07'),
('markus05kukuh@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 09:35:06'),
('maryantoblitar8@gmail.com', '5f03e6ed3cc98', 49, 15, 11, 4, '2020-07-11 10:31:45'),
('maryantoblitar8@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 10:32:48'),
('masbenzoeds@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 10:34:38'),
('masbenzoeds@gmail.com', '5f03e8afc2c19', 7, 15, 8, 7, '2020-07-11 10:35:47'),
('master.uki2015@gmail.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 10:37:48'),
('master.uki2015@gmail.com', '5f03e8afc2c19', 77, 15, 13, 2, '2020-07-11 10:39:05'),
('mb.tiyeb99@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 10:41:25'),
('mb.tiyeb99@gmail.com', '5f03e8afc2c19', 7, 15, 8, 7, '2020-07-11 10:42:23'),
('mohamadagusrahmanwahyudi@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 10:45:20'),
('mohamadagusrahmanwahyudi@gmail.com', '5f03e8afc2c19', 49, 15, 11, 4, '2020-07-11 10:46:26'),
('nana.citra1818@gmail.com', '5f03e6ed3cc98', 35, 15, 10, 5, '2020-07-11 10:48:36'),
('nana.citra1818@gmail.com', '5f03e8afc2c19', 77, 15, 13, 2, '2020-07-11 10:49:58'),
('nandakurniayusuf@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 10:51:54'),
('nandakurniayusuf@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 10:52:44'),
('nm.darmawan@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 10:54:46'),
('nm.darmawan@gmail.com', '5f03e8afc2c19', 49, 15, 11, 4, '2020-07-11 10:55:46'),
('nyambik02@gmail.com', '5f03e6ed3cc98', 21, 15, 9, 6, '2020-07-11 10:58:15'),
('nyambik02@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 10:59:14'),
('oddysetiawan94@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 11:01:12'),
('oddysetiawan94@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 11:02:11'),
('panjalutetukosultan@gmail.com', '5f03e6ed3cc98', 35, 15, 10, 5, '2020-07-11 11:04:51'),
('panjalutetukosultan@gmail.com', '5f03e8afc2c19', 49, 15, 11, 4, '2020-07-11 11:05:45'),
('prasetiyawan280692@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 11:07:28'),
('prasetiyawan280692@gmail.com', '5f03e8afc2c19', 7, 15, 8, 7, '2020-07-11 11:08:16'),
('prayudha.adm@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 11:10:49'),
('prayudha.adm@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 11:11:47'),
('pungkiferi.bhl@gmail.com', '5f03e6ed3cc98', 35, 15, 10, 5, '2020-07-11 11:13:20'),
('pungkiferi.bhl@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 11:14:05'),
('purwanto79dandong@gmail.com', '5f03e6ed3cc98', -49, 15, 4, 11, '2020-07-11 11:17:36'),
('purwanto79dandong@gmail.com', '5f03e8afc2c19', -7, 15, 7, 8, '2020-07-11 11:32:44'),
('rezawp88@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 11:35:32'),
('rezawp88@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 11:36:25'),
('ricipriyatama14@gmail.com', '5f03e6ed3cc98', 35, 15, 10, 5, '2020-07-11 11:38:25'),
('ricipriyatama14@gmail.com', '5f03e8afc2c19', 77, 15, 13, 2, '2020-07-11 11:39:35'),
('riskywajar788@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 11:42:15'),
('riskywajar788@gmail.com', '5f03e8afc2c19', 42, 15, 11, 5, '2020-07-11 11:43:07'),
('Rizalefendi996@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 11:45:55'),
('Rizalefendi996@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 11:46:45'),
('rizqitaayomi@gmail.com', '5f03e6ed3cc98', 21, 15, 9, 6, '2020-07-11 11:48:26'),
('rizqitaayomi@gmail.com', '5f03e8afc2c19', -7, 15, 7, 8, '2020-07-11 11:49:11'),
('rohmanlutfi391@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 11:51:02'),
('rohmanlutfi391@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 11:51:50'),
('rosidinateng@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 11:54:13'),
('rosidinateng@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 11:55:10'),
('rudihartanto.rh98@gmail.com', '5f03e6ed3cc98', 21, 15, 9, 6, '2020-07-11 11:56:52'),
('rudihartanto.rh98@gmail.com', '5f03e8afc2c19', 49, 15, 11, 4, '2020-07-11 11:58:10'),
('rudyhammer7062.rh@gmail.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 12:00:26'),
('rudyhammer7062.rh@gmail.com', '5f03e8afc2c19', 7, 15, 8, 7, '2020-07-11 12:01:22'),
('sialan1368@gmail.com', '5f03e6ed3cc98', 35, 15, 10, 5, '2020-07-11 12:04:14'),
('sialan1368@gmail.com', '5f03e8afc2c19', 63, 15, 12, 3, '2020-07-11 12:05:14'),
('siecrus@gmail.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 12:06:55'),
('siecrus@gmail.com', '5f03e8afc2c19', 7, 15, 8, 7, '2020-07-11 12:08:02'),
('solikinimam07@gmail.com', '5f03e6ed3cc98', 21, 15, 9, 6, '2020-07-11 12:09:40'),
('solikinimam07@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 12:10:33'),
('soogeunkin@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 12:15:13'),
('soogeunkin@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 12:16:02'),
('stevanusgeovani@yahoo.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 12:18:33'),
('tmif55@gmail.com', '5f03e6ed3cc98', 21, 15, 9, 6, '2020-07-11 12:21:29'),
('stevanusgeovani@yahoo.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 12:21:03'),
('tmif55@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 12:23:22'),
('universal.sida@gmail.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 12:27:00'),
('universal.sida@gmail.com', '5f03e8afc2c19', 49, 15, 11, 4, '2020-07-11 12:28:00'),
('ujanghendarli@gmail.com', '5f03e6ed3cc98', -7, 15, 7, 8, '2020-07-11 12:29:34'),
('ujanghendarli@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 12:30:21'),
('ujangkusnadi997@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 12:31:38'),
('ujangkusnadi997@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 12:32:26'),
('wahyuramadhan747@gmail.com', '5f03e6ed3cc98', 35, 15, 10, 5, '2020-07-11 12:36:31'),
('wahyuramadhan747@gmail.com', '5f03e8afc2c19', 35, 15, 10, 5, '2020-07-11 12:38:11'),
('windi.windifuad.fuad@gmail.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 12:40:37'),
('windi.windifuad.fuad@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 12:41:26'),
('wisnuardiono7@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 12:42:44'),
('wisnuardiono7@gmail.com', '5f03e8afc2c19', 21, 15, 9, 6, '2020-07-11 12:43:52'),
('yahya7qvT6@gmail.com', '5f03e8afc2c19', -35, 15, 5, 10, '2020-07-11 12:45:57'),
('yahya7qvT6@gmail.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 12:47:01'),
('yofantri69@gmail.com', '5f03e6ed3cc98', -21, 15, 6, 9, '2020-07-11 12:50:09'),
('yofantri69@gmail.com', '5f03e8afc2c19', 7, 15, 8, 7, '2020-07-11 12:51:02'),
('yogahermawantio20@gmail.com', '5f03e6ed3cc98', 7, 15, 8, 7, '2020-07-11 12:53:06'),
('yogahermawantio20@gmail.com', '5f03e8afc2c19', 49, 15, 11, 4, '2020-07-11 12:53:55'),
('yogawahyu187@gmail.com', '5f03e6ed3cc98', -35, 15, 5, 10, '2020-07-11 13:04:04'),
('yogawahyu187@gmail.com', '5f03e8afc2c19', -7, 15, 7, 8, '2020-07-11 13:05:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5f03e8819b5ed', 'Menyelamatkan nyawa, memberi rasa nyaman, menyembuhkan seketika', '5f03e881b033c'),
('5f03e8819b5ed', 'Mencegah kecacatan, menyelamatkan nyawa, memberi rasa nyaman, menunjang kesembuhan.', '5f03e881b0341'),
('5f03e8819b5ed', 'Mencegah kematian, mencegah kecacatan dan memberi rasa nyaman', '5f03e881b0342'),
('5f03e881e9244', 'Menunggu bantuan datang', '5f03e881f33e5'),
('5f03e881e9244', 'Mengecek kembali nadi, nafas serta kesadaran ', '5f03e881f33eb'),
('5f03e881e9244', 'Memindahkan pasien ke tempat aman', '5f03e881f33ec'),
('5f03e8822ff06', 'Melaporkan kepada pihak berwenang', '5f03e88238230'),
('5f03e8822ff06', 'Mengecek kembali nadi, nafas serta kesadaran ', '5f03e88238236'),
('5f03e8822ff06', 'Tidak kedua pilihan diatas', '5f03e88238237'),
('5f03e88258b36', '118', '5f03e88261020'),
('5f03e88258b36', '119', '5f03e88261027'),
('5f03e88258b36', '110', '5f03e88261029'),
('5f03e88291a01', 'Korban saja', '5f03e88299d08'),
('5f03e88291a01', 'Penolong saja', '5f03e88299d13'),
('5f03e88291a01', 'Korban dan Penolong', '5f03e88299d15'),
('5f03e882ba624', 'Penderita diletakkan pada posisi telentang pada alas yang rata dan keras', '5f03e882c26df'),
('5f03e882ba624', 'Penolong berlutut sejajar dengan perut penderita', '5f03e882c26e7'),
('5f03e882ba624', 'Tekanan pada dada sedalam 4 cm.', '5f03e882c26e9'),
('5f03e882ef44d', 'Petugas kelelahan', '5f03e8830346f'),
('5f03e882ef44d', 'Setiap 2 menit', '5f03e88303477'),
('5f03e882ef44d', 'Setiap 3 menit', '5f03e88303479'),
('5f03e8832be68', 'Buka jalan nafas', '5f03e88334177'),
('5f03e8832be68', 'Meminta tolong', '5f03e88334180'),
('5f03e8832be68', 'Tes Respon', '5f03e88334181'),
('5f03e883569e9', 'Mecegah terjadiya cidera pada tulang leher', '5f03e8835ead3'),
('5f03e883569e9', 'Mempermudah mengangkat korban', '5f03e8835ead9'),
('5f03e883569e9', 'Menjaga posisi kepala', '5f03e8835eada'),
('5f03e8837f3ef', 'Menggunakan kasa atau kain sebagai alas', '5f03e88387745'),
('5f03e8837f3ef', 'Cuci tangan setelah menyentuh tubuh', '5f03e8838774c'),
('5f03e8837f3ef', 'Jangan menyentuk tubuh korban', '5f03e8838774e'),
('5f03e883ae1c1', 'Menutup area luka dengan kain bersih', '5f03e883b62b1'),
('5f03e883ae1c1', 'Menekan bagian luka jika terjadi perdarahan', '5f03e883b62b8'),
('5f03e883ae1c1', 'Membersihkan luka dengan air bersih', '5f03e883b62b9'),
('5f03e883d6bb0', 'Penekana langsung pada luka, tinggikan bagian yang luka', '5f03e883def0c'),
('5f03e883d6bb0', 'Penekanan disekitar luka, tinggikan bagian yang luka', '5f03e883def13'),
('5f03e883d6bb0', 'Penekanan dibawah luka, tinggikan bagian yang luka', '5f03e883def14'),
('5f03e8842d12d', 'Tiga penolong berlutut disisi penderita yang paling sedikit mengalami cidera', '5f03e8844a5cb'),
('5f03e8842d12d', 'Tiga penolong berlutut disisi penderita yang paling banyak mengalami cidera', '5f03e8844a5d2'),
('5f03e8842d12d', 'Dua penolong berlutut disisi penderita yang paling sedikit mengalami cidera, satu penolong berhadapan dengan salah satunya', '5f03e8844a5d4'),
('5f03e88471029', 'Penolong pertama menyisipkan lengan di kepala', '5f03e884793b6'),
('5f03e88471029', 'Penolong kedua menyisipkan lengan di pingang', '5f03e884793be'),
('5f03e88471029', 'Penolong kedua menyisipkan lengan di punggung', '5f03e884793c0'),
('5f03e88499c73', 'Angkat korban secara bersamaan dan turunkan korban secara bersamaan', '5f03e884a1d64'),
('5f03e88499c73', 'Angkat kepala terlebih dahulu selanjutnya kaki korban', '5f03e884a1d6d'),
('5f03e88499c73', 'Angkat korban secara bersamaan dan turunkan kepala terlebih dahulu', '5f03e884a1d6e'),
('5f03e9e52b78b', 'Menyelamatkan nyawa, memberi rasa nyaman, menyembuhkan seketika', '5f03e9e53f7a6'),
('5f03e9e52b78b', 'Mencegah kecacatan, menyelamatkan nyawa, memberi rasa nyaman, menunjang kesembuhan.', '5f03e9e53f7ab'),
('5f03e9e52b78b', 'Mencegah kematian, mencegah kecacatan dan memberi rasa nyaman', '5f03e9e53f7ac'),
('5f03e9e56a433', 'Menunggu bantuan datang', '5f03e9e5741b7'),
('5f03e9e56a433', 'Mengecek kembali nadi, nafas serta kesadaran ', '5f03e9e5741be'),
('5f03e9e56a433', 'Memindahkan pasien ke tempat aman', '5f03e9e5741c0'),
('5f03e9e5b85f0', 'Melaporkan kepada pihak berwenang', '5f03e9e5bf53c'),
('5f03e9e5b85f0', 'Mengecek kembali nadi, nafas serta kesadaran ', '5f03e9e5bf547'),
('5f03e9e5b85f0', 'Tidak kedua pilihan diatas', '5f03e9e5bf549'),
('5f03e9e62cde4', '118', '5f03e9e6454fa'),
('5f03e9e62cde4', '119', '5f03e9e645500'),
('5f03e9e62cde4', '110', '5f03e9e645501'),
('5f03e9e669eda', 'Korban saja', '5f03e9e671fd3'),
('5f03e9e669eda', 'Penolong saja', '5f03e9e671fdc'),
('5f03e9e669eda', 'Korban dan Penolong', '5f03e9e671fde'),
('5f03e9e69cb82', 'Penderita diletakkan pada posisi telentang pada alas yang rata dan keras', '5f03e9e6a4ef9'),
('5f03e9e69cb82', 'Penolong berlutut sejajar dengan perut penderita', '5f03e9e6a4f00'),
('5f03e9e69cb82', 'Tekanan pada dada sedalam 4 cm.', '5f03e9e6a4f01'),
('5f03e9e6c9e9b', 'Petugas kelelahan', '5f03e9e6d9d3a'),
('5f03e9e6c9e9b', 'Setiap 2 menit', '5f03e9e6d9d43'),
('5f03e9e6c9e9b', 'Setiap 3 menit', '5f03e9e6d9d45'),
('5f03e9e7063d6', 'Buka jalan nafas', '5f03e9e70e512'),
('5f03e9e7063d6', 'Meminta tolong', '5f03e9e70e51b'),
('5f03e9e7063d6', 'Tes Respon', '5f03e9e70e51c'),
('5f03e9e72ecb0', 'Mecegah terjadiya cidera pada tulang leher', '5f03e9e737005'),
('5f03e9e72ecb0', 'Mempermudah mengangkat korban', '5f03e9e73700e'),
('5f03e9e72ecb0', 'Menjaga posisi kepala', '5f03e9e737010'),
('5f03e9e757949', 'Menggunakan kasa atau kain sebagai alas', '5f03e9e75fa01'),
('5f03e9e757949', 'Cuci tangan setelah menyentuh tubuh', '5f03e9e75fa0d'),
('5f03e9e757949', 'Jangan menyentuk tubuh korban', '5f03e9e75fa12'),
('5f03e9e780305', 'Menutup area luka dengan kain bersih', '5f03e9e78c7b6'),
('5f03e9e780305', 'Menekan bagian luka jika terjadi perdarahan', '5f03e9e78c7bc'),
('5f03e9e780305', 'Membersihkan luka dengan air bersih', '5f03e9e78c7be'),
('5f03e9e7b1150', 'Penekana langsung pada luka, tinggikan bagian yang luka', '5f03e9e7b9265'),
('5f03e9e7b1150', 'Penekanan disekitar luka, tinggikan bagian yang luka', '5f03e9e7b926e'),
('5f03e9e7b1150', 'Penekanan dibawah luka, tinggikan bagian yang luka', '5f03e9e7b926f'),
('5f03e9e7d9b65', 'Tiga penolong berlutut disisi penderita yang paling sedikit mengalami cidera', '5f03e9e7e1e81'),
('5f03e9e7d9b65', 'Tiga penolong berlutut disisi penderita yang paling banyak mengalami cidera', '5f03e9e7e1e89'),
('5f03e9e7d9b65', 'Dua penolong berlutut disisi penderita yang paling sedikit mengalami cidera, satu penolong berhadapan dengan salah satunya', '5f03e9e7e1e8c'),
('5f03e9e80e729', 'Penolong pertama menyisipkan lengan di kepala', '5f03e9e81b9b5'),
('5f03e9e80e729', 'Penolong kedua menyisipkan lengan di pingang', '5f03e9e81b9bc'),
('5f03e9e80e729', 'Penolong kedua menyisipkan lengan di punggung', '5f03e9e81b9be'),
('5f03e9e851639', 'Angkat korban secara bersamaan dan turunkan korban secara bersamaan', '5f03e9e859988'),
('5f03e9e851639', 'Angkat kepala terlebih dahulu selanjutnya kaki korban', '5f03e9e859991'),
('5f03e9e851639', 'Angkat korban secara bersamaan dan turunkan kepala terlebih dahulu', '5f03e9e859993'),
('5f046ccc9f3fa', '1', '5f046cccb3239'),
('5f046ccc9f3fa', '11', '5f046cccb323f'),
('5f046ccc9f3fa', '111', '5f046cccb3240');

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5f03e6ed3cc98', '5f03e8819b5ed', 'Apakah tujuan pokok dilakukan pertolongan pertama? ', 4, 1),
('5f03e6ed3cc98', '5f03e881e9244', 'Apa yang kita lakukan sebagai penolong setelah selesai melakukan pertolongan?', 4, 2),
('5f03e6ed3cc98', '5f03e8822ff06', 'Langkah pertama yang dilakukan sebelum melakukan pertolongan pertama pada korban?', 4, 3),
('5f03e6ed3cc98', '5f03e88258b36', 'Berapakah nomor telepon yang harus dihubungi untuk mendapat pertolongan?', 4, 4),
('5f03e6ed3cc98', '5f03e88291a01', 'Siapa sajakah yang mulut dan hidungnya harus ditutupi?', 4, 5),
('5f03e6ed3cc98', '5f03e882ba624', 'Hal yang harus diperhatikan dalam melakukan pijat jantung adalah:', 4, 6),
('5f03e6ed3cc98', '5f03e882ef44d', 'Penilaian kembali nadi dilakukan saat?', 4, 7),
('5f03e6ed3cc98', '5f03e8832be68', 'Apakah tindakan pertama yang harus dilakukan dalam tindakan bantuan hidup dasar adalah?', 4, 8),
('5f03e6ed3cc98', '5f03e883569e9', 'Apa tujuan dari menyisipkan lengan di kepala?', 4, 9),
('5f03e6ed3cc98', '5f03e8837f3ef', 'Bagaimanakah pencegahan terhadap infeksi saat rawat luka?', 4, 10),
('5f03e6ed3cc98', '5f03e883ae1c1', 'Langkah pertama dalam perawatan luka sederhana adalah?', 4, 11),
('5f03e6ed3cc98', '5f03e883d6bb0', 'Bagaimana cara melakukan penghentian perdarahan?', 4, 12),
('5f03e6ed3cc98', '5f03e8842d12d', 'Dimanakah posisi yang benar dalam memindahkan korban?', 4, 13),
('5f03e6ed3cc98', '5f03e88471029', 'Bagaimana pembagian tugas penolong dalam mengangkat korban yang benar?', 4, 14),
('5f03e6ed3cc98', '5f03e88499c73', 'Hal yang harus dilakukan dalam mengangkat dan menurunkan korban?', 4, 15),
('5f03e8afc2c19', '5f03e9e52b78b', 'Apakah tujuan pokok dilakukan pertolongan pertama?', 4, 1),
('5f03e8afc2c19', '5f03e9e56a433', 'Apa yang kita lakukan sebagai penolong setelah selesai melakukan pertolongan?', 4, 2),
('5f03e8afc2c19', '5f03e9e5b85f0', 'Langkah pertama yang dilakukan sebelum melakukan pertolongan pertama pada korban?', 4, 3),
('5f03e8afc2c19', '5f03e9e62cde4', 'Berapakah nomor telepon yang harus dihubungi untuk mendapat pertolongan?', 4, 4),
('5f03e8afc2c19', '5f03e9e669eda', 'Siapa sajakah yang mulut dan hidungnya harus ditutupi?', 4, 5),
('5f03e8afc2c19', '5f03e9e69cb82', 'Hal yang harus diperhatikan dalam melakukan pijat jantung adalah?', 4, 6),
('5f03e8afc2c19', '5f03e9e6c9e9b', 'Penilaian kembali nadi dilakukan saat?', 4, 7),
('5f03e8afc2c19', '5f03e9e7063d6', 'Apakah tindakan pertama yang harus dilakukan dalam tindakan bantuan hidup dasar adalah?', 4, 8),
('5f03e8afc2c19', '5f03e9e72ecb0', 'Apa tujuan dari menyisipkan lengan di kepala?', 4, 9),
('5f03e8afc2c19', '5f03e9e757949', 'Bagaimanakah pencegahan terhadap infeksi saat rawat luka?', 4, 10),
('5f03e8afc2c19', '5f03e9e780305', 'Langkah pertama dalam perawatan luka sederhana adalah?', 4, 11),
('5f03e8afc2c19', '5f03e9e7b1150', 'Bagaimana cara melakukan penghentian perdarahan?', 4, 12),
('5f03e8afc2c19', '5f03e9e7d9b65', 'Dimanakah posisi yang benar dalam memindahkan korban?', 4, 13),
('5f03e8afc2c19', '5f03e9e80e729', 'Bagaimana pembagian tugas penolong dalam mengangkat korban yang benar?', 4, 14),
('5f03e8afc2c19', '5f03e9e851639', 'Hal yang harus dilakukan dalam mengangkat dan menurunkan korban?', 4, 15),
('5f046c77c9960', '5f046ccc9f3fa', '1+10', 4, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5f03e6ed3cc98', 'Pre Test', 7, 7, 15, 120, 'Pre Test', 'pretest', '2020-07-07 03:07:25'),
('5f03e8afc2c19', 'Post Test', 7, 7, 15, 120, 'Post Test', 'Posttest', '2020-07-07 03:14:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('', 28, '2020-07-11 04:40:21'),
('aangfernandi@gmail.com', 70, '2020-07-11 04:45:16'),
('adhityaa866@gmail.com', 133, '2020-07-11 04:50:27'),
('agus.suparjiono@gmail.com', 42, '2020-07-11 05:02:22'),
('adisiswoyo78@gmail.com', 35, '2020-07-11 05:06:52'),
('agusbanpol105@gmail.com', -56, '2020-07-11 05:17:30'),
('aguspurwantoblitar@gmail.com', 119, '2020-07-11 05:26:46'),
('ajijaya25959@gmail.com', 63, '2020-07-11 05:34:48'),
('agussuprobo@gmail.com', 14, '2020-07-11 05:38:31'),
('alpiankristanto001@gmail.ocm', 98, '2020-07-11 05:39:05'),
('aminudinwijayanto@gmail.com', 28, '2020-07-11 05:44:12'),
('antoksgrsulaiman@gmail.com', 28, '2020-07-11 05:48:49'),
('antondsco22@gmail.com', 14, '2020-07-11 05:50:05'),
('antondsco2@gmail.com', 14, '2020-07-11 05:53:22'),
('anwarama356@gmail.com', -84, '2020-07-11 05:58:41'),
('ariabima803@gmail.com', 77, '2020-07-11 05:56:32'),
('ariestiyono16@gmail.com', 28, '2020-07-11 06:01:33'),
('arikekagb034@gmail.com', -7, '2020-07-11 06:02:01'),
('arikperlo@gmail.com', 63, '2020-07-11 06:07:14'),
('aripanto26@gamil.com', 0, '2020-07-11 06:10:03'),
('aureltalfarizie2009@gmail.com', 14, '2020-07-11 06:18:09'),
('bagustriyan22@gmail.com', -28, '2020-07-11 06:22:08'),
('ayudhawilangdjaja@gmail.com', -28, '2020-07-11 06:23:11'),
('bburhan833@gmail.com', 14, '2020-07-11 06:27:17'),
('benobrandal@gmail.com', 42, '2020-07-11 06:28:36'),
('bigertonur2@gmail.com', -56, '2020-07-11 06:30:29'),
('bonenkclink1@gmail.com', 56, '2020-07-11 06:33:18'),
('bravofox505@gmail.com', 21, '2020-07-11 06:33:44'),
('cah4854@gmail.com', 7, '2020-07-11 06:36:50'),
('cahhh.ag.717@gmail.com', 14, '2020-07-11 06:39:25'),
('capusant696@gmail.com', -14, '2020-07-11 06:39:46'),
('catur.septian97@gmail.com', 112, '2020-07-11 07:03:50'),
('danangfsykes@gmail.com', 63, '2020-07-11 07:08:18'),
('dian.yazid@gmail.com', 42, '2020-07-11 07:12:34'),
('didit.prasongko@gmail.com', 112, '2020-07-11 07:16:23'),
('dodiktriwahyus@gmail.com', 42, '2020-07-11 07:20:00'),
('dukidakiduk@gmail.com', 14, '2020-07-11 07:23:59'),
('dwitanto722@gmail.com', -14, '2020-07-11 07:28:44'),
('endro.1121@gmail.com', 56, '2020-07-11 07:32:38'),
('eprilbewek@gmail.com', 42, '2020-07-11 07:37:31'),
('eretmi4a.54dg@gmail.com', 70, '2020-07-11 07:44:26'),
('erwincoy93@gmail.com', 56, '2020-07-11 07:47:55'),
('fafoagusryanto@gmail.com', -42, '2020-07-11 07:51:08'),
('fansuriashar21@gmail.com', 0, '2020-07-11 07:55:32'),
('ferrykurniawan16021987@gmail.com', 0, '2020-07-11 07:59:34'),
('grab.pujisantosa@gmail.com', 42, '2020-07-11 08:02:44'),
('haribowie63@gmail.com', 14, '2020-07-11 08:06:36'),
('harisoekirman.70@gmail.com', -14, '2020-07-11 08:10:08'),
('haryadiwahyu73@gmail.com', 0, '2020-07-11 08:48:34'),
('heriyuliana86@gmail.com', 84, '2020-07-11 08:52:25'),
('Hermansuseno01@gmail.com', 0, '2020-07-11 08:55:16'),
('ilhamqois34@gmail.com', 56, '2020-07-11 08:58:28'),
('iwansahroni82@gmail.com', 28, '2020-07-11 09:02:30'),
('johanesdodik@gmail.com', 70, '2020-07-11 09:06:17'),
('jujukhermawan@gmail.com', 126, '2020-07-11 09:09:19'),
('kiwunm@gmail.com', 42, '2020-07-11 09:12:30'),
('kupretiwan77@gmail.com', 42, '2020-07-11 09:17:05'),
('lazuardiyunita@gmail.com', 98, '2020-07-11 09:20:03'),
('lulutpancariyadi@gmail.com', 28, '2020-07-11 09:29:30'),
('liemhadijaya@gmail.com', 126, '2020-07-11 09:32:28'),
('markus05kukuh@gmail.com', 56, '2020-07-11 09:35:06'),
('maryantoblitar8@gmail.com', 70, '2020-07-11 10:32:48'),
('masbenzoeds@gmail.com', -14, '2020-07-11 10:35:47'),
('master.uki2015@gmail.com', 84, '2020-07-11 10:39:05'),
('mb.tiyeb99@gmail.com', -14, '2020-07-11 10:42:23'),
('mohamadagusrahmanwahyudi@gmail.com', 42, '2020-07-11 10:46:26'),
('nana.citra1818@gmail.com', 112, '2020-07-11 10:49:58'),
('nandakurniayusuf@gmail.com', 14, '2020-07-11 10:52:44'),
('nm.darmawan@gmail.com', 42, '2020-07-11 10:55:46'),
('nyambik02@gmail.com', 56, '2020-07-11 10:59:14'),
('oddysetiawan94@gmail.com', 14, '2020-07-11 11:02:11'),
('panjalutetukosultan@gmail.com', 84, '2020-07-11 11:05:45'),
('prasetiyawan280692@gmail.com', -14, '2020-07-11 11:08:16'),
('prayudha.adm@gmail.com', 28, '2020-07-11 11:11:47'),
('pungkiferi.bhl@gmail.com', 70, '2020-07-11 11:14:05'),
('purwanto79dandong@gmail.com', -56, '2020-07-11 11:32:44'),
('rezawp88@gmail.com', 0, '2020-07-11 11:36:25'),
('ricipriyatama14@gmail.com', 112, '2020-07-11 11:39:35'),
('riskywajar788@gmail.com', 70, '2020-07-11 11:43:07'),
('Rizalefendi996@gmail.com', 0, '2020-07-11 11:46:45'),
('rizqitaayomi@gmail.com', 14, '2020-07-11 11:49:11'),
('rohmanlutfi391@gmail.com', 14, '2020-07-11 11:51:50'),
('rosidinateng@gmail.com', 14, '2020-07-11 11:55:10'),
('rudihartanto.rh98@gmail.com', 70, '2020-07-11 11:58:10'),
('rudyhammer7062.rh@gmail.com', 14, '2020-07-11 12:01:22'),
('sialan1368@gmail.com', 98, '2020-07-11 12:05:14'),
('siecrus@gmail.com', 14, '2020-07-11 12:08:02'),
('solikinimam07@gmail.com', 56, '2020-07-11 12:10:33'),
('soogeunkin@gmail.com', 0, '2020-07-11 12:16:02'),
('stevanusgeovani@yahoo.com', 42, '2020-07-11 12:21:03'),
('tmif55@gmail.com', 42, '2020-07-11 12:23:22'),
('universal.sida@gmail.com', 56, '2020-07-11 12:28:00'),
('ujanghendarli@gmail.com', 28, '2020-07-11 12:30:21'),
('ujangkusnadi997@gmail.com', 14, '2020-07-11 12:32:26'),
('wahyuramadhan747@gmail.com', 70, '2020-07-11 12:38:11'),
('windi.windifuad.fuad@gmail.com', 28, '2020-07-11 12:41:26'),
('wisnuardiono7@gmail.com', 0, '2020-07-11 12:43:52'),
('yahya7qvT6@gmail.com', -28, '2020-07-11 12:47:01'),
('yofantri69@gmail.com', -14, '2020-07-11 12:51:02'),
('yogahermawantio20@gmail.com', 56, '2020-07-11 12:53:55'),
('yogawahyu187@gmail.com', -42, '2020-07-11 13:05:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `name` varchar(255) NOT NULL,
  `jeniskelamin` varchar(255) NOT NULL,
  `pendidikan` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gabung` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `riwayat` varchar(255) NOT NULL,
  `umur` varchar(50) NOT NULL,
  `nopol` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`name`, `jeniskelamin`, `pendidikan`, `email`, `gabung`, `password`, `riwayat`, `umur`, `nopol`, `mobile`) VALUES
('Mohamad Fernandi A\'Ang', 'Laki-Laki', 'Diploma', 'aangfernandi@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '31-40', 'AG2226 PW', '0815 5391 6334'),
('Adhitya Aprianto', 'Laki-Laki', 'SMU', 'adhityaa866@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 2105 PY', '0856 4215 6051'),
('Adi Siswoyo', 'Laki-Laki', 'SMU', 'adisiswoyo78@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 3301 QB', '0856 0712 0161'),
('Agus Suparjiono', 'Laki-Laki', 'SMU', 'agus.suparjiono@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 5800 IX', '0812 3478 8293'),
('Agus Susanto', 'Laki-Laki', 'SMU', 'agusbanpol105@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6943 PO', '0857 3663 8839'),
('Agus Purwanto', 'Laki-Laki', 'SMU', 'aguspurwantoblitar@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6092 PQ', '0816 546 7787'),
('Agus Suprobo', 'Laki-Laki', 'SMU', 'agussuprobo@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AG 6897 IN', '0815 1515 2492'),
('Gunawan', 'Laki-Laki', 'SMU', 'ajijaya25959@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AG 4586 KBD', '0858 1252 6106'),
('Alpian Kristianto', 'Laki-Laki', 'SMU', 'alpiankristanto001@gmail.ocm', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '12-25', 'AG 5621 IX', '0857 4512 1243'),
('Aminudin Wijayanto', 'Laki-Laki', 'SMU', 'aminudinwijayanto@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6684 PB', '0815 5982 1324'),
('Yudi Tri Arianto', 'Laki-Laki', 'SMU', 'antoksgrsulaiman@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'S 4836 DW', '0813 8675 1969'),
('Budi Susanto', 'Laki-Laki', 'SMU', 'antondsco22@gmail.com', '3-5', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '31-40', 'KT 5066 UW', '0821 8788 6878'),
('Anton Margono', 'Laki-Laki', 'SMU', 'antondsco2@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AG 5465 RAB', '0812 3335 0831'),
('Khoirul Anwar', 'Laki-Laki', 'SMU', 'anwarama356@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '46-55', 'AG 2449 QU', '085 655 631 564'),
('Gerry Agus Cahyono', 'Laki-Laki', 'SMU', 'ariabima803@gmail.com', '0-3', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 2531 QS', '0812 3300 9210'),
('Aristiyono', 'Laki-Laki', 'SMU', 'ariestiyono16@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 3966 PQ', '0857 9122 6044'),
('Ari Eka Yusdiantoro', 'Laki-Laki', 'SMU', 'arikekagb034@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '31-40', 'AG 3326 Q', '0812 3450 2862'),
('Ismail Putra Pratama', 'Laki-Laki', 'SMU', 'arikperlo@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 2484 QW', '0852 3652 5758'),
('Ari Fiyanto', 'Laki-Laki', 'SMU', 'aripanto26@gamil.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 3207 PC', '0857 7622 5775'),
('A.Farisallail', 'Laki-Laki', 'SMU', 'aureltalfarizie2009@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 5506 PU', '0822 2670 6317'),
('Ayudha Wilang Djaja', 'Laki-Laki', 'SMU', 'ayudhawilangdjaja@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 5675 KBC', '0852 3580 1212'),
('Agus Triyanto', 'Laki-Laki', 'SMU', 'bagustriyan22@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 3207 PC', '0857 7622 557'),
('Khafid Burhanudin', 'Laki-Laki', 'SMU', 'bburhan833@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 2270 KAY', '0856 0835 7622'),
('Loreno Hendrawan', 'Laki-Laki', 'SMU', 'benobrandal@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 2900 IL', '0857 4881 3945'),
('Biger Tonur', 'Laki-Laki', 'SMU', 'bigertonur2@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 4417 PK', '0815 5429 7015'),
('Nanang Setyanto', 'Laki-Laki', 'SMU', 'bonenkclink1@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'ya', '26-35', 'AG 4368 QD', '0812 2625 9889'),
('Heri Wibowo', 'Laki-Laki', 'SMU', 'bravofox505@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 2536 PY', '0811 2590 544'),
('Mahmud Efendi', 'Laki-Laki', 'SMU', 'cah4854@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AG 6705 MB', '0856 4990 7756'),
('Syahrul', 'Laki-Laki', 'SMU', 'cahhh.ag.717@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AG 2238 KAS', '0812 7300 3783'),
('Catur Puji Santoso', 'Laki-Laki', 'SMU', 'capusant696@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 5294 QB', '0853 3419 6955'),
('Catur Septian Prabowo', 'Laki-Laki', 'SMU', 'catur.septian97@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 4901 QN', '0857 5630 4218'),
('Danang Febri Prasetyo', 'Laki-Laki', 'SMU', 'danangfsykes@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6090 QU', '0857 9166 7576'),
('Dinan Yazid Aziz', 'Laki-Laki', 'SMU', 'dian.yazid@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '12-25', 'AG 5828 IX', '0858 5664 4371'),
('Didit Prasongko', 'Laki-Laki', 'SMU', 'didit.prasongko@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 4379 QC', '0821 9897 1315'),
('Dodik Tri Wahyusetiawan', 'Laki-Laki', 'SMU', 'dodiktriwahyus@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AG 4589 KBC', '0857 5517 6924'),
('Nur Ahmad Amaludin', 'Laki-Laki', 'SMU', 'dukidakiduk@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6145 IL ', '0855 4647 3133'),
('Dwi Tanto', 'Laki-Laki', 'SMU', 'dwitanto722@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6661 LS', '0858 0415 9502'),
('Endro Budi Waluyo', 'Laki-Laki', 'SMU', 'endro.1121@gmail.com', '3-5', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 4478 PW', '0857 6762 1900'),
('Epril Eko Wahyudi', 'Laki-Laki', 'SMU', 'eprilbewek@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 2523 PK', '0857 9160 4664'),
('Rohman', 'Laki-Laki', 'SMU', 'eretmi4a.54dg@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 2125 JM', '0857 5574 1118'),
('Ervin Supiadil', 'Laki-Laki', 'Sarjana', 'erwincoy93@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AD 3969 BJ', '0822 5718 2839'),
('Agus Supriyanto', 'Laki-Laki', 'SMU', 'fafoagusryanto@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6403 QF', '0822 4509 5274'),
('Ashar Fansuri', 'Laki-Laki', 'SMU', 'fansuriashar21@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 5496 QC', '0816 1561 4186'),
('Ferry Kurniawan', 'Laki-Laki', 'SMU', 'ferrykurniawan16021987@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6546 KAJ', '0815 1529 2977'),
('Puji Santoso', 'Laki-Laki', 'Diploma', 'grab.pujisantosa@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '31-40', 'AG 3860 Q', '0857 3282 2215'),
('Hari Wibowo', 'Laki-Laki', 'SMU', 'haribowie63@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AG 5684 PR', '0857 3561 9996'),
('Hari Wahono', 'Laki-Laki', 'SMU', 'harisoekirman.70@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AG 6812 PR', '0815 1590 4414'),
('Wahyu Haryadi', 'Laki-Laki', 'SMU', 'haryadiwahyu73@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 3166 PU', '0857 1911 4578'),
('Heri Yuliana', 'Laki-Laki', 'SMU', 'heriyuliana86@gmail.com', '3-5', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6376 LD', '0857 0657 4157'),
('Herman Suseno', 'Laki-Laki', 'SMU', 'Hermansuseno01@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 3008 LK', '0857 4545 3246'),
('Ilham Alkhafidul Qois', 'Laki-Laki', 'SMU', 'ilhamqois34@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 3567 IT', '0857 8483 2420'),
('Iwan Sahroni', 'Laki-Laki', 'SMU', 'iwansahroni82@gmail.com', '>5', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AG 2425 KAB', '0813 2579 7074'),
('Dodik Hermono', 'Laki-Laki', 'SMU', 'johanesdodik@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AB 3729 NV', '0856 311 2247'),
('Jujuk Hermawan', 'Laki-Laki', 'SMU', 'jujukhermawan@gmail.com', '>5', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 3871 QU', '0853 3530 7889'),
('Redi Budi Setiawan', 'Laki-Laki', 'SMU', 'kiwunm@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6142 IJ', '0815 5169 180'),
('Iwan Apriyanto', 'Laki-Laki', 'SMU', 'kupretiwan77@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '31-40', 'AG 5405 PZ', '0815 5666 6611'),
('Wahyuni', 'Perempuan', 'SMU', 'lazuardiyunita@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 3390 QN', '0813 8675 1977'),
('Ahmad Alimullah', 'Laki-Laki', 'SMU', 'liemhadijaya@gmail.com', '3-5', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '31-40', 'AG 3693 PX', '0822 3439 7414'),
('Lulut Pancariyadi', 'Laki-Laki', 'SMU', 'lulutpancariyadi@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '46-55', 'AG 3201 IL', '0852 5902 3862'),
('Kukuh Ngudi Trisno Markus', 'Laki-Laki', 'SMU', 'markus05kukuh@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 2730 IS', '0878 5851 8585'),
('Maryanto', 'Laki-Laki', 'SMU', 'maryantoblitar8@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 2447 IL', '0812 3551 8384'),
('Fery Hendra Y', 'Laki-Laki', 'SMU', 'masbenzoeds@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AG 6454 M', '0812 1513 1078'),
('Uki Sudarsono', 'Laki-Laki', 'Diploma', 'master.uki2015@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'ya', '12-25', 'AG 6309 IZ', '0812 3349 166'),
('Muhamad Arifin', 'Laki-Laki', 'SMU', 'mb.tiyeb99@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AG 3875 PY', '0852 0345 5999'),
('M. Agus Rahman W', 'Laki-Laki', 'SMU', 'mohamadagusrahmanwahyudi@gmail.com', '3-5', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '31-40', 'AG 2609 QD', '0813 3452 9754'),
('Deka Prasetyo', 'Laki-Laki', 'SMU', 'nana.citra1818@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6250 Q', '0852 3299 6666'),
('Nanda Kurnia Yusuf', 'Laki-Laki', 'SMU', 'nandakurniayusuf@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AD 5284 IT', '0856 4651 7382'),
('Nugrahadi Mulia D', 'Laki-Laki', 'SMU', 'nm.darmawan@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'L 5294 ML', '0821 2000 6369'),
('Ahmad Dahlan', 'Laki-Laki', 'SMU', 'nyambik02@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6938 MR', '0813 5771 3753'),
('Doddy Setiawan', 'Laki-Laki', 'SMU', 'oddysetiawan94@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 2210 KAY', '0812 1629 4855'),
('Sultan Panjalu Tetuko', 'Laki-Laki', 'SMU', 'panjalutetukosultan@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 5593 PF', '0857 8575 2763'),
('Bambang Nirwanto', 'Laki-Laki', 'SMU', 'prasetiyawan280692@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6781 IN', '0877 5661 0150'),
('Prayudha Febri Yanto', 'Laki-Laki', 'SMU', 'prayudha.adm@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6092 KAB', '0812 3274 0285'),
('Pungki Feri Bakti Herman', 'Laki-Laki', 'SMU', 'pungkiferi.bhl@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 3639 PU', '0858 1558 9996'),
('Imam Budi Purwanto', 'Laki-Laki', 'Sarjana', 'purwanto79dandong@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AG 4384 IV', '0857 9125 1979'),
('Reza Wibi Prasongko', 'Laki-Laki', 'SMU', 'rezawp88@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 4311 PJ', '0858 5620 2805'),
('Rici Priyatama', 'Laki-Laki', 'SMU', 'ricipriyatama14@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '21-30', 'AG 4298 PV', '0821 4234 0456'),
('Risky Fajar Ardyanto', 'Laki-Laki', 'SMU', 'riskywajar788@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 5636 QV', '0895 0896 6060'),
('Rizal Efendi', 'Laki-Laki', 'SMU', 'Rizalefendi996@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 4184 LD', '0813 3677 8513'),
('Ayomi Rizqita', 'Laki-Laki', 'SMU', 'rizqitaayomi@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '12-25', 'N 4841 BL', '0853 4776 4509'),
('Lutfi Rohman', 'Laki-Laki', 'SMU', 'rohmanlutfi391@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '21-30', 'AG 3178 KBA', '0858 5909 9335'),
('Ateng Rosidin', 'Laki-Laki', 'Sarjana', 'rosidinateng@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AG 6096 QW', '0812 5936 0303'),
('Rudi Hartanto', 'Laki-Laki', 'SMU', 'rudihartanto.rh98@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 2656 IH', '0812 8707 5576'),
('Rudijanto Sadmodjo', 'Laki-Laki', 'SMU', 'rudyhammer7062.rh@gmail.com', '3-5', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 5576 PH', '0856 2956 980'),
('Edy Suwarno', 'Laki-Laki', 'SMU', 'sialan1368@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 3576  PR', '0822 7380 8588'),
('Lucia Krismanti .W ', 'Laki-Laki', 'SMU', 'siecrus@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6820 PO', '0821 4048 242'),
('Imam Solikin', 'Laki-Laki', 'SMU', 'solikinimam07@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 5020 IY', '0857 8445 9979'),
('Sugeng Hariyono', 'Laki-Laki', 'SMU', 'soogeunkin@gmail.com', '3-5', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'AG 6682 II', '0823 3892 8392'),
('Stevanus Geovany', 'Laki-Laki', 'SMU', 'stevanusgeovani@yahoo.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 2002 IK', '0822 3216 6088'),
('Sisyanto', 'Laki-Laki', 'SMU', 'syantos3112@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 3802 PW', '0813 3544 5280'),
('Miftakhudin', 'Laki-Laki', 'SMU', 'tmif55@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6123 IO', '0853 3443 1985'),
('Ujang Hendarli', 'Laki-Laki', 'SMU', 'ujanghendarli@gmail.com', '3-5', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '36-45', 'F 4565 IE', '0813 1989 3700'),
('Ujang Kusnadi', 'Laki-Laki', 'SMU', 'ujangkusnadi997@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'BE 6673 YO', '0857 6719 2051'),
('Shida Devi', 'Perempuan', 'SMU', 'universal.sida@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 5969 KAV', '0831 1109 9078'),
('Wahyu Ramadhan', 'Laki-Laki', 'SMU', 'wahyuramadhan747@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 5898 PW', '0813 3001 5300'),
('Windi Saiful Fuad', 'Laki-Laki', 'SMU', 'windi.windifuad.fuad@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 4067 Q', '0857 0870 8703'),
('Wisnu Ardiono', 'Laki-Laki', 'SMU', 'wisnuardiono7@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 2708 PY', '0856 4986 4938'),
('Yahya Prastyawan', 'Laki-Laki', 'SMU', 'yahya7qvT6@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 4954 KAF', '0812 3404 7817'),
('Yofan Tri Oktadian', 'Laki-Laki', 'SMU', 'yofantri69@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 6834 QB ', '0823 3216 1203'),
('Moh. Yoga Hermawantio', 'Laki-Laki', 'SMU', 'yogahermawantio20@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '21-30', 'AG 4544 II', '0815 5598 9041'),
('Wahyu', 'Laki-Laki', 'SMU', 'yogawahyu187@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'L 9670 ZI', '0858 2613 5986'),
('Yudi Setiyono', 'Laki-Laki', 'Diploma', 'zudis123ok@gmail.com', '0-2', 'e10adc3949ba59abbe56e057f20f883e', 'tidak', '26-35', 'AG 3647 PY', '0852 5770 1934');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
