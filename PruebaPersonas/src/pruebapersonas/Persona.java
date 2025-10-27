/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pruebapersonas;

import java.util.Objects;

/**
 *
 * @author Usuario
 */
public class Persona {
    
    private String nombre;
    private String apellidos;
    private char   sexo;
    private String nif;
    private String localidad;
    static  int ctd=0;
    //-----Métodos-----------------------
    //----Constructores------------------

    public Persona() {
        ctd++;
    }

    public Persona(String nombre) {
        this();
        this.nombre = nombre;
    }

    public Persona(String nombre, String nif) {
         this(nombre);
        this.nif = nif;
    }
    

    public Persona(String nombre, String apellidos, char sexo, String nif) {
        this(nombre);
        this.apellidos = apellidos;
        this.sexo = sexo;
        this.nif = nif;
    }

    public Persona(String nombre, String apellidos, char sexo, String nif, String localidad) {
       
        this(nombre,  apellidos,  sexo,  nif);
        this.localidad = localidad;
    }
    
    
    
    //----Getter && Setters------------------

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public char getSexo() {
        return sexo;
    }

    public void setSexo(char sexo) {
        this.sexo = sexo;
    }

    public String getNif() {
        return nif;
    }

    public void setNif(String nif) {
        this.nif = nif;
    }

    public String getLocalidad() {
        return localidad;
    }

    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }

    
    
    @Override
    public String toString() {
        return  
             apellidos + ", "+nombre+";  sexo=" + sexo + "; nif=[" + nif + ']';
    }
    
     public String imprimePersona() {
        return  
              "\n\tnombre=" + nombre + 
              "\n\tapellidos=" + apellidos + 
              "\n\tsexo=" + sexo + "\n\tnif=" + nif+
              "\n\tlocalidad=" + localidad;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 89 * hash + Objects.hashCode(this.nif);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Persona other = (Persona) obj;
        if (this.nif.equalsIgnoreCase(other.nif)) {
            return true;
        }
        return false;
    }

  
    
     
    
}
