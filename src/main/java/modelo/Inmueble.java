/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author dcrio
 */
public class Inmueble {
    
    private int id_Inmueble;
    private String titulo;
    private String descripcion;
    private double precio;
    private String ubicacion;
    private String link_foto;
    private int id_Famoso;

    public Inmueble(String titulo, String descripcion, double precio, String ubicacion, String link_foto, int id_Famoso) {
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.precio = precio;
        this.ubicacion = ubicacion;
        this.link_foto = link_foto;
        this.id_Famoso = id_Famoso;
    }

    public Inmueble(String titulo, String descripcion, double precio, String ubicacion, String link_foto) {
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.precio = precio;
        this.ubicacion = ubicacion;
        this.link_foto = link_foto;
    }

    public Inmueble() {
    }

    

    public int getId_Inmueble() {
        return id_Inmueble;
    }

    public void setId_Inmueble(int id_Inmueble) {
        this.id_Inmueble = id_Inmueble;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getLink_foto() {
        return link_foto;
    }

    public void setLink_foto(String link_foto) {
        this.link_foto = link_foto;
    }

    public int getId_Famoso() {
        return id_Famoso;
    }

    public void setId_Famoso(int id_Famoso) {
        this.id_Famoso = id_Famoso;
    }

    

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Inmueble{");
        sb.append("id_Inmueble=").append(id_Inmueble);
        sb.append(", titulo=").append(titulo);
        sb.append(", descripcion=").append(descripcion);
        sb.append(", precio=").append(precio);
        sb.append(", ubicacion=").append(ubicacion);
        sb.append(", link_foto=").append(link_foto);
        sb.append(", id_Famoso=").append(id_Famoso);
        sb.append('}');
        return sb.toString();
    }

    
}
