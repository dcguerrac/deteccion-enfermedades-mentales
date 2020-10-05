<%-- 
    Document   : Registo
    Created on : 04/10/2020, 05:25:59 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <link href="<%=request.getContextPath()%>/css/Master.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarme</title>
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
    </head>
    
    <body id="xdd">
        
         <center>
        <form action="" methot="post">
                <table id="cuadroR" align="center" >
              
                        <td colspan="2"  class="tituloRegistro2">
                            Formulario de Registro
                        </td>
                    </tr>


                    <tr>
                        <td class="tituloRegistro"><div align="left">Apellidos : </div></td>
       
                        <td ><div align="center"><input name="txtApe" type="text" class="input_text_combo" size="50" color="white"  onKeyDown="return pulsar(event,this)"  maxlength="10"></div></td>
                    </tr>
                    <tr>
                        <td class="tituloRegistro"><div align="left">Nombres : </div></td>
                        <td ><div align="center"><input name="txtNom" type="text" class="input_text_combo" size="50" color="white"  onKeyDown="return pulsar(event,this)"  maxlength="10"></div></td>
                    </tr>
              
                    <tr>
                        <td class="tituloRegistro"><div align="left">Correo : </div></td>
                        <td ><div align="center"><input name="txtCor" type="text" class="input_text_combo" size="50" color="white"  onKeyDown="return pulsar(event,this)"  maxlength="10"></div></td>
                    </tr>
                    <tr>
                        <td class="tituloRegistro"><div align="left">Contraseña: </div></td>
                        <td><div align="center"><input name="txtClave" type="password" class="input_text_combo" onKeyDown="return pulsar(event,this)" size="50" maxlength="10"></div></td>
                    </tr>
                    <tr>
                        <td align="center" > <a href="  ('<%=request.getContextPath()%>')"><img src="<%=request.getContextPath()%>/imagenes/registrar.png" width="110" height="35" value="Ir" name="bot5"></a>
                        </td>
                    </tr>
                </table>
        </form>
         </center>
    </body>
</html>
