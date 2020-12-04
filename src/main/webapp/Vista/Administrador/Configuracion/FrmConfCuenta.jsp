<!DOCTYPE html>
<?php 
    session_start(); // me permite  iniciar una  sesion
    $usuario = $_SESSION['admin'];
    $confadmin = $_SESSION['confadmin'];
    if($usuario == null || $usuario ==''){
        header("Location:../Seguridad/FrmLoginAdministrador.php");
        die();
    }
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>CONFIGURACION DE CUENTA</title>
        <script src="../../../js/javascript.js" type="text/javascript"></script>
        <link href="../../../Css/EstiloMenu.css" rel="stylesheet" type="text/css"/>
        <link href="../../../Css/EstiloConfDatosPersonales.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form name="form">
            <input type="hidden" name="op">
            <input type="hidden" name="opu">
            <input type="hidden" name="subu">
            <input type="hidden" name="confi">
            <div id="estructura">  
                <?php include '../Principal/Menu.php';      ?>
                <div id="contenido" style="height: 720px;width: 100%">
                    <div id="img">
                        <img src="../../../Imagenes/config.png" alt=""/>
                    </div>
                    <div id="div1">
                        <?php foreach ($confadmin as $ragg)  {         ?>
                        <div style="width: 100% ; height: 60px">
                            <p style="font-size: 22px">MI CUENTA</p>
                            <hr>
                        </div>
                        <div style="width: 90% ; height: 470px">
                            <div style="width: 17% ; height: 100%; float: left">
                                <center><img src="../../../Imagenes/ConfUsuario.png" alt="" width="100px"/></center>
                            </div>
                            <div id="div2" >
                                
                                <!-- USERNAME INPUT -->
                                <label for="username">Nombre</label>
                                <input type="text"  value="<?php echo $ragg['NomPer'] ?>" name="nombre">
                                <label for="username">Apellido Paterno</label>
                                <input type="text"  value="<?php echo $ragg['AppPer'] ?>" name="apellidop">
                                <label for="username">Apellido Materno</label>
                                <input type="text"  value="<?php echo $ragg['ApmPer'] ?>" name="apellidom">
                                <label for="username">Edad</label>
                                <input type="text"  value="<?php echo $ragg['EdaPer'] ?>" name="edad">
                                <label for="username">Sexo</label>
                                <input type="text"  value="<?php echo $ragg['SexPer'] ?>" name="sexo">
                                <label for="username">Telefono</label>
                                <input type="text"  value="<?php echo $ragg['TelPer'] ?>" name="telefono">                    
                            </div>
                        </div>
                        <br><br>
                        <div id="div3">
                        <input style="float: right" type="submit" value="Guardar Cambios" onclick="GuardarCambAdm()">
                        </div>
                        <?php  }   ?>
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
