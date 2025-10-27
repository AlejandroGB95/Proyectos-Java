/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pueblosdeespaña;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Set;
import java.util.TreeMap;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import static pueblosdeespaña.PueblosDeEspaña.listaComunidades;

/**
 *
 * @author Usuario
 */
public class Provincia implements Serializable {

    private static final long serialVersionUID = 1L;
    
    private Integer idprovincia;
    
    private String provincia;
    
    private String provinciaseo;
    
    private String abreviatura;
    
    private Integer cp;
    
    private String comunidad;
    
    private TreeMap<Integer, Poblacion> listaPueblos; //key = cp

    public Provincia() {
    }

    public Provincia(Integer idprovincia) {
        this.idprovincia = idprovincia;
    }

    public Provincia(Integer idprovincia, String provincia, String provinciaseo, String abreviatura, Integer cp, String comunidad) {
        this.idprovincia = idprovincia;
        this.provincia = provincia;
        this.provinciaseo = provinciaseo;
        this.abreviatura = abreviatura;
        this.cp = cp;
        this.comunidad = comunidad;
        listaPueblos=new TreeMap();
    }

    
    
    public Integer getIdprovincia() {
        return idprovincia;
    }

    public void setIdprovincia(Integer idprovincia) {
        this.idprovincia = idprovincia;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getProvinciaseo() {
        return provinciaseo;
    }

    public void setProvinciaseo(String provinciaseo) {
        this.provinciaseo = provinciaseo;
    }

    public String getAbreviatura() {
        return abreviatura;
    }

    public void setAbreviatura(String abreviatura) {
        this.abreviatura = abreviatura;
    }

    public Integer getCp() {
        return cp;
    }

    public void setCp(Integer cp) {
        this.cp = cp;
    }

    public String getComunidad() {
        return comunidad;
    }

    public void setComunidad(String comunidad) {
        this.comunidad = comunidad;
    }

    public TreeMap<Integer, Poblacion> getlistaPueblos() {
        return listaPueblos;
    }

    public void setlistaPueblos(TreeMap<Integer, Poblacion> poblacionSet) {
        this.listaPueblos = poblacionSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idprovincia != null ? idprovincia.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Provincia)) {
            return false;
        }
        Provincia other = (Provincia) object;
        if ((this.idprovincia == null && other.idprovincia != null) || (this.idprovincia != null && !this.idprovincia.equals(other.idprovincia))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return provincia+" ("+cp+"): "+listaPueblos.size()+" pueblos";
    }
    
    //--------------------------------------------------------------------------
     int cargaPueblos(Connection conn, String select){  // private TreeMap<Integer, Poblacion> listaPueblos; //key = cp
        Statement stmt;
        ResultSet rset;
        try {
            stmt = conn.createStatement();

            rset = stmt.executeQuery(select);
              int idPueblo, idProvincia, postal;
              String poblacion, poblacionMinus;
              Float latitud, longitud;
              
            while (rset.next()) {
               idPueblo = rset.getInt(1);
               idProvincia = rset.getInt(2);
               poblacion = rset.getString(3);
               poblacionMinus = rset.getString(4);
               postal = rset.getInt(5);
               latitud = rset.getFloat(6);
               longitud = rset.getFloat(7);
               
               listaPueblos.put(postal, new Poblacion(idPueblo, poblacion, poblacionMinus, postal, latitud, longitud, idProvincia));
            }

            rset.close();
            stmt.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listaPueblos.size();
    }
    
     String listadoCompleto(){
         String listado="";
         listado+="Listado de pueblos:\n-----------------------------\n";
         int i=0;
            for (Poblacion pueblo : listaPueblos.values()) {
            int tamaño=pueblo.getPoblacion().length();
            tamaño=42-tamaño;
            listado+="\t"+pueblo;
                for (int j = 0; j < tamaño; j++) {
                    listado+=" ";
                }
            
             i++;
             if (i==3){
                 listado+="\n";
                 i=0;
             }
            }
         return listado;
     }
     
     Poblacion buscaPueblo(int cp){
         return listaPueblos.get(cp);
     }
     Poblacion buscaPueblo(String nombre,int opc){
         if(opc==1){
       for (Poblacion poblacion : listaPueblos.values()) {
           if (poblacion.getPoblacionseo().equalsIgnoreCase(nombre.toLowerCase()))
                return poblacion;
       }
         } else {
             for (Poblacion poblacion : listaPueblos.values()) {
           if (poblacion.getPoblacionseo().contains(nombre.toLowerCase()))
                return poblacion;
            }

        }
        return null;
    }
}
