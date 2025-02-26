<!DOCTYPE html>
<html>
<head>
	<title>Edit Data Materi</title>
</head>
<body>
 
	<a href="index.php">Back</a>
	<br/>
	<br/>
	<h3>EDIT MATERI</h3>
 
	<?php
	include 'koneksi.php';
	$id = $_GET['id'];
	$data = mysqli_query($koneksi,"select * from materi where id='$id'");
	while($d = mysqli_fetch_array($data)){
		?>
		<form method="post" action="update.php">
			<table>
				
				<tr>
					<td><input type="hidden" name="id" value="<?php echo $id; ?>"></td>
				</tr>
				<tr>
					<td><input type="hidden" name="admin" value="<?php echo $d['admin']; ?>"></td>
				</tr>
				<tr>
					<td>Judul</td>
					<td><input type="text" name="judul" value="<?php echo $d['judul']; ?>"></td>
				</tr>
				<tr>
					<td>Materi</td>
					<td><input type="text" name="materi" value="<?php echo $d['materi']; ?>"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="SIMPAN"></td>
				</tr>		
			</table>
		</form>
		<?php 
	}
	?>
 
</body>
</html>