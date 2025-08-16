/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package instituto22;

/**
 *
 * @author Abraham
 * 
 */
public class Alumno extends Persona{
    
    private String      curso;
    private String      nie;
    private String[]    modulos;

    public Alumno(String nie, String nombre, String nif) {
        super(nombre, nif);
        this.nie = nie;
    }

    public Alumno(String curso, String nie, String[] modulos, String nombre, String nif) {
        this(nie,nombre,nif);
       // super(nombre, nif);
        
        this.curso = curso;
        //this.nie = nie;
        this.modulos = modulos;
    }

    public Alumno(String nombre, String apellidos, char sexo, String nif) {
        super(nombre, apellidos, sexo, nif);
    }

   
    
    

    public Alumno(String curso, String nie, String[] modulos, String nombre, String apellidos, char sexo, String nif, String localidad) {
        super(nombre, apellidos, sexo, nif, localidad);
        this.curso = curso;
        this.nie = nie;
        this.modulos = modulos;
    }

    @Override
    public String toString() {
        return super.toString()+"\n\tAlumno{" + "curso=" + curso + ", nie=" + nie + ", modulos=" + modulos + '}';
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String getNie() {
        return nie;
    }

    public void setNie(String nie) {
        this.nie = nie;
    }

    public String[] getModulos() {
        return modulos;
    }

    public void setModulos(String[] modulos) {
        this.modulos = modulos;
    }

       
    

}
