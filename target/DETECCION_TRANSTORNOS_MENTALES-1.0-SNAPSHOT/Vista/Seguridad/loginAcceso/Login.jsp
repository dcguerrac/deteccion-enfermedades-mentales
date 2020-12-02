<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html>
<head>
    <link href="<%=request.getContextPath()%>/css/EstiloLogin.css" rel="stylesheet" type="text/css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Pagina Principal</title>
    <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
</head>
<body>
    <center>
        <form name="form">
            <input type="hidden" name="op">
            <br><br><br>
            <img src="<%=request.getContextPath()%>/imagenes/candado.png" width="300">
            <table border="0" bordercolor="black">
                <tbody>                
                    <tr>
                        <td style="background-color: activecaption">
                            <center>
                                <h3>Administrador</h3>
                                <img src="<%=request.getContextPath()%>/imagenes/administrador.png" width="200" height="200">
                                <br>
                                <input type="submit" value="Iniciar Sesion" onclick="entrarA()">
                            </center>
                        </td>
                        <td style="background-color: activeborder">
                            <center>
                                <h3>Usuario</h3>
                                <img src="<%=request.getContextPath()%>/imagenes/usuario.png" width="200" height="200">
                                <br>          
                                <input type="submit" value="Iniciar Sesion" onclick="entrarU()">
                            </center>
                        </td>
                    </tr>         
                </tbody>
            </table>
        </form>
    </center>
    </body>
</html>
