<table class="TablaEdu table table-dark table-striped table-hover">
<div style="display: flex; align-items: center;width:100%; text-align:center">
    <h3 style="text-align: center;margin-left: 40vw">CURS</h3>
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
        $query = "SELECT * FROM curs
        WHERE {$_GET['filtro']} LIKE ?";
        $stmt = $mysqli->prepare($query);
        $bromota = '%' . $_POST['bromota'] . '%'; // Variable adicional para pasar por referencia
        $stmt->bind_param("s", $bromota);
        $stmt->execute();
        $curs = $stmt->get_result();
        if ($curs->num_rows > 0) {
        while($row = $curs->fetch_array()) {
            $fila="<tr>";
            $fila=$fila."<td>" . $row["IdCurs"] . "</td>";
            $fila=$fila."<td>" . $row["NomCurs"] . "</td>";
            $fila=$fila."<td>" . $row["DescripcioCurs"] . "</td>";
            echo $fila;
            }
        }
        ?>
    </tbody>
</table>