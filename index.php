<?php
session_start();
include_once "header.php";
include_once "conexion.php";

if (isset($_POST['Mail']) && isset($_POST['Pwd'])) { // Comprobar que se han enviado datos en el formulario
    $_SESSION['Mail'] = $_POST['Mail'];
    $_SESSION['Pwd'] = $_POST['Pwd'];
}

if (isset($_SESSION['Mail']) && isset($_SESSION['Pwd'])) { // Comprobar que las sesiones no están vacías

    $query = "SELECT * FROM educador WHERE MailEdu = ?";
    $stmt = $mysqli->prepare($query);
    $stmt->bind_param("s", $_SESSION['Mail']);
    $stmt->execute();
    $validacio = $stmt->get_result()->fetch_assoc();

    if ($validacio && $_SESSION['Pwd'] === $validacio['PwdEdu']) {
        // El usuario es un profesor
        // Realizar las acciones necesarias para los profesores
    } else {
        $query = "SELECT * FROM alumne WHERE MailAlu = ?";
        $stmt = $mysqli->prepare($query);
        $stmt->bind_param("s", $_SESSION['Mail']);
        $stmt->execute();
        $validacio = $stmt->get_result()->fetch_assoc();

        if ($validacio && $_SESSION['Pwd'] === $validacio['PwdAlu']) {
            // El usuario es un alumno
            // Realizar las acciones necesarias para los alumnos
        } else {
            // Las credenciales no coinciden con ninguna cuenta de profesor o alumno
            header('Location: logout.php');
            exit();
        }
    }

} else {
    header('Location: logout.php');
    exit();
}


if (!isset($_POST['bromota'])) {
    $_POST['bromota'] = '';
}

$query = "SELECT * FROM educador";
$educador = $mysqli->query($query);

if (!isset($_GET['tabla'])) {
    $_GET['tabla'] = "alumne";
}
$tabla = $_GET['tabla'];

if (!isset($_GET['filtro'])) { //
    if ($tabla=='alumne') {
        $_GET['filtro'] = 'MatriculaAlu';
    }
    if ($tabla=='educador') {
        $_GET['filtro'] = 'IdEdu';
    }
    if ($tabla=='curs') {
        $_GET['filtro'] = 'IdCurs';
    }
    if ($tabla=='aula') {
        $_GET['filtro'] = 'IdAula';
    }
    if ($tabla=='departament') {
        $_GET['filtro'] = 'IdDep';
    }
}

$query = "SELECT * FROM $tabla WHERE {$_GET['filtro']} LIKE ?";
$stmt = $mysqli->prepare($query);
$bromota = '%' . $_POST['bromota'] . '%'; // Variable adicional para pasar por referencia
$stmt->bind_param("s", $bromota);
$stmt->execute();
$resultado = $stmt->get_result();

$columnas = $resultado->fetch_fields();


// ------------------------------------------------------------- INCLUDES -------------------------------------------------------------

include_once "navbar.php";

if ($_GET['tabla'] == 'educador') {
    include_once "educador/educador.php";
}
if ($_GET['tabla'] == 'alumne') {
    include_once "alumne/alumne.php";
}
if ($_GET['tabla'] == 'curs') {
    include_once "curs/curs.php";
}
if ($_GET['tabla'] == 'aula') {
    include_once "aula/aula.php";
}
if ($_GET['tabla'] == 'departament') {
    include_once "departament/departament.php";
}

include_once "footer.php";

?>
</body>
</html>