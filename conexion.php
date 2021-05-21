<?php

$server = 'localhost';
$user = 'root';
$pass = '';
$db = 'libreria';

$conexion = mysqli_connect($server,$user,$pass,$db);

if(!$conexion)
{
    echo "La conexión fallo";
}


?>