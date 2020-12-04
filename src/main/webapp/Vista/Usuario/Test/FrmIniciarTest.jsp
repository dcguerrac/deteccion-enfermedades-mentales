<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@page import="Bean.PreguntaBean" %>
<%@page import="Bean.PuntajeBean" %>
<%@page import="java.util.ArrayList" %>
<%@ page import="Dao.PuntajeDao" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException" %>
<%!
    ArrayList<PreguntaBean> lista = null;
    List<PuntajeBean> listaPuntaje = null;
%>
<%

    lista = (ArrayList) request.getAttribute("preguntas");
    PuntajeDao puntajeDao = new PuntajeDao();
    try {
        listaPuntaje = puntajeDao.ListarPuntajes();
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }

%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>INICIAR TEST</title>
    <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
    <link href="<%=request.getContextPath()%>/css/EstiloMenu.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<form name="form">
    <input type="hidden" name="op">
    <input type="hidden" name="opu">
    <input type="hidden" name="subu">
    <div id="estructura">
        <%@ include file="/Vista/Principal/menu.jsp" %>
        <div id="contenido" style="height:auto;width: 100%;background: #fff">
            <div class="container">
                <div class="card mt-2 mb-3">
                    <div class="card-body">
                        <% for (PreguntaBean obj1 : lista) { %>
                        <input type="hidden" name="preguntascod[]" value="<%=obj1.getCodPre()%>"/>
                        <div class="pregunta mb-3">
                            <h5><%=obj1.getOrdPre()%> <%=obj1.getDesPre()%>
                            </h5>
                            <% for (PuntajeBean obj2 : listaPuntaje) { %>
                            <div class="form-check">
                                <input class="form-check-input" type="radio"
                                       name="pregunta_<%=obj1.getCodPre()%>"
                                       id="opcion_<%=Integer.toString(obj2.getNumPun())%>_<%=obj2.getCodPun()%>"
                                       value="<%=Integer.toString(obj2.getNumPun())%>_<%=obj2.getCodPun()%>">
                                <label class="form-check-label"
                                       for="opcion_<%=obj1.getCodPre()%>_<%=obj2.getCodPun()%>">
                                    <%=obj2.getDesPun()%>
                                </label>
                            </div>
                            <% } %>
                        </div>
                        <% } %>
                        <button type="button" onclick="MenuUsuario('<%=request.getContextPath()%>',8)"
                                class="btn btn-primary">
                            Enviar respuestas
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <?php include '../Principal/PiePagina.php';      ?>
    </div>
</form>
</body>
</html>