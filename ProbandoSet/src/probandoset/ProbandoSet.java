/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package probandoset;
 
import java.util.TreeSet;

/**
 *
 * @author Usuario
 */
public class ProbandoSet {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Alumno a1 = new Alumno("alberto", 7);
        Alumno a2 = new Alumno("alberto", 6);
        Alumno a3 = new Alumno("alberto", 7);
        Alumno a4 = new Alumno("adrian", 7);
        Alumno a5 = new Alumno("alberto", 7);
        Alumno a6 = new Alumno("adrian", 8);
        Alumno a7 = new Alumno("adrian", 8);
        TreeSet<Alumno> l = new TreeSet<Alumno>();
        l.add(a1);
        l.add(a2);
        l.add(a3);
        l.add(a4);
        l.add(a5);
        l.add(a6);
        l.add(a7);
        for (Alumno alumno : l) {
            System.out.println(alumno+" ");
        }
    }

}
