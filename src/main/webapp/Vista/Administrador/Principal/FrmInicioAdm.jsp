<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INICIO ADMINISTRADOR</title>
        <link href="<%=request.getContextPath()%>/css/EstiloMenu.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/EstiloPagAdmPrincipal.css" rel="stylesheet" type="text/css"/>
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
    </head>

    <body>
        <form name="form">
            <input type="hidden" name="op">
            <input type="hidden" name="opu">
            <input type="hidden" name="subu">
            <div id="estructura">  
                <%@ include file="Menu.jsp"  %>
                <div id="contenido" style="width: 100%; height: 420px">
                    <div id="div">
                        <div id="titulo">
                            <h1><font color="red">H</font>elp<font color="red">M</font>ind</h1>
                            <hr>
                        </div>
                        <div id="div1">
                            <div id="text1">
                                <br>
                                <p>
                                <h2>HelpMind es un Sistema de información integral,
                                que evalua mediante los test a las personas 
                                que presenten sintomas de la COVID-19 y por ello
                                halla sufrido algun tipo de transtorno mental y 
                                dar como resultado la evalucación de cada persona 
                                sobre su salud mental.</h2>
                                </p>
                            </div>
                            <div id="img1">
                                <img style="float: right" src="<%=request.getContextPath()%>/imagenes/logo_admin_principal_azul.png" alt=""/>
                            </div>
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
