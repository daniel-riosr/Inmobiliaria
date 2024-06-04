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

import modelo.Inmueble;
import java.util.List;
import modelo.Famoso;

/**
 *
 * @author dcrio
 */
@WebServlet(name = "ServletInmuebles", urlPatterns = {"/ServletInmuebles"})
public class ServletInmuebles extends HttpServlet {

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
            out.println("<title>Servlet ServletInmuebles</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletInmuebles at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        InmuebleOperDB oper = new InmuebleOperDB();
        List<Inmueble> inmuebles = oper.obtenerTodosLosInmuebles();

        if (inmuebles == null || inmuebles.isEmpty()) {
            System.out.println("No se encontraron inmuebles en la base de datos.");
        } else {
            System.out.println("Número de inmuebles obtenidos: " + inmuebles.size());
        }

        request.setAttribute("inmuebles", inmuebles);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String titulo = request.getParameter("titulo");
        String descripcion = request.getParameter("descripcion");
        double precio = Double.parseDouble(request.getParameter("precio"));
        String ubicacion = request.getParameter("ubicacion");
        String link_foto = request.getParameter("link_foto");

        HttpSession session = request.getSession(false); // No se crea una nueva sesión si no existe
        if (session != null) { // Verificar si hay una sesión existente
            Famoso famoso = (Famoso) session.getAttribute("famoso"); // Obtener el famoso de la sesión
            if (famoso != null) { // Verificar si se encontró el famoso en la sesión
                int ID_Famoso = famoso.getId_Famoso(); // Obtener el ID del famoso

                Inmueble i1 = new Inmueble(titulo, descripcion, precio, ubicacion, link_foto, ID_Famoso);

                InmuebleOperDB oper = new InmuebleOperDB();
                oper.insertarInmueble(i1);
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
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
