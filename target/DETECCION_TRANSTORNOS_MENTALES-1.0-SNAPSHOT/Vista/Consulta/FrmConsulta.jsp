<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Pagina Consulta</title>
        <link href="<%=request.getContextPath()%>/css/Master.css" rel="stylesheet" type="text/css">
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
    </head>
    <body style="background-color: #F0ECEA;" >
     <form name="form">
            <input type="hidden" name="op">
              <div id="estructura">  
         
              
         
              <%@include file="menu.jsp" %>
         
         <div id="contenido" style="height: 500px;width: 100%">
                        
                        
         </div>
           <div id="pie">
                
           </div>        
           </div> 
           </form>  
    </body>
</html>