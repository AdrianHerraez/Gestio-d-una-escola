<?php
include_once "../conexion.php";

$query = $mysqli->prepare('SELECT * FROM educador
WHERE IdEdu = ?');
$query->bind_param('i', $_GET["id"]);
$query->execute();
$result = $query->get_result();

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCHOOL TRACKER +</title>
    <link rel="icon" type="image/x-icon" href="/images/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="funciones.js"></script>

    <style>
        ul {
            list-style-type: none;
        }

        img {
            border-radius: 50%;
            height: 405px;
            background-color: grey;
            width: 405px;
            object-fit: cover;
        }

        .contenedor {
            background-color: #2f6997;
            color: white;
            margin-left: 30%;
            margin-right: 30%;
            padding: 1%;
            margin-top: 1%;
        }

        h1 {
            margin-bottom: 0;
        }
    </style>

</head>

<body style="margin: 0px;">

    <nav class="navbar navbar-dark navbar-expand-lg sticky-top bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="../index.php">School Tracker +</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <ul class="navbar-nav ms-auto justify-content-end">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Cuenta</a>
                    <ul class="dropdown-menu dropdown-menu-end">
                        <li><a class="dropdown-item" href="#">Nombre</a></li>
                        <li><a class="dropdown-item" href="#">Mail</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Cambiar Contraseña</a></li>
                        <li><a class="dropdown-item" href="#">Cerrar Sesión</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    <div style="text-align: center;">
        <div>
            <?php
            while ($row = $result->fetch_assoc()) {
                echo "<h1>" . $row['NomEdu'] . "</h1>";
                echo "<h5>" . $row['CognomsEdu'] . "</h5>";
                echo '<img src="' . $row['FotoEdu'] . '" alt="Imagen">';
                echo "<div class='contenedor'>";
                echo "<ul class='orden'>";
                echo "<li><h3>Información sobre " . $row['NomEdu'] . "</h3></li>";
                echo "<li> Apellidos: " . $row['CognomsEdu'] . "</li>";
                echo "<li> Teléfono: " . $row['TelfEdu'] . "</li>";
                echo "<li> Salari: " . $row['SalariEdu'] . "</li>";
                echo "<li> Permisos: " . $row['PermisosEdu'] . "</li>";
                echo "<li> Fecha de contratación: " . $row['DataContracteEdu'] . "</li>";
                echo "</ul>";
                echo "</div>";
                break;
            }
            ?>
        </div>

        <div class="container">
            <h1>Asignaturas</h1>
            <ul class="list-group">
                <?php
                $query = $mysqli->prepare('SELECT edumod.IdEduMod, modul.NomMod
                FROM edumod 
                LEFT JOIN modul ON edumod.IdMod = modul.IdMod WHERE edumod.IdEduMod = ?');
                $query->bind_param('i', $_GET["id"]);
                $query->execute();
                $result = $query->get_result();
                ?>


                <?php while ($row = $result->fetch_assoc()) : ?>
                    <li class="list-group-item"><strong><?php echo "Asignatura: " . $row['NomMod']; ?></strong></li>
                <?php endwhile; ?>

            </ul>
        </div>

    </div>
</body>

</html>