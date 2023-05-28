<?php
session_start();
session_destroy();
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Spartan:wght@300;600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ffec4ec2ed.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="icon" type="image/x-icon" href="/images/favicon.ico">
    <link rel="stylesheet" href="style.css"/>
    <title>SCHOOL TRACKER +</title>
</head>

<body class="bg-dark">
    <section>
        <div class="row g-0">
            <div class="col-lg-7 d-none d-lg-block">
                <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item img-1 min-vh-100 active">
                            <div class="carousel-caption d-none d-md-block">
                                <h5 class="font-weight-bold">La más potente del mercado</h5>
                                <a class="text-muted text-decoration-none">Visita nuestra tienda</a>
                            </div>
                        </div>
                        <div class="carousel-item img-2 min-vh-100">
                            <div class="carousel-caption d-none d-md-block">
                                <h5 class="font-weight-bold">Descubre la nueva generación</h5>
                                <a class="text-muted text-decoration-none">Visita nuestra tienda</a>
                            </div>
                        </div>
                        <div class="carousel-item img-3 min-vh-100">
                            <div class="carousel-caption d-none d-md-block">
                                <h5 class="font-weight-bold">Descubre la nueva generación</h5>
                                <a class="text-muted text-decoration-none">Visita nuestra tienda</a>
                            </div>
                        </div>
                        <div class="carousel-item img-4 min-vh-100">
                            <div class="carousel-caption d-none d-md-block">
                                <h5 class="font-weight-bold">Descubre la nueva generación</h5>
                                <a class="text-muted text-decoration-none">Visita nuestra tienda</a>
                            </div>
                            <div class="carousel-item img-5 min-vh-100">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5 class="font-weight-bold">Descubre la nueva generación</h5>
                                    <a class="text-muted text-decoration-none">Visita nuestra tienda</a>
                                </div>
                            </div>
                            <div class="carousel-item img-6 min-vh-100">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5 class="font-weight-bold">Descubre la nueva generación</h5>
                                    <a class="text-muted text-decoration-none">Visita nuestra tienda</a>
                                </div>
                            </div>
                            <div class="carousel-item img-7 min-vh-100">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5 class="font-weight-bold">Descubre la nueva generación</h5>
                                    <a class="text-muted text-decoration-none">Visita nuestra tienda</a>
                                </div>
                            </div>
                            <div class="carousel-item img-8 min-vh-100">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5 class="font-weight-bold">Descubre la nueva generación</h5>
                                    <a class="text-muted text-decoration-none">Visita nuestra tienda</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="col-lg-5 bg-dark d-flex flex-column align-items-end min-vh-100">
                <div class="px-lg-5 pt-lg-4 pb-lg-3 p-4 mb-auto w-100">
                    <img src="Logo.svg" class="img-fluid" />
                </div>
                <div class="align-self-center w-100 px-lg-5 py-lg-4 p-4">
                    <h1 class="font-weight-bold mb-4">Bienvenido de vuelta</h1>
                    <form class="mb-5" action="index.php" method="POST">
                        <div class="mb-4">
                            <label for="exampleInputEmail1" class="form-label font-weight-bold">Email</label>
                            <input type="email" class="form-control bg-dark-x border-0" id="Mail" name="Mail" placeholder="Ingresa tu email" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-4">
                            <label for="exampleInputPassword1" class="form-label font-weight-bold">Contraseña</label>
                            <input type="password" class="form-control bg-dark-x border-0 mb-2" id="Pwd" name="Pwd" placeholder="Ingresa tu contraseña">
                            <a href="" id="emailHelp" class="form-text text-muted text-decoration-none">¿Has olvidado tu contraseña?</a>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Iniciar sesión</button>
                    </form>

                </div>
                <div class="text-center px-lg-5 pt-lg-3 pb-lg-4 p-4 mt-auto w-100">
                    <p class="d-inline-block mb-0">¿Todavia no tienes una cuenta?</p> <a href="" class="text-light font-weight-bold text-decoration-none">Crea una ahora</a>
                </div>
            </div>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
</body>

</html>