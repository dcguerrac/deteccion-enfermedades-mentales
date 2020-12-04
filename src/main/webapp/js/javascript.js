/******************************ADMINISTRADOR***********************************/

function entrarA(ruta) {
    window.document.form.action = ruta + "/IndexControlador";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.submit();
}

function CrearCuenta() {
    var nombre = window.document.form.txtnombre.value;
    var apellidop = window.document.form.txtapellidoP.value;
    var apellidom = window.document.form.txtapellidoM.value;
    var edad = window.document.form.txtedad.value;
    var sexo = window.document.form.txtsexo.value;
    var telefono = window.document.form.txttelefono.value;
    var correo = window.document.form.txtcorreo.value;
    var usuario = window.document.form.txtidusuario.value;
    var con = window.document.form.txtclave.value;
    var con2 = window.document.form.txtclave2.value;

    if (nombre.length == 0) {
        alert("El campo nombre esta vacion !!!!");
        window.document.form.txtnombre.focus();
        return;
    } else if (apellidop.length == 0) {
        alert("El campo apellido paterno esta vacion !!!!");
        window.document.form.txtapellidoP.focus();
        return;
    } else if (apellidom.length == 0) {
        alert("El campo apellido materno esta vacion !!!!");
        window.document.form.txtapellidoM.focus();
        return;
    } else if (edad.length == 0) {
        alert("El campo edad esta vacion !!!!");
        window.document.form.txtedad.focus();
        return;
    } else if (sexo.length == 0) {
        alert("El campo sexo esta vacion !!!!");
        window.document.form.txtsexo.focus();
        return;
    } else if (telefono.length == 0) {
        alert("El campo telefono esta vacion !!!!");
        window.document.form.txttelefono.focus();
        return;
    } else if (correo.length == 0) {
        alert("El campo correo electronico esta vacion !!!!");
        window.document.form.txtcorreo.focus();
        return;
    } else if (usuario.length == 0) {
        alert("El campo usuario esta vacion !!!!");
        window.document.form.txtidusuario.focus();
        return;
    } else if (con.length == 0) {
        alert("El campo contraseña esta vacion !!!!");
        window.document.form.txtclave.focus();
        return;
    } else if (con2.length == 0) {
        alert("El campo confirmar contraseña esta vacion !!!!");
        window.document.form.txtclave2.focus();
        return;
    } else if (con2 != con) {
        alert("Las contraseñas no son iguales !!!");
        window.document.form.txtclave2.focus();
        return;
    } else {
        window.document.form.action = "../../../Controlador/IndexControlador.java";
        window.document.form.method = "POST";
        window.document.form.op.value = "3";
        window.document.form.nivel.value = "2";
        window.document.form.submit();
    }
}

function ValidarAccesoA(ruta) {
    var usuario = window.document.form.usuario.value;
    var clave = window.document.form.clave.value;

    if (usuario.length == 0) {
        alert("El campo Usuario esta vacion !!!!");
        window.document.form.usuario.focus();
        return;
    } else if (clave.length == 0) {
        alert("El campo Clave esta vacion !!!!");
        window.document.form.clave.focus();
        return;
    } else {
        window.document.form.action = ruta + "/AdmControlador";
        window.document.form.method = "POST";
        window.document.form.op.value = "1";
        window.document.form.opu.value = "1";
        window.document.form.nivel.value = "1";
        window.document.form.submit();
    }
}

function CerrarSesionA(ruta) {
    window.document.form.action = ruta + "/AdmControlador";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "2";
    window.document.form.submit();
}

function MenuAdministrador(ruta, suba) {
    window.document.form.action = ruta + "/MenuAdmControlador";
    window.document.form.method = "POST";
    window.document.form.op.value = "2";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = suba;
    window.document.form.submit();
}

function NuevoUsuario() {
    window.document.form.action = "../../../Controlador/MantUsuControlador.java";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "3";
    window.document.form.nu.value = "1";
    window.document.form.submit();
}

function NuevoAdministrador() {
    window.document.form.action = "../../../Controlador/MantAdmControlador.java";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "9";
    window.document.form.na.value = "1";
    window.document.form.submit();
}

function CrearUsuario() {
    var nombre = window.document.form.txtnombre.value;
    var apellidop = window.document.form.txtapellidoP.value;
    var apellidom = window.document.form.txtapellidoM.value;
    var edad = window.document.form.txtedad.value;
    var sexo = window.document.form.txtsexo.value;
    var telefono = window.document.form.txttelefono.value;
    var correo = window.document.form.txtcorreo.value;
    var usuario = window.document.form.txtidusuario.value;
    var con = window.document.form.txtclave.value;
    var con2 = window.document.form.txtclave2.value;

    if (nombre.length == 0) {
        alert("El campo nombre esta vacion !!!!");
        window.document.form.txtnombre.focus();
        return;
    } else if (apellidop.length == 0) {
        alert("El campo apellido paterno esta vacion !!!!");
        window.document.form.txtapellidoP.focus();
        return;
    } else if (apellidom.length == 0) {
        alert("El campo apellido materno esta vacion !!!!");
        window.document.form.txtapellidoM.focus();
        return;
    } else if (edad.length == 0) {
        alert("El campo edad esta vacion !!!!");
        window.document.form.txtedad.focus();
        return;
    } else if (sexo.length == 0) {
        alert("El campo sexo esta vacion !!!!");
        window.document.form.txtsexo.focus();
        return;
    } else if (telefono.length == 0) {
        alert("El campo telefono esta vacion !!!!");
        window.document.form.txttelefono.focus();
        return;
    } else if (correo.length == 0) {
        alert("El campo correo electronico esta vacion !!!!");
        window.document.form.txtcorreo.focus();
        return;
    } else if (usuario.length == 0) {
        alert("El campo usuario esta vacion !!!!");
        window.document.form.txtidusuario.focus();
        return;
    } else if (con.length == 0) {
        alert("El campo contraseña esta vacion !!!!");
        window.document.form.txtclave.focus();
        return;
    } else if (con2.length == 0) {
        alert("El campo confirmar contraseña esta vacion !!!!");
        window.document.form.txtclave2.focus();
        return;
    } else if (con2 != con) {
        alert("Las contraseñas no son iguales !!!");
        window.document.form.txtclave2.focus();
        return;
    } else {
        window.document.form.action = "../../../Controlador/MantUsuControlador.java";
        window.document.form.method = "POST";
        window.document.form.op.value = "1";
        window.document.form.opu.value = "1";
        window.document.form.subu.value = "3";
        window.document.form.nivel.value = "2";
        window.document.form.nu.value = "2";
        window.document.form.submit();
    }
}

function CrearAdministrador() {
    var nombre = window.document.form.txtnombre.value;
    var apellidop = window.document.form.txtapellidoP.value;
    var apellidom = window.document.form.txtapellidoM.value;
    var edad = window.document.form.txtedad.value;
    var sexo = window.document.form.txtsexo.value;
    var telefono = window.document.form.txttelefono.value;
    var correo = window.document.form.txtcorreo.value;
    var usuario = window.document.form.txtidusuario.value;
    var con = window.document.form.txtclave.value;
    var con2 = window.document.form.txtclave2.value;

    if (nombre.length == 0) {
        alert("El campo nombre esta vacion !!!!");
        window.document.form.txtnombre.focus();
        return;
    } else if (apellidop.length == 0) {
        alert("El campo apellido paterno esta vacion !!!!");
        window.document.form.txtapellidoP.focus();
        return;
    } else if (apellidom.length == 0) {
        alert("El campo apellido materno esta vacion !!!!");
        window.document.form.txtapellidoM.focus();
        return;
    } else if (edad.length == 0) {
        alert("El campo edad esta vacion !!!!");
        window.document.form.txtedad.focus();
        return;
    } else if (sexo.length == 0) {
        alert("El campo sexo esta vacion !!!!");
        window.document.form.txtsexo.focus();
        return;
    } else if (telefono.length == 0) {
        alert("El campo telefono esta vacion !!!!");
        window.document.form.txttelefono.focus();
        return;
    } else if (correo.length == 0) {
        alert("El campo correo electronico esta vacion !!!!");
        window.document.form.txtcorreo.focus();
        return;
    } else if (usuario.length == 0) {
        alert("El campo usuario esta vacion !!!!");
        window.document.form.txtidusuario.focus();
        return;
    } else if (con.length == 0) {
        alert("El campo contraseña esta vacion !!!!");
        window.document.form.txtclave.focus();
        return;
    } else if (con2.length == 0) {
        alert("El campo confirmar contraseña esta vacion !!!!");
        window.document.form.txtclave2.focus();
        return;
    } else if (con2 != con) {
        alert("Las contraseñas no son iguales !!!");
        window.document.form.txtclave2.focus();
        return;
    } else {
        window.document.form.action = "../../../Controlador/MantAdmControlador.java";
        window.document.form.method = "POST";
        window.document.form.op.value = "1";
        window.document.form.opu.value = "1";
        window.document.form.subu.value = "9";
        window.document.form.nivel.value = "1";
        window.document.form.na.value = "2";
        window.document.form.submit();
    }
}

function CrearNewAdministrador() {
    var nombre = window.document.form.txtnombre.value;
    var apellidop = window.document.form.txtapellidoP.value;
    var apellidom = window.document.form.txtapellidoM.value;
    var edad = window.document.form.txtedad.value;
    var sexo = window.document.form.txtsexo.value;
    var telefono = window.document.form.txttelefono.value;
    var correo = window.document.form.txtcorreo.value;
    var usuario = window.document.form.txtidusuario.value;
    var con = window.document.form.txtclave.value;
    var con2 = window.document.form.txtclave2.value;

    if (nombre.length == 0) {
        alert("El campo nombre esta vacion !!!!");
        window.document.form.txtnombre.focus();
        return;
    } else if (apellidop.length == 0) {
        alert("El campo apellido paterno esta vacion !!!!");
        window.document.form.txtapellidoP.focus();
        return;
    } else if (apellidom.length == 0) {
        alert("El campo apellido materno esta vacion !!!!");
        window.document.form.txtapellidoM.focus();
        return;
    } else if (edad.length == 0) {
        alert("El campo edad esta vacion !!!!");
        window.document.form.txtedad.focus();
        return;
    } else if (sexo.length == 0) {
        alert("El campo sexo esta vacion !!!!");
        window.document.form.txtsexo.focus();
        return;
    } else if (telefono.length == 0) {
        alert("El campo telefono esta vacion !!!!");
        window.document.form.txttelefono.focus();
        return;
    } else if (correo.length == 0) {
        alert("El campo correo electronico esta vacion !!!!");
        window.document.form.txtcorreo.focus();
        return;
    } else if (usuario.length == 0) {
        alert("El campo usuario esta vacion !!!!");
        window.document.form.txtidusuario.focus();
        return;
    } else if (con.length == 0) {
        alert("El campo contraseña esta vacion !!!!");
        window.document.form.txtclave.focus();
        return;
    } else if (con2.length == 0) {
        alert("El campo confirmar contraseña esta vacion !!!!");
        window.document.form.txtclave2.focus();
        return;
    } else if (con2 != con) {
        alert("Las contraseñas no son iguales !!!");
        window.document.form.txtclave2.focus();
        return;
    } else {
        window.document.form.action = "../../../Controlador/CrearNuevoControlador.java";
        window.document.form.method = "POST";
        window.document.form.op.value = "1";
        window.document.form.opu.value = "1";
        window.document.form.subu.value = "6";
        window.document.form.nivel.value = "1";
        window.document.form.np.value = "1";
        window.document.form.submit();
    }
}

function CrearNewUsuario() {
    var nombre = window.document.form.txtnombre.value;
    var apellidop = window.document.form.txtapellidoP.value;
    var apellidom = window.document.form.txtapellidoM.value;
    var edad = window.document.form.txtedad.value;
    var sexo = window.document.form.txtsexo.value;
    var telefono = window.document.form.txttelefono.value;
    var correo = window.document.form.txtcorreo.value;
    var usuario = window.document.form.txtidusuario.value;
    var con = window.document.form.txtclave.value;
    var con2 = window.document.form.txtclave2.value;

    if (nombre.length == 0) {
        alert("El campo nombre esta vacion !!!!");
        window.document.form.txtnombre.focus();
        return;
    } else if (apellidop.length == 0) {
        alert("El campo apellido paterno esta vacion !!!!");
        window.document.form.txtapellidoP.focus();
        return;
    } else if (apellidom.length == 0) {
        alert("El campo apellido materno esta vacion !!!!");
        window.document.form.txtapellidoM.focus();
        return;
    } else if (edad.length == 0) {
        alert("El campo edad esta vacion !!!!");
        window.document.form.txtedad.focus();
        return;
    } else if (sexo.length == 0) {
        alert("El campo sexo esta vacion !!!!");
        window.document.form.txtsexo.focus();
        return;
    } else if (telefono.length == 0) {
        alert("El campo telefono esta vacion !!!!");
        window.document.form.txttelefono.focus();
        return;
    } else if (correo.length == 0) {
        alert("El campo correo electronico esta vacion !!!!");
        window.document.form.txtcorreo.focus();
        return;
    } else if (usuario.length == 0) {
        alert("El campo usuario esta vacion !!!!");
        window.document.form.txtidusuario.focus();
        return;
    } else if (con.length == 0) {
        alert("El campo contraseña esta vacion !!!!");
        window.document.form.txtclave.focus();
        return;
    } else if (con2.length == 0) {
        alert("El campo confirmar contraseña esta vacion !!!!");
        window.document.form.txtclave2.focus();
        return;
    } else if (con2 != con) {
        alert("Las contraseñas no son iguales !!!");
        window.document.form.txtclave2.focus();
        return;
    } else {
        window.document.form.action = "../../../Controlador/CrearNuevoControlador.java";
        window.document.form.method = "POST";
        window.document.form.op.value = "1";
        window.document.form.opu.value = "1";
        window.document.form.subu.value = "6";
        window.document.form.nivel.value = "2";
        window.document.form.np.value = "3";
        window.document.form.submit();
    }
}

function eliminarUsuario(codigo) {
    window.document.form.action = "../../../Controlador/MantUsuControlador.java";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "3";
    window.document.form.nu.value = "3";
    window.document.form.codigo.value = codigo;
    window.document.form.submit();
}

function eliminarAdministador(codigo) {
    window.document.form.action = "../../../Controlador/MantAdmControlador.java";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "9";
    window.document.form.na.value = "3";
    window.document.form.codigo.value = codigo;
    window.document.form.submit();
}

function editartbusuario(codigo) {
    window.document.form.action = "../../../Controlador/MantUsuControlador.java";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "3";
    window.document.form.nu.value = "4";
    window.document.form.codigo.value = codigo;
    window.document.form.submit();
}

function editartbadministrador(codigo) {
    window.document.form.action = "../../../Controlador/MantAdmControlador.php";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "9";
    window.document.form.na.value = "4";
    window.document.form.codigo.value = codigo;
    window.document.form.submit();
}

function editartbpregunta(codpre) {
    window.document.form.action = "../../../Controlador/MantPreControlador.java";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "2";
    window.document.form.tp.value = "1";
    window.document.form.codpre.value = codpre;
    window.document.form.submit();
}

function ActualizarUsuario() {
    window.document.form.action = "../../../Controlador/MantUsuControlador.java";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "3";
    window.document.form.nu.value = "5";
    window.document.form.submit();
}

function ActualizarAdministrador() {
    window.document.form.action = "../../../Controlador/MantAdmControlador.java";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "9";
    window.document.form.na.value = "5";
    window.document.form.submit();
}

function ActualizarPregunta() {
    window.document.form.action = "../../../Controlador/MantPreControlador.java";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "2";
    window.document.form.tp.value = "2";
    window.document.form.submit();
}

function RegresarUsuarios() {
    window.document.form.action = "../../../Controlador/MantUsuControlador.java";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "3";
    window.document.form.nu.value = "6";
    window.document.form.submit();
}

function RegresarAdministrador() {
    window.document.form.action = "../../../Controlador/MantAdmControlador.java";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "9";
    window.document.form.na.value = "6";
    window.document.form.submit();
}

function RegresarPreguntas() {

    window.document.form.action = "../../../Controlador/MantPreControlador.java";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "2";
    window.document.form.tp.value = "3";
    window.document.form.submit();
}

function CambioContAdm(ruta) {
    window.document.form.action = ruta + "/ConfAdmControlador";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "4";
    window.document.form.confi.value = "1";
    window.document.form.submit();
}

function GuardarCambAdm(ruta) {
    window.document.form.action = ruta + "/ConfAdmControlador";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "4";
    window.document.form.confi.value = "2";
    window.document.form.submit();
}

function VerTest(codigo) {
    window.document.form.action = "../../../Controlador/RepTestControlador.java";
    window.document.form.method = "POST";
    window.document.form.op.value = "1";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "8";
    window.document.form.re.value = "1";
    window.document.form.codi.value = codigo;
    window.document.form.submit();
}

/******************************ADMINISTRADOR***********************************/

/*********************************USUARIO**************************************/

function entrarU(ruta) {
    window.document.form.action = ruta + "/IndexControlador";
    window.document.form.method = "POST";
    window.document.form.op.value = "2";
    window.document.form.submit();
}

function ValidarAccesoU(ruta) {
    var usuario = window.document.form.usuario.value;
    var clave = window.document.form.clave.value;

    if (usuario.length == 0) {
        alert("El campo Usuario esta vacion !!!!");
        window.document.form.usuario.focus();
        return;
    } else if (clave.length == 0) {
        alert("El campo Clave esta vacion !!!!");
        window.document.form.clave.focus();
        return;
    } else {
        window.document.form.action = ruta + "/UsuControlador";
        window.document.form.method = "POST";
        window.document.form.op.value = "2";
        window.document.form.opu.value = "1";
        window.document.form.nivel.value = "2";
        window.document.form.submit();
    }
}

function CerrarSesionU(ruta) {
    window.document.form.action = ruta + "/UsuControlador";
    window.document.form.method = "POST";
    window.document.form.op.value = "2";
    window.document.form.opu.value = "2";
    window.document.form.submit();
}

function MenuUsuario(ruta, subu) {
    window.document.form.action = ruta + "/MenuUsuControlador";
    window.document.form.method = "POST";
    window.document.form.op.value = "2";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = subu;
    window.document.form.submit();
}

function ComenzarTest(ruta) {
    window.document.form.action = ruta + "/MenuUsuControlador";
    window.document.form.method = "POST";
    window.document.form.op.value = "2";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "4";
    window.document.form.submit();
}

function CambioContUsu() {
    window.document.form.action = "../../../Controlador/ConfUsuControlador";
    window.document.form.method = "POST";
    window.document.form.op.value = "2";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "7";
    window.document.form.conf.value = "1";
    window.document.form.submit();
}

function GuardarCambUsu() {
    window.document.form.action = "../../../Controlador/ConfUsuControlador";
    window.document.form.method = "POST";
    window.document.form.op.value = "2";
    window.document.form.opu.value = "1";
    window.document.form.subu.value = "7";
    window.document.form.conf.value = "2";
    window.document.form.submit();
}