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
public class Profesor extends Persona{
    
    private String   departamento;
    private String   curso;
    private String[] asignaturas;

    public Profesor(String departamento, String nombre, String nif) {
        super(nombre, nif);
        this.departamento = departamento;
    }
    

    
    public Profesor(String departamento, String[] asignaturas, String nombre, String nif) {
        this(departamento,nombre, nif);
        this.departamento = departamento;
        this.curso = curso;
        this.asignaturas = asignaturas;
    }

    public Profesor(String nombre, String apellidos, char sexo, String nif) {
        super(nombre, apellidos, sexo, nif);
    }
   
    
    
//---------------------Métodos--------------------------------------------------   
    

//----------------------equals && hashCode--------------------------------------    

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String[] getAsignaturas() {
        return asignaturas;
    }

    public void setAsignaturas(String[] asignaturas) {
        this.asignaturas = asignaturas;
    }

    @Override
    public String toString() {
        return super.toString()+
                "\n\tProfesor{" + "departamento=" + departamento + ", curso=" + curso + ", asignaturas=" + asignaturas + '}';
    }

    
    
}
