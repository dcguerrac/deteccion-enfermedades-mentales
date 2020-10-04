
<%!
    
    String  nombre, apellido,dni;
    
    %>

    <% 
         nombre=(String)request.getAttribute("nombre");
         apellido=(String)request.getAttribute("apellido");
         dni=(String)request.getAttribute("dni"); 
        
        
       %> 

<!DOCTYPE html>
<html>
    <head>       
        <title>Modificar Mantenimiento de Empleado!!!!</title>
        <link href="<%=request.getContextPath()%>/css/Master.css" rel="stylesheet" type="text/css">
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
        
        <script>
            
           function  modificarempleado(ruta)
           {
               
                   
           var op=confirm("¿Deseas Modificar el Registro???????");
           if(op)
           {
           document.form.action=ruta+"/EmpleadoControlador";
           document.form.method="GET";
           document.form.op.value="6";
           document.form.submit(); 
           alert("Registro Modificado Satisfactoriamente  !!!!");
           }
           }
            
            
        </script>  
        
        
        
        
    </head>
    <body style="background-color: #F0ECEA;" >        
     <div id="estructura">           
        <%@include file="../../Principal/menu.jsp" %>         
     <div id="contenido" style="height: 500px;width: 100%">
     <center>
     <form  name="form">
     <input  type="hidden"  name="op">
      <input type="hidden" name="sub">
     <input  type="hidden"  name="txtCodigo" value="xxxxxxxxx">
      <br><br><br>
     <table width="50%" border="0"  class="FondoTabla">
       <tr>
         <td colspan="2" class="tituloTabla" ><div align="center">Actualizar   Empleados </div></td>
       </tr>
       <tr>
         <td width="35%" class="tituloFormulario"><div align="left">Nombre :</div></td>
         <td width="65%"><input type="text"  name="txtNombre" value="<%=nombre%>"  ></td>
      </tr>
      <tr>
         <td class="tituloFormulario"><div align="left">Apellido : </div></td>
         <td><input type="text" name="txtApellido"  value="<%=apellido%>"   > </td>
      </tr>
      <tr>
         <td class="tituloFormulario"><div align="left">DNI : </div></td>
         <td><input type="text" name="txtDNI" value="<%=dni%>" ></td>
      </tr>
    </table>
    <table width="50%" border="0"  class="FondoTabla">
        <tr>
            <td width="21%">&nbsp;</td>
            <td width="29%"><div align="center"><A href="javascript:modificarempleado('<%=request.getContextPath()%>')" ><img src="<%=request.getContextPath()%>/imagenes/Modificar.gif"  border='0' width="74" height="16" onMouseOver="CambiaImg('bot0','bot0p')" onMouseOut="CambiaImg('bot0','bot0')" name="bot0" ></A></div></td>
            <td width="28%"><div align="center"><A href="javascript:salir()" ><img src="<%=request.getContextPath()%>/imagenes/Salir.gif" width="74" border='0' height="16" onMouseOver="CambiaImg('bot1','bot1p')" onMouseOut="CambiaImg('bot1','bot1')" name="bot1" ></a></div></td>
            <td width="22%">&nbsp;</td>
        </tr>
    </table>
    <table width="50%" border="0"  class="tituloFormularioMensaje"  >
         <tr >
            <td >
               <% if(request.getAttribute("actualizar")!=null){
                  String n1Cad=(String)request.getAttribute("actualizar");
                   int n=Integer.parseInt(n1Cad);
                   if(n==1){
                     out.print("Se actualizo satisfactoriente");
                   }else{
                     out.print("No se actualizo los datos");
                  }   }
                  %>
            </td>
        </tr>
    </table>
    </form>
     </center>
    </div>
    <div id="pie">                
    </div>
    </div>                
    </body>
</html>
