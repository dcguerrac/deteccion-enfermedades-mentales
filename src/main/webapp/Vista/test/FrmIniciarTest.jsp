<%@page import="Bean.PreguntaBean" %>
<%@page import="java.util.ArrayList" %>
<%!
    ArrayList<PreguntaBean> lista = null;
%>
<%

    lista = (ArrayList) request.getAttribute("lista");

%>
<!DOCTYPE html>
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
        <%@include file="/Vista/Usuario/Principal/Menu.jsp" %>
        <div id="contenido" style="height: 700px;width: 100%">
            <div class="container">
                <div class="card mt-2 mb-3">
                    <div class="card-body">
                        <% for (PreguntaBean obj1 : lista) { %>
                        <input type="hidden" name="preguntascod[]" value="<% System.out.println(obj1.getCodPre()); %>"/>
                        <div class="pregunta mb-3">
                            <h5><% System.out.println(obj1.getOrdPre()); %>.  <%
                                System.out.println(obj1.getDesPre()); %></h5>
                            <?php foreach ($puntajes as $puntaje)  {         ?>
                            <div class="form-check">
                                <input class="form-check-input" type="radio"
                                       name="pregunta_<?php echo $pregunta['CodPre']; ?>"
                                       id="opcion_<?php echo $pregunta['CodPre']; ?>_<?php echo $puntaje['CodPun']; ?>"
                                       value="<?php echo $puntaje['NumPun']; ?>_<?php echo $puntaje['CodPun']; ?>">
                                <label class="form-check-label"
                                       for="opcion_<?php echo $pregunta['CodPre']; ?>_<?php echo $puntaje['CodPun']; ?>">
                                    <?php echo utf8_encode($puntaje['DesPun']); ?>
                                </label>
                            </div>
                            <?php  }   ?>
                        </div>
                        <?php  }   ?>
                        <button type="button" onclick="MenuUsuario('../../../Controlador/',8)" class="btn btn-primary">
                            Enviar respuestas
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div id="pie"></div>
    </div>
</form>
</body>
</html>