
package Controlador;

import Bean.PersonaBean;
import Dao.PersonaDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UsuarioControlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String op1 = request.getParameter("op");
        int op = Integer.parseInt(op1);
        String pagina = "";

        switch (op) {
            case 1: {
                String usuario = request.getParameter("txtUsuario");
                String clave = request.getParameter("txtClave");
                pagina = "/Vista/Principal/FrmPrincipal.jsp";
                break;
            }

            case 2: {
                String apellido = request.getParameter("txtApe");
                String nombre = request.getParameter("txtNom");
                String correo = request.getParameter("txtCor");
                String clave = request.getParameter("txtClave");
                System.out.println("Nombre persona es : "+ nombre);
                PersonaBean personaBean = new PersonaBean();
                personaBean.setNomPer(nombre);
                personaBean.setAppPer(apellido);
                personaBean.setCorPer(correo);
                personaBean.setPasPer(clave);
                PersonaDao objpersonDao = new PersonaDao();

                boolean estado = objpersonDao.CrearPersona(personaBean);
                System.out.println("El estado de la creacion es " + estado);
                request.setAttribute("respuestaCreacion", estado);
                pagina = "/Vista/Principal/FrmPrincipal.jsp";
                break;

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
