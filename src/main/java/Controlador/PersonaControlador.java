
package Controlador;

import Bean.PersonaBean;
import Dao.PersonaDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class PersonaControlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String opcad = request.getParameter("op");
        int op = Integer.parseInt(opcad);
        String pagina = "";
        switch (op) {
            case 1: {
                PersonaDao objpersonDao = new PersonaDao();
                ArrayList<PersonaBean> lista = objpersonDao.ListarPersonas();
                request.setAttribute("lista", lista);
                pagina = "/FrmPrincipal.jsp";
                break;
            }
            case 2: {
                String codcad = request.getParameter("codigo");
                int codigo = Integer.parseInt(codcad);
                PersonaBean objPersonaBeab = new PersonaBean();
                objPersonaBeab.setCodPer(codigo);
                System.out.println("Listar personas");
                PersonaDao objpersonDao = new PersonaDao();
                objpersonDao.EliminarPersona(objPersonaBeab);

                ArrayList<PersonaBean> lista = objpersonDao.ListarPersonas();
                request.setAttribute("lista", lista);
                pagina = "/FrmPrincipal.jsp";
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
