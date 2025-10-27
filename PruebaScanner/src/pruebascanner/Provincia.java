/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pruebascanner;

/**
 *
 * @author Usuario
 */
public class Provincia{
    private String comunidad;
    private int id_provincia;
    private String provincia;
    private String provinciaminus;
    private String abrev;
    private int codPostal;

    //----- CONSTRUCTOR --------------------------------------------------------

    public Provincia(String comunidad, int id_provincia, String provincia, String provinciaminus, String abrev, int codPostal) {
        this.comunidad = comunidad;
        this.id_provincia = id_provincia;
        this.provincia = provincia;
        this.provinciaminus = provinciaminus;
        this.abrev = abrev;
        this.codPostal = codPostal;
    }
    
    //----- GETTERS Y SETTERS --------------------------------------------------
    
    
    public String getComunidad() {
        return comunidad;
    }

    public void setComunidad(String comunidad) {
        this.comunidad = comunidad;
    }

    public int getId_provincia() {
        return id_provincia;
    }

    public void setId_provincia(int id_provincia) {
        this.id_provincia = id_provincia;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getProvinciaminus() {
        return provinciaminus;
    }

    public void setProvinciaminus(String provinciaminus) {
        this.provinciaminus = provinciaminus;
    }

    public String getAbrev() {
        return abrev;
    }

    public void setAbrev(String abrev) {
        this.abrev = abrev;
    }

    public int getCodPostal() {
        return codPostal;
    }

    public void setCodPostal(int codPostal) {
        this.codPostal = codPostal;
    }
    
     //----- TO STRING --------------------------------------------------

    @Override
    public String toString() {
        return provincia+", (Codigo postal: "+codPostal+")";
    }

    //----- METODOS ------------------------------------------------------
    
   
    
}
