/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

/**
 *
 * @author dcrio
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.Famoso;

public class FamosoOperDB {
    
    public boolean insertarFamoso(Famoso famoso) {
        String INSERT_SQL = "INSERT INTO famosos (Nombres, Apellidos, Email, Telefono, usuario, contraseña) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection connection = ConeccionDB.getConnection();
             PreparedStatement statement = connection.prepareStatement(INSERT_SQL)) {
            // Establecer los valores de los parámetros
            statement.setString(1, famoso.getNombres());
            statement.setString(2, famoso.getApellidos());
            statement.setString(3, famoso.getEmail());
            statement.setString(4, famoso.getTelefono());
            statement.setString(5, famoso.getUsuario());
            statement.setString(6, famoso.getContrasena());
            // Ejecutar la consulta de inserción
            int filasInsertadas = statement.executeUpdate();

            // Verificar si se insertaron filas exitosamente
            if (filasInsertadas > 0) {
                System.out.println("Famoso insertado correctamente a la base de datos.");
                return true;
            } else {
                System.out.println("No se pudo insertar el Famoso a la base de datos.");
                return false;   
            }
        } catch (SQLException e) {
            System.err.println("Error al insertar el famoso a la base de datos: " + e.getMessage());
            return false;
        }
    }
    
    public Famoso seleccionarFamosoPorUsuario(String usuario){

        Famoso famoso = null;
        Connection connection = ConeccionDB.getConnection();
        String SELECT_SQL = "SELECT * FROM famosos WHERE usuario = ? ";
        try (
        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_SQL)) {
            preparedStatement.setString(1, usuario);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                famoso = new Famoso();
                famoso.setId_Famoso(resultSet.getInt("ID_Famoso"));
                famoso.setNombres(resultSet.getString("Nombres"));
                famoso.setApellidos(resultSet.getString("Apellidos"));
                famoso.setEmail(resultSet.getString("Email"));
                famoso.setTelefono(resultSet.getString("Email"));
                famoso.setUsuario(resultSet.getString("Usuario"));
                famoso.setContrasena(resultSet.getString("Contraseña"));
            }
            System.out.println("Usurario encontrado exitosamente");
        } catch (SQLException e) {
            System.out.println("Error al buscar al usuario: " + e.getMessage());
        }
        return famoso;
    }
}
    