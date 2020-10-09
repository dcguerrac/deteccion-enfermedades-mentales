<!DOCTYPE html>
<html>
<head>
    <title>Pagina Principal</title>
    <link href="<%=request.getContextPath()%>/css/Master.css" rel="stylesheet" type="text/css">
    <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body style="background-color: #F0ECEA;">
<form name="form">
    <input type="hidden" name="op">
    <input type="hidden" name="sub">
    <div id="estructura">

        <%@include file="menu.jsp" %>

        <div id="contenido" style="height: 500px;width: 100%">
            <form name="form">
                <input type="hidden" name="op">
                <br>
                <br>
                <br>
                <br>
                <div align="center"><img src="<%=request.getContextPath()%>/imagenes/test.png" width="300" height="180">
                </div>

                <table border="0" align="center">
                    <tr>
                        <td colspan="2" class="tituloFormulario2">
                            DESEA EMPEZAR EL TEST?
                        </td>
                    </tr>
                </table>
                <table border="0" align="center">
                    <tr>
                        <td><a href="javascript:enviar('<%=request.getContextPath()%>')"> <img
                                src="<%=request.getContextPath()%>/imagenes/ok.png" width="100" height="100"
                                onMouseOver="CambiaImg('bot4','bot4p')" onmouseout="CambiaImg('bot4','bot4')"
                                name="bot4"></a>
                        </td>
                        <td><a href="javascript:cerrar()"><img src="<%=request.getContextPath()%>/imagenes/cancelar.png"
                                                               width="100" height="100"
                                                               onMouseOver="CambiaImg('bot5','bot5p')"
                                                               onmouseout="CambiaImg('bot5','bot5')" name="bot5"></a>
                        </td>
                    </tr>
                </table>

                <table>
                    <tr>
                        <td>
                            <strong>
                                <font color="#FF0000" size="1" face="Tahoma">
                                    <%
                                        if (request.getAttribute("mensaje") != null) {
                                            out.print(request.getAttribute("mensaje"));
                                        }
                                    %>
                                </font>
                            </strong>

                        </td>
                    </tr>
                </table>
            </form>

        </div>
    </div>
</form>
</body>
</html>
