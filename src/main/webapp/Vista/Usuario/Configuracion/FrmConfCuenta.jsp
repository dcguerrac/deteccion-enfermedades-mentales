<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Bean.PersonaBean" %>
<!DOCTYPE html>
<%--<?php
session_start(); // me permite iniciar una sesion
$usuario = $_SESSION['admin'];
$confadmin = $_SESSION['confadmin'];
if($usuario == null || $usuario ==''){
header("Location:../Seguridad/FrmLoginAdministrador.php");
die();
}
?>--%>

<%!
    ArrayList<PersonaBean> lista = null;
%>
<%

    lista = (ArrayList) request.getAttribute("confadmin");


%>
<html>
<head>
    <meta charset="UTF-8">
    <title>CONFIGURACION DE CUENTA</title>
    <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
    <link href="<%=request.getContextPath()%>/css/EstiloMenu.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/EstiloConfDatosPersonales.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<form name="form">
    <input type="hidden" name="op">
    <input type="hidden" name="opu">
    <input type="hidden" name="subu">
    <input type="hidden" name="confi">
    <div id="estructura">
        <%@ include file="/Vista/Usuario/Principal/Menu.jsp" %>
        <div id="contenido" style="height: 720px;width: 100%">
            <div id="img">
                <img src="<%=request.getContextPath()%>/imagenes/config.png" alt=""/>
            </div>
            <div id="div1">
                <% for (PersonaBean obj1 : lista) { %>
                <div style="width: 100% ; height: 60px">
                    <p style="font-size: 22px">MI CUENTA</p>
                    <hr>
                </div>
                <div style="width: 90% ; height: 470px">
                    <div style="width: 17% ; height: 100%; float: left">
                        <center><img src="<%=request.getContextPath()%>/imagenes/ConfUsuario.png" alt="" width="100px"/>
                        </center>
                    </div>
                    <div id="div2">

                        <!-- USERNAME INPUT -->
                        <label for="username">Nombre</label>
                        <input type="text" value="<%= obj1.getNomPer()%>>" name="nombre">
                        <label for="username">Apellido Paterno</label>
                        <input type="text" value="<%= obj1.getAppPer()%>>" name="apellidop">
                        <label for="username">Apellido Materno</label>
                        <input type="text" value="<%= obj1.getApmPer()%>>" name="apellidom">
                        <label for="username">Edad</label>
                        <input type="text" value="<%= obj1.getEdaPer()%>>" name="edad">
                        <label for="username">Sexo</label>
                        <input type="text" value="<%= obj1.getSexPer()%>>" name="sexo">
                        <label for="username">Telefono</label>
                        <input type="text" value="<%= obj1.getTelPer()%>>" name="telefono">
                    </div>
                </div>
                <br><br>
                <div id="div3">
                    <input style="float: right" type="submit" value="Guardar Cambios"
                           onclick="GuardarCambAdm('<%=request.getContextPath()%>')">
                </div>
                <% } %>
<%--                                <br>
                                <?php
                                            if(isset($_GET['mensaje']))
                                            {
                                                $mensaje=$_GET['mensaje'];
                                                echo( $mensaje );
                                            }
                                        ?>&ndash;%&gt;--%>
            </div>
        </div>
        <div id="pie">
            <div id="pie1">
                <div id="acerca">
                    <a href="#">Acerca de nosotros</a>
                </div>
                <div id="contac" style="">
                    <a href="#">Contactanos</a>
                </div>
                <div id="acce">
                    <a href="#">Accesibilidad</a>
                </div>
                <div id="poli">
                    <a href="#">Politicas de privacidad</a>
                </div>
            </div>
            <div id="pie2">
                <div id="men">¡Mantente Informado!</div>
                <div id="redes">
                    <a href="#"><img src="<%=request.getContextPath()%>/imagenes/RedesSociales/facebook.png" alt=""
                                     width="30px"/></a>
                </div>
                <div id="redes">
                    <a href="#"><img src="<%=request.getContextPath()%>/imagenes/RedesSociales/twitter.png" alt=""
                                     width="30px"/></a>
                </div>
                <div id="redes">
                    <a href="#"><img src="<%=request.getContextPath()%>/imagenes/RedesSociales/instagram.png" alt=""
                                     width="30px"/></a>
                </div>
                <div id="redes">
                    <a href="#"><img src="<%=request.getContextPath()%>/imagenes/RedesSociales/whatsapp.png" alt=""
                                     width="30px"/></a>
                </div>
                <div id="redes">
                    <a href="#"><img src="<%=request.getContextPath()%>/imagenes/RedesSociales/youtube.png" alt=""
                                     width="30px"/></a>
                </div>
                <div id="redes">
                    <a href="#"><img src="<%=request.getContextPath()%>/imagenes/RedesSociales/gmail.png" alt=""
                                     width="30px"/></a>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>
