
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

public class AdmControlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
//XD
        String op1 = request.getParameter("op");
        String op2 = request.getParameter("opu");
        int op = Integer.parseInt(op1);
        int opu = Integer.parseInt(op2);
        String pagina = "";

        switch (op) {
            case 1: {
                switch (opu) {
                    case 1: {

                        String usuario = request.getParameter("usuario");
                        String clave = request.getParameter("clave");
                        String nivel = request.getParameter("nivel");

                        PersonaBean objPersonaBean = new PersonaBean();
                        objPersonaBean.setUsuPer(usuario);
                        objPersonaBean.setPasPer(clave);
                        objPersonaBean.setNivPer(nivel);

                        PersonaDao objPersonaDAO = new PersonaDao();

                        PersonaBean PersonaBeanResponse = objPersonaDAO.ObtenerPersona(objPersonaBean);
                        if (PersonaBeanResponse != null) {
                            request.setAttribute("admin", PersonaBeanResponse);
                            pagina = "/Vista/Administrador/Principal/FrmInicioAdm.jsp";
                        } else {
                            String mensaje = "Usuario y clave Incorrecto !!!!!";
                            pagina = "/Vista/Administrador/Seguridad/FrmLoginAdministrador.jsp?mensaje=" + mensaje;
                        }
                        break;
                    }
                    case 2: {
                        String usuario = request.getParameter("admin");
                        if (usuario == null || usuario == "") {
                            pagina = "/Vista/Administrador/Seguridad/FrmLoginAdministrador.jsp";
                        }
                        destroy();
                        pagina ="/Vista/Administrador/Seguridad/FrmLoginAdministrador.jsp";
                        break;
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
