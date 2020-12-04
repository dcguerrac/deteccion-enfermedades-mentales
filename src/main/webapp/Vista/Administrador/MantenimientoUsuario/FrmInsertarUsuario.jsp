<!DOCTYPE html>
<?php 
    session_start(); // me permite  iniciar una  sesion
    $usuario = $_SESSION['admin'];
    if($usuario == null || $usuario ==''){
        header("Location:../Seguridad/FrmLoginAdministrador.php");
        die();
    }
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>NUEVO USUARIO</title>
        <script src="../../../js/javascript.js" type="text/javascript"></script>
        <link href="../../../Css/EstiloMenu.css" rel="stylesheet" type="text/css"/>
        <link href="../../../Css/EstiloCrearCuenta.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form name="form">
            <input type="hidden" name="op">
            <input type="hidden" name="opu">
            <input type="hidden" name="subu">
            <input type="hidden" name="nivel">
            <input type="hidden" name="nu">
            <div id="estructura">  
                <?php include '../Principal/Menu.php';      ?>
                <div id="contenido" style="height: 650px;width: 100%">
                    <div id="container">
                        <div id="titulo">
                            <br>
                            <h1>Crear Cuenta</h1>
                        </div>
                        <div id="cont">
                            <div id="Crear_Cuenta">
                                
                                <!-- DATOS PRINCIPALES -->
                                <label for="username">Nombre</label>
                                <input type="text" name="txtnombre" placeholder="Nombre">
                                <label for="username">Apellido Paterno</label>
                                <input type="text" name="txtapellidoP" placeholder="Apellido Paterno">
                                <label for="username">Apellido Materno</label>
                                <input type="text" name="txtapellidoM" placeholder="Apellido Materno">
                                <label for="username">Edad</label>
                                <input type="text" name="txtedad" placeholder="Edad">
                                <label for="username">Sexo</label>
                                <input type="text" name="txtsexo" placeholder="M/F">   
                            </div>
                            <div id="Crear_Cuenta2">
                                
                                <!-- USERNAME INPUT -->
                                <label for="username">Telefono</label>
                                <input type="text" name="txttelefono" placeholder="Telefono">
                                <label for="username">Correo Electronico</label>
                                <input type="text" name="txtcorreo" placeholder="correo@email.com">
                                <label for="username">Id Usuario</label>
                                <input type="text" name="txtidusuario" placeholder="Id Usuario">
                                <!-- PASSWORD INPUT -->
                                <label for="password">Contraseña</label>
                                <input type="password" name="txtclave" placeholder="Contraseña">
                                <label for="password">Confirmar Contraseña</label>
                                <input type="password" name="txtclave2" placeholder="Confirmar contraseña">
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
                        <div id="fin">
                            <br><br>
                            <center><input type="submit" value="  Crear  Cuenta  " onclick="CrearUsuario()"></center>
                            <br>
                            <center><a href="javascript:MenuAdministrador('../../../Controlador/',3)">          Regresar a visualizar la tabla</a></center>
                        </div>
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
