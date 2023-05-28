<!doctype html>
<html lang="es">

<head>
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Spartan:wght@300;600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ffec4ec2ed.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/styles.css" />
    <link rel="shortcut icon" href="fav.png" type="image/x-icon">
    <title>Registrar un usuario - Alumno | SchoolTracker</title>
    <meta charset="utf8">
    <style>
      
    </style>
</head>
<?php
include '../conexion.php';
?>
<body style="width: 100%;" class="bg-dark wii">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8 bg-dark d-flex flex-column align-items-center">
                <div class="p-4 mb-auto text-center">
                    <a href="/"><img src="Logo.png" class="img-fluid" /></a>
                </div>
                <div class="px-4 py-3 w-100">
                    <h1 class="font-weight-bold mb-4 text-center">Crear una cuenta - Alumno</h1>
                    <form class="mb-4" method="POST" action="altaAlu.php">
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
                            <label for="exampleInputPassword" class="form-label font-weight-bold">ContraseÃ±a</label>
                            <input type="password" class="form-control bg-dark-x border-0" placeholder="Ingresa tu contraseÃ±a" id="exampleInputPassword" name="Password" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputConfirmPassword" class="form-label font-weight-bold">Confirmar ContraseÃ±a</label>
                            <input type="password" class="form-control bg-dark-x border-0" placeholder="Confirmar tu contraseÃ±a" id="exampleInputConfirmPassword" name="ConfirmPassword" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPhone" class="form-label font-weight-bold">TelÃ©fono</label>
                            <input type="tel" class="form-control bg-dark-x border-0" placeholder="Ingresa tu telÃ©fono" id="exampleInputPhone" name="TelfAlu" maxlength="9" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputMatricula" class="form-label font-weight-bold">MatrÃ­cula</label>
                            <input type="text" class="form-control bg-dark-x border-0" placeholder="Ingresa la matrÃ­cula" id="exampleInputMatricula" name="Matricula" maxlength="7" required>
                        </div>
                        <script>
                            document.getElementById('exampleInputMatrÃ­cula').addEventListener('input', function() {
                                var maxLength = 7; 
                                if (this.value.length > maxLength) {
                                    this.value = this.value.slice(0, maxLength);
                                }
                            });
                        </script>
			            <div class="mb-3">
                            <label for="exampleInputPermissions" class="form-label font-weight-bold">DirecciÃ³n</label>
                            <input type="text" class="form-control bg-dark-x border-0" placeholder="Ingresa la direcciÃ³n" id="Direccion" name="Direccion" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPermissions" class="form-label font-weight-bold">CP</label>
                            <input type="text" class="form-control bg-dark-x border-0" placeholder="Ingresa el codigo postal" id="CP" name="CP" maxlength="5" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputDepartment" class="form-label font-weight-bold">Nom tutor 1</label>
                            <input type="text" class="form-control bg-dark-x border-0" placeholder="Ingresa el nombre del primer tutor" id="exampleInputDepartment" name="Nomtutor1" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputDepartment" class="form-label font-weight-bold">Nom Tutor 2</label>
                            <input type="text" class="form-control bg-dark-x border-0" placeholder="Ingresa el nombre del segundo tutor" id="exampleInputDepartment" name="Nomtutor2" required>
                        </div>
			            <div class="mb-3">
                        <label for="exampleInputGender" class="form-label font-weight-bold">GÃ©nero</label>
                        <select class="form-control bg-dark-x border-0" id="exampleInputGender" name="Genero" required>
                            <option value="M">M</option>
                            <option value="F">F</option>
                        </select>
			            </div>
			<button type="submit" class="btn btn-primary w-100">Registrarse</button>
                    </form>
                </div>
                <div class="text-center px-4 py-3 w-100">
                    <p class="mb-0">Â¿Ya tienes una cuenta?</p> <a href="/index.php" class="text-light font-weight-bold text-decoration-none">Inicia sesiÃ³n</a>
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
