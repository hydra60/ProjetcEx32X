

<style>
    .navContainer{
        width:100%;
        height: 10%;
        background: #6592E6;
        display:flex;
        flex-direction: row;
        justify-content: space-around;
        justify-items: center;
        align-content: center;
        align-items: center;
    }
    .navContainer >div>a {
        color:white;
    }

</style>
<nav class="navContainer">
        <img src="../assets/images/fcpn-blue-96x96.png" alt="Mobirise" style="width: 3rem;">
            <span class="navbar-caption-wrap">
                <a class="navbar-caption text-black display-7" href="#">
                <?php 
                if($_SESSION['rol']==1){
                    echo "U:";
                }
                else{
                    echo "D:";
                }
                echo $_SESSION['nombre'];?>
                </a>
            </span>
            <div>
                <a class="" href="../usuario/notas/" aria-expanded="true">
                    <span class="mobi-mbri mobi-mbri-users mbr-iconfont mbr-iconfont-btn">
                    <?php 
                        if($_SESSION['rol']==1){
                            echo "Notas";
                        }
                        else{
                            echo "Promedios:";
                        }?>
                    </span>
                </a>
            </div>
        <div><a href="../../index.php"> Home </a> </div>
        <div><a href="../estadistica/index.php"> Estadistica </a></div>
        <div><a href="../fisica/index.php"> Fisica </a></div>
        <div><a href="../informatica/index.php"> Informatica</a></div>
        <div class="navbar-buttons mbr-section-btn"><a class="btn btn-primary display-4" href="./config/cerrar.php"><span class="mobi-mbri mobi-mbri-paper-plane mbr-iconfont mbr-iconfont-btn"></span>Cerrar Sesion</a></div>
</nav>