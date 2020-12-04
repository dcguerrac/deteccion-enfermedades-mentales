
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
            case 2: {
                switch (opu) {
                    case 1: {

                        String user = request.getParameter("usuario");
                        String password = request.getParameter("clave");
                        String level = request.getParameter("nivel");
                        PersonaBean PersonaBean = new PersonaBean();
                        PersonaBean.setUsuPer(user);
                        PersonaBean.setPasPer(password);
                        PersonaBean.setNivPer(level);

                        PersonaDao personaDao = new PersonaDao();
                        PersonaBean responseObtenerPersona = personaDao.ObtenerPersona(PersonaBean);
                        if (responseObtenerPersona != null) {
                            request.setAttribute("responseObtenerPersona", responseObtenerPersona);
                            pagina = "/Vista/Usuario/Principal/FrmInicioUsu.jsp";
                        } else {
                            String mensaje = "Usuario y clave Incorrecto !!!!!";
                            pagina = "/Vista/Usuario/Seguridad/FrmLoginUsuario.jsp?mensaje=" + mensaje+"";
                        }
                        break;
                    }
                    case 2: {
                        String usuario = request.getParameter("usu");
                        if (usuario == null || usuario == "") {
                            response.sendRedirect("/Vista/Usuario/Seguridad/FrmLoginUsuario.php");
                        }
                        destroy();
                        response.sendRedirect("/Vista/Usuario/Seguridad/FrmLoginUsuario.php");
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
