/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Famoso;
import modelo.Inmueble;

/**
 *
 * @author dcrio
 */
@WebServlet(name = "ServletInventario", urlPatterns = {"/ServletInventario"})
public class ServletInventario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletInventario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletInventario at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
    HttpSession session = request.getSession(false); // No se crea una nueva sesión si no existe
    if (session != null) { // Verificar si hay una sesión existente
        Famoso famoso = (Famoso) session.getAttribute("famoso"); // Obtener el famoso de la sesión
        if (famoso != null) { // Verificar si se encontró el famoso en la sesión
            int ID_Famoso = famoso.getId_Famoso(); // Obtener el ID del famoso

            InmuebleOperDB oper = new InmuebleOperDB();
            List<Inmueble> inmuebles = oper.obtenerInmueblesPorUsuario(ID_Famoso);

            request.setAttribute("inmuebles", inmuebles);
            RequestDispatcher dispatcher = request.getRequestDispatcher("inventario.jsp");
            dispatcher.forward(request, response);
        } else {
            // Si no se encontró el famoso en la sesión, redirigir al usuario al inicio de sesión
            response.sendRedirect("login.jsp?error=usernotfound");
        }
    } else {
        // Si no hay una sesión iniciada, redirigir al usuario al inicio de sesión
        response.sendRedirect("login.jsp?error=notloggedin");
    }
}


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
