<table class="TablaEdu table table-dark table-striped table-hover">
<div style="display: flex; align-items: center;width:100%; text-align:center">
    <div style="margin-right: 1vw;margin: 1vw"></div><h3 style="text-align: center;margin-left: 40vw">DEPARTAMENT</h3>
</div>
    <thead>
        <tr>
        <th>Id</th>
        <th>Nom</th>
        <th></th>
        <th style="width: 50%;">Descripcio</th>
        <th></th>
        <th>Planta</th>
        </tr>
    </thead>

    <tbody>
        <?php
        $query = "SELECT * FROM departament
        WHERE {$_GET['filtro']} LIKE ?";
        $stmt = $mysqli->prepare($query);
        $bromota = '%' . $_POST['bromota'] . '%'; // Variable adicional para pasar por referencia
        $stmt->bind_param("s", $bromota);
        $stmt->execute();
        $departament = $stmt->get_result();
        if ($departament->num_rows > 0) {
        while($row = $departament->fetch_array()) {
            $fila="<tr>";
            $fila=$fila."<td>" . $row["IdDep"] . "</td>";
            $fila=$fila."<td>" . $row["NomDep"] . "</td>";
            $fila=$fila."<td></td>";
            $fila=$fila."<td style='width: 50%;'>" . $row["DescripcioDep"] . "</td>";
            $fila=$fila."<td></td>";
            $fila=$fila."<td>" . $row["PlantaDep"] . "</td>";
            echo $fila;
            }
        }
        ?>
    </tbody>
</table>