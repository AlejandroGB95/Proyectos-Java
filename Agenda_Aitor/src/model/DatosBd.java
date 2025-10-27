/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javafx.beans.property.IntegerProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;
import javafx.scene.control.Alert;
import javax.swing.JOptionPane;

/**
 *
 * @author usuario
 */
public class DatosBd {
    
    private Connection conn;

    public DatosBd(String tipoBd,
            String servidor,
            String puerto,
            String nombreBd,
            String usuario,
            String contrasena) {
        conn=conecta(tipoBd,
            servidor,
            puerto,
            nombreBd,
            usuario,
            contrasena);
    }
    
     
    public Connection conecta(String tipoBd,
            String servidor,
            String puerto,
            String nombreBd,
            String usuario,
            String contrasena) {

        String driver = "", url = "";
        String cadenaDeConexion = "";
        conn = null;

        if (tipoBd.equalsIgnoreCase("Oracle")) {
            driver = "oracle.jdbc.driver.OracleDriver";
            url = "jdbc:oracle:thin:";
            cadenaDeConexion
                    = url + '@' + servidor + ":" + puerto + ":" + nombreBd;
        } else if (tipoBd.equalsIgnoreCase("mysql")) {
            driver = "com.mysql.jdbc.Driver";
            url = "jdbc:mysql:";
            cadenaDeConexion = url + "//" + servidor + ":" + puerto + "/" + nombreBd;
        }

        try {
            Class.forName(driver);

            conn = DriverManager.getConnection(
                    cadenaDeConexion, usuario, contrasena);
            
        } catch (SQLException ex) {
            Alert alerta = new Alert(Alert.AlertType.INFORMATION);
            alerta.setTitle(null);
            alerta.setContentText("No se pudo establecer conexión con el servidor \n"+ex.getMessage());
            alerta.showAndWait();
            return null;
        } catch (ClassNotFoundException ex) {
            Alert alerta = new Alert(Alert.AlertType.INFORMATION);
            alerta.setTitle(null);
            alerta.setContentText("Error cargando el driver : "+ex.getMessage());
            alerta.showAndWait();
            return null;
        }
        return conn;
    }

    public Connection getConn() {
        return conn;
    }

    public void setConn(Connection conexion) {
        this.conn = conexion;
    }
    //obtiene una lista de todos los alumnos de la tabla alumnos
    public List getAlumnos(){
         Statement stmnt;
         ResultSet rs;
         List<Alumno> alumnos = null;
        try{
        stmnt = conn.createStatement();
        rs = stmnt.executeQuery("SELECT * FROM alumnos");

        alumnos = new ArrayList<>();
        while (rs.next()) {
            StringProperty nombre =  new SimpleStringProperty(rs.getString("alumno"));
            
            IntegerProperty nie         = new SimpleIntegerProperty(rs.getInt("nie"));
            StringProperty cp           = new SimpleStringProperty(rs.getString("cp"));
            StringProperty localidad    = new SimpleStringProperty(rs.getString("localidad"));
            StringProperty grupo        = new SimpleStringProperty(rs.getString("grupo"));
            StringProperty foto         = new SimpleStringProperty(rs.getString("foto"));
            //Persona persona = new Persona(nombre, apellidos, direccion, ciudad, codigoPostal, fechaDeNacimiento.toLocalDate());
            Alumno alumno               =new Alumno(nombre.get(), nie.get(),  cp.get(),  localidad.get(),  grupo.get(),  foto.get());
            alumnos.add(alumno);
        }
        rs.close();
        stmnt.close();
        return alumnos;}
        catch (SQLException ex){
            System.out.println("Error sql");
        }
        return alumnos;
    }
    //borra de la base de datos el o los aluumnos que recibe por la lista
    public void borraAlumnos(List<Alumno> alumnos){
        try{
        Statement stmnt = conn.createStatement();
        //Preparo el statement
        String query = "DELETE FROM alumnos WHERE nie = ?";
        PreparedStatement ps = conn.prepareStatement(query);
        
        for (Alumno alumno : alumnos){
            ps.setInt(1, alumno.getNiePropiedad().get()); //el 1 es la interrogación del query
            ps.executeUpdate();
        }
        ps.close();
        stmnt.close();
        
        Alert alerta = new Alert(Alert.AlertType.INFORMATION);
            alerta.setTitle(null);
            alerta.setContentText("Alumno borrado correctamente");
            alerta.showAndWait();
        
        } catch (SQLException ex){
            Alert alerta = new Alert(Alert.AlertType.INFORMATION);
            alerta.setTitle(null);
            alerta.setContentText("Error borrando el alumno: \n"+ex.getMessage());
            alerta.showAndWait();
        }
    }
    //inserta en la base de datos el aluumno que recibe por la lista
    public void insertarAlumnos(List<Alumno> alumnos){
        try{
        Statement stmnt = conn.createStatement();
        //Preparo el statement
        String query = "INSERT INTO alumnos VALUES(?,?,?,?,?,?)";
        PreparedStatement ps = conn.prepareStatement(query);
        
        for (Alumno alumno : alumnos){
            ps.setString(1, alumno.getAlumno().get());
            ps.setInt(2, alumno.getNiePropiedad().get());
            ps.setString(3, alumno.getCp().get());
            ps.setString(4, alumno.getLocalidad().get());
            ps.setString(5, alumno.getGrupo().get());
            ps.setString(6, alumno.getFoto().get());
            ps.executeUpdate();
        }
        
        Alert alerta = new Alert(Alert.AlertType.INFORMATION);
            alerta.setTitle(null);
            alerta.setContentText("Alumno insertado con éxito");
            alerta.showAndWait();
        ps.close();
        stmnt.close();
        } catch (SQLException ex){
            Alert alerta = new Alert(Alert.AlertType.INFORMATION);
            alerta.setTitle(null);
            alerta.setContentText("Error insertando el alumno: \n"+ex.getMessage());
            alerta.showAndWait();
        }
    }
    
}
