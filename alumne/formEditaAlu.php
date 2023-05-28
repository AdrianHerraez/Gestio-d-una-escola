<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Spartan:wght@300;600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ffec4ec2ed.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="icon" type="image/x-icon" href="/images/favicon.ico">
    <link rel="stylesheet" href="style.css"/>
    <title>Editar un usuario - Alumno | SchoolTracker +</title>
</head>
<?php
                    include_once "conexion.php";
                    $MatriculaAlu = $_GET['MatriculaAlu'];
                    $query = $mysqli->prepare('SELECT * FROM alumne WHERE MatriculaAlu=?');
                    $query->bind_param('i', $MatriculaAlu);
                    $query->execute();
                    $res = $query->get_result();
                    $mascota = $res->fetch_assoc();
                    ?>
<body style="width: 100%;" class="bg-dark wii">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8 bg-dark d-flex flex-column align-items-center">
                <div class="p-4 mb-auto text-center">
                    <img src="Logo.png" class="img-fluid" />
                </div>
                <div class="px-4 py-3 w-100">
                    <h1 class="font-weight-bold mb-4 text-center">Editar un usuario - Alumno</h1>
                    <form class="mb-4" method="POST" action="editaAlu.php">
                        <div class="mb-3">
                            <label for="exampleInputContractDate" class="form-label font-weight-bold">Matrícula</label>
                            <input type="text" class="form-control bg-dark-x border-0" value="<?php echo $MatriculaAlu ?>" readonly>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputName" class="form-label font-weight-bold">Nombre</label>
                            <input type="text" class="form-control bg-dark-x border-0" id="exampleInputName" placeholder="Ingresa tu Nombre" aria-describedby="nameHelp" name="Nombre" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputName" class="form-label font-weight-bold">Apellido</label>
                            <input type="text" class="form-control bg-dark-x border-0" id="exampleInputName" placeholder="Ingresa tu Apellido" aria-describedby="nameHelp" name="Apellido" required>
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail" class="form-label font-weight-bold">Email</label>
                            <input type="email" class="form-control bg-dark-x border-0" id="exampleInputEmail" placeholder="Ingresa tu email" aria-describedby="emailHelp" name="Email" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword" class="form-label font-weight-bold">Contraseña</label>
                            <input type="password" class="form-control bg-dark-x border-0" placeholder="Ingresa tu contraseña" id="exampleInputPassword" name="Password" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPhone" class="form-label font-weight-bold">Teléfono</label>
                            <input type="tel" class="form-control bg-dark-x border-0" placeholder="Ingresa tu teléfono" id="exampleInputPhone" name="TelfAlu" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPermissions" class="form-label font-weight-bold">Dirección</label>
                            <input type="number" class="form-control bg-dark-x border-0" placeholder="Ingresa los permisos" id="CP" name="CPAlu" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputDepartment" class="form-label font-weight-bold">Nom tutor 1</label>
                            <input type="number" class="form-control bg-dark-x border-0" placeholder="Ingresa el ID de departamento" id="exampleInputDepartment" name="Nomtutor1" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputDepartment" class="form-label font-weight-bold">Nom Tutor 2</label>
                            <input type="number" class="form-control bg-dark-x border-0" placeholder="Ingresa el ID de departamento" id="exampleInputDepartment" name="Nomtutor2" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputDepartment" class="form-label font-weight-bold">Género</label>
                            <input type="number" class="form-control bg-dark-x border-0" placeholder="Ingresa el ID de departamento" id="exampleInputDepartment" name="Genero" required>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Modificar</button>
                    </form>
                </div>
                <div class="text-center px-4 py-3 w-100">
                    <p class="mb-0">¿Ya tienes una cuenta?</p> <a href="/index.php" class="text-light font-weight-bold text-decoration-none">Inicia sesión</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- Popper.js first, then Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mFV5ndtHQ3z9kae4y4bU+aZlTCjOvq6V4mUo5w4isp0l9x" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-2mFcQGg+1qZOqFHFpSmPX5xh8ijBpVWw3hAhaBH5CGZhvc3+OvG2mEtR81gHqkG7" crossorigin="anonymous"></script>
</body>
</html>