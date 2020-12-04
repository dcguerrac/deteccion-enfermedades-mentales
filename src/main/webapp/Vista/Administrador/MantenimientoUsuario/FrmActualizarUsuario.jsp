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
        <title>EDITAR TABLA USUARIOS</title>
        <script src="../../../js/javascript.js" type="text/javascript"></script>
        <link href="../../../Css/EstiloMenu.css" rel="stylesheet" type="text/css"/>
        <link href="../../../Css/EstiloTabla.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form name="form">
            <input type="hidden" name="op">
            <input type="hidden" name="opu">
            <input type="hidden" name="subu">
            <input type="hidden" name="nu">
            <input type="hidden" name="codigo">
            <div id="estructura">  
                <?php include '../Principal/Menu.php';      ?>
                <div id="contenido" style="height: 600px;width: 100%">
                    <br>
                    <a href="javascript:RegresarUsuarios()"><img src="../../../Imagenes/regresar.png" width="70"/></a>
                    <br>
                    <div>
                      <center>
                      <table border="0" class="container-table">
                        <tr>
                            <td  class="titulo" colspan="2"><center><b>Tabla De Usuarios</b></center></td>
                        </tr>

                        <?php foreach ($usuario as $reg)  {         ?>
                        <tr>
                            <td align="center" style="vertical-align:top;" ><b>Codigo:</b></td>
                            <td ><input type="text" value="<?php echo $reg['CodPer']; ?>" name="codigo"></td>
                        </tr>
                        <tr>
                            <td align="center" style="vertical-align:top;" ><b>Apellido Paterno:</b></td>
                            <td><input type="text" value="<?php echo $reg['AppPer']; ?>" name="apepat"></td>
                        </tr>
                        <tr>
                            <td align="center" style="vertical-align:top;" ><b>Apellido Materno:</b></td>
                            <td><input type="text" value="<?php echo $reg['ApmPer']; ?>" name="apemat"></td>
                        </tr>
                        <tr>
                            <td align="center" style="vertical-align:top;" ><b>Nombre:</b></td>
                            <td><input type="text" value="<?php echo $reg['NomPer']; ?>" name="nombre"></td>
                        </tr>
                        <tr>
                            <td align="center" style="vertical-align:top;" ><b>Edad:</b></td>
                            <td><input type="text" value="<?php echo $reg['EdaPer']; ?>" name="edad"></td>
                        </tr>
                        <tr>
                            <td align="center" style="vertical-align:top;" ><b>Sexo:</b></td>
                            <td><input type="text" value="<?php echo $reg['SexPer']; ?>" name="sexo"></td>
                        </tr>
                        <tr>
                            <td align="center" style="vertical-align:top;" ><b>Telefono:</b></td>
                            <td><input type="text" value="<?php echo $reg['TelPer']; ?>" name="telefono"></td>
                        </tr>
                        <tr>
                            <td align="center" style="vertical-align:top;" ><b>Correo Electronico:</b></td>
                            <td><input type="text" value="<?php echo $reg['CorPer']; ?>" name="correo"></td>
                        </tr>
                        <tr>
                            <td align="center" style="vertical-align:top;" ><b>ID Usuario:</b></td>
                            <td><input type="text" value="<?php echo $reg['UsuPer']; ?>" name="usuario"></td>
                        </tr>
                        <tr>
                            <td align="center" style="vertical-align:top;" ><b>Contraseña:</b></td>
                            <td><input type="text" value="<?php echo $reg['PasPer']; ?>" name="contraseña"></td>
                        </tr>
                        <tr>    
                            <td><input type="submit" colspan="3" value="Actualizar" onclick="ActualizarUsuario()"></td>
                        </tr>
                        <?php  }   ?>
                      </table>
                      </center>
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
