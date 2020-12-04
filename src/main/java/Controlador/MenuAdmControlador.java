package Controlador;

import Bean.PersonaBean;
import Bean.PreguntaBean;
import Dao.PersonaDao;
import Dao.PreguntaDao;
import lombok.SneakyThrows;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class MenuAdmControlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        String op1 = request.getParameter("op");
        String op2 = request.getParameter("opu");
        String op3 = request.getParameter("subu");
        int op = Integer.parseInt(op1);
        int opu = Integer.parseInt(op2);
        int subu = Integer.parseInt(op3);
        String pagina = "";
        String descripcion = "";


        switch (op) {
            case 2: {
                switch (opu) {
                    case 1: {
                        switch (subu) {
                            case 1: {
                                pagina = "/Vista/Administrador/Principal/FrmInicioAdm.jsp";
                                break;
                            }
                            case 2: {
                                PreguntaDao objPreguntaDao = new PreguntaDao();
                                List<PreguntaBean> lista = objPreguntaDao.ListarPreguntas();
                                request.setAttribute("listapreguntas", lista);
                                pagina = "/Vista/Administrador/MantenimientoPreguntas/FrmTablaPreguntas.jsp";
                                break;
                            }
                            case 3: {
                                //unset($_SESSION['admin']);
                                PersonaDao objPersonaDAO = new PersonaDao();
                                List<PersonaBean> lista = objPersonaDAO.ListarUsuarios();
                                request.setAttribute("listausu", lista);
                                pagina = "/Vista/Administrador/MantenimientoUsuario/FrmTablaUsuario.jsp";
                                break;
                            }
                            case 4: {
                                pagina = "../Vista/Administrador/Configuracion/FrmCambioClave.jsp";
                                break;
                            }

                            case 5: {
                                String usuario = request.getParameter("admin");
                                PersonaBean objPersonaBean = new PersonaBean();
                                objPersonaBean.setNomPer(usuario);
                                PersonaDao objPersonaDAO = new PersonaDao();
                                List<PersonaBean> lista = objPersonaDAO.ConfUsuario(objPersonaBean);
                                request.setAttribute("confadmin", lista);
                                pagina = "/Vista/Administrador/Configuracion/FrmConfCuenta.jsp";
                                break;
                            }
                            case 6: {
                                pagina = "/Vista/Administrador/Nuevo/FrmCrearAdm.jsp";
                                break;
                            }

                            case 7: {
                                pagina = "/Vista/Administrador/Nuevo/FrmCrearUsu.jsp";
                                break;
                            }
                            case 8: {

                                PersonaDao objPersonaDAO = new PersonaDao();
                                List<PersonaBean> listaP = objPersonaDAO.ListarUsuarios();
                                request.setAttribute("listapersonas", listaP);
                                pagina = "/Vista/Administrador/Reportes/FrmReportePacientes.jsp";
                                break;
                            }
                            case 9: {
                                PersonaDao objPersonaDAO = new PersonaDao();
                                List<PersonaBean> lista = objPersonaDAO.ListarAdministradores();
                                request.setAttribute("listaadmin", lista);
                                pagina = "/Vista/Administrador/MantenimientoAdministrador/FrmTablaAdministrador.jsp";
                                break;
                            }
                        }
                        break;
                    }
                }
            }
            getServletContext().getRequestDispatcher(pagina).forward(request, response);
        }

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

