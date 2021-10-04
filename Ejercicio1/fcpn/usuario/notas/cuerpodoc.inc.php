<?php
    include("../../config/conexion.inc.php");
    $depto = ["CH", "LP", "CB", "OR", "PT", "TJ", "SC", "BE", "PD"];
    $sql = "SELECT DISTINCT sigla FROM nota";
    $res = mysqli_query($con, $sql);
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
        <h4 >Promedios Globales:</h4>
        <p >Docente: <strong><?php echo $_SESSION['nombre'];?></strong><br>CI: <strong><?php echo $_SESSION['ci'];?></strong></p>

    </section>
        <section class="content6 cid-stzCj4uOct" id="content6-w">
                    <table class="table table-striped">
                        <thead class="container__table">
                            <tr>
                                <th scope="col">Sigla</th>
                                <th scope="col"><?php echo $depto[0];?></th>
                                <th scope="col"><?php echo $depto[1];?></th>
                                <th scope="col"><?php echo $depto[2];?></th>
                                <th scope="col"><?php echo $depto[3];?></th>
                                <th scope="col"><?php echo $depto[4];?></th>
                                <th scope="col"><?php echo $depto[5];?></th>
                                <th scope="col"><?php echo $depto[6];?></th>
                                <th scope="col"><?php echo $depto[7];?></th>
                                <th scope="col"><?php echo $depto[8];?></th>
                            </tr>
                        </thead>
                        <tbody>
<?php 
    for($i = 0; $i < 9; $i++){
        $sql2 = "SELECT n.sigla, AVG(n.notafinal) AS Nota FROM nota n, persona p WHERE n.ci = p.ci AND p.departamento = '0".($i + 1)."' GROUP BY n.sigla";
        $res2 = mysqli_query($con, $sql2);
        $j = 0;
        while($nota = mysqli_fetch_array($res2)){
            $notasDepto[$i][$j] = $nota[1];
            $j++;
        }
    }
    //print_r($notasDepto);
    for($j = 0; $j < 7; $j++){
        $sigla = mysqli_fetch_array($res);
        echo "  <tr>
                    <th scope='row'>".$sigla[0]."</th>";    
        for($i = 0; $i < 9; $i++){
            if(isset($notasDepto[$i][$j])){
                echo "<td>".$notasDepto[$i][$j]."</td>";
            }else{
                echo "<td>0.0</td>";
            }
        }
    }
?>
                        </tbody>
                    </table>
        </section>
