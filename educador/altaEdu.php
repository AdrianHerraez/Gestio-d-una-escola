<?php
include_once "../conexion.php";
$nombre = $_POST['Nombre'];
$apellido = $_POST['Apellido'];
$email = $_POST['Email'];
$telf = $_POST['TelfEdu'];
$password = $_POST['Password'];
$salario = $_POST['SalariEdu'];
$data = $_POST['DataContracteEdu'];
$permisos = $_POST['PermisosEdu'];
$IdDepEdu = $_POST['IdDepEdu'];

$query=$mysqli->prepare('INSERT INTO educador (nomEdu, cognomsEdu, MailEdu, PwdEdu, TelfEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES (?,?,?,?,?,?,?,?,?);');
$query->bind_param('ssssssssi',$nombre, $apellido, $email, $password, $telf, $salario, $data, $permisos, $IdDepEdu);
$query->execute();
header('Location:../index.php');

?>
