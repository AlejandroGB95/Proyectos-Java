/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pruebacolecciones;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;

/**
 *
 * @author Usuario
 */
public class PruebaColecciones {

    static Collection<Persona> listaPersonas;
 
    public static void main(String[] args) {
        listaPersonas = new ArrayList();

        listaPersonas.add(new Persona("Pepe", "Lopez Perez", 'H', "111111111H"));
        listaPersonas.add(new Persona("Ana", "Garcia López", 'M', "211111111F"));
        listaPersonas.add(new Persona("Luisa", "Sanz Torres", 'M', "311111111G"));

        // 1.- Recorrido con FOR
        System.out.println("Recorrido con FOR...");
        for (int i = 0; i < listaPersonas.size(); i++) {
            System.out.println("Persona nº " + (i + 1) + ": " + ((ArrayList) listaPersonas).get(i));
        }

        // 2.- Recorrido con ITERATOR
        System.out.println("\nRecorrido con ITERATOR...");
        //Iterator it = listaPersonas.iterator();

        ListIterator it = ((ArrayList) listaPersonas).listIterator();
        while (it.hasNext()) {
            // Persona p = (Persona) it.next();
            System.out.println(it.next()); //Para listarlo no hace falta hacerle un casting
        }

        System.out.println("\nRecorrido con ITERATOR al reves...");
        ListIterator it2 = ((ArrayList) listaPersonas).listIterator(listaPersonas.size());
        while (it2.hasPrevious()) {
            System.out.println(it2.previous());
        }

        // 3.- Recorrido con FOR EACH
        System.out.println("\nRecorrido con FOR EACH...");
        for (Persona p : listaPersonas) {
            System.out.println(p);
        } 

        //4.- Recorrido con FOR CON ITERATOR...
        System.out.println("\nRecorrido con FOR CON ITERATOR...");
        for (Iterator iterator = listaPersonas.iterator(); iterator.hasNext();) {
            Object next = iterator.next();
            System.out.println(next);
        }
    }
}
