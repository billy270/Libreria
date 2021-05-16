<?php
$server = 'localhost';
$user = 'root';
$pass = '';
$db = 'libreria';

$conexion = mysqli_connect($server,$user,$pass,$db);
$output = '';
if(isset($_POST["query"]))
{
	$search = mysqli_real_escape_string($conexion, $_POST["query"]);
	$query = "
	SELECT * FROM libros
	WHERE ISBM LIKE '%".$search."%'
	OR Libro LIKE '%".$search."%' 
	OR Genero LIKE '%".$search."%' 
	OR Autor LIKE '%".$search."%' 
	OR Disponible LIKE '%".$search."%'
	";
}
else
{
	$query = "
	SELECT * FROM libros ORDER BY ISBM";
}
$result = mysqli_query($conexion, $query);
if(mysqli_num_rows($result) > 0)
{
	$output .= '<div class="table-responsive">
					<table class="table table bordered">
						<tr>
							<th>ISBM Name</th>
							<th>Libro</th>
							<th>Genero</th>
							<th>Autor</th>
							<th>Disponible</th>
						</tr>';
	while($row = mysqli_fetch_array($result))
	{
		$output .= '
			<tr>
				<td>'.$row["ISBM"].'</td>
				<td>'.$row["Libro"].'</td>
				<td>'.$row["Genero"].'</td>
				<td>'.$row["Autor"].'</td>
				<td>'.$row["Disponible"].'</td>
			</tr>
		';
	}
	echo $output;
}
else
{
	echo 'Data Not Found';
}
?>