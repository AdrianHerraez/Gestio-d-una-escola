<?php
include_once "conexion.php";
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


$query=$mysqli->prepare('UPDATE alumne SET NomAlu,CognomsAlu,MailAlu,TelfAlu,PwdAlu,DireccioAlu,CPAlu,NomTutor1Alu,NomTutor2Alu,GenereAlu WHERE MatriculaAlu=?');
$query->bind_param('ssssssssss',$nombre,$apellido,$email,$telf,$password,$direccio,$cp,$nomTutor1,$nomTutor2,$genero);
$query->execute();
header('Location: professor.php');

?>