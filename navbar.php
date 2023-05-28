<nav class="navbar navbar-dark navbar-expand-lg sticky-top bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">School Tracker +</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="?tabla=alumne">Alumnes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="?tabla=educador">Educadors</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="?tabla=curs">Curs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="?tabla=aula">Aula</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="?tabla=departament">Departament</a>
                </li>
            </ul>
            <form class="d-flex justify-content-center navbar-dark" role="search" method="POST"> <!-- Changed method to "POST" -->
                <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <?php
                            if (isset($_GET['filtro'])) {
                                echo $_GET['filtro'];
                            } else {
                                echo "Filtro";
                            }
                            ?>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <?php
                            foreach ($columnas as $columna) {
                                $params = $_GET;
                                $params['filtro'] = $columna->name;
                                if ($_GET['tabla'] == 'educador') {
                                    $params['tabla'] = 'educador';
                                }
                                $query = http_build_query($params);
                                echo '<li><a class="dropdown-item" href="?' . $query . '">' . $columna->name . '</a></li>';
                            }
                            ?>
                        </ul>
                    </li>
                </ul>
                <input class="form-control me-2" type="search" placeholder="Bromota..." aria-label="Search" name="bromota" value="<?php echo isset($_POST['bromota']) ? $_POST['bromota'] : ''; ?>"> <!-- Changed name to "bromota" and value to $_POST['bromota'] -->
                <!-- Incluir todos los parámetros pasados anteriormente por GET como campos ocultos -->
                <?php
                foreach ($_GET as $key => $value) {
                    if ($key !== 'nombrefiltro' && $key !== 'filtro' && $key !== 'tabla') {
                        echo '<input type="hidden" name="' . $key . '" value="' . $value . '">';
                    }
                }
                ?>
                <button class="btn btn-outline-success" type="submit">Buscar</button>
            </form>
            <ul class="navbar-nav ms-auto justify-content-end">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Cuenta</a>
                    <ul class="dropdown-menu dropdown-menu-end">
                        <li><a class="dropdown-item" href="#"><?php echo $_SESSION['Mail'] ?></a></li>
                        <li><a class="dropdown-item" href="#"><?php echo $_SESSION['Pwd'] ?></a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Cambiar Contraseña</a></li>
                        <li><a class="dropdown-item" href="logout.php">Cerrar Sesión</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>