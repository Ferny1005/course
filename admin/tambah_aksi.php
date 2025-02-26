<?php 
// koneksi database
include 'koneksi.php';

// menangkap data yang di kirim dari form
$admin = $_POST['admin'];
$judul = $_POST['judul'];
$materi = $_POST['materi'];

// menginput data ke database
mysqli_query($koneksi,"insert into materi values('','$admin','$judul','$materi')");

// mengalihkan halaman kembali ke index.php
header("location:index.php");

?>