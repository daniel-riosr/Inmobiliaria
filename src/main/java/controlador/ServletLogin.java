/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Famoso;

/**
 *
 * @author dcrio
 */
@WebServlet(name = "ServletLogin", urlPatterns = {"/ServletLogin"})
public class ServletLogin extends HttpServlet {

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
            out.println("<title>Servlet ServletLogin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletLogin at " + request.getContextPath() + "</h1>");
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
    }
    
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("contrasena");
        
        boolean validacion =false;
        
        boolean isValidUser = validateUser(usuario, contrasena);
        
        

        if (isValidUser) {
            
            FamosoOperDB oper = new FamosoOperDB();
            Famoso famosoExistente = oper.seleccionarFamosoPorUsuario(usuario);

            
            HttpSession session = request.getSession();
            session.setAttribute("famoso", famosoExistente);
            session.setAttribute("Id_Famoso", famosoExistente.getId_Famoso()); // Almacenar el ID del famoso
            //request.setAttribute("mensaje", "¡Inicio de sesión exitoso!");
                       
            response.sendRedirect("index.jsp?success=true");
        } else {
            
            response.sendRedirect("login.jsp?error=invalidcredentials");
        }
    }
    
    private boolean validateUser(String usuario, String contrasena) {
    boolean isValid = false;

    try (Connection connection = ConeccionDB.getConnection()) {
        String sql = "SELECT * FROM famosos WHERE usuario = ? AND contraseña = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, usuario);
        statement.setString(2, contrasena);
        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            isValid = true;
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return isValid;
}


    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
