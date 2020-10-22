<%-- 
    Document   : Registo
    Created on : 04/10/2020, 05:25:59 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<link href="<%=request.getContextPath()%>/css/Master.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registrarme</title>
<script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
</head>
<body id="xdd" onload="iniciarRegistro('<%=request.getContextPath()%>');cargarBotones(2)" background="<%=request.getContextPath()%>/imagenes/fondo2.gif.jpg">

<center>
    <form action="" methot="post" name="form">
        <input type="hidden" name="op">
        <table id="cuadroR" align="center">

            <td colspan="2" class="tituloRegistro2">
                Crear cuenta
            </td>
            </tr>

            <tr>
                <td class="tituloRegistro">
                    <div align="left">Apellidos :</div>
                </td>

                <td>
                    <div align="center"><label>
                        <input name="txtApe" type="text" class="input_text_combo" size="50"
                                                   color="white" onKeyDown="return pulsar(event,this)" maxlength="10">
                    </label></div>
                </td>
            </tr>
            <tr>
                <td class="tituloRegistro">
                    <div align="left">Nombres :</div>
                </td>
                <td>
                    <div align="center"><label>
                        <input name="txtNom" type="text" class="input_text_combo" size="50"
                                                   color="white" onKeyDown="return pulsar(event,this)" maxlength="10">
                    </label></div>
                </td>
            </tr>

            <tr>
                <td class="tituloRegistro">
                    <div align="left">Correo :</div>
                </td>
                <td>
                    <div align="center"><label>
                        <input name="txtCor" type="text" class="input_text_combo" size="50"
                                                   color="white" onKeyDown="return pulsar(event,this)" maxlength="10">
                    </label></div>
                </td>
            </tr>
            <tr>
                <td class="tituloRegistro">
                    <div align="left">Contraseña:</div>
                </td>
                <td>
                    <div align="center"><input name="txtClave" type="password" class="input_text_combo"
                                               onKeyDown="return pulsar(event,this)" size="50" maxlength="10"></div>
                </td>
            </tr>
            <tr>
                <%--                <td align="center"><a href="javascript:crearUsuario('<%=request.getContextPath()%>')"><img
                                        src="<%=request.getContextPath()%>/imagenes/registrar.png" width="110" height="35" value="Ir"
                                        name="bot5"></a>
                                </td>--%>
                    <script>function crear(ruta) {
                        var ape = document.form.txtApe.value;
                        var nombre = document.form.txtNom.value;
                        var usuario = document.form.txtCor.value;
                        var clave = document.form.txtClave.value;
                        if (ape.length == 0) {
                            alert('Ingrese Apellido, gracias');
                            document.form.ape.focus();
                            return;
                        } else {
                            if (nombre.length == 0) {

                                alert('Ingrese nombre, gracias');
                                document.form.nombre.focus();
                                return;

                            }
                            if (usuario.lengh == 0) {
                                alert('Ingrese usuarui, gracias');
                                document.form.usuario.focus();
                                return;
                            }
                            if (clave.length == 0) {
                                alert('Ingrese clave, gracias');
                                document.form.clave.focus();
                                return;
                            } else {
                                document.form.action = ruta + "/UsuarioControlador";
                                document.form.method = "POST";
                                document.form.op.value = "2";
                                document.form.submit();
                            }
                        }
                    }</script>
                <td align="center"><a href="javaScript:crear('<%=request.getContextPath()%>')"> <img
                        src="<%=request.getContextPath()%>/imagenes/registrar.png" width="110" height="35"></a>
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
