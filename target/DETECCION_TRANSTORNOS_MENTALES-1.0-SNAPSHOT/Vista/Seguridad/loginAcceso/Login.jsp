<html>
    <head>
        <link href="<%=request.getContextPath()%>/css/Master.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido al Sistema </title>
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
    </head>
    
    <body    onload="iniciar('<%=request.getContextPath()%>');cargarBotones(2)">
        <center>
         <form   name="form">
                <input type="hidden" name="op">       
                <div align="center"><img src="<%=request.getContextPath()%>/imagenes/candado.png" width="391" height="200"></div>

                <table border="0" align="center" >
                    <tr>
                        <td colspan="2"  class="tituloFormulario2">
                            Acceso al Sistema XYZW
                        </td>
                    </tr>


                    <tr>
                        <td class="tituloFormulario"><div align="left">Usuario</div></td>
                        <td ><div align="center"><input name="txtUsuario" type="text" class="input_text_combo" size="15"  onKeyDown="return pulsar(event,this)"  maxlength="10"></div></td>
                    </tr>
                    <tr>
                        <td class="tituloFormulario"><div align="left">Clave</div></td>
                        <td><div align="center"><input name="txtClave" type="password" class="input_text_combo" onKeyDown="return pulsar(event,this)" size="15" maxlength="10"></div></td>
                    </tr>
                </table>
                <table border="0" align="center" >
                    <tr>
                        <td > <a href="javascript:enviar('<%=request.getContextPath()%>')"> <img src="<%=request.getContextPath()%>/imagenes/Aceptar.gif" border='1' onMouseOver="CambiaImg('bot4','bot4p')" onmouseout="CambiaImg('bot4','bot4')" name="bot4"></a>
                        </td>
                        <td > <a href="javascript:cerrar()"><img src="<%=request.getContextPath()%>/imagenes/Salir.gif" border='1' onMouseOver="CambiaImg('bot5','bot5p')" onmouseout="CambiaImg('bot5','bot5')" name="bot5"></a>
                        </td>
                    </tr>           
                </table>

               <table>
                <tr>
                 <td>
                  <strong>
                      <font color="#FF0000" size="1" face="Tahoma">
                        <%
                        if(request.getAttribute("mensaje")!=null) 
                        {                    
                          out.print(request.getAttribute("mensaje"));      
                        }
                        %>
                    </font>
                  </strong>     
                            
                </td>
                </tr>
               </table>
            </form>
        </center>
    </body>
</html>
