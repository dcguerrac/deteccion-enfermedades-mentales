
        function  menu(ruta,op,sub1)
        {  
            document.form.action=ruta+"/MenuControlador";
            document.form.method="GET";
            document.form.op.value=op;
            document.form.sub.value=sub1;
            document.form.submit();


        }
            
     function enviar(  ruta   )
        {
            var usu=document.form.txtUsuario.value;
            var clave=document.form.txtClave.value;
            if(usu.length==0){
                alert('Ingrese usuario, gracias');
                document.form.txtUsuario.focus();return;
            }else{
                if(clave.length==0){
              
                    alert('Ingrese clave, gracias');
                    document.form.txtClave.focus();return;
                }else{
                    document.form.action=ruta+"/UsuarioControlador";
                    document.form.method="POST";
                    document.form.op.value="1";
                    document.form.submit();
                }
            }
    }



 
    function cargar(){
      document.form.txtUsuario.focus();
    }    
            
     function  nuevo(ruta)
     {
         
                document.form.action=ruta+"/EmpleadoControlador";
                document.form.method="POST";
                document.form.op.value="1";
                document.form.submit();
         
         
     }
          
function cargarBotones(op)
{   if(navigator.appVersion.substring(0,1)>=3)
    {   switch(op)
        {   case 1:
            {   bot0		=new Image();
                bot0.src	="../../imagenes/Nuevo.gif";
                bot0p		=new Image();
                bot0p.src	="../../imagenes/NuevoOn.gif";

                bot1		=new Image();
                bot1.src	="../../imagenes/Modificar.gif";
                bot1p		=new Image();
                bot1p.src	="../../imagenes/ModificarOn.gif";

                bot2		=new Image();
                bot2.src	="../../imagenes/Eliminar.gif";
                bot2p		=new Image();
                bot2p.src	="../../imagenes/EliminarOn.gif";

                bot3		=new Image();
                bot3.src	="../../imagenes/visualizar.gif";
                bot3p		=new Image();
                bot3p.src	="../../imagenes/visualizarOn.gif";
                break;
            }
            case 2:
            {   bot0        =   new Image();
                bot0.src    =   "../../imagenes/Aceptar.gif";
                bot0p       =   new Image();
                bot0p.src   =   "../../imagenes/AceptarOn.gif";

                bot1        =   new Image();
                bot1.src    =   "../../imagenes/Salir.gif";
                bot1p       =   new Image();
                bot1p.src   =   "../../imagenes/SalirOn.gif";
                break;
            }
        }
    }
}


    function CambiaImg(imgid,imgnew){
        if(navigator.appVersion.substring(0,1)>=3){
            document.images[imgid].src=eval(imgnew+".src");
        }
    }

    function pulsar(e,obj){
        tecla=(document.all) ? e.keyCode : e.which;
        if(tecla==13)
            enviar();
    }
        
      







    function nuevo(){
        document.form.action="<%=request.getContextPath()%>/EmpleadoServlet";
        document.form.method="GET";
        document.form.accion.value="NUEVO";
        document.form.submit();
    }

    function eliminar(){

       var  numeroRegistros, i, aux=0;
        numeroRegistros=document.form.elegir.length;

         for(i=0;i<numeroRegistros;i++){
          if(document.form.elegir[i].checked){
            aux++;
          }
        }
       if(aux==0){
            alert("No has Eligido ningun registro,por favor Elija");
        }else{
           document.form.action="<%=request.getContextPath()%>/EmpleadoServlet";
           document.form.method="GET";
           document.form.accion.value="ELIMINAR";
           document.form.submit();


        }

    }
    function actualizar(){
        var  numeroRegistros, i, aux=0;
        numeroRegistros=document.form.elegir.length;

        for(i=0;i<numeroRegistros;i++){
          if(document.form.elegir[i].checked){
            aux++;
          }
        }
        if(aux==0){
            alert("No has Eligido ningun registro,por favor Elija  un solo Registro");
           return ;
        }
        if(aux>1){
          alert("Elija por favor un solo Registro");
          limpiarCheckbox();
        }else{
           document.form.action="<%=request.getContextPath()%>/EmpleadoServlet";
           document.form.method="GET";
           document.form.accion.value="MODIFICAR";
           document.form.submit();
        }
     }
    function visualizar(){

           document.form.action="<%=request.getContextPath()%>/EmpleadoServlet";
           document.form.method="GET";
           document.form.accion.value="VISUALIZAR";
           document.form.submit();



    }

   function  limpiarCheckbox(){
      var  numeroRegistros, i;
      numeroRegistros=document.form.elegir.length;
     for(i=0;i<numeroRegistros;i++){
        document.form.elegir[i].checked=0;
     }
   }        
    

function nuevo(){
        document.form.action="<%=request.getContextPath()%>/EmpleadoServlet";
        document.form.method="GET";
        document.form.accion.value="NUEVO";
        document.form.submit();
    }

    function eliminar(){

       var  numeroRegistros, i, aux=0;
        numeroRegistros=document.form.elegir.length;

         for(i=0;i<numeroRegistros;i++){
          if(document.form.elegir[i].checked){
            aux++;
          }
        }
       if(aux==0){
            alert("No has Eligido ningun registro,por favor Elija");
        }else{
           document.form.action="<%=request.getContextPath()%>/EmpleadoServlet";
           document.form.method="GET";
           document.form.accion.value="ELIMINAR";
           document.form.submit();


        }

    }
    function actualizar(){
        var  numeroRegistros, i, aux=0;
        numeroRegistros=document.form.elegir.length;

        for(i=0;i<numeroRegistros;i++){
          if(document.form.elegir[i].checked){
            aux++;
          }
        }
        if(aux==0){
            alert("No has Eligido ningun registro,por favor Elija  un solo Registro");
           return ;
        }
        if(aux>1){
          alert("Elija por favor un solo Registro");
          limpiarCheckbox();
        }else{
           document.form.action="<%=request.getContextPath()%>/EmpleadoServlet";
           document.form.method="GET";
           document.form.accion.value="MODIFICAR";
           document.form.submit();
        }
     }
    function visualizar(){

           document.form.action="<%=request.getContextPath()%>/EmpleadoServlet";
           document.form.method="GET";
           document.form.accion.value="VISUALIZAR";
           document.form.submit();



    }

   function  limpiarCheckbox(){
      var  numeroRegistros, i;
      numeroRegistros=document.form.elegir.length;
     for(i=0;i<numeroRegistros;i++){
        document.form.elegir[i].checked=0;
     }
   }
           
        
                
        