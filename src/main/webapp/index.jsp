

<html>
    <head>
        <script>
            function  iniciar(ruta)
            {
               var url=ruta+"/Vista/Seguridad/loginAcceso/Login.jsp";	 
               var opciones="toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,width=1500,height=2000";
               window.open(url,"otra",opciones);

//test
              // this.close();
            }             
            
        </script>
    </head>
    
    <body onload="iniciar('<%=request.getContextPath()%>')">
        
    </body>
    
</html>