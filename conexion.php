<?php
// $ $mysqli=new mysqli('172.24.16.180','root','','gestio');
$mysqli=new mysqli('localhost','root','','gestio');
// $mysqli->close();
if($mysqli->connect_errno){
    printf("Error en la conexión:%s\n",$mysqli->connect_error);
    exit();
}