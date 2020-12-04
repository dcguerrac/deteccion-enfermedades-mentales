<!DOCTYPE html>
<?php 
    session_start(); // me permite  iniciar una  sesion
    $admin = $_SESSION['admin'];
    if($admin == null || $admin ==''){
        header("Location:../Seguridad/FrmLoginAdministrador.php");
        die();
    }
    $_SESSION['admin'] = $admin;
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>CAMBIO DE CLAVE</title>
        <script src="../../../js/javascript.js" type="text/javascript"></script>
        <link href="../../../Css/EstiloMenu.css" rel="stylesheet" type="text/css"/>
        <link href="../../../Css/EstiloConfCuenta.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form name="form">
            <input type="hidden" name="op">
            <input type="hidden" name="opu">
            <input type="hidden" name="subu">
            <input type="hidden" name="confi">
            <div id="estructura">  
                <?php include '../Principal/Menu.php';      ?>
                <div id="contenido" style="height: 550px;width: 100%">
                    <div id="img">
                        <img src="../../../Imagenes/config.png" alt=""/>
                    </div>
                    <div id="div1">
                        <div style="width: 100% ; height: 70px">
                            <p style="font-size: 22px">MI CUENTA</p>
                            <hr>
                        </div>
                        <div style="width: 90% ; height: 300px">
                            <div style="width: 17% ; height: 100%; float: left">
                                <center><img src="../../../Imagenes/ConfUsuario.png" alt="" width="100px"/></center>
                            </div>
                            <div id="div2" >
                                <!-- PASSWORD INPUT -->
                                <label for="password">Contraseña Actual</label>
                                <input type="password" name="clavereal">
                                <label for="password">Contraseña Nueva</label>
                                <input type="password" name="clavec">
                                <label for="password">Escribe otra vez tu Contraseña</label>
                                <input type="password" name="claved">
                            </div>
                        </div >
                        <div id="div4">
                        <input type="submit" style="float: right" value="Cambiar   Contraseña" onclick="CambioContAdm()">
                        </div>
                        <br>
                        <?php                          
                            if(isset($_GET['mensaje']))
                            {
                                $mensaje=$_GET['mensaje'];  
                                echo( $mensaje );
                            }
                        ?>
                    </div>
                </div>
                <div id="pie">
                    <div id="pie1">
                        <div id="acerca">
                            <a href="#">Acerca de nosotros</a>
                        </div>
                        <div id="contac" style="">
                            <a href="#">Contactanos</a>
                        </div>
                        <div id="acce">
                            <a href="#">Accesibilidad</a>
                        </div>
                        <div id="poli">
                            <a href="#">Politicas de privacidad</a>
                        </div>
                    </div>
                    <div id="pie2">
                        <div id="men">¡Mantente Informado!</div>
                        <div id="redes">
                            <a href="#"><img src="../../../Imagenes/RedesSociales/facebook.png" alt="" width="30px"/></a>
                        </div>
                        <div id="redes">
                            <a href="#"><img src="../../../Imagenes/RedesSociales/twitter.png" alt="" width="30px"/></a>
                        </div>
                        <div id="redes">
                            <a href="#"><img src="../../../Imagenes/RedesSociales/instagram.png" alt="" width="30px"/></a>
                        </div>
                        <div id="redes">
                            <a href="#"><img src="../../../Imagenes/RedesSociales/whatsapp.png" alt="" width="30px"/></a>
                        </div>
                        <div id="redes">
                            <a href="#"><img src="../../../Imagenes/RedesSociales/youtube.png" alt="" width="30px"/></a>
                        </div>
                        <div id="redes">
                            <a href="#"><img src="../../../Imagenes/RedesSociales/gmail.png" alt="" width="30px"/></a>
                        </div>
                    </div>
                </div> 
            </div>
        </form>
    </body>
</html>