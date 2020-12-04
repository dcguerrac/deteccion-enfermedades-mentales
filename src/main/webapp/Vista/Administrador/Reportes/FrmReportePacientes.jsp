<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Bean.PersonaBean" %>
<!DOCTYPE html>
<%--<?php
    session_start(); // me permite  iniciar una  sesion
    $usuario = $_SESSION['admin'];
    $listapersona = $_SESSION['listapersonas'];
    if($usuario == null || $usuario ==''){
        header("Location:../Seguridad/FrmLoginAdministrador.php");
        die();
    }
?>--%>
<%!
    ArrayList<PersonaBean> lista = null;
%>
<%
    lista = (ArrayList) request.getAttribute("listapersonas");
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>REPORTE DE PACIENTES</title>
    <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
    <link href="<%=request.getContextPath()%>/css/EstiloMenu.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/EstiloTabla.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<form name="form">
    <input type="hidden" name="op">
    <input type="hidden" name="opu">
    <input type="hidden" name="subu">
    <input type="hidden" name="re">
    <input type="hidden" name="codi">
    <div id="estructura">
        <%@ include file="/Vista/Administrador/Principal/Menu.jsp" %>
        <div id="contenido" style="height: 467px;width: 100%">
            <br><br>
            <div>
                <br><br>
                <img src="<%=request.getContextPath()%>/imagenes/test.png" style="float: left; width: 300px;"/>
                <center>
                    <table border="1" class="container-table">
                        <tr>
                            <td class="titulo" colspan="6">
                                <center><b>Datos Personales</b></center>
                            </td>
                            <td class="titulo" colspan="1">
                                <center><b>Reporte</b></center>
                            </td>
                        </tr>
                        <tr align="center">
                            <td class="titulo1" width="140"><b>Cod. Persona</b></td>
                            <td class="titulo1" width="140"><b>Apellido Paterno</b></td>
                            <td class="titulo1" width="140"><b>Apellido Materno</b></td>
                            <td class="titulo1" width="70"><b>Nombre</b></td>
                            <td class="titulo1" width="70"><b>Sexo</b></td>
                            <td class="titulo1" width="70"><b>Edad</b></td>
                            <td class="titulo1" width="70"><b>Lista de Test</b></td>
                        </tr>
                        <% for (PersonaBean obj1 : lista) { %>

                        <tr align="center">
                            <td class="titulo2"><%=obj1.getCodPer()%></td>
                            <td class="titulo2"><%=obj1.getAppPer()%>
                            </td>
                            <td class="titulo2"><%=obj1.getApmPer()%></td>
                            <td class="titulo2"><%=obj1.getNomPer()%>
                            </td>
                            <td class="titulo2"><%=obj1.getSexPer()%>
                            </td>
                            <td class="titulo2"><%=obj1.getEdaPer()%>
                            </td>
                            <td class="titulo2">
                                <center><a href="javascript:VerTest('<%=obj1.getCodPer()%>')"><img
                                        src="<%=request.getContextPath()%>/imagenes/MostrarTest.png" width="20"
                                        height="20"/></a></center>
                            </td>
                        </tr>
                        <% } %>
                    </table>
                </center>
                <br><br><br>
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
