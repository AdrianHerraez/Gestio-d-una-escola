<?php
include_once "../conexion.php";
$MatriculaAlu = $_POST['Matricula'];
$nombre = $_POST['Nombre'];
$apellido = $_POST['Apellido'];
$email = $_POST['Email'];
$password = $_POST['Password'];
$telfAlu = $_POST['TelfAlu'];
$matricula = $_POST['MatriculaAlu'];
$direccion = $_POST['Direccion'];
$cp = $_POST['CP'];
$nomTutor1 = $_POST['Nomtutor1'];
$nomTutor2 = $_POST['Nomtutor2'];
$genero = $_POST['Genero'];


$query=$mysqli->prepare('UPDATE alumne SET NomAlu=?, CognomsAlu=?, MailAlu=?, TelfAlu=?, PwdAlu=?, DireccioAlu=?, CPAlu=?, NomTutor1Alu=?, NomTutor2Alu=?, GenereAlu=? WHERE MatriculaAlu=?');
$query->bind_param('ssssssssssi', $nombre, $apellido, $email, $telfAlu, $password, $direccion, $cp, $nomTutor1, $nomTutor2, $genero, $MatriculaAlu);
$query->execute();
header('Location: ../index.php');
?>