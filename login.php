<!DOCTYPE HTML>
<html>
<head>
<title>Simple Login Form</title>
<meta charset="UTF-8" />
<meta name="Designer" content="PremiumPixels.com">
<meta name="Author" content="$hekh@r d-Ziner, CSSJUNTION.com">
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/structure.css">
</head>

<body>
	<!-- cek pesan notifikasi -->
	<?php 
	if(isset($_GET['pesan'])){
		if($_GET['pesan'] == "gagal"){
			echo "Login gagal! username dan password salah!";
		}else if($_GET['pesan'] == "logout"){
			echo "Anda telah berhasil logout";
		}else if($_GET['pesan'] == "belum_login"){
			echo "Anda harus login untuk mengakses halaman admin";
		}
	}
	?>
<form class="box login" method="post" action="cek_login.php">
	<fieldset class="boxBody">
	  <label>Username</label>
	  <input type="text" name="username" placeholder="Masukkan username"tabindex="1" required>
	  <label>Password</label>
	  <input type="password" name="password" tabindex="2" required>
	</fieldset>
	<footer>
	  <input type="submit" class="btnLogin" value="Login" tabindex="4">
	</footer>
</form>
<footer id="main">
 
</footer>
</body>
</html>
