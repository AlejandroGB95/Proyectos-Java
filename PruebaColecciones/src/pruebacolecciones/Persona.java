/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pruebacolecciones;

import java.util.Objects;

/**
 *
 * @author Usuario
 */
public class Persona implements Comparable<Persona>{
    
    protected String nombre;
    protected String apellido1;
    protected String apellido2;
    protected char   sexo;
    protected String nif;
    protected String localidad;
    static  int ctd=0;
    //-----Métodos-----------------------
    //----Constructores------------------

    public Persona() {
        ctd++;
    }

    public Persona(String nombre) {
        this();
        this.nombre = nombre.toUpperCase();
    }

    public Persona(String nombre, String nif) {
        this(nombre);
        this.nif = nif;
    }
    public Persona(String nombre, String apellidos, char sexo, String nif) {
        this(nombre);
       // this.apellido1 = apellidos;/******/
        compruebaApellidos(apellidos);
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
             apellido1+" "+apellido2 + ", "+nombre+";  sexo=" + sexo + "; nif=[" + nif + ']';
    }
    
     public String imprimePersona() {
        return "\n\tPersona=" + super.toString() +
              "\n\tnombre=" + nombre + 
              "\n\tapellidos=" +  apellido1+" "+apellido2 + 
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
//------------------------------------------------------------------------------
    @Override
    public int compareTo(Persona p) {
        if(apellido1.equalsIgnoreCase(p.apellido1))
            if(apellido2.equalsIgnoreCase(p.apellido2))
                return (nombre.compareToIgnoreCase(p.nombre));
            else 
                return (apellido2.compareToIgnoreCase(p.apellido2));
        
        else    return (apellido1.compareToIgnoreCase(p.apellido1));
    }
//----------------------------------------------------------------------------
    private void compruebaApellidos(String apellidos) {
        String apes[]= apellidos.split("\\s");
        
        apellido1=apes[0];
        if(apes.length>1)
            apellido2=apes[1];
    }
     
    
}
