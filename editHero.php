<?php 

include "koneksi.php";
$id = $_GET['id'];
$q = "SELECT * FROM heroes WHERE id='$id'";
$ex = mysqli_query($koneksi,$q);
$r = mysqli_fetch_array($ex);

?>
<form action="#" method="post">
	Nama Hero : <input type="text" name="nama_hero" value="<?php echo $r['heroes_name'] ?>"/><br>
	Select Type : <select name="type_hero" id="typehero" value="<?php echo $r['id_type'] ?>">
		<option value="1">Strength</option>
		<option value="2">HP</option>
		<option value="3">Agility</option>
	</select><br>
	<input type="submit" name="bok" value="Edit">
</form>

<?php 
if (isset($_POST['bok'])) {
	$namahero = $_POST['nama_hero'];
	$typehero = $_POST['type_hero'];
	$q = "UPDATE heroes SET heroes_name='$namahero', id_type='$typehero' WHERE id='$id'";
	mysqli_query($koneksi,$q);
	header("location:index.php");
}

 ?>