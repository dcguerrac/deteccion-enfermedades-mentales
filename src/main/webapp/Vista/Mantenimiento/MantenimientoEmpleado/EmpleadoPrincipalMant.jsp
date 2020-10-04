<%! 
  String  nomb[]={"IVAN","JORGE","ARMANDO","LUIS","MAIKI","ROGELIO"};
  String  ape[]={"PETRLIK","MAYHUASCA","HUAPAYA","JAUREGUI","COHELLO"};
  String  dni[]={"10140461","444444","6666666","2222222","66666666"};


%>
<!DOCTYPE html>
<html>
    <head>      
        <title>Mantenimiento de Empleado!!!!</title>
        <link href="<%=request.getContextPath()%>/css/Master.css" rel="stylesheet" type="text/css">
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
   
        <script>
            
            function  nuevoempleado(ruta)
         {
        document.form.action=ruta+"/EmpleadoControlador";
        document.form.method="GET";
        document.form.op.value="1";
        document.form.submit(); 
          }
          
          function eliminarempleado(ruta)
          {
              
              
           var op=confirm("¿Deseas Eliminar el Registro???????");
           if(op)
           {
           document.form.action=ruta+"/EmpleadoControlador";
           document.form.method="GET";
           document.form.op.value="4";
           document.form.submit(); 
           }
          }
          
          function actualizarempleado(ruta,nomb,ape,dni)
          {
              alert(nomb+"   "+ape+"   "+dni);
           document.form.action=ruta+"/EmpleadoControlador";
           document.form.method="GET";
           document.form.op.value="5";
           document.form.nomb.value=nomb;
           document.form.ape.value=ape;
           document.form.dni.value=dni;
           document.form.submit(); 
              
          }
            
           </script>
    
    
    </head>
    <body style="background-color: #F0ECEA;" >
      <form name="form">
        <input type="hidden" name="op">
         <input type="hidden" name="sub">
         
         <input type="hidden" name="nomb">
         <input type="hidden" name="ape">
         <input type="hidden" name="dni">
         
         
        <div id="estructura">           
         <%@include file="../../Principal/menu.jsp" %>         
         <div id="contenido" style="height: 500px;width: 100%" >
         <center>
         <br><br><br>
        <table width="75%" border="0" class="FondoTabla">           
            <tr class="tituloTabla">
                <td><input type="button" value="Nuevo" onclick="nuevoempleado('<%=request.getContextPath()%>')"></td>
               <td >Mantenimiento de Empleados</td>
            </tr>
        </table>
        <table width="75%" border="0" >
            <tr  class="tituloTabla">
               <td>&nbsp;</td>
               <td>Nombre</td>                   
               <td>Apellido</td>
               <td>Dni</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
            </tr>
            <%    for(int  i=0;i<nomb.length;i++){                   %>                
           <tr  <% if( i%2==0 ) {%> class="fila_par"   <% }else { %>  class='fila_impar'   <% }%> >
             <td>&nbsp;</td>
             <td><%=nomb[i]%></td>                   
             <td><%=ape[i]%></td>
             <td><%=dni[i]%></td>
             <td><input type="button" value="Modificar" onclick="actualizarempleado('<%=request.getContextPath()%>','<%=nomb[i]%>','<%=ape[i]%>','<%=dni[i]%>' )"></td>
             <td><input type="button" value="Eliminar" onclick="eliminarempleado('<%=request.getContextPath()%>')"></td>
             <td><input type="button" value="Visualizar" onclick="visualizar()"></td>
           </tr>
           <%          }              %>
        </table>

        <table width="50%" border="0">
          <tr>
           <td></td>
           <td></td>
           <td></td>
           <td></td>
          </tr>
        </table> 
        </center>      
        </div>
        <div id="pie">                
        </div>        
        </div> 
        </form>
    </body>
</html>


