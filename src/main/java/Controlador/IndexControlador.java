
package Controlador;

import Bean.PersonaBean;
import Dao.PersonaDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class IndexControlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String op1 = request.getParameter("op");
        int op = Integer.parseInt(op1);
        String pagina = "";

        switch (op) {
            case 1: {
                pagina = "/Vista/Administrador/Seguridad/FrmLoginAdministrador.jsp";
                break;
            }
            case 2: {
                pagina = "/Vista/Usuario/Seguridad/FrmLoginUsuario.jsp";
                break;
            }
            case 3: {
                String apellidop = request.getParameter("txtapellidoP");
                String apellidom = request.getParameter("txtapellidoM");
                String nombre = request.getParameter("txtnombre");
                String nivel = request.getParameter("nivel");
                String edad = request.getParameter("txtedad");
                String sexo = request.getParameter("txtsexo");
                String telefono = request.getParameter("txttelefono");
                String correo = request.getParameter("txtcorreo");
                String usuario = request.getParameter("txtidusuario");
                String contraseña = request.getParameter("txtclave");

                PersonaBean objPersonaBean = new PersonaBean();

                objPersonaBean = setAppPer("apellidop");
                objPersonaBean = setApmPer("apellidom");
                objPersonaBean = setNomPer("nombre");
                objPersonaBean = setNivPer("nivel");
                objPersonaBean = setEdaPer("edad");
                objPersonaBean = setSexPer("sexo");
                objPersonaBean = setTelPer("telefono");
                objPersonaBean = setCorPer("correo");
                objPersonaBean = setUsuPer("usuario");
                objPersonaBean = setPasPer("contraseña");

                PersonaDao objPersonaDAO = new PersonaDAO();

                objPersonaDAO = InsertarPersonas(objPersonaBean);

                String mensaje = "Usuario creado exitosamente !!!!!";
                pagina = "/Vista/Usuario/Seguridad/FrmCrearCuenta.jsp?mensaje=" + mensaje;
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

    private PersonaBean setAppPer(String apellidop) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private PersonaBean setNomPer(String nombre) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private PersonaBean setNivPer(String nivel) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private PersonaBean setApmPer(String apellidom) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private PersonaBean setEdaPer(String edad) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private PersonaBean setCorPer(String correo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private PersonaBean setUsuPer(String usuario) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private PersonaBean setPasPer(String contraseña) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private PersonaBean setSexPer(String sexo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private PersonaBean setTelPer(String telefono) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private PersonaDao InsertarPersonas(PersonaBean objPersonaBean) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private static class PersonaDAO extends PersonaDao {

        public PersonaDAO() {
        }
    }

}




