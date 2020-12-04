
package Controlador;

import Bean.PersonaBean;
import Dao.PersonaDao;
import lombok.SneakyThrows;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class ConfAdmControlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
//XD
        String op1 = request.getParameter("op");
        String op2 = request.getParameter("opu");
        String op3 = request.getParameter("subu");
        String op4 = request.getParameter("config");
        int op = Integer.parseInt(op1);
        int opu = Integer.parseInt(op2);
        int suba = Integer.parseInt(op3);
        int config = Integer.parseInt(op4);
        String pagina = "";
        String mensaje = "";

        switch (op) {
            case 1: {
                switch (opu) {
                    case 1: {
                        switch (suba) {
                            case 4: {
                                switch (config) {
                                    case 1: {
                                        String usuario = request.getParameter("admin");
                                        String clavereal = request.getParameter("clavereal");
                                        String clavec = request.getParameter("clavec");
                                        String claved = request.getParameter("claved");

                                        try {
                                            PersonaDao personaDao = new PersonaDao();
                                            PersonaBean personaBean = personaDao.ObtenerPersonaPorUsuario(usuario);

                                            if (personaBean.getPasPer().equals(clavereal)) {
                                                if (clavec.equals(claved)) {
                                                    int id = personaDao.updatePassword(usuario, clavec);
                                                    mensaje = "Se ha actualizado la contraseña para " + id;
                                                } else {
                                                    mensaje = "Las contraseñas no coinciden";
                                                }
                                            } else {
                                                mensaje = "La contraseña actual es incorrecta";
                                            }

                                        } catch (Exception $ex) {

                                        }
                                        pagina = "/Vista/Administrador/Configuracion/FrmCambioClave.jsp?mensaje=" + mensaje;
                                        break;
                                    }
                                    case 2: {
                                        //unset($_SESSION['admin']);
                                        String apellidop = request.getParameter("app");
                                        String nombre = request.getParameter("nom");
                                        String apellidom = request.getParameter("apm");
                                        String edad = request.getParameter("eda");
                                        String sexo = request.getParameter("sex");
                                        String telefono = request.getParameter("tel");
                                        PersonaBean objPersonaBean = new PersonaBean();
                                        objPersonaBean.setAppPer(apellidop);
                                        objPersonaBean.setApmPer(apellidom);
                                        objPersonaBean.setNomPer(nombre);
                                        objPersonaBean.setEdaPer(edad);
                                        objPersonaBean.setSexPer(sexo);
                                        objPersonaBean.setTelPer(telefono);
                                        PersonaDao objPersonaDao = new PersonaDao();
                                        int i = objPersonaDao.ActualizarDatosPer(objPersonaBean);
                                        request.setAttribute("estadoactualizar", i);

                                        List<PersonaBean> lista = objPersonaDao.ConfUsuario(objPersonaBean);
                                        request.setAttribute("confadmin", lista);
                                        mensaje = "Usuario actualizado exitosamente !!!!!";
                                        pagina = "/Vista/Administrador/Configuracion/FrmConfCuenta.jsp?mensaje=" + mensaje;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        getServletContext().getRequestDispatcher(pagina).forward(request, response);


    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
