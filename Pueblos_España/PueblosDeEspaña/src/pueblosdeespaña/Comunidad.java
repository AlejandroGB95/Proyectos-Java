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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Usuario
 */

public class Comunidad implements Serializable {

    private static final long serialVersionUID = 1L;
   
    private String nombre;
   
    private String codigo;
    
    private TreeMap<Integer, Provincia> listaProvincias; //key = idProvincia

    public Comunidad() {
    }

    public Comunidad(String codigo) {
        this.codigo = codigo;
    }

    Comunidad(String codigo, String nombre) {
        this(codigo);
        this.nombre = nombre;
        listaProvincias=new TreeMap();
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public TreeMap<Integer, Provincia> getProvincias() {
        return listaProvincias;
    }

    public void setProvincias(TreeMap<Integer, Provincia> provincias) {
        this.listaProvincias = provincias;
    }
    

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codigo != null ? codigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Comunidad)) {
            return false;
        }
        Comunidad other = (Comunidad) object;
        if ((this.codigo == null && other.codigo != null) || (this.codigo != null && !this.codigo.equals(other.codigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return nombre+" : "+listaProvincias.size()+" provincias";
    }

       int cargaProvincias(Connection conn, String select){  //  private TreeMap<Integer, Provincia> listaProvincias; //key = idProvincia
        Statement stmt;
        ResultSet rset;
        try {
            stmt = conn.createStatement();

            rset = stmt.executeQuery(select);
              int idprovincia, cp;
              String comunidad, provincia, provinciaMin,abreviatura;
              Provincia prov;
            while (rset.next()) {
              comunidad = rset.getString(1);
              idprovincia=rset.getInt(2);
              provincia=rset.getString(3);
              provinciaMin=rset.getString(4);
              abreviatura=rset.getString(5);
              cp=rset.getInt(6);
               prov=new Provincia(idprovincia, provincia, provinciaMin, abreviatura, cp, comunidad);
               
               listaProvincias.put(idprovincia, prov);
               prov.cargaPueblos(conn, "SELECT * FROM POBLACIONES WHERE IDPROVINCIA='"+idprovincia+"'");
            }

            rset.close();
            stmt.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listaProvincias.size();
    }
   String listadoCompleto(){
       String listado="";
       listado+="\nListado de provincias:";
       int i=1;
       for (Provincia provincia : listaProvincias.values()) {
           listado+="\n\n\t"+i+"-"+provincia+"\n";
           listado+=provincia.listadoCompleto();       
           i++;
       }
       return listado;
   }
   String listadoProvincias(){
       String listado="";
       int i=1;
       listado+="\nListado de: "+nombre;
       listado+="\n---------------------------------------";
        for (Provincia provincia : listaProvincias.values()) {
           listado+="\n\t"+i+" - "+provincia;
           i++;
       }
       return listado;
   }
   Poblacion buscaPueblo(int cp){
       Poblacion pueblo=null;
       for (Provincia provincia : listaProvincias.values()) {
           pueblo=provincia.buscaPueblo(cp);
           if (pueblo!=null)
               return pueblo;
       }
       return pueblo;
   }
   Provincia buscaPueblos(String nombre, int opc){
       Poblacion pueblo;
       for (Provincia provincia : listaProvincias.values()) {
           pueblo=provincia.buscaPueblo(nombre,opc);
           if (pueblo!=null)
               return listaProvincias.get(pueblo.getIdprovincia());
       }
       return null;
   }
   
   String getProvinciaNombre(int idProvincia){
     return listaProvincias.get(idProvincia).toString();
     }
}
