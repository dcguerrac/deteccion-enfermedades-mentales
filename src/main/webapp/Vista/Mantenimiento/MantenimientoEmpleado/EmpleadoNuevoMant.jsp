<!DOCTYPE html>
<html>
    <head>       
        <title> Mantenimiento de Nuevo Empleado!!!!</title>
        <link href="<%=request.getContextPath()%>/css/Master.css" rel="stylesheet" type="text/css">
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
        
        
        <script>
            function   guardarempleado(ruta)
            {
                var nombre=window.document.form.txtNombre.value;
                var apellido=window.document.form.txtApellido.value;
                 var dni=window.document.form.txtDNI.value;
                
                if(nombre=='')
                {
                   alert("Ingrese el Nombre  !!!!!");
                   window.document.form.txtNombre.focus();
                   return;
                }else if( apellido=='')
                {
                   alert("Ingrese el Apellido  !!!!!");
                   window.document.form.txtApellido.focus();
                   return;  
                }else if(dni=='')
                {
                    alert("Ingrese el Dni  !!!!!");
                   window.document.form.txtDNI.focus();
                   return;
                }else{
                      
                document.form.action=ruta+"/EmpleadoControlador";
                document.form.method="POST";
                document.form.op.value="2";
                document.form.submit();
                }
              
            }
            function salirempleado(ruta)
            {
                document.form.action=ruta+"/EmpleadoControlador";
                document.form.method="POST";
                document.form.op.value="3";
                document.form.submit();
            }           
            
            
        </script>
        
        
        
        
    </head>
    <body style="background-color: #F0ECEA;" >        
      <div id="estructura">           
       <%@include file="../../Principal/menu.jsp" %>  
       <form name="form">   
            <input type="hidden" name="op">
             <input type="hidden" name="sub">
       <div id="contenido" style="height: 500px;width: 100%"> 
       <center>
        <br><br><br>
        <table width="50%" border="0"  class="FondoTabla">
            <tr>
                <td colspan="2" class="tituloTabla" ><div align="center">Insertar  Empleados </div></td>
            </tr>
            <tr>
                <td width="35%" class="tituloFormulario"><div align="left">Nombre :</div></td>
                <td width="65%"><input type="text" name="txtNombre"   onKeyDown="return pulsar(event,this)" ></td>
            </tr>
            <tr>
                <td class="tituloFormulario"><div align="left">Apellido : </div></td>
                <td><input type="text" name="txtApellido"   onKeyDown="return pulsar(event,this)" > </td>
            </tr>
            <tr>
                <td class="tituloFormulario"><div align="left">DNI : </div></td>
                <td><input type="text" name="txtDNI"  onKeyDown="return pulsar(event,this)" ></td>
            </tr>
        </table>
        <table width="50%" border="0"  class="FondoTabla">
            <tr>
                <td width="21%">&nbsp;</td>
                <td width="29%"><div align="center"><A href="javascript:guardarempleado('<%=request.getContextPath()%>')" ><img src="<%=request.getContextPath()%>/imagenes/Guardar.gif" border='0' width="74" height="16" onMouseOver="CambiaImg('bot0','bot0p')" onMouseOut="CambiaImg('bot0','bot0')" name="bot0" ></A></div></td>
                <td width="28%"><div align="center"><A href="javascript:salirempleado('<%=request.getContextPath()%>')" ><img src="<%=request.getContextPath()%>/imagenes/Salir.gif" width="74" border='0' height="16" onMouseOver="CambiaImg('bot1','bot1p')" onMouseOut="CambiaImg('bot1','bot1')" name="bot1" ></a></div></td>
                <td width="22%">&nbsp;</td>
            </tr>
        </table>
        <table width="50%" border="0"  class="tituloFormularioMensaje"  >
             <tr >
                <td >
                   <% if(request.getAttribute("mensaje")!=null){
                      String n1Cad=(String)request.getAttribute("mensaje");
                       
                         out.print(n1Cad);
                      }   
                      %>
                </td>
            </tr>
       </table>
       </center>
       </div>
       <div id="pie">                
       </div> 
      </form>      
     </div>       
    </body>
</html>
