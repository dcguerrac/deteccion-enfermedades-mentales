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
        <title>REPORTE DE PACIENTES</title>
        <script src="../../../js/javascript.js" type="text/javascript"></script>
        <link href="../../../Css/EstiloMenu.css" rel="stylesheet" type="text/css"/>
        <link href="../../../Css/EstiloTabla.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form name="form">
            <input type="hidden" name="op">
            <input type="hidden" name="opa">
            <input type="hidden" name="suba">
            <input type="hidden" name="re">
            <input type="hidden" name="codi">
            <div id="estructura">  
                <?php include '../Principal/Menu.php';      ?>
                <div id="contenido" style="height: 467px;width: 100%">
                    <br><br> 
                  <div>
                      <br><br>
                      <img src="../../../Imagenes/test.png" style="float: left; width: 300px;"/>
                      <center>
                      <table border="1" class="container-table">
                          <tr >
                            <td class="titulo" colspan="6"><center><b>Datos Personales</b></center></td>
                            <td class="titulo" colspan="1"><center><b>Reporte</b></center></td>
                        </tr>
                        <tr align="center">
                            <td class="titulo1" width="140"><b>Cod. Persona</b></td>>
                            <td class="titulo1" width="140"><b>Apellido Paterno</b></td>
                            <td class="titulo1" width="140"><b>Apellido Materno</b></td>
                            <td class="titulo1" width="70"><b>Nombre</b></td>
                            <td class="titulo1" width="70"><b>Sexo</b></td>
                            <td class="titulo1" width="70"><b>Edad</b></td>
                            <td class="titulo1" width="70"><b>Lista de Test</b></td>
                        </tr>
                        <?php foreach ($listapersona as $reg)  {         ?>
                        
                        <tr align="center">
                            <td class="titulo2"><?php echo $reg['CodPer']; ?></td>
                            <td class="titulo2"><?php echo $reg['AppPer']; ?></td>
                            <td class="titulo2"><?php echo $reg['ApmPer']; ?></td>
                            <td class="titulo2"><?php echo $reg['NomPer']; ?></td>
                            <td class="titulo2"><?php echo $reg['SexPer']; ?></td>
                            <td class="titulo2"><?php echo $reg['EdaPer']; ?></td>
                            <td class="titulo2"><center><a href="javascript:VerTest('<?php echo $reg['CodPer']; ?>')"><img src="../../../Imagenes/MostrarTest.png" width="20" height="20"/></a></center></td>   
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
