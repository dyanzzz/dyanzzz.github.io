/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.16-MariaDB : Database - imucreative
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`imucreative` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `imucreative`;

/*Table structure for table `tbl_adv` */

DROP TABLE IF EXISTS `tbl_adv`;

CREATE TABLE `tbl_adv` (
  `adv_id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_input` date NOT NULL,
  `nama_adv` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `link_img` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `status_display` int(1) NOT NULL,
  `status_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`adv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_adv` */

insert  into `tbl_adv`(`adv_id`,`tgl_input`,`nama_adv`,`link`,`link_img`,`keterangan`,`status_display`,`status_delete`) values 
(1,'2017-12-27','Web Hosting','https://www.000webhost.com/1032765.html','https://www.000webhost.com/images/banners/336x280/1.jpg','adv image atas/template W*H(336*280)',1,0),
(2,'2017-12-28','Web Hosting','https://www.000webhost.com/1032765.html','https://www.000webhost.com/images/banners/336x280/2.jpg','adv image bawah W*H(336*280)',2,0),
(3,'2018-01-04','Web Hosting','https://www.000webhost.com/1032765.html','https://www.000webhost.com/images/banners/300x600/1.jpg','adv image kanan/blog W*H(336*280)',3,0),
(4,'2018-01-04','Web Hosting','https://www.000webhost.com/1032765.html','https://www.000webhost.com/images/banners/300x600/2.jpg','adv image kanan/blog detail W*H(336*280)',4,0);

/*Table structure for table `tbl_blog` */

DROP TABLE IF EXISTS `tbl_blog`;

CREATE TABLE `tbl_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_input` date NOT NULL,
  `judul_blog` varchar(100) NOT NULL,
  `judul_blog_seo` varchar(100) NOT NULL,
  `kategori_blog_id` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `publish` int(1) NOT NULL DEFAULT '0',
  `status_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_blog` */

insert  into `tbl_blog`(`blog_id`,`tgl_input`,`judul_blog`,`judul_blog_seo`,`kategori_blog_id`,`deskripsi`,`user_id`,`publish`,`status_delete`) values 
(1,'2017-12-27','Judul Blog 1','judul-blog-1',2,'isi deskripsi produk',1,1,0),
(2,'2017-12-28','Judul blog 2','judul-blog-2',1,'isi deskasdlkajd alsd alskdjalskdj laksjd laskdj lkasdj lkasdjlkasdj lksadj laskdj laskdj aasd as as as\r\nasd asd asd asd a\r\n aaads isi deskasdlkajd alsd alskdjalskdj laksjd laskdj lkasdj lkasdjlkasdj lksadj laskdj laskdj aasd as as as\r\nasd asd asd asd a\r\n aaads isi deskasdlkajd alsd alskdjalskdj laksjd laskdj lkasdj lkasdjlkasdj lksadj laskdj laskdj aasd as as as\r\nasd asd asd asd a\r\n aaads isi deskasdlkajd alsd alskdjalskdj laksjd laskdj lkasdj lkasdjlkasdj lksadj laskdj laskdj aasd as as as\r\nasd asd asd asd a\r\n aaads asd asd asd asd a\r\n aaads asd asd asd asd a\r\n aaads asd asd asd asd a\r\n aaads aaads isi deskasdlkajd alsd alskdjalskdj laksjd laskdj lkasdj lkasdjlkasdj lksadj laskdj laskdj aasd as as as\r\nasd asd asd asd a\r\n aaads asd asd asd asd a\r\n aaads asd asd asd asd a\r\n aaads asd asd asd asd a\r\n aaads ',1,1,0),
(3,'2018-01-04','TES3','tes3',2,'<P>TES3</P>\r\n',1,1,0);

/*Table structure for table `tbl_blog_image` */

DROP TABLE IF EXISTS `tbl_blog_image`;

CREATE TABLE `tbl_blog_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_image` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `blog_id` int(11) NOT NULL,
  `status_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_blog_image` */

insert  into `tbl_blog_image`(`image_id`,`nama_image`,`image`,`blog_id`,`status_delete`) values 
(1,'DASHBOARD REUNI','ikaosCart.png',1,0),
(2,'FORMAT ACARA REUNI','ikaosDashboard.png',1,0),
(3,'FORMAT ACARA REUNI2','ikaosDashboard.png',2,0),
(4,'DOA KELUAR KAMAR MANDI','keluarkamarmandi.jpg',3,1),
(5,'DOA SETELAH MAKAN','setelahmakan.jpg',3,0);

/*Table structure for table `tbl_blog_tags` */

DROP TABLE IF EXISTS `tbl_blog_tags`;

CREATE TABLE `tbl_blog_tags` (
  `blog_tags_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tags` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `status_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blog_tags_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_blog_tags` */

insert  into `tbl_blog_tags`(`blog_tags_id`,`id_tags`,`blog_id`,`status_delete`) values 
(1,8,1,0),
(2,11,1,0);

/*Table structure for table `tbl_distributor` */

DROP TABLE IF EXISTS `tbl_distributor`;

CREATE TABLE `tbl_distributor` (
  `distributor_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_distributor` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `status_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`distributor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_distributor` */

insert  into `tbl_distributor`(`distributor_id`,`nama_distributor`,`image`,`status_delete`) values 
(1,'Ajax','ajax.png',0),
(2,'Bootstrap','bootstrap.png',0),
(3,'Codeigniter','codeigniter.png',0),
(4,'Javascript','javascript.png',0),
(5,'tes','javascript.png',0);

/*Table structure for table `tbl_info` */

DROP TABLE IF EXISTS `tbl_info`;

CREATE TABLE `tbl_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `nama_toko` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `logo` text NOT NULL,
  `logo_full` text NOT NULL,
  `about` text NOT NULL,
  `keunggulan` text NOT NULL,
  `siup` varchar(50) NOT NULL,
  `npwp` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_info` */

insert  into `tbl_info`(`id`,`nama`,`nama_toko`,`alamat`,`telp`,`fax`,`email`,`logo`,`logo_full`,`about`,`keunggulan`,`siup`,`npwp`) values 
(1,'IMU CREATIVE','IMU CREATIVE','-','087771019854','-','dian.trib@imucreative.esy.es','logo.png','logo2.png','<p>Custom Application and System Development</p>\r\n\r\n<p>” We Have IT Solutions For Your IT Challenges “</p>\r\n\r\n<p>Teknologi komputer saat ini merupakan kebutuhan pokok untuk operasional sebuah organisasi/perusahaan. Disadari betul bahwa dengan adanya aplikasi sistem komputer, maka akan dapat menekan biaya operasional perusahaan Anda. Semua jenis pekerjaan akan berjalan secara cepat, mudah, efektif dan efisien.</p>\r\n\r\n<p>Penerapan sistem komputerisasi pada sebuah institusi/perusahaan tidaklah terlalu mahal untuk diwujudkan, dibanding dengan hasil yang kemudian akan diperoleh. Jika secara manual sebuah sistem dilaksanakan bisa memakan waktu yang lama, proses yang berbelit, memakai tenaga yang banyak, bahkan juga akurasi yang kurang, maka semua itu bisa diatasi dengan komputerisasi sistem tersebut. Dengan komputerisasi sistem, maka semua proses yang ada bisa diintegrasikan kedalam sebuah aplikasi, sehingga input dan output yang dihasilkan sempurna dengan tingkat akurasi 99%. Tidak hanya itu, waktu yang diperlukan sangat singkat, dan juga biaya yang dikeluarkan jauh lebih kecil.</p>\r\n\r\n<p>IMU Creative memberikan solusi untuk pembuatan aplikasi-aplikasi khusus yang dibutuhkan oleh sebuah organisasi, seperti aplikasi sistem inventory, jual beli, akuntansi, maupun lainnya, baik yang diintegrasikan secara online maupun offline.</p>\r\n\r\n<p>We Have IT Solutions For Your IT Challenges</p>\r\n\r\n<p> </p>\r\n\r\n<p>Regards,</p>','We Have IT Solution For Your IT Challenge','-','-');

/*Table structure for table `tbl_kategori` */

DROP TABLE IF EXISTS `tbl_kategori`;

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) NOT NULL,
  `link` varchar(40) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `nama_kategori_seo` varchar(100) NOT NULL,
  `icon_kategori` varchar(20) NOT NULL,
  `status_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_kategori` */

insert  into `tbl_kategori`(`kategori_id`,`nama_kategori`,`link`,`parent`,`nama_kategori_seo`,`icon_kategori`,`status_delete`) values 
(1,'APLIKASI PENDIDIKAN','',0,'aplikasi-pendidikan','apps',0),
(2,'APLIKASI PERUSAHAAN','',0,'aplikasi-perusahaan','camera',0),
(3,'ONLINE SHOPING','',0,'online-shoping','layers',0);

/*Table structure for table `tbl_kategori_blog` */

DROP TABLE IF EXISTS `tbl_kategori_blog`;

CREATE TABLE `tbl_kategori_blog` (
  `kategori_blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) NOT NULL,
  `nama_kategori_seo` varchar(100) NOT NULL,
  `status_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kategori_blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_kategori_blog` */

insert  into `tbl_kategori_blog`(`kategori_blog_id`,`nama_kategori`,`nama_kategori_seo`,`status_delete`) values 
(1,'APLIKASI PENDIDIKAN4','aplikasi-pendidikan4',0),
(2,'APLIKASI PERUSAHAAN4','aplikasi-perusahaan4',0),
(3,'ONLINE SHOPING4','online-shoping4',0),
(4,'ASD ZXC TYU','asd-zxc-tyu',1),
(5,'ASD AQWEQ AS','asd-aqweq-as',1);

/*Table structure for table `tbl_member` */

DROP TABLE IF EXISTS `tbl_member`;

CREATE TABLE `tbl_member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `no_telpon` varchar(12) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_member` */

insert  into `tbl_member`(`member_id`,`nama_lengkap`,`email`,`no_hp`,`no_telpon`,`alamat`) values 
(2,'ucok','ucok76@gmail.com','082121473036','+021 (23652)','jalan budi no 45, bandung'),
(6,'nuris akbar','nuris.akbar@gmail.com','082121473036','082121473036','bandung'),
(7,'ojan','ojan@gmail.com','0877777777','08777888888','jakarta');

/*Table structure for table `tbl_menu` */

DROP TABLE IF EXISTS `tbl_menu`;

CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(70) NOT NULL,
  `menu_eng` varchar(200) NOT NULL,
  `link` varchar(150) NOT NULL,
  `parent` int(11) NOT NULL,
  `menu_title_seo` varchar(150) NOT NULL,
  `icon` varchar(40) NOT NULL,
  `status_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_menu` */

insert  into `tbl_menu`(`menu_id`,`menu_title`,`menu_eng`,`link`,`parent`,`menu_title_seo`,`icon`,`status_delete`) values 
(8,'Cara Pemesanan','How To Order','http://localhost/cia/p/cara-pemesanan',0,'cara-pemesanan','fa-info',1),
(9,'Testimoni Pelanggan','Customer Testimonials','http://localhost/cia/p/testimoni-pelanggan',0,'testimoni-pelanggan','fa-thumbs-up',1),
(10,'Konfirmasi Pembayaran','Payment Confirmation','http://localhost/cia/p/konfirmasi-pembayaran',0,'konfirmasi-pembayaran','fa-check',1),
(11,'Blog','Blog','http://localhost/cia/p/blog',0,'blog','fa-bars',1),
(12,'Contact','Contact','http://localhost/cia/contact/contact',0,'contact','fa-phone',1);

/*Table structure for table `tbl_menu_admin` */

DROP TABLE IF EXISTS `tbl_menu_admin`;

CREATE TABLE `tbl_menu_admin` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(100) NOT NULL,
  `icon` varchar(40) NOT NULL,
  `link` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL,
  `status_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_menu_admin` */

insert  into `tbl_menu_admin`(`menu_id`,`nama_menu`,`icon`,`link`,`parent`,`status_delete`) values 
(1,'Category','clip-puzzle','category',7,0),
(2,'Product','	clip-wrench','product',0,0),
(3,'Category Blog','clip-puzzle-2','category_blog',7,0),
(4,'Information','clip-home','info',0,0),
(5,'Menu','clip-globe','menu',0,1),
(6,'Halaman','clip-keyboard','halaman',0,1),
(7,'Master','	clip-grid','#',0,0),
(8,'Tags','clip-tag','tags',0,1),
(9,'Transaksi','clip-phone-3','transaksi',0,1),
(10,'Distributor','clip-cube','distributor',7,0),
(11,'Widget','clip-paperclip','#',0,0),
(12,'Slider Image','clip-stack-empty','product_slider',11,0),
(13,'Widget','clip-images','product_widget',11,0),
(14,'Blog','clip-blogger','blog',0,0),
(15,'-','','',0,1),
(16,'-','','',0,1);

/*Table structure for table `tbl_pages` */

DROP TABLE IF EXISTS `tbl_pages`;

CREATE TABLE `tbl_pages` (
  `pages_id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(120) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`pages_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_pages` */

insert  into `tbl_pages`(`pages_id`,`judul`,`judul_seo`,`content`) values 
(4,'konfirmasi pembayaran','konfirmasi-pembayaran','<p>setelah anda melakukan transfer sejumlah yang telah kami sampaikan maka silahkan konfirmasi pembayaran anda</p>\r\n\r\n<ul>\r\n	<li>via sms ke no 082121473036</li>\r\n	<li>via BBM&nbsp;</li>\r\n	<li>via email nuris.akbar@gmail.com</li>\r\n</ul>\r\n'),
(5,'cara pemesanan','cara-pemesanan','<p><strong>anda bisa memesan kepada kami melalui 2 cara :</strong></p>\r\n\r\n<ul>\r\n	<li>dari website<br />\r\n	silahkan pilih product yang ingin anda beli dan ikuti panduan transaksinya</li>\r\n	<li>via sms/ telpon<br />\r\n	silahkan pilih dan sms kan nama product yang anda pilih, kami akan menginformasikan biaya yang harus anda transafer</li>\r\n</ul>\r\n'),
(6,'testimoni pelanggan','testimoni-pelanggan','<p>testimoni&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n'),
(7,'Contact','contact','<p>hubungi kami text&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n'),
(8,'Konfirmasi Pembayaran','konfirmasi-pembayaran','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n'),
(9,'Blog','blog','<p>hubungi kami text&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n');

/*Table structure for table `tbl_product` */

DROP TABLE IF EXISTS `tbl_product`;

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_input` date NOT NULL,
  `nama_product` varchar(100) NOT NULL,
  `nama_product_seo` varchar(140) NOT NULL,
  `link_portofolio` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `harga` int(11) NOT NULL,
  `kualitas` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `display_in_home` int(1) NOT NULL DEFAULT '0',
  `publish` int(1) NOT NULL DEFAULT '0',
  `status_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_product` */

insert  into `tbl_product`(`product_id`,`tgl_input`,`nama_product`,`nama_product_seo`,`link_portofolio`,`keterangan`,`harga`,`kualitas`,`image`,`kategori_id`,`display_in_home`,`publish`,`status_delete`) values 
(4,'2017-11-24','REUNI AKBAR SMKN 1 KRAGILAN','reuni-akbar-smkn-1-kragilan','','<ul>\r\n	<li>Lengkap dengan database</li>\r\n</ul>\r\n',0,'Lengkap dengan database','reuniSmkn1kragilan.png',1,1,1,0),
(5,'2017-11-22','SYSTEM PERPUSTAKAAN PANDEGLANG','system-perpustakaan-pandeglang','http://imucreative.click/pusdapandeglang','<ul>\r\n	<li>Lengkap dengan database</li>\r\n	<li>Print Kartu Anggota</li>\r\n	<li>Akses level user</li>\r\n	<li>Denda jika melakukan keterlambatan pengembalian</li>\r\n</ul>\r\n',0,'Full Akses','pusdaDashboard.png',1,2,1,0),
(6,'2017-11-24','APLIKASI TIMBANGAN HEWAN','aplikasi-timbangan-hewan','','<ul>\r\n	<li>Sebagai jembatan antara perangkat sensor berat kedalam database dengan maksimal</li>\r\n</ul>\r\n',0,'Kualitas OEM','timbanganDashboard.png',2,2,1,0),
(7,'2017-11-24','APLIKASI WORK ORDER IT','aplikasi-work-order-it','','<p>- Dilengkapi fitur Notif Email<br />\r\n- Dilengkapi data asset<br />\r\n- Dilengkapi akses level setiap bagian prusahaan</p>\r\n',0,'Lengkap dengan data asset','woDashBoard.png',2,1,1,0),
(8,'2017-11-24','SYSTEM IKAOS','system-ikaos','','<ul>\r\n	<li>Online Shoping</li>\r\n	<li>Dilengkapi halaman admin full</li>\r\n</ul>\r\n',0,'Kualitas OEM','ikaosDashboard.png',3,1,1,0),
(10,'2017-11-24','APLIKASI PURCHASE REQUEST','aplikasi-purchase-request','','<p>keterangan singkat produk</p>\r\n',0,'Kualitas OEM','prDetail.png',2,2,1,0),
(11,'2017-11-24','COMPANY PROFILE CIA (http://cakraautopart.com/)','company-profile','','<p>keterangan singkat produk</p>\r\n',0,'Company Profile CIA','cia.png',2,2,1,0),
(12,'2017-11-24','WEBSITE PESANTREN DARUSSOFA (http://darussofa.org/)','pesantren-darussofa','','<p>keterangan singkat produk</p>\r\n',0,'Website Pesantren Darussofa','darussofa.png',1,1,1,0),
(13,'2017-11-24','WEBSITE UNDANGAN SEMINAR','ikatrainee','','<p>keterangan singkat produk</p>\r\n',0,'IKTrainee','iktrainee.png',2,2,1,0),
(14,'2017-11-24','ONLINE SHOP MAY GALLERY','may-gallery','','<p>keterangan singkat produk</p>\r\n',0,'May Gallery','mayGallery.png',3,3,1,0),
(15,'2017-11-24','WEDDING INVITATION RYAN & NITA','ryan-nita','','<p>keterangan singkat produk</p>\r\n',0,'Wedding Ryan Nita','ryanNita.png',3,3,1,0),
(16,'2017-11-24','HYUNDAI APPS (Available in Playstore)','hyundai-apps','','<p>keterangan singkat produk</p>\r\n',0,'Hyundai Apps','hyundai_apps.png',2,2,1,0),
(17,'2017-11-24','HYUNDAI SALESMAN ACTIVITY','salesman-activity','','<p>keterangan singkat produk</p>\r\n',0,'Hyundai Apps','salesman_activity.png',2,2,1,0),
(18,'2017-11-24','HYUNDAI FIXED ASSET','fixed-asset','','<p>keterangan singkat produk</p>\r\n',0,'Hyundai Apps','hyundai_asset.png',2,2,1,0),
(19,'2017-11-24','HYUNDAI SERVICE HISTORY','service-history','','<p>keterangan singkat produk</p>\r\n',0,'Hyundai Apps','service_history.png',2,2,1,0),
(20,'2017-11-24','HYUNDAI EIS','eis','','<p>keterangan singkat produk</p>\r\n',0,'Hyundai Apps','hyundai_eis.png',2,2,1,0),
(21,'2019-01-31','SYSTEM INVENTORY','system-inventory','','<p>keterangan singkat produk</p>\r\n',0,'Full Akses','goodsInventory.png',2,2,1,0);

/*Table structure for table `tbl_product_image` */

DROP TABLE IF EXISTS `tbl_product_image`;

CREATE TABLE `tbl_product_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_image` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `status_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_product_image` */

insert  into `tbl_product_image`(`image_id`,`nama_image`,`image`,`product_id`,`status_delete`) values 
(16,'DASHBOARD REUNI','reuniSmkn1kragilan.png',4,0),
(17,'FORMAT ACARA REUNI','reuniAcara.png',4,0),
(18,'FORMA UNDANGAN REUNI','reuniUndangan.png',4,0),
(19,'FORMAT DAFTAR ALUMNI','reuniAlumni.png',4,0),
(20,'FORM REGISTRASI','reuniFormRegister.png',4,0),
(21,'PESAN KESAN','reuniPesanKesan.png',4,0),
(22,'FORM LOGIN','woLogin.png',7,0),
(23,'FORM INPUT WO','woFormInput.png',7,0),
(24,'DASHBOARD WO','woDashBoard.png',7,0),
(25,'FORM INPUT TROUBLESHOOT','woInputTroubleShoot.png',7,0),
(26,'HISTORY WO','woHistory.png',7,0),
(27,'CHECK WO','woCheck.png',7,0),
(28,'ACCEPT WO','woAccepted.png',7,0),
(29,'DASHBOARD IKAOS','ikaosDashboard.png',8,0),
(30,'KATEGORI IKAOS','ikaosKategori.png',8,0),
(31,'DETAIL PRODUK IKAOS','ikaosDetailProduk.png',8,0),
(32,'CART IKAOS','ikaosCart.png',8,0),
(33,'DASHBOARD PUSDA','pusdaDashboard.png',5,0),
(34,'FORM LOGIN PUSDA','pusdaLogin.png',5,0),
(35,'FORM SEARCH BUKU','pusdaSearch.png',5,0),
(36,'KATEGORI BUKU','pusdaKategoriBuku.png',5,0),
(37,'DETAIL BUKU','pusdaDetailBuku.png',5,0),
(38,'DASHBOARD TIMBANGAN','timbanganDashboard.png',6,0),
(39,'DAFTAR KANDANG','timbanganDaftarKandang.png',6,0),
(40,'FORM LOGIN','timbanganLogin.png',6,0),
(41,'DAFTAR KAMBING','timbanganDaftarKambing.png',6,0),
(42,'DETAIL TIMBANGAN DAN PROSES MENIMBANG','timbanganDetailKambingdanProsesTimbangan.png',6,0),
(43,'FORM LOGIN','prLogin.png',10,0),
(44,'FORM SUBMIT','prSubmit.png',10,0),
(45,'FORM INPUT','prInput.png',10,0),
(46,'DETAIL PR','prDetail.png',10,0),
(47,'ACC HEAD PURCHASING','prAccHeadPurchasing.png',10,0),
(48,'ACC DEPT TERKAIT STAFF','prAccDeptTerkaitStaff.png',10,0),
(49,'ACC DEPT TERKAIT HEAD','prAccDeptTerkaitHead.png',10,0),
(50,'ACC DEPT HEAD','prAccDeptHead.png',10,0),
(51,'ACC APPROVE','prAccApprove.png',10,0),
(52,'ACC ADMIN PURCHASING','prAccAdminPurchasing.png',10,0);

/*Table structure for table `tbl_product_tags` */

DROP TABLE IF EXISTS `tbl_product_tags`;

CREATE TABLE `tbl_product_tags` (
  `product_tags_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tags` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_tags_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_product_tags` */

insert  into `tbl_product_tags`(`product_tags_id`,`id_tags`,`product_id`,`status_delete`) values 
(29,8,4,0),
(30,11,4,0),
(31,9,7,0),
(32,11,7,0),
(33,11,8,0),
(34,9,8,0),
(35,6,8,0),
(36,8,5,0),
(37,11,5,0),
(38,9,6,0),
(39,11,6,0),
(40,9,10,0),
(41,11,10,0);

/*Table structure for table `tbl_slider` */

DROP TABLE IF EXISTS `tbl_slider`;

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_slider` varchar(100) NOT NULL,
  `nama_product_seo` varchar(140) NOT NULL,
  `keterangan` text NOT NULL,
  `image` text NOT NULL,
  `publish` int(1) NOT NULL DEFAULT '0',
  `status_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_slider` */

insert  into `tbl_slider`(`slider_id`,`nama_slider`,`nama_product_seo`,`keterangan`,`image`,`publish`,`status_delete`) values 
(1,'SYSTEM PUSDA PANDEGLANG','system-perpustakaan-pandeglang','<p>Deskripsi</p>\r\n','pusdaDashboard.png',1,0),
(2,'SYSTEM IKA OS','system-ikaos','<p>Deskripsi123</p>\r\n','ikaosDashboard.png',1,0);

/*Table structure for table `tbl_tags` */

DROP TABLE IF EXISTS `tbl_tags`;

CREATE TABLE `tbl_tags` (
  `id_tags` int(11) NOT NULL AUTO_INCREMENT,
  `tags` varchar(50) NOT NULL,
  `status_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tags`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_tags` */

insert  into `tbl_tags`(`id_tags`,`tags`,`status_delete`) values 
(6,'ONLINE SHOP',0),
(8,'PENDIDIKAN',0),
(9,'PERUSAHAAN',0),
(10,'ANDROID',0),
(11,'WEB BASE',0);

/*Table structure for table `tbl_transaksi` */

DROP TABLE IF EXISTS `tbl_transaksi`;

CREATE TABLE `tbl_transaksi` (
  `transaksi_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=proses,2= sudah dikirim',
  `no_resi` varchar(20) NOT NULL,
  PRIMARY KEY (`transaksi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_transaksi` */

insert  into `tbl_transaksi`(`transaksi_id`,`member_id`,`tanggal`,`status`,`no_resi`) values 
(1,1,'2015-03-13',2,'smr0045565656'),
(2,1,'2015-04-29',1,'');

/*Table structure for table `tbl_transaksi_detail` */

DROP TABLE IF EXISTS `tbl_transaksi_detail`;

CREATE TABLE `tbl_transaksi_detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaksi_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL,
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_transaksi_detail` */

insert  into `tbl_transaksi_detail`(`detail_id`,`transaksi_id`,`product_id`,`qty`,`ip`) values 
(16,7,5,6,'::1'),
(17,7,4,6,'::1');

/*Table structure for table `tbl_users` */

DROP TABLE IF EXISTS `tbl_users`;

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1= aktif, 2= tidak aktif',
  `status_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_users` */

insert  into `tbl_users`(`user_id`,`nama_lengkap`,`username`,`password`,`status`,`status_delete`) values 
(1,'Administrator','admin','0192023a7bbd73250516f069df18b500',1,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
