<?php 
include "koneksi.php";

$query = "SELECT heroes.id,heroes.heroes_name,types.types_name FROM heroes LEFT JOIN types ON heroes.id_type=types.id_type";
$ex = mysqli_query($koneksi,$query);

echo "<a href='addHeroes.php'>Add Hero</a>";
echo "<table border=1>";
echo "<tr>
<th>Hero Name</th>
<th>Hero Type</th>
<th>Action</th>
</tr>";

while($r = mysqli_fetch_array($ex)){
	echo "<tr><td>".$r['heroes_name']."</td>";
	echo "<td>".$r['types_name']."</td>";
	echo "<td><a href='editHero.php?id=".$r['id']."'> Edit </a>";
	echo "<a href='deleteHero.php?id=".$r['id']."'> Delete </a>";
	echo "</td></tr>";
}

echo "</table>";


 ?>