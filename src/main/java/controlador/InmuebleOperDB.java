/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Famoso;
import modelo.Inmueble;

/**
 *
 * @author dcrio
 */
public class InmuebleOperDB {
    public boolean insertarInmueble(Inmueble inmueble) {
        String INSERT_SQL = "INSERT INTO inmuebles (Titulo, Descripcion, Precio, Ubicacion, Link_foto, ID_Famoso) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection connection = ConeccionDB.getConnection();
             PreparedStatement statement = connection.prepareStatement(INSERT_SQL)) {
            // Establecer los valores de los parámetros
            statement.setString(1, inmueble.getTitulo());
            statement.setString(2, inmueble.getDescripcion());
            statement.setDouble(3, inmueble.getPrecio());
            statement.setString(4, inmueble.getUbicacion());
            statement.setString(5, inmueble.getLink_foto());
            statement.setInt(6, inmueble.getId_Famoso());

            // Ejecutar la consulta de inserción
            int filasInsertadas = statement.executeUpdate();

            // Verificar si se insertaron filas exitosamente
            if (filasInsertadas > 0) {
                System.out.println("Inmueble insertado correctamente a la base de datos.");
                return true;
            } else {
                System.out.println("No se pudo insertar el Inmueble a la base de datos.");
                return false;   
            }
        } catch (SQLException e) {
            System.err.println("Error al insertar el Inmueble a la base de datos: " + e.getMessage());
            return false;
        }
    }
    
    public List<Inmueble> obtenerTodosLosInmuebles() {
    List<Inmueble> inmuebles = new ArrayList<>();
    String SELECT_SQL = "SELECT Titulo, Descripcion, Precio, Ubicacion, Link_foto FROM inmuebles";

    try (Connection connection = ConeccionDB.getConnection();
         PreparedStatement statement = connection.prepareStatement(SELECT_SQL);
         ResultSet resultSet = statement.executeQuery()) {

        while (resultSet.next()) {
            Inmueble inmueble = new Inmueble();
            inmueble.setTitulo(resultSet.getString("Titulo"));
            inmueble.setDescripcion(resultSet.getString("Descripcion"));
            inmueble.setPrecio(resultSet.getDouble("Precio"));
            inmueble.setUbicacion(resultSet.getString("Ubicacion"));
            inmueble.setLink_foto(resultSet.getString("Link_foto"));
            inmuebles.add(inmueble);
        }
        System.out.println("Número de inmuebles obtenidos en la consulta: " + inmuebles.size());
    } catch (SQLException e) {
        System.err.println("Error al obtener los inmuebles de la base de datos: " + e.getMessage());
        e.printStackTrace();
    }

    return inmuebles;
}
    
    public List<Inmueble> obtenerInmueblesPorUsuario(int idFamoso) {
        List<Inmueble> inmuebles = new ArrayList<>();
        String SELECT_SQL = "SELECT * FROM inmuebles WHERE ID_Famoso = ?";

        try (Connection connection = ConeccionDB.getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_SQL)) {
            statement.setInt(1, idFamoso);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    Inmueble inmueble = new Inmueble();
                    inmueble.setTitulo(resultSet.getString("Titulo"));
                    inmueble.setDescripcion(resultSet.getString("Descripcion"));
                    inmueble.setPrecio(resultSet.getDouble("Precio"));
                    inmueble.setUbicacion(resultSet.getString("Ubicacion"));
                    inmueble.setLink_foto(resultSet.getString("Link_foto"));
                    inmuebles.add(inmueble);
                }
                System.out.println("Número de inmuebles obtenidos para el usuario con ID " + idFamoso + ": " + inmuebles.size());
            }
        } catch (SQLException e) {
            System.err.println("Error al obtener los inmuebles de la base de datos: " + e.getMessage());
            e.printStackTrace();
        }

        return inmuebles;
    }


}
