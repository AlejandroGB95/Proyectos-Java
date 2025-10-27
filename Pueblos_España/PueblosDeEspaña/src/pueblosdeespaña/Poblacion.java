/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pueblosdeespaña;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author Usuario
 */

public class Poblacion implements Serializable {

    private static final long serialVersionUID = 1L;
    
    private Integer idpoblacion;
    
    private String poblacion;
    
    private String poblacionseo;
    
    private Integer postal;
    
    private Float latitud;
    
    private Float longitud;
    
    private Integer idprovincia;

    public Poblacion() {
    }

    public Poblacion(Integer idpoblacion) {
        this.idpoblacion = idpoblacion;
    }

    public Poblacion(Integer idpoblacion, String poblacion, String poblacionseo, Integer postal, Float latitud, Float longitud, Integer idprovincia) {
        this.idpoblacion = idpoblacion;
        this.poblacion = poblacion;
        this.poblacionseo = poblacionseo;
        this.postal = postal;
        this.latitud = latitud;
        this.longitud = longitud;
        this.idprovincia = idprovincia;
    }
    
    

    public Integer getIdpoblacion() {
        return idpoblacion;
    }

    public void setIdpoblacion(Integer idpoblacion) {
        this.idpoblacion = idpoblacion;
    }

    public String getPoblacion() {
        return poblacion;
    }

    public void setPoblacion(String poblacion) {
        this.poblacion = poblacion;
    }

    public String getPoblacionseo() {
        return poblacionseo;
    }

    public void setPoblacionseo(String poblacionseo) {
        this.poblacionseo = poblacionseo;
    }

    public Integer getPostal() {
        return postal;
    }

    public void setPostal(Integer postal) {
        this.postal = postal;
    }

    public Float getLatitud() {
        return latitud;
    }

    public void setLatitud(Float latitud) {
        this.latitud = latitud;
    }

    public Float getLongitud() {
        return longitud;
    }

    public void setLongitud(Float longitud) {
        this.longitud = longitud;
    }

    public Integer getIdprovincia() {
        return idprovincia;
    }

    public void setIdprovincia(Integer idprovincia) {
        this.idprovincia = idprovincia;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idpoblacion != null ? idpoblacion.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Poblacion)) {
            return false;
        }
        Poblacion other = (Poblacion) object;
        if ((this.idpoblacion == null && other.idpoblacion != null) || (this.idpoblacion != null && !this.idpoblacion.equals(other.idpoblacion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return poblacion;
    }
    
    
}
