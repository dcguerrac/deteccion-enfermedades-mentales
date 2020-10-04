<div id="encabezado">
            <div id="logo">
                <center>
                    <table  width="100%">
                       <tr>
                           <td>&nbsp;&nbsp;</td>
                       </tr>
                        <tr>
                            <td>
                              <center>
                                 <img src="<%=request.getContextPath()%>/imagenes/venta.png" width="27%" height="10%" alt=""/>
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
                              <font size="5">  
                              <p align="center">
                                    Sistema de Ventas de la Empresa Pepito S.A.C
                              </p>                               
                               </font>  
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
				<li><a href="#">Proceso</a>
					<ul>
						<li><a href="javascript:menu('<%=request.getContextPath()%>',2,1)">Realizar Venta</a></li>						
					</ul>
				</li>
				<li><a href="#">Seguridad</a>
					<ul>
						<li><a href="javascript:menu('<%=request.getContextPath()%>',3,1)">Configuracion de Cuenta</a></li>
                                                <li><a href="javascript:menu('<%=request.getContextPath()%>',3,2)">Cambiar Clave</a></li>
                                                <li><a href="javascript:menu('<%=request.getContextPath()%>',3,3)">Crear Usuario</a></li>
					</ul>
				</li>
                                <li><a href="#">Consulta</a>
					<ul>
						<li><a href="javascript:menu('<%=request.getContextPath()%>',4,1)">Consulta x Producto</a></li>	
                                                <li><a href="javascript:menu('<%=request.getContextPath()%>',4,2)">Consulta x Factura</a></li>
                                                
					</ul>
				</li>
                                <li><a href="#">Reportes</a>
					<ul>
						<li><a href="javascript:menu('<%=request.getContextPath()%>',5,1)">Reporte de Facturas</a></li>	
                                                <li><a href="javascript:menu('<%=request.getContextPath()%>',5,2)">Reporte de Productos</a></li>                                                
					</ul>
				</li>
                                
			</ul>
   </div>