<table class="TablaEdu table table-dark table-striped table-hover">
<div style="display: flex; align-items: center;width:100%; text-align:center">
        <a style="margin-right: 1vw;margin: 1vw" href="./educador/formAltaEdu.php" class="btn btn-primary btn-lg">Añadir</a><h3 style="text-align: center;margin-left: 40vw">EDUCADORS</h3>
    </div>
    <thead>
        <tr>
        <th>Id</th>
        <th>Nom</th>
        <th>Cognoms</th>
        <th>Mail</th>
        <th>Data Contractació</th>
        <th>Departament</th>
        <th></th>
        <th></th>
        <th></th>
        </tr>
    </thead>
    <style>
    footer {
        bottom:0;
        width:100%
    }
@media only screen and (max-width: 900px) {
  body {
    zoom: 45%;
  }

}
</style>
    <tbody>
        <?php
        $query = "SELECT * FROM educador 
        INNER JOIN departament ON departament.IdDep = educador.IdDepEdu
        WHERE {$_GET['filtro']} LIKE ?";
        $stmt = $mysqli->prepare($query);
        $bromota = '%' . $_POST['bromota'] . '%'; // Variable adicional para pasar por referencia
        $stmt->bind_param("s", $bromota);
        $stmt->execute();
        $educador = $stmt->get_result();
        if ($educador->num_rows > 0) {
        while($row = $educador->fetch_array()) {
            $fila="<tr>";
            $fila=$fila."<td>" . $row["IdEdu"] . "</td>";
            $fila=$fila."<td>" . $row["NomEdu"] . "</td>";
            $fila=$fila."<td>" . $row["CognomsEdu"] . "</td>";
            $fila=$fila."<td>" . $row["MailEdu"] . "</td>";
            $fila=$fila."<td>" . $row["DataContracteEdu"] . "</td>";
            $fila=$fila."<td>" . $row["NomDep"] . "</td>";
            $fila=$fila."<td></td>";
            $fila=$fila."<td><a href='./educador/formEditaEdu.php?id=".$row["IdEdu"]."' class='btn btn-primary btn-md'>Editar</a></td>";
            $fila=$fila."<td><a href='./educador/eliminarEdu.php?Id=".$row["IdEdu"]."' class='btn btn-danger btn-md'>Eliminar</a></td></tr>";
            echo $fila;
            }
        }
        ?>
    </tbody>
</table>