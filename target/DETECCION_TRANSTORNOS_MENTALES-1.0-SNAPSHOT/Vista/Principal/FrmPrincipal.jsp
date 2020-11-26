<!DOCTYPE html>
<%!
/*    HttpServletRequest request = new HttpServletRequest() {
    };
    HttpSession session = request.getSession();*/
%>

<html>
<head>
    <meta charset="UTF-8">
    <title>INICIO USUARIO</title>
    <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
    <link href="<%=request.getContextPath()%>/css/EstiloMenu.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/EstiloPagUsuPrincipal.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<form name="form">
    <input type="hidden" name="op">
    <input type="hidden" name="opu">
    <input type="hidden" name="subu">
    <div id="estructura">
        <%@include file="menu.jsp" %>
        <div id="contenido" >
            <div id="div1">
                <div id="text1">
                    <p><h3>Test de Estado de Salud Mental <input style="float: right" type="submit" value="Comenzar Test" onclick="ComenzarTest()"></h3>
                    <hr>
                    <p align = justify>En estos tiempos el miedo, la preocupacion el
                        miedo y el estres son respuestas normales en los que nos
                        enfrentamos a la incertidumbre, o a lo desconocido o
                        a situaciones de cambios o crisis. Asi que es normal
                        y comprensible que la gente experimente estos
                        sentimientos en el contexto de la pandemia COVID-19.</p>
                </div>
                <div id="img1">
                    <center><img src="<%=request.getContextPath()%>/imagenes/salud_mental_1.jpg" alt="" width="285px"/></center>
                </div>
            </div>
            <div id="div2">
                <div id="text2">
                    <br>
                    <p align = justify>Al temor de contraer el virus en una pandemia como
                        la de COVID-19, se suma el impacto de los importantes
                        cambios en nuestra vida cotidiana provocados por los
                        esfuerzos para contener y frenar la propagacion del
                        virus. Ante las nuevas y desafiantes realidades de
                        distanciamiento fisico, el trabajo desde el hogar,
                        el desempleo temporal, la educacion de los ninos en
                        el hogar y la falta de contacto fisico con los seres
                        queridos y amigos, es importante que cuidemos tanto
                        nuestra salud fisica como mental.</p>
                </div>
                <div id="img2">
                    <center><img src="<%=request.getContextPath()%>/imagenes/salud_mental_2.jpg" alt="" width="285px" height="160"/></center>
                </div>
            </div>
            <div id="div3">
                <div id="text3">
                    <br>
                    <p align = justify>Atender la salud mental y el bienestar psicosocial,
                        en momentos de emergencia, es tan importante como
                        atender la salud fisica. La situacion actual de emergencia
                        podria desencadenar en problemas de salud mental en
                        una proporcion de la poblacion. Ademas, las personas
                        con trastornos graves preexistentes se tornan aun mas
                        vulnerables debido al desplazamiento, al desamparo y
                        a la ausencia de los servicios de salud cotidianos.
                        De otro lado, el consumo de alcohol y drogas plantea
                        graves riesgos en materia de salud y de violencia de
                        genero.</p>
                </div>
                <div id="img3">
                    <center><img src="<%=request.getContextPath()%>/imagenes/salud_mental_3.jpg" alt="" width="285px" height="160"/></center>
                </div>
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
                    <a href="#"><img src="<%=request.getContextPath()%>/imagenes/RedesSociales/facebook.png" alt="" width="30px"/></a>
                </div>
                <div id="redes">
                    <a href="#"><img src="<%=request.getContextPath()%>/imagenes/RedesSociales/twitter.png" alt="" width="30px"/></a>
                </div>
                <div id="redes">
                    <a href="#"><img src="<%=request.getContextPath()%>/imagenes/RedesSociales/instagram.png" alt="" width="30px"/></a>
                </div>
                <div id="redes">
                    <a href="#"><img src="<%=request.getContextPath()%>/imagenes/RedesSociales/whatsapp.png" alt="" width="30px"/></a>
                </div>
                <div id="redes">
                    <a href="#"><img src="<%=request.getContextPath()%>/imagenes/RedesSociales/youtube.png" alt="" width="30px"/></a>
                </div>
                <div id="redes">
                    <a href="#"><img src="<%=request.getContextPath()%>/imagenes/RedesSociales/gmail.png" alt="" width="30px"/></a>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>
