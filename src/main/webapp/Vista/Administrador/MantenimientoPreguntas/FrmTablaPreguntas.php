<!DOCTYPE html>
<?php 
    session_start(); // me permite  iniciar una  sesion
    $usuario = $_SESSION['admin'];
    $listapregunta = $_SESSION['listapreguntas'];
    if($usuario == null || $usuario ==''){
        header("Location:../Seguridad/FrmLoginAdministrador.php");
        die();
    }
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>TABLA PREGUNTAS</title>
        <script src="../../../js/javascript.js" type="text/javascript"></script>
        <link href="../../../Css/EstiloMenu.css" rel="stylesheet" type="text/css"/>
        <link href="../../../Css/EstiloTabla.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form name="form">
            <input type="hidden" name="op">
            <input type="hidden" name="opa">
            <input type="hidden" name="suba">
            <input type="hidden" name="tp">
            <input type="hidden" name="codpre">
            <div id="estructura">  
                <?php include '../Principal/Menu.php';      ?>
                <div id="contenido" style="height: 600px;width: 100%">
                    <br><br><br>  
                    <div>
                        <center>
                        <table border="1" class="container-table">
                            <tr>
                                <td class="titulo" colspan="2"><center><b>Tabla De Preguntas</b></center></td>
                                <td class="titulo" colspan="1"><center><b>Operacion</b></center></td>
                            </tr>
                            <tr align="center">
                                <td class="titulo1" width="70"><b>Codigo</b></td>
                                <td class="titulo1" width="140"><b>Descripcion de las Preguntas</b></td>
                                <td class="titulo1" width="90"><b>Editar</b></td>
                            </tr>
                            <?php foreach ($listapregunta as $reg)  {         ?>
                            <tr align="center">
                                <td class="titulo2"><?php echo $reg['CodPre']; ?></td>
                                <td class="titulo2"><?php echo $reg['DesPre']; ?></td>
                                <td class="titulo2"><center><a href="javascript:editartbpregunta('<?php echo $reg['CodPre']; ?>')"><img src="../../../Imagenes/editar.png" width="20" height="20"/></a></center></td>
                            </tr>
                            
                            <?php  }   ?>
                        </table>
                        </center>
                    </div>
                    <br><br><br>
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
