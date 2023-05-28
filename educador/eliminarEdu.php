<?php
include '../conexion.php';
  $IdEdu = $_GET['Id'];{
  $query = $mysqli->prepare('DELETE FROM educador where IdEdu = ?;');
  $query->bind_param('i', $IdEdu);
  $query->execute();
}
header('Location:../index.php');
?>