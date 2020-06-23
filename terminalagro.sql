-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jun 2020 pada 03.50
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `terminalagro`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alamat`
--

CREATE TABLE `alamat` (
  `id` int(10) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `kabupaten` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `jalan` varchar(100) DEFAULT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alamat`
--

INSERT INTO `alamat` (`id`, `id_user`, `nama`, `provinsi`, `kabupaten`, `kecamatan`, `jalan`, `kode_pos`, `no_telp`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 'yona', 'sumut', 'simalungun', 'bandar', 'kerasaan', NULL, '08121314', 0, NULL, NULL),
(2, 7, 'yona', 'sumut', 'simalungun', 'bandar', 'P. Kerasaan', NULL, '08524789', 1, NULL, NULL),
(21, 9, 'tes', NULL, 'tes', 'tes', 'tes', NULL, '025028652', 0, NULL, NULL),
(22, 9, 'tes', 'tes', 'tes', 'tes', 'tes', NULL, '025028652', 0, NULL, NULL),
(31, 9, 'tes', 'tes', 'tes', 'tes', 'tes', NULL, '025028652', 0, NULL, NULL),
(38, 9, 'cek', 'cek', 'cek', 'cek', 'cek', NULL, '2323', 0, NULL, NULL),
(40, 9, 'Andreas', 'Sumatera Utara', 'Toba', 'Laguboti', 'Sisingamangaraja', NULL, '0749529856', 1, NULL, NULL),
(41, 10, 'Budi', 'Sumatera Utara', 'Toba', 'Sitoluama', 'Jl. Sisingamangaraja', NULL, '08566315', 1, NULL, NULL),
(42, 15, 'sonny', 'Sumatera Utara', 'Toba', 'Laguboti', 'Jl. Sisingamangaraja', NULL, '0856632358', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `id_product` int(10) DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapengguna`
--

CREATE TABLE `datapengguna` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `id_role` int(10) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `datapengguna`
--

INSERT INTO `datapengguna` (`id`, `nama`, `no_telp`, `jenis_kelamin`, `foto`, `id_user`, `id_role`) VALUES
(2, NULL, NULL, NULL, NULL, 2, 2),
(3, NULL, NULL, NULL, NULL, 3, 1),
(4, NULL, NULL, NULL, NULL, 4, 1),
(5, NULL, NULL, NULL, NULL, 5, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailtransaksi`
--

CREATE TABLE `detailtransaksi` (
  `id` int(10) NOT NULL,
  `id_product` int(10) DEFAULT NULL,
  `id_transaksi` int(10) DEFAULT NULL,
  `status_pengiriman` int(10) DEFAULT 1,
  `jumlah` int(10) DEFAULT NULL,
  `alamat` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detailtransaksi`
--

INSERT INTO `detailtransaksi` (`id`, `id_product`, `id_transaksi`, `status_pengiriman`, `jumlah`, `alamat`, `created_at`, `updated_at`) VALUES
(6, 22, 96, 1, 10, 42, NULL, NULL),
(7, 48, 97, 1, 5, 42, NULL, NULL),
(8, 46, 98, 1, 3, 42, NULL, NULL),
(9, 47, 99, 1, 5, 42, NULL, NULL),
(10, 32, 100, 1, 1, 42, NULL, NULL),
(11, 32, 101, 1, 1, 42, NULL, NULL),
(12, 47, 102, 1, 1, 42, NULL, NULL),
(13, 47, 103, 1, 1, 42, NULL, NULL),
(14, 48, 104, 1, 1, 42, NULL, NULL),
(15, 48, 105, 1, 1, 42, NULL, NULL),
(16, 48, 106, 1, 1, 42, NULL, NULL),
(17, 48, 107, 1, 1, 42, NULL, NULL),
(18, 48, 108, 1, 1, 42, NULL, NULL),
(19, 48, 109, 1, 1, 42, NULL, NULL),
(20, 48, 110, 1, 1, 42, NULL, NULL),
(21, 48, 111, 1, 1, 42, NULL, NULL),
(22, 48, 112, 1, 3, 42, NULL, NULL),
(23, 48, 113, 1, 2, 42, NULL, NULL),
(24, 48, 114, 1, 3, 42, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(3, 'Kategori 30', '2020-04-01 13:42:19', '2020-05-28 19:06:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(10) NOT NULL,
  `id_produk` int(10) DEFAULT NULL,
  `id_pengguna` int(10) DEFAULT NULL,
  `komentar` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `role` int(10) DEFAULT 2,
  `nama` varchar(100) DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `email`, `password`, `token`, `role`, `nama`, `no_telp`, `foto`, `jenis_kelamin`, `created_at`, `updated_at`) VALUES
(1, 'Dimateo', 'admin@gmail.com', 'administrator', NULL, 1, 'Dimateo', '081291333894', 'uploads/petani.jpg', NULL, NULL, NULL),
(2, 'ACS', 'ACS', 'ACS', NULL, 3, NULL, NULL, 'uploads/petani.jpg', NULL, NULL, NULL),
(3, 'TA', 'TA@gmail.com', 'TerminalAgro', NULL, 2, NULL, NULL, 'uploads/petani.jpg', NULL, NULL, NULL),
(4, 'user@gmail.com', 'usr1', 'user1234', NULL, 2, 'ACS', '0852', 'uploads/petani.jpg', NULL, NULL, NULL),
(5, 'Terminal', 'Tagro@gmail.com', 'Tagro', NULL, 2, NULL, NULL, 'uploads/petani.jpg', NULL, NULL, NULL),
(6, NULL, 'alfredsimanjuntak@gmail.com', 'ACS1998', NULL, 4, NULL, NULL, 'uploads/petani.jpg', NULL, NULL, NULL),
(7, 'ygos', 'yona@gmail.com', 'yona', NULL, 4, 'yona', '08387277', 'uploads/petani.jpg', NULL, NULL, NULL),
(8, 'pepe', 'p@gmail.com', 'pepe', NULL, 3, 'pepe nezario', '899565', 'uploads/petani.jpg', NULL, NULL, NULL),
(9, 'usertry', 'user@gmail.com', 'user', NULL, 4, 'coba coba lagi', '025028652', 'uploads/petani.jpg', NULL, NULL, NULL),
(10, 'user2', 'user2@gmail.com', 'user', NULL, 3, 'user kedua', '0258852', 'uploads/petani.jpg', NULL, NULL, NULL),
(11, 'user3', 'user3@gmail.com', 'user', NULL, 4, 'user ketiga', '085446224', 'uploads/petani.jpg', NULL, NULL, NULL),
(15, 'sonny', 'sonny@gmail.com', 'sonny', NULL, 3, 'Sonny Hutabarat', '025852145', 'uploads/20062020download.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(10) NOT NULL,
  `id_toko` int(10) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(200) DEFAULT NULL,
  `berat` int(10) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `stok` int(10) DEFAULT NULL,
  `kategori` int(10) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `id_toko`, `gambar`, `nama`, `deskripsi`, `berat`, `harga`, `stok`, `kategori`, `created_at`, `updated_at`) VALUES
(1, 17, 'uploads/04062020Untitled.png', 'Sayur Maknyus', 'sayur lezat sekali', 1, 5000, 30, 1, NULL, NULL),
(2, 17, 'uploads/04062020Untitled.png', 'Beras Mantap', 'Beras enak buaget', 10, 100000, 10, 3, NULL, NULL),
(4, 9, 'uploads/04062020Untitled.png', 'Bawang Merah', 'bawang', 1, 5000, 30, 4, NULL, NULL),
(18, 9, 'uploads/04062020Untitled.png', 'Sayur hijau segarrr', 'Sayur dengan bibit pilihan, nomor 1 dipasaran sangat segar karena baru dipetik', 1, 10000, 20, 1, NULL, NULL),
(20, 9, 'uploads/04062020Untitled.png', 'tes', 'tes', 1, 10000, 10, 1, NULL, NULL),
(21, 9, 'uploads/04062020Untitled.png', 'sayur asam', 'enak', 1, 10000, 10, 1, NULL, NULL),
(22, 9, 'uploads/04062020Untitled.png', 'tes', 'tes produk', 10, 10000, 200, 1, NULL, NULL),
(23, 9, 'uploads/04062020Untitled.png', 'sayur pahit', 'enak sekali', 1, 10000, 10, 1, NULL, NULL),
(24, 9, 'uploads/04062020Untitled.png', 'sayur', 'enak', 1, 10000, 10, 1, NULL, NULL),
(25, 9, 'uploads/04062020Untitled.png', 'sayur', 'enak', 1, 10000, 10, 1, NULL, NULL),
(27, 21, 'uploads/04062020Untitled.png', '0258525', 'enak dong', 5, 25000, 55, 1, NULL, NULL),
(28, 21, 'uploads/04062020Untitled.png', 'sayur', 'test', 23, 2500, 30, 1, NULL, NULL),
(32, 21, 'uploads/04062020Untitled.png', '0258525', 'enak dong', 5, 25000, 20, 1, NULL, NULL),
(46, 21, 'uploads/04062020Untitled.png', '0258525', 'enak dong', 5, 25000, 20, 1, NULL, NULL),
(47, 21, 'uploads/20062020Untitled.png', 'tes API', 'enak dong', 5, 25000, 20, 1, NULL, NULL),
(48, 28, 'uploads/20062020download.jpg', 'tes andro', 'hanya tes aja jangan serius amat', 1, 20000, 20, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `refrensibank`
--

CREATE TABLE `refrensibank` (
  `id` int(10) NOT NULL,
  `namabank` varchar(100) NOT NULL,
  `nomorrefrensi` int(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `refrensibank`
--

INSERT INTO `refrensibank` (`id`, `namabank`, `nomorrefrensi`, `created_at`, `updated_at`) VALUES
(2, 'Bank BRI', 123456, '2020-04-02 09:22:47', '2020-06-07 13:27:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(2) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Pembeli', NULL, NULL),
(3, 'Penjual', NULL, NULL),
(4, 'Menunggu Konfirmasi', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `statuspengiriman`
--

CREATE TABLE `statuspengiriman` (
  `id` int(10) NOT NULL,
  `status_pengiriman` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statuspengiriman`
--

INSERT INTO `statuspengiriman` (`id`, `status_pengiriman`, `created_at`, `updated_at`) VALUES
(1, 'belum dikirim', NULL, NULL),
(2, 'dalam pengiriman', NULL, NULL),
(3, 'barang sampai', NULL, NULL),
(4, 'selesai', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `statustoko`
--

CREATE TABLE `statustoko` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statustoko`
--

INSERT INTO `statustoko` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Ditolak', '2020-06-22 01:10:33', '2020-06-22 01:10:33'),
(2, 'Diterima', '2020-06-22 01:10:43', '2020-06-22 01:10:43'),
(3, 'Menunggu', '2020-06-22 01:10:53', '2020-06-22 01:10:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statustransaksi`
--

CREATE TABLE `statustransaksi` (
  `id` int(10) NOT NULL,
  `status_transaksi` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statustransaksi`
--

INSERT INTO `statustransaksi` (`id`, `status_transaksi`, `created_at`, `updated_at`) VALUES
(1, 'menunggu pembayaran', NULL, NULL),
(2, 'sudah dibayar', NULL, NULL),
(3, 'menunggu konfirmasi', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `syaratketentuan`
--

CREATE TABLE `syaratketentuan` (
  `id` int(10) NOT NULL,
  `syaratketentuan` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `syaratketentuan`
--

INSERT INTO `syaratketentuan` (`id`, `syaratketentuan`, `created_at`, `updated_at`) VALUES
(1, 'Halo....Anda menyatakan dan menjamin bahwa Anda adalah individu yang secara hukum berhak untuk mengadakan perjanjian yang mengikat berdasarkan hukum Negara Republik Indonesia dan bahwa Anda telah berusia minimal 21 tahun atau sudah menikah dan tidak berada di bawah perwalian. Jika tidak, Terminal Agro berhak berdasarkan hukum untuk membatalkan perjanjian yang dibuat dengan Anda. Anda selanjutnya menyatakan dan menjamin bahwa Anda memiliki hak, wewenang dan kapasitas untuk menggunakan Aplikasi Anda dan juga menyatakan dan menjamin bahwa Anda berwenang untuk mengadakan dan mengikatkan diri pada Ketentuan Penggunaan ini dan melakukan tindakan-tindakan yang dipersyaratkan dalam Aplikasi.\r\n\r\nTerminal Agro berhak mengumpulkan dan memproses informasi pribadi Anda, seperti nama lengkap, e-mail, dan nomor telepon seluler Anda ketika Anda mendaftar dan menolak pendaftaran apabila Anda tidak memberikan informasi pribadi yang diminta dengan lengkap dan tidak memberikan persetujuan terhadap Ketentuan Penggunaan ini, syarat dan ketentuan, dan kebijakan privasi yang tercantum dalam Aplikasi. Anda menjamin bahwa Anda memberikan informasi yang akurat dan lengkap dan setuju untuk memberikan kepada Terminal Agro bukti identitas apapun yang secara wajar dapat Terminal Agro mintakan. Jika informasi pribadi yang Anda berikan kepada Terminal Agro ada yang berubah, misalnya, jika Anda mengubah alamat surel, nomor telepon, atau jika Anda ingin membatalkan akun Anda, mohon perbaharui rincian informasi Anda dengan mengirimkan permintaan Anda kepada Terminal Agro. Terminal Agro akan memberlakukan perubahan yang diminta tersebut setelah Anda mengikuti instruksi yang dipersyaratkan agar dapat mengubah data pribadi Anda.\r\n\r\nE-mail yang sudah terdaftar dalam Aplikasi tidak dapat dipergunakan untuk membuat akun baru.\r\n\r\nAnda harus mengikuti instruksi-instruksi yang diarahkan dalam Aplikasi agar dapat berhasil mendaftarkan diri, Aplikasi akan memberikan Anda suatu akun pribadi dengan kata sandi yang Anda tentukan sendiri agar Anda dapat menggunakan Aplikasi.\r\n\r\nAnda harus menjaga keamanan dan kerahasiaan data yang berkaitan dengan akun Anda pada Aplikasi. Dalam hal terjadi pengungkapan data yang berkaitan dengan akun Anda yang mengakibatkan setiap penggunaan yang tidak sah atau tanpa kewenangan atas akun atau identitas Anda, Anda wajib memberitahu Terminal Agro mengenai hal ini agar Terminal Agro dapat membatalkan akun Anda atau melakukan tindakan lainnya yang dapat dilakukan dan diperlukan untuk dilakukan, jika tidak, segala tindakan penggunaan Aplikasi akan dianggap sebagai tindakan yang sah dan Anda bertanggung jawab atas dampak hukum yang timbul selama tindakan tersebut belum dilaporkan kepada Terminal Agro.', '2020-03-31 15:53:52', '2020-06-04 05:47:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id` int(10) NOT NULL,
  `gambar` varchar(500) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `deskripsi` varchar(500) DEFAULT NULL,
  `ktp` varchar(255) DEFAULT NULL,
  `ktpSelfie` varchar(255) DEFAULT NULL,
  `status_toko` int(10) DEFAULT NULL,
  `id_pengguna` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id`, `gambar`, `nama`, `alamat`, `no_telp`, `deskripsi`, `ktp`, `ktpSelfie`, `status_toko`, `id_pengguna`, `created_at`, `updated_at`) VALUES
(9, NULL, 'Toko 7', 'tes', '082168349939', 'tes', NULL, NULL, 3, 7, NULL, '2020-06-22 04:03:23'),
(17, NULL, 'Toko 5', 'Balige', '082168349939', 'semua bisa dibeli', NULL, NULL, 1, 5, NULL, '2020-06-22 04:51:51'),
(21, NULL, 'Toko 9', 'ting', '082168349939', 'ting', NULL, NULL, 3, 9, NULL, '2020-06-22 04:03:49'),
(28, NULL, 'Toko 15', 'Balige', '082168349939', 'produk terbaik dengan bibit spesial', NULL, NULL, 2, 15, NULL, '2020-06-22 04:51:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_pengguna` int(11) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `status_transaksi` int(10) DEFAULT 1,
  `foto` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_pengguna`, `total`, `status_transaksi`, `foto`, `created_at`, `updated_at`) VALUES
(96, 15, 10, 2, 'uploads/21062020044129Untitled.png', NULL, NULL),
(97, 15, 105000, 3, 'uploads/21062020044219download.jpg', NULL, NULL),
(98, 15, 80000, 1, NULL, NULL, NULL),
(99, 15, 130000, 1, NULL, NULL, NULL),
(100, 15, 30000, 1, NULL, NULL, NULL),
(101, 15, 30000, 1, NULL, NULL, NULL),
(102, 15, 30000, 1, NULL, NULL, NULL),
(103, 15, 30000, 1, NULL, NULL, NULL),
(104, 15, 25000, 1, NULL, NULL, NULL),
(105, 15, 25000, 1, NULL, NULL, NULL),
(106, 15, 25000, 1, NULL, NULL, NULL),
(107, 15, 25000, 1, NULL, NULL, NULL),
(108, 15, 25000, 1, NULL, NULL, NULL),
(109, 15, 25000, 1, NULL, NULL, NULL),
(110, 15, 25000, 1, NULL, NULL, NULL),
(111, 15, 25000, 1, NULL, NULL, NULL),
(112, 15, 65000, 1, NULL, NULL, NULL),
(113, 15, 45000, 1, NULL, NULL, NULL),
(114, 15, 65000, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `gambar`, `alamat`, `no_telp`, `jenis_kelamin`) VALUES
(1, 'Sonny Hutabarat', 'admin@admin.com', NULL, '$2y$10$Z8Yp3zw0M05RP.w6/5jVA.YB0gRmqEJCt24rrvpm39EpqbQ3tRcSa', 'G6GLzEeOGQZPB78N5Yjpz2C8MszIuFz5uXG3fJF1XM8bzbXEO0WSzE0GjwLY', '2020-02-05 06:20:36', '2020-06-19 05:50:28', '275594138.jpg', 'Jl.Tembakau Raya No.81 Medan', '081291444987', 'Laki-Laki');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alamat`
--
ALTER TABLE `alamat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_alamat` (`id_user`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cart` (`id_user`),
  ADD KEY `FK_cart_product` (`id_product`);

--
-- Indeks untuk tabel `datapengguna`
--
ALTER TABLE `datapengguna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_dataPengguna` (`id_user`),
  ADD KEY `FK_PenggunaRole` (`id_role`);

--
-- Indeks untuk tabel `detailtransaksi`
--
ALTER TABLE `detailtransaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_detailtransaksi` (`id_product`),
  ADD KEY `FK_detailtransaksi_id` (`id_transaksi`),
  ADD KEY `FK_pengirimanbarang` (`status_pengiriman`),
  ADD KEY `FK_produkaddress` (`alamat`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_komentar_produk` (`id_produk`),
  ADD KEY `FK_komentar_user` (`id_pengguna`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_pengguna` (`role`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_produk` (`id_toko`);

--
-- Indeks untuk tabel `refrensibank`
--
ALTER TABLE `refrensibank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `statuspengiriman`
--
ALTER TABLE `statuspengiriman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `statustoko`
--
ALTER TABLE `statustoko`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `statustransaksi`
--
ALTER TABLE `statustransaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `syaratketentuan`
--
ALTER TABLE `syaratketentuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Toko` (`id_pengguna`),
  ADD KEY `FK_TokoStatus` (`status_toko`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_transaksi` (`id_pengguna`),
  ADD KEY `FK_transaksi_status` (`status_transaksi`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alamat`
--
ALTER TABLE `alamat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `datapengguna`
--
ALTER TABLE `datapengguna`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `detailtransaksi`
--
ALTER TABLE `detailtransaksi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `refrensibank`
--
ALTER TABLE `refrensibank`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `statuspengiriman`
--
ALTER TABLE `statuspengiriman`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `statustoko`
--
ALTER TABLE `statustoko`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `statustransaksi`
--
ALTER TABLE `statustransaksi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `syaratketentuan`
--
ALTER TABLE `syaratketentuan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `alamat`
--
ALTER TABLE `alamat`
  ADD CONSTRAINT `FK_alamat` FOREIGN KEY (`id_user`) REFERENCES `pengguna` (`id`);

--
-- Ketidakleluasaan untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_cart` FOREIGN KEY (`id_user`) REFERENCES `pengguna` (`id`),
  ADD CONSTRAINT `FK_cart_product` FOREIGN KEY (`id_product`) REFERENCES `produk` (`id`);

--
-- Ketidakleluasaan untuk tabel `datapengguna`
--
ALTER TABLE `datapengguna`
  ADD CONSTRAINT `FK_PenggunaRole` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_dataPengguna` FOREIGN KEY (`id_user`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detailtransaksi`
--
ALTER TABLE `detailtransaksi`
  ADD CONSTRAINT `FK_detailtransaksi` FOREIGN KEY (`id_product`) REFERENCES `produk` (`id`),
  ADD CONSTRAINT `FK_detailtransaksi_id` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id`),
  ADD CONSTRAINT `FK_pengirimanbarang` FOREIGN KEY (`status_pengiriman`) REFERENCES `statuspengiriman` (`id`),
  ADD CONSTRAINT `FK_produkaddress` FOREIGN KEY (`alamat`) REFERENCES `alamat` (`id`);

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `FK_komentar_produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`),
  ADD CONSTRAINT `FK_komentar_user` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id`);

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `FK_produk` FOREIGN KEY (`id_toko`) REFERENCES `toko` (`id`);

--
-- Ketidakleluasaan untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD CONSTRAINT `FK_Toko` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id`),
  ADD CONSTRAINT `FK_TokoStatus` FOREIGN KEY (`status_toko`) REFERENCES `statustoko` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `FK_transaksi` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id`),
  ADD CONSTRAINT `FK_transaksi_status` FOREIGN KEY (`status_transaksi`) REFERENCES `statustransaksi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
