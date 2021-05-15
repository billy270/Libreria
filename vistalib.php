<!doctype html>
<html lang="en">
    <head>
        <title> Libros </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
    <div class="container mt-3">
        <div class="row">

            <?php
            include_once "conexion.php";
            $conexion = mysqli_connect($server,$user,$pass,$db);
            if ($conexion != true) {
                die("Error de conexion " . mysqli_connect_error());
            }
            $sql = "SELECT `portada`, `libro`, `genero`, `autor` FROM `libros`";
            $resultSet = mysqli_query($conexion, $sql);
            while ($row = mysqli_fetch_row($resultSet)) {
                ?>
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="card">
                        <img src="img/<?php echo $row[0]; ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $row[1] ?></h5>
                            <p class="card-text">
                                Autor: <?php echo $row[3]; ?> 
                                <br>
                                Genero:<?php echo $row[2]; ?>
                            </p>
                            
                        </div>
                    </div>
                </div>
            <?php
            }
            ?>
        </div>
    </div>
    </body>
</html>