<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html>
<head>
  <%--  <link href="<%=request.getContextPath()%>/css/Master.css" rel="stylesheet" type="text/css">--%>
    <link href="<%=request.getContextPath()%>/css/EstiloCrearUsuario.css" rel="stylesheet" type="text/css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Crear usuario</title>
    <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
</head>
    <body background="<%=request.getContextPath()%>/imagenes/fondoLogin.jpg" >
        <div id="Crear_Cuenta">
            <h1>Crear Cuenta</h1>
            <form name="form">
                <input type="hidden" name="op">
                <input type="hidden" name="txtnombre">
                <!-- USERNAME INPUT -->
                <label for="username">Nombres</label>
                <input type="text" name="txtnombre" placeholder="Nombres">
                <label for="username">Apellidos</label>
                <input type="text" name="txtapellido" placeholder="Apellidos">
                <label for="email">Correo</label>
                <input type="text" name="txtemail" placeholder="Email">
                <!-- PASSWORD INPUT -->
                <label for="password">Contraseña</label>
                <input type="password" name="txtclave" placeholder="Contraseña">
                <label for="password">Confirmar Contraseña</label>
                <input type="password" name="txtclave2" placeholder="Vuelva a escribir la contraseña">
                <a href="javascript:crearUsuario('<%=request.getContextPath()%>')">CREAR </a>

            </form>
        </div>
    </body>
</html>
