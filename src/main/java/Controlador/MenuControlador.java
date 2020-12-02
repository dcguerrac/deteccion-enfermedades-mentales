package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MenuControlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String   op1=request.getParameter("op");
        String   sub1=request.getParameter("sub");
        int  op=Integer.parseInt(op1);
        int  sub=Integer.parseInt(sub1);
        String pagina="";
        switch(op)
        {   case 1:
            {
                switch(sub)
                {   case 1:
                     {   pagina="/Vista/Mantenimiento/MantenimientoEmpleado/EmpleadoPrincipalMant.jsp";
                         break;
                     }
                    case 2:
                     {    pagina="/Vista/Mantenimiento/MantenimientoEstadoCivil/EstadoCivilPrincipalMant.jsp";
                         break;
                     }
                    case 3:
                     {   pagina="/Vista/Mantenimiento/MantenimientoSexo/SexoPrincipalMant.jsp";
                         break;
                     }
                }
                break;
            }
            case 2:
            {   pagina="/Vista/Mantenimiento/MantenimientoEmpleado/EstadoCivilPrincipalMant.jsp";
                break;
            }
            case 3:
            {  pagina="/Vista/Mantenimiento/MantenimientoEmpleado/EstadoCivilPrincipalMant.jsp";
                break;
            }
            case 4:
            {  pagina="/Vista/Informacion/FrmReporte.jsp";
                break;
            }            
        }        
   getServletContext().getRequestDispatcher(pagina).forward(request, response);
        
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
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
