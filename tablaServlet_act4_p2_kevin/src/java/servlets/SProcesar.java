package servlets;

import datos.Dato;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SProcesar extends HttpServlet 
{
    private Dato alumnos[] = new Dato[10];
    private int cont = 0;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        if(request.getParameter("btnRegistrar") != null)
        {
            alumnos[cont] = new Dato();
                
            alumnos[cont].setMatricula(request.getParameter("tfMatricula"));
            alumnos[cont].setNombre(request.getParameter("tfNombre"));
            alumnos[cont].setApellidoPaterno(request.getParameter("tfApellidoPaterno"));
            alumnos[cont].setApellidoMaterno(request.getParameter("tfApellidoMaterno"));
            alumnos[cont].setDdi(Double.parseDouble(request.getParameter("tfDdi")));
            alumnos[cont].setDwi(Double.parseDouble(request.getParameter("tfDwi")));
            alumnos[cont].setEcbd(Double.parseDouble(request.getParameter("tfEcbd")));
                
            cont++;
                
                
        }
            
         if(request.getParameter("btnRegistrar") != null)
         {
            out.println(""+
                    "<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css' integrity='sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm' crossorigin='anonymous'>"
                    );
            out.println(""
                        + "<table class='table table-striped table-dark'>"
                        + " <thead>"
                        + "  <tr>"
                        + "     <th scope='col'>MATRICULA</th>"
                        + "     <th scope='col'>ALUMNO</th>"
                        + "     <th scope='col'>DDI</th>"
                        + "     <th scope='col'>DWI</th>"
                        + "     <th scope='col'>ECBD</th>"
                        + "     <th scope='col'>PROM</th>"
                        + "  </tr>"
                        + " </thead>"
            );
            for(int i = 0; i < cont; i++)
            {
                    out.println(""
                            + "<tbody>"
                            +   "<tr>"
                            +       "<td>" + alumnos[i].getMatricula() + "</td>"
                            +       "<td>"+ alumnos[i].getNombre() + " " + alumnos[i].getApellidoPaterno() + " " + alumnos[i].getApellidoMaterno() + "</td>"
                            +       "<td>" + alumnos[i].getDdi() + "</td>"
                            +       "<td>" + alumnos[i].getDwi() + "</td>"
                            +       "<td>" + alumnos[i].getEcbd() + "</td>"
                            +       "<td>" + alumnos[i].calcularPromedio(alumnos[i].getDdi(), alumnos[i].getDwi(), alumnos[i].getEcbd()) + "</td>"
                            +   "</tr>"
                            + "</tbody>"
                    );
            }
            out.println(""
                + "</table>"
            );
       }
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
