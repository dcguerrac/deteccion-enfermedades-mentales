<!DOCTYPE html>
<?php 
    session_start(); // me permite  iniciar una  sesion
    $usuario = $_SESSION['admin'];
    $listapersona = $_SESSION['listapersonas'];
    if($usuario == null || $usuario ==''){
        header("Location:../Seguridad/FrmLoginAdministrador.php");
        die();
    }
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>TABLA ADMINISTRADORES</title>
        <script src="../../../js/javascript.js" type="text/javascript"></script>
        <link href="../../../Css/EstiloMenu.css" rel="stylesheet" type="text/css"/>
        <link href="../../../Css/EstiloTabla.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form name="form">
            <input type="hidden" name="op">
            <input type="hidden" name="opa">
            <input type="hidden" name="suba">
            <input type="hidden" name="na">
            <input type="hidden" name="codigo">
            <div id="estructura">  
                <?php include '../Principal/Menu.php';      ?>
                <div id="contenido" style="height: 467px;width: 100%">
                    <br><br> 
                    <div>
                        <input type="submit" style="float: right" value="Insertar Nuevo Administrador " onclick="NuevoAdministrador()">
                        <br><br><br><br>
                        <center>
                        <table border="1" class="container-table">
                            <tr >
                                <td class="titulo" colspan="10"><center><b>Tabla De Administradores</b></center></td>
                                <td class="titulo" colspan="2"><center><b>Operacion</b></center></td>
                            </tr>
                            <tr align="center">
                                <td class="titulo1" width="50"><b>Codigo</b></td>
                                <td class="titulo1" width="140"><b>Apellido Paterno</b></td>
                                <td class="titulo1" width="140"><b>Apellido Materno</b></td>
                                <td class="titulo1" width="70"><b>Nombre</b></td>
                                <td class="titulo1" width="50"><b>Edad</b></td>
                                <td class="titulo1" width="50"><b>Sexo</b></td>
                                <td class="titulo1" width="90"><b>Telefono</b></td>
                                <td class="titulo1" width="250"><b>Correo Electronico</b></td>
                                <td class="titulo1" width="90"><b>ID Usuario</b></td>
                                <td class="titulo1" width="90"><b>Contraseña</b></td>
                                <td class="titulo1" width="80"><b>Eliminar</b></td>
                                <td class="titulo1" width="60"><b>Editar</b></td>
                            </tr>
                            <?php foreach ($listapersona as $reg)  {         ?>
                            <tr align="center">
                                <td class="titulo2"><?php echo $reg['CodPer']; ?></td>
                                <td class="titulo2"><?php echo $reg['AppPer']; ?></td>
                                <td class="titulo2"><?php echo $reg['ApmPer']; ?></td>
                                <td class="titulo2"><?php echo $reg['NomPer']; ?></td>
                                <td class="titulo2"><?php echo $reg['EdaPer']; ?></td>
                                <td class="titulo2"><?php echo $reg['SexPer']; ?></td>
                                <td class="titulo2"><?php echo $reg['TelPer']; ?></td>
                                <td class="titulo2"><?php echo $reg['CorPer']; ?></td>
                                <td class="titulo2"><?php echo $reg['UsuPer']; ?></td>
                                <td class="titulo2"><?php echo $reg['PasPer']; ?></td>
                                <td class="titulo2"><center><a href="javascript:eliminarAdministador('<?php echo $reg['CodPer']; ?>')"><img src="../../../Imagenes/eliminar.png" alt="" width="20" height="20"/></a></center></td>  
                                <td class="titulo2"><center><a href="javascript:editartbadministrador('<?php echo $reg['CodPer']; ?>')"><img src="../../../Imagenes/editar.png" alt="" width="20" height="20"/></a></center></td>  
                            </tr>
                            <?php  }   ?>
                        </table>
                        </center>
                        <br><br><br>
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
