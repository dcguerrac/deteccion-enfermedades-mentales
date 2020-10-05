<html>
    <head>
        <link href="<%=request.getContextPath()%>/css/Master.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
    </head>
    
    <body    onload="iniciar('<%=request.getContextPath()%>');cargarBotones(2)" >
        <center>
                <form   name="form">
                   
                <input type="hidden" name="op">       
                
               
                <table id="cuadro" align="center" >
                    <tr >
                        <td colspan="2" ><div align="center"><img src="<%=request.getContextPath()%>/imagenes/user.jpg" width="100" height="100" ></div></td>
                    </tr>
                
                    <tr>
                   
                        <td colspan="2"  class="tituloFormulario2">
                            Acceso al Sistema
                        </td>
                    </tr>


                    <tr>
                        <td class="tituloFormulario"><div align="left">Usuario : </div></td>
                        <td ><div align="center"><input name="txtUsuario" type="text" class="input_text_combo" size="15" color="white"  onKeyDown="return pulsar(event,this)"  maxlength="10"></div></td>
                    </tr>
                    <tr>
                        <td class="tituloFormulario"><div align="left">Contraseña: </div></td>
                        <td><div align="center"><input name="txtClave" type="password" class="input_text_combo" onKeyDown="return pulsar(event,this)" size="15" maxlength="10"></div></td>
                    </tr>
                    
                    <tr>
                        <td align="center" > <a href="javascript:enviar('<%=request.getContextPath()%>')"> <img src="<%=request.getContextPath()%>/imagenes/ingresar.png" width="110" height="35" onMouseOver="CambiaImg('bot4','bot4p')" onmouseout="CambiaImg('bot4','bot4')" name="bot4"></a>
                        </td>
                        <td align="center" > <a href="Registro.jsp('<%=request.getContextPath()%>')"><img src="<%=request.getContextPath()%>/imagenes/registrar.png" width="110" height="35" value="Ir" name="bot5"></a>
                        </td>
                    </tr>       
                    
                </table>
                

               <table>
                <tr>
                 <td>
                  <strong>
                      <font color="black" size="1" face="Tahoma">
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
