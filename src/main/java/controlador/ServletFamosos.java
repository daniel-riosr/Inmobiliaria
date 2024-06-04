/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Famoso;

/**
 *
 * @author dcrio
 */
@WebServlet(name = "ServletFamosos", urlPatterns = {"/ServletFamosos"})
public class ServletFamosos extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletFamosos</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletFamosos at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("contrasena");
        
            
        System.out.println(nombres);
        System.out.println(apellidos);
        System.out.println(usuario);
        System.out.println(email);
        System.out.println(telefono);
        
        Famoso f1 = new Famoso(nombres, apellidos, email, telefono, usuario, contrasena);
                
        FamosoOperDB oper = new FamosoOperDB();
        boolean isInserted = oper.insertarFamoso(f1);

        // Redirigir al login.jsp si la inserción fue exitosa
        if (isInserted) {
            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect("registro.jsp?error=insertfailed");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
