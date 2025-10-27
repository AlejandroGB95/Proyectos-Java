/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pueblosdeespaña;

/**
 *
 * @author Usuario
 */
public class PueblosNSEO {
    
    
    private String pueblo;
    private String provincia;
    private String comunidad;
    private float latitud;
    private float longitud;
    private String caracteristica;

    //----- CONSTRUCTOR --------------------------------------------------------

    public PueblosNSEO(String pueblo, String provincia, String comunidad, float latitud, float longitud, String caracteristica) {
        this.pueblo = pueblo;
        this.provincia = provincia;
        this.comunidad = comunidad;
        this.latitud = latitud;
        this.longitud = longitud;
        this.caracteristica = caracteristica;
    }
    
    
    
    //----- GETTERS Y SETTERS --------------------------------------------------
    public String getPueblo() {
        return pueblo;
    }

    public void setPueblo(String pueblo) {
        this.pueblo = pueblo;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getComunidad() {
        return comunidad;
    }

    public void setComunidad(String comunidad) {
        this.comunidad = comunidad;
    }

    public float getLatitud() {
        return latitud;
    }

    public void setLatitud(float latitud) {
        this.latitud = latitud;
    }

    public float getLongitud() {
        return longitud;
    }

    public void setLongitud(float longitud) {
        this.longitud = longitud;
    }

    public String getCaracteristica() {
        return caracteristica;
    }

    public void setCaracteristica(String caracteristica) {
        this.caracteristica = caracteristica;
    }
    
    //----- TO STRING ----------------------------------------------------------

    @Override
    public String toString() {
        return 
            caracteristica + " : " + pueblo + " ( Latitud: "+latitud+", Longitud: "+longitud+"), "+provincia+", "+comunidad+"\n";
    }
    
    
    
    
    
}
