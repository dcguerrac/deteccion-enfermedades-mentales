<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Administrador</title>
    <link href="<%=request.getContextPath()%>/css/EstiloLogin.css" rel="stylesheet" type="text/css"/>
    <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
</head>
<body>
<div class="login-box">
    <img src="<%=request.getContextPath()%>/imagenes/login.png" alt="" class="img"/>
    <br><br><br><br>
    <h1>Administrador</h1>
    <form name="form" action="" methot="post">
        <input type="hidden" name="op">
        <input type="hidden" name="opa">
        <input type="hidden" name="nivel">
        <!-- USERNAME INPUT -->
        <label for="username">ID Usuario</label>
        <input type="text" name="usuario" placeholder="Id Usuario">
        <!-- PASSWORD INPUT -->
        <label for="password">Contraseña</label>
        <input type="password" name="clave" placeholder="Contraseña">
        <input type="submit" value="Iniciar Sesion" onclick="ValidarAccesoA('<%=request.getContextPath()%>')">
        <a href="<%=request.getContextPath()%>/index.jsp">Regresar</a>
    </form>
    <%
        if (request.getAttribute("mensaje") != null) {
            out.print(request.getAttribute("mensaje"));
        }
    %>
</div>
</body>
</html>
