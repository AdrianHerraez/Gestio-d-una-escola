<?php
include_once "../conexion.php";

$query = $mysqli->prepare('SELECT * FROM educador WHERE IdEdu = ?');
$query->bind_param('i', $_GET["id"]);
$query->execute();
$result = $query->get_result();

if ($result->num_rows > 0) {
    echo "<div class='container'>";
    echo "<table class='table'>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr><th>Nombre:</th><td>" . $row['NomEdu'] . "</td></tr>";
        echo "<tr><th>Apellido:</th><td>" . $row['CognomsEdu'] . "</td></tr>";
        echo "<tr><th>Email:</th><td>" . $row['MailEdu'] . "</td></tr>";
        echo "<tr><th>Teléfono:</th><td>" . $row['TelfEdu'] . "</td></tr>";
        echo "<tr><th>Password:</th><td>" . $row['PwdAlu'] . "</td></tr>";
        echo "<tr><th>ID:</th><td>" . $row['IdEdu'] . "</td></tr>";
        echo "<tr><th>Salario:</th><td>" . $row['SalariEdu'] . "</td></tr>";
        echo "<tr><th>Departamento:</th><td>" . $row['IdDepEdu'] . "</td></tr>";
        echo "<tr><th>Fecha contratación:</th><td>" . $row['DataContracteEdu'] . "</td></tr>";
    }
    echo "</table>";
    echo "</div>";
} else {
    echo "No se encontraron resultados para el ID seleccionado.";
}