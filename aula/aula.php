<table class="TablaEdu table table-dark table-striped table-hover">
<div style="display: flex; align-items: center;width:100%; text-align:center">
    <h3 style="text-align: center;margin-left: 40vw">AULA</h3>
</div>
    <thead>
        <tr>
        <th>Id</th>
        <th>Nom</th>
        <th>Descripcio</th>
        </tr>
    </thead>

    <tbody>
        <?php
        $query = "SELECT * FROM aula
        WHERE {$_GET['filtro']} LIKE ?";
        $stmt = $mysqli->prepare($query);
        $bromota = '%' . $_POST['bromota'] . '%'; // Variable adicional para pasar por referencia
        $stmt->bind_param("s", $bromota);
        $stmt->execute();
        $aula = $stmt->get_result();
        if ($aula->num_rows > 0) {
        while($row = $aula->fetch_array()) {
            $fila="<tr>";
            $fila=$fila."<td>" . $row["IdAula"] . "</td>";
            $fila=$fila."<td>" . $row["NomAula"] . "</td>";
            $fila=$fila."<td>" . $row["DescripcioAula"] . "</td>";
            echo $fila;
            }
        }
        ?>
    </tbody>
</table>