/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conectabd;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Usuario
 */
public class ConectaBD {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Connection conn=conectaBD("Oracle","localhost","1521",
                                    "xe","datos","datos");
        
        ejecutaSentencia(conn,"select emp_no, apellido, salario "
                            + "from emple order by apellido");
        
        ejecutaSentencia(conn,"select * from depart");
        
        conn=conectaBD("mysql","localhost","3306",
                                    "prog","prog","prog");
        ejecutaSentencia(conn,"select * from comunidades");
    }
    //---------------------------------------------------------------------
    public static Connection conectaBD(String tipoBd,
                                       String servidorBd,
                                       String puerto,
                                       String nombreBd,
                                       String usuario,
                                       String contraseña) {
    String driver ="",url="";
    String cadenaDeConexion="";
    Connection conn =null;
        
       if(tipoBd.equalsIgnoreCase("Oracle")){
           driver="oracle.jdbc.driver.OracleDriver";
           url="jdbc:oracle:thin:";
           cadenaDeConexion=
              url+'@'+servidorBd+":"+puerto+":"+nombreBd;
       }
       else if(tipoBd.equalsIgnoreCase("mysql")){
           driver="com.mysql.jdbc.Driver";
           url="jdbc:mysql:";
           cadenaDeConexion=url+"//"+servidorBd+":"+puerto+"/"+nombreBd;
            }
       else 
        {
           System.out.println("tipo de Bd incorrecto!!");
           return conn;
        }
      
       
        
        try {
            //1.- Cargar el Driver JDBC.......
            //1.1.-
           /* DriverManager.registerDriver(
                    new oracle.jdbc.driver.OracleDriver());*/
            //1.2.-
            Class.forName(driver);
            
            //2.- Conectar a la BD.......
            conn = DriverManager.getConnection(
                    cadenaDeConexion,usuario,contraseña);
           
        } catch (SQLException x) {
            x.printStackTrace();
        } catch (ClassNotFoundException ex) {
            System.out.println("Error cargando el driver -> "+ex.getMessage());
        }
         return conn;
    }// conecta BD....
    
    //--------------------------------------
    static void ejecutaSentencia(Connection conn,String sentencia){
         
        Statement stmt;
        ResultSet rset;
        ResultSetMetaData rsetMd;
        try {
            //3.- Crear un Objeto Sentencia.......
             stmt = conn.createStatement();
            
            //4.- Lanzar una sentencia contra la BD.......    
             rset = stmt.executeQuery(sentencia);
            
             rsetMd= rset.getMetaData();
            
            //4.- Procesar el resultado de la consulta.......   
                //4.1.- Pintar el nombre de las columnas.......   
            
             for (int i = 1; i <= rsetMd.getColumnCount(); i++) 
                 System.out.print(rsetMd.getColumnName(i)+"\t");
            
            System.out.println("\n---------------------------------------------------\n"); 
            //4.2.- Procesar las filas.......   
            while (rset.next()) {
                     for (int i = 1; i <= rsetMd.getColumnCount(); i++) {
                        if (rsetMd.getColumnType(i) == Types.VARCHAR) {
                            System.out.print(rset.getString(i) + "\t");
                        } else {
                            System.out.print(rset.getDouble(i) + "\t");
                        }
                    }
                     System.out.println("");
                }
           
            System.out.println("----------------------------\n");
            System.out.println("-----Fin de listado---------\n" );
            rset.close();
            stmt.close();
          //  conn.close();
         } catch (SQLException ex) { 
            ex.printStackTrace();
        } 
       
    }
    //----------------------------------------------------
    
}
