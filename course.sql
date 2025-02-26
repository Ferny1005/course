-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2019 at 06:15 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'ferny', 'ferny');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `admin` varchar(25) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `materi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `admin`, `judul`, `materi`) VALUES
(3, 'ferny', 'Pemrograman Web', 'Pemrograman merupakan sekumpulan intruksi atau perintah tertulis yang di buat oleh manusia sendiri\r\ndan di buat secara logis untuk memerintahkan komputer agar melakukan langkah atau proses tertentu dalam menyelesaikan suatu masalah. <br><br>\r\n\r\nWeb sendiri merupakan sebuah halaman atau media informasi yang dapat diakses dengan perangkat lunak browser melalui jaringan komputer atau internet.<br><br>\r\n\r\nJadi, pemrograman web adalah proses membuat aplikasi komputer yang dapat digunakan atau ditampilkan dengan bantuan browser.<br><br>\r\n\r\nContoh dari hasil pemrograman web sendiri, yaitu :<br><br>\r\nGmail<br>\r\nGoogle Maps<br>\r\nFlickr<br>\r\nDan Facebook<br><br><br>\r\nUntuk cara kerja pemrograman web, sebaiknya sobat mengetahui tentang HTML dulu, kalau sebenarnya HTML itu bukan bahasa pemrograman tetapi HTML merupakan bahasa penandaan yang terdiri dari TAG (markup language).<br><br>\r\n\r\nJadi, HTML itu hanya mendeskripsikan bagian tertentu dalam sebuah halaman website, yang isinya harus di tampilkan oleh browser dengan cara tertentu sob.\r\n<br><br>\r\nSetelah mengetahui HTML selanjutnya bagaimana?\r\n<br><br>\r\nSelanjutnya, pemrograman web itu hanya melakukan dengan menyisipkan perintah diantara TAG HTML. <br><br>\r\nDengan adanya pemrograman web sobat dapat melakukan seperti :<br><br>\r\nMembuat halaman web yang dinamis dengan perintah - perintah yang cukup sederhana dan sobat dapat menghasilkan informasi yang beragam.<br><br>\r\nMelakukan interaksi, sehingga sobat dapat memperoleh informasi yang sobat butuhkan. Contoh : Pencarian, pengiriman data dan lain - lain.<br><br>\r\nBerhubungan dengan beragam basis data atau database. Contoh : Oracle, mysql, sql server dan lain - lain.<br><br>\r\nUntuk bahasa pemrograman, sobat bisa menggunakan hampir semua bahasa pemrograman, asalkan bahasa pemrograman itu bisa bekerja dalam sebuah web server dan dapat menciptakan HTML, XHTML, CSS, JavaScript, dan XML.<br><br>\r\n\r\nAda beberapa bahasa pemrograman yang terpopuler saat ini, yaitu :<br><br>\r\nPHP<br>\r\nASP.NET<br>\r\nASP classic<br>\r\nRuby on Rails<br>\r\nPerl<br>\r\nPython<br>\r\nJSP <br>'),
(4, 'ferny', 'MULTIMEDIA', 'Multimedia adalah penggunaan komputer untuk menyajikan dan menggabungkan teks, suara, gambar, animasi, audio dan video dengan alat bantu (tool) dan koneksi (link) sehingga pengguna dapat melakukan navigasi, berinteraksi, berkarya dan berkomunikasi. <br> <br>\r\n\r\nMultimedia sering digunakan dalam dunia informatika. Selain dari dunia informatika, multimedia juga diadopsi oleh dunia game, dan juga untuk membuat website. <br> <br>\r\n\r\nMultimedia dimanfaatkan juga dalam dunia pendidikan dan bisnis. <br> <br> Di dunia pendidikan, multimedia digunakan sebagai media pengajaran, baik dalam kelas maupun secara sendiri-sendiri atau otodidak. <br> <br>\r\nDi dunia bisnis, multimedia digunakan sebagai media profil perusahaan, profil produk, bahkan sebagai media kios informasi dan pelatihan dalam sistem e-learning. <br> <br> Pada awalnya multimedia hanya mencakup media yang menjadi konsumsi indra penglihatan (gambar diam, teks, gambar gerak video, dan gambar gerak rekaan/animasi), dan konsumsi indra pendengaran (suara) dan juga berupa ( berwujud). <br> <br> Dalam perkembangannya multimedia mencakup juga kinetik (gerak) dan bau yang merupakan konsumsi indra penciuman. <br> <br> Multimedia mulai memasukkan unsur kinetik sejak diaplikasikan pada pertunjukan film 3 dimensi yang digabungkan dengan gerakan pada kursi tempat duduk penonton. <br> <br> Kinetik, dan film 3 dimensi membangkitkan sense realistis. <br> <br> Bau mulai menjadi bagian dari multimedia sejak ditemukan teknologi reproduksi bau melalui telekomunikasi. <br> <br> Dengan perangkat input pendeteksi bau, seorang operator dapat mengirimkan hasil digitizing bau tersebut melalui internet. <br> <br> Komputer penerima harus menyediakan perangkat output berupa mesin reproduksi bau. <br> <br> Mesin reproduksi bau ini mencampurkan berbagai jenis bahan bau yang setelah dicampur menghasilkan output berupa bau yang mirip dengan data yang dikirim dari internet. <br> <br> Dengan menganalogikan dengan printer, alat ini menjadikan feromon-feromon bau sebagai pengganti tinta. Output bukan berupa cetakan melainkan aroma. <br> '),
(5, 'ferny', 'SISTEM INFORMASI', 'Sistem informasi yaitu suatu sistem yang menyediakan informasi untuk manajemen dalam mengambil keputusan dan juga untuk menjalankan operasional perusahaan, di mana sistem tersebut merupakan kombinasi dari orang-orang, teknologi informasi dan prosedur-prosedur yang  tergorganisasi. <br> <br>Biasanya suatu perusahan atau badan usaha menyediakan semacam informasi yang berguna bagi manajemen. <br> <br> Sebagai contoh: <br> Perusahaan toko buku mempunyai sistem informasi yang menyediakan informasi penjualan buku-buku setiap harinya, serta stock buku-buku yang tersedia, dengan informasi tersebut, seorang manajer bisa membuat kebutusan, stock buku apa yang harus segera mereka sediakan untuk toko buku mereka, manajer juga bisa tahu buku apa yang paling laris dibeli konsumen, sehingga mereka bisa memutuskan buku tersebut jumlah stocknya lebih banyak dari buku lainnya. <br> <br>\r\nkomponen sistem informasi <br> <br>\r\n1. komponen input input merupakan data yang masuk ke dalam sistem informasi. <br> <br> 2. komponen model kombinasi prosedur,logika,dan model matematika yang memproses data yang tersimpan di basis data dengan cara yang sudah di tentukan untuk menghasilkan keluaran yang diinginkan. <br> <br> 3. komponen output output informasi yang berkualitas dan dokumentasi yang berguna untuk semua tingkatan manajemen serta semua pemakai sistem. <br> <br> 4. komponen teknologi teknologi merupakan alat dalam sistem informasi, teknologi digunakan untuk menerima innput, menjalankan model, minyimpan dan mengakses data, menghasilkan dan mengirimkan output dan memantu pengendalian sistem. <br> <br> 5. komponen basis data merupakan kumpulan data yang saling berhubungan yang tersimpan didlm komputer denganmenggunakan softwre database. <br> <br> 6. komponen kontrol pengendalian yang dirancang untuk menanggulangi gagguan terhadapsistem informasi. <br> <br> Karakter Sistem informasi <br> <br>\r\n1. sistem informsi memiliki komponen yang berupa subsistem yang merupakan elemen-elemen yang lebih kecil yang membentuk sistem informasi tersebut misalnya bagian input, proses, output. Contoh input adalah salesman memasukan data penjualan bulan ini, maka disana terdapat manusia yang melakukan pekerjaan input dengan menggunakan hardware keyboard dan menggunakan interface sebuah aplikasi laporan penjualan yang sudah di sediakan oleh sistem informasi tersebut. <br> <br>\r\n2. ruang lingkup sistem informasi yaitu rung lingkup yang ditentukan dari awal pembuatan yang meupakan garis batas lingkup kerja sistem tersebut sehingga sistem informasi tersebut tidak bersinggungan dengan sistem informasi lainnya. <br> <br>\r\n3. tujuan sistem informasi adalah hal pokok yang harus ditentukan dan dicapai dengan menggunakan sistem informasi tersebut, sebuah informasi dianggap berhasil apabila dapat mencapai tujuan tersebut. <br> <br>\r\n4. lingungan sistem informasi yaitu sesuatu yang berada diluar ruang lingkup sistemm informasi yang dapat mempengaruhi sistem informasi, hal ini urut dipertimbangkan pada saat perencanaann sistem informasi. Sisistem informasi dikembangkan untuk tujuan yang berbeda-beda, tergantung pada kebutuhan bisnis. <br> <br>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
