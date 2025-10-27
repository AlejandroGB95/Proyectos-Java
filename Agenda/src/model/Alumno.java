/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import javafx.beans.property.IntegerProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

/**
 *
 * @author usuario
 */
public class Alumno {
    
    //se declaran como property para meterlos en un observableList
    
    private final StringProperty alumno;
    private final IntegerProperty niePropiedad;
    private final StringProperty cp;
    private final StringProperty localidad;
    private final StringProperty grupo;
    private final StringProperty foto;
    
    //
    public Alumno() {
		this(null, 0, null, null, null, null);
	}

    public Alumno(String alumno, int niePropiedad, String cp, String localidad, String grupo, String foto) {
        this.alumno = new SimpleStringProperty(alumno);
        this.niePropiedad = new SimpleIntegerProperty(niePropiedad);
        this.cp = new SimpleStringProperty(cp);
        this.localidad = new SimpleStringProperty(localidad);
        this.grupo = new SimpleStringProperty(grupo);
        this.foto = new SimpleStringProperty(foto);
    }

    public StringProperty getAlumno() {
        return alumno;
    }

    public IntegerProperty getNiePropiedad() {
        return niePropiedad;
    }

    public StringProperty getCp() {
        return cp;
    }

    public StringProperty getLocalidad() {
        return localidad;
    }

    public StringProperty getGrupo() {
        return grupo;
    }

    public StringProperty getFoto() {
        return foto;
    }
    
    public void setAlumno(String nombre) {
        this.alumno.set(nombre);
    }

    public void setNiePropiedad(int nie) {
        this.niePropiedad.set(nie);
    }

    public void setCp(String cp) {
        this.cp.set(cp);
    }

    public void setLocalidad(String localidad) {
        this.localidad.set(localidad);
    }

    public void setGrupo(String grupo) {
        this.grupo.set(grupo);
    }

    public void setFoto(String foto) {
        this.foto.set(foto);
    }
    
    
    
}
