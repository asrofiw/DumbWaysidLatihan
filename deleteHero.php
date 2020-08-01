<?php 

include "koneksi.php";
$id = $_GET['id'];
$q = "DELETE FROM heroes WHERE id='$id'";
mysqli_query($koneksi,$q);
header("location:index.php");
?>