<?php
    include("../../config/conexion.inc.php");
    $res = mysqli_query($con, "SELECT * FROM nota WHERE ci='".$_SESSION['ci']."'");
?>
    <style>
        .container__titleNotas{
            margin: 2%;
            border: 1px solid black;
            width: 100%;
            display: flex;
            flex-direction: column;
            padding: 5% 0% 5% 10%;
            justify-content: center;
            aling-content:center;
        }
        .container__table{
            background: blue;
            color:white;
        }
    </style>
    <section class="container__titleNotas">
        <h4 >Bienvenido a la verificación de notas:</h4>
        <p Estudiante: <strong><?php echo $_SESSION['nombre'];?></strong><br>CI: <strong><?php echo $_SESSION['ci'];?></strong></p>
    </section>
    <table class="table table-striped">
        <thead class="container__table">
            <tr>
                <th scope="col">Materia</th>
                <th scope="col">Nota 1</th>
                <th scope="col">Nota 2</th>
                <th scope="col">Nota 3</th>
                <th scope="col">Final</th>
            </tr>
        </thead>
        <tbody>
            <?php
                while($fila = mysqli_fetch_array($res)){
                echo "  <tr>
                        <th scope='row'>".$fila["sigla"]."</th>
                        <td>".$fila["nota1"]."</td>
                        <td>".$fila["nota2"]."</td>
                        <td>".$fila["nota3"]."</td>
                        <td>".$fila["notafinal"]."</td>
                        </tr>";
                }
            ?>
        </tbody>
    </table>