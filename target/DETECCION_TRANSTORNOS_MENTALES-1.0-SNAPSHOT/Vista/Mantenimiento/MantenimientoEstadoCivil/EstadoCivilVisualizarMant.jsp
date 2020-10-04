<!DOCTYPE html>
<html>
    <head>       
        <title>Visualizar Mantenimiento de Empleado!!!!</title>
        <link href="<%=request.getContextPath()%>/css/Master.css" rel="stylesheet" type="text/css">
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
    </head>
    <body style="background-color: #F0ECEA;" >        
      <div id="estructura">           
      <%@include file="../../Principal/menu.jsp" %>
         
      <div id="contenido" style="height: 500px;width: 100%">
      <center>
       <form name="form">
            <input type="hidden" name="op">
             <input type="hidden" name="sub">
             <br><br><br>
     <table width="75%" border="0" class="FondoTabla">
            <tr class="tituloTabla">
                <td >Mostrar  Empleado</td>
            </tr>
     </table>
     <table width="75%" border="0" >
            <tr class="tituloTabla">
                <td width="5%" >Codigo</td>
                <td width="5%">Nombre</td>
                <td width="45%">Apellido</td>
                <td width="45%">DNI</td>
            </tr>
            <tr  class="fila_par" >
              <td >xxxxxxxxxxxxxxxxxx</td>
              <td >xxxxxxxxxxxxxxxxxxxxxxxx</td>
               <td >xxxxxxxxxxxxxxxxxxxxxxxxxx></td>
                <td >xxxxxxxxxxxxxxxxxxxxxxx</td>
            </tr>
     </table>
    <table width="50%" border="0"  class="FondoTabla">
            <tr>
                <td width="21%">&nbsp;</td>
                <td width="28%"><div align="center"><A href="javascript:salir()" ><img src="<%=request.getContextPath()%>/imagenes/Salir.gif" width="74" border='0' height="16" onMouseOver="CambiaImg('bot1','bot1p')" onMouseOut="CambiaImg('bot1','bot1')" name="bot1" ></a></div></td>
                <td width="22%">&nbsp;</td>
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
