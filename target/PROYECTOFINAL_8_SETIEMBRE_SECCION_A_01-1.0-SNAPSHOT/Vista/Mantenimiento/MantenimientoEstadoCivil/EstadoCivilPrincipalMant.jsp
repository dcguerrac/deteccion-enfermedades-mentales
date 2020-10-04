<!DOCTYPE html>
<html>
    <head>      
        <title>Mantenimiento de Estado Civil !!!!</title>
        <link href="<%=request.getContextPath()%>/css/Master.css" rel="stylesheet" type="text/css">
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
    </head>
    <body style="background-color: #F0ECEA;" >
      <form name="form">
        <input type="hidden" name="op">
         <input type="hidden" name="sub">
        <div id="estructura">           
         <%@include file="../../Principal/menu.jsp" %>         
         <div id="contenido" style="height: 500px;width: 100%">
         <center>
         <br><br><br>
        <table width="75%" border="0" class="FondoTabla">
            <tr class="tituloTabla">
               <td >Mantenimiento de Estado Civil</td>
            </tr>
        </table>
        <table width="75%" border="0" >
            <tr  class="tituloTabla">
               <td>&nbsp;</td>
               <td>Nombre Estado Civil</td>                   
               
            </tr>
            <%    for(int  i=0;i<=15;i++){                   %>                
           <tr  <% if( i%2==0 ) {%> class="fila_par"   <% }else { %>  class='fila_impar'   <% }%> >
             <td>&nbsp;</td>
             <td>SOLTERO</td> 
           </tr>
           
           <%          }              %>
        </table>

        <table width="50%" border="0">
          <tr>
           <td><div align="center"><img src="<%=request.getContextPath()%>/imagenes/Nuevo.gif" width="90" height="16" onMouseOver="CambiaImg('bot0','bot0p')" onmouseout="CambiaImg('bot0','bot0')" name="bot0" onclick='javascript:nuevo()'></div></td>
           <td><div align="center"><img src="<%=request.getContextPath()%>/imagenes/Modificar.gif" width="90" height="16" onMouseOver="CambiaImg('bot1','bot1p')" onmouseout="CambiaImg('bot1','bot1')" name="bot1" onclick='javascript:actualizar()'></div></td>
           <td><div align="center"><img src="<%=request.getContextPath()%>/imagenes/Eliminar.gif" width="90" height="16" onMouseOver="CambiaImg('bot2','bot2p')" onmouseout="CambiaImg('bot2','bot2')" name="bot2" onclick='javascript:eliminar()'></div></td>
           <td><div align="center"><img src="<%=request.getContextPath()%>/imagenes/visualizar.gif" width="90" height="16" onMouseOver="CambiaImg('bot3','bot3p')" onmouseout="CambiaImg('bot3','bot3')" name="bot3" onclick='javascript:visualizar()'></div></td>
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


