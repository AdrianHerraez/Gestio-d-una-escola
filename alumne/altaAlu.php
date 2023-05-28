<?php
include_once "../conexion.php";
include_once "../header.php";
$nombre = $_POST['Nombre'];
$apellido = $_POST['Apellido'];
$email = $_POST['Email'];
$password = $_POST['Password'];
$telfAlu = $_POST['TelfAlu'];
$matricula = $_POST['Matricula'];
$direccion = $_POST['Direccion'];
$cp = $_POST['CP'];
$nomTutor1 = $_POST['Nomtutor1'];
$nomTutor2 = $_POST['Nomtutor2'];
$genero = $_POST['Genero'];

$query=$mysqli->prepare('INSERT INTO alumne (MatriculaAlu, nomAlu, cognomsAlu, MailAlu, PwdAlu, TelfAlu, DireccioAlu, CPAlu, NomTutor1Alu, NomTutor2Alu, GenereAlu) VALUES (?,?,?,?,?,?,?,?,?,?,?)');
$query->bind_param('issssssssss',$matricula, $nombre, $apellido, $email, $password, $telfAlu, $direccion, $cp, $nomTutor1, $nomTutor2, $genero);
$query->execute();
header('Location:../index.php');
?>