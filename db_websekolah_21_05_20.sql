-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 21 Bulan Mei 2020 pada 05.34
-- Versi server: 10.4.10-MariaDB
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
-- Database: `db_websekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(4, 'Diskusi Aktivitas Siswa Belajar Dirumah (Covid-19)', '2020-04-05 10:02:10', 'Berdiskusi tentang aktivitas siswa selama belajar dari rumah yang bersifat kreatifitas bukan mengerjakan tugas dari Guru seperti membuat masker, berjualan makanan atau apapun', '2020-04-06', '2020-04-06', 'Daring / Online Video Conference', '10.00 - selesai', 'Host Yudi Subekti atau Dedi Suryadi', 'Yudi Subekti'),
(5, 'Teknis Uji Sertifikasi RPL SMKN 11 Bandung', '2020-04-05 10:20:44', 'Pertemuan dengan pihak industri PT. Cakrawala Global Yaksa (CGY) untuk membicarakan mengenai teknis penilaian UKK Daring untuk kompetensi keahlian RPL Tahun Pelajaran 2019 - 2020.', '2020-04-07', '2020-04-07', 'Daring / Online Vicon', '10.00 - Selesai', '', 'Yudi Subekti'),
(6, 'Penyemprotan Disinfektan SMKN 11 Bandung', '2020-04-07 08:49:14', 'Akan dilakukan penyemprotan Disinfektan ke SMK, SMA se Jawa Barat khususnya untuk SMKN 11 Bandung akan dilakukan pada tanggal 04 April 2020', '2020-04-04', '2020-04-04', 'SMK Negeri 11 Bandung', '08.00 - Selesai', '', 'Yudi Subekti'),
(7, 'Koordinasi bersama ibu Kepala SMKN 11 Bandung (Covid-19)', '2020-04-11 05:01:17', 'Rapat koordinasi Kepala Sekolah dengan seluruh Warga SMKN 11 Bandung terkait dengan PBM, Administrasi, Bimbingan dan lain-lain.', '2020-04-11', '2020-04-11', 'Vicon', '09.30 s/d Selesai', '-', 'Yudi Subekti');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(5, 'PPDB 2020', '2020-05-18 08:36:12', 1, 'Yudi Subekti', 1, '628c572b5876131b2ec425fa05d8e520.png'),
(6, 'Kegiatan 11 BERBAGI', '2020-05-18 08:39:47', 1, 'Yudi Subekti', 5, '2c8f55c126ed63cd215d7b735b687c84.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(13, 'SE Menteri Pelaksanaan Pendidikan', '-', '2020-04-09 06:40:59', 'Yudi Subekti', 0, '3163f5838bdd0fbd7e04bc7f8f53fed9.pdf'),
(14, '200324 Press conference UN Covid-19', '-', '2020-04-09 06:42:35', 'Yudi Subekti', 0, '808a94ae60f811e49eb4a210694b2989.pdf'),
(15, 'Surat Pemberitahuan UKK dan Sertifikasi Siswa SMK 2020', '-', '2020-04-09 06:44:27', 'Yudi Subekti', 0, '816ce8252dc934ad4f1f7a597385a0f7.pdf'),
(16, 'Edaran Kegiatan Sekolah', '-', '2020-04-09 06:45:12', 'Yudi Subekti', 0, '441190165e2746542c278af51538b37c.pdf'),
(17, 'SE TENTANG PENUTUPAN SEMENTARA FASILITAS UMUM DAN PENUNDAAN SEMENTARA KEGIATAN TERTENTU', '-', '2020-04-09 06:46:05', 'Yudi Subekti', 0, 'b84f50b78e848cacf8fcb7961b40cf14.pdf'),
(18, 'SE TTG PENINGKATAN KEWASPADAAN TERHADAP RISIKO PENULARAN INFEKSI CORONAVIRUS DISEASE-19', '-', '2020-04-09 06:47:11', 'Yudi Subekti', 0, '9e13e1ddd64d923af26c2f7d6314c049.pdf'),
(19, 'SURAT GUBERNUR JAWA BARAT KPD PRESIDEN RI MENGENAI PEMERIKSAAN COVID-19 DI JABAR', '-', '2020-04-09 06:47:58', 'Yudi Subekti', 0, '840beb27855d8efe3b74ef3e3f215aec.pdf'),
(20, 'SURAT EDARAN UNTUK BUPATI & WALI KOTA', '-', '2020-04-09 06:48:34', 'Yudi Subekti', 0, '29cf7ad3225d0760f006474e5d8f84f3.pdf'),
(21, 'KEPGUB JABAR TTG PENCEGAHAN DAN PENANGGULANGAN CORONAVIRUS DISEASE-19 (COVID-19) DI JABAR', '-', '2020-04-09 06:49:07', 'Yudi Subekti', 0, '2a5cef17c4c48afac4cdd8c321ad189d.pdf'),
(22, 'INGUB TENTANG PENGAMBILAN SPESIMEN CORONAVIRUS DISEASE-19', '-', '2020-04-09 06:49:43', 'Yudi Subekti', 0, '4919423dbe6b9e5cc2ee65379d0d187e.pdf'),
(23, 'Covid 19 di Sekolah', '-', '2020-04-09 06:50:25', 'Yudi Subekti', 0, '0a99610ce833d048f7d199bdc0038110.pdf'),
(24, 'Penjelasan Korona Untuk Anak', '-', '2020-04-09 06:51:28', 'Yudi Subekti', 0, '75b27698a6dd3de266be87e5edbe3b7d.pdf'),
(25, 'Corona dan Pencegahannya Rev 8', '-', '2020-04-09 06:51:54', 'Yudi Subekti', 0, '32432f20858951db36d0532d65594054.pdf'),
(26, 'Pemberitahuan Kegiatan PBM SMKN11', '-', '2020-04-09 06:55:03', 'Yudi Subekti', 0, 'bd5fae81622a75f18407ef07e5da701d.pdf'),
(27, 'Surat Pemberitahuan mengenai pelaksanaan Ujikom SMK Tahun 2020', '-', '2020-04-09 06:55:33', 'Yudi Subekti', 0, '24cb64ab4e8291ea00ba89f49fdfe2f7.pdf'),
(28, 'PPDB 2020', '-', '2020-04-09 06:56:27', 'Yudi Subekti', 0, '53eb8aa57243f7342146705025d7e52f.pdf'),
(29, 'Surat Pendataan Penyelenggaraan Ujian Sekolah', '-', '2020-04-09 06:57:32', 'Yudi Subekti', 0, 'f4a04036ff32b67d935c474a62c4584e.pdf'),
(30, 'Jadwal Penyemprotan Disinfektan SMK, SLB', '-', '2020-04-09 07:02:02', 'Yudi Subekti', 0, 'f378e61b53b4f06976cf6b923b31a461.pdf'),
(31, 'SK PSKK Tahap II', '-', '2020-04-09 07:02:43', 'Yudi Subekti', 0, '8d104737451b868184f0dbcce2ff57c8.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(19, 'Sosialisasi PPDB 2020', '2020-05-18 08:36:59', 'e6ef9fc0dbb20ecb23abe69669028e3e.jpeg', 5, 1, 'Yudi Subekti'),
(20, 'Kegiatan 11 BERBAGI Paket sahur untuk caraka dan satpam', '2020-05-18 08:40:31', '9f8416f861d2f92b56d2a0b2a5a3256e.jpeg', 6, 1, 'Yudi Subekti'),
(21, 'Kegiatan 11 BERBAGI Paket sahur untuk caraka dan satpam', '2020-05-18 08:41:21', '6fc97a9b795e8ccdf79603ea2ebc04a9.jpeg', 6, 1, 'Yudi Subekti'),
(22, 'Kegiatan 11 BERBAGI TAKJIL Di Panti Asuhan Al Badru Jalan Bu', '2020-05-18 08:41:59', 'e1827a43c5089d8882f1e56233fedefd.jpeg', 6, 1, 'Yudi Subekti'),
(23, 'kegiatan 11 BERBAGI sembako di DAPUR UMUM KELURAHAN SUKARAJA', '2020-05-18 08:44:13', 'f453dc9b7373aa545cad9aee4c34c6ef.jpeg', 6, 1, 'Yudi Subekti'),
(24, 'Berbagi Paket Buka Puasa Satpam dan Caraka ke 2', '2020-05-18 08:44:43', '16437369d3beedcf7e014f252ca9ce5f.jpeg', 6, 1, 'Yudi Subekti');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(1, '5551754656200012', 'Yudi Subekti, S.Kom', 'L', 'Bandung', '19 Februari 1976', 'Produktif RPL', '5fc604d5055cfb3515f56b25d984b505.jpg', '2017-01-26 07:49:43'),
(7, '12345', 'Dedi Suryadi, ST', 'L', 'Tasikmalaya', '25 September 1993', 'Produktif TKJ', '8cd5fd6ee98dfd39e42b0695bf13701b.jpg', '2017-01-26 13:45:11'),
(9, '1234', 'Zimzin Al Amin Syahid, S.T', 'L', 'Bandung', '26 Agustus 1981', 'Produktif MM', 'e0a720f50e170170451954a344fcd3af.JPG', '2020-04-07 08:29:55'),
(10, 'KM05', 'Raksa Griya Ramadhan, S.Pd', 'L', 'Bandung', '29 Maret 1992', 'Produk MM', '5e7211171bf8b5722fbf74a5ef6a120b.jpg', '2020-04-09 02:24:50'),
(11, '198012272014102002', 'Ani Nuraeni, S.Kom., M.Kom', 'P', 'Bandung', '27 Desember 1980', 'Produktif RPL', '55d6db70fab3688a497b5ce60e51709b.jpg', '2020-04-09 02:30:37'),
(12, '196202201989031007', 'Drs. Asep Eka Setia Priatna, M.Si', 'P', 'Bandung', '20 Januari 1962', 'Produktif RPL', '9f86507e6ce424fb87a3ce77927d1c1a.jpg', '2020-04-09 02:34:57'),
(13, '197906172010011006', 'Ade Suryadi, S.Pd., M.T', 'L', 'Garut', '17 Juni 1979', 'Produktif MM', '2e1b0bb94446cec8483b00c171d26d1d.jpg', '2020-04-09 03:10:47'),
(14, '198105032010011018', 'Sutarsa, S.Pd', 'L', 'Bandung', '03 Mei 2985', 'Produktif MM', '0754357e7b555bf30fde588f92722d7c.jpg', '2020-04-09 03:15:37'),
(15, '197808012010012004', 'Tati Nurhayati, S.Pd', 'P', 'Bandung', '01 Agustus 1978', 'Produktif MM', 'fce9011dbe8447667e00e66b5a68cb68.jpg', '2020-04-09 03:18:36'),
(16, 'PR1823', 'Rudhi Wahyudi Febrianto, S.Kom', 'L', '-', '-', 'Produktif RPL', 'c1e88e501256bd30af9fe66cabc89699.jpg', '2020-04-09 03:32:59'),
(17, 'PR1818', 'Razi Rumi Khwarizmi, S.Kom., M.Kom', 'L', 'Bandung', '09 Juni 1985', 'Produktif RPL', 'a800fe1a8436c4d3dde842a1253ca3c2.jpg', '2020-04-09 03:34:40'),
(18, 'KR04', 'Rini Melati, S.Kom', 'P', 'Padang', '-', 'Produktif RPL', '153f0529e78d791e165d8f91c42f7e47.jpg', '2020-04-09 03:36:24'),
(19, 'KT04', 'Regina Agustini, ST', 'P', 'Bandung', '-', 'Produktif TKJ', 'c7548b6c570da6860823776c12fcacf2.jpg', '2020-04-09 03:38:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2016-09-06 05:49:04'),
(2, 'Politik', '2016-09-06 05:50:01'),
(3, 'Sains', '2016-09-06 05:59:39'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Prestasi', '2016-09-07 02:51:09'),
(13, 'Olah Raga', '2017-01-13 13:20:31'),
(14, 'Kesehatan', '2020-04-03 11:43:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Kelas X.1'),
(2, 'Kelas X.2'),
(3, 'Kelas X.3'),
(4, 'Kelas X.4'),
(5, 'Kelas X.5'),
(6, 'Kelas X.6'),
(7, 'Kelas X.7'),
(8, 'Kelas XI IPA.1'),
(9, 'Kelas XI IPA.2'),
(10, 'Kelas XI IPA.3'),
(11, 'Kelas XI IPA.4'),
(12, 'Kelas XI IPA.5'),
(13, 'Kelas XI IPA.6'),
(14, 'Kelas XI IPA.7'),
(15, 'Kelas XI IPS.1'),
(16, 'Kelas XI IPS.2'),
(17, 'Kelas XI IPS.3'),
(18, 'Kelas XI IPS.4'),
(19, 'Kelas XI IPS.5'),
(20, 'Kelas XI IPS.6'),
(21, 'Kelas XI IPS.7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(1, 'M Fikri', 'fikrifiver97@gmail.com', ' Nice Post.', '2018-08-07 15:09:07', '1', 24, 0),
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', ' Awesome Post', '2018-08-07 15:14:26', '1', 24, 0),
(3, 'Joko', 'joko@gmail.com', 'Thank you.', '2018-08-08 03:54:56', '1', 24, 1),
(6, 'Yudi Subekti', 'yudi.subekti.skom@gmail.com', 'Ternyata ini benar..mohon segala sesuatunya harus diteliti kebenarannya biar tidak salah dan berakibat fatal', '2020-04-05 07:11:34', '1', 30, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kompetensi`
--

CREATE TABLE `tbl_kompetensi` (
  `kompetensi_id` int(11) NOT NULL,
  `kompetensi_judul` varchar(100) DEFAULT NULL,
  `kompetensi_isi` text DEFAULT NULL,
  `kompetensi_keahlian_id` int(11) DEFAULT NULL,
  `kompetensi_keahlian_nama` varchar(50) DEFAULT NULL,
  `kompetensi_tanggal` datetime NOT NULL,
  `kompetensi_views` int(11) DEFAULT NULL,
  `kompetensi_gambar` varchar(40) DEFAULT NULL,
  `kompetensi_img_slider` int(2) DEFAULT NULL,
  `kompetensi_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kompetensi`
--

INSERT INTO `tbl_kompetensi` (`kompetensi_id`, `kompetensi_judul`, `kompetensi_isi`, `kompetensi_keahlian_id`, `kompetensi_keahlian_nama`, `kompetensi_tanggal`, `kompetensi_views`, `kompetensi_gambar`, `kompetensi_img_slider`, `kompetensi_slug`) VALUES
(1, 'RPL', '<p>SDHFLKDSJFKLJDLFKJSDLKFJLSDJFLKSDF</p>\r\n', 1, 'RPL', '2020-05-20 13:00:00', NULL, '4d612ede174a4c22e9e35e8e04599c7d.png', 0, 'rpl'),
(8, 'TKJ', '', 3, 'TKJ', '0000-00-00 00:00:00', NULL, 'f4560182d06afcc943b8e4d09fc50f7b.png', 0, 'tkj'),
(9, 'Multimedia', '', 2, 'MM', '0000-00-00 00:00:00', NULL, '935a2f9317d645d7ce6f7973c248c452.jpg', 0, 'mm'),
(10, 'OTKP', '', 5, 'OTKP', '0000-00-00 00:00:00', NULL, 'ae8e7f891395363e8e6b3bfddf3b45f2.jpeg', 0, 'otkp'),
(11, 'AKL', '', 4, 'AKL', '0000-00-00 00:00:00', NULL, '4470827a572c88a51bdd5773e04d7d7b.jpeg', 0, 'akl'),
(12, 'BDP', '', 6, 'BDP', '0000-00-00 00:00:00', NULL, '8bcdf8fd9d0fc129e88e0a3f13462a72.jpeg', 0, 'bdp'),
(13, 'MLog', '', 7, 'Logistik', '0000-00-00 00:00:00', NULL, 'e9b3e45771b3c19774c937db0512af3b.jpg', 0, 'logistik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komp_keahlian`
--

CREATE TABLE `tbl_komp_keahlian` (
  `komp_keahlian_id` int(11) NOT NULL,
  `komp_keahlian_nama` varchar(50) DEFAULT NULL,
  `komp_keahlian_tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_komp_keahlian`
--

INSERT INTO `tbl_komp_keahlian` (`komp_keahlian_id`, `komp_keahlian_nama`, `komp_keahlian_tgl`) VALUES
(1, 'RPL', '2020-05-14 04:29:28'),
(2, 'Multimedia', '2020-05-21 03:21:47'),
(3, 'TKJ', '2020-05-14 04:29:43'),
(4, 'AKL', '2020-05-14 04:29:49'),
(5, 'OTKP', '2020-05-14 04:29:55'),
(6, 'BDP', '2020-05-14 04:29:59'),
(7, 'MLog', '2020-05-14 04:30:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Yudi Subekti', 'Just do it', 'L', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'I am a mountainner. to me mountainerring is a life', 'yudi.subekti.skom@gmail.com', '081220083232', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', 1, '1', '2016-09-03 06:07:55', '1633c2763ede933a24b46d7d8a2dedde.png'),
(5, 'Reny Tuti Anggraeni', NULL, 'P', 'reny', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'reny.anggraeni2019@gmail.com', '082132416959', NULL, NULL, NULL, NULL, 1, '2', '2020-04-05 09:37:54', '1b773b485896a9210799429b2dc806b3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(5, 'Perpanjangan Waktu Pelaksanaan PBM di Rumah', 'Pelaksanaan kegiatan PBM di rumah diperpanjang sampai dengan tanggal 27 April 2020', '2020-04-11 06:36:43', 'Yudi Subekti'),
(6, 'Perpanjangan Waktu Pelaksanaan PBM di Rumah', 'Proses Pembelajaran tetap dilaksanakan melalui sistem Online Learning/Daring yang mengacu pada Konten atau materi pembelajaran yang berfokus meningkatkan literasi, numerasi, serta penumbuhan karakter peserta didik. ', '2020-04-11 06:38:55', 'Yudi Subekti'),
(7, 'Perpanjangan Waktu Pelaksanaan PBM di Rumah', 'PBM yang diselenggarakan meliputi :\r\na. Aktivitas Kegiatan PBM\r\nb. Evaluasi\r\nc. Pembuatan Produk', '2020-04-11 06:39:48', 'Yudi Subekti'),
(8, 'Perpanjangan Waktu Pelaksanaan PBM di Rumah', 'Kegiatan PBM di rumah melalui pembelajaran daring dapat dilaksanakan dengan memberikan pengalaman belajar bermakna bagi peserta didik dengan tetap memperhatikan kendala dan keterbatasan sarana dan prasarana pendukung yang dimiliki siswa dan diarahkan lebih menciptakan kreatifitas siswa dengan karya - karya inovatif juga menyenangkan serta dapat lebih mendorong tetap terjaganya kesehatan siswa sebagai bagian terpenting dalam menghadapi kondisi saat ini.', '2020-04-11 06:43:53', 'Yudi Subekti'),
(9, 'Perpanjangan Waktu Pelaksanaan PBM di Rumah', 'Sesuai intruksi Dinas, Mohon Kegiatan PBM dilaporkan ke bagian Kurikulum pada setiap akhir pekan dengan melampirkan data-data kegiatan baik dalam bentuk materi, aktivitas kegiatan maupun evaluasi (File berupa PDF, gambar/foto maupun Video)', '2020-04-11 06:45:07', 'Yudi Subekti'),
(10, ' Informasi Akademik SMKN 11 Bandung', 'a. Pelaksanaan Ujian Sekolah yang sudah dilaksanakan dari tanggal 2 s.d. 13 Maret 2020 dalam bentuk Praktik dan Penugasan merupakan Kegiatan resmi yang akan dijadikan salah satu syarat penilaian Kelulusan.                 \r\nb. Pelaksanaan Ujian Sekolah dalam bentuk Teori yang rencananya akan dilaksanakan dalam bentuk Daring, diputuskan diganti Portofolio dengan mengambil nilai dan prestasi yang sudah diperoleh/ditempuh oleh masing-masing peserta didik.\r\nc. Kegiatan Uji Kompetensi Keahlian (UKK) untuk tahun 2019/2020 ini tidak menjadi Penentu Kelulusan, namun untuk membekali peserta didik SMKN 11 Bandung dengan Sertifikat Kompetensi Keahliannya masing-masing, maka akan tetap diselenggarakan Penilaian Kompetensi Siswa baik dalam bentuk Project Competency assesment maupun pengujian Kinerja dari Asosiasi yang pelaksanaannya bisa dilakukan secara on-line pada Bulan April ini maupun setelah kelulusan (Berdasarkan kesepakatan waktu dengan DU / DI maupun Asosiasi)\r\nd. Rapat Pleno Kelulusan Kelas XII Tahun Pelajaran 2019/2020 akan dilaksakan pada tanggal 30 April 2020\r\ne. Pengumuman Kelulusan Kelas XII Tahun Pelajaran 2019/2020 akan disampaikan pada tanggal 4 Mei 2020.', '2020-04-11 06:47:38', 'Yudi Subekti'),
(11, 'Informasi Akademik SMKN 11 Bandung', 'Kepada Orang Tua / wali mohon kerjasamanya agar terus dapat mendukung kegiatan dan program sekolah termasuk melaporkan aktivitas belajar dan kondisi kesehatan siswa selama belajar di rumah ke wali kelasnya masing-masing.', '2020-04-11 06:51:01', 'Yudi Subekti'),
(12, 'Informasi Akademik SMKN 11 Bandung', 'Terkait dengan Kewajiban Orang Tua Siswa berkenaan masalah Keuangan /Biaya Pendidikan baik itu berupa DSP maupun SPP, bisa melakukan pembayaran melalui transfer Ke Bank Syariah Mandiri - an. SMK Negeri 11 Bandung dengan No Rek sbb:\r\na. Kelas X : 7038455243\r\nb. Kelas XI : 7038455332\r\nc. Kelas XII : 7038455391\r\n(Apabila sudah transfer mohon konfirmasi ke wali kelasnya masing-masing yang selanjutnya akan diteruskan ke Tata Usaha Bag. Keuangan – IBu Winda)', '2020-04-11 06:52:16', 'Yudi Subekti');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2020-04-03 06:28:34', '::1', 'Chrome'),
(932, '2020-04-04 04:49:22', '::1', 'Chrome'),
(933, '2020-04-05 07:03:49', '::1', 'Chrome'),
(934, '2020-04-07 08:16:14', '::1', 'Chrome'),
(935, '2020-04-09 02:09:05', '::1', 'Chrome'),
(936, '2020-04-10 03:00:21', '::1', 'Chrome'),
(937, '2020-04-11 04:49:19', '::1', 'Chrome'),
(938, '2020-04-12 04:52:30', '::1', 'Chrome'),
(939, '2020-04-13 05:52:42', '::1', 'Chrome'),
(940, '2020-04-14 05:14:08', '::1', 'Chrome'),
(941, '2020-04-24 04:55:48', '::1', 'Chrome'),
(942, '2020-05-08 02:14:02', '::1', 'Chrome'),
(943, '2020-05-09 08:14:58', '::1', 'Chrome'),
(944, '2020-05-12 08:50:50', '::1', 'Chrome'),
(945, '2020-05-14 03:54:32', '::1', 'Chrome'),
(946, '2020-05-15 02:17:49', '::1', 'Chrome'),
(947, '2020-05-16 01:44:59', '::1', 'Chrome'),
(948, '2020-05-17 04:31:45', '::1', 'Chrome'),
(949, '2020-05-18 04:18:42', '::1', 'Chrome'),
(950, '2020-05-19 04:12:52', '::1', 'Chrome'),
(951, '2020-05-20 00:01:05', '127.0.0.1', 'Firefox'),
(952, '2020-05-21 01:58:09', '127.0.0.1', 'Firefox');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_prestasi`
--

CREATE TABLE `tbl_prestasi` (
  `id` int(5) NOT NULL,
  `mata_lomba` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `tingkat` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `penyelenggara` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `kota` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `tgl_lomba` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `peserta` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `juara` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_prestasi`
--

INSERT INTO `tbl_prestasi` (`id`, `mata_lomba`, `tingkat`, `penyelenggara`, `kota`, `tgl_lomba`, `peserta`, `juara`) VALUES
(2, 'Juara Walikota Cup Kota Bandung 2018 / Junior pemula ', 'Kota', 'Kota Bandung', 'Kota Bandung', '2018', 'Rifky Setiawan ( X RPL 3)', 'Juara III'),
(3, 'Juara Walikota Cup Kota Bandung 2018 / Junior pemula ', 'Kota', 'Kota Bandung', 'Kota Bandung', '2018', 'Lutfi Mardilah ( XII AP 2)', 'Juara II'),
(4, 'Juara Walikota Cup Kota Bandung 2018/  Junior pemula ', 'Kota', 'Kota Bandung', 'Kota Bandung', '2018', 'Nesa Siti W ( XI RPL 1)', 'Juara II'),
(5, 'Juara Walikota Cup Kota Bandung 2018/ Junior pemula ', 'Kota', 'Kota Bandung', 'Kota Bandung', '2018', 'Adit Permana ( XI RPL 3)', 'Juara II'),
(6, 'Juara Walikota Cup Kota Bandung 2018/ junior ', 'Kota', 'Kota Bandung', 'Kota Bandung', '2018', 'Fikri Firmansyah ( XII MM 2)', 'Juara III'),
(7, 'Juara Walikota Cup Kota Bandung 2018/Junior', 'Kota', 'Kota Bandung', 'Kota Bandung', '2018', 'Siti Anisa ( XII AP 2) ', 'Juara III'),
(8, 'Olimpiade Bahasa jepang ', 'Provinsi', 'Dinas Pendidikan', 'Provinsi Jawa Barat', '2018', 'Tasya Putri W ( XII MM 2) ', 'Juara Harapan III'),
(9, 'Bungkasai Olimpiade Bahasa Jepang ', 'Provinsi', 'Dinas Pendidikan', 'Provinsi Jawa Barat', '2018', 'Mugia ( XII RPL 3)', 'Juara Harapan III'),
(10, 'Kemah Pramuka   Kebangsaan Yonahanud 2018 ', 'Bandung Raya', 'Kota Bandung', 'Kota Bandung', '2018', 'Pramuka', 'Juara I'),
(11, 'O2SN cabang olahraga KARATE ', 'Provinsi', 'Dinas Pendidikan', 'Provinsi Jawa Barat', '2018', 'Putra Umar ( XI OTKP 2)', 'Juara III'),
(12, 'Lomba Desain  IOT di TELKOM UNIVERSITY ', 'Nasional', 'Telkom University', 'Kota Bandung', '2018', 'Gofur, Rena , Elis ( TIM TKJ)', 'Juara I'),
(13, 'Jumbara PMR tahun 2018 ', 'Kota', 'Kota Bandung', 'Kota Bandung', '2018', 'Tim PMR ', 'Juara Terbaik I');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_program_unggulan`
--

CREATE TABLE `tbl_program_unggulan` (
  `id_program` int(11) NOT NULL,
  `nama_program` varchar(255) NOT NULL,
  `deskripsi_program` text NOT NULL,
  `komp_keahlian_id` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_program_unggulan`
--

INSERT INTO `tbl_program_unggulan` (`id_program`, `nama_program`, `deskripsi_program`, `komp_keahlian_id`, `keterangan`) VALUES
(3, 'Coding Internasional', 'coding berbasiskan standat internasional dan bukan nasional', 1, 'mantappu des lah pokokna mah awokwokwok'),
(5, 'Video Grafi', 'Seni dalam membuat video dengan aturan tertentu berbasis industri', 2, 'program yang ajib euy hehehehe\r\n'),
(6, 'IPv6 ', 'Belajar konsep jaringan terbaru IPv6 untuk keamanan jaringan internet berdasarkan kebutuhan industri', 3, 'Program yang mantullah wkwkwk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(1, '9287482', 'Alvaro Sanchez', 'L', 8, '083d547659a2d4bb15c0322d15955da5.png'),
(5, '123084', 'Irma Chaiyo', 'P', 1, '1e148b42c71562841ba3018fc97b748a.png'),
(6, '123085', 'Nadila Ginting', 'P', 1, '8125da21f903803b6992214967239ab3.png'),
(7, '123086', 'Anna Marina', 'P', 1, '33eaf3e3faf28a0fe31670c022f641f1.png'),
(8, '123086', 'Dhea Lubis', 'P', 1, '03e651410e969c3c26e8e0d35380470d.png'),
(9, '123087', 'Nadia Ginting', 'P', 1, 'd7823f8d98d376c085aa284a54d63264.png'),
(10, '123088', 'Mita Febrina', 'P', 1, 'eca0280a4a57c911ee68b8318d1e517f.png'),
(11, '123089', 'Elizabeth ', 'P', 1, 'ec1232a08d650bc8c3197c9db95a7fc8.png'),
(12, '123090', 'Della Guswono', 'P', 1, '6c82fce13bb3eff1fd2e897b2c3cfeeb.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(27, 'Viral Jam 10 Waktu Terbaik untuk Berjemur. Ini Tips Agar Tidak Gosong', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;Berjemur di sekitar jam 10 pagi disebut memberikan manfaat optimal bagi kesehatan. Informasi yang beredar dalam sebuah pesan&nbsp;<a href=\"https://www.detik.com/tag/viral\">viral</a>&nbsp;ini memang ada benarnya, tetapi apa nggak gosong kalau kepanasan?<br />\r\n<br />\r\nAhli kanker dari RS Cipto Mangunkusumo, Dr dr Andhika Rachman, SpPD-KHOM, berjemur tidak serta merta memicu kecenderungan kanker kulit. Ada banyak faktor yang mempengaruhi, termasuk kadar pigmen melanin atau warna kulit.</p>\r\n\r\n<p>&quot;Orang-orang dengan kadar melanin rendah seperti orang Eropa biasanya lebih rentan,&quot; jelasnya.</p>\r\n\r\n<p>Dalam kaitannya dengan peningkatan&nbsp;<a href=\"https://www.detik.com/tag/imunitas\">imunitas</a>&nbsp;tubuh, ada beberapa hal yang perlu diperhatikan saat berjemur agar manfaatnya optimal.</p>\r\n\r\n<h3><strong>1. Jam 8-11 adalah waktu ideal</strong></h3>\r\n\r\n<p>Untuk wilayah tropis, menurut dr Andhika, paparan provitamin D pada waktu-waktu tersebut lebih dominan dibanding ultraviolet. Di atas jam 11, kadar sinar ultraviolet akan semakin tinggi.</p>\r\n\r\n<p>&quot;Kalau seperti di Eropa tentu teriknya berbeda,&quot; jelasnya.</p>\r\n\r\n<p>Selain itu, pengidap gangguan autoimun seperti lupus juga perlu menghindari berjemur di atas jam 11 pagi. Pada beberapa kasus, berjemur terlalu siang bisa memicu flare up atau kekambuhan.</p>\r\n\r\n<h3><strong>2. Durasi 30 menit</strong></h3>\r\n\r\n<p>Lamanya berjemur tentu dipengaruhi banyak hal, termasuk kondisi&nbsp;<a href=\"https://www.detik.com/tag/cuaca\">cuaca</a>. Tapi umumnya, 30 menit sudah cukup memberikan manfaat.</p>\r\n\r\n<h3><strong>3. Paparan 60 persen permukaan tubuh</strong></h3>\r\n\r\n<p>Menurut dr Andhika, manfaat berjemur akan optimal jika paparan sinar matahari mengenai 60 persen luas permukaan tubuh. Kisaran tersebut bisa dicapai misalnya dengan mengenakan baju lengan pendek, celana kolor, tanpa penutup kepala atau payung.</p>\r\n\r\n<p>&quot;Ada yang sampai membuka punggung, itu sebenarnya tidak perlu. Apalagi sampai&nbsp;<em>nude</em>&nbsp;(telanjang),&quot; saran dr Andhika.</p>\r\n\r\n<p><em><small>Sumber :&nbsp;<a href=\"https://health.detik.com/berita-detikhealth/d-4952339/viral-jam-10-waktu-terbaik-untuk-berjemur-ini-tips-agar-tidak-gosong\">https://health.detik.com/berita-detikhealth/d-4952339/viral-jam-10-waktu-terbaik-untuk-berjemur-ini-tips-agar-tidak-gosong</a></small></em></p>\r\n', '2020-04-04 04:59:58', 14, 'Kesehatan', 8, 'd9ada02b5f1701c8521ed6fce1c05813.jpeg', 1, 'Yudi Subekti', 0, 'viral-jam-10-waktu-terbaik-untuk-berjemur.-ini-tips-agar-tidak-gosong'),
(28, 'Berjemur Bisa Mematikan Virus Corona.  Saran IDI Jangan Terlalu Yakin', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;Belakangan ini, beberapa pihak yang menyebut bahwa&nbsp;<a href=\"https://www.detik.com/tag/virus-corona\">virus corona</a>&nbsp;COVID-19 tak bisa hidup di Indonesia karena&nbsp;<a href=\"https://www.detik.com/tag/cuaca-panas\">cuaca panas</a>. Sebelumnya narasi yang sama juga pernah tercetus saat kasus virus corona belum terdeteksi di Indonesia. Banyak yang mengaitkan iklim tropis membuat Indonesia &#39;kebal&#39; corona.</p>\r\n\r\n<p>Kemunculan infeksi pertama di Indonesia hingga kini telah 1.790 kasus tentu saja membantah anggapan tersebut. Hingga kini belum ada penelitian yang menunjukkan virus corona bisa mati di cuaca panas.</p>\r\n\r\n<p>&quot;Kalau itu postulatnya (anggapan-red) maka di daerah yang panas seperti Saudi Arabia itu mati semua (virusnya), kan lebih panas dari kita,&quot; kata Ketua Umum Ikatan Dokter Indonesia (IDI), dr Daeng M Faqih, dalam konferensi pers daring Katadata, Jumat (4/3/2020).</p>\r\n\r\n<p>Selain itu, banyak yang menggaungkan berjemur dapat mencegah penularan virus corona. Bahkan ada waktu-waktu terbaik yang disarankan agar serapannya lebih maksimal.</p>\r\n\r\n<p>Disebutkan oleh dr Daeng, berjemur bisa menjadi salah satu cara meningkatkan daya tahan tubuh. Namun jangan menjadi terlalu yakin bahwa virus akan mati hanya dengan berjemur di sinar matahari.</p>\r\n\r\n<p>&quot;Jangan sampai terlalu percaya diri bahwa berjemur, virus akan mati. Virus itu bertahan lama bukan di badan atau baju, tapi di tenggorokan karena reseptor virusnya di tenggorokan kita. Itu akan bertahan hidup kecuali imunitas kita bisa melawan,&quot; jelasnya.</p>\r\n\r\n<p>&quot;Jadi jangan berjemur dianggap bebas virus, itu hanya sebagian kecil (upaya pencegahan) saja,&quot; pungkasnya.</p>\r\n', '2020-04-04 05:11:38', 14, 'Kesehatan', 1, '5ba3423c467b6908635c3b5d0b31604a.jpeg', 1, 'Yudi Subekti', 0, 'berjemur-bisa-mematikan-virus-corona.--saran-idi-jangan-terlalu-yakin'),
(29, 'Beragam Penyakit yang Bisa Dicegah dengan Vitamin D', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;<a href=\"https://www.detik.com/tag/vitamin-d\">Vitamin D&nbsp;</a>jadi salah satu nutrisi penting dalam tubuh. Banyak cara untuk mendapatkan vitamin D mulai dari mengonsumsi susu, jus jeruk, telur, hingga ikan. Vitamin D bisa didapatkan ketika tubuh terkena&nbsp;<a href=\"https://www.detik.com/tag/sinar-matahari\">sinar matahari</a>.</p>\r\n\r\n<p>Banyak manfaat yang didapat vitamin D bagi tubuh kita terutama untuk mencegah berbagai panyakit. Berikut beberapa penyakit yang dapat dicegah seperti dikutip dari The Star.</p>\r\n\r\n<p><strong>1. Osteoporosis</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vitamin D dapat membantu penyerapan kalsium. Tanpa jumlah yang cukup dari calcitriol, bentuk aktif vitamin D, tubuh tidak dapat menyerap cukup kalsium dan fosfat yang keduanya sangat penting untuk mempertahankan tulang yang kuat.</p>\r\n\r\n<p><strong>2. Penyakit jantung dan stroke</strong></p>\r\n\r\n<p>Mengonsumsi vitamin D yang cukup dapat membantu mengurangi gagal jantung dan stroke. Banyak penelitian yang menyebutkan hubungan vitamin D dan beberapa gangguan kardiovaskular (jantung).</p>\r\n\r\n<p><strong>3. Diabetes</strong></p>\r\n\r\n<p>Dalam model sel menunjukkan bahwa vitamin D dapat meningkatkan sensitivitas insulin, meningkatkan fungsi sel pankreas dan mengurangi peradangan. Semuanya membantu untuk mengelola diabetes.</p>\r\n\r\n<p><strong>4. Kanker</strong></p>\r\n\r\n<p>Sebuah penelitian menganalisis hubungan potensial antara vitamin D dan kanker ovarium, kanker prostat, kanker payudara dan kanker usus besar. Penelitian ini menunjukkan bahwa vitamin D mungkin merupakan cara yang efisien untuk membantu mengurangi risiko kanker.</p>\r\n\r\n<p><em><small>Sumber :&nbsp;<a href=\"https://health.detik.com/berita-detikhealth/d-4950944/beragam-penyakit-yang-bisa-dicegah-dengan-vitamin-d\">https://health.detik.com/berita-detikhealth/d-4950944/beragam-penyakit-yang-bisa-dicegah-dengan-vitamin-d</a></small></em></p>\r\n', '2020-04-04 05:20:48', 14, 'Kesehatan', 1, '191d461401cfccaba347d90b4e126c27.jpeg', 1, 'Yudi Subekti', 0, 'beragam-penyakit-yang-bisa-dicegah-dengan-vitamin-d'),
(30, 'Terjawab Waktu Terbaik untuk Berjemur adalah... Tidak Ada', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;Perdebatan tentang waktu terbaik untuk&nbsp;<a href=\"https://www.detik.com/tag/berjemur\">berjemur</a>&nbsp;seolah tak pernah mencapai titik temu. Broadcast-broadcast yang beredar di media sosial telah membuat netizen terbelah jadi 2 kubu: pendukung berjemur jam 10 ke atas, dan pendukung berjemur jam 10 ke bawah.</p>\r\n\r\n<p>Sebelum latah ikut-ikutan bertengkar dan cakar-cakaran, yuk pelajari dulu teorinya. Dokter spesialis kulit dan staf pengajar di Departemen Ilmu Kesehatan Kulit dan Kelamin FK UNPAD/RS Hasan Sadikin (RSHS) Bandung, dr R.M. Rendy Ariezal Effendi, SpDV, menjelaskan bahwa tujuan utama seseorang berjemur adalah untuk mendapatkan vitamin D yang baik untuk daya tahan tubuh.</p>\r\n\r\n<p>&quot;Kalau tujuannya untuk mendapatkan vitamin D, anjuran berjemur di atas jam 10 bisa saja dilakukan. Tapi dari sisi kesehatan kulit, ada risikonya,&quot; kata dr Rendy dalam perbincangan dengan detikcom.</p>\r\n\r\n<p>Berjemur di atas jam 10, di satu sisi dipercaya memberikan paparan ultraviolet B (UVB) paling maksimal. Paparan UVB itulah yang dibutuhkan oleh tubuh untuk meningkatkan kadar vitamin D dalam tubuh. Meskipun demikian,&nbsp;<a href=\"https://www.detik.com/tag/uv-index\">UV Index</a>&nbsp;(UVI) umumnya sudah tinggi pada jam tersebut.</p>\r\n\r\n<p>&quot;Risikonya antara lain bisa flek atau tanning kalau tanpa pelindung seperti&nbsp;<em>sunblock</em>,&quot; jelas dr Rendy.</p>\r\n\r\n<p>&quot;Selain itu, paparan sinar UVB yang terus menerus dan berlebihan tanpa proteksi dapat meningkatkan risiko kanker kulit di kemudian hari,&quot; tambahnya.</p>\r\n\r\n<h2>UV Index lebih menentukan</h2>\r\n\r\n<p>Menurut dr Rendy, tidak ada guideline yang secara spesifik menentukan waktu terbaik untuk berjemur. Banyak faktor yang mempengaruhi, misalnya cuaca dan letak geografis. Jam 10 pagi di Jakarta misalnya, intensitas sinar mataharinya tentu berbeda dengan jam 10 pagi di Kopenhagen.</p>\r\n\r\n<p>UV Index, disebutnya lebih relevan untuk dijadikan dipertimbangkan dalam memilih waktu terbaik untuk berjemur. Berjemur selama 15-30 menit ketika UV Index berada di angka 3-7, menurutnya cukup ideal dengan memperhitungkan rasio &#39;risk and benefit&#39;.</p>\r\n\r\n<p>Bagaimana caranya mengetahui UV Index di suatu tempat? Ternyata gampang banget. Berbagai aplikasi perkiraan cuaca di smartphone umumnya sudah memberikan informasi cukup detail tentang berbagai indikator cuaca, termasuk UV Index.</p>\r\n\r\n<p><img alt=\"UV Index dalam aplikasi prakiraan cuaca di smartphone.\" src=\"https://akcdn.detik.net.id/community/media/visual/2020/04/04/ef60829f-7257-4141-a31c-4102c2a66afb_169.jpeg?w=620\" /></p>\r\n\r\n<h2>Berarti mending berjemur pagi banget saat UV Index masih sangat rendah?</h2>\r\n\r\n<p>Nggak juga. Kalau terlalu pagi, intensitas UVB yang dibutuhkan oleh tubuh mungkin belum cukup. Butuh waktu lebih lama untuk mendapat manfaat yang sama, yang artinya makin lama pula terpapar ultraviolet lain yakni UVA.</p>\r\n\r\n<p>&quot;Untuk di negara tropis seperti Indonesia, berjemur sekitar pukul 9 pagi sudah cukup untuk meningkatkan kadar vitamin D dalam tubuh. Berjemur cukup dilakukan sebanyak 3 kali seminggu, agar proses metabolisme vitamin D juga menjadi lebih efektif. Selain itu, sinar UVA memiliki gelombang yang lebih panjang dan dapat menembus lapisan kulit lebih dalam,&quot; kata dr Rendy.</p>\r\n\r\n<p>&quot;Ultraviolet A ini yang menyebabkan&nbsp;<a href=\"https://www.detik.com/tag/penuaan-dini\">penuaan dini</a>&nbsp;atau&nbsp;<em>photoaging</em>&quot; lanjutnya.</p>\r\n\r\n<h2><img alt=\"Cara mengartikan UV Index.\" src=\"https://akcdn.detik.net.id/community/media/visual/2020/04/03/d593695c-2d72-4418-98b8-8314bf1f5d16_169.jpeg?w=620\" /></h2>\r\n\r\n<h2>Tak cukup hanya dengan berjemur</h2>\r\n\r\n<p>Untuk mendapatkan asupan vitamin D yang cukup, dr Rendy mengingatkan bahwa asupan nutrisi juga harus diperhatikan. Kebutuhan vitamin D, bagaimanapun tidak bisa dipenuhi hanya dengan berjemur.</p>\r\n\r\n<p>Bahkan, ia tidak menganjurkan berjemur terlalu sering. Berjemur seminggu 3 kali menurutnya sudah cukup ideal, dengan syarat 60 persen permukaan tubuh terpapar, selama 15-30 menit, dan dengan kondisi UV Index di rentang 3-7. Jangan lupa, pakai&nbsp;<em>sunblock</em>&nbsp;agar kulit tidak terbakar.</p>\r\n\r\n<p><em><small>Sumber :&nbsp;<a href=\"https://health.detik.com/berita-detikhealth/d-4964720/terjawab-waktu-terbaik-untuk-berjemur-adalah-tidak-ada\">https://health.detik.com/berita-detikhealth/d-4964720/terjawab-waktu-terbaik-untuk-berjemur-adalah-tidak-ada</a></small></em></p>\r\n', '2020-04-04 05:26:12', 14, 'Kesehatan', 10, '99a55ea50fb0d18f434867ec3d8d5e20.jpeg', 1, 'Yudi Subekti', 0, 'terjawab-waktu-terbaik-untuk-berjemur-adalah...-tidak-ada'),
(31, 'Ahli Epidemologi Sebut Obesitas Bisa Jadi Faktor Risiko Terinfeksi Virus Corona', '<p>Ahli sebut obesitas jadi faktor resiko terkena corona. (Foto ilustrasi: iStock)</p>\r\n\r\n<p><strong>Jakarta</strong>&nbsp;-&nbsp;Seorang ahli epidemiologi asal Perancis, Profesor Jean-Fran&ccedil;ois Delfraissy mengatakan obesitas bisa menjadi faktor risiko terinfeksi&nbsp;<a href=\"https://www.detik.com/tag/virus-corona\">virus Corona&nbsp;</a>COVID-19. Ia mengatakan, anak muda terutama yang mengalami kelebihan berat badan harus berhati-hati.</p>\r\n\r\n<p>&quot;Itulah sebabnya, kita khawatir Amerika yang diketahui memiliki masalah obesitas paling besar bisa lebih rentan,&quot; ujarnya yang dikutip dari&nbsp;<em>Reuters.</em></p>\r\n\r\n<p>Delfraissy mengatakan, sebanyak 17 juta dari 67 juta warga Prancis yang berisiko serius terinfeksi&nbsp;<a href=\"https://www.detik.com/tag/covid_19\">COVID-19</a>&nbsp;yaitu lanjut usia, ada penyakit penyerta, dan obesitas. Sebanyak 88 persen dari mereka yang terinfeksi itu hanya menunjukkan gejala seperti flu saja.</p>\r\n\r\n<p>Ia menyebutkan, tingkat kematian anak muda karena COVID-19 ini sebanyak 2 persen. Tapi, saat mereka lebih rapuh, misalnya mengalami obesitas dan penyakit penyerta bisa melonjak menjadi 14 persen.</p>\r\n\r\n<p>Di Prancis sendiri, kasus virus Corona di sana terus meningkat sejak pertengahan Maret. Jika sebelumnya 30.000 setiap hari, dan akan meningkat dalam dua minggu menjadi 100.000-250.000 kasus per harinya.</p>\r\n\r\n<p>blob:https://20.detik.com/ac91c7ae-7ba6-4b44-ba33-29f37ec571be</p>\r\n\r\n<p><em><small>Sumber :&nbsp;<a href=\"https://health.detik.com/berita-detikhealth/d-4972068/ahli-epidemologi-sebut-obesitas-bisa-jadi-faktor-risiko-terinfeksi-virus-corona\">https://health.detik.com/berita-detikhealth/d-4972068/ahli-epidemologi-sebut-obesitas-bisa-jadi-faktor-risiko-terinfeksi-virus-corona</a></small></em></p>\r\n', '2020-04-10 03:09:43', 14, 'Kesehatan', 3, '6ff8b0ccfe7010b54e8c65753b351944.jpeg', 1, 'Yudi Subekti', 0, 'ahli-epidemologi-sebut-obesitas-bisa-jadi-faktor-risiko-terinfeksi-virus-corona'),
(32, 'Jumlah Kematian Akibat Virus Corona di Seluruh Dunia Tembus 100.000 Jiwa', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;Kematian pertama akibat&nbsp;<a href=\"https://www.detik.com/tag/virus-corona\">virus corona</a>&nbsp;COVID-19 terjadi di Kota Wuhan, China, pada 9 Januari lalu. Selang sekitar 91 hari setelahnya, angka kasus kematian akibat virus corona dari data yang dihimpun oleh&nbsp;<em>Johns Hopkins University</em>&nbsp;tembus 102.607 jiwa.</p>\r\n\r\n<p>Mengutip&nbsp;<em>Reuters</em>&nbsp;korban meninggal meningkat dengan laju harian antara 6 persen hingga 10 persen selama sempekan terakhir dan hampir 7.300 kematian diseluruh dunia dilaporkan pada Kamis (9/4/2020). Korban tewas saat ini sebanding dengan wabah besar London pada pertengahan 1660-an yang merenggut nyawa sekitar 100 ribu orang, sekitar sepertiga populas kota pada zaman itu.</p>\r\n\r\n<p>Organisasi Kesehatan Dunia (<a href=\"https://www.detik.com/tag/who\">WHO</a>) mengatakan sudah 100 hari berlalu sejak mereka diberitahu mengenai kasus pertama virus corona yang dikonfirmasi. Direktur Jenderal WHO, Tedros Adhanom Ghebreyesus, mengatakan jelas bahwa penyakit ini memiliki tingkat kefatalan 10 kali lebih besar dari flu.</p>\r\n\r\n<p>&quot;Pandemi ini lebih dari sekadar krisis kesehatan. Ini membutuhkan respons seluruh pemerintah dan seluruh masyarakat,&quot; tutur Tedros.</p>\r\n\r\n<p>Sementara itu, total infeksi virus corona di seluruh dunia mencapai 1.694.954 jiwa dan sekitar 300.000 orang di antaranya telah sembuh.</p>\r\n\r\n<p><em><small>Sumber :&nbsp;<a href=\"https://health.detik.com/berita-detikhealth/d-4973106/jumlah-kematian-akibat-virus-corona-di-seluruh-dunia-tembus-100000-jiwa\">https://health.detik.com/berita-detikhealth/d-4973106/jumlah-kematian-akibat-virus-corona-di-seluruh-dunia-tembus-100000-jiwa</a></small></em></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-04-11 04:49:07', 14, 'Kesehatan', 4, 'acdc0e3820b1c9f47cb6aae78f39cc54.jpeg', 1, 'Yudi Subekti', 0, 'jumlah-kematian-akibat-virus-corona-di-seluruh-dunia-tembus-100.000-jiwa'),
(33, 'Potensi Bahaya Sederet Obat Virus Corona. Salah Satunya Klorokuin', '<p><small>Beberapa pasien COVID-19 diberi klorokuin. (Foto: iStock)</small></p>\r\n\r\n<p><strong>Jakarta</strong>&nbsp;-&nbsp;<a href=\"https://www.detik.com/tag/klorokuin\">Klorokuin</a>, hidroksi klorokuin, dan azithromycin telah digunakan untuk mengobati virus Corona COVID-19. Meski belum ada bukti yang pasti terhadap keefektivitasan dan kelemahannya, dokter tetap harus waspada kemungkinan efek samping serius dari obat-obatan tersebut.</p>\r\n\r\n<p>Sebuah ulasan yang dilakukan oleh Canadian Medical Association Journey, menuliskan beberapa potensi berbahaya dari obat-obatan yang digunakan untuk menyembuhkan&nbsp;<a href=\"https://www.detik.com/tag/virus-corona\">virus Corona</a>.</p>\r\n\r\n<p>&quot;Dokter dan pasien harus mewaspadai beberapa efek samping yang jarang tetapi berpotensi mengancam jiwa dari klorokuin dan hidroksi klorokuin,&quot; kata Dr. David Juurlink, Divisi Farmakologi dan Toksikologi Klinis, Pusat Ilmu Kesehatan Sunnybrook, dan ilmuwan senior, dikutip dari<em>&nbsp;Science Daily.</em></p>\r\n\r\n<p>Ulasan yang dipublikasikan dalam jurnal&nbsp;<em>Safety Considerations with Chloroquine, Hydroxychloroquine and Azithromycin in The Management of SARS-CoV-2 Infection</em>&nbsp;pada 8 April lalu memberikan tinjauan umum tentang bahaya yang terkait dengan obat tersebut berdasarkan bukti-bukti yang dihimpun.</p>\r\n\r\n<p>Efek samping potensial meliputi:</p>\r\n\r\n<p>- Aritmia jantung<br />\r\n- Hipoglikemia<br />\r\n- Efek neuropsikiatri seperti agitasi, kebingungan, halusinasi dan paranoia<br />\r\n- Variabilitas metabolik<br />\r\n- Overdosis yang menyebabkan kejang, koma, dan henti jantung<br />\r\n- Kekurangan obat bagi pasien gangguan autoimun seperti rheumatoid arthritis dan lupus</p>\r\n\r\n<p>Studi tersebut juga merangkum rendahnya bukti yang menunjukkan bahwa perawatan dengan obat-obatan di atas bermanfaat bagi pasien COVID-19 dan memperingatkan adanya kemungkinan pemberian obat dapat memperburuk penyakit.</p>\r\n\r\n<p>&quot;Inilah sebabnya kita membutuhkan basis bukti yang lebih luas sebelum secara rutin memberikan obat ini untuk mengobati pasien COVID-19,&quot; pungkas Dr Juurlink.</p>\r\n\r\n<p><em><small>Sumber :&nbsp;<a href=\"https://health.detik.com/berita-detikhealth/d-4973058/potensi-bahaya-sederet-obat-virus-corona-salah-satunya-klorokuin\">https://health.detik.com/berita-detikhealth/d-4973058/potensi-bahaya-sederet-obat-virus-corona-salah-satunya-klorokuin</a></small></em></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-04-11 04:57:18', 14, 'Kesehatan', 1, 'a01acb4a4538d98b482a1c0ec148e501.jpeg', 1, 'Yudi Subekti', 0, 'potensi-bahaya-sederet-obat-virus-corona.-salah-satunya-klorokuin'),
(34, '3 Hal yang Memicu Gejala Virus Corona Ringan Menjadi Berat dan Fatal', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;Sebagian besar pasien&nbsp;<a href=\"https://www.detik.com/tag/virus-corona\">virus Corona&nbsp;</a>awalnya mengalami gejala ringan atau sedang. Sebagian besar yang bergejala ringan bisa dirawat di rumah dan akan pulih dalam beberapa minggu.</p>\r\n\r\n<p>Namun, diestimasikan satu dari lima orang pasien mengembangkan gejala yang lebih parah dan mengkhawatirkan sehingga butuh penanganan khusus di rumah sakit. Pasien COVID-19 yang mengalami gejala berat juga harus memakai ventilator sebagai alat bantu napas.</p>\r\n\r\n<p>Lalu, kira-kira apa saja yang memicu gejala virus corona ringan bisa menjadi berat? Berikut di antaranya dilansir dari&nbsp;<em>The Sun</em>.</p>\r\n\r\n<h3><strong>1. Usia dan kondisi kesehatan</strong></h3>\r\n\r\n<p>Para ahli menyebut memiliki penyakit komorbid atau penyakit penyerta menjadi faktor penentu kondisi pasien virus corona bisa menjadi berat atau tidak. Hal ini dikarenakan individu dengan penyakit penyerta memiliki sistem kekebalan tubuh lebih lemah sehingga tak mampu melawan COVID-19.</p>\r\n\r\n<p>&quot;Jika sistem kekebalan tubuh tidak kuat, kemungkinan besar virus itu dapat berkembang biak di dalam paru-paru dan menyebabkan peradangan dan kerusakan jaringan parut. Sistem kekebalan akan melawannya dan menghancurkan jaringan paru yang sehat dalam prosesnya,&quot; kata Dr Sarah Jarvis GP, Direktur Klinis Patient Access.</p>\r\n\r\n<p>Meski demikian usia tidak selalu jadi pemicu yang mengubah virus corona menjadi penyakit mematikan. Beberapa lansia yang berusia 50 tahun ke atas juga bisa pulih dari COVID-19.</p>\r\n\r\n<h3><strong>2. Saat virus telah melewati batang tenggorokan</strong></h3>\r\n\r\n<p>COVID-19 umumnya ditemukan pada droplet dan memasuki tubuh melalui mukosa mata, hidung, dan mulut kemudian berdiam lama di tenggorokan. Saat perkembangannya bisa dihentikan di tenggorokan, kemungkinan pasien akan pulih dan hanya mengalami kondisi ringan dengan gejala batuk kering serta demam dan dapat diobati di rumah.</p>\r\n\r\n<p>Namun jika virus berhasil melewati tenggorokan dan masuk ke dalam jaringan paru, penyakit tersebut akan masuk ke fase yang lebih memprihatinkan. Gejala yang dialami meliputi sakit dada, batuk kerasa, dan sesak napas. Virus ini juga dapat menyerang alveoli atau kantong udara dan memenuhinya dengan cairan sehingga menimbulkan pneumonia.</p>\r\n\r\n<p>Kebanyakan yang meninggal karena&nbsp;<a href=\"https://www.detik.com/tag/covid_19\">COVID-19&nbsp;</a>adalah pasien dengan kondisi pneumonia berat. Oksigen tambahan dan ventilator biasanya digunakan bagi pasien pneumonia namun terkadang kerusakannya sudah terlalu berat.</p>\r\n\r\n<h3><strong>3. Respon sistem kekebalan tubuh</strong></h3>\r\n\r\n<p>Dalam kebanyakan kasus, kekebalan tubuh bisa langsung melawan dan mematikan virus corona dengan sukses. Saat kemunculan virus, tubuh berusaha segera memperbaiki kerusakan di paru-paru. Apabila berjalan dengan baik, infeksinya dapat diberantas dalam beberapa hari.</p>\r\n\r\n<p>Sayangnya ada beberapa kondisi di mana kekebalan tubuh dapat lebih berbahaya dan menyebabkan hilangnya folikel yang membantu mengusir kontaminasi. Selain itu ada juga sindrom badai sitokin yang terjadi saat tubuh overdrive dalam upaya melawan virus. Saat badai sitokin terjadi, imun yang harusnya menyerang virus malah balik menyerang tubuh.</p>\r\n\r\n<p>Orang yang lebih muda dan bugar dengan sistem kekebalan tubuh yang kuat sebenarnya lebih mungkin mengalami episode badai sitokin daripada lansia. Jadi ya, orang tua dan orang muda sama rentannya pada infeksi virus corona.</p>\r\n\r\n<p><em><small>Sumber :&nbsp;<a href=\"https://health.detik.com/berita-detikhealth/d-4973242/3-hal-yang-memicu-gejala-virus-corona-ringan-menjadi-berat-dan-fatal\">https://health.detik.com/berita-detikhealth/d-4973242/3-hal-yang-memicu-gejala-virus-corona-ringan-menjadi-berat-dan-fatal</a></small></em></p>\r\n', '2020-04-11 05:10:09', 14, 'Kesehatan', 2, '53d17b05d8171de4e93c04e28c3d5173.png', 1, 'Yudi Subekti', 0, '3-hal-yang-memicu-gejala-virus-corona-ringan-menjadi-berat-dan-fatal'),
(35, 'Terpopuler Sepekan: Glenn Fredly Meninggal dan Meningitis yang Diidapnya', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;Tanah Air kembali berduka, musisi&nbsp;<a href=\"https://www.detik.com/tag/glenn-fredly-meninggal\">Glenn Fredly meninggal</a>&nbsp;dunia pada Rabu (8/4/2020) di RS Setia Mitra, Jakarta Selatan. Sebelum meninggal, Glenn sempat dikabarkan mendapat perawatan di rumah sakit pada Maret 2020 lalu, dan dirawat selama seminggu.</p>\r\n\r\n<p>Kondisi kesehatan Glenn juga sempat mencuri perhatian ketika ia mengungkap keinginannya untuk pensiun dari dunia musik pada Oktober 2010. Saat itu ia tidak mengungkap bahwa dirinya sakit meski secara fisik tampak lebih kurus.</p>\r\n\r\n<p>Hingga pada akhirnya perwakilan dari pihak keluarga, Mozes Latuihamallo mengatakan Glenn meninggal karena penyakit&nbsp;<a href=\"https://www.detik.com/tag/meningitis\">meningitis</a>&nbsp;yang diidapnya, dan dipastikan bukan karena virus Corona COVID-19.</p>\r\n\r\n<p>&quot;Akibat meningitis,&quot; kata perwakilan keluarga Glenn, Mozes Latuihamallo dalam keterangan resminya, Rabu (8/4/2020).</p>\r\n\r\n<h2><strong>Apa itu meningitis?</strong></h2>\r\n\r\n<p>Dikutip dari&nbsp;<em>Mayo Clinic,</em>&nbsp;meningitis adalah radang pada selaput atau membran yang menyelubungi otak. Penyakit ini umumnya dipicu oleh infeksi virus, bakteri dan parasit.</p>\r\n\r\n<p>Seperti apa gejala khas meningitis?</p>\r\n\r\n<p>Dokter bedah saraf RS Mayapada, dr Roslan Yusni Hasan, SpBS, mengatakan ada beberapa gejala khas yang bisa dirasakan oleh orang yang menderita meningitis.</p>\r\n\r\n<p>&quot;Ada gejala khas radang selaput otak seperti leher kaku jadi kakunya ditekuk seperti menunduk saja keras itu,&quot; kata dr Ryu, sapaan akrabnya, kepada&nbsp;<strong>detikcom</strong>, Kamis (9/4/2020)</p>\r\n\r\n<p>&quot;Terus nyeri leher bisa sampai ke dagu nyerinya, demam, sakit kepala, bisa mual bahkan muntah, kejang-kejang, terus ngantuk sampai dibangunkan pun dia melek tapi ngantuk lagi,&quot; lanjutnya.</p>\r\n\r\n<p>dr Ryu juga menjelaskan ada perbedaan gejala yang dirasakan oleh orang dewasa dan anak kecil atau bayi.</p>\r\n\r\n<p>&quot;Kalau pada bayi yang biasa muncul itu gatal-gatal dan nangis nggak berhenti-henti, nggak mau makan, sesak napas itu gejala-gejala pada bayi,&quot; tuturnya.</p>\r\n\r\n<h2><strong>Siapa saja yang rentan terkena meningitis?</strong></h2>\r\n\r\n<p>dr Ryu mengatakan bahwa meningitis bisa menyerang pada siapa saja yang memiliki daya tahan tubuh lemah.</p>\r\n\r\n<p>&quot;Semua bisa, semua umur bisa. Setiap orang punya kerentanan sendiri terhadap bakteri dan virus,&quot; ucapnya.</p>\r\n\r\n<p>Tak hanya itu, dr Ryu juga menjelaskan meski meningitis bisa menyerang pada siapa saja, tapi yang paling rentan terkena penyakit ini adalah anak kecil. Sebab daya tahan tubuhnya yang terbilang masih lemah.</p>\r\n\r\n<p>&quot;Anak kecil lebih rentan, karena ketahanan anak-anak kan beda belum terpapar. Kalau orang dewasa itu sudah terpapar infeksi macam-macam, jadi daya tahan tubuhnya sudah bagus,&quot; jelasnya.</p>\r\n\r\n<h2><strong>Bagaimana cara penularan meningitis?</strong></h2>\r\n\r\n<p>Sama seperti penyakit lainnya, meningitis juga bisa menular antarmanusia. dr Ryu mengatakan meningitis bisa menular melalui droplet atau percikan yang keluar saat batuk atau bersin.</p>\r\n\r\n<p>&quot;Penularan bisa terjadi karena kontak langsung, bisa karena droplet dari batuk dan bersin. Jadi sama seperti penyakit lainnya yang karena virus dan bakteri,&quot; ujar dr Ryu.</p>\r\n\r\n<h2><strong>Apakah meningitis bisa dicegah?</strong></h2>\r\n\r\n<p>Ada beberapa cara untuk mencegah penularan meningitis meski belum melakukan vaksinasi. Berikut ini cara pencegahannya:</p>\r\n\r\n<p>- Cuci tangan. Rutin mencuci tangan untuk mencegah penyebaran virus, bakteri dan parasit penyebab penyakit. Terutama dilakukan pada saat sebelum makan dan setelah menggunakan toilet.</p>\r\n\r\n<p>- Jaga kebersihan. Jangan berbagi minuman, makanan, sedotan, peralatan makan dan sikat gigi dengan orang lain untuk mengurangi risiko penularan.</p>\r\n\r\n<p>- Pola hidup sehat. Pertahankan sistem kekebalan tubuh dengan cara istirahat yang cukup, rutin berolahraga dan makan-makanan sehat.</p>\r\n\r\n<p><em><small>Sumber :&nbsp;<a href=\"https://health.detik.com/berita-detikhealth/d-4973302/terpopuler-sepekan-glenn-fredly-meninggal-dan-meningitis-yang-diidapnya\">https://health.detik.com/berita-detikhealth/d-4973302/terpopuler-sepekan-glenn-fredly-meninggal-dan-meningitis-yang-diidapnya</a></small></em></p>\r\n', '2020-04-11 07:03:18', 14, 'Kesehatan', 2, '08e374bbab114cf1578ce4414eaadb7a.jpeg', 1, 'Yudi Subekti', 0, 'terpopuler-sepekan:-glenn-fredly-meninggal-dan-meningitis-yang-diidapnya'),
(36, 'Nekat Melayat Kerabat dan Hadiri Pesta 16 Orang Terinfeksi Virus Corona', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;Sekelompok orang berkumpul di Chicago untuk melayat kerabat mereka yang meninggal. Tanpa mereka sadari,&nbsp;<a href=\"https://www.detik.com/tag/virus-corona\">virus Corona</a>&nbsp;&#39;bersembunyi&#39; dan mengarah ke super-spreader sehingga membuat sedikitnya 16 orang sakit dan 3 meninggal dunia.</p>\r\n\r\n<p>Saat ditelusuri, salah satu pendatang adalah seorang teman dekat yang baru-baru ini bepergian ke luar negeri dan saat itu tengah mengalami gejala ringan virus corona. Ketika melayat, dia berpelukan dengan beberapa orang. Tak sampai disitu, setelah melayat tiga hari kemudian ia mengunjungi pesta ulang tahun saat dan mengabaikan gejalanya.</p>\r\n\r\n<p>Beberapa hari setelahnya, ia baru dites dan didiagnosis positif&nbsp;<a href=\"https://www.detik.com/tag/covid_19\">COVID-19</a>. Saat itu, ia sudah menularkan virus ke banyak orang dan mengakibatkan 16 di antaranya terinfeksi dan 3 meninggal dunia.</p>\r\n\r\n<p>&quot;Ketika orang-oran bersama dalam pemakaman atau pertemuan keluarga besar dan saat salah satu di antaranya memiliki gejala seperti virus corona, sangat besar kemungkinannya menularkan ke orang lain,&quot; kata Dr Jennifer Layden, kepala petugas medis dari Departemen Kesehatan Masyarakat Chicago, dikutip dari&nbsp;<em>WebMD</em>.</p>\r\n\r\n<p>Saat ini, disebutkan bahwa semua orang rentan tertular virus Corona. Penyakitnya sangat mudah menular seperti flu namun lebih parah karena belum ada obat dan vaksin perlindungan pada virus tersebut. Menghindari pertemuan sosial secara efektif bisa menekan laju penyebaran karena virus tidak bisa menginfeksi orang lain dan tidak menemukan inang sehingga akan mati jika berada di permukaan.</p>\r\n\r\n<p>&quot;Tapi bukan hanya tinggal di rumah namun harus mempraktikkan jarak sosial dan langkah-langkah kebersihan seperti menutup mulut ketika batuk bahkan jika Anda berada di dalam rumah,&quot; papar Dr Layden.</p>\r\n\r\n<p>Kasus ini dilaporkan pada 8 April di studi Pusat Pengendalian Penyakit Amerika Serikat dan Laporan Morbiditas dan Mortalitas Mingguan Amerika Serikat.</p>\r\n\r\n<p><em><small>Sumber :&nbsp;<a href=\"https://health.detik.com/berita-detikhealth/d-4973360/nekat-melayat-kerabat-dan-hadiri-pesta-16-orang-terinfeksi-virus-corona\">https://health.detik.com/berita-detikhealth/d-4973360/nekat-melayat-kerabat-dan-hadiri-pesta-16-orang-terinfeksi-virus-corona</a></small></em></p>\r\n', '2020-04-11 07:16:08', 14, 'Kesehatan', 2, 'e89d0dec089cf061c778dc6cd4178220.jpeg', 1, 'Yudi Subekti', 0, 'nekat-melayat-kerabat-dan-hadiri-pesta-16-orang-terinfeksi-virus-corona'),
(37, 'Gejala Baru Virus Corona Mulai Muncul, Apa Saja?', '<p><strong>KOMPAS.com</strong>&nbsp;- Batuk, demam, napas pendek merupakan tiga gejala virus corona yang sering disebut oleh Organisasi Kesehatan Dunia (WHO).</p>\r\n\r\n<p>Namun, jumlah kasus yang terus meningkat di dunia menyebabkan kemunculan berbagai gejala yang jauh lebih luas.</p>\r\n\r\n<p>Deskripsi lebih rinci dari gejala virus corona menunjukkan bagaiamana dokter dan peneliti masih mempelajari tentang virus itu.</p>\r\n\r\n<p>Covid-19 dapat dimulai dengan cara yang sama di antara pasien tanpa memandang usia atau status kesehatan seseorang.&nbsp;</p>\r\n\r\n<h2>Kelelahan Ekstrem</h2>\r\n\r\n<p><img alt=\"Ilustrasi\" src=\"https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB12wSqU.img?h=500&amp;w=750&amp;m=6&amp;q=60&amp;o=f&amp;l=f\" />&copy; Disediakan oleh Kompas.com&nbsp;Ilustrasi</p>\r\n\r\n<p>Hedy Bauman (74), seorang pria dari Silver Spring, Maryland merasa sangat lemah sehingga ia hampir tak bisa bejalan ke sudut-sudut rumahnya. Menurutnya, membaca beberapa halaman koran cukup melelahkan.</p>\r\n\r\n<p>&quot;Kamar mandi saya mungkin berjarak 15 langkah dari temput tidur. Aku tak yakin bisa pergi dari kamar mandi ke tempat tidur,&quot; kata Bauman, dilansir dari&nbsp;<em>NBC News.</em></p>\r\n\r\n<p>Kendati tidak menderita demam, Bauman mengaku kedinginan.</p>\r\n\r\n<p>Dokter Bauman mengatakan, gejalanya konsisten dengan apa yang dipelajari dokter tentang kasus virus corona lain, meski mereka masih menunggu hasil dari tes virus corona Bauman.</p>\r\n\r\n<p><strong>Nyeri Otot</strong></p>\r\n\r\n<p><img alt=\"Ilustrasi nyeri otot\" src=\"https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB12wOH6.img?h=500&amp;w=750&amp;m=6&amp;q=60&amp;o=f&amp;l=f\" />&copy; Disediakan oleh Kompas.com&nbsp;Ilustrasi nyeri otot</p>\r\n\r\n<p>Brendan McLaughlin (28), seorang penjaga keamanan di Holy Name Medical Center di Teaneck, New Jersey merasakan pusing sebelum demam, kedinginan, dan nyeri otot.</p>\r\n\r\n<p>Ia kemudian pergi ke ruang gawat darurat di rumah sakit tempatnya bekerja dan berpikir mungkin terserang flu.</p>\r\n\r\n<p>Tes virus corona menunjukkan hasil positif. McLaughlin mengaku tak pernah merasa begitu sakit dalam hidupnya.</p>\r\n\r\n<p>&quot;Aku sehat. Aku mencoba makan dengan benar dan menjaga diriku sendiri,&quot; kata McLaughlin.</p>\r\n\r\n<p>Salah satu laporan utama pertama pada gejala virus corona yang diterbitkan WHO pada bulan Februari lalu menunjukkan hampir 56.000 kasus di China memiliki gejala demam dan batuk kering.</p>\r\n\r\n<p>Beberapa di antaranya mengalami kelelahan, napas pendek, masalah perut, dan tubuh lemah. Sejak laporan itu, gejala lain yang terkait dengan Covid-19 telah muncul.</p>\r\n\r\n<p>Banyak pasien yang telah dites positif terkena virus corona juga mengalami sakit kepala dan sakit tenggorokan.</p>\r\n\r\n<p>Beberapa pasien mengatakan mereka tidak memiliki nafsu makan. Banyak yang melaporkan bahwa mereka kehilangan indera pengecap dan penciuman, kata British Rhinological Society baru-baru ini.</p>\r\n\r\n<p>Tetapi juga menjadi lebih jelas bahwa beberapa orang yang terinfeksi dan menyebarkan virus, tidak memiliki gejala sama sekali.</p>\r\n\r\n<h2>Menular sebelum gejala</h2>\r\n\r\n<p><img alt=\"Ilustrasi corona virus (Covid-19)\" src=\"https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB11SL1W.img?h=500&amp;w=750&amp;m=6&amp;q=60&amp;o=f&amp;l=f\" />&copy; Disediakan oleh Kompas.com&nbsp;Ilustrasi corona virus (Covid-19)</p>\r\n\r\n<p>Direktur Pusat Pengendalian dan Pencegahan Penyakit (CDC) Robert Redfield mengatakan kepada NPR bahwa sebanyak seperempat pasien tidak menunjukkan gejala.</p>\r\n\r\n<p>Laporan yang diterbitkan CDC juga menemukan bukti bahwa orang yang terinfeksi dapat menyebarkan virus sebelum mereka menunjukkan gejala, meski jarang terjadi.</p>\r\n\r\n<p>Fenomena ini disebut dengan &quot;penularan presimptomatik&quot; yang juga dikenal sebagai cara penyebaran flu.</p>\r\n\r\n<p>Laporan CDC didasarkan pada 243 kasus virus corona di Singapura. Para peneliti melacak semua individu yang telah melakukan kontak dengan pasien yang menunjukkan gejala sakit.</p>\r\n\r\n<p>Mereka menemukan 6,4 persen dari transmisi dalam penelitian ini berasal dari pasien yang belum menunjukkan gejala.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><strong><img alt=\"\" src=\"https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB12mOTE.img?h=1840&amp;w=799&amp;m=6&amp;q=60&amp;o=f&amp;l=f\" />&copy; Disediakan oleh Kompas.com</strong></strong></p>\r\n\r\n<p><em><small>Sumber :&nbsp;<a href=\"https://www.msn.com/id-id/kesehatan/medis/gejala-baru-virus-corona-mulai-muncul-apa-saja/ar-BB12wRjD?li=AAfupQr&amp;ocid=wispr\">https://www.msn.com/id-id/kesehatan/medis/gejala-baru-virus-corona-mulai-muncul-apa-saja/ar-BB12wRjD?li=AAfupQr&amp;ocid=wispr</a></small></em></p>\r\n', '2020-04-13 06:35:27', 14, 'Kesehatan', 0, 'a3b3edcf1cec8660f3d630ae5358d10b.jpg', 1, 'Yudi Subekti', 0, 'gejala-baru-virus-corona-mulai-muncul,-apa-saja?'),
(38, 'WHO Ungkap Kemungkinan Penyebab Seseorang 2 Kali Positif Corona', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;Temuan kasus positif&nbsp;<a href=\"https://www.detik.com/tag/virus-corona\">virus Corona</a>&nbsp;COVID-19 untuk kedua kalinya makin banyak bermunculan. Organisasi kesehatan dunia WHO baru-baru ini mengungkap kemungkinan penyebabnya.</p>\r\n\r\n<p>Seorang juru bicara WHO mengungkap, seseorang yang mendapatkan hasil positif setelah sebelumnya dinyatakan sembuh dari virus Corona, kemungkinan adalah false positive.</p>\r\n\r\n<p>&quot;Sejauh yang kami tahu, dan ini berdasarkan data terkini, kelihatannya pasien tersebut mengeluarkan sisa material dari paru-paru, sebagai bagian dari fase penyembuhan,&quot; katanya kepada AFP, dikutip dari The Sun.</p>\r\n\r\n<p>Lebih dari 100 orang di&nbsp;<a href=\"https://www.detik.com/tag/korea-selatan\">Korea Selatan</a>&nbsp;dilaporkan kembali mendapat hasil positif dalam pemeriksaan virus Corona, setelah sempat dinyatakan sembuh. WHO maupun negara yang bersangkutan sama-sama menginvestigasi temuan tersebut.</p>\r\n\r\n<p>Temuan pasien yang mendapat hasil positif untuk kedua kalinya dikhawatirkan memicu gelombang kedua wabah Corona. Bila itu terjadi, maka kemungkinan mengakhiri lockdown akan berubah.</p>\r\n\r\n<p>Kemungkinan &#39;reinfeksi&#39; juga bakal mempersulit proses pembuatan&nbsp;<a href=\"https://www.detik.com/tag/vaksin\">vaksin</a>&nbsp;yang manjur. Saat seseorang sembuh dari virus Corona, tubuhnya membentuk antibodi dalam sepekan setelah infeksi. Antibodi tersebut memberi kekebalan, meski tidak jelas betul seberapa kuat dan lama kemampuannya menangkal infeksi.</p>\r\n\r\n<p><small><em>Sumber :&nbsp;<a href=\"https://health.detik.com/berita-detikhealth/d-5006492/who-ungkap-kemungkinan-penyebab-seseorang-2-kali-positif-corona\">https://health.detik.com/berita-detikhealth/d-5006492/who-ungkap-kemungkinan-penyebab-seseorang-2-kali-positif-corona</a></em></small></p>\r\n', '2020-05-08 02:32:48', 14, 'Kesehatan', 1, 'ab147c075a2eef0f51b893753e440920.jpeg', 1, 'Yudi Subekti', 0, 'who-ungkap-kemungkinan-penyebab-seseorang-2-kali-positif-corona'),
(39, 'Periksa Nyeri Punggung Pria Ini Ketahuan Punya 3 Ginjal', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;Seorang pria Brazil datang ke dokter dengan keluhan&nbsp;<a href=\"https://www.detik.com/tag/nyeri-punggung-bawah\">nyeri punggung</a>&nbsp;bawah. Saat diperiksa, pria ini ketahuan punya anatomi yang tidak lazim, ginjalnya ada tiga.</p>\r\n\r\n<p>Pria 38 tahun ini mengeluh nyeri parah di punggung bawah saat tiba di Hospital do Rim in Sao Paulo. Ia pun menjalani CT scan untuk pemeriksaan, menurut laporan di The New Englang Journal of Medicine (NEJM).</p>\r\n\r\n<p>Hasil scan menunjukkan adanya herniated disc alias saraf kejepit, kondisi yang umum terjadi saat tulang belakang bergeser dari posisi normal.</p>\r\n\r\n<p>Namun bukan itu yang bikin para dokter terkejut. Saat mengamati hasil scan, dokter mendapati pria ini memiliki anatomi yang tidak lazim. Ginjalnya bukan dua melainkan tiga. Satu di sebelah kiri, dan dua menyatu di dekat panggul.</p>\r\n\r\n<p>Pria tersebut tidak punya keluhan terkait&nbsp;<a href=\"https://www.detik.com/tag/ginjal\">ginjal</a>&nbsp;dan organ tersebut berfungsi normal.</p>\r\n\r\n<p>Dikutip dari Livescience, punya 3 ginjal merupakan kondisi langka. Kurang dari 100 kasus dilaporkan di seluruh dunia, dan diyakini berhubungan dengan pertumbuhan&nbsp;<a href=\"https://www.detik.com/tag/embrio\">embrio</a>.</p>\r\n\r\n<p><strong><em><small>Sumber :&nbsp;<a href=\"https://health.detik.com/berita-detikhealth/d-5006463/periksa-nyeri-punggung-pria-ini-ketahuan-punya-3-ginjal\">https://health.detik.com/berita-detikhealth/d-5006463/periksa-nyeri-punggung-pria-ini-ketahuan-punya-3-ginjal</a></small></em></strong></p>\r\n', '2020-05-08 02:35:15', 14, 'Kesehatan', 1, '404cf7ab567d16281a45e57d11ba93da.jpg', 1, 'Yudi Subekti', 0, 'periksa-nyeri-punggung-pria-ini-ketahuan-punya-3-ginjal'),
(40, 'Virus Corona Terdeteksi di Cairan Sperma', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;Para ilmuwan di China mendeteksi&nbsp;<a href=\"https://www.detik.com/tag/sars_cov_2\">SARS-CoV-2</a>, virus Corona penyebab COVID-19, di semen atau cairan sperma. Tapi temuan ini tidak serta merta diartikan COVID-19 menular melalui hubungan seks.</p>\r\n\r\n<p>Temuan ini dipublikasikan di jurnal JAMA Network Open, melibatkan 38 pria di Shangqiu yang positif&nbsp;<a href=\"https://www.detik.com/tag/covid_19\">COVID-19</a>, baik yang masih mengalami gejala maupun telah dinyatakan sembuh. Sampel cairan sperma dari para partisipan dianalisis untuk mengetahui keberadaan virus Corona.</p>\r\n\r\n<p>Hasilnya, SARS-CoV-2 ditemukan di sampel milik 6 partisipan, atau 16 persen. Dari keenam partisipan tersebut, empat masih mengalami gejala dan dua lainnya sudah sembuh baru-baru ini.</p>\r\n\r\n<p>Meski demikian, para peneliti memberi catatan bahwa keberadaan virus Corona di cairan sperma tidak serta-merta membuktikan virus ini ditularkan secara seksual.</p>\r\n\r\n<p>&quot;Ini temuan yang menarik, tapi harus dikonfirmasi bahwa ada virus yang menular, bukan gaya produk virus di dalam semen,&quot; kata profesor mikrobiologi dari University of Iowa, Dr Stanley Perlman, yang tidak terlibat dalam penelitian, dikutip dari New York Times.</p>\r\n\r\n<p>Belum bisa dipastikan juga seberapa lama virus Corona akan berada di dalam cairan&nbsp;<a href=\"https://www.detik.com/tag/sperma\">sperma</a>. Virus tersebut ditemukan juga pada sampel sperma dari partisipan yang baru 2-3 hari sebelumnya dinyatakan sembuh dari COVID-19.</p>\r\n\r\n<p><em><small>Sumber :&nbsp;<a href=\"https://health.detik.com/berita-detikhealth/d-5006366/virus-corona-terdeteksi-di-cairan-sperma\">https://health.detik.com/berita-detikhealth/d-5006366/virus-corona-terdeteksi-di-cairan-sperma</a></small></em></p>\r\n', '2020-05-08 03:04:06', 14, 'Kesehatan', 0, 'b3b90fe0d2a7001157e904b12551c433.jpeg', 1, 'Yudi Subekti', 0, 'virus-corona-terdeteksi-di-cairan-sperma'),
(41, 'Uji Klinis Berhasil di AS. Jepang Ikut Gunakan Remdesivir untuk Obati Corona', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;Sebelumnya, uji klinis<a href=\"https://www.detik.com/tag/remdesivir\">&nbsp;remdesivir</a>&nbsp;di Amerika Serikat (AS) dinilai berhasil obati Corona dan mendapat persetujuan dari Food and Drug Administraion (FDA). Pemerintah Jepang pun pada Kamis (7/5/2020) menyetujui remdesivir digunakan sebagai obat Corona di negaranya.</p>\r\n\r\n<p>Hal ini membuat Jepang menjadi negara kedua yang menggunakan remdesivir sebagai obat Corona. &quot;Remdesivir disetujui berdasarkan tindakan luar biasa,&quot; kata seorang pejabat kementerian kesehatan Jepang, dikutip dari Channel News Asia Jumat (8/5/2020).</p>\r\n\r\n<p>&quot;Itu adalah persetujuan pertama negara kami untuk perawatan pasien coronavirus,&quot; kata pejabat itu kepada AFP.</p>\r\n\r\n<p>Perdana Menteri Shinzo Abe mengatakan pekan lalu pemerintah sedang bersiap untuk memberikan &#39;lampu hijau&#39; sesegera mungkin bagi obat eksperimental yang dikembangkan oleh perusahaan AS Gilead Sciences.</p>\r\n\r\n<p>Langkah maju AS datang setelah uji klinis utama menunjukkan remdesivir yang awalnya dikembangkan untuk mengobati Ebola, mempersingkat waktu untuk pemulihan pada beberapa pasien hingga sepertiganya. Remdesivir, yang diberikan melalui suntikan, sudah tersedia untuk beberapa pasien yang terdaftar dalam uji klinis di seluruh dunia.</p>\r\n\r\n<p>Sedangkan untuk&nbsp;<a href=\"https://www.detik.com/tag/avigan\">Avigan</a>, yang dikembangkan oleh perusahaan Jepang Fujifilm Toyama Chemical, Suga mengatakan pemerintah akan menyetujui obat ini jika uji klinis yang melibatkan 100 pasien terbukti efektif. Obat, yang nama generiknya adalah favipiravir, disetujui untuk digunakan di Jepang pada 2014 tetapi hanya pada wabah flu yang tidak ditangani secara efektif oleh obat yang ada.</p>\r\n\r\n<p>Favipiravir tidak tersedia di pasaran dan hanya dapat diproduksi dan didistribusikan atas permintaan pemerintah Jepang.</p>\r\n\r\n<p><em><small>Sumber :&nbsp;<a href=\"https://health.detik.com/berita-detikhealth/d-5006545/uji-klinis-berhasil-di-as-jepang-ikut-gunakan-remdesivir-untuk-obati-corona\">https://health.detik.com/berita-detikhealth/d-5006545/uji-klinis-berhasil-di-as-jepang-ikut-gunakan-remdesivir-untuk-obati-corona</a></small></em></p>\r\n', '2020-05-08 03:07:09', 14, 'Kesehatan', 3, 'bd804a7ce0d765d6cc39f1e256f00826.jpeg', 1, 'Yudi Subekti', 0, 'uji-klinis-berhasil-di-as.-jepang-ikut-gunakan-remdesivir-untuk-obati-corona');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indeks untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indeks untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indeks untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indeks untuk tabel `tbl_kompetensi`
--
ALTER TABLE `tbl_kompetensi`
  ADD PRIMARY KEY (`kompetensi_id`),
  ADD KEY `kompetensi_keahlian_id` (`kompetensi_keahlian_id`);

--
-- Indeks untuk tabel `tbl_komp_keahlian`
--
ALTER TABLE `tbl_komp_keahlian`
  ADD PRIMARY KEY (`komp_keahlian_id`);

--
-- Indeks untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_prestasi`
--
ALTER TABLE `tbl_prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_program_unggulan`
--
ALTER TABLE `tbl_program_unggulan`
  ADD PRIMARY KEY (`id_program`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indeks untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indeks untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_kompetensi`
--
ALTER TABLE `tbl_kompetensi`
  MODIFY `kompetensi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_komp_keahlian`
--
ALTER TABLE `tbl_komp_keahlian`
  MODIFY `komp_keahlian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=953;

--
-- AUTO_INCREMENT untuk tabel `tbl_prestasi`
--
ALTER TABLE `tbl_prestasi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_program_unggulan`
--
ALTER TABLE `tbl_program_unggulan`
  MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
