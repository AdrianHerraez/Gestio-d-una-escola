<?php
include '/conexion.php';
$MatriculaAluNota = $_GET['MatriculaAluNota'];
$MatriculaAlu = $_GET['MatriculaAlu']; {
  $query = $mysqli->prepare('DELETE FROM alumne where MatriculaAlu = ? ');
  $query->bind_param('i', $MatriculaAlu);
  $query->execute();
  $query = $mysqli->prepare('DELETE FROM nota where MatriculaAluNota= ? ');
  $query->bind_param('i', $MatriculaAluNota);
  $query->execute();
}
header('Location:professor.php');
?>