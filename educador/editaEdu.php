<?php
include '../conexion.php';
$IdEdu = $_POST['Id'];
$nombre = $_POST['Nombre'];
$apellido = $_POST['Apellido'];
$email = $_POST['Email'];
$telf = $_POST['TelfEdu'];
$password = $_POST['Password'];
$salario = $_POST['SalariEdu'];
$data = $_POST['DataContracteEdu'];
$permisos = $_POST['PermisosEdu'];
$IdDepEdu = $_POST['IdDepEdu'];

$query = $mysqli->prepare('UPDATE educador SET NomEdu=?, CognomsEdu=?, MailEdu=?, TelfEdu=?, PwdEdu=?, SalariEdu=?, DataContracteEdu=?, PermisosEdu=?, IdDepEdu=? WHERE IdEdu=?');
$query->bind_param('ssssssssii', $nombre, $apellido, $email, $telf, $password, $salario, $data, $permisos, $IdDepEdu, $IdEdu);
$query->execute();
header('Location: ../index.php');
?>