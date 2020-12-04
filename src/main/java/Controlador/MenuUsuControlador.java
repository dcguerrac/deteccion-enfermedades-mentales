package Controlador;

import Bean.*;
import Dao.*;
import lombok.SneakyThrows;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MenuUsuControlador extends HttpServlet {

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
                                pagina = "/Vista/Usuario/Principal/FrmInicioUsu.jsp";
                                break;
                            }
                            case 2: {
                                pagina = "/Vista/Usuario/Secciones/FrmInvestigaciones.jsp";
                                break;
                            }
                            case 3: {
                                pagina = "/Vista/Usuario/Secciones/FrmEncuestas.php";
                                break;
                            }
                            case 4: {
                                request.removeAttribute("preguntas");
                                request.removeAttribute("puntajes");

                                PreguntaDao objPreguntaDAO = new PreguntaDao();
                                PuntajeDao objPuntajeDAO = new PuntajeDao();
                                List<PreguntaBean> lista_preguntas = objPreguntaDAO.ListarPreguntas();
                                List<PuntajeBean> lista_puntaje = objPuntajeDAO.ListarPuntajes();

                                request.setAttribute("preguntas", lista_preguntas);
                                ;
                                request.setAttribute("puntajes", lista_puntaje);
                                ;
                                pagina = "/Vista/Usuario/Test/FrmIniciarTest.jsp";
                                break;
                            }
                            case 5: {
                                pagina = "/Vista/Usuario/Test/FrmReporteTest.php";
                                break;
                            }
                            case 6: {
                                pagina = "/Vista/Usuario/Configuracion/FrmCambioClave.jsp";
                                break;
                            }
                            case 7: {
                                String nombre = request.getParameter("usuario");
                                System.out.println("Nombre es " +nombre);
                                PersonaBean personaBean = new PersonaBean();
                                personaBean.setUsuPer(nombre);
                                PersonaDao personaDao = new PersonaDao();
                                List<PersonaBean> lista = personaDao.ConfUsuario(personaBean);
                                request.setAttribute("'confusu'", lista);
                                pagina = "/Vista/Usuario/Configuracion/FrmConfCuenta.jsp";
                                break;
                            }
                            case 8: {

                                String usuario = request.getParameter("usu");
                                int puntaje_total = 0;
                                int porcentaje = 0;
                                int cant = 0;

                                List<PreguntaBean> List = new ArrayList<>();
                                request.setAttribute("preguntascod", List);
                                for (PreguntaBean obj : List) {
                                    String preguntaval = request.getParameter("pregunta_" + obj);
                                    preguntaval = preguntaval.replace("pregunta_", "");
                                    int val = Integer.parseInt(preguntaval);
                                    puntaje_total = puntaje_total + val;
                                    cant = cant + 1;
                                }
                                PuntajeDao objPuntajeDAO = new PuntajeDao();
                                List<PuntajeBean> puntaje_max = objPuntajeDAO.MaxPuntaje();
                                porcentaje = (puntaje_total / (puntaje_max.get(0).getNumPun()) * 100);
                                if (porcentaje > 0 && porcentaje <= 40) {
                                    descripcion = "que esta estable mentalmente, no presenta sintomas.";
                                } else {
                                    if (porcentaje > 40 && porcentaje <= 70) {
                                        descripcion = "que estas experimentendo leves sintomas de estres.";
                                    } else {
                                        descripcion = "que tienes sintomas muy depresivos. ";

                                    }

                                }
                                ResultadoDao objResultadoDAO = new ResultadoDao();
                                ResultadoBean objResultadoBean = new ResultadoBean();
                                objResultadoBean.setEstRes(descripcion);
                                objResultadoBean.setPunRes(porcentaje);
                                objResultadoBean.setCodPer(usuario);
                                int id_generado = objResultadoDAO.InsertarResultado(objResultadoBean);

                                RespuestaDao objRespuestaDAO = new RespuestaDao();
                                List<PreguntaBean> ListBean = new ArrayList<>();
                                request.setAttribute("preguntascod", ListBean);
                                for (PreguntaBean obj : ListBean) {
                                    String preguntaval = request.getParameter("pregunta_" + obj);
                                    RespuestaBean objRespuestaBean = new RespuestaBean();
                                    objRespuestaBean.setCodPre(obj.getCodPre());
                                    objRespuestaBean.setCodPun(preguntaval.replace("pregunta_", ""));
                                    objRespuestaBean.setCodRes(id_generado);
                                    objRespuestaDAO.InsertarRespuesta(objRespuestaBean);

                                }
                                String mensaje = "Test guardado exitosamente!";
                                pagina = "/Vista/Usuario/Test/ResultadoTest.jsp?mensaje=" + mensaje + "$descripcion=" + descripcion;
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

