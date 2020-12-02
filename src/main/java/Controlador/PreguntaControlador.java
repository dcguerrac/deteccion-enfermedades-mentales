package Controlador;

import Bean.PreguntaBean;
import Dao.PreguntaDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class PreguntaControlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String op1 = request.getParameter("op");
        int op = Integer.parseInt(op1);
        String pagina = "";

        switch (op) {
            case 1: {
                PreguntaDao objpersonDao = new PreguntaDao();
                ArrayList<PreguntaBean> lista = objpersonDao.ListarPreguntas();
                request.setAttribute("lista", lista);
                pagina = "/FrmIniciarTest.jsp";
                break;
            }

            case 2: {
            }

        }
        getServletContext().getRequestDispatcher(pagina).forward(request, response);


    }
}
