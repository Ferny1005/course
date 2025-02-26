<?php 
include_once("koneksi.php");
		$result = mysqli_query($mysqli, "SELECT * FROM materi ORDER BY id DESC");
			?>


<html lang="en">
<head>
<title>Belajar Bahasa Inggris</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Lingua project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

<div class="super_container">

	<!-- Header -->

	<header class="header">
			
<?php 
	
	$con = mysqli_connect('localhost','root','','course') OR die (mysqli_connect_error());

	$perpage = 1;
	$page = isset($_GET['halaman']) ? (int)$_GET['halaman'] : 1;
	$start = ($page > 1 ) ? ($page * $perpage ) - $perpage : 0 ;

	$sql = mysqli_query($con, "SELECT * FROM materi LIMIT $start, $perpage");

	$Hasil = mysqli_query($con, "SELECT * FROM materi");
	$total = mysqli_num_rows($Hasil);

	$pages = ceil($total/$perpage);
 ?>


	<?php while($data = mysqli_fetch_array($sql)){ ?>
	<!-- Header Content -->
		
		<div class="header_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_content d-flex flex-row align-items-center justify-content-start">
							<div class="logo_container mr-auto">
								<a href="#">
									<div class="logo_text">introductions</div>
								</a>
							</div>
							<nav class="main_nav_contaner">
								<ul class="main_nav">
									<li class="active"><a href="index.php">Introduction</a></li>
								
									<li><?php for ($i=1; $i <=$pages; $i++) { ?>
	
	<a href="?halaman=<?php echo $i; ?>"><?php echo $i; ?></a>

<?php } ?>
</li>
									</ul>
							</nav>
							
								<!-- Hamburger -->

								<div class="user"><a href="login.php"><i class="fa fa-user" aria-hidden="true"></i></a></div>
								<div class="hamburger menu_mm">
									<i class="fa fa-bars menu_mm" aria-hidden="true"></i>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</header>

	
	<!-- Home -->

	<div class="home">
		<div class="home_background"></div>
		<div class=malasngoding-slider>
		<div class=isi-slider>
			<img src="gambar/aa.jpg" alt="Gambar 1">
			<img src="gambar/gambar2.jpeg" alt="Gambar 2">
			<img src="gambar/123.jpg" alt="Gambar 3">
		</div>
	</div>
		<div class="home_content">
			<div class="container">
				<div class="row">
					<div class="col text-center">
	
						<h1 class="home_title">  
							
		<tr>
			<?php echo $data['judul'] ?>
							</h1>
			<h3><?php echo $data['admin'] ?></h3>	

					</div>
				</div>
			</div>
		</div>
	</div> 
	<div style="background-image: url(images/haha.jpg); width: 1350;">
		<center><h4><?php echo $data['materi'] ?></h4></center>
	</div>
      

	<!-- Footer -->






		</tr>
	<?php } ?>

























	<footer class="footer">
		<div class="footer_body">
			<div class="container">
				<div class="row">

					<!-- Newsletter -->
					<div class="col-lg-3 footer_col">
						<div class="newsletter_container d-flex flex-column align-items-start justify-content-end">
							<div class="footer_logo mb-auto"><a href="#">learning instructions</a></div>
							<div class="footer_title">Subscribe</div>
							<form action="#" id="newsletter_form" class="newsletter_form">
								<input type="email" class="newsletter_input" placeholder="Email" required="required">
								<button class="newsletter_button"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
							</form>
						</div>
					</div>

					<!-- About -->
					<div class="col-lg-2 offset-lg-3 footer_col">
						<div>
							<div class="footer_title">About Us</div>
							<ul class="footer_list">
								<li><a href="#">Courses</a></li>
								<li><a href="#">Team</a></li>
								<li><a href="#">Brand Guidelines</a></li>
								<li><a href="#">Jobs</a></li>
								<li><a href="#">Advertise with us</a></li>
								<li><a href="#">Press</a></li>
								<li><a href="#">Contact us</a></li>
							</ul>
						</div>
					</div>

					<!-- Help & Support -->
					<div class="col-lg-2 footer_col">
						<div class="footer_title">Help & Support</div>
						<ul class="footer_list">
							<li><a href="#">Discussions</a></li>
							<li><a href="#">Troubleshooting</a></li>
							<li><a href="#">Duolingo FAQs</a></li>
							<li><a href="#">Schools FAQs</a></li>
							<li><a href="#">Duolingo English Test FAQs</a></li>
							<li><a href="#">Status</a></li>
						</ul>
					</div>

					<!-- Privacy -->
					<div class="col-lg-2 footer_col clearfix">
						<div>
							<div class="footer_title">Privacy & Terms</div>
							<ul class="footer_list">
								<li><a href="#">Community Guidelines</a></li>
								<li><a href="#">Terms</a></li>
								<li><a href="#">Brand Guidelines</a></li>
								<li><a href="#">Privacy</a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>

	</footer>
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/custom.js"></script>
</body>
</html>