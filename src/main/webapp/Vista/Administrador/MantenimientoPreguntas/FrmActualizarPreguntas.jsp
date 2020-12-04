<!DOCTYPE html>
<?php 
    session_start(); // me permite  iniciar una  sesion
    $usuario = $_SESSION['admin'];
    $pregunta = $_SESSION['listapreguntas'];
    if($usuario == null || $usuario ==''){
        header("Location:../Seguridad/FrmLoginAdministrador.php");
        die();
    }
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>EDITAR TABLA PREGUNTAS</title>
        <script src="../../../js/javascript.js" type="text/javascript"></script>
        <link href="../../../Css/EstiloMenu.css" rel="stylesheet" type="text/css"/>
        <link href="../../../Css/EstiloTabla.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form name="form">
            <input type="hidden" name="op">
            <input type="hidden" name="opu">
            <input type="hidden" name="subu">
            <input type="hidden" name="tp">
            <input type="hidden" name="codpre">
            <div id="estructura">  
                <?php include '../Principal/Menu.php';      ?>
                <div id="contenido" style="height: 467px;width: 100%">
                    <br>
                    <a href="javascript:RegresarPreguntas()"><img src="../../../Imagenes/regresar.png" width="70"/></a>
                    <br><br>   
                    <div>
                      <center>
                      <table border="0" class="container-table">
                        <tr>
                            <td class="titulo" colspan="2"><center><b>Tabla De Preguntas</b></center></td>
                        </tr>

                        <?php foreach ($pregunta as $rag)  {         ?>
                        <tr>
                            <td align="center" style="vertical-align:top;"><b>Codigo:</b></td>
                            <td><input type="text" value="<?php echo $rag['CodPre']; ?>" name="codp"></td>
                        </tr>
                        <tr>
                            <td align="center" style="vertical-align:top;"><b>Descripcion:</b></td>
                            <td><input type="text" value="<?php echo $rag['DesPre']; ?>" name="desp"></td>
                        </tr>
                        <tr>
                            <td align="center" style="vertical-align:top;"><b>Orden:</b></td>
                            <td><input type="text" value="<?php echo $rag['OrdPre']; ?>" name="ordp"></td>
                        </tr>
                        <tr>    
                            <td><input type="submit" colspan="2" value="Actualizar" onclick="ActualizarPregunta()"></td>
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