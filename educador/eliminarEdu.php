<?php
include 'conexion.php';
  $IdEdu = $_GET['IdEdu'];
  $IdEduMod = $_GET['IdEduMod']; {
  $query = $mysqli->prepare('DELETE FROM educador where IdEdu = ? ');
  $query->bind_param('i', $IdEdu);
  $query->execute();
  $query = $mysqli->prepare('DELETE FROM edumod where IdEduMod = ? ');
  $query->bind_param('i', $IdEduMod);
  $query->execute();
}
header('Location:professor.php');
?>