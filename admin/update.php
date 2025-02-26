<?php 
// koneksi database
include 'koneksi.php';

// menangkap data yang di kirim dari form
$id = $_POST['id'];
$admin = $_POST['admin'];
$judul = $_POST['judul'];
$materi = $_POST['materi'];
// update data ke database
mysqli_query($koneksi,"update materi set admin='$admin',judul='$judul',materi='$materi' where id='$id'");

// mengalihkan halaman kembali ke index.php
header("location:index.php");

?>