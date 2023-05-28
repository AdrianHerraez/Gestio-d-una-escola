<table class="TablaEdu table table-dark table-striped table-hover">
    <div>
        <h3 class="text-center">MODUL</h3>
    </div>
    <thead>
        <tr>
        <th>IdMod</th>
        <th>NomMod</th>
        <th>DescripcioMod</th>
        <th>IdAulaMod</th>
        </tr>
    </thead>

    <tbody>
        <?php
        $query = "SELECT * FROM modul";
        $stmt = $mysqli->prepare($query);
        $bromota = '%' . $_POST['bromota'] . '%'; // Variable adicional para pasar por referencia
        $stmt->bind_param("s", $bromota);
        $stmt->execute();
        $educador = $stmt->get_result();
        if ($educador->num_rows > 0) {
        while($row = $educador->fetch_array()) {
            $fila="<tr>";
            $fila=$fila."<td>" . $row["IdMod"] . "</td>";
            $fila=$fila."<td>" . $row["NomMod"] . "</td>";
            $fila=$fila."<td>" . $row["DescripcioMod"] . "</td>";
            $fila=$fila."<td>" . $row["IdAulaMod"] . "</td>";
            echo $fila;
            }
        }
        ?>
    </tbody>
</table>