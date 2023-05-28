<?php
include '../conexion.php';
$MatriculaAlu = $_GET['Id'];
$query = $mysqli->prepare('DELETE FROM alumne WHERE MatriculaAlu = ?');
$query->bind_param('s', $MatriculaAlu);
$query->execute();
$query->close();
$mysqli->close();
header('Location: ../index.php');
exit();