<?php
include '../conexion.php';
$IdEdu = $_GET['Id'];
$nombre = $_POST['Nombre'];
$apellido = $_POST['Apellido'];
$email = $_POST['Email'];
$telf = $_POST['TelfEdu'];
$password = $_POST['Password'];
$salario = $_POST['SalariEdu'];
$data = $_POST['DataContracteEdu'];
$permisos = $_POST['PermisosEdu'];
$IdDepEdu = $_POST['IdDepEdu'];

$query=$mysqli->prepare('UPDATE educador SET NomEdu,TelfEdu,PwdEdu,MailEdu,DataContracteEdu,PermisosEdu,IdDepEdu WHERE IdEdu=?');
$query->bind_param('ssssssssi',$nombre,$apellido,$email,$telf,$password,$salario,$data,$permisos,$IdDepEdu);
$query->execute();
header('Location: professor.php');

?>