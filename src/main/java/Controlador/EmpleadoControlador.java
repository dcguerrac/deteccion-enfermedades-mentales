
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmpleadoControlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String   op1=request.getParameter("op");       
        int  op=Integer.parseInt(op1);
      
        String pagina="";        
        switch(op)
        {   case 1:
            {  
                   pagina="/Vista/Mantenimiento/MantenimientoEmpleado/EmpleadoNuevoMant.jsp";
                break;
            }
            case 2:
            {   pagina="/Vista/Mantenimiento/MantenimientoEmpleado/EmpleadoNuevoMant.jsp";
            
                request.setAttribute("mensaje","Registro Grabado Satisfactoriamente !!");
                break;
            }
            case 3:
            {  pagina="/Vista/Mantenimiento/MantenimientoEmpleado/EmpleadoPrincipalMant.jsp";
                break;
            }
            case 4:
            {  pagina="/Vista/Mantenimiento/MantenimientoEmpleado/EmpleadoPrincipalMant.jsp";
                break;
            }  
            
            case 5:
            {  
                 String   nomb=request.getParameter("nomb");      
                 String   ape=request.getParameter("ape");      
                 String   dni=request.getParameter("dni");      
                
                request.setAttribute("nombre",nomb);
                request.setAttribute("apellido",ape);
                request.setAttribute("dni",dni);
                pagina="/Vista/Mantenimiento/MantenimientoEmpleado/EmpleadoModificarMant.jsp";
                break;
            }  
            case 6:
            {  
                 String   nomb=request.getParameter("nomb");      
                 String   ape=request.getParameter("ape");      
                 String   dni=request.getParameter("dni");      
                
                request.setAttribute("nombre",nomb);
                request.setAttribute("apellido",ape);
                request.setAttribute("dni",dni);
                pagina="/Vista/Mantenimiento/MantenimientoEmpleado/EmpleadoPrincipalMant.jsp";
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
