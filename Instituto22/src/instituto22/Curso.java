/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package instituto22;

/**
 *
 * @author Abraham
 */
public class Curso implements Comparable<Curso>{

    
    private String      nombre;
    private Profesor    tutor;
    private Alumno      delegado;
    private Alumno[]    listaClase  = new Alumno[30];
    private Profesor[]  listaProfes = new Profesor[10];
    private String      aula;
     private static int numAlum=0;
    private static int  numProfe=0;

    public Curso(String nombre, String aula) {
        this.nombre = nombre;
        this.aula = aula;
    }

    public Curso(String nombre, Profesor tutor, Alumno delegado, String aula) {
        this(nombre,aula);
        this.tutor = tutor;
        this.delegado = delegado;
        
    }

    public Curso(String nombre, Profesor tutor, Alumno delegado, Alumno[] listaClase, Profesor[] listaProfes, String aula) {
        this(nombre,tutor,delegado,aula);
        this.listaClase = listaClase;
        this.listaProfes = listaProfes;
       
    }
    //---------------------
   
   
    @Override
    public String toString() {
        
        String pTutor=(tutor==null)?"Sin Tutor":tutor.getNombre();
        String aDelegado=(delegado==null)?"Sin Delegado":delegado.getNombre();
        
        return "Curso->" + "nombre=" + nombre + ", aula=" + aula +
                "tutor=" + pTutor + "\tdelegado=" +aDelegado + 
                "\n\t nº Alumnos=" + numAlum + 
                "\t nº Profes =" + numProfe ;
    }
   
    public String ListadoLargo() {
        String listaDeClase="\t\n Alumnos de la clase "+nombre+"\n";
        for (int i = 0; i < numAlum; i++) {
            listaDeClase+= (i+1) +".- "+ listaClase[i].getNombre();
        }
        String listaDeProgfes="\t\n Profesores de la clase "+nombre+"\n";
        for (int i = 0; i < numProfe; i++) {
           listaDeProgfes+=(i+1)+".- "+ listaProfes[i].getNombre();
        }
        
        return "Curso{" + "nombre=" + nombre + ", aula=" + aula +
                "\n\ttutor=" + tutor + "\n\tdelegado=" + delegado + 
                "\n\t listaClase" +  listaDeClase + 
                "\n\tlistaProfes=" + listaDeProgfes + '}';
    }
    //--------------
     public void añadeAlumno(Alumno alm) {
        listaClase[numAlum] = alm;
        numAlum++;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Profesor getTutor() {
        return tutor;
    }

    public void setTutor(Profesor tutor) {
        this.tutor = tutor;
    }

    public Alumno getDelegado() {
        return delegado;
    }

    public void setDelegado(Alumno delegado) {
        this.delegado = delegado;
    }

    public Alumno[] getListaClase() {
        return listaClase;
    }

    public void setListaClase(Alumno[] listaClase) {
        this.listaClase = listaClase;
    }

    public Profesor[] getListaProfes() {
        return listaProfes;
    }

    public void setListaProfes(Profesor[] listaProfes) {
        this.listaProfes = listaProfes;
    }

    public String getAula() {
        return aula;
    }

    public void setAula(String aula) {
        this.aula = aula;
    }
    
    public static int getNumAlum() {
        return numAlum;
    }

    public static void setNumAlum(int aNumAlum) {
        numAlum = aNumAlum;
    }

    public static int getNumProfe() {
        return numProfe;
    }

    public static void setNumProfe(int aNumProfe) {
        numProfe = aNumProfe;
    }

    @Override
    public int compareTo(Curso c) {
        return (nombre.compareToIgnoreCase(c.nombre));
    }

    

   
    
    
}
