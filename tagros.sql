/*
SQLyog Enterprise Trial - MySQL GUI v7.11 
MySQL - 5.5.5-10.4.6-MariaDB : Database - terminalagro
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`terminalagro` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `terminalagro`;

/*Table structure for table `alamat` */

DROP TABLE IF EXISTS `alamat`;

CREATE TABLE `alamat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
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
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_alamat` (`id_user`),
  CONSTRAINT `FK_alamat` FOREIGN KEY (`id_user`) REFERENCES `pengguna` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Data for the table `alamat` */

insert  into `alamat`(`id`,`id_user`,`nama`,`provinsi`,`kabupaten`,`kecamatan`,`jalan`,`kode_pos`,`no_telp`,`status`,`created_at`,`updated_at`) values (1,7,'yona','sumut','simalungun','bandar','kerasaan',NULL,'08121314',0,NULL,NULL);
insert  into `alamat`(`id`,`id_user`,`nama`,`provinsi`,`kabupaten`,`kecamatan`,`jalan`,`kode_pos`,`no_telp`,`status`,`created_at`,`updated_at`) values (2,7,'yona','sumut','simalungun','bandar','P. Kerasaan',NULL,'08524789',1,NULL,NULL);
insert  into `alamat`(`id`,`id_user`,`nama`,`provinsi`,`kabupaten`,`kecamatan`,`jalan`,`kode_pos`,`no_telp`,`status`,`created_at`,`updated_at`) values (21,9,'tes',NULL,'tes','tes','tes',NULL,'025028652',0,NULL,NULL);
insert  into `alamat`(`id`,`id_user`,`nama`,`provinsi`,`kabupaten`,`kecamatan`,`jalan`,`kode_pos`,`no_telp`,`status`,`created_at`,`updated_at`) values (22,9,'tes','tes','tes','tes','tes',NULL,'025028652',0,NULL,NULL);
insert  into `alamat`(`id`,`id_user`,`nama`,`provinsi`,`kabupaten`,`kecamatan`,`jalan`,`kode_pos`,`no_telp`,`status`,`created_at`,`updated_at`) values (31,9,'tes','tes','tes','tes','tes',NULL,'025028652',0,NULL,NULL);
insert  into `alamat`(`id`,`id_user`,`nama`,`provinsi`,`kabupaten`,`kecamatan`,`jalan`,`kode_pos`,`no_telp`,`status`,`created_at`,`updated_at`) values (38,9,'cek','cek','cek','cek','cek',NULL,'2323',0,NULL,NULL);
insert  into `alamat`(`id`,`id_user`,`nama`,`provinsi`,`kabupaten`,`kecamatan`,`jalan`,`kode_pos`,`no_telp`,`status`,`created_at`,`updated_at`) values (40,9,'Andreas','Sumatera Utara','Toba','Laguboti','Sisingamangaraja',NULL,'0749529856',1,NULL,NULL);
insert  into `alamat`(`id`,`id_user`,`nama`,`provinsi`,`kabupaten`,`kecamatan`,`jalan`,`kode_pos`,`no_telp`,`status`,`created_at`,`updated_at`) values (41,10,'Budi','Sumatera Utara','Toba','Sitoluama','Jl. Sisingamangaraja',NULL,'08566315',1,NULL,NULL);
insert  into `alamat`(`id`,`id_user`,`nama`,`provinsi`,`kabupaten`,`kecamatan`,`jalan`,`kode_pos`,`no_telp`,`status`,`created_at`,`updated_at`) values (42,15,'sonny','Sumatera Utara','Toba','Laguboti','Jl. Sisingamangaraja',NULL,'0856632358',1,NULL,NULL);

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_product` int(10) DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cart` (`id_user`),
  KEY `FK_cart_product` (`id_product`),
  CONSTRAINT `FK_cart` FOREIGN KEY (`id_user`) REFERENCES `pengguna` (`id`),
  CONSTRAINT `FK_cart_product` FOREIGN KEY (`id_product`) REFERENCES `produk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

/*Table structure for table `detailtransaksi` */

DROP TABLE IF EXISTS `detailtransaksi`;

CREATE TABLE `detailtransaksi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_product` int(10) DEFAULT NULL,
  `id_transaksi` int(10) DEFAULT NULL,
  `status_pengiriman` int(10) DEFAULT 1,
  `jumlah` int(10) DEFAULT NULL,
  `alamat` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_detailtransaksi` (`id_product`),
  KEY `FK_detailtransaksi_id` (`id_transaksi`),
  KEY `FK_pengirimanbarang` (`status_pengiriman`),
  KEY `FK_produkaddress` (`alamat`),
  CONSTRAINT `FK_detailtransaksi` FOREIGN KEY (`id_product`) REFERENCES `produk` (`id`),
  CONSTRAINT `FK_detailtransaksi_id` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id`),
  CONSTRAINT `FK_pengirimanbarang` FOREIGN KEY (`status_pengiriman`) REFERENCES `statuspengiriman` (`id`),
  CONSTRAINT `FK_produkaddress` FOREIGN KEY (`alamat`) REFERENCES `alamat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `detailtransaksi` */

insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (6,22,96,1,10,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (7,48,97,1,5,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (8,46,98,1,3,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (9,47,99,1,5,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (10,32,100,1,1,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (11,32,101,1,1,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (12,47,102,1,1,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (13,47,103,1,1,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (14,48,104,1,1,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (15,48,105,1,1,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (16,48,106,1,1,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (17,48,107,1,1,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (18,48,108,1,1,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (19,48,109,1,1,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (20,48,110,1,1,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (21,48,111,1,1,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (22,48,112,1,3,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (23,48,113,1,2,42,NULL,NULL);
insert  into `detailtransaksi`(`id`,`id_product`,`id_transaksi`,`status_pengiriman`,`jumlah`,`alamat`,`created_at`,`updated_at`) values (24,48,114,1,3,42,NULL,NULL);

/*Table structure for table `komentar` */

DROP TABLE IF EXISTS `komentar`;

CREATE TABLE `komentar` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_produk` int(10) DEFAULT NULL,
  `id_pengguna` int(10) DEFAULT NULL,
  `komentar` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_komentar_produk` (`id_produk`),
  KEY `FK_komentar_user` (`id_pengguna`),
  CONSTRAINT `FK_komentar_produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`),
  CONSTRAINT `FK_komentar_user` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `komentar` */

/*Table structure for table `pengguna` */

DROP TABLE IF EXISTS `pengguna`;

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_pengguna` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `pengguna` */

insert  into `pengguna`(`id`,`username`,`email`,`password`,`token`,`role`,`nama`,`no_telp`,`foto`,`jenis_kelamin`,`created_at`,`updated_at`) values (1,NULL,'admin@gmail.com','administrator',NULL,1,NULL,NULL,'uploads/petani.jpg',NULL,NULL,NULL);
insert  into `pengguna`(`id`,`username`,`email`,`password`,`token`,`role`,`nama`,`no_telp`,`foto`,`jenis_kelamin`,`created_at`,`updated_at`) values (2,'ACS','ACS','ACS',NULL,3,NULL,NULL,'uploads/petani.jpg',NULL,NULL,NULL);
insert  into `pengguna`(`id`,`username`,`email`,`password`,`token`,`role`,`nama`,`no_telp`,`foto`,`jenis_kelamin`,`created_at`,`updated_at`) values (3,'TA','TA@gmail.com','TerminalAgro',NULL,2,NULL,NULL,'uploads/petani.jpg',NULL,NULL,NULL);
insert  into `pengguna`(`id`,`username`,`email`,`password`,`token`,`role`,`nama`,`no_telp`,`foto`,`jenis_kelamin`,`created_at`,`updated_at`) values (4,'user@gmail.com','usr1','user1234',NULL,2,'ACS','0852','uploads/petani.jpg',NULL,NULL,NULL);
insert  into `pengguna`(`id`,`username`,`email`,`password`,`token`,`role`,`nama`,`no_telp`,`foto`,`jenis_kelamin`,`created_at`,`updated_at`) values (5,'Terminal','Tagro@gmail.com','Tagro',NULL,2,NULL,NULL,'uploads/petani.jpg',NULL,NULL,NULL);
insert  into `pengguna`(`id`,`username`,`email`,`password`,`token`,`role`,`nama`,`no_telp`,`foto`,`jenis_kelamin`,`created_at`,`updated_at`) values (6,NULL,'alfredsimanjuntak@gmail.com','ACS1998',NULL,4,NULL,NULL,'uploads/petani.jpg',NULL,NULL,NULL);
insert  into `pengguna`(`id`,`username`,`email`,`password`,`token`,`role`,`nama`,`no_telp`,`foto`,`jenis_kelamin`,`created_at`,`updated_at`) values (7,'ygos','yona@gmail.com','yona',NULL,3,'yona','08387277','uploads/petani.jpg',NULL,NULL,NULL);
insert  into `pengguna`(`id`,`username`,`email`,`password`,`token`,`role`,`nama`,`no_telp`,`foto`,`jenis_kelamin`,`created_at`,`updated_at`) values (8,'pepe','p@gmail.com','pepe',NULL,3,'pepe nezario','899565','uploads/petani.jpg',NULL,NULL,NULL);
insert  into `pengguna`(`id`,`username`,`email`,`password`,`token`,`role`,`nama`,`no_telp`,`foto`,`jenis_kelamin`,`created_at`,`updated_at`) values (9,'usertry','user@gmail.com','user',NULL,3,'coba coba lagi','025028652','uploads/petani.jpg',NULL,NULL,NULL);
insert  into `pengguna`(`id`,`username`,`email`,`password`,`token`,`role`,`nama`,`no_telp`,`foto`,`jenis_kelamin`,`created_at`,`updated_at`) values (10,'user2','user2@gmail.com','user',NULL,3,'user kedua','0258852','uploads/petani.jpg',NULL,NULL,NULL);
insert  into `pengguna`(`id`,`username`,`email`,`password`,`token`,`role`,`nama`,`no_telp`,`foto`,`jenis_kelamin`,`created_at`,`updated_at`) values (11,'user3','user3@gmail.com','user',NULL,4,'user ketiga','085446224','uploads/petani.jpg',NULL,NULL,NULL);
insert  into `pengguna`(`id`,`username`,`email`,`password`,`token`,`role`,`nama`,`no_telp`,`foto`,`jenis_kelamin`,`created_at`,`updated_at`) values (15,'sonny','sonny@gmail.com','sonny',NULL,3,'Sonny Hutabarat','025852145','uploads/20062020download.jpg',NULL,NULL,NULL);

/*Table structure for table `produk` */

DROP TABLE IF EXISTS `produk`;

CREATE TABLE `produk` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`),
  KEY `FK_produk` (`id_toko`),
  CONSTRAINT `FK_produk` FOREIGN KEY (`id_toko`) REFERENCES `toko` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

/*Data for the table `produk` */

insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (1,17,'uploads/04062020Untitled.png','Sayur Maknyus','sayur lezat sekali',1,5000,30,1,NULL,NULL);
insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (2,17,'uploads/04062020Untitled.png','Beras Mantap','Beras enak buaget',10,100000,10,3,NULL,NULL);
insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (4,9,'uploads/04062020Untitled.png','Bawang Merah','bawang',1,5000,30,4,NULL,NULL);
insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (18,9,'uploads/04062020Untitled.png','Sayur hijau segarrr','Sayur dengan bibit pilihan, nomor 1 dipasaran sangat segar karena baru dipetik',1,10000,20,1,NULL,NULL);
insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (20,9,'uploads/04062020Untitled.png','tes','tes',1,10000,10,1,NULL,NULL);
insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (21,9,'uploads/04062020Untitled.png','sayur asam','enak',1,10000,10,1,NULL,NULL);
insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (22,9,'uploads/04062020Untitled.png','tes','tes produk',10,10000,200,1,NULL,NULL);
insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (23,9,'uploads/04062020Untitled.png','sayur pahit','enak sekali',1,10000,10,1,NULL,NULL);
insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (24,9,'uploads/04062020Untitled.png','sayur','enak',1,10000,10,1,NULL,NULL);
insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (25,9,'uploads/04062020Untitled.png','sayur','enak',1,10000,10,1,NULL,NULL);
insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (27,21,'uploads/04062020Untitled.png','0258525','enak dong',5,25000,55,1,NULL,NULL);
insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (28,21,'uploads/04062020Untitled.png','sayur','test',23,2500,30,1,NULL,NULL);
insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (32,21,'uploads/04062020Untitled.png','0258525','enak dong',5,25000,20,1,NULL,NULL);
insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (46,21,'uploads/04062020Untitled.png','0258525','enak dong',5,25000,20,1,NULL,NULL);
insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (47,21,'uploads/20062020Untitled.png','tes API','enak dong',5,25000,20,1,NULL,NULL);
insert  into `produk`(`id`,`id_toko`,`gambar`,`nama`,`deskripsi`,`berat`,`harga`,`stok`,`kategori`,`created_at`,`updated_at`) values (48,28,'uploads/20062020download.jpg','tes andro','hanya tes aja jangan serius amat',1,20000,20,1,NULL,NULL);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`id`,`nama`,`created_at`,`updated_at`) values (1,'Pembeli',NULL,NULL);
insert  into `role`(`id`,`nama`,`created_at`,`updated_at`) values (2,'Penjual',NULL,NULL);
insert  into `role`(`id`,`nama`,`created_at`,`updated_at`) values (3,'Admin',NULL,NULL);

/*Table structure for table `statuspengiriman` */

DROP TABLE IF EXISTS `statuspengiriman`;

CREATE TABLE `statuspengiriman` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `status_pengiriman` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `statuspengiriman` */

insert  into `statuspengiriman`(`id`,`status_pengiriman`,`created_at`,`updated_at`) values (1,'belum dikirim',NULL,NULL);
insert  into `statuspengiriman`(`id`,`status_pengiriman`,`created_at`,`updated_at`) values (2,'dalam pengiriman',NULL,NULL);
insert  into `statuspengiriman`(`id`,`status_pengiriman`,`created_at`,`updated_at`) values (3,'barang sampai',NULL,NULL);
insert  into `statuspengiriman`(`id`,`status_pengiriman`,`created_at`,`updated_at`) values (4,'selesai',NULL,NULL);

/*Table structure for table `statustoko` */

DROP TABLE IF EXISTS `statustoko`;

CREATE TABLE `statustoko` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `statustoko` */

/*Table structure for table `statustransaksi` */

DROP TABLE IF EXISTS `statustransaksi`;

CREATE TABLE `statustransaksi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `status_transaksi` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `statustransaksi` */

insert  into `statustransaksi`(`id`,`status_transaksi`,`created_at`,`updated_at`) values (1,'menunggu pembayaran',NULL,NULL);
insert  into `statustransaksi`(`id`,`status_transaksi`,`created_at`,`updated_at`) values (2,'sudah dibayar',NULL,NULL);
insert  into `statustransaksi`(`id`,`status_transaksi`,`created_at`,`updated_at`) values (3,'menunggu konfirmasi',NULL,NULL);

/*Table structure for table `toko` */

DROP TABLE IF EXISTS `toko`;

CREATE TABLE `toko` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
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
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Toko` (`id_pengguna`),
  KEY `FK_TokoStatus` (`status_toko`),
  CONSTRAINT `FK_Toko` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id`),
  CONSTRAINT `FK_TokoStatus` FOREIGN KEY (`status_toko`) REFERENCES `statustoko` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `toko` */

insert  into `toko`(`id`,`gambar`,`nama`,`alamat`,`no_telp`,`deskripsi`,`ktp`,`ktpSelfie`,`status_toko`,`id_pengguna`,`created_at`,`updated_at`) values (9,NULL,'tes','tes','082168349939','tes',NULL,NULL,NULL,7,NULL,NULL);
insert  into `toko`(`id`,`gambar`,`nama`,`alamat`,`no_telp`,`deskripsi`,`ktp`,`ktpSelfie`,`status_toko`,`id_pengguna`,`created_at`,`updated_at`) values (17,NULL,'myStore','Balige','082168349939','semua bisa dibeli',NULL,NULL,NULL,5,NULL,NULL);
insert  into `toko`(`id`,`gambar`,`nama`,`alamat`,`no_telp`,`deskripsi`,`ktp`,`ktpSelfie`,`status_toko`,`id_pengguna`,`created_at`,`updated_at`) values (21,NULL,'ting','ting','082168349939','ting',NULL,NULL,NULL,9,NULL,NULL);
insert  into `toko`(`id`,`gambar`,`nama`,`alamat`,`no_telp`,`deskripsi`,`ktp`,`ktpSelfie`,`status_toko`,`id_pengguna`,`created_at`,`updated_at`) values (28,NULL,'spesial','Balige','082168349939','produk terbaik dengan bibit spesial',NULL,NULL,NULL,15,NULL,NULL);

/*Table structure for table `transaksi` */

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pengguna` int(11) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `status_transaksi` int(10) DEFAULT 1,
  `foto` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_transaksi` (`id_pengguna`),
  KEY `FK_transaksi_status` (`status_transaksi`),
  CONSTRAINT `FK_transaksi` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id`),
  CONSTRAINT `FK_transaksi_status` FOREIGN KEY (`status_transaksi`) REFERENCES `statustransaksi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

/*Data for the table `transaksi` */

insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (96,15,10,2,'uploads/21062020044129Untitled.png',NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (97,15,105000,3,'uploads/21062020044219download.jpg',NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (98,15,80000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (99,15,130000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (100,15,30000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (101,15,30000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (102,15,30000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (103,15,30000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (104,15,25000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (105,15,25000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (106,15,25000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (107,15,25000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (108,15,25000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (109,15,25000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (110,15,25000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (111,15,25000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (112,15,65000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (113,15,45000,1,NULL,NULL,NULL);
insert  into `transaksi`(`id`,`id_pengguna`,`total`,`status_transaksi`,`foto`,`created_at`,`updated_at`) values (114,15,65000,1,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
