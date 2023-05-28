<table class="TablaAlu table table-dark table-striped table-hover">
    <div style="display: flex; align-items: center;width:100%; text-align:center">
        <a style="margin-right: 1vw;margin: 1vw" href="./alumne/formAltaAlu.php" class="btn btn-primary btn-lg">AÃ±adir</a><h3 style="text-align: center;margin-left: 40vw">ALUMNES</h3>
    </div>

    <thead">
        <tr>
        <th>Matricula</th>
        <th>Nom</th>
        <th>Cognoms</th>
        <th>Mail</th>
        <th>Curs</th>
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
    zoom: 55%;
  }

}
</style>
    <tbody>
        <?php
        // $query = "SELECT * FROM alumne";
        // $alumne = $mysqli->query ($query);
        $query = "SELECT DISTINCT alumne.*, curs.NomCurs AS NomCurs FROM alumne 
        LEFT JOIN nota ON nota.MatriculaAluNota = alumne.MatriculaAlu
        LEFT JOIN curs ON curs.IdCurs = nota.IdCursNota
        WHERE {$_GET['filtro']} LIKE ?";
        $stmt = $mysqli->prepare($query);
        $bromota = '%' . $_POST['bromota'] . '%'; // Variable adicional para pasar por referencia
        $stmt->bind_param("s", $bromota);
        $stmt->execute();
        $resultado = $stmt->get_result();
        if ($resultado->num_rows > 0) {
        while($row = $resultado->fetch_array()) {
            $fila="<tr>";
            $fila = "<td><a style='color:orange; text-decoration:none' href='./alumne/personalAlu.php?id=" . $row["MatriculaAlu"] . "'>" . $row["MatriculaAlu"] . "</td></a>";
            $fila=$fila."<td>" . $row["NomAlu"] . "</td>";
            $fila=$fila."<td>" . $row["CognomsAlu"] . "</td>";
            $fila=$fila."<td>" . $row["MailAlu"] . "</td>";
            $fila=$fila."<td>" . $row["NomCurs"] . "</td>";

            $fila=$fila."<td><a href='./alumne/formEditaAlu.php?id=".$row["MatriculaAlu"]."' class='btn btn-primary btn-md'>Editar</a></td>";
            $fila=$fila."<td><a href='./alumne/eliminarAlu.php?Id=".$row["MatriculaAlu"]."' class='btn btn-danger btn-'>Eliminar</a></td></tr>";
            echo $fila;
            }
        }
        ?>

    </tbody>
    
</table>
