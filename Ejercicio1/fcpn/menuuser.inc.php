<section class="menu menu2 cid-sKO8Rtuniv" once="menu" id="menu2-6">
    
    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="https://mobiri.se">
                        <img src="../assets/images/fcpn-blue-96x96.png" alt="Mobirise" style="height: 3rem;">
                    </a>
                </span>
                <span class="navbar-caption-wrap"><a class="navbar-caption text-black display-7" href="https://mobiri.se"><?php 
                if($_SESSION['rol']==1){
                    echo "U:";
                }
                else{
                    echo "D:";
                }
                echo $_SESSION['nombre'];?></a></span>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <div class="hamburger">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item"><a class="nav-link link text-black display-4" href="../"><span class="mbri-home mbr-iconfont mbr-iconfont-btn"></span>
                            Principal</a></li>
                    
                    <li class="nav-item"><a class="nav-link link text-black display-4" href="../usuario/notas/" aria-expanded="true"><span class="mobi-mbri mobi-mbri-users mbr-iconfont mbr-iconfont-btn"></span><?php 
                        if($_SESSION['rol']==1){
                            echo "Notas";
                        }
                        else{
                            echo "Promedios:";
                        }?>
                    </a>
                    </li>
                    <li class="nav-item"><a class="nav-link link text-black display-4" href="#" aria-expanded="true"><span class="mobi-mbri mobi-mbri-users mbr-iconfont mbr-iconfont-btn"></span>Contacts</a>
                    </li></ul>
                
                <div class="navbar-buttons mbr-section-btn"><a class="btn btn-primary display-4" href="./config/cerrar.php"><span class="mobi-mbri mobi-mbri-paper-plane mbr-iconfont mbr-iconfont-btn"></span>Cerrar Sesion</a></div>
            </div>
        </div>
    </nav>
</section>
