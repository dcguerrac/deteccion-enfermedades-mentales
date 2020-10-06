<div id="encabezado">
    <div id="logo">
        <center>
            <table width="100%">
                <tr>
                    <td>&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <center>
                            <img src="<%=request.getContextPath()%>/imagenes/cerebro.png" width="50%" height="100%"
                                 alt="50%"/>
                        </center>
                    </td>    
                </tr>

            </table>
        </center>
    </div>
    <div id='banner'>
        <center>
            <table>
                <tr>
                    <td>&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td>
                              <span style="font-size: large; ">
                              <p align="center">
                                    BIENVENIDO AL ASISTENTE VIRTUAL DE TRANSTORNOS MENTALES
                              </p>                               
                               </span>
                    </td>
                </tr>
            </table>
        </center>
    </div>
</div>
<div id='menu'>
    <ul class="nav">
        <li><a href="">Inicio</a></li>
        <li><a href="#">Mantenimiento</a>
            <ul>
                <li><a href="javascript:menu('<%=request.getContextPath()%>',1,1)">Empleado</a></li>
                <li><a href="javascript:menu('<%=request.getContextPath()%>',1,2)">Estado Civil</a></li>
                <li><a href="javascript:menu('<%=request.getContextPath()%>',1,3)">Sexo</a></li>
                <li><a href="#">Mas</a>
                    <ul>
                        <li><a href="">Submenu1</a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="#">Seguridad</a>
            <ul>
                <li><a href="javascript:menu('<%=request.getContextPath()%>',3,1)">Configuracion de Cuenta</a></li>
                <li><a href="javascript:menu('<%=request.getContextPath()%>',3,2)">Cambiar Clave</a></li>
            </ul>
        </li>

    </ul>
</div>