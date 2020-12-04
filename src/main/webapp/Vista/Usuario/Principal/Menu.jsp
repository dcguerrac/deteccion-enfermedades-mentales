<html>
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
                    <center><h2 style="font : 18pt Arial, Helvetica, Verdana ;"><?php echo $usuario['UsuPer']   ?></h2></center>
                </div>
            </div>
        </div>       
    <div id='menu'>            
        <ul class="nav">
            <li><a href="javascript:MenuAdministrador('<%=request.getContextPath()%>/Controlador/',1)">Inicio</a></li>
            <li><a href="#">Mantenimiento</a>
                <ul>
                    <li><a href="javascript:MenuAdministrador('<%=request.getContextPath()%>/Controlador/',2)">Preguntas</a></li>						
                    <li><a href="javascript:MenuAdministrador('<%=request.getContextPath()%>/Controlador/',3)">Usuario</a></li>
                    <li><a href="javascript:MenuAdministrador('<%=request.getContextPath()%>/Controlador/',9)">Administrador</a></li>
                </ul>
            </li>
            <li><a href="#">Nuevo</a>
                <ul>
                    <li><a href="javascript:MenuAdministrador('<%=request.getContextPath()%>/Controlador/',6)">Administrador</a></li>						
                    <li><a href="javascript:MenuAdministrador('<%=request.getContextPath()%>/Controlador/',7)">Usuario</a></li>
                </ul>
            </li>
            <li><a href="#">Configuracion</a>
		<ul>
                    <li><a href="javascript:MenuAdministrador('<%=request.getContextPath()%>/Controlador/',4)">Cambio de Clave</a></li>
                    <li><a href="javascript:MenuAdministrador('<%=request.getContextPath()%>/Controlador/',5)">Configuracion de Cuenta</a></li>
		</ul>
            </li>
            <li><a href="#">Reportes</a>
		<ul>
                    <li><a href="javascript:MenuAdministrador('<%=request.getContextPath()%>/Controlador/',8)">Reporte de pacientes</a></li>	                                             
		</ul>
            </li>
            <li style="float: right"><a href="javascript:CerrarSesionA()">Cerrar Sesion</a></li>
        </ul>
    </div>

</html>


