/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package miarraylist22;

/**
 *
 * @author Usuario
 */
public class MiArrayList22 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       
        ArrayList22 personas = new ArrayList22();
        
        personas.add(new Persona("pepe","22222222e"));
        personas.add(new Persona("ana","33322222e"));
       
        System.out.println(personas);
    }
    
}
