<div id="encabezado">
    <div id="banner1">
        <img src="<%=request.getContextPath()%>/imagenes/banner.png" alt="" width="1066px" height="110px"/>
    </div>
    <div id="banner2">
        <div id="banner3">
            <img src="<%=request.getContextPath()%>/imagenes/user.png" alt="" width="110px"/>
        </div>
        <div id="banner4">
            <center><h2>Bienvenido</h2></center>
            <center><h2 style="font : 18pt Arial, Helvetica, Verdana ;"><%= request.getParameter("usuario")%> </h2></center>
        </div>
    </div>
</div>
<div id='menu'>
    <ul class="nav">
        <li><a href="javascript:MenuUsuario('<%=request.getContextPath()%>',1)">Inicio</a></li>
        <li><a href="#">Test</a>
            <ul>
                <li><a href="javascript:MenuUsuario('<%=request.getContextPath()%>',4)">Iniciar Test</a></li>
            </ul>
        </li>
        <li><a href="#">Configuracion</a>
            <ul>
                <li><a href="javascript:MenuUsuario('<%=request.getContextPath()%>',6)">Cambio de Clave</a></li>
                <li><a href="javascript:MenuUsuario('<%=request.getContextPath()%>',7)">Datos Personales</a></li>
            </ul>
        </li>
        <li style="float: right"><a href="javascript:CerrarSesionU('<%=request.getContextPath()%>')">Cerrar Sesion</a></li>
    </ul>
</div>
