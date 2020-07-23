-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jul 2020 pada 18.48
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
(45, 19, 'Komeng', 'Sumatera Utara', 'Toba', 'Laguboti', 'Jl. Sisingamangaraja', NULL, '082245684', 1, NULL, NULL),
(46, 22, 'tester', 'sumatera utara', 'toba', 'laguboti', 'IT Del, jl. sisingamangaraja', NULL, '0885554996', 1, NULL, NULL),
(48, 29, 'Adrian', 'sumatera utara', 'toba', 'porsea', 'samping jembatan porsea', NULL, '081291444983', 1, '2020-07-14 04:23:19', NULL);

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

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `id_product`, `id_user`, `jumlah`, `created_at`, `updated_at`) VALUES
(3, 62, 22, 1, NULL, NULL),
(4, 62, 22, 5, NULL, NULL),
(5, 62, 22, 5, NULL, NULL),
(7, 66, 29, 1, '2020-07-14 04:23:41', NULL);

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
(38, 62, 136, 4, 5, 46, '2020-01-01 13:28:39', NULL),
(39, 61, 137, 4, 3, 46, '2020-02-02 13:28:47', NULL),
(40, 58, 138, 4, 2, 46, '2020-01-01 13:28:39', NULL),
(41, 57, 139, 4, 6, 46, '2020-02-02 13:28:47', NULL),
(42, 60, 140, 4, 1, 46, '2020-01-01 13:28:39', NULL),
(43, 63, 141, 4, 4, 46, '2020-02-02 13:28:47', NULL),
(46, 58, 144, 1, 5, 45, '2020-07-14 04:12:07', NULL),
(47, 66, 145, 4, 1, 48, '2020-07-14 04:23:57', NULL);

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
  `nama` varchar(200) DEFAULT NULL,
  `deskripsi` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Beras', 'Mencakup semua jenis produk beras', NULL, NULL),
(2, 'Palawija', 'Mencakup hasil pertanian kacang-kacangan dan umbi-umbian', NULL, NULL),
(3, 'Sayur', 'Mencakup semua jenis sayuran', NULL, NULL),
(4, 'Buah', 'Mencakup semua jenis buah', NULL, NULL),
(5, 'Rempah', 'Mencakup semua jenis rempah', NULL, NULL),
(6, 'Kopi', 'Mencakup semua jenis kopi', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(10) NOT NULL,
  `id_produk` int(10) DEFAULT NULL,
  `id_pengguna` int(10) DEFAULT NULL,
  `komentar` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `id_produk`, `id_pengguna`, `komentar`, `created_at`, `updated_at`) VALUES
(2, 62, 22, 'produk bagus', NULL, NULL),
(3, 66, 29, 'berasnya enak dan berkualitas', NULL, NULL);

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
-- Struktur dari tabel `notif`
--

CREATE TABLE `notif` (
  `id_notif` int(11) NOT NULL,
  `id_penerima` int(11) DEFAULT NULL,
  `isi` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `notif`
--

INSERT INTO `notif` (`id_notif`, `id_penerima`, `isi`, `created_at`, `updated_at`) VALUES
(1, 19, 'Request Toko diterima', '2020-07-23 16:39:04', '2020-07-23 16:39:04'),
(2, 19, 'Pembayaran anda telah diterima', '2020-07-23 16:45:25', '2020-07-23 16:45:25'),
(3, 15, 'Pembayaran anda telah diterima', '2020-07-23 16:45:29', '2020-07-23 16:45:29');

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
  `foto` varchar(255) DEFAULT 'petani.jpg',
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `email`, `password`, `token`, `role`, `nama`, `no_telp`, `foto`, `jenis_kelamin`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin@gmail.com', 'administrator', NULL, 1, NULL, NULL, 'petani.jpg', NULL, NULL, NULL),
(15, 'sonny', 'sonny@gmail.com', 'sonny', NULL, 2, 'Sonny Hutabarat', '025852145', 'tetew.jpg', 'Laki-laki', NULL, NULL),
(19, 'komeng', 'komeng@gmail.com', 'komeng', NULL, 3, 'komeng', '085554668', '22062020100144Times_Educational_Supplement_(masthead_logo).png', NULL, NULL, NULL),
(22, 'tester', 'tester@gmail.com', 'tester', NULL, 2, 'tester', '082264885942', '27062020084439Screenshot_2020-06-24-00-03-39-291_com.instagram.android.jpg', 'Laki-laki', NULL, NULL),
(23, 'test', 'test@gmail.com', 'test', NULL, 2, 'test', '0885249', 'petani.jpg', 'Perempuan', NULL, NULL),
(28, 'ACS98', 'alfredchrisdiantosimanjuntak@gmail.com', 'Asimanjuntak', NULL, 3, 'Alfred', '082168349939', 'petani.jpg', NULL, '2020-07-14 04:13:13', NULL),
(29, 'AdriRS', 'adriansimanjuntak72@gmail.com', 'ARSthunder', NULL, 2, 'Adrian', '081291444983', '14072020162221IMG_20200425_165608.jpg', NULL, '2020-07-14 04:21:47', NULL);

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
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `id_toko`, `gambar`, `nama`, `deskripsi`, `berat`, `harga`, `stok`, `kategori`, `created_at`, `updated_at`, `deleted`) VALUES
(57, 34, 'beras.jpg', 'Beras putih pak Budi', 'Beras hasil kelola sendiri', 10, 110000, 10, 1, '2020-01-01 16:27:26', NULL, 0),
(58, 34, 'kacang.jpg', 'Kacang pak Anto', 'Kacang yang ditanam dengan bibit terbaik', 1, 15000, 15, 2, '2020-02-01 16:27:33', NULL, 0),
(59, 34, 'sayur.jpg', 'Sayur kol pak Andi', 'Sayur fresh yang enak', 1, 20000, 30, 3, '2020-03-01 16:27:39', NULL, 0),
(60, 34, 'mangga.jpg', 'Mangga pak Indra', 'Mangga dari pohon sendiri manis dan harum', 1, 10000, 20, 4, '2020-04-01 16:27:45', NULL, 0),
(61, 34, 'andalima.jpg', 'Andaliman bu Satria', 'Andaliman khas dari tanah batak', 1, 30000, 7, 5, '2020-05-01 16:27:50', NULL, 0),
(62, 34, 'kopi.jpg', 'Kopi ladang pak Surya', 'Kopi dengan aroma khas', 1, 20000, 24, 6, '2020-06-01 16:27:55', NULL, 0),
(63, 35, '2706202008552513-54-44-images.jpg', 'beras putih', 'beras putih yang enak', 1, 12000, 19, 1, '2020-07-01 16:28:00', NULL, 0),
(66, 36, '1407202016190721-16-50-images.jpg', 'beras putih laguboti', 'beras yang ditanam dengan bibit unggulan', 10, 110000, 14, 1, '2020-07-14 04:19:07', NULL, 0);

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
(1, 'admin', NULL, NULL),
(2, 'pembeli', NULL, NULL),
(3, 'penjual', NULL, NULL),
(4, 'menunggu konfirmasi', NULL, NULL);

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
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statustoko`
--

INSERT INTO `statustoko` (`id`, `nama`) VALUES
(1, 'ditolak'),
(2, 'diterima'),
(3, 'menunggu konfirmasi');

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
(1, 'Syarat dan Ketentuan menjadi Pembeli pada Terminal Agro\r\n1.	Penduduk yang berdomisili di Kabupaten Toba (Kecamatan Balige, Laguboti, Sigumpar, Silaen, dan Porsea) dapat membeli produk pertanian yang tersedia pada aplikasi Terminal Agro. Koneksi internet diperlukan untuk dapat menggunakan aplikasi.\r\n2.	Anda harus menyelesaikan/membayar pesanan sebelum batas waktu pemesanan yaitu pukul 21.00 WIB. Anda dapat membatalkan, memodifikasi, atau menambah pesanan sebelum proses checkout.\r\n3.	Sistem pembayaran yang dilakukan secara transfer harus dilakukan dalam Rupiah dengan instruksi pembayaran yang akan Terminal Agro beritahukan.\r\n4.	Ketika pembayaran telah dilakukan, Anda tidak dapat mengubah atau membatalkan produk yang telah dibeli dengan alas an apapun.\r\n5.	Pesanan Anda akan dikirim sampai ke tujuan dengan tambahan biaya pengiriman. Pesanan diantarkan sesuai dengan alamat yang Anda cantumkan pada aplikasi saat melakukan proses check out.\r\n6.	Waktu pengiriman disesuaikan berdasarkan layanan kami. Saat proses pengiriman diwajibkan ada orang yang bisa menerima pesanan tersebut. Kami (kurir Terminal Agro) akan melakukan komunikasi dengan Anda sebelum proses pengiriman pesanan.\r\n7.	Apabila setelah 1x24 jam tidak ada konfirmasi dari pembeli. Barang yang tidak diterima oleh pembeli pada waktu yang telah ditentukan akan dianggap telah diterima.\r\n8.	Jika mengalami masalah terkait pesanan, produk, atau akses ke akun Terminal Agro Anda, segera hubungi kami melalui layanan pelanggan di julianasiahaan16@gmail.com atau WA 081370120930.\r\n9.	Kami akan mencoba untuk memenuhi setiap pesanan. Namun, mengingat sifat produk pertanian yang kurang stabil, dari waktu ke waktu produk tertentu mungkin menjadi tidak tersedia atau mungkin tidak memenuhi standar kualitas kami. Jika hal ini terjadi, kami akan segera melakukan segala upaya untuk menghubungi Anda dan tidak akan dikenakan biaya untuk produk yang tidak tersedia.\r\n10.	Kami berhak untuk mengubah produk, harga, dan ketentuan pengiriman setiap saat. Terminal Agro akan melakukan segala upaya untuk menghubungi Anda atas setiap perubahan, dan berupaya untuk memberikan alternatif yang terbaik.\r\n11.	Anda bertanggung jawab atas akses sah maupun tidak sah ke akun Terminal Agro Anda. Anda setuju untuk segera menginformasikan kepada kami dari setiap penggunaan akun yang tidak sah. Anda bertanggung jawab atas semua penggunaan tersebut hingga Anda menginformasikannya kepada kami.\r\n12.	Anda setuju untuk mengikuti Syarat dan Ketentuan, Kebijakan Privasi Terminal Agro, serta hal-hal yang mengatur penggunaan aplikasi Terminal Agro.\r\n13.	Kami berhak untuk memperbarui Syarat dan Ketentuan dan Kebijakan Privasi pengguna Terminal Agro. Jika terjadi perubahan material yang memengaruhi keanggotaan Anda, Anda akan diberitahu melalui email yang telah terdaftar di layanan kami. Setiap pembaruan atau update yang telah diposting ke aplikasi, atau email ke Anda secara otomatis akan bersifat mengikat. \r\n\r\n\r\nSyarat dan Ketentuan menjadi Penjual pada Terminal Agro\r\n\r\n1.	Penduduk yang berdomisili di Kabupaten Toba (Kecamatan Balige, Laguboti, Sigumpar, Silaen, dan Porsea) dapat menjual produk pertanian pada aplikasi Terminal Agro. Koneksi internet diperlukan untuk dapat menggunakan aplikasi.\r\n2.	Setiap produk dan toko penjual akan dimonitor oleh pengelola Terminal Agro.\r\n3.	Adanya pesanan akan disampaikan pada malam hari (setelah pukul 21:00 WIB) oleh pengelola Terminal Agro. Penjual harus sudah menyelesaikan pesanan tersebut ketika petugas Terminal Agro datang menjemput pesanan untuk didistribusikan kepada pembeli.\r\n4.	Pengemasan produk dilakukan oleh petani sesuai standar pengemasan untuk produk yang dipesan.\r\n5.	Pencairan pendapatan dapat dilakukan setelah pesanan diterima oleh pembeli. Anda dapat menghubungi pengelola Terminal Agro dan melakukan permintaan pencairan.\r\n6.	Penjual harus memiliki sikap jujur, mampu bekerjasama, serta berkeinginan kuat untuk turut memajukan pertanian di Kabupaten Toba.\r\n7.	Jika mengalami masalah terkait pesanan, produk, atau akses ke akun Terminal Agro Anda, segera hubungi kami melalui layanan pelanggan di julianasiahaan16@gmail.com atau WA 081370120930.\r\n8.	Anda bertanggung jawab atas akses sah maupun tidak sah ke akun Terminal Agro Anda. Anda setuju untuk segera menginformasikan kepada kami dari setiap penggunaan akun yang tidak sah. Anda bertanggung jawab atas semua penggunaan tersebut hingga Anda menginformasikannya kepada kami.\r\n9.	Anda setuju untuk mengikuti Syarat dan Ketentuan Terminal Agro, serta hal-hal yang mengatur penggunaan aplikasi Terminal Agro.\r\n10.	Kami berhak untuk memperbarui Syarat dan Ketentuan dan Kebijakan Privasi pengguna Terminal Agro. Jika terjadi perubahan material yang memengaruhi keanggotaan Anda, Anda akan diberitahu melalui email yang telah terdaftar di layanan kami. Setiap pembaruan atau update yang telah diposting ke aplikasi, atau email ke Anda secara otomatis akan bersifat mengikat.\r\n11.	Terminal Agro berhak mengumpulkan dan memproses informasi pribadi Anda, seperti nama lengkap, e-mail, nomor telepon seluler, dan kartu identitas (KTP: Kartu Tanda Penduduk) Anda ketika Anda mendaftarkan toko.\r\n12.	Terminal Agro berhak menolak pendaftaran apabila Anda tidak memberikan informasi pribadi yang diminta dengan lengkap dan tidak memberikan persetujuan terhadap Syarat dan Ketentuan ini yang tercantum dalam Aplikasi. \r\n13.	Anda menjamin bahwa Anda memberikan informasi yang akurat dan lengkap dan setuju untuk memberikan kepada Terminal Agro bukti identitas apapun yang secara wajar dapat Terminal Agro mintakan. Jika informasi pribadi yang Anda berikan kepada Terminal Agro ada yang berubah, misalnya, jika Anda mengubah alamat e-mail, nomor telepon, atau jika Anda ingin membatalkan akun Anda, mohon perbaharui rincian informasi Anda pada profil Anda.\r\n14.	Anda harus memberikan kepada Terminal Agro informasi yang akurat dan lengkap mengenai jenis, spesifikasi, kuantitas dan/atau setiap karakteristik khusus dari produk yang dipesan dan dibeli.', '2020-03-31 15:53:52', '2020-06-30 06:30:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id` int(10) NOT NULL,
  `gambar` varchar(500) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `jalan` varchar(100) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `deskripsi` varchar(500) DEFAULT NULL,
  `ktp` varchar(255) DEFAULT NULL,
  `ktpSelfie` varchar(255) DEFAULT NULL,
  `status_toko` int(10) DEFAULT 3,
  `id_pengguna` int(10) DEFAULT NULL,
  `no_rek` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id`, `gambar`, `nama`, `kecamatan`, `jalan`, `no_telp`, `deskripsi`, `ktp`, `ktpSelfie`, `status_toko`, `id_pengguna`, `no_rek`, `created_at`, `updated_at`) VALUES
(34, '27062020082105download(1).jpg', 'Petani Mandiri', 'Balige', 'Samping gereja HKBP, Jl. Bersama', '6281291444983', 'Grup Tani yang menyediakan segala jenis kebutuhan', '27062020082105Times_Educational_Supplement_(masthead_logo).png', '27062020082105download.jpg', 2, 19, '211556845262', NULL, '2020-07-23 16:32:18'),
(35, '27062020084618Screenshot_2020-05-08-15-56-28-911_lockscreen.jpg', 'toko bersama', 'balige', 'resto & hotel', '082168349939', 'semua produk pertanian', '27062020084618Screenshot_2020-06-27-13-44-13-979_com.example.terminalagro.jpg', '27062020084618Screenshot_2020-06-27-13-44-08-213_com.example.terminalagro.jpg', 2, 22, '085222549', NULL, NULL),
(36, '14072020161511Screenshot_2020-07-03-12-49-04-410_lockscreen.jpg', 'petani makmur', 'Laguboti', 'IT Del, jl.sisingamangaraja', '62082168349939', 'produk dijual oleh petani lokal', '14072020161511IMG_20200714_204717.jpg', '14072020161511IMG_20200714_204750.jpg', 2, 28, '228788894289', '2020-07-14 04:15:11', '2020-07-14 16:26:40');

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
(136, 22, 105000, 2, '27062020090324Screenshot_2020-06-27-14-01-02-741_com.example.terminalagro.jpg', '2020-01-01 16:29:17', NULL),
(137, 22, 95000, 2, '27062020093314Screenshot_2020-06-27-14-32-41-926_com.example.terminalagro.jpg', '2020-02-01 16:29:23', NULL),
(138, 22, 105000, 2, '27062020090324Screenshot_2020-06-27-14-01-02-741_com.example.terminalagro.jpg', '2020-01-01 16:29:17', NULL),
(139, 22, 95000, 2, '27062020093314Screenshot_2020-06-27-14-32-41-926_com.example.terminalagro.jpg', '2020-02-01 16:29:23', NULL),
(140, 22, 105000, 2, '27062020090324Screenshot_2020-06-27-14-01-02-741_com.example.terminalagro.jpg', '2020-01-01 16:29:17', NULL),
(141, 22, 95000, 2, '27062020093314Screenshot_2020-06-27-14-32-41-926_com.example.terminalagro.jpg', '2020-02-01 16:29:23', NULL),
(142, 15, 17000, 2, '14072020162422Screenshot_2020-07-14-20-45-42-493_com.miui.gallery.jpg', '2020-07-14 03:43:30', '2020-07-23 16:45:29'),
(144, 19, 80000, 2, '14072020162422Screenshot_2020-07-14-20-45-42-493_com.miui.gallery.jpg', '2020-07-14 04:12:07', '2020-07-23 16:45:25'),
(145, 29, 115000, 2, '14072020162422Screenshot_2020-07-14-20-45-42-493_com.miui.gallery.jpg', '2020-07-14 04:23:57', '2020-07-14 16:26:55');

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
(1, 'Sonny Hutabarat', 'admin@admin.com', NULL, '$2y$10$Z8Yp3zw0M05RP.w6/5jVA.YB0gRmqEJCt24rrvpm39EpqbQ3tRcSa', 'QNUkkaP3zICkv503SjItRSNCGh0I6yS1KAw5lv9gEY9OgzBweridCqVxx2uL', '2020-02-05 06:20:36', '2020-07-14 07:12:48', '1682370021.PNG', 'Jl.Tembakau Raya No.81 Medan', '081291444987', 'Laki-Laki');

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
-- Indeks untuk tabel `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`id_notif`),
  ADD KEY `FK_notif` (`id_penerima`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_pengguna_role` (`role`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_produk` (`id_toko`),
  ADD KEY `FK_produk_kategori` (`kategori`);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `datapengguna`
--
ALTER TABLE `datapengguna`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `detailtransaksi`
--
ALTER TABLE `detailtransaksi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `notif`
--
ALTER TABLE `notif`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

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
-- Ketidakleluasaan untuk tabel `notif`
--
ALTER TABLE `notif`
  ADD CONSTRAINT `FK_notif` FOREIGN KEY (`id_penerima`) REFERENCES `pengguna` (`id`);

--
-- Ketidakleluasaan untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `FK_pengguna_role` FOREIGN KEY (`role`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `FK_produk` FOREIGN KEY (`id_toko`) REFERENCES `toko` (`id`),
  ADD CONSTRAINT `FK_produk_kategori` FOREIGN KEY (`kategori`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
