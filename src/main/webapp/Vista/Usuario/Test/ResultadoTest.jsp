<!DOCTYPE html>
<%--<?php
    session_start(); // me permite  iniciar una  sesion
    $usuario = $_SESSION['usu'];
    if($usuario == null || $usuario ==''){
	header("Location:../Seguridad/FrmLoginUsuario.php");
	die();
    }
?>--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>RESULTADO TEST</title>
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
                <div id="contenido" style="height: 700px;width: 100%">
                    <div class="container">
                        <div class="card mt-2 mb-3">
                            <div class="card-body text-center">
                                <?php                          
                                if(isset($_GET['mensaje']))
                                {
                                    $mensaje=$_GET['mensaje'];
                                    ?>
                                    <h2><?php echo( $mensaje ); ?></h2>
                                    <?php
                                }
                                ?>
                                <?php                          
                                if(isset($_GET['descripcion']))
                                {
                                    $descripcion=$_GET['descripcion'];
                                    ?>
                                    <p style="font-size: 15px">Tus resultados indican: <strong><?php echo( $descripcion ); ?></strong></p>
                                    <?php
                                }
                                ?>
                                    <a href="<%=request.getContextPath()%>/Vista/Usuario/Principal/FrmInicioUsu.jsp">Volver a la pagina principal</a>
                            </div>
                        </div>
                    </div>
                </div>
                <?php include '../Principal/PiePagina.php';      ?>         
            </div>
	</form>
    </body>
</html>
