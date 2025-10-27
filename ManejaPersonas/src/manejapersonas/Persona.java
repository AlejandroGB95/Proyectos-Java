/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package manejapersonas;

/**
 *
 * @author Aitor
 */
public class Persona {
    
    private String nombre;
    private String apellidos;
    private int edad;
    private char sexo;
    private String nif;
    static int ctd=0;
    
    //---------Constructores------------
       public Persona(String nombre, String apellidos, int edad, String nif) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.edad = edad;
        this.nif = nif;
        ctd++;
    } 
      
        
    //----------Getter && setters-------

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

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getNif() {
        return nif;
    }

    public void setNif(String nif) {
        this.nif = nif;
    }

    public char getSexo() {
        return sexo;
    }

    public void setSexo(char sexo) {
        this.sexo = sexo;
    }

    
    @Override
    public String toString() {
        return "Nombre:" + "Persona" + nombre + ", Apellidos:" + apellidos + ", Edad:" + edad + ", NIF:" + nif ;
    }
       
   
    
}