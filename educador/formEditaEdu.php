<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Spartan:wght@300;600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ffec4ec2ed.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css" />
    <link rel="shortcut icon" href="fav.png" type="image/x-icon">
    <title>Editar un usuario - Profesor | SchoolTracker</title>
    <meta charset="utf8">
</head>

<body style="width: 100%;" class="bg-dark wii">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8 bg-dark d-flex flex-column align-items-center">
                <div class="p-4 mb-auto text-center">
                    <a href="/"><img src="Logo.png" class="img-fluid" /></a>
                </div>
                <div class="px-4 py-3 w-100">
                    <h1 class="font-weight-bold mb-4 text-center">Editar un usuario - Educador</h1>
                    <?php
                    include_once "../conexion.php";
                    $IdEdu = $_GET['id'];
                    $query = $mysqli->prepare('SELECT * FROM educador WHERE IdEdu = ?');
                    $query->bind_param('i', $IdEdu);
                    $query->execute();
                    $res = $query->get_result();
                    $educador = $res->fetch_assoc();
                    ?>
                    <form class="mb-4" method="POST" action="editaEdu.php">
                        <div class="mb-3">
                            <label for="exampleInputContractDate" class="form-label font-weight-bold">ID</label>
                            <input type="text" class="form-control bg-dark-x border-0" value="<?php echo $educador['IdEdu']?>" name="Id" readonly>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputName" class="form-label font-weight-bold">Nombre</label>
                            <input type="text" class="form-control bg-dark-x border-0" id="exampleInputName" placeholder="<?php echo $educador['NomEdu']?>" value="<?php echo $educador['NomEdu']?>" aria-describedby="nameHelp" name="Nombre" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputName" class="form-label font-weight-bold">Apellido</label>
                            <input type="text" class="form-control bg-dark-x border-0" id="exampleInputName" placeholder="<?php echo $educador['CognomsEdu']?>" value="<?php echo $educador['CognomsEdu']?>" aria-describedby="nameHelp" name="Apellido" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail" class="form-label font-weight-bold">Email</label>
                            <input type="email" class="form-control bg-dark-x border-0" id="exampleInputEmail" placeholder="<?php echo $educador['MailEdu']?>" value="<?php echo $educador['MailEdu']?>" aria-describedby="emailHelp" name="Email" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword" class="form-label font-weight-bold">Contraseña</label>
                            <input type="password" class="form-control bg-dark-x border-0" placeholder="<?php echo $educador['PwdEdu']?>" value="<?php echo $educador['PwdEdu']?>" id="exampleInputPassword" name="Password" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPhone" class="form-label font-weight-bold">Teléfono</label>
                            <input type="tel" class="form-control bg-dark-x border-0" placeholder="<?php echo $educador['TelfEdu']?>" value="<?php echo $educador['TelfEdu']?>" id="exampleInputPhone" name="TelfEdu" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputSalary" class="form-label font-weight-bold">Salario</label>
                            <input type="text" class="form-control bg-dark-x border-0" placeholder="<?php echo $educador['SalariEdu']?>" value="<?php echo $educador['SalariEdu']?>" id="exampleInputSalary" name="SalariEdu" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputContractDate" class="form-label font-weight-bold">Fecha de Contrato</label>
                            <input type="date" class="form-control bg-dark-x border-0" id="exampleInputContractDate" placeholder="<?php echo $educador['DataContracteEdu']?>" value="<?php echo $educador['DataContracteEdu']?>" name="DataContracteEdu" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputDepartment" class="form-label font-weight-bold">ID de Departamento</label>
                            <input type="number" class="form-control bg-dark-x border-0" placeholder="<?php echo $educador['IdDepEdu']?>" value="<?php echo $educador['IdDepEdu']?>" id="exampleInputDepartment" name="IdDepEdu" required>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Modificar</button>
                    </form>
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
