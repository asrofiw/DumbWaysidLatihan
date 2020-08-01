<?php include "koneksi.php"; ?>
<form action="#" method="post">
	Nama Hero : <input type="text" name="nama_hero"/><br>
	Select Type : <select name="type_hero" id="typehero">
		<option value="1">Strength</option>
		<option value="2">HP</option>
		<option value="3">Agility</option>
	</select><br>
	<input type="submit" name="bok" value="Simpan">
</form>
<?php 
if (isset($_POST['bok'])) {
	$namahero = $_POST['nama_hero'];
	$typehero = $_POST['type_hero'];
	$q = "INSERT INTO heroes(heroes_name,id_type) VALUES ('$namahero','$typehero')";
	mysqli_query($koneksi,$q);
	header("location:index.php");
}

 ?>